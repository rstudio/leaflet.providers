#' Fetch leaflet providers from Leaflet.js.
#' @export
#'
#' @return List of `providers`, `providers.details`
#'
#' @examples
#' get_providers()
#'

get_providers <- function(version_num = NULL) {
  ct <- V8::v8()

  # create dummy Leaflet object
  ct$eval("var L = {TileLayer : {extend: function(){return {};}},
          Util : {extend: function(){return {};}},
          tileLayer : {}}")

  # Load providers.js file
  if (!is.null(version_num)) {
    js_path <- paste("https://unpkg.com/leaflet-providers@", version_num, "/leaflet-providers.js", sep = "")
  }
  else {
    js_path <- "https://unpkg.com/leaflet-providers"
    version_num <- get_current_version_num(js_path)
  }

  ct$source(js_path)

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

  list(
    "version_num" = version_num,
    "providers" = providers,
    "providers.details" = providers.details)
}


#' Helper function that returns the current version number of Leaflet.js
#'
#' @return Current version number.
#'
#' @examples
#' get_current_version_num("https://unpkg.com/leaflet-providers")
#'
get_current_version_num <- function(js_path) {
  pkg_info <- jsonlite::fromJSON(paste(js_path, "/package.json", sep = "")
                                 )
  return(pkg_info$version)
}
