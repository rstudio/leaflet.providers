library(V8)
library(jsonlite)

ct <- v8()

# create dummy Leaflet object
ct$eval("var L = {TileLayer : {extend: function(){return {};}}, Util : {extend: function(){return {};}}, tileLayer : {}}")

# Load providers.js file
# curl from here https://unpkg.com/leaflet-providers
providers_filepath <- "https://raw.githubusercontent.com/leaflet-extras/leaflet-providers/master/leaflet-providers.js"
ct$source(providers_filepath)

providers <- ct$eval("JSON.stringify(L.TileLayer.Provider.providers)")

providers_ls <- fromJSON(providers)
