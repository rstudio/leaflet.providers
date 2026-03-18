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
#' \donttest{
#' if (
#'   requireNamespace("V8", quietly = TRUE) &&
#'   requireNamespace("jsonlite", quietly = TRUE)
#' ) {
#'   get_providers()
#'   get_providers("2.0.0")
#' }
#' }
#'
#' @export
get_providers <- function(version_num = NULL) {
  # Load providers.js file
  if (is.null(version_num)) {
    version_num <- get_current_version_num()
    return(get_providers(version_num))
  }

  if (package_version(version_num) < "1.0.10") {
    stop(
      "`version_num` must be >= '1.0.10'. ",
      "Earlier versions used a different JS structure that is not supported.",
      call. = FALSE
    )
  }

  if (
    package_version(version_num) == package_version(providers_version_num) &&
      nzchar(system.file(
        "leaflet-providers",
        "leaflet-providers.js",
        package = "leaflet.providers"
      ))
  ) {
    # return the static, locally-stored leaflet.providers if possible
    return(providers_default())
  }

  unpkg_base <- paste0(unpkg_url, "@", version_num)
  js_path <- paste(unpkg_base, "leaflet-providers.js", sep = "/")

  tmp_js_lines <- paste0(readLines(js_path, warn = FALSE), collapse = "\n")

  ct <- V8::v8()

  # create dummy Leaflet object
  ct$eval(
    "var L = {TileLayer : {extend: function() { return {}; }},
          Util : {extend: function() { return {}; }},
          tileLayer : {}}"
  )

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
    "src" = tmp_js_lines,
    "dep" = leaflet_providers_dependency_url(version_num, js_path)
  )

  class(providers_info) <- "leaflet_providers"
  return(providers_info)
}

leaflet_providers_dependency_url <- function(version_num, url) {
  htmltools::htmlDependency(
    name = "leaflet-providers",
    version = version_num,
    src = c(href = dirname(url)),
    script = basename(url),
    all_files = FALSE
  )
}

leaflet_providers_dependency_pkg <- function() {
  htmltools::htmlDependency(
    name = "leaflet-providers",
    version = providers_version_num,
    package = "leaflet.providers",
    src = "leaflet-providers",
    script = "leaflet-providers.js",
    all_files = FALSE
  )
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
#' @return `leaflet_providers` object containing `version_num`, `providers`,
#'   `providers_details`, `src`, and `dep`.
#'
#' @examples
#' str(providers_default(), max = 3, list.len = 4)
#'
providers_default <- function() {
  if (is.null(loaded_providers_env$js_src_cache)) {
    js_path <- system.file(
      "leaflet-providers",
      "leaflet-providers.js",
      package = "leaflet.providers"
    )
    if (!nzchar(js_path)) {
      stop(
        "Could not find installed 'leaflet-providers/leaflet-providers.js'. ",
        "Please reinstall the 'leaflet.providers' package.",
        call. = FALSE
      )
    }
    loaded_providers_env$js_src_cache <- paste0(
      readLines(js_path, warn = FALSE), collapse = "\n"
    )
  }

  js_lines <- loaded_providers_env$js_src_cache

  # Returns same list of obj as get_providers() except html_dependency points to /inst file
  providers_info <- list(
    "version_num" = providers_version_num,
    "providers" = providers_data,
    "providers_details" = providers_details_data,
    "src" = js_lines,
    "dep" = leaflet_providers_dependency_pkg()
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
#' if (
#'   requireNamespace("V8", quietly = TRUE) &&
#'   requireNamespace("jsonlite", quietly = TRUE)
#' ) {
#'   # Set providers to latest providers
#'   use_providers(get_providers())
#'
#'   # Set providers to a custom providers object (specific version number)
#'   use_providers(get_providers("1.8.0"))
#'   use_providers("1.8.0")
#' }
#' }
use_providers <- function(providers_info = NULL) {
  if (is.null(providers_info)) {
    providers_info <- providers_default()
  } else if (is.character(providers_info)) {
    providers_info <- get_providers(providers_info)
  }
  if (!inherits(providers_info, "leaflet_providers")) {
    stop(
      "`providers_info` must be a 'leaflet_providers' object.",
      call. = FALSE
    )
  }

  loaded_providers_env$providers_info <- providers_info
}

#' Return currently loaded providers, providers_details, version, and HTML Dependency.
#' @export
#'
#' @return A list containing `version_num`, `providers`,
#'   `providers_details`, `src`, and `dep`.
#'
#' @examples
#' str(providers_loaded(), max = 3, list.len = 4)
#'
providers_loaded <- function() {
  as.list(loaded_providers_env$providers_info)
}
