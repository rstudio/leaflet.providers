#' Fetch leaflet providers from Leaflet.js.
#' @export
#'
#' @return List of `providers`, `providers.details`
#'
#' @examples
#' get_current_providers()
#'

get_current_providers <- function() {
  ct <- V8::v8()

  # create dummy Leaflet object
  ct$eval("var L = {TileLayer : {extend: function(){return {};}},
          Util : {extend: function(){return {};}},
          tileLayer : {}}")

  # Load providers.js file
  ct$source("https://unpkg.com/leaflet-providers")

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
    "providers" = providers,
    "providers.details" = providers.details)
}
