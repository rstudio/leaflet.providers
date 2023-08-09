unpkg_url <- "https://unpkg.com/leaflet-providers"

loaded_providers_env <- new.env()


#' Fetch leaflet providers from Leaflet.js.
#'
#' @param version_num Version number with which to update leaflet providers.
#'   If `NULL`, fetches most recent version.
#'
#' @return `leaflet_providers` object containing `providers_version_num`, `providers_data`,
#'   `providers_details_data`, `src`
#'
#' @examples
#' if (
#'   interactive() &&
#'   requireNamespace("V8", quietly = TRUE) &&
#'   requireNamespace("jsonlite", quietly = TRUE)
#' ) {
#'   get_providers()
#'   get_providers("1.8.0")
#' }
#'
#' @export
get_providers <- function(version_num = NULL) {
  # Load providers.js file
  if (is.null(version_num)) {
    version_num <- get_current_version_num()
    return(get_providers(version_num))
  }

  js_path <- paste0(unpkg_url, "@", version_num)

  tmp_js_lines <- paste0(readLines(js_path), collapse = "\n")

  ct <- V8::v8()

  # create dummy Leaflet object
  ct$eval("var L = {TileLayer : {extend: function() { return {}; }},
          Util : {extend: function() { return {}; }},
          tileLayer : {}}")

  ct$eval(tmp_js_lines)

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

  providers_info <- list(
    "version_num" = version_num,
    "providers" = providers,
    "providers_details" = providers_details,
    "src" = tmp_js_lines
  )

  class(providers_info) <- "leaflet_providers"
  return(providers_info)
}


#' Helper function that returns the current version number of Leaflet.js
#'
#' @return Current version number.
#' @noRd
get_current_version_num <- function() {
  pkg_info <- jsonlite::fromJSON(
    paste0(unpkg_url, "/package.json")
  )
  return(pkg_info$version)
}

#' Return default providers, providers_details, version, and HTML Dependency.
#' @export
#'
#' @return `leaflet_providers` object containing `providers_version_num`, `providers`,
#'   `providers_details`, and `src`
#'
#' @examples
#' str(providers_default(), max = 3, list.len = 4)
#'
providers_default <- function() {
  # Move .js file from tmp to sysfile
  js_filename_for_inst <- paste0("leaflet-providers_", providers_version_num, ".js")

  js_lines <- paste0(
    readLines(system.file(js_filename_for_inst, package = "leaflet.providers")),
    collapse = "\n"
  )

  # Returns same list of obj as get_providers() except html_dependency points to /inst file
  providers_info <- list(
    "version_num" = providers_version_num,
    "providers" = providers_data,
    "providers_details" = providers_details_data,
    "src" = js_lines
  )

  class(providers_info) <- "leaflet_providers"
  return(providers_info)
}

#' Use custom tile provider
#'
#' Use a custom `leaflet_providers` object, e.g. providers data fetched with
#' [get_providers], with the `leaflet` package.
#'
#' @param providers_info A custom `leaflet_providers` object.
#'   If `NULL`, uses default providers.
#' @export
#'
#' @examples
#' \donttest{
#' if (require("V8") && require("jsonlite")) {
#'   # Set providers to latest providers
#'   use_providers(get_providers())
#'
#'   # Set providers to a custom providers object (specific version number)
#'   use_providers(get_providers("1.4.0"))
#'   use_providers("1.4.0")
#' }
#' }
use_providers <- function(providers_info = NULL) {
  if (is.null(providers_info)) {
    providers_info <- providers_default()
  } else if (is.character(providers_info)) {
    providers_info <- get_providers(providers_info)
  }
  if (!inherits(providers_info, "leaflet_providers")) {
    stop("`providers_info` must be a 'leaflet_providers' object.", call. = FALSE)
  }

  loaded_providers_env$providers_info <- providers_info
}

#' Return currently loaded providers, providers_details, version, and HTML Dependency.
#' @export
#'
#' @return `leaflet_providers` object containing `providers_version_num`, `providers`,
#'   `providers_details`, and `src`
#'
#' @examples
#' str(providers_loaded(), max = 3, list.len = 4)
#'
providers_loaded <- function() {
  as.list(loaded_providers_env$providers_info)
}

#' @include providers_data.R
use_providers(providers_default())
