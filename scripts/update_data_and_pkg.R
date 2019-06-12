ct <- V8::v8()

# create dummy Leaflet object
ct$eval("var L = {TileLayer : {extend: function(){return {};}}, Util : {extend: function(){return {};}}, tileLayer : {}}")

# Load providers.js file
ct$source("https://unpkg.com/leaflet-providers")

providers_json <- ct$eval("JSON.stringify(L.TileLayer.Provider.providers)")

providers.details <- jsonlite::fromJSON(providers_json)

variants <- purrr::map(providers.details, ~ names(.$variants))

providers <- purrr::map(names(providers.details), function(provider) {
  if (is.null(variants[[provider]])) {
    provider
  } else {
    c(provider, stringr::str_c(provider,'.',variants[[provider]]))
  }
}) %>% purrr::flatten_chr()

providers <- setNames(as.list(providers), providers)

usethis::use_data(providers.details, overwrite = TRUE)
usethis::use_data(providers, overwrite = TRUE)

# Automate pkg components

usethis::use_spell_check()
