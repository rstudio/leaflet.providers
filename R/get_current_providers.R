unpkg_url <- "https://unpkg.com/leaflet-providers"

#' Fetch leaflet providers from Leaflet.js.
#' @export
#'
#' @param version_num Version number with which to update leaflet providers. If `NULL`, fetches most recent version.
#'
#' @return List of `providers_version_num`, `providers_data`, `providers_details_data`, `html_dependency`
#'
#' @examples
#' get_providers()
#' get_providers("1.8.0")
#'

get_providers <- function(version_num = NULL) {
  # Load providers.js file
  if (is.null(version_num)) {
    version_num <- get_current_version_num()
    return(get_providers(version_num))
  }

  js_path <- paste0(unpkg_url, "@", version_num)

  js_lines <- readLines(js_path)
  tmp_file <- tempfile(pattern = "", fileext = ".js")
  writeLines(js_lines, con = tmp_file)

  ct <- V8::v8()

  # create dummy Leaflet object
  ct$eval("var L = {TileLayer : {extend: function(){return {};}},
          Util : {extend: function(){return {};}},
          tileLayer : {}}")

  ct$source(tmp_file)

  providers_json <- ct$eval("JSON.stringify(L.TileLayer.Provider.providers)")

  providers_details <- jsonlite::fromJSON(providers_json)

  variants <- lapply(providers_details, function(x) {
    names(x$variants)
  })

  providers <- unlist(lapply(names(providers_details), function(provider) {
    if (is.null(variants[[provider]])) {
      provider
    } else {
      c(provider, paste(provider, variants[[provider]], sep = "."))
    }
  }))

  providers <- stats::setNames(as.list(providers), providers)

  html_dependency <- htmltools::htmlDependency(
    "leaflet-providers",
    version_num,
    src = tmp_file,
  )

  list(
    "version_num" = version_num,
    "providers" = providers,
    "providers_details" = providers_details,
    "html_dependency" = html_dependency)
}


#' Helper function that returns the current version number of Leaflet.js
#'
#' @return Current version number.
#' @noRd
get_current_version_num <- function() {
  pkg_info <- jsonlite::fromJSON(paste0(unpkg_url, "/package.json")
                                 )
  return(pkg_info$version)
}


#' Return providers, providers_details, version, and HTML Dependency.
#' @export
#'
#' @return List of `providers_version_num`, `providers_data`, `providers_details_data`, `html_dependency`
#'
#' @examples
#' providers()

providers <- function() {

  # Move .js file from tmp to sysfile
  js_filename_for_inst <- paste0("leaflet-providers_", providers_version_num, ".js")

  html_dependency <- htmltools::htmlDependency(
    "leaflet-providers",
    providers_version_num,
    src = system.file(js_filename_for_inst, package = "leaflet.providers"),
  )

  # Returns same list of obj as get_providers() except html_dependency points to /inst file
  list(
    "version_num" = providers_version_num,
    "providers" = providers_data,
    "providers_details" = providers_details_data,
    "html_dependency" = html_dependency)
}
