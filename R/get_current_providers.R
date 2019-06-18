unpkg_url <- "https://unpkg.com/leaflet-providers"

#' Fetch leaflet providers from Leaflet.js.
#' @export
#'
#' @param version_num Version number with which to update leaflet providers. If `NULL`, fetches most recent version.
#'
#' @return List of `version number`, `providers`, `providers.details`
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
  tmp_file <- tempfile(pattern = "", fileext =".js")
  writeLines(js_lines, con = tmp_file)

  ct <- V8::v8()

  # create dummy Leaflet object
  ct$eval("var L = {TileLayer : {extend: function(){return {};}},
          Util : {extend: function(){return {};}},
          tileLayer : {}}")

  ct$source(tmp_file)

  providers_json <- ct$eval("JSON.stringify(L.TileLayer.Provider.providers)")

  providers.details <- jsonlite::fromJSON(providers_json)

  variants <- lapply(providers.details, function(x) {
    names(x$variants)
  })

  providers <- unlist(lapply(names(providers.details), function(provider) {
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
    src = tmp_file
  )

  list(
    "version_num" = version_num,
    "providers" = providers,
    "providers_details" = providers.details,
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
