
<!-- README.md is generated from README.Rmd. Please edit that file -->

# leaflet.providers

<!-- badges: start -->

[![Build
status](https://ci.appveyor.com/api/projects/status/jn298w6o6pf8mpx1?svg=true)](https://ci.appveyor.com/project/leslie-huang/leaflet-providers)
[![Travis build
status](https://travis-ci.org/leslie-huang/leaflet.providers.svg?branch=master)](https://travis-ci.org/leslie-huang/leaflet.providers)
[![Codecov test
coverage](https://codecov.io/gh/leslie-huang/leaflet.providers/branch/master/graph/badge.svg)](https://codecov.io/gh/leslie-huang/leaflet.providers?branch=master)

<!-- badges: end -->

The goal of `leaflet.providers` is to provide regularly updated data on
the third-party tile providers supported by `leaflet`. The data is
extracted from
[leaflet-providers.js](https://github.com/leaflet-extras/leaflet-providers).

While `leaflet.providers` will be regularly released with updated
providers data, the package comes with functions `use_providers()` and
`get_providers()`, which enable users to fetch up-to-date providers
information directly from
[leaflet-providers.js](https://github.com/leaflet-extras/leaflet-providers)
between package updates and to load this providers data in `leaflet`.
Users may also fetch older versions of the providers data with the
`leaflet-providers.js` version number.

## Installation

You can install the released version of `leaflet.providers` from
[CRAN](https://CRAN.R-project.org):

``` r
# CRAN version
install.packages("leaflet.providers")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rstudio/leaflet.providers")
```

## Example

The following are basic example of the default providers data that comes
`leaflet.providers` as well as the available methods to fetch and load
custom providers.

### Default providers and providers’ details that come pre-loaded with the package

<div style="height:150px; overflow-y: scroll;">

``` r
library(leaflet.providers)

providers_default() # at the time of writing, version 1.8.0
#> $version_num
#> [1] "1.8.0"
#> 
#> $providers
#> $providers$OpenStreetMap
#> [1] "OpenStreetMap"
#> 
#> $providers$OpenStreetMap.Mapnik
#> [1] "OpenStreetMap.Mapnik"
#> 
#> $providers$OpenStreetMap.DE
#> [1] "OpenStreetMap.DE"
#> 
#> $providers$OpenStreetMap.CH
#> [1] "OpenStreetMap.CH"
#> 
#> $providers$OpenStreetMap.France
#> [1] "OpenStreetMap.France"
#> 
#> $providers$OpenStreetMap.HOT
#> [1] "OpenStreetMap.HOT"
#> 
#> $providers$OpenStreetMap.BZH
#> [1] "OpenStreetMap.BZH"
#> 
#> $providers$OpenSeaMap
#> [1] "OpenSeaMap"
#> 
#> $providers$OpenPtMap
#> [1] "OpenPtMap"
#> 
#> $providers$OpenTopoMap
#> [1] "OpenTopoMap"
#> 
#> $providers$OpenRailwayMap
#> [1] "OpenRailwayMap"
#> 
#> $providers$OpenFireMap
#> [1] "OpenFireMap"
#> 
#> $providers$SafeCast
#> [1] "SafeCast"
#> 
#> $providers$Thunderforest
#> [1] "Thunderforest"
#> 
#> $providers$Thunderforest.OpenCycleMap
#> [1] "Thunderforest.OpenCycleMap"
#> 
#> $providers$Thunderforest.Transport
#> [1] "Thunderforest.Transport"
#> 
#> $providers$Thunderforest.TransportDark
#> [1] "Thunderforest.TransportDark"
#> 
#> $providers$Thunderforest.SpinalMap
#> [1] "Thunderforest.SpinalMap"
#> 
#> $providers$Thunderforest.Landscape
#> [1] "Thunderforest.Landscape"
#> 
#> $providers$Thunderforest.Outdoors
#> [1] "Thunderforest.Outdoors"
#> 
#> $providers$Thunderforest.Pioneer
#> [1] "Thunderforest.Pioneer"
#> 
#> $providers$Thunderforest.MobileAtlas
#> [1] "Thunderforest.MobileAtlas"
#> 
#> $providers$Thunderforest.Neighbourhood
#> [1] "Thunderforest.Neighbourhood"
#> 
#> $providers$OpenMapSurfer
#> [1] "OpenMapSurfer"
#> 
#> $providers$OpenMapSurfer.Roads
#> [1] "OpenMapSurfer.Roads"
#> 
#> $providers$OpenMapSurfer.Hybrid
#> [1] "OpenMapSurfer.Hybrid"
#> 
#> $providers$OpenMapSurfer.AdminBounds
#> [1] "OpenMapSurfer.AdminBounds"
#> 
#> $providers$OpenMapSurfer.ContourLines
#> [1] "OpenMapSurfer.ContourLines"
#> 
#> $providers$OpenMapSurfer.Hillshade
#> [1] "OpenMapSurfer.Hillshade"
#> 
#> $providers$OpenMapSurfer.ElementsAtRisk
#> [1] "OpenMapSurfer.ElementsAtRisk"
#> 
#> $providers$Hydda
#> [1] "Hydda"
#> 
#> $providers$Hydda.Full
#> [1] "Hydda.Full"
#> 
#> $providers$Hydda.Base
#> [1] "Hydda.Base"
#> 
#> $providers$Hydda.RoadsAndLabels
#> [1] "Hydda.RoadsAndLabels"
#> 
#> $providers$MapBox
#> [1] "MapBox"
#> 
#> $providers$Stamen
#> [1] "Stamen"
#> 
#> $providers$Stamen.Toner
#> [1] "Stamen.Toner"
#> 
#> $providers$Stamen.TonerBackground
#> [1] "Stamen.TonerBackground"
#> 
#> $providers$Stamen.TonerHybrid
#> [1] "Stamen.TonerHybrid"
#> 
#> $providers$Stamen.TonerLines
#> [1] "Stamen.TonerLines"
#> 
#> $providers$Stamen.TonerLabels
#> [1] "Stamen.TonerLabels"
#> 
#> $providers$Stamen.TonerLite
#> [1] "Stamen.TonerLite"
#> 
#> $providers$Stamen.Watercolor
#> [1] "Stamen.Watercolor"
#> 
#> $providers$Stamen.Terrain
#> [1] "Stamen.Terrain"
#> 
#> $providers$Stamen.TerrainBackground
#> [1] "Stamen.TerrainBackground"
#> 
#> $providers$Stamen.TopOSMRelief
#> [1] "Stamen.TopOSMRelief"
#> 
#> $providers$Stamen.TopOSMFeatures
#> [1] "Stamen.TopOSMFeatures"
#> 
#> $providers$Esri
#> [1] "Esri"
#> 
#> $providers$Esri.WorldStreetMap
#> [1] "Esri.WorldStreetMap"
#> 
#> $providers$Esri.DeLorme
#> [1] "Esri.DeLorme"
#> 
#> $providers$Esri.WorldTopoMap
#> [1] "Esri.WorldTopoMap"
#> 
#> $providers$Esri.WorldImagery
#> [1] "Esri.WorldImagery"
#> 
#> $providers$Esri.WorldTerrain
#> [1] "Esri.WorldTerrain"
#> 
#> $providers$Esri.WorldShadedRelief
#> [1] "Esri.WorldShadedRelief"
#> 
#> $providers$Esri.WorldPhysical
#> [1] "Esri.WorldPhysical"
#> 
#> $providers$Esri.OceanBasemap
#> [1] "Esri.OceanBasemap"
#> 
#> $providers$Esri.NatGeoWorldMap
#> [1] "Esri.NatGeoWorldMap"
#> 
#> $providers$Esri.WorldGrayCanvas
#> [1] "Esri.WorldGrayCanvas"
#> 
#> $providers$OpenWeatherMap
#> [1] "OpenWeatherMap"
#> 
#> $providers$OpenWeatherMap.Clouds
#> [1] "OpenWeatherMap.Clouds"
#> 
#> $providers$OpenWeatherMap.CloudsClassic
#> [1] "OpenWeatherMap.CloudsClassic"
#> 
#> $providers$OpenWeatherMap.Precipitation
#> [1] "OpenWeatherMap.Precipitation"
#> 
#> $providers$OpenWeatherMap.PrecipitationClassic
#> [1] "OpenWeatherMap.PrecipitationClassic"
#> 
#> $providers$OpenWeatherMap.Rain
#> [1] "OpenWeatherMap.Rain"
#> 
#> $providers$OpenWeatherMap.RainClassic
#> [1] "OpenWeatherMap.RainClassic"
#> 
#> $providers$OpenWeatherMap.Pressure
#> [1] "OpenWeatherMap.Pressure"
#> 
#> $providers$OpenWeatherMap.PressureContour
#> [1] "OpenWeatherMap.PressureContour"
#> 
#> $providers$OpenWeatherMap.Wind
#> [1] "OpenWeatherMap.Wind"
#> 
#> $providers$OpenWeatherMap.Temperature
#> [1] "OpenWeatherMap.Temperature"
#> 
#> $providers$OpenWeatherMap.Snow
#> [1] "OpenWeatherMap.Snow"
#> 
#> $providers$HERE
#> [1] "HERE"
#> 
#> $providers$HERE.normalDay
#> [1] "HERE.normalDay"
#> 
#> $providers$HERE.normalDayCustom
#> [1] "HERE.normalDayCustom"
#> 
#> $providers$HERE.normalDayGrey
#> [1] "HERE.normalDayGrey"
#> 
#> $providers$HERE.normalDayMobile
#> [1] "HERE.normalDayMobile"
#> 
#> $providers$HERE.normalDayGreyMobile
#> [1] "HERE.normalDayGreyMobile"
#> 
#> $providers$HERE.normalDayTransit
#> [1] "HERE.normalDayTransit"
#> 
#> $providers$HERE.normalDayTransitMobile
#> [1] "HERE.normalDayTransitMobile"
#> 
#> $providers$HERE.normalNight
#> [1] "HERE.normalNight"
#> 
#> $providers$HERE.normalNightMobile
#> [1] "HERE.normalNightMobile"
#> 
#> $providers$HERE.normalNightGrey
#> [1] "HERE.normalNightGrey"
#> 
#> $providers$HERE.normalNightGreyMobile
#> [1] "HERE.normalNightGreyMobile"
#> 
#> $providers$HERE.normalNightTransit
#> [1] "HERE.normalNightTransit"
#> 
#> $providers$HERE.normalNightTransitMobile
#> [1] "HERE.normalNightTransitMobile"
#> 
#> $providers$HERE.reducedDay
#> [1] "HERE.reducedDay"
#> 
#> $providers$HERE.reducedNight
#> [1] "HERE.reducedNight"
#> 
#> $providers$HERE.basicMap
#> [1] "HERE.basicMap"
#> 
#> $providers$HERE.mapLabels
#> [1] "HERE.mapLabels"
#> 
#> $providers$HERE.trafficFlow
#> [1] "HERE.trafficFlow"
#> 
#> $providers$HERE.carnavDayGrey
#> [1] "HERE.carnavDayGrey"
#> 
#> $providers$HERE.hybridDay
#> [1] "HERE.hybridDay"
#> 
#> $providers$HERE.hybridDayMobile
#> [1] "HERE.hybridDayMobile"
#> 
#> $providers$HERE.hybridDayTransit
#> [1] "HERE.hybridDayTransit"
#> 
#> $providers$HERE.hybridDayGrey
#> [1] "HERE.hybridDayGrey"
#> 
#> $providers$HERE.pedestrianDay
#> [1] "HERE.pedestrianDay"
#> 
#> $providers$HERE.pedestrianNight
#> [1] "HERE.pedestrianNight"
#> 
#> $providers$HERE.satelliteDay
#> [1] "HERE.satelliteDay"
#> 
#> $providers$HERE.terrainDay
#> [1] "HERE.terrainDay"
#> 
#> $providers$HERE.terrainDayMobile
#> [1] "HERE.terrainDayMobile"
#> 
#> $providers$FreeMapSK
#> [1] "FreeMapSK"
#> 
#> $providers$MtbMap
#> [1] "MtbMap"
#> 
#> $providers$CartoDB
#> [1] "CartoDB"
#> 
#> $providers$CartoDB.Positron
#> [1] "CartoDB.Positron"
#> 
#> $providers$CartoDB.PositronNoLabels
#> [1] "CartoDB.PositronNoLabels"
#> 
#> $providers$CartoDB.PositronOnlyLabels
#> [1] "CartoDB.PositronOnlyLabels"
#> 
#> $providers$CartoDB.DarkMatter
#> [1] "CartoDB.DarkMatter"
#> 
#> $providers$CartoDB.DarkMatterNoLabels
#> [1] "CartoDB.DarkMatterNoLabels"
#> 
#> $providers$CartoDB.DarkMatterOnlyLabels
#> [1] "CartoDB.DarkMatterOnlyLabels"
#> 
#> $providers$CartoDB.Voyager
#> [1] "CartoDB.Voyager"
#> 
#> $providers$CartoDB.VoyagerNoLabels
#> [1] "CartoDB.VoyagerNoLabels"
#> 
#> $providers$CartoDB.VoyagerOnlyLabels
#> [1] "CartoDB.VoyagerOnlyLabels"
#> 
#> $providers$CartoDB.VoyagerLabelsUnder
#> [1] "CartoDB.VoyagerLabelsUnder"
#> 
#> $providers$HikeBike
#> [1] "HikeBike"
#> 
#> $providers$HikeBike.HikeBike
#> [1] "HikeBike.HikeBike"
#> 
#> $providers$HikeBike.HillShading
#> [1] "HikeBike.HillShading"
#> 
#> $providers$BasemapAT
#> [1] "BasemapAT"
#> 
#> $providers$BasemapAT.basemap
#> [1] "BasemapAT.basemap"
#> 
#> $providers$BasemapAT.grau
#> [1] "BasemapAT.grau"
#> 
#> $providers$BasemapAT.overlay
#> [1] "BasemapAT.overlay"
#> 
#> $providers$BasemapAT.highdpi
#> [1] "BasemapAT.highdpi"
#> 
#> $providers$BasemapAT.orthofoto
#> [1] "BasemapAT.orthofoto"
#> 
#> $providers$nlmaps
#> [1] "nlmaps"
#> 
#> $providers$nlmaps.standaard
#> [1] "nlmaps.standaard"
#> 
#> $providers$nlmaps.pastel
#> [1] "nlmaps.pastel"
#> 
#> $providers$nlmaps.grijs
#> [1] "nlmaps.grijs"
#> 
#> $providers$nlmaps.luchtfoto
#> [1] "nlmaps.luchtfoto"
#> 
#> $providers$NASAGIBS
#> [1] "NASAGIBS"
#> 
#> $providers$NASAGIBS.ModisTerraTrueColorCR
#> [1] "NASAGIBS.ModisTerraTrueColorCR"
#> 
#> $providers$NASAGIBS.ModisTerraBands367CR
#> [1] "NASAGIBS.ModisTerraBands367CR"
#> 
#> $providers$NASAGIBS.ViirsEarthAtNight2012
#> [1] "NASAGIBS.ViirsEarthAtNight2012"
#> 
#> $providers$NASAGIBS.ModisTerraLSTDay
#> [1] "NASAGIBS.ModisTerraLSTDay"
#> 
#> $providers$NASAGIBS.ModisTerraSnowCover
#> [1] "NASAGIBS.ModisTerraSnowCover"
#> 
#> $providers$NASAGIBS.ModisTerraAOD
#> [1] "NASAGIBS.ModisTerraAOD"
#> 
#> $providers$NASAGIBS.ModisTerraChlorophyll
#> [1] "NASAGIBS.ModisTerraChlorophyll"
#> 
#> $providers$NLS
#> [1] "NLS"
#> 
#> $providers$JusticeMap
#> [1] "JusticeMap"
#> 
#> $providers$JusticeMap.income
#> [1] "JusticeMap.income"
#> 
#> $providers$JusticeMap.americanIndian
#> [1] "JusticeMap.americanIndian"
#> 
#> $providers$JusticeMap.asian
#> [1] "JusticeMap.asian"
#> 
#> $providers$JusticeMap.black
#> [1] "JusticeMap.black"
#> 
#> $providers$JusticeMap.hispanic
#> [1] "JusticeMap.hispanic"
#> 
#> $providers$JusticeMap.multi
#> [1] "JusticeMap.multi"
#> 
#> $providers$JusticeMap.nonWhite
#> [1] "JusticeMap.nonWhite"
#> 
#> $providers$JusticeMap.white
#> [1] "JusticeMap.white"
#> 
#> $providers$JusticeMap.plurality
#> [1] "JusticeMap.plurality"
#> 
#> $providers$Wikimedia
#> [1] "Wikimedia"
#> 
#> $providers$GeoportailFrance
#> [1] "GeoportailFrance"
#> 
#> $providers$GeoportailFrance.parcels
#> [1] "GeoportailFrance.parcels"
#> 
#> $providers$GeoportailFrance.ignMaps
#> [1] "GeoportailFrance.ignMaps"
#> 
#> $providers$GeoportailFrance.maps
#> [1] "GeoportailFrance.maps"
#> 
#> $providers$GeoportailFrance.orthos
#> [1] "GeoportailFrance.orthos"
#> 
#> $providers$OneMapSG
#> [1] "OneMapSG"
#> 
#> $providers$OneMapSG.Default
#> [1] "OneMapSG.Default"
#> 
#> $providers$OneMapSG.Night
#> [1] "OneMapSG.Night"
#> 
#> $providers$OneMapSG.Original
#> [1] "OneMapSG.Original"
#> 
#> $providers$OneMapSG.Grey
#> [1] "OneMapSG.Grey"
#> 
#> $providers$OneMapSG.LandLot
#> [1] "OneMapSG.LandLot"
#> 
#> 
#> $providers_details
#> $providers_details$OpenStreetMap
#> $providers_details$OpenStreetMap$url
#> [1] "//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenStreetMap$options
#> $providers_details$OpenStreetMap$options$maxZoom
#> [1] 19
#> 
#> $providers_details$OpenStreetMap$options$attribution
#> [1] "&copy; <a href=\"https://www.openstreetmap.org/copyright\">OpenStreetMap</a> contributors"
#> 
#> 
#> $providers_details$OpenStreetMap$variants
#> $providers_details$OpenStreetMap$variants$Mapnik
#> named list()
#> 
#> $providers_details$OpenStreetMap$variants$DE
#> $providers_details$OpenStreetMap$variants$DE$url
#> [1] "//{s}.tile.openstreetmap.de/tiles/osmde/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenStreetMap$variants$DE$options
#> $providers_details$OpenStreetMap$variants$DE$options$maxZoom
#> [1] 18
#> 
#> 
#> 
#> $providers_details$OpenStreetMap$variants$CH
#> $providers_details$OpenStreetMap$variants$CH$url
#> [1] "//tile.osm.ch/switzerland/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenStreetMap$variants$CH$options
#> $providers_details$OpenStreetMap$variants$CH$options$maxZoom
#> [1] 18
#> 
#> $providers_details$OpenStreetMap$variants$CH$options$bounds
#>      [,1] [,2]
#> [1,]   45    5
#> [2,]   48   11
#> 
#> 
#> 
#> $providers_details$OpenStreetMap$variants$France
#> $providers_details$OpenStreetMap$variants$France$url
#> [1] "//{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenStreetMap$variants$France$options
#> $providers_details$OpenStreetMap$variants$France$options$maxZoom
#> [1] 20
#> 
#> $providers_details$OpenStreetMap$variants$France$options$attribution
#> [1] "&copy; Openstreetmap France | {attribution.OpenStreetMap}"
#> 
#> 
#> 
#> $providers_details$OpenStreetMap$variants$HOT
#> $providers_details$OpenStreetMap$variants$HOT$url
#> [1] "//{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenStreetMap$variants$HOT$options
#> $providers_details$OpenStreetMap$variants$HOT$options$attribution
#> [1] "{attribution.OpenStreetMap}, Tiles style by <a href=\"https://www.hotosm.org/\" target=\"_blank\">Humanitarian OpenStreetMap Team</a> hosted by <a href=\"https://openstreetmap.fr/\" target=\"_blank\">OpenStreetMap France</a>"
#> 
#> 
#> 
#> $providers_details$OpenStreetMap$variants$BZH
#> $providers_details$OpenStreetMap$variants$BZH$url
#> [1] "//tile.openstreetmap.bzh/br/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenStreetMap$variants$BZH$options
#> $providers_details$OpenStreetMap$variants$BZH$options$attribution
#> [1] "{attribution.OpenStreetMap}, Tiles courtesy of <a href=\"http://www.openstreetmap.bzh/\" target=\"_blank\">Breton OpenStreetMap Team</a>"
#> 
#> $providers_details$OpenStreetMap$variants$BZH$options$bounds
#>      [,1] [,2]
#> [1,] 46.2 -5.5
#> [2,] 50.0  0.7
#> 
#> 
#> 
#> 
#> 
#> $providers_details$OpenSeaMap
#> $providers_details$OpenSeaMap$url
#> [1] "//tiles.openseamap.org/seamark/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenSeaMap$options
#> $providers_details$OpenSeaMap$options$attribution
#> [1] "Map data: &copy; <a href=\"http://www.openseamap.org\">OpenSeaMap</a> contributors"
#> 
#> 
#> 
#> $providers_details$OpenPtMap
#> $providers_details$OpenPtMap$url
#> [1] "http://openptmap.org/tiles/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenPtMap$options
#> $providers_details$OpenPtMap$options$maxZoom
#> [1] 17
#> 
#> $providers_details$OpenPtMap$options$attribution
#> [1] "Map data: &copy; <a href=\"http://www.openptmap.org\">OpenPtMap</a> contributors"
#> 
#> 
#> 
#> $providers_details$OpenTopoMap
#> $providers_details$OpenTopoMap$url
#> [1] "https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenTopoMap$options
#> $providers_details$OpenTopoMap$options$maxZoom
#> [1] 17
#> 
#> $providers_details$OpenTopoMap$options$attribution
#> [1] "Map data: {attribution.OpenStreetMap}, <a href=\"http://viewfinderpanoramas.org\">SRTM</a> | Map style: &copy; <a href=\"https://opentopomap.org\">OpenTopoMap</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)"
#> 
#> 
#> 
#> $providers_details$OpenRailwayMap
#> $providers_details$OpenRailwayMap$url
#> [1] "https://{s}.tiles.openrailwaymap.org/standard/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenRailwayMap$options
#> $providers_details$OpenRailwayMap$options$maxZoom
#> [1] 19
#> 
#> $providers_details$OpenRailwayMap$options$attribution
#> [1] "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://www.OpenRailwayMap.org\">OpenRailwayMap</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)"
#> 
#> 
#> 
#> $providers_details$OpenFireMap
#> $providers_details$OpenFireMap$url
#> [1] "http://openfiremap.org/hytiles/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenFireMap$options
#> $providers_details$OpenFireMap$options$maxZoom
#> [1] 19
#> 
#> $providers_details$OpenFireMap$options$attribution
#> [1] "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"http://www.openfiremap.org\">OpenFireMap</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)"
#> 
#> 
#> 
#> $providers_details$SafeCast
#> $providers_details$SafeCast$url
#> [1] "//s3.amazonaws.com/te512.safecast.org/{z}/{x}/{y}.png"
#> 
#> $providers_details$SafeCast$options
#> $providers_details$SafeCast$options$maxZoom
#> [1] 16
#> 
#> $providers_details$SafeCast$options$attribution
#> [1] "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://blog.safecast.org/about/\">SafeCast</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)"
#> 
#> 
#> 
#> $providers_details$Thunderforest
#> $providers_details$Thunderforest$url
#> [1] "https://{s}.tile.thunderforest.com/{variant}/{z}/{x}/{y}.png?apikey={apikey}"
#> 
#> $providers_details$Thunderforest$options
#> $providers_details$Thunderforest$options$attribution
#> [1] "&copy; <a href=\"http://www.thunderforest.com/\">Thunderforest</a>, {attribution.OpenStreetMap}"
#> 
#> $providers_details$Thunderforest$options$variant
#> [1] "cycle"
#> 
#> $providers_details$Thunderforest$options$apikey
#> [1] "<insert your api key here>"
#> 
#> $providers_details$Thunderforest$options$maxZoom
#> [1] 22
#> 
#> 
#> $providers_details$Thunderforest$variants
#> $providers_details$Thunderforest$variants$OpenCycleMap
#> [1] "cycle"
#> 
#> $providers_details$Thunderforest$variants$Transport
#> $providers_details$Thunderforest$variants$Transport$options
#> $providers_details$Thunderforest$variants$Transport$options$variant
#> [1] "transport"
#> 
#> 
#> 
#> $providers_details$Thunderforest$variants$TransportDark
#> $providers_details$Thunderforest$variants$TransportDark$options
#> $providers_details$Thunderforest$variants$TransportDark$options$variant
#> [1] "transport-dark"
#> 
#> 
#> 
#> $providers_details$Thunderforest$variants$SpinalMap
#> $providers_details$Thunderforest$variants$SpinalMap$options
#> $providers_details$Thunderforest$variants$SpinalMap$options$variant
#> [1] "spinal-map"
#> 
#> 
#> 
#> $providers_details$Thunderforest$variants$Landscape
#> [1] "landscape"
#> 
#> $providers_details$Thunderforest$variants$Outdoors
#> [1] "outdoors"
#> 
#> $providers_details$Thunderforest$variants$Pioneer
#> [1] "pioneer"
#> 
#> $providers_details$Thunderforest$variants$MobileAtlas
#> [1] "mobile-atlas"
#> 
#> $providers_details$Thunderforest$variants$Neighbourhood
#> [1] "neighbourhood"
#> 
#> 
#> 
#> $providers_details$OpenMapSurfer
#> $providers_details$OpenMapSurfer$url
#> [1] "https://maps.heigit.org/openmapsurfer/tiles/{variant}/webmercator/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenMapSurfer$options
#> $providers_details$OpenMapSurfer$options$maxZoom
#> [1] 19
#> 
#> $providers_details$OpenMapSurfer$options$variant
#> [1] "roads"
#> 
#> $providers_details$OpenMapSurfer$options$attribution
#> [1] "Imagery from <a href=\"http://giscience.uni-hd.de/\">GIScience Research Group @ University of Heidelberg</a> | Map data "
#> 
#> 
#> $providers_details$OpenMapSurfer$variants
#> $providers_details$OpenMapSurfer$variants$Roads
#> $providers_details$OpenMapSurfer$variants$Roads$options
#> $providers_details$OpenMapSurfer$variants$Roads$options$variant
#> [1] "roads"
#> 
#> $providers_details$OpenMapSurfer$variants$Roads$options$attribution
#> [1] "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
#> 
#> 
#> 
#> $providers_details$OpenMapSurfer$variants$Hybrid
#> $providers_details$OpenMapSurfer$variants$Hybrid$options
#> $providers_details$OpenMapSurfer$variants$Hybrid$options$variant
#> [1] "hybrid"
#> 
#> $providers_details$OpenMapSurfer$variants$Hybrid$options$attribution
#> [1] "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
#> 
#> 
#> 
#> $providers_details$OpenMapSurfer$variants$AdminBounds
#> $providers_details$OpenMapSurfer$variants$AdminBounds$options
#> $providers_details$OpenMapSurfer$variants$AdminBounds$options$variant
#> [1] "adminb"
#> 
#> $providers_details$OpenMapSurfer$variants$AdminBounds$options$maxZoom
#> [1] 18
#> 
#> $providers_details$OpenMapSurfer$variants$AdminBounds$options$attribution
#> [1] "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
#> 
#> 
#> 
#> $providers_details$OpenMapSurfer$variants$ContourLines
#> $providers_details$OpenMapSurfer$variants$ContourLines$options
#> $providers_details$OpenMapSurfer$variants$ContourLines$options$variant
#> [1] "asterc"
#> 
#> $providers_details$OpenMapSurfer$variants$ContourLines$options$maxZoom
#> [1] 18
#> 
#> $providers_details$OpenMapSurfer$variants$ContourLines$options$minZoom
#> [1] 13
#> 
#> $providers_details$OpenMapSurfer$variants$ContourLines$options$attribution
#> [1] "{attribution.OpenMapSurfer} <a href=\"https://lpdaac.usgs.gov/products/aster_policies\">ASTER GDEM</a>"
#> 
#> 
#> 
#> $providers_details$OpenMapSurfer$variants$Hillshade
#> $providers_details$OpenMapSurfer$variants$Hillshade$options
#> $providers_details$OpenMapSurfer$variants$Hillshade$options$variant
#> [1] "asterh"
#> 
#> $providers_details$OpenMapSurfer$variants$Hillshade$options$maxZoom
#> [1] 18
#> 
#> $providers_details$OpenMapSurfer$variants$Hillshade$options$attribution
#> [1] "{attribution.OpenMapSurfer} <a href=\"https://lpdaac.usgs.gov/products/aster_policies\">ASTER GDEM</a>, <a href=\"http://srtm.csi.cgiar.org/\">SRTM</a>"
#> 
#> 
#> 
#> $providers_details$OpenMapSurfer$variants$ElementsAtRisk
#> $providers_details$OpenMapSurfer$variants$ElementsAtRisk$options
#> $providers_details$OpenMapSurfer$variants$ElementsAtRisk$options$variant
#> [1] "elements_at_risk"
#> 
#> $providers_details$OpenMapSurfer$variants$ElementsAtRisk$options$attribution
#> [1] "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
#> 
#> 
#> 
#> 
#> 
#> $providers_details$Hydda
#> $providers_details$Hydda$url
#> [1] "//{s}.tile.openstreetmap.se/hydda/{variant}/{z}/{x}/{y}.png"
#> 
#> $providers_details$Hydda$options
#> $providers_details$Hydda$options$maxZoom
#> [1] 18
#> 
#> $providers_details$Hydda$options$variant
#> [1] "full"
#> 
#> $providers_details$Hydda$options$attribution
#> [1] "Tiles courtesy of <a href=\"http://openstreetmap.se/\" target=\"_blank\">OpenStreetMap Sweden</a> &mdash; Map data {attribution.OpenStreetMap}"
#> 
#> 
#> $providers_details$Hydda$variants
#> $providers_details$Hydda$variants$Full
#> [1] "full"
#> 
#> $providers_details$Hydda$variants$Base
#> [1] "base"
#> 
#> $providers_details$Hydda$variants$RoadsAndLabels
#> [1] "roads_and_labels"
#> 
#> 
#> 
#> $providers_details$MapBox
#> $providers_details$MapBox$url
#> [1] "https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}{r}.png?access_token={accessToken}"
#> 
#> $providers_details$MapBox$options
#> $providers_details$MapBox$options$attribution
#> [1] "<a href=\"https://www.mapbox.com/about/maps/\" target=\"_blank\">&copy; Mapbox</a> {attribution.OpenStreetMap} <a href=\"https://www.mapbox.com/map-feedback/\" target=\"_blank\">Improve this map</a>"
#> 
#> $providers_details$MapBox$options$subdomains
#> [1] "abcd"
#> 
#> $providers_details$MapBox$options$id
#> [1] "mapbox.streets"
#> 
#> $providers_details$MapBox$options$accessToken
#> [1] "<insert your access token here>"
#> 
#> 
#> 
#> $providers_details$Stamen
#> $providers_details$Stamen$url
#> [1] "//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}{r}.{ext}"
#> 
#> $providers_details$Stamen$options
#> $providers_details$Stamen$options$attribution
#> [1] "Map tiles by <a href=\"http://stamen.com\">Stamen Design</a>, <a href=\"http://creativecommons.org/licenses/by/3.0\">CC BY 3.0</a> &mdash; Map data {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stamen$options$subdomains
#> [1] "abcd"
#> 
#> $providers_details$Stamen$options$minZoom
#> [1] 0
#> 
#> $providers_details$Stamen$options$maxZoom
#> [1] 20
#> 
#> $providers_details$Stamen$options$variant
#> [1] "toner"
#> 
#> $providers_details$Stamen$options$ext
#> [1] "png"
#> 
#> 
#> $providers_details$Stamen$variants
#> $providers_details$Stamen$variants$Toner
#> [1] "toner"
#> 
#> $providers_details$Stamen$variants$TonerBackground
#> [1] "toner-background"
#> 
#> $providers_details$Stamen$variants$TonerHybrid
#> [1] "toner-hybrid"
#> 
#> $providers_details$Stamen$variants$TonerLines
#> [1] "toner-lines"
#> 
#> $providers_details$Stamen$variants$TonerLabels
#> [1] "toner-labels"
#> 
#> $providers_details$Stamen$variants$TonerLite
#> [1] "toner-lite"
#> 
#> $providers_details$Stamen$variants$Watercolor
#> $providers_details$Stamen$variants$Watercolor$url
#> [1] "//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}.{ext}"
#> 
#> $providers_details$Stamen$variants$Watercolor$options
#> $providers_details$Stamen$variants$Watercolor$options$variant
#> [1] "watercolor"
#> 
#> $providers_details$Stamen$variants$Watercolor$options$ext
#> [1] "jpg"
#> 
#> $providers_details$Stamen$variants$Watercolor$options$minZoom
#> [1] 1
#> 
#> $providers_details$Stamen$variants$Watercolor$options$maxZoom
#> [1] 16
#> 
#> 
#> 
#> $providers_details$Stamen$variants$Terrain
#> $providers_details$Stamen$variants$Terrain$options
#> $providers_details$Stamen$variants$Terrain$options$variant
#> [1] "terrain"
#> 
#> $providers_details$Stamen$variants$Terrain$options$minZoom
#> [1] 0
#> 
#> $providers_details$Stamen$variants$Terrain$options$maxZoom
#> [1] 18
#> 
#> 
#> 
#> $providers_details$Stamen$variants$TerrainBackground
#> $providers_details$Stamen$variants$TerrainBackground$options
#> $providers_details$Stamen$variants$TerrainBackground$options$variant
#> [1] "terrain-background"
#> 
#> $providers_details$Stamen$variants$TerrainBackground$options$minZoom
#> [1] 0
#> 
#> $providers_details$Stamen$variants$TerrainBackground$options$maxZoom
#> [1] 18
#> 
#> 
#> 
#> $providers_details$Stamen$variants$TopOSMRelief
#> $providers_details$Stamen$variants$TopOSMRelief$url
#> [1] "//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}.{ext}"
#> 
#> $providers_details$Stamen$variants$TopOSMRelief$options
#> $providers_details$Stamen$variants$TopOSMRelief$options$variant
#> [1] "toposm-color-relief"
#> 
#> $providers_details$Stamen$variants$TopOSMRelief$options$ext
#> [1] "jpg"
#> 
#> $providers_details$Stamen$variants$TopOSMRelief$options$bounds
#>      [,1] [,2]
#> [1,]   22 -132
#> [2,]   51  -56
#> 
#> 
#> 
#> $providers_details$Stamen$variants$TopOSMFeatures
#> $providers_details$Stamen$variants$TopOSMFeatures$options
#> $providers_details$Stamen$variants$TopOSMFeatures$options$variant
#> [1] "toposm-features"
#> 
#> $providers_details$Stamen$variants$TopOSMFeatures$options$bounds
#>      [,1] [,2]
#> [1,]   22 -132
#> [2,]   51  -56
#> 
#> $providers_details$Stamen$variants$TopOSMFeatures$options$opacity
#> [1] 0.9
#> 
#> 
#> 
#> 
#> 
#> $providers_details$Esri
#> $providers_details$Esri$url
#> [1] "//server.arcgisonline.com/ArcGIS/rest/services/{variant}/MapServer/tile/{z}/{y}/{x}"
#> 
#> $providers_details$Esri$options
#> $providers_details$Esri$options$variant
#> [1] "World_Street_Map"
#> 
#> $providers_details$Esri$options$attribution
#> [1] "Tiles &copy; Esri"
#> 
#> 
#> $providers_details$Esri$variants
#> $providers_details$Esri$variants$WorldStreetMap
#> $providers_details$Esri$variants$WorldStreetMap$options
#> $providers_details$Esri$variants$WorldStreetMap$options$attribution
#> [1] "{attribution.Esri} &mdash; Source: Esri, DeLorme, NAVTEQ, USGS, Intermap, iPC, NRCAN, Esri Japan, METI, Esri China (Hong Kong), Esri (Thailand), TomTom, 2012"
#> 
#> 
#> 
#> $providers_details$Esri$variants$DeLorme
#> $providers_details$Esri$variants$DeLorme$options
#> $providers_details$Esri$variants$DeLorme$options$variant
#> [1] "Specialty/DeLorme_World_Base_Map"
#> 
#> $providers_details$Esri$variants$DeLorme$options$minZoom
#> [1] 1
#> 
#> $providers_details$Esri$variants$DeLorme$options$maxZoom
#> [1] 11
#> 
#> $providers_details$Esri$variants$DeLorme$options$attribution
#> [1] "{attribution.Esri} &mdash; Copyright: &copy;2012 DeLorme"
#> 
#> 
#> 
#> $providers_details$Esri$variants$WorldTopoMap
#> $providers_details$Esri$variants$WorldTopoMap$options
#> $providers_details$Esri$variants$WorldTopoMap$options$variant
#> [1] "World_Topo_Map"
#> 
#> $providers_details$Esri$variants$WorldTopoMap$options$attribution
#> [1] "{attribution.Esri} &mdash; Esri, DeLorme, NAVTEQ, TomTom, Intermap, iPC, USGS, FAO, NPS, NRCAN, GeoBase, Kadaster NL, Ordnance Survey, Esri Japan, METI, Esri China (Hong Kong), and the GIS User Community"
#> 
#> 
#> 
#> $providers_details$Esri$variants$WorldImagery
#> $providers_details$Esri$variants$WorldImagery$options
#> $providers_details$Esri$variants$WorldImagery$options$variant
#> [1] "World_Imagery"
#> 
#> $providers_details$Esri$variants$WorldImagery$options$attribution
#> [1] "{attribution.Esri} &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community"
#> 
#> 
#> 
#> $providers_details$Esri$variants$WorldTerrain
#> $providers_details$Esri$variants$WorldTerrain$options
#> $providers_details$Esri$variants$WorldTerrain$options$variant
#> [1] "World_Terrain_Base"
#> 
#> $providers_details$Esri$variants$WorldTerrain$options$maxZoom
#> [1] 13
#> 
#> $providers_details$Esri$variants$WorldTerrain$options$attribution
#> [1] "{attribution.Esri} &mdash; Source: USGS, Esri, TANA, DeLorme, and NPS"
#> 
#> 
#> 
#> $providers_details$Esri$variants$WorldShadedRelief
#> $providers_details$Esri$variants$WorldShadedRelief$options
#> $providers_details$Esri$variants$WorldShadedRelief$options$variant
#> [1] "World_Shaded_Relief"
#> 
#> $providers_details$Esri$variants$WorldShadedRelief$options$maxZoom
#> [1] 13
#> 
#> $providers_details$Esri$variants$WorldShadedRelief$options$attribution
#> [1] "{attribution.Esri} &mdash; Source: Esri"
#> 
#> 
#> 
#> $providers_details$Esri$variants$WorldPhysical
#> $providers_details$Esri$variants$WorldPhysical$options
#> $providers_details$Esri$variants$WorldPhysical$options$variant
#> [1] "World_Physical_Map"
#> 
#> $providers_details$Esri$variants$WorldPhysical$options$maxZoom
#> [1] 8
#> 
#> $providers_details$Esri$variants$WorldPhysical$options$attribution
#> [1] "{attribution.Esri} &mdash; Source: US National Park Service"
#> 
#> 
#> 
#> $providers_details$Esri$variants$OceanBasemap
#> $providers_details$Esri$variants$OceanBasemap$options
#> $providers_details$Esri$variants$OceanBasemap$options$variant
#> [1] "Ocean_Basemap"
#> 
#> $providers_details$Esri$variants$OceanBasemap$options$maxZoom
#> [1] 13
#> 
#> $providers_details$Esri$variants$OceanBasemap$options$attribution
#> [1] "{attribution.Esri} &mdash; Sources: GEBCO, NOAA, CHS, OSU, UNH, CSUMB, National Geographic, DeLorme, NAVTEQ, and Esri"
#> 
#> 
#> 
#> $providers_details$Esri$variants$NatGeoWorldMap
#> $providers_details$Esri$variants$NatGeoWorldMap$options
#> $providers_details$Esri$variants$NatGeoWorldMap$options$variant
#> [1] "NatGeo_World_Map"
#> 
#> $providers_details$Esri$variants$NatGeoWorldMap$options$maxZoom
#> [1] 16
#> 
#> $providers_details$Esri$variants$NatGeoWorldMap$options$attribution
#> [1] "{attribution.Esri} &mdash; National Geographic, Esri, DeLorme, NAVTEQ, UNEP-WCMC, USGS, NASA, ESA, METI, NRCAN, GEBCO, NOAA, iPC"
#> 
#> 
#> 
#> $providers_details$Esri$variants$WorldGrayCanvas
#> $providers_details$Esri$variants$WorldGrayCanvas$options
#> $providers_details$Esri$variants$WorldGrayCanvas$options$variant
#> [1] "Canvas/World_Light_Gray_Base"
#> 
#> $providers_details$Esri$variants$WorldGrayCanvas$options$maxZoom
#> [1] 16
#> 
#> $providers_details$Esri$variants$WorldGrayCanvas$options$attribution
#> [1] "{attribution.Esri} &mdash; Esri, DeLorme, NAVTEQ"
#> 
#> 
#> 
#> 
#> 
#> $providers_details$OpenWeatherMap
#> $providers_details$OpenWeatherMap$url
#> [1] "http://{s}.tile.openweathermap.org/map/{variant}/{z}/{x}/{y}.png?appid={apiKey}"
#> 
#> $providers_details$OpenWeatherMap$options
#> $providers_details$OpenWeatherMap$options$maxZoom
#> [1] 19
#> 
#> $providers_details$OpenWeatherMap$options$attribution
#> [1] "Map data &copy; <a href=\"http://openweathermap.org\">OpenWeatherMap</a>"
#> 
#> $providers_details$OpenWeatherMap$options$apiKey
#> [1] "<insert your api key here>"
#> 
#> $providers_details$OpenWeatherMap$options$opacity
#> [1] 0.5
#> 
#> 
#> $providers_details$OpenWeatherMap$variants
#> $providers_details$OpenWeatherMap$variants$Clouds
#> [1] "clouds"
#> 
#> $providers_details$OpenWeatherMap$variants$CloudsClassic
#> [1] "clouds_cls"
#> 
#> $providers_details$OpenWeatherMap$variants$Precipitation
#> [1] "precipitation"
#> 
#> $providers_details$OpenWeatherMap$variants$PrecipitationClassic
#> [1] "precipitation_cls"
#> 
#> $providers_details$OpenWeatherMap$variants$Rain
#> [1] "rain"
#> 
#> $providers_details$OpenWeatherMap$variants$RainClassic
#> [1] "rain_cls"
#> 
#> $providers_details$OpenWeatherMap$variants$Pressure
#> [1] "pressure"
#> 
#> $providers_details$OpenWeatherMap$variants$PressureContour
#> [1] "pressure_cntr"
#> 
#> $providers_details$OpenWeatherMap$variants$Wind
#> [1] "wind"
#> 
#> $providers_details$OpenWeatherMap$variants$Temperature
#> [1] "temp"
#> 
#> $providers_details$OpenWeatherMap$variants$Snow
#> [1] "snow"
#> 
#> 
#> 
#> $providers_details$HERE
#> $providers_details$HERE$url
#> [1] "https://{s}.{base}.maps.api.here.com/maptile/2.1/{type}/{mapID}/{variant}/{z}/{x}/{y}/{size}/{format}?app_id={app_id}&app_code={app_code}&lg={language}"
#> 
#> $providers_details$HERE$options
#> $providers_details$HERE$options$attribution
#> [1] "Map &copy; 1987-2019 <a href=\"http://developer.here.com\">HERE</a>"
#> 
#> $providers_details$HERE$options$subdomains
#> [1] "1234"
#> 
#> $providers_details$HERE$options$mapID
#> [1] "newest"
#> 
#> $providers_details$HERE$options$app_id
#> [1] "<insert your app_id here>"
#> 
#> $providers_details$HERE$options$app_code
#> [1] "<insert your app_code here>"
#> 
#> $providers_details$HERE$options$base
#> [1] "base"
#> 
#> $providers_details$HERE$options$variant
#> [1] "normal.day"
#> 
#> $providers_details$HERE$options$maxZoom
#> [1] 20
#> 
#> $providers_details$HERE$options$type
#> [1] "maptile"
#> 
#> $providers_details$HERE$options$language
#> [1] "eng"
#> 
#> $providers_details$HERE$options$format
#> [1] "png8"
#> 
#> $providers_details$HERE$options$size
#> [1] "256"
#> 
#> 
#> $providers_details$HERE$variants
#> $providers_details$HERE$variants$normalDay
#> [1] "normal.day"
#> 
#> $providers_details$HERE$variants$normalDayCustom
#> [1] "normal.day.custom"
#> 
#> $providers_details$HERE$variants$normalDayGrey
#> [1] "normal.day.grey"
#> 
#> $providers_details$HERE$variants$normalDayMobile
#> [1] "normal.day.mobile"
#> 
#> $providers_details$HERE$variants$normalDayGreyMobile
#> [1] "normal.day.grey.mobile"
#> 
#> $providers_details$HERE$variants$normalDayTransit
#> [1] "normal.day.transit"
#> 
#> $providers_details$HERE$variants$normalDayTransitMobile
#> [1] "normal.day.transit.mobile"
#> 
#> $providers_details$HERE$variants$normalNight
#> [1] "normal.night"
#> 
#> $providers_details$HERE$variants$normalNightMobile
#> [1] "normal.night.mobile"
#> 
#> $providers_details$HERE$variants$normalNightGrey
#> [1] "normal.night.grey"
#> 
#> $providers_details$HERE$variants$normalNightGreyMobile
#> [1] "normal.night.grey.mobile"
#> 
#> $providers_details$HERE$variants$normalNightTransit
#> [1] "normal.night.transit"
#> 
#> $providers_details$HERE$variants$normalNightTransitMobile
#> [1] "normal.night.transit.mobile"
#> 
#> $providers_details$HERE$variants$reducedDay
#> [1] "reduced.day"
#> 
#> $providers_details$HERE$variants$reducedNight
#> [1] "reduced.night"
#> 
#> $providers_details$HERE$variants$basicMap
#> $providers_details$HERE$variants$basicMap$options
#> $providers_details$HERE$variants$basicMap$options$type
#> [1] "basetile"
#> 
#> 
#> 
#> $providers_details$HERE$variants$mapLabels
#> $providers_details$HERE$variants$mapLabels$options
#> $providers_details$HERE$variants$mapLabels$options$type
#> [1] "labeltile"
#> 
#> $providers_details$HERE$variants$mapLabels$options$format
#> [1] "png"
#> 
#> 
#> 
#> $providers_details$HERE$variants$trafficFlow
#> $providers_details$HERE$variants$trafficFlow$options
#> $providers_details$HERE$variants$trafficFlow$options$base
#> [1] "traffic"
#> 
#> $providers_details$HERE$variants$trafficFlow$options$type
#> [1] "flowtile"
#> 
#> 
#> 
#> $providers_details$HERE$variants$carnavDayGrey
#> [1] "carnav.day.grey"
#> 
#> $providers_details$HERE$variants$hybridDay
#> $providers_details$HERE$variants$hybridDay$options
#> $providers_details$HERE$variants$hybridDay$options$base
#> [1] "aerial"
#> 
#> $providers_details$HERE$variants$hybridDay$options$variant
#> [1] "hybrid.day"
#> 
#> 
#> 
#> $providers_details$HERE$variants$hybridDayMobile
#> $providers_details$HERE$variants$hybridDayMobile$options
#> $providers_details$HERE$variants$hybridDayMobile$options$base
#> [1] "aerial"
#> 
#> $providers_details$HERE$variants$hybridDayMobile$options$variant
#> [1] "hybrid.day.mobile"
#> 
#> 
#> 
#> $providers_details$HERE$variants$hybridDayTransit
#> $providers_details$HERE$variants$hybridDayTransit$options
#> $providers_details$HERE$variants$hybridDayTransit$options$base
#> [1] "aerial"
#> 
#> $providers_details$HERE$variants$hybridDayTransit$options$variant
#> [1] "hybrid.day.transit"
#> 
#> 
#> 
#> $providers_details$HERE$variants$hybridDayGrey
#> $providers_details$HERE$variants$hybridDayGrey$options
#> $providers_details$HERE$variants$hybridDayGrey$options$base
#> [1] "aerial"
#> 
#> $providers_details$HERE$variants$hybridDayGrey$options$variant
#> [1] "hybrid.grey.day"
#> 
#> 
#> 
#> $providers_details$HERE$variants$pedestrianDay
#> [1] "pedestrian.day"
#> 
#> $providers_details$HERE$variants$pedestrianNight
#> [1] "pedestrian.night"
#> 
#> $providers_details$HERE$variants$satelliteDay
#> $providers_details$HERE$variants$satelliteDay$options
#> $providers_details$HERE$variants$satelliteDay$options$base
#> [1] "aerial"
#> 
#> $providers_details$HERE$variants$satelliteDay$options$variant
#> [1] "satellite.day"
#> 
#> 
#> 
#> $providers_details$HERE$variants$terrainDay
#> $providers_details$HERE$variants$terrainDay$options
#> $providers_details$HERE$variants$terrainDay$options$base
#> [1] "aerial"
#> 
#> $providers_details$HERE$variants$terrainDay$options$variant
#> [1] "terrain.day"
#> 
#> 
#> 
#> $providers_details$HERE$variants$terrainDayMobile
#> $providers_details$HERE$variants$terrainDayMobile$options
#> $providers_details$HERE$variants$terrainDayMobile$options$base
#> [1] "aerial"
#> 
#> $providers_details$HERE$variants$terrainDayMobile$options$variant
#> [1] "terrain.day.mobile"
#> 
#> 
#> 
#> 
#> 
#> $providers_details$FreeMapSK
#> $providers_details$FreeMapSK$url
#> [1] "http://t{s}.freemap.sk/T/{z}/{x}/{y}.jpeg"
#> 
#> $providers_details$FreeMapSK$options
#> $providers_details$FreeMapSK$options$minZoom
#> [1] 8
#> 
#> $providers_details$FreeMapSK$options$maxZoom
#> [1] 16
#> 
#> $providers_details$FreeMapSK$options$subdomains
#> [1] "1234"
#> 
#> $providers_details$FreeMapSK$options$bounds
#>          [,1]     [,2]
#> [1,] 47.20464 15.99609
#> [2,] 49.83090 22.57690
#> 
#> $providers_details$FreeMapSK$options$attribution
#> [1] "{attribution.OpenStreetMap}, vizualization CC-By-SA 2.0 <a href=\"http://freemap.sk\">Freemap.sk</a>"
#> 
#> 
#> 
#> $providers_details$MtbMap
#> $providers_details$MtbMap$url
#> [1] "http://tile.mtbmap.cz/mtbmap_tiles/{z}/{x}/{y}.png"
#> 
#> $providers_details$MtbMap$options
#> $providers_details$MtbMap$options$attribution
#> [1] "{attribution.OpenStreetMap} &amp; USGS"
#> 
#> 
#> 
#> $providers_details$CartoDB
#> $providers_details$CartoDB$url
#> [1] "https://{s}.basemaps.cartocdn.com/{variant}/{z}/{x}/{y}{r}.png"
#> 
#> $providers_details$CartoDB$options
#> $providers_details$CartoDB$options$attribution
#> [1] "{attribution.OpenStreetMap} &copy; <a href=\"https://carto.com/attributions\">CARTO</a>"
#> 
#> $providers_details$CartoDB$options$subdomains
#> [1] "abcd"
#> 
#> $providers_details$CartoDB$options$maxZoom
#> [1] 19
#> 
#> $providers_details$CartoDB$options$variant
#> [1] "light_all"
#> 
#> 
#> $providers_details$CartoDB$variants
#> $providers_details$CartoDB$variants$Positron
#> [1] "light_all"
#> 
#> $providers_details$CartoDB$variants$PositronNoLabels
#> [1] "light_nolabels"
#> 
#> $providers_details$CartoDB$variants$PositronOnlyLabels
#> [1] "light_only_labels"
#> 
#> $providers_details$CartoDB$variants$DarkMatter
#> [1] "dark_all"
#> 
#> $providers_details$CartoDB$variants$DarkMatterNoLabels
#> [1] "dark_nolabels"
#> 
#> $providers_details$CartoDB$variants$DarkMatterOnlyLabels
#> [1] "dark_only_labels"
#> 
#> $providers_details$CartoDB$variants$Voyager
#> [1] "rastertiles/voyager"
#> 
#> $providers_details$CartoDB$variants$VoyagerNoLabels
#> [1] "rastertiles/voyager_nolabels"
#> 
#> $providers_details$CartoDB$variants$VoyagerOnlyLabels
#> [1] "rastertiles/voyager_only_labels"
#> 
#> $providers_details$CartoDB$variants$VoyagerLabelsUnder
#> [1] "rastertiles/voyager_labels_under"
#> 
#> 
#> 
#> $providers_details$HikeBike
#> $providers_details$HikeBike$url
#> [1] "https://tiles.wmflabs.org/{variant}/{z}/{x}/{y}.png"
#> 
#> $providers_details$HikeBike$options
#> $providers_details$HikeBike$options$maxZoom
#> [1] 19
#> 
#> $providers_details$HikeBike$options$attribution
#> [1] "{attribution.OpenStreetMap}"
#> 
#> $providers_details$HikeBike$options$variant
#> [1] "hikebike"
#> 
#> 
#> $providers_details$HikeBike$variants
#> $providers_details$HikeBike$variants$HikeBike
#> named list()
#> 
#> $providers_details$HikeBike$variants$HillShading
#> $providers_details$HikeBike$variants$HillShading$options
#> $providers_details$HikeBike$variants$HillShading$options$maxZoom
#> [1] 15
#> 
#> $providers_details$HikeBike$variants$HillShading$options$variant
#> [1] "hillshading"
#> 
#> 
#> 
#> 
#> 
#> $providers_details$BasemapAT
#> $providers_details$BasemapAT$url
#> [1] "//maps{s}.wien.gv.at/basemap/{variant}/normal/google3857/{z}/{y}/{x}.{format}"
#> 
#> $providers_details$BasemapAT$options
#> $providers_details$BasemapAT$options$maxZoom
#> [1] 19
#> 
#> $providers_details$BasemapAT$options$attribution
#> [1] "Datenquelle: <a href=\"https://www.basemap.at\">basemap.at</a>"
#> 
#> $providers_details$BasemapAT$options$subdomains
#> [1] ""  "1" "2" "3" "4"
#> 
#> $providers_details$BasemapAT$options$format
#> [1] "png"
#> 
#> $providers_details$BasemapAT$options$bounds
#>          [,1]      [,2]
#> [1,] 46.35877  8.782379
#> [2,] 49.03787 17.189532
#> 
#> $providers_details$BasemapAT$options$variant
#> [1] "geolandbasemap"
#> 
#> 
#> $providers_details$BasemapAT$variants
#> $providers_details$BasemapAT$variants$basemap
#> $providers_details$BasemapAT$variants$basemap$options
#> $providers_details$BasemapAT$variants$basemap$options$maxZoom
#> [1] 20
#> 
#> $providers_details$BasemapAT$variants$basemap$options$variant
#> [1] "geolandbasemap"
#> 
#> 
#> 
#> $providers_details$BasemapAT$variants$grau
#> [1] "bmapgrau"
#> 
#> $providers_details$BasemapAT$variants$overlay
#> [1] "bmapoverlay"
#> 
#> $providers_details$BasemapAT$variants$highdpi
#> $providers_details$BasemapAT$variants$highdpi$options
#> $providers_details$BasemapAT$variants$highdpi$options$variant
#> [1] "bmaphidpi"
#> 
#> $providers_details$BasemapAT$variants$highdpi$options$format
#> [1] "jpeg"
#> 
#> 
#> 
#> $providers_details$BasemapAT$variants$orthofoto
#> $providers_details$BasemapAT$variants$orthofoto$options
#> $providers_details$BasemapAT$variants$orthofoto$options$maxZoom
#> [1] 20
#> 
#> $providers_details$BasemapAT$variants$orthofoto$options$variant
#> [1] "bmaporthofoto30cm"
#> 
#> $providers_details$BasemapAT$variants$orthofoto$options$format
#> [1] "jpeg"
#> 
#> 
#> 
#> 
#> 
#> $providers_details$nlmaps
#> $providers_details$nlmaps$url
#> [1] "//geodata.nationaalgeoregister.nl/tiles/service/wmts/{variant}/EPSG:3857/{z}/{x}/{y}.png"
#> 
#> $providers_details$nlmaps$options
#> $providers_details$nlmaps$options$minZoom
#> [1] 6
#> 
#> $providers_details$nlmaps$options$maxZoom
#> [1] 19
#> 
#> $providers_details$nlmaps$options$bounds
#>      [,1] [,2]
#> [1,] 50.5 3.25
#> [2,] 54.0 7.60
#> 
#> $providers_details$nlmaps$options$attribution
#> [1] "Kaartgegevens &copy; <a href=\"kadaster.nl\">Kadaster</a>"
#> 
#> 
#> $providers_details$nlmaps$variants
#> $providers_details$nlmaps$variants$standaard
#> [1] "brtachtergrondkaart"
#> 
#> $providers_details$nlmaps$variants$pastel
#> [1] "brtachtergrondkaartpastel"
#> 
#> $providers_details$nlmaps$variants$grijs
#> [1] "brtachtergrondkaartgrijs"
#> 
#> $providers_details$nlmaps$variants$luchtfoto
#> $providers_details$nlmaps$variants$luchtfoto$url
#> [1] "//geodata.nationaalgeoregister.nl/luchtfoto/rgb/wmts/1.0.0/2016_ortho25/EPSG:3857/{z}/{x}/{y}.png"
#> 
#> 
#> 
#> 
#> $providers_details$NASAGIBS
#> $providers_details$NASAGIBS$url
#> [1] "https://map1.vis.earthdata.nasa.gov/wmts-webmerc/{variant}/default/{time}/{tilematrixset}{maxZoom}/{z}/{y}/{x}.{format}"
#> 
#> $providers_details$NASAGIBS$options
#> $providers_details$NASAGIBS$options$attribution
#> [1] "Imagery provided by services from the Global Imagery Browse Services (GIBS), operated by the NASA/GSFC/Earth Science Data and Information System (<a href=\"https://earthdata.nasa.gov\">ESDIS</a>) with funding provided by NASA/HQ."
#> 
#> $providers_details$NASAGIBS$options$bounds
#>           [,1] [,2]
#> [1,] -85.05113 -180
#> [2,]  85.05113  180
#> 
#> $providers_details$NASAGIBS$options$minZoom
#> [1] 1
#> 
#> $providers_details$NASAGIBS$options$maxZoom
#> [1] 9
#> 
#> $providers_details$NASAGIBS$options$format
#> [1] "jpg"
#> 
#> $providers_details$NASAGIBS$options$time
#> [1] ""
#> 
#> $providers_details$NASAGIBS$options$tilematrixset
#> [1] "GoogleMapsCompatible_Level"
#> 
#> 
#> $providers_details$NASAGIBS$variants
#> $providers_details$NASAGIBS$variants$ModisTerraTrueColorCR
#> [1] "MODIS_Terra_CorrectedReflectance_TrueColor"
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraBands367CR
#> [1] "MODIS_Terra_CorrectedReflectance_Bands367"
#> 
#> $providers_details$NASAGIBS$variants$ViirsEarthAtNight2012
#> $providers_details$NASAGIBS$variants$ViirsEarthAtNight2012$options
#> $providers_details$NASAGIBS$variants$ViirsEarthAtNight2012$options$variant
#> [1] "VIIRS_CityLights_2012"
#> 
#> $providers_details$NASAGIBS$variants$ViirsEarthAtNight2012$options$maxZoom
#> [1] 8
#> 
#> 
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraLSTDay
#> $providers_details$NASAGIBS$variants$ModisTerraLSTDay$options
#> $providers_details$NASAGIBS$variants$ModisTerraLSTDay$options$variant
#> [1] "MODIS_Terra_Land_Surface_Temp_Day"
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraLSTDay$options$format
#> [1] "png"
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraLSTDay$options$maxZoom
#> [1] 7
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraLSTDay$options$opacity
#> [1] 0.75
#> 
#> 
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraSnowCover
#> $providers_details$NASAGIBS$variants$ModisTerraSnowCover$options
#> $providers_details$NASAGIBS$variants$ModisTerraSnowCover$options$variant
#> [1] "MODIS_Terra_Snow_Cover"
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraSnowCover$options$format
#> [1] "png"
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraSnowCover$options$maxZoom
#> [1] 8
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraSnowCover$options$opacity
#> [1] 0.75
#> 
#> 
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraAOD
#> $providers_details$NASAGIBS$variants$ModisTerraAOD$options
#> $providers_details$NASAGIBS$variants$ModisTerraAOD$options$variant
#> [1] "MODIS_Terra_Aerosol"
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraAOD$options$format
#> [1] "png"
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraAOD$options$maxZoom
#> [1] 6
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraAOD$options$opacity
#> [1] 0.75
#> 
#> 
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraChlorophyll
#> $providers_details$NASAGIBS$variants$ModisTerraChlorophyll$options
#> $providers_details$NASAGIBS$variants$ModisTerraChlorophyll$options$variant
#> [1] "MODIS_Terra_Chlorophyll_A"
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraChlorophyll$options$format
#> [1] "png"
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraChlorophyll$options$maxZoom
#> [1] 7
#> 
#> $providers_details$NASAGIBS$variants$ModisTerraChlorophyll$options$opacity
#> [1] 0.75
#> 
#> 
#> 
#> 
#> 
#> $providers_details$NLS
#> $providers_details$NLS$url
#> [1] "//nls-{s}.tileserver.com/nls/{z}/{x}/{y}.jpg"
#> 
#> $providers_details$NLS$options
#> $providers_details$NLS$options$attribution
#> [1] "<a href=\"http://geo.nls.uk/maps/\">National Library of Scotland Historic Maps</a>"
#> 
#> $providers_details$NLS$options$bounds
#>      [,1] [,2]
#> [1,] 49.6  -12
#> [2,] 61.7    3
#> 
#> $providers_details$NLS$options$minZoom
#> [1] 1
#> 
#> $providers_details$NLS$options$maxZoom
#> [1] 18
#> 
#> $providers_details$NLS$options$subdomains
#> [1] "0123"
#> 
#> 
#> 
#> $providers_details$JusticeMap
#> $providers_details$JusticeMap$url
#> [1] "http://www.justicemap.org/tile/{size}/{variant}/{z}/{x}/{y}.png"
#> 
#> $providers_details$JusticeMap$options
#> $providers_details$JusticeMap$options$attribution
#> [1] "<a href=\"http://www.justicemap.org/terms.php\">Justice Map</a>"
#> 
#> $providers_details$JusticeMap$options$size
#> [1] "county"
#> 
#> $providers_details$JusticeMap$options$bounds
#>      [,1] [,2]
#> [1,]   14 -180
#> [2,]   72  -56
#> 
#> 
#> $providers_details$JusticeMap$variants
#> $providers_details$JusticeMap$variants$income
#> [1] "income"
#> 
#> $providers_details$JusticeMap$variants$americanIndian
#> [1] "indian"
#> 
#> $providers_details$JusticeMap$variants$asian
#> [1] "asian"
#> 
#> $providers_details$JusticeMap$variants$black
#> [1] "black"
#> 
#> $providers_details$JusticeMap$variants$hispanic
#> [1] "hispanic"
#> 
#> $providers_details$JusticeMap$variants$multi
#> [1] "multi"
#> 
#> $providers_details$JusticeMap$variants$nonWhite
#> [1] "nonwhite"
#> 
#> $providers_details$JusticeMap$variants$white
#> [1] "white"
#> 
#> $providers_details$JusticeMap$variants$plurality
#> [1] "plural"
#> 
#> 
#> 
#> $providers_details$Wikimedia
#> $providers_details$Wikimedia$url
#> [1] "https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}{r}.png"
#> 
#> $providers_details$Wikimedia$options
#> $providers_details$Wikimedia$options$attribution
#> [1] "<a href=\"https://wikimediafoundation.org/wiki/Maps_Terms_of_Use\">Wikimedia</a>"
#> 
#> $providers_details$Wikimedia$options$minZoom
#> [1] 1
#> 
#> $providers_details$Wikimedia$options$maxZoom
#> [1] 19
#> 
#> 
#> 
#> $providers_details$GeoportailFrance
#> $providers_details$GeoportailFrance$url
#> [1] "https://wxs.ign.fr/{apikey}/geoportail/wmts?REQUEST=GetTile&SERVICE=WMTS&VERSION=1.0.0&STYLE={style}&TILEMATRIXSET=PM&FORMAT={format}&LAYER={variant}&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}"
#> 
#> $providers_details$GeoportailFrance$options
#> $providers_details$GeoportailFrance$options$attribution
#> [1] "<a target=\"_blank\" href=\"https://www.geoportail.gouv.fr/\">Geoportail France</a>"
#> 
#> $providers_details$GeoportailFrance$options$bounds
#>      [,1] [,2]
#> [1,]  -75 -180
#> [2,]   81  180
#> 
#> $providers_details$GeoportailFrance$options$minZoom
#> [1] 2
#> 
#> $providers_details$GeoportailFrance$options$maxZoom
#> [1] 18
#> 
#> $providers_details$GeoportailFrance$options$apikey
#> [1] "choisirgeoportail"
#> 
#> $providers_details$GeoportailFrance$options$format
#> [1] "image/jpeg"
#> 
#> $providers_details$GeoportailFrance$options$style
#> [1] "normal"
#> 
#> $providers_details$GeoportailFrance$options$variant
#> [1] "GEOGRAPHICALGRIDSYSTEMS.MAPS.SCAN-EXPRESS.STANDARD"
#> 
#> 
#> $providers_details$GeoportailFrance$variants
#> $providers_details$GeoportailFrance$variants$parcels
#> $providers_details$GeoportailFrance$variants$parcels$options
#> $providers_details$GeoportailFrance$variants$parcels$options$variant
#> [1] "CADASTRALPARCELS.PARCELS"
#> 
#> $providers_details$GeoportailFrance$variants$parcels$options$maxZoom
#> [1] 20
#> 
#> $providers_details$GeoportailFrance$variants$parcels$options$style
#> [1] "bdparcellaire"
#> 
#> $providers_details$GeoportailFrance$variants$parcels$options$format
#> [1] "image/png"
#> 
#> 
#> 
#> $providers_details$GeoportailFrance$variants$ignMaps
#> [1] "GEOGRAPHICALGRIDSYSTEMS.MAPS"
#> 
#> $providers_details$GeoportailFrance$variants$maps
#> [1] "GEOGRAPHICALGRIDSYSTEMS.MAPS.SCAN-EXPRESS.STANDARD"
#> 
#> $providers_details$GeoportailFrance$variants$orthos
#> $providers_details$GeoportailFrance$variants$orthos$options
#> $providers_details$GeoportailFrance$variants$orthos$options$maxZoom
#> [1] 19
#> 
#> $providers_details$GeoportailFrance$variants$orthos$options$variant
#> [1] "ORTHOIMAGERY.ORTHOPHOTOS"
#> 
#> 
#> 
#> 
#> 
#> $providers_details$OneMapSG
#> $providers_details$OneMapSG$url
#> [1] "//maps-{s}.onemap.sg/v3/{variant}/{z}/{x}/{y}.png"
#> 
#> $providers_details$OneMapSG$options
#> $providers_details$OneMapSG$options$variant
#> [1] "Default"
#> 
#> $providers_details$OneMapSG$options$minZoom
#> [1] 11
#> 
#> $providers_details$OneMapSG$options$maxZoom
#> [1] 18
#> 
#> $providers_details$OneMapSG$options$bounds
#>         [,1]     [,2]
#> [1,] 1.56073 104.1148
#> [2,] 1.16000 103.5020
#> 
#> $providers_details$OneMapSG$options$attribution
#> [1] "<img src=\"https://docs.onemap.sg/maps/images/oneMap64-01.png\" style=\"height:20px;width:20px;\"/> New OneMap | Map data &copy; contributors, <a href=\"http://SLA.gov.sg\">Singapore Land Authority</a>"
#> 
#> 
#> $providers_details$OneMapSG$variants
#> $providers_details$OneMapSG$variants$Default
#> [1] "Default"
#> 
#> $providers_details$OneMapSG$variants$Night
#> [1] "Night"
#> 
#> $providers_details$OneMapSG$variants$Original
#> [1] "Original"
#> 
#> $providers_details$OneMapSG$variants$Grey
#> [1] "Grey"
#> 
#> $providers_details$OneMapSG$variants$LandLot
#> [1] "LandLot"
#> 
#> 
#> 
#> 
#> $src
#> [1] "(function (root, factory) {\n\tif (typeof define === 'function' && define.amd) {\n\t\t// AMD. Register as an anonymous module.\n\t\tdefine(['leaflet'], factory);\n\t} else if (typeof modules === 'object' && module.exports) {\n\t\t// define a Common JS module that relies on 'leaflet'\n\t\tmodule.exports = factory(require('leaflet'));\n\t} else {\n\t\t// Assume Leaflet is loaded into global object L already\n\t\tfactory(L);\n\t}\n}(this, function (L) {\n\t'use strict';\n\n\tL.TileLayer.Provider = L.TileLayer.extend({\n\t\tinitialize: function (arg, options) {\n\t\t\tvar providers = L.TileLayer.Provider.providers;\n\n\t\t\tvar parts = arg.split('.');\n\n\t\t\tvar providerName = parts[0];\n\t\t\tvar variantName = parts[1];\n\n\t\t\tif (!providers[providerName]) {\n\t\t\t\tthrow 'No such provider (' + providerName + ')';\n\t\t\t}\n\n\t\t\tvar provider = {\n\t\t\t\turl: providers[providerName].url,\n\t\t\t\toptions: providers[providerName].options\n\t\t\t};\n\n\t\t\t// overwrite values in provider from variant.\n\t\t\tif (variantName && 'variants' in providers[providerName]) {\n\t\t\t\tif (!(variantName in providers[providerName].variants)) {\n\t\t\t\t\tthrow 'No such variant of ' + providerName + ' (' + variantName + ')';\n\t\t\t\t}\n\t\t\t\tvar variant = providers[providerName].variants[variantName];\n\t\t\t\tvar variantOptions;\n\t\t\t\tif (typeof variant === 'string') {\n\t\t\t\t\tvariantOptions = {\n\t\t\t\t\t\tvariant: variant\n\t\t\t\t\t};\n\t\t\t\t} else {\n\t\t\t\t\tvariantOptions = variant.options;\n\t\t\t\t}\n\t\t\t\tprovider = {\n\t\t\t\t\turl: variant.url || provider.url,\n\t\t\t\t\toptions: L.Util.extend({}, provider.options, variantOptions)\n\t\t\t\t};\n\t\t\t}\n\n\t\t\t// replace attribution placeholders with their values from toplevel provider attribution,\n\t\t\t// recursively\n\t\t\tvar attributionReplacer = function (attr) {\n\t\t\t\tif (attr.indexOf('{attribution.') === -1) {\n\t\t\t\t\treturn attr;\n\t\t\t\t}\n\t\t\t\treturn attr.replace(/\\{attribution.(\\w*)\\}/g,\n\t\t\t\t\tfunction (match, attributionName) {\n\t\t\t\t\t\treturn attributionReplacer(providers[attributionName].options.attribution);\n\t\t\t\t\t}\n\t\t\t\t);\n\t\t\t};\n\t\t\tprovider.options.attribution = attributionReplacer(provider.options.attribution);\n\n\t\t\t// Compute final options combining provider options with any user overrides\n\t\t\tvar layerOpts = L.Util.extend({}, provider.options, options);\n\t\t\tL.TileLayer.prototype.initialize.call(this, provider.url, layerOpts);\n\t\t}\n\t});\n\n\t/**\n\t * Definition of providers.\n\t * see http://leafletjs.com/reference.html#tilelayer for options in the options map.\n\t */\n\n\tL.TileLayer.Provider.providers = {\n\t\tOpenStreetMap: {\n\t\t\turl: '//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution:\n\t\t\t\t\t'&copy; <a href=\"https://www.openstreetmap.org/copyright\">OpenStreetMap</a> contributors'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tMapnik: {},\n\t\t\t\tDE: {\n\t\t\t\t\turl: '//{s}.tile.openstreetmap.de/tiles/osmde/{z}/{x}/{y}.png',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 18\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tCH: {\n\t\t\t\t\turl: '//tile.osm.ch/switzerland/{z}/{x}/{y}.png',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 18,\n\t\t\t\t\t\tbounds: [[45, 5], [48, 11]]\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tFrance: {\n\t\t\t\t\turl: '//{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 20,\n\t\t\t\t\t\tattribution: '&copy; Openstreetmap France | {attribution.OpenStreetMap}'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tHOT: {\n\t\t\t\t\turl: '//{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}, ' +\n\t\t\t\t\t\t\t'Tiles style by <a href=\"https://www.hotosm.org/\" target=\"_blank\">Humanitarian OpenStreetMap Team</a> ' +\n\t\t\t\t\t\t\t'hosted by <a href=\"https://openstreetmap.fr/\" target=\"_blank\">OpenStreetMap France</a>'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tBZH: {\n\t\t\t\t\turl: '//tile.openstreetmap.bzh/br/{z}/{x}/{y}.png',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution: '{attribution.OpenStreetMap}, Tiles courtesy of <a href=\"http://www.openstreetmap.bzh/\" target=\"_blank\">Breton OpenStreetMap Team</a>',\n\t\t\t\t\t\tbounds: [[46.2, -5.5], [50, 0.7]]\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tOpenSeaMap: {\n\t\t\turl: '//tiles.openseamap.org/seamark/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tattribution: 'Map data: &copy; <a href=\"http://www.openseamap.org\">OpenSeaMap</a> contributors'\n\t\t\t}\n\t\t},\n\t\tOpenPtMap: {\n\t\t\turl: 'http://openptmap.org/tiles/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 17,\n\t\t\t\tattribution: 'Map data: &copy; <a href=\"http://www.openptmap.org\">OpenPtMap</a> contributors'\n\t\t\t}\n\t\t},\n\t\tOpenTopoMap: {\n\t\t\turl: 'https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 17,\n\t\t\t\tattribution: 'Map data: {attribution.OpenStreetMap}, <a href=\"http://viewfinderpanoramas.org\">SRTM</a> | Map style: &copy; <a href=\"https://opentopomap.org\">OpenTopoMap</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)'\n\t\t\t}\n\t\t},\n\t\tOpenRailwayMap: {\n\t\t\turl: 'https://{s}.tiles.openrailwaymap.org/standard/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution: 'Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://www.OpenRailwayMap.org\">OpenRailwayMap</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)'\n\t\t\t}\n\t\t},\n\t\tOpenFireMap: {\n\t\t\turl: 'http://openfiremap.org/hytiles/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution: 'Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"http://www.openfiremap.org\">OpenFireMap</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)'\n\t\t\t}\n\t\t},\n\t\tSafeCast: {\n\t\t\turl: '//s3.amazonaws.com/te512.safecast.org/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 16,\n\t\t\t\tattribution: 'Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://blog.safecast.org/about/\">SafeCast</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)'\n\t\t\t}\n\t\t},\n\t\tThunderforest: {\n\t\t\turl: 'https://{s}.tile.thunderforest.com/{variant}/{z}/{x}/{y}.png?apikey={apikey}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'&copy; <a href=\"http://www.thunderforest.com/\">Thunderforest</a>, {attribution.OpenStreetMap}',\n\t\t\t\tvariant: 'cycle',\n\t\t\t\tapikey: '<insert your api key here>',\n\t\t\t\tmaxZoom: 22\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tOpenCycleMap: 'cycle',\n\t\t\t\tTransport: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'transport'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tTransportDark: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'transport-dark'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tSpinalMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'spinal-map'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tLandscape: 'landscape',\n\t\t\t\tOutdoors: 'outdoors',\n\t\t\t\tPioneer: 'pioneer',\n\t\t\t\tMobileAtlas: 'mobile-atlas',\n\t\t\t\tNeighbourhood: 'neighbourhood'\n\t\t\t}\n\t\t},\n\t\tOpenMapSurfer: {\n\t\t\turl: 'https://maps.heigit.org/openmapsurfer/tiles/{variant}/webmercator/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tvariant: 'roads',\n\t\t\t\tattribution: 'Imagery from <a href=\"http://giscience.uni-hd.de/\">GIScience Research Group @ University of Heidelberg</a> | Map data '\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tRoads: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'roads',\n\t\t\t\t\t\tattribution: '{attribution.OpenMapSurfer}{attribution.OpenStreetMap}'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tHybrid: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'hybrid',\n\t\t\t\t\t\tattribution: '{attribution.OpenMapSurfer}{attribution.OpenStreetMap}'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tAdminBounds: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'adminb',\n\t\t\t\t\t\tmaxZoom: 18,\n\t\t\t\t\t\tattribution: '{attribution.OpenMapSurfer}{attribution.OpenStreetMap}'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tContourLines: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'asterc',\n\t\t\t\t\t\tmaxZoom: 18,\n\t\t\t\t\t\tminZoom: 13,\n\t\t\t\t\t\tattribution: '{attribution.OpenMapSurfer} <a href=\"https://lpdaac.usgs.gov/products/aster_policies\">ASTER GDEM</a>'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tHillshade: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'asterh',\n\t\t\t\t\t\tmaxZoom: 18,\n\t\t\t\t\t\tattribution: '{attribution.OpenMapSurfer} <a href=\"https://lpdaac.usgs.gov/products/aster_policies\">ASTER GDEM</a>, <a href=\"http://srtm.csi.cgiar.org/\">SRTM</a>'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tElementsAtRisk: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'elements_at_risk',\n\t\t\t\t\t\tattribution: '{attribution.OpenMapSurfer}{attribution.OpenStreetMap}'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tHydda: {\n\t\t\turl: '//{s}.tile.openstreetmap.se/hydda/{variant}/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 18,\n\t\t\t\tvariant: 'full',\n\t\t\t\tattribution: 'Tiles courtesy of <a href=\"http://openstreetmap.se/\" target=\"_blank\">OpenStreetMap Sweden</a> &mdash; Map data {attribution.OpenStreetMap}'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tFull: 'full',\n\t\t\t\tBase: 'base',\n\t\t\t\tRoadsAndLabels: 'roads_and_labels'\n\t\t\t}\n\t\t},\n\t\tMapBox: {\n\t\t\turl: 'https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}{r}.png?access_token={accessToken}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'<a href=\"https://www.mapbox.com/about/maps/\" target=\"_blank\">&copy; Mapbox</a> ' +\n\t\t\t\t\t'{attribution.OpenStreetMap} ' +\n\t\t\t\t\t'<a href=\"https://www.mapbox.com/map-feedback/\" target=\"_blank\">Improve this map</a>',\n\t\t\t\tsubdomains: 'abcd',\n\t\t\t\tid: 'mapbox.streets',\n\t\t\t\taccessToken: '<insert your access token here>',\n\t\t\t}\n\t\t},\n\t\tStamen: {\n\t\t\turl: '//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}{r}.{ext}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'Map tiles by <a href=\"http://stamen.com\">Stamen Design</a>, ' +\n\t\t\t\t\t'<a href=\"http://creativecommons.org/licenses/by/3.0\">CC BY 3.0</a> &mdash; ' +\n\t\t\t\t\t'Map data {attribution.OpenStreetMap}',\n\t\t\t\tsubdomains: 'abcd',\n\t\t\t\tminZoom: 0,\n\t\t\t\tmaxZoom: 20,\n\t\t\t\tvariant: 'toner',\n\t\t\t\text: 'png'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tToner: 'toner',\n\t\t\t\tTonerBackground: 'toner-background',\n\t\t\t\tTonerHybrid: 'toner-hybrid',\n\t\t\t\tTonerLines: 'toner-lines',\n\t\t\t\tTonerLabels: 'toner-labels',\n\t\t\t\tTonerLite: 'toner-lite',\n\t\t\t\tWatercolor: {\n\t\t\t\t\turl: '//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}.{ext}',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'watercolor',\n\t\t\t\t\t\text: 'jpg',\n\t\t\t\t\t\tminZoom: 1,\n\t\t\t\t\t\tmaxZoom: 16\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tTerrain: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'terrain',\n\t\t\t\t\t\tminZoom: 0,\n\t\t\t\t\t\tmaxZoom: 18\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tTerrainBackground: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'terrain-background',\n\t\t\t\t\t\tminZoom: 0,\n\t\t\t\t\t\tmaxZoom: 18\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tTopOSMRelief: {\n\t\t\t\t\turl: '//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}.{ext}',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'toposm-color-relief',\n\t\t\t\t\t\text: 'jpg',\n\t\t\t\t\t\tbounds: [[22, -132], [51, -56]]\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tTopOSMFeatures: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'toposm-features',\n\t\t\t\t\t\tbounds: [[22, -132], [51, -56]],\n\t\t\t\t\t\topacity: 0.9\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tEsri: {\n\t\t\turl: '//server.arcgisonline.com/ArcGIS/rest/services/{variant}/MapServer/tile/{z}/{y}/{x}',\n\t\t\toptions: {\n\t\t\t\tvariant: 'World_Street_Map',\n\t\t\t\tattribution: 'Tiles &copy; Esri'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tWorldStreetMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'{attribution.Esri} &mdash; ' +\n\t\t\t\t\t\t\t'Source: Esri, DeLorme, NAVTEQ, USGS, Intermap, iPC, NRCAN, Esri Japan, METI, Esri China (Hong Kong), Esri (Thailand), TomTom, 2012'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tDeLorme: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'Specialty/DeLorme_World_Base_Map',\n\t\t\t\t\t\tminZoom: 1,\n\t\t\t\t\t\tmaxZoom: 11,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; Copyright: &copy;2012 DeLorme'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldTopoMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'World_Topo_Map',\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'{attribution.Esri} &mdash; ' +\n\t\t\t\t\t\t\t'Esri, DeLorme, NAVTEQ, TomTom, Intermap, iPC, USGS, FAO, NPS, NRCAN, GeoBase, Kadaster NL, Ordnance Survey, Esri Japan, METI, Esri China (Hong Kong), and the GIS User Community'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldImagery: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'World_Imagery',\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'{attribution.Esri} &mdash; ' +\n\t\t\t\t\t\t\t'Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldTerrain: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'World_Terrain_Base',\n\t\t\t\t\t\tmaxZoom: 13,\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'{attribution.Esri} &mdash; ' +\n\t\t\t\t\t\t\t'Source: USGS, Esri, TANA, DeLorme, and NPS'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldShadedRelief: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'World_Shaded_Relief',\n\t\t\t\t\t\tmaxZoom: 13,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; Source: Esri'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldPhysical: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'World_Physical_Map',\n\t\t\t\t\t\tmaxZoom: 8,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; Source: US National Park Service'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tOceanBasemap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'Ocean_Basemap',\n\t\t\t\t\t\tmaxZoom: 13,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; Sources: GEBCO, NOAA, CHS, OSU, UNH, CSUMB, National Geographic, DeLorme, NAVTEQ, and Esri'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tNatGeoWorldMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'NatGeo_World_Map',\n\t\t\t\t\t\tmaxZoom: 16,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; National Geographic, Esri, DeLorme, NAVTEQ, UNEP-WCMC, USGS, NASA, ESA, METI, NRCAN, GEBCO, NOAA, iPC'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldGrayCanvas: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'Canvas/World_Light_Gray_Base',\n\t\t\t\t\t\tmaxZoom: 16,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; Esri, DeLorme, NAVTEQ'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tOpenWeatherMap: {\n\t\t\turl: 'http://{s}.tile.openweathermap.org/map/{variant}/{z}/{x}/{y}.png?appid={apiKey}',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution: 'Map data &copy; <a href=\"http://openweathermap.org\">OpenWeatherMap</a>',\n\t\t\t\tapiKey:'<insert your api key here>',\n\t\t\t\topacity: 0.5\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tClouds: 'clouds',\n\t\t\t\tCloudsClassic: 'clouds_cls',\n\t\t\t\tPrecipitation: 'precipitation',\n\t\t\t\tPrecipitationClassic: 'precipitation_cls',\n\t\t\t\tRain: 'rain',\n\t\t\t\tRainClassic: 'rain_cls',\n\t\t\t\tPressure: 'pressure',\n\t\t\t\tPressureContour: 'pressure_cntr',\n\t\t\t\tWind: 'wind',\n\t\t\t\tTemperature: 'temp',\n\t\t\t\tSnow: 'snow'\n\t\t\t}\n\t\t},\n\t\tHERE: {\n\t\t\t/*\n\t\t\t * HERE maps, formerly Nokia maps.\n\t\t\t * These basemaps are free, but you need an API key. Please sign up at\n\t\t\t * https://developer.here.com/plans\n\t\t\t */\n\t\t\turl:\n\t\t\t\t'https://{s}.{base}.maps.api.here.com/maptile/2.1/' +\n\t\t\t\t'{type}/{mapID}/{variant}/{z}/{x}/{y}/{size}/{format}?' +\n\t\t\t\t'app_id={app_id}&app_code={app_code}&lg={language}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'Map &copy; 1987-' + new Date().getFullYear() + ' <a href=\"http://developer.here.com\">HERE</a>',\n\t\t\t\tsubdomains: '1234',\n\t\t\t\tmapID: 'newest',\n\t\t\t\t'app_id': '<insert your app_id here>',\n\t\t\t\t'app_code': '<insert your app_code here>',\n\t\t\t\tbase: 'base',\n\t\t\t\tvariant: 'normal.day',\n\t\t\t\tmaxZoom: 20,\n\t\t\t\ttype: 'maptile',\n\t\t\t\tlanguage: 'eng',\n\t\t\t\tformat: 'png8',\n\t\t\t\tsize: '256'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tnormalDay: 'normal.day',\n\t\t\t\tnormalDayCustom: 'normal.day.custom',\n\t\t\t\tnormalDayGrey: 'normal.day.grey',\n\t\t\t\tnormalDayMobile: 'normal.day.mobile',\n\t\t\t\tnormalDayGreyMobile: 'normal.day.grey.mobile',\n\t\t\t\tnormalDayTransit: 'normal.day.transit',\n\t\t\t\tnormalDayTransitMobile: 'normal.day.transit.mobile',\n\t\t\t\tnormalNight: 'normal.night',\n\t\t\t\tnormalNightMobile: 'normal.night.mobile',\n\t\t\t\tnormalNightGrey: 'normal.night.grey',\n\t\t\t\tnormalNightGreyMobile: 'normal.night.grey.mobile',\n\t\t\t\tnormalNightTransit: 'normal.night.transit',\n\t\t\t\tnormalNightTransitMobile: 'normal.night.transit.mobile',\n\t\t\t\treducedDay: 'reduced.day',\n\t\t\t\treducedNight: 'reduced.night',\n\t\t\t\tbasicMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\ttype: 'basetile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tmapLabels: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\ttype: 'labeltile',\n\t\t\t\t\t\tformat: 'png'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\ttrafficFlow: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'traffic',\n\t\t\t\t\t\ttype: 'flowtile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tcarnavDayGrey: 'carnav.day.grey',\n\t\t\t\thybridDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thybridDayMobile: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.day.mobile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thybridDayTransit: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.day.transit'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thybridDayGrey: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.grey.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tpedestrianDay: 'pedestrian.day',\n\t\t\t\tpedestrianNight: 'pedestrian.night',\n\t\t\t\tsatelliteDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'satellite.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tterrainDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'terrain.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tterrainDayMobile: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'terrain.day.mobile'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tFreeMapSK: {\n\t\t\turl: 'http://t{s}.freemap.sk/T/{z}/{x}/{y}.jpeg',\n\t\t\toptions: {\n\t\t\t\tminZoom: 8,\n\t\t\t\tmaxZoom: 16,\n\t\t\t\tsubdomains: '1234',\n\t\t\t\tbounds: [[47.204642, 15.996093], [49.830896, 22.576904]],\n\t\t\t\tattribution:\n\t\t\t\t\t'{attribution.OpenStreetMap}, vizualization CC-By-SA 2.0 <a href=\"http://freemap.sk\">Freemap.sk</a>'\n\t\t\t}\n\t\t},\n\t\tMtbMap: {\n\t\t\turl: 'http://tile.mtbmap.cz/mtbmap_tiles/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'{attribution.OpenStreetMap} &amp; USGS'\n\t\t\t}\n\t\t},\n\t\tCartoDB: {\n\t\t\turl: 'https://{s}.basemaps.cartocdn.com/{variant}/{z}/{x}/{y}{r}.png',\n\t\t\toptions: {\n\t\t\t\tattribution: '{attribution.OpenStreetMap} &copy; <a href=\"https://carto.com/attributions\">CARTO</a>',\n\t\t\t\tsubdomains: 'abcd',\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tvariant: 'light_all'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tPositron: 'light_all',\n\t\t\t\tPositronNoLabels: 'light_nolabels',\n\t\t\t\tPositronOnlyLabels: 'light_only_labels',\n\t\t\t\tDarkMatter: 'dark_all',\n\t\t\t\tDarkMatterNoLabels: 'dark_nolabels',\n\t\t\t\tDarkMatterOnlyLabels: 'dark_only_labels',\n\t\t\t\tVoyager: 'rastertiles/voyager',\n\t\t\t\tVoyagerNoLabels: 'rastertiles/voyager_nolabels',\n\t\t\t\tVoyagerOnlyLabels: 'rastertiles/voyager_only_labels',\n\t\t\t\tVoyagerLabelsUnder: 'rastertiles/voyager_labels_under'\n\t\t\t}\n\t\t},\n\t\tHikeBike: {\n\t\t\turl: 'https://tiles.wmflabs.org/{variant}/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution: '{attribution.OpenStreetMap}',\n\t\t\t\tvariant: 'hikebike'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tHikeBike: {},\n\t\t\t\tHillShading: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 15,\n\t\t\t\t\t\tvariant: 'hillshading'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tBasemapAT: {\n\t\t\turl: '//maps{s}.wien.gv.at/basemap/{variant}/normal/google3857/{z}/{y}/{x}.{format}',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution: 'Datenquelle: <a href=\"https://www.basemap.at\">basemap.at</a>',\n\t\t\t\tsubdomains: ['', '1', '2', '3', '4'],\n\t\t\t\tformat: 'png',\n\t\t\t\tbounds: [[46.358770, 8.782379], [49.037872, 17.189532]],\n\t\t\t\tvariant: 'geolandbasemap'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tbasemap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 20, // currently only in Vienna\n\t\t\t\t\t\tvariant: 'geolandbasemap'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tgrau: 'bmapgrau',\n\t\t\t\toverlay: 'bmapoverlay',\n\t\t\t\thighdpi: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'bmaphidpi',\n\t\t\t\t\t\tformat: 'jpeg'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\torthofoto: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 20, // currently only in Vienna\n\t\t\t\t\t\tvariant: 'bmaporthofoto30cm',\n\t\t\t\t\t\tformat: 'jpeg'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tnlmaps: {\n\t\t\turl: '//geodata.nationaalgeoregister.nl/tiles/service/wmts/{variant}/EPSG:3857/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tminZoom: 6,\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tbounds: [[50.5, 3.25], [54, 7.6]],\n\t\t\t\tattribution: 'Kaartgegevens &copy; <a href=\"kadaster.nl\">Kadaster</a>'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\t'standaard': 'brtachtergrondkaart',\n\t\t\t\t'pastel': 'brtachtergrondkaartpastel',\n\t\t\t\t'grijs': 'brtachtergrondkaartgrijs',\n\t\t\t\t'luchtfoto': {\n\t\t\t\t\t'url': '//geodata.nationaalgeoregister.nl/luchtfoto/rgb/wmts/1.0.0/2016_ortho25/EPSG:3857/{z}/{x}/{y}.png',\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tNASAGIBS: {\n\t\t\turl: 'https://map1.vis.earthdata.nasa.gov/wmts-webmerc/{variant}/default/{time}/{tilematrixset}{maxZoom}/{z}/{y}/{x}.{format}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'Imagery provided by services from the Global Imagery Browse Services (GIBS), operated by the NASA/GSFC/Earth Science Data and Information System ' +\n\t\t\t\t\t'(<a href=\"https://earthdata.nasa.gov\">ESDIS</a>) with funding provided by NASA/HQ.',\n\t\t\t\tbounds: [[-85.0511287776, -179.999999975], [85.0511287776, 179.999999975]],\n\t\t\t\tminZoom: 1,\n\t\t\t\tmaxZoom: 9,\n\t\t\t\tformat: 'jpg',\n\t\t\t\ttime: '',\n\t\t\t\ttilematrixset: 'GoogleMapsCompatible_Level'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tModisTerraTrueColorCR: 'MODIS_Terra_CorrectedReflectance_TrueColor',\n\t\t\t\tModisTerraBands367CR: 'MODIS_Terra_CorrectedReflectance_Bands367',\n\t\t\t\tViirsEarthAtNight2012: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'VIIRS_CityLights_2012',\n\t\t\t\t\t\tmaxZoom: 8\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tModisTerraLSTDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'MODIS_Terra_Land_Surface_Temp_Day',\n\t\t\t\t\t\tformat: 'png',\n\t\t\t\t\t\tmaxZoom: 7,\n\t\t\t\t\t\topacity: 0.75\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tModisTerraSnowCover: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'MODIS_Terra_Snow_Cover',\n\t\t\t\t\t\tformat: 'png',\n\t\t\t\t\t\tmaxZoom: 8,\n\t\t\t\t\t\topacity: 0.75\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tModisTerraAOD: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'MODIS_Terra_Aerosol',\n\t\t\t\t\t\tformat: 'png',\n\t\t\t\t\t\tmaxZoom: 6,\n\t\t\t\t\t\topacity: 0.75\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tModisTerraChlorophyll: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'MODIS_Terra_Chlorophyll_A',\n\t\t\t\t\t\tformat: 'png',\n\t\t\t\t\t\tmaxZoom: 7,\n\t\t\t\t\t\topacity: 0.75\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tNLS: {\n\t\t\t// NLS maps are copyright National library of Scotland.\n\t\t\t// http://maps.nls.uk/projects/api/index.html\n\t\t\t// Please contact NLS for anything other than non-commercial low volume usage\n\t\t\t//\n\t\t\t// Map sources: Ordnance Survey 1:1m to 1:63K, 1920s-1940s\n\t\t\t//   z0-9  - 1:1m\n\t\t\t//  z10-11 - quarter inch (1:253440)\n\t\t\t//  z12-18 - one inch (1:63360)\n\t\t\turl: '//nls-{s}.tileserver.com/nls/{z}/{x}/{y}.jpg',\n\t\t\toptions: {\n\t\t\t\tattribution: '<a href=\"http://geo.nls.uk/maps/\">National Library of Scotland Historic Maps</a>',\n\t\t\t\tbounds: [[49.6, -12], [61.7, 3]],\n\t\t\t\tminZoom: 1,\n\t\t\t\tmaxZoom: 18,\n\t\t\t\tsubdomains: '0123',\n\t\t\t}\n\t\t},\n\t\tJusticeMap: {\n\t\t\t// Justice Map (http://www.justicemap.org/)\n\t\t\t// Visualize race and income data for your community, county and country.\n\t\t\t// Includes tools for data journalists, bloggers and community activists.\n\t\t\turl: 'http://www.justicemap.org/tile/{size}/{variant}/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tattribution: '<a href=\"http://www.justicemap.org/terms.php\">Justice Map</a>',\n\t\t\t\t// one of 'county', 'tract', 'block'\n\t\t\t\tsize: 'county',\n\t\t\t\t// Bounds for USA, including Alaska and Hawaii\n\t\t\t\tbounds: [[14, -180], [72, -56]]\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tincome: 'income',\n\t\t\t\tamericanIndian: 'indian',\n\t\t\t\tasian: 'asian',\n\t\t\t\tblack: 'black',\n\t\t\t\thispanic: 'hispanic',\n\t\t\t\tmulti: 'multi',\n\t\t\t\tnonWhite: 'nonwhite',\n\t\t\t\twhite: 'white',\n\t\t\t\tplurality: 'plural'\n\t\t\t}\n\t\t},\n\t\tWikimedia: {\n\t\t\turl: 'https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}{r}.png',\n\t\t\toptions: {\n\t\t\t\tattribution: '<a href=\"https://wikimediafoundation.org/wiki/Maps_Terms_of_Use\">Wikimedia</a>',\n\t\t\t\tminZoom: 1,\n\t\t\t\tmaxZoom: 19\n\t\t\t}\n\t\t},\n\t\tGeoportailFrance: {\n\t\t\turl: 'https://wxs.ign.fr/{apikey}/geoportail/wmts?REQUEST=GetTile&SERVICE=WMTS&VERSION=1.0.0&STYLE={style}&TILEMATRIXSET=PM&FORMAT={format}&LAYER={variant}&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}',\n\t\t\toptions: {\n\t\t\t\tattribution: '<a target=\"_blank\" href=\"https://www.geoportail.gouv.fr/\">Geoportail France</a>',\n\t\t\t\tbounds: [[-75, -180], [81, 180]],\n\t\t\t\tminZoom: 2,\n\t\t\t\tmaxZoom: 18,\n\t\t\t\t// Get your own geoportail apikey here : http://professionnels.ign.fr/ign/contrats/\n\t\t\t\t// NB : 'choisirgeoportail' is a demonstration key that comes with no guarantee\n\t\t\t\tapikey: 'choisirgeoportail',\n\t\t\t\tformat: 'image/jpeg',\n\t\t\t\tstyle : 'normal',\n\t\t\t\tvariant: 'GEOGRAPHICALGRIDSYSTEMS.MAPS.SCAN-EXPRESS.STANDARD'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tparcels: {\n\t\t\t\t\toptions : {\n\t\t\t\t\t\tvariant: 'CADASTRALPARCELS.PARCELS',\n\t\t\t\t\t\tmaxZoom: 20,\n\t\t\t\t\t\tstyle : 'bdparcellaire',\n\t\t\t\t\t\tformat: 'image/png'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tignMaps: 'GEOGRAPHICALGRIDSYSTEMS.MAPS',\n\t\t\t\tmaps: 'GEOGRAPHICALGRIDSYSTEMS.MAPS.SCAN-EXPRESS.STANDARD',\n\t\t\t\torthos: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 19,\n\t\t\t\t\t\tvariant: 'ORTHOIMAGERY.ORTHOPHOTOS'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tOneMapSG: {\n\t\t\turl: '//maps-{s}.onemap.sg/v3/{variant}/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tvariant: 'Default',\n\t\t\t\tminZoom: 11,\n\t\t\t\tmaxZoom: 18,\n\t\t\t\tbounds: [[1.56073, 104.11475], [1.16, 103.502]],\n\t\t\t\tattribution: '<img src=\"https://docs.onemap.sg/maps/images/oneMap64-01.png\" style=\"height:20px;width:20px;\"/> New OneMap | Map data &copy; contributors, <a href=\"http://SLA.gov.sg\">Singapore Land Authority</a>'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tDefault: 'Default',\n\t\t\t\tNight: 'Night',\n\t\t\t\tOriginal: 'Original',\n\t\t\t\tGrey: 'Grey',\n\t\t\t\tLandLot: 'LandLot'\n\t\t\t}\n\t\t}\n\t};\n\n\tL.tileLayer.provider = function (provider, options) {\n\t\treturn new L.TileLayer.Provider(provider, options);\n\t};\n\n\treturn L;\n}));"
#> 
#> attr(,"class")
#> [1] "leaflet_providers"
```

</div>

### Fetch custom providers data, e.g. a previous version

<div style="height:150px; overflow-y: scroll;">

``` r
providers_170 <- get_providers("1.7.0")

# Load custom providers data
use_providers(get_providers("1.7.0"))
```

</div>

Now that `use_providers()` has been called with a custom
`leaflet.providers` object obtained via `get_providers()` (in this case,
a previous version of the data),
[`leaflet`](http://rstudio.github.io/leaflet) will use the custom
providers instead of the default provider data.

Note that the package `V8` is required for `get_providers()`.

### View the loaded (custom) providers data

#### The version number of the source leaflet-providers.js

``` r
providers_loaded()$version_num
#> [1] "1.7.0"
```

#### Supported tile providers

``` r
str(providers_loaded()$providers)
```

<div style="height:150px; overflow-y: scroll;">

    #> List of 155
    #>  $ OpenStreetMap                      : chr "OpenStreetMap"
    #>  $ OpenStreetMap.Mapnik               : chr "OpenStreetMap.Mapnik"
    #>  $ OpenStreetMap.DE                   : chr "OpenStreetMap.DE"
    #>  $ OpenStreetMap.CH                   : chr "OpenStreetMap.CH"
    #>  $ OpenStreetMap.France               : chr "OpenStreetMap.France"
    #>  $ OpenStreetMap.HOT                  : chr "OpenStreetMap.HOT"
    #>  $ OpenStreetMap.BZH                  : chr "OpenStreetMap.BZH"
    #>  $ OpenSeaMap                         : chr "OpenSeaMap"
    #>  $ OpenPtMap                          : chr "OpenPtMap"
    #>  $ OpenTopoMap                        : chr "OpenTopoMap"
    #>  $ OpenRailwayMap                     : chr "OpenRailwayMap"
    #>  $ OpenFireMap                        : chr "OpenFireMap"
    #>  $ SafeCast                           : chr "SafeCast"
    #>  $ Thunderforest                      : chr "Thunderforest"
    #>  $ Thunderforest.OpenCycleMap         : chr "Thunderforest.OpenCycleMap"
    #>  $ Thunderforest.Transport            : chr "Thunderforest.Transport"
    #>  $ Thunderforest.TransportDark        : chr "Thunderforest.TransportDark"
    #>  $ Thunderforest.SpinalMap            : chr "Thunderforest.SpinalMap"
    #>  $ Thunderforest.Landscape            : chr "Thunderforest.Landscape"
    #>  $ Thunderforest.Outdoors             : chr "Thunderforest.Outdoors"
    #>  $ Thunderforest.Pioneer              : chr "Thunderforest.Pioneer"
    #>  $ OpenMapSurfer                      : chr "OpenMapSurfer"
    #>  $ OpenMapSurfer.Roads                : chr "OpenMapSurfer.Roads"
    #>  $ OpenMapSurfer.Hybrid               : chr "OpenMapSurfer.Hybrid"
    #>  $ OpenMapSurfer.AdminBounds          : chr "OpenMapSurfer.AdminBounds"
    #>  $ OpenMapSurfer.ContourLines         : chr "OpenMapSurfer.ContourLines"
    #>  $ OpenMapSurfer.Hillshade            : chr "OpenMapSurfer.Hillshade"
    #>  $ OpenMapSurfer.ElementsAtRisk       : chr "OpenMapSurfer.ElementsAtRisk"
    #>  $ Hydda                              : chr "Hydda"
    #>  $ Hydda.Full                         : chr "Hydda.Full"
    #>  $ Hydda.Base                         : chr "Hydda.Base"
    #>  $ Hydda.RoadsAndLabels               : chr "Hydda.RoadsAndLabels"
    #>  $ MapBox                             : chr "MapBox"
    #>  $ Stamen                             : chr "Stamen"
    #>  $ Stamen.Toner                       : chr "Stamen.Toner"
    #>  $ Stamen.TonerBackground             : chr "Stamen.TonerBackground"
    #>  $ Stamen.TonerHybrid                 : chr "Stamen.TonerHybrid"
    #>  $ Stamen.TonerLines                  : chr "Stamen.TonerLines"
    #>  $ Stamen.TonerLabels                 : chr "Stamen.TonerLabels"
    #>  $ Stamen.TonerLite                   : chr "Stamen.TonerLite"
    #>  $ Stamen.Watercolor                  : chr "Stamen.Watercolor"
    #>  $ Stamen.Terrain                     : chr "Stamen.Terrain"
    #>  $ Stamen.TerrainBackground           : chr "Stamen.TerrainBackground"
    #>  $ Stamen.TopOSMRelief                : chr "Stamen.TopOSMRelief"
    #>  $ Stamen.TopOSMFeatures              : chr "Stamen.TopOSMFeatures"
    #>  $ Esri                               : chr "Esri"
    #>  $ Esri.WorldStreetMap                : chr "Esri.WorldStreetMap"
    #>  $ Esri.DeLorme                       : chr "Esri.DeLorme"
    #>  $ Esri.WorldTopoMap                  : chr "Esri.WorldTopoMap"
    #>  $ Esri.WorldImagery                  : chr "Esri.WorldImagery"
    #>  $ Esri.WorldTerrain                  : chr "Esri.WorldTerrain"
    #>  $ Esri.WorldShadedRelief             : chr "Esri.WorldShadedRelief"
    #>  $ Esri.WorldPhysical                 : chr "Esri.WorldPhysical"
    #>  $ Esri.OceanBasemap                  : chr "Esri.OceanBasemap"
    #>  $ Esri.NatGeoWorldMap                : chr "Esri.NatGeoWorldMap"
    #>  $ Esri.WorldGrayCanvas               : chr "Esri.WorldGrayCanvas"
    #>  $ OpenWeatherMap                     : chr "OpenWeatherMap"
    #>  $ OpenWeatherMap.Clouds              : chr "OpenWeatherMap.Clouds"
    #>  $ OpenWeatherMap.CloudsClassic       : chr "OpenWeatherMap.CloudsClassic"
    #>  $ OpenWeatherMap.Precipitation       : chr "OpenWeatherMap.Precipitation"
    #>  $ OpenWeatherMap.PrecipitationClassic: chr "OpenWeatherMap.PrecipitationClassic"
    #>  $ OpenWeatherMap.Rain                : chr "OpenWeatherMap.Rain"
    #>  $ OpenWeatherMap.RainClassic         : chr "OpenWeatherMap.RainClassic"
    #>  $ OpenWeatherMap.Pressure            : chr "OpenWeatherMap.Pressure"
    #>  $ OpenWeatherMap.PressureContour     : chr "OpenWeatherMap.PressureContour"
    #>  $ OpenWeatherMap.Wind                : chr "OpenWeatherMap.Wind"
    #>  $ OpenWeatherMap.Temperature         : chr "OpenWeatherMap.Temperature"
    #>  $ OpenWeatherMap.Snow                : chr "OpenWeatherMap.Snow"
    #>  $ HERE                               : chr "HERE"
    #>  $ HERE.normalDay                     : chr "HERE.normalDay"
    #>  $ HERE.normalDayCustom               : chr "HERE.normalDayCustom"
    #>  $ HERE.normalDayGrey                 : chr "HERE.normalDayGrey"
    #>  $ HERE.normalDayMobile               : chr "HERE.normalDayMobile"
    #>  $ HERE.normalDayGreyMobile           : chr "HERE.normalDayGreyMobile"
    #>  $ HERE.normalDayTransit              : chr "HERE.normalDayTransit"
    #>  $ HERE.normalDayTransitMobile        : chr "HERE.normalDayTransitMobile"
    #>  $ HERE.normalNight                   : chr "HERE.normalNight"
    #>  $ HERE.normalNightMobile             : chr "HERE.normalNightMobile"
    #>  $ HERE.normalNightGrey               : chr "HERE.normalNightGrey"
    #>  $ HERE.normalNightGreyMobile         : chr "HERE.normalNightGreyMobile"
    #>  $ HERE.normalNightTransit            : chr "HERE.normalNightTransit"
    #>  $ HERE.normalNightTransitMobile      : chr "HERE.normalNightTransitMobile"
    #>  $ HERE.reducedDay                    : chr "HERE.reducedDay"
    #>  $ HERE.reducedNight                  : chr "HERE.reducedNight"
    #>  $ HERE.basicMap                      : chr "HERE.basicMap"
    #>  $ HERE.mapLabels                     : chr "HERE.mapLabels"
    #>  $ HERE.trafficFlow                   : chr "HERE.trafficFlow"
    #>  $ HERE.carnavDayGrey                 : chr "HERE.carnavDayGrey"
    #>  $ HERE.hybridDay                     : chr "HERE.hybridDay"
    #>  $ HERE.hybridDayMobile               : chr "HERE.hybridDayMobile"
    #>  $ HERE.hybridDayTransit              : chr "HERE.hybridDayTransit"
    #>  $ HERE.hybridDayGrey                 : chr "HERE.hybridDayGrey"
    #>  $ HERE.pedestrianDay                 : chr "HERE.pedestrianDay"
    #>  $ HERE.pedestrianNight               : chr "HERE.pedestrianNight"
    #>  $ HERE.satelliteDay                  : chr "HERE.satelliteDay"
    #>  $ HERE.terrainDay                    : chr "HERE.terrainDay"
    #>  $ HERE.terrainDayMobile              : chr "HERE.terrainDayMobile"
    #>  $ FreeMapSK                          : chr "FreeMapSK"
    #>  $ MtbMap                             : chr "MtbMap"
    #>  $ CartoDB                            : chr "CartoDB"
    #>  $ CartoDB.Positron                   : chr "CartoDB.Positron"
    #>  $ CartoDB.PositronNoLabels           : chr "CartoDB.PositronNoLabels"
    #>  $ CartoDB.PositronOnlyLabels         : chr "CartoDB.PositronOnlyLabels"
    #>  $ CartoDB.DarkMatter                 : chr "CartoDB.DarkMatter"
    #>  $ CartoDB.DarkMatterNoLabels         : chr "CartoDB.DarkMatterNoLabels"
    #>  $ CartoDB.DarkMatterOnlyLabels       : chr "CartoDB.DarkMatterOnlyLabels"
    #>  $ CartoDB.Voyager                    : chr "CartoDB.Voyager"
    #>  $ CartoDB.VoyagerNoLabels            : chr "CartoDB.VoyagerNoLabels"
    #>  $ CartoDB.VoyagerOnlyLabels          : chr "CartoDB.VoyagerOnlyLabels"
    #>  $ CartoDB.VoyagerLabelsUnder         : chr "CartoDB.VoyagerLabelsUnder"
    #>  $ HikeBike                           : chr "HikeBike"
    #>  $ HikeBike.HikeBike                  : chr "HikeBike.HikeBike"
    #>  $ HikeBike.HillShading               : chr "HikeBike.HillShading"
    #>  $ BasemapAT                          : chr "BasemapAT"
    #>  $ BasemapAT.basemap                  : chr "BasemapAT.basemap"
    #>  $ BasemapAT.grau                     : chr "BasemapAT.grau"
    #>  $ BasemapAT.overlay                  : chr "BasemapAT.overlay"
    #>  $ BasemapAT.highdpi                  : chr "BasemapAT.highdpi"
    #>  $ BasemapAT.orthofoto                : chr "BasemapAT.orthofoto"
    #>  $ nlmaps                             : chr "nlmaps"
    #>  $ nlmaps.standaard                   : chr "nlmaps.standaard"
    #>  $ nlmaps.pastel                      : chr "nlmaps.pastel"
    #>  $ nlmaps.grijs                       : chr "nlmaps.grijs"
    #>  $ nlmaps.luchtfoto                   : chr "nlmaps.luchtfoto"
    #>  $ NASAGIBS                           : chr "NASAGIBS"
    #>  $ NASAGIBS.ModisTerraTrueColorCR     : chr "NASAGIBS.ModisTerraTrueColorCR"
    #>  $ NASAGIBS.ModisTerraBands367CR      : chr "NASAGIBS.ModisTerraBands367CR"
    #>  $ NASAGIBS.ViirsEarthAtNight2012     : chr "NASAGIBS.ViirsEarthAtNight2012"
    #>  $ NASAGIBS.ModisTerraLSTDay          : chr "NASAGIBS.ModisTerraLSTDay"
    #>  $ NASAGIBS.ModisTerraSnowCover       : chr "NASAGIBS.ModisTerraSnowCover"
    #>  $ NASAGIBS.ModisTerraAOD             : chr "NASAGIBS.ModisTerraAOD"
    #>  $ NASAGIBS.ModisTerraChlorophyll     : chr "NASAGIBS.ModisTerraChlorophyll"
    #>  $ NLS                                : chr "NLS"
    #>  $ JusticeMap                         : chr "JusticeMap"
    #>  $ JusticeMap.income                  : chr "JusticeMap.income"
    #>  $ JusticeMap.americanIndian          : chr "JusticeMap.americanIndian"
    #>  $ JusticeMap.asian                   : chr "JusticeMap.asian"
    #>  $ JusticeMap.black                   : chr "JusticeMap.black"
    #>  $ JusticeMap.hispanic                : chr "JusticeMap.hispanic"
    #>  $ JusticeMap.multi                   : chr "JusticeMap.multi"
    #>  $ JusticeMap.nonWhite                : chr "JusticeMap.nonWhite"
    #>  $ JusticeMap.white                   : chr "JusticeMap.white"
    #>  $ JusticeMap.plurality               : chr "JusticeMap.plurality"
    #>  $ Wikimedia                          : chr "Wikimedia"
    #>  $ GeoportailFrance                   : chr "GeoportailFrance"
    #>  $ GeoportailFrance.parcels           : chr "GeoportailFrance.parcels"
    #>  $ GeoportailFrance.ignMaps           : chr "GeoportailFrance.ignMaps"
    #>  $ GeoportailFrance.maps              : chr "GeoportailFrance.maps"
    #>  $ GeoportailFrance.orthos            : chr "GeoportailFrance.orthos"
    #>  $ OneMapSG                           : chr "OneMapSG"
    #>  $ OneMapSG.Default                   : chr "OneMapSG.Default"
    #>  $ OneMapSG.Night                     : chr "OneMapSG.Night"
    #>  $ OneMapSG.Original                  : chr "OneMapSG.Original"
    #>  $ OneMapSG.Grey                      : chr "OneMapSG.Grey"
    #>  $ OneMapSG.LandLot                   : chr "OneMapSG.LandLot"

</div>

#### Tile providers’ details

``` r
str(providers_loaded()$providers_details)
```

<div style="height:150px; overflow-y: scroll;">

    #> List of 27
    #>  $ OpenStreetMap   :List of 3
    #>   ..$ url     : chr "//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
    #>   ..$ options :List of 2
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ attribution: chr "&copy; <a href=\"https://www.openstreetmap.org/copyright\">OpenStreetMap</a> contributors"
    #>   ..$ variants:List of 6
    #>   .. ..$ Mapnik: Named list()
    #>   .. ..$ DE    :List of 2
    #>   .. .. ..$ url    : chr "//{s}.tile.openstreetmap.de/tiles/osmde/{z}/{x}/{y}.png"
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ maxZoom: int 18
    #>   .. ..$ CH    :List of 2
    #>   .. .. ..$ url    : chr "//tile.osm.ch/switzerland/{z}/{x}/{y}.png"
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ maxZoom: int 18
    #>   .. .. .. ..$ bounds : int [1:2, 1:2] 45 48 5 11
    #>   .. ..$ France:List of 2
    #>   .. .. ..$ url    : chr "//{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png"
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ maxZoom    : int 20
    #>   .. .. .. ..$ attribution: chr "&copy; Openstreetmap France | {attribution.OpenStreetMap}"
    #>   .. ..$ HOT   :List of 2
    #>   .. .. ..$ url    : chr "//{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png"
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ attribution: chr "{attribution.OpenStreetMap}, Tiles style by <a href=\"https://www.hotosm.org/\" target=\"_blank\">Humanitarian "| __truncated__
    #>   .. ..$ BZH   :List of 2
    #>   .. .. ..$ url    : chr "//tile.openstreetmap.bzh/br/{z}/{x}/{y}.png"
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ attribution: chr "{attribution.OpenStreetMap}, Tiles courtesy of <a href=\"http://www.openstreetmap.bzh/\" target=\"_blank\">Bret"| __truncated__
    #>   .. .. .. ..$ bounds     : num [1:2, 1:2] 46.2 50 -5.5 0.7
    #>  $ OpenSeaMap      :List of 2
    #>   ..$ url    : chr "//tiles.openseamap.org/seamark/{z}/{x}/{y}.png"
    #>   ..$ options:List of 1
    #>   .. ..$ attribution: chr "Map data: &copy; <a href=\"http://www.openseamap.org\">OpenSeaMap</a> contributors"
    #>  $ OpenPtMap       :List of 2
    #>   ..$ url    : chr "http://openptmap.org/tiles/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 17
    #>   .. ..$ attribution: chr "Map data: &copy; <a href=\"http://www.openptmap.org\">OpenPtMap</a> contributors"
    #>  $ OpenTopoMap     :List of 2
    #>   ..$ url    : chr "https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 17
    #>   .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap}, <a href=\"http://viewfinderpanoramas.org\">SRTM</a> | Map style: &copy; "| __truncated__
    #>  $ OpenRailwayMap  :List of 2
    #>   ..$ url    : chr "https://{s}.tiles.openrailwaymap.org/standard/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://www.OpenRailwayMap.org\">OpenRailwa"| __truncated__
    #>  $ OpenFireMap     :List of 2
    #>   ..$ url    : chr "http://openfiremap.org/hytiles/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"http://www.openfiremap.org\">OpenFireMap</a"| __truncated__
    #>  $ SafeCast        :List of 2
    #>   ..$ url    : chr "//s3.amazonaws.com/te512.safecast.org/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 16
    #>   .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://blog.safecast.org/about/\">SafeCast"| __truncated__
    #>  $ Thunderforest   :List of 3
    #>   ..$ url     : chr "https://{s}.tile.thunderforest.com/{variant}/{z}/{x}/{y}.png?apikey={apikey}"
    #>   ..$ options :List of 4
    #>   .. ..$ attribution: chr "&copy; <a href=\"http://www.thunderforest.com/\">Thunderforest</a>, {attribution.OpenStreetMap}"
    #>   .. ..$ variant    : chr "cycle"
    #>   .. ..$ apikey     : chr "<insert your api key here>"
    #>   .. ..$ maxZoom    : int 22
    #>   ..$ variants:List of 7
    #>   .. ..$ OpenCycleMap : chr "cycle"
    #>   .. ..$ Transport    :List of 1
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ variant: chr "transport"
    #>   .. ..$ TransportDark:List of 1
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ variant: chr "transport-dark"
    #>   .. ..$ SpinalMap    :List of 1
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ variant: chr "spinal-map"
    #>   .. ..$ Landscape    : chr "landscape"
    #>   .. ..$ Outdoors     : chr "outdoors"
    #>   .. ..$ Pioneer      : chr "pioneer"
    #>  $ OpenMapSurfer   :List of 3
    #>   ..$ url     : chr "https://maps.heigit.org/openmapsurfer/tiles/{variant}/webmercator/{z}/{x}/{y}.png"
    #>   ..$ options :List of 3
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ variant    : chr "roads"
    #>   .. ..$ attribution: chr "Imagery from <a href=\"http://giscience.uni-hd.de/\">GIScience Research Group @ University of Heidelberg</a> | Map data "
    #>   ..$ variants:List of 6
    #>   .. ..$ Roads         :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ variant    : chr "roads"
    #>   .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
    #>   .. ..$ Hybrid        :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ variant    : chr "hybrid"
    #>   .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
    #>   .. ..$ AdminBounds   :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant    : chr "adminb"
    #>   .. .. .. ..$ maxZoom    : int 18
    #>   .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
    #>   .. ..$ ContourLines  :List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ variant    : chr "asterc"
    #>   .. .. .. ..$ maxZoom    : int 18
    #>   .. .. .. ..$ minZoom    : int 13
    #>   .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer} <a href=\"https://lpdaac.usgs.gov/products/aster_policies\">ASTER GDEM</a>"
    #>   .. ..$ Hillshade     :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant    : chr "asterh"
    #>   .. .. .. ..$ maxZoom    : int 18
    #>   .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer} <a href=\"https://lpdaac.usgs.gov/products/aster_policies\">ASTER GDEM</a>, <a href"| __truncated__
    #>   .. ..$ ElementsAtRisk:List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ variant    : chr "elements_at_risk"
    #>   .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
    #>  $ Hydda           :List of 3
    #>   ..$ url     : chr "//{s}.tile.openstreetmap.se/hydda/{variant}/{z}/{x}/{y}.png"
    #>   ..$ options :List of 3
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ variant    : chr "full"
    #>   .. ..$ attribution: chr "Tiles courtesy of <a href=\"http://openstreetmap.se/\" target=\"_blank\">OpenStreetMap Sweden</a> &mdash; Map d"| __truncated__
    #>   ..$ variants:List of 3
    #>   .. ..$ Full          : chr "full"
    #>   .. ..$ Base          : chr "base"
    #>   .. ..$ RoadsAndLabels: chr "roads_and_labels"
    #>  $ MapBox          :List of 2
    #>   ..$ url    : chr "https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}{r}.png?access_token={accessToken}"
    #>   ..$ options:List of 4
    #>   .. ..$ attribution: chr "<a href=\"https://www.mapbox.com/about/maps/\" target=\"_blank\">&copy; Mapbox</a> {attribution.OpenStreetMap} "| __truncated__
    #>   .. ..$ subdomains : chr "abcd"
    #>   .. ..$ id         : chr "mapbox.streets"
    #>   .. ..$ accessToken: chr "<insert your access token here>"
    #>  $ Stamen          :List of 3
    #>   ..$ url     : chr "//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}{r}.{ext}"
    #>   ..$ options :List of 6
    #>   .. ..$ attribution: chr "Map tiles by <a href=\"http://stamen.com\">Stamen Design</a>, <a href=\"http://creativecommons.org/licenses/by/"| __truncated__
    #>   .. ..$ subdomains : chr "abcd"
    #>   .. ..$ minZoom    : int 0
    #>   .. ..$ maxZoom    : int 20
    #>   .. ..$ variant    : chr "toner"
    #>   .. ..$ ext        : chr "png"
    #>   ..$ variants:List of 11
    #>   .. ..$ Toner            : chr "toner"
    #>   .. ..$ TonerBackground  : chr "toner-background"
    #>   .. ..$ TonerHybrid      : chr "toner-hybrid"
    #>   .. ..$ TonerLines       : chr "toner-lines"
    #>   .. ..$ TonerLabels      : chr "toner-labels"
    #>   .. ..$ TonerLite        : chr "toner-lite"
    #>   .. ..$ Watercolor       :List of 2
    #>   .. .. ..$ url    : chr "//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}.{ext}"
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ variant: chr "watercolor"
    #>   .. .. .. ..$ ext    : chr "jpg"
    #>   .. .. .. ..$ minZoom: int 1
    #>   .. .. .. ..$ maxZoom: int 16
    #>   .. ..$ Terrain          :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant: chr "terrain"
    #>   .. .. .. ..$ minZoom: int 0
    #>   .. .. .. ..$ maxZoom: int 18
    #>   .. ..$ TerrainBackground:List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant: chr "terrain-background"
    #>   .. .. .. ..$ minZoom: int 0
    #>   .. .. .. ..$ maxZoom: int 18
    #>   .. ..$ TopOSMRelief     :List of 2
    #>   .. .. ..$ url    : chr "//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}.{ext}"
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant: chr "toposm-color-relief"
    #>   .. .. .. ..$ ext    : chr "jpg"
    #>   .. .. .. ..$ bounds : int [1:2, 1:2] 22 51 -132 -56
    #>   .. ..$ TopOSMFeatures   :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant: chr "toposm-features"
    #>   .. .. .. ..$ bounds : int [1:2, 1:2] 22 51 -132 -56
    #>   .. .. .. ..$ opacity: num 0.9
    #>  $ Esri            :List of 3
    #>   ..$ url     : chr "//server.arcgisonline.com/ArcGIS/rest/services/{variant}/MapServer/tile/{z}/{y}/{x}"
    #>   ..$ options :List of 2
    #>   .. ..$ variant    : chr "World_Street_Map"
    #>   .. ..$ attribution: chr "Tiles &copy; Esri"
    #>   ..$ variants:List of 10
    #>   .. ..$ WorldStreetMap   :List of 1
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Source: Esri, DeLorme, NAVTEQ, USGS, Intermap, iPC, NRCAN, Esri Japan, METI, Esri Ch"| __truncated__
    #>   .. ..$ DeLorme          :List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ variant    : chr "Specialty/DeLorme_World_Base_Map"
    #>   .. .. .. ..$ minZoom    : int 1
    #>   .. .. .. ..$ maxZoom    : int 11
    #>   .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Copyright: &copy;2012 DeLorme"
    #>   .. ..$ WorldTopoMap     :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ variant    : chr "World_Topo_Map"
    #>   .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Esri, DeLorme, NAVTEQ, TomTom, Intermap, iPC, USGS, FAO, NPS, NRCAN, GeoBase, Kadast"| __truncated__
    #>   .. ..$ WorldImagery     :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ variant    : chr "World_Imagery"
    #>   .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-"| __truncated__
    #>   .. ..$ WorldTerrain     :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant    : chr "World_Terrain_Base"
    #>   .. .. .. ..$ maxZoom    : int 13
    #>   .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Source: USGS, Esri, TANA, DeLorme, and NPS"
    #>   .. ..$ WorldShadedRelief:List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant    : chr "World_Shaded_Relief"
    #>   .. .. .. ..$ maxZoom    : int 13
    #>   .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Source: Esri"
    #>   .. ..$ WorldPhysical    :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant    : chr "World_Physical_Map"
    #>   .. .. .. ..$ maxZoom    : int 8
    #>   .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Source: US National Park Service"
    #>   .. ..$ OceanBasemap     :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant    : chr "Ocean_Basemap"
    #>   .. .. .. ..$ maxZoom    : int 13
    #>   .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Sources: GEBCO, NOAA, CHS, OSU, UNH, CSUMB, National Geographic, DeLorme, NAVTEQ, and Esri"
    #>   .. ..$ NatGeoWorldMap   :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant    : chr "NatGeo_World_Map"
    #>   .. .. .. ..$ maxZoom    : int 16
    #>   .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; National Geographic, Esri, DeLorme, NAVTEQ, UNEP-WCMC, USGS, NASA, ESA, METI, NRCAN,"| __truncated__
    #>   .. ..$ WorldGrayCanvas  :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant    : chr "Canvas/World_Light_Gray_Base"
    #>   .. .. .. ..$ maxZoom    : int 16
    #>   .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Esri, DeLorme, NAVTEQ"
    #>  $ OpenWeatherMap  :List of 3
    #>   ..$ url     : chr "http://{s}.tile.openweathermap.org/map/{variant}/{z}/{x}/{y}.png?appid={apiKey}"
    #>   ..$ options :List of 4
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ attribution: chr "Map data &copy; <a href=\"http://openweathermap.org\">OpenWeatherMap</a>"
    #>   .. ..$ apiKey     : chr "<insert your api key here>"
    #>   .. ..$ opacity    : num 0.5
    #>   ..$ variants:List of 11
    #>   .. ..$ Clouds              : chr "clouds"
    #>   .. ..$ CloudsClassic       : chr "clouds_cls"
    #>   .. ..$ Precipitation       : chr "precipitation"
    #>   .. ..$ PrecipitationClassic: chr "precipitation_cls"
    #>   .. ..$ Rain                : chr "rain"
    #>   .. ..$ RainClassic         : chr "rain_cls"
    #>   .. ..$ Pressure            : chr "pressure"
    #>   .. ..$ PressureContour     : chr "pressure_cntr"
    #>   .. ..$ Wind                : chr "wind"
    #>   .. ..$ Temperature         : chr "temp"
    #>   .. ..$ Snow                : chr "snow"
    #>  $ HERE            :List of 3
    #>   ..$ url     : chr "https://{s}.{base}.maps.api.here.com/maptile/2.1/{type}/{mapID}/{variant}/{z}/{x}/{y}/{size}/{format}?app_id={a"| __truncated__
    #>   ..$ options :List of 12
    #>   .. ..$ attribution: chr "Map &copy; 1987-2019 <a href=\"http://developer.here.com\">HERE</a>"
    #>   .. ..$ subdomains : chr "1234"
    #>   .. ..$ mapID      : chr "newest"
    #>   .. ..$ app_id     : chr "<insert your app_id here>"
    #>   .. ..$ app_code   : chr "<insert your app_code here>"
    #>   .. ..$ base       : chr "base"
    #>   .. ..$ variant    : chr "normal.day"
    #>   .. ..$ maxZoom    : int 20
    #>   .. ..$ type       : chr "maptile"
    #>   .. ..$ language   : chr "eng"
    #>   .. ..$ format     : chr "png8"
    #>   .. ..$ size       : chr "256"
    #>   ..$ variants:List of 28
    #>   .. ..$ normalDay               : chr "normal.day"
    #>   .. ..$ normalDayCustom         : chr "normal.day.custom"
    #>   .. ..$ normalDayGrey           : chr "normal.day.grey"
    #>   .. ..$ normalDayMobile         : chr "normal.day.mobile"
    #>   .. ..$ normalDayGreyMobile     : chr "normal.day.grey.mobile"
    #>   .. ..$ normalDayTransit        : chr "normal.day.transit"
    #>   .. ..$ normalDayTransitMobile  : chr "normal.day.transit.mobile"
    #>   .. ..$ normalNight             : chr "normal.night"
    #>   .. ..$ normalNightMobile       : chr "normal.night.mobile"
    #>   .. ..$ normalNightGrey         : chr "normal.night.grey"
    #>   .. ..$ normalNightGreyMobile   : chr "normal.night.grey.mobile"
    #>   .. ..$ normalNightTransit      : chr "normal.night.transit"
    #>   .. ..$ normalNightTransitMobile: chr "normal.night.transit.mobile"
    #>   .. ..$ reducedDay              : chr "reduced.day"
    #>   .. ..$ reducedNight            : chr "reduced.night"
    #>   .. ..$ basicMap                :List of 1
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ type: chr "basetile"
    #>   .. ..$ mapLabels               :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ type  : chr "labeltile"
    #>   .. .. .. ..$ format: chr "png"
    #>   .. ..$ trafficFlow             :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ base: chr "traffic"
    #>   .. .. .. ..$ type: chr "flowtile"
    #>   .. ..$ carnavDayGrey           : chr "carnav.day.grey"
    #>   .. ..$ hybridDay               :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. ..$ variant: chr "hybrid.day"
    #>   .. ..$ hybridDayMobile         :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. ..$ variant: chr "hybrid.day.mobile"
    #>   .. ..$ hybridDayTransit        :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. ..$ variant: chr "hybrid.day.transit"
    #>   .. ..$ hybridDayGrey           :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. ..$ variant: chr "hybrid.grey.day"
    #>   .. ..$ pedestrianDay           : chr "pedestrian.day"
    #>   .. ..$ pedestrianNight         : chr "pedestrian.night"
    #>   .. ..$ satelliteDay            :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. ..$ variant: chr "satellite.day"
    #>   .. ..$ terrainDay              :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. ..$ variant: chr "terrain.day"
    #>   .. ..$ terrainDayMobile        :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. ..$ variant: chr "terrain.day.mobile"
    #>  $ FreeMapSK       :List of 2
    #>   ..$ url    : chr "http://t{s}.freemap.sk/T/{z}/{x}/{y}.jpeg"
    #>   ..$ options:List of 5
    #>   .. ..$ minZoom    : int 8
    #>   .. ..$ maxZoom    : int 16
    #>   .. ..$ subdomains : chr "1234"
    #>   .. ..$ bounds     : num [1:2, 1:2] 47.2 49.8 16 22.6
    #>   .. ..$ attribution: chr "{attribution.OpenStreetMap}, vizualization CC-By-SA 2.0 <a href=\"http://freemap.sk\">Freemap.sk</a>"
    #>  $ MtbMap          :List of 2
    #>   ..$ url    : chr "http://tile.mtbmap.cz/mtbmap_tiles/{z}/{x}/{y}.png"
    #>   ..$ options:List of 1
    #>   .. ..$ attribution: chr "{attribution.OpenStreetMap} &amp; USGS"
    #>  $ CartoDB         :List of 3
    #>   ..$ url     : chr "https://{s}.basemaps.cartocdn.com/{variant}/{z}/{x}/{y}{r}.png"
    #>   ..$ options :List of 4
    #>   .. ..$ attribution: chr "{attribution.OpenStreetMap} &copy; <a href=\"https://carto.com/attributions\">CARTO</a>"
    #>   .. ..$ subdomains : chr "abcd"
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ variant    : chr "light_all"
    #>   ..$ variants:List of 10
    #>   .. ..$ Positron            : chr "light_all"
    #>   .. ..$ PositronNoLabels    : chr "light_nolabels"
    #>   .. ..$ PositronOnlyLabels  : chr "light_only_labels"
    #>   .. ..$ DarkMatter          : chr "dark_all"
    #>   .. ..$ DarkMatterNoLabels  : chr "dark_nolabels"
    #>   .. ..$ DarkMatterOnlyLabels: chr "dark_only_labels"
    #>   .. ..$ Voyager             : chr "rastertiles/voyager"
    #>   .. ..$ VoyagerNoLabels     : chr "rastertiles/voyager_nolabels"
    #>   .. ..$ VoyagerOnlyLabels   : chr "rastertiles/voyager_only_labels"
    #>   .. ..$ VoyagerLabelsUnder  : chr "rastertiles/voyager_labels_under"
    #>  $ HikeBike        :List of 3
    #>   ..$ url     : chr "https://tiles.wmflabs.org/{variant}/{z}/{x}/{y}.png"
    #>   ..$ options :List of 3
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ attribution: chr "{attribution.OpenStreetMap}"
    #>   .. ..$ variant    : chr "hikebike"
    #>   ..$ variants:List of 2
    #>   .. ..$ HikeBike   : Named list()
    #>   .. ..$ HillShading:List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ maxZoom: int 15
    #>   .. .. .. ..$ variant: chr "hillshading"
    #>  $ BasemapAT       :List of 3
    #>   ..$ url     : chr "//maps{s}.wien.gv.at/basemap/{variant}/normal/google3857/{z}/{y}/{x}.{format}"
    #>   ..$ options :List of 6
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ attribution: chr "Datenquelle: <a href=\"https://www.basemap.at\">basemap.at</a>"
    #>   .. ..$ subdomains : chr [1:5] "" "1" "2" "3" ...
    #>   .. ..$ format     : chr "png"
    #>   .. ..$ bounds     : num [1:2, 1:2] 46.36 49.04 8.78 17.19
    #>   .. ..$ variant    : chr "geolandbasemap"
    #>   ..$ variants:List of 5
    #>   .. ..$ basemap  :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ maxZoom: int 20
    #>   .. .. .. ..$ variant: chr "geolandbasemap"
    #>   .. ..$ grau     : chr "bmapgrau"
    #>   .. ..$ overlay  : chr "bmapoverlay"
    #>   .. ..$ highdpi  :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ variant: chr "bmaphidpi"
    #>   .. .. .. ..$ format : chr "jpeg"
    #>   .. ..$ orthofoto:List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ maxZoom: int 20
    #>   .. .. .. ..$ variant: chr "bmaporthofoto30cm"
    #>   .. .. .. ..$ format : chr "jpeg"
    #>  $ nlmaps          :List of 3
    #>   ..$ url     : chr "//geodata.nationaalgeoregister.nl/tiles/service/wmts/{variant}/EPSG:3857/{z}/{x}/{y}.png"
    #>   ..$ options :List of 4
    #>   .. ..$ minZoom    : int 6
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ bounds     : num [1:2, 1:2] 50.5 54 3.25 7.6
    #>   .. ..$ attribution: chr "Kaartgegevens &copy; <a href=\"kadaster.nl\">Kadaster</a>"
    #>   ..$ variants:List of 4
    #>   .. ..$ standaard: chr "brtachtergrondkaart"
    #>   .. ..$ pastel   : chr "brtachtergrondkaartpastel"
    #>   .. ..$ grijs    : chr "brtachtergrondkaartgrijs"
    #>   .. ..$ luchtfoto:List of 1
    #>   .. .. ..$ url: chr "//geodata.nationaalgeoregister.nl/luchtfoto/rgb/wmts/1.0.0/2016_ortho25/EPSG:3857/{z}/{x}/{y}.png"
    #>  $ NASAGIBS        :List of 3
    #>   ..$ url     : chr "https://map1.vis.earthdata.nasa.gov/wmts-webmerc/{variant}/default/{time}/{tilematrixset}{maxZoom}/{z}/{y}/{x}.{format}"
    #>   ..$ options :List of 7
    #>   .. ..$ attribution  : chr "Imagery provided by services from the Global Imagery Browse Services (GIBS), operated by the NASA/GSFC/Earth Sc"| __truncated__
    #>   .. ..$ bounds       : num [1:2, 1:2] -85.1 85.1 -180 180
    #>   .. ..$ minZoom      : int 1
    #>   .. ..$ maxZoom      : int 9
    #>   .. ..$ format       : chr "jpg"
    #>   .. ..$ time         : chr ""
    #>   .. ..$ tilematrixset: chr "GoogleMapsCompatible_Level"
    #>   ..$ variants:List of 7
    #>   .. ..$ ModisTerraTrueColorCR: chr "MODIS_Terra_CorrectedReflectance_TrueColor"
    #>   .. ..$ ModisTerraBands367CR : chr "MODIS_Terra_CorrectedReflectance_Bands367"
    #>   .. ..$ ViirsEarthAtNight2012:List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ variant: chr "VIIRS_CityLights_2012"
    #>   .. .. .. ..$ maxZoom: int 8
    #>   .. ..$ ModisTerraLSTDay     :List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ variant: chr "MODIS_Terra_Land_Surface_Temp_Day"
    #>   .. .. .. ..$ format : chr "png"
    #>   .. .. .. ..$ maxZoom: int 7
    #>   .. .. .. ..$ opacity: num 0.75
    #>   .. ..$ ModisTerraSnowCover  :List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ variant: chr "MODIS_Terra_Snow_Cover"
    #>   .. .. .. ..$ format : chr "png"
    #>   .. .. .. ..$ maxZoom: int 8
    #>   .. .. .. ..$ opacity: num 0.75
    #>   .. ..$ ModisTerraAOD        :List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ variant: chr "MODIS_Terra_Aerosol"
    #>   .. .. .. ..$ format : chr "png"
    #>   .. .. .. ..$ maxZoom: int 6
    #>   .. .. .. ..$ opacity: num 0.75
    #>   .. ..$ ModisTerraChlorophyll:List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ variant: chr "MODIS_Terra_Chlorophyll_A"
    #>   .. .. .. ..$ format : chr "png"
    #>   .. .. .. ..$ maxZoom: int 7
    #>   .. .. .. ..$ opacity: num 0.75
    #>  $ NLS             :List of 2
    #>   ..$ url    : chr "//nls-{s}.tileserver.com/nls/{z}/{x}/{y}.jpg"
    #>   ..$ options:List of 5
    #>   .. ..$ attribution: chr "<a href=\"http://geo.nls.uk/maps/\">National Library of Scotland Historic Maps</a>"
    #>   .. ..$ bounds     : num [1:2, 1:2] 49.6 61.7 -12 3
    #>   .. ..$ minZoom    : int 1
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ subdomains : chr "0123"
    #>  $ JusticeMap      :List of 3
    #>   ..$ url     : chr "http://www.justicemap.org/tile/{size}/{variant}/{z}/{x}/{y}.png"
    #>   ..$ options :List of 3
    #>   .. ..$ attribution: chr "<a href=\"http://www.justicemap.org/terms.php\">Justice Map</a>"
    #>   .. ..$ size       : chr "county"
    #>   .. ..$ bounds     : int [1:2, 1:2] 14 72 -180 -56
    #>   ..$ variants:List of 9
    #>   .. ..$ income        : chr "income"
    #>   .. ..$ americanIndian: chr "indian"
    #>   .. ..$ asian         : chr "asian"
    #>   .. ..$ black         : chr "black"
    #>   .. ..$ hispanic      : chr "hispanic"
    #>   .. ..$ multi         : chr "multi"
    #>   .. ..$ nonWhite      : chr "nonwhite"
    #>   .. ..$ white         : chr "white"
    #>   .. ..$ plurality     : chr "plural"
    #>  $ Wikimedia       :List of 2
    #>   ..$ url    : chr "https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}{r}.png"
    #>   ..$ options:List of 3
    #>   .. ..$ attribution: chr "<a href=\"https://wikimediafoundation.org/wiki/Maps_Terms_of_Use\">Wikimedia</a>"
    #>   .. ..$ minZoom    : int 1
    #>   .. ..$ maxZoom    : int 19
    #>  $ GeoportailFrance:List of 3
    #>   ..$ url     : chr "https://wxs.ign.fr/{apikey}/geoportail/wmts?REQUEST=GetTile&SERVICE=WMTS&VERSION=1.0.0&STYLE={style}&TILEMATRIX"| __truncated__
    #>   ..$ options :List of 8
    #>   .. ..$ attribution: chr "<a target=\"_blank\" href=\"https://www.geoportail.gouv.fr/\">Geoportail France</a>"
    #>   .. ..$ bounds     : int [1:2, 1:2] -75 81 -180 180
    #>   .. ..$ minZoom    : int 2
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ apikey     : chr "choisirgeoportail"
    #>   .. ..$ format     : chr "image/jpeg"
    #>   .. ..$ style      : chr "normal"
    #>   .. ..$ variant    : chr "GEOGRAPHICALGRIDSYSTEMS.MAPS.SCAN-EXPRESS.STANDARD"
    #>   ..$ variants:List of 4
    #>   .. ..$ parcels:List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ variant: chr "CADASTRALPARCELS.PARCELS"
    #>   .. .. .. ..$ maxZoom: int 20
    #>   .. .. .. ..$ style  : chr "bdparcellaire"
    #>   .. .. .. ..$ format : chr "image/png"
    #>   .. ..$ ignMaps: chr "GEOGRAPHICALGRIDSYSTEMS.MAPS"
    #>   .. ..$ maps   : chr "GEOGRAPHICALGRIDSYSTEMS.MAPS.SCAN-EXPRESS.STANDARD"
    #>   .. ..$ orthos :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ maxZoom: int 19
    #>   .. .. .. ..$ variant: chr "ORTHOIMAGERY.ORTHOPHOTOS"
    #>  $ OneMapSG        :List of 3
    #>   ..$ url     : chr "//maps-{s}.onemap.sg/v3/{variant}/{z}/{x}/{y}.png"
    #>   ..$ options :List of 5
    #>   .. ..$ variant    : chr "Default"
    #>   .. ..$ minZoom    : int 11
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ bounds     : num [1:2, 1:2] 1.56 1.16 104.11 103.5
    #>   .. ..$ attribution: chr "<img src=\"https://docs.onemap.sg/maps/images/oneMap64-01.png\" style=\"height:20px;width:20px;\"/> New OneMap "| __truncated__
    #>   ..$ variants:List of 5
    #>   .. ..$ Default : chr "Default"
    #>   .. ..$ Night   : chr "Night"
    #>   .. ..$ Original: chr "Original"
    #>   .. ..$ Grey    : chr "Grey"
    #>   .. ..$ LandLot : chr "LandLot"

</div>
