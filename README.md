
<!-- README.md is generated from README.Rmd. Please edit that file -->

# leaflet.providers

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/leaflet.providers)](https://CRAN.R-project.org/package=leaflet.providers)
[![Travis build
status](https://travis-ci.org/rstudio/leaflet.providers.svg?branch=master)](https://travis-ci.org/rstudio/leaflet.providers)
[![Codecov test
coverage](https://codecov.io/gh/rstudio/leaflet.providers/branch/master/graph/badge.svg)](https://codecov.io/gh/rstudio/leaflet.providers?branch=master)

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

### Default providers

``` r
library(leaflet.providers)

# at the time of writing, version 1.8.0
str(providers_default()) 
```

<div style="height:150px; overflow-y: scroll;">

    #> List of 4
    #>  $ version_num      : chr "1.8.0"
    #>  $ providers        :List of 157
    #>   ..$ OpenStreetMap                      : chr "OpenStreetMap"
    #>   ..$ OpenStreetMap.Mapnik               : chr "OpenStreetMap.Mapnik"
    #>   ..$ OpenStreetMap.DE                   : chr "OpenStreetMap.DE"
    #>   ..$ OpenStreetMap.CH                   : chr "OpenStreetMap.CH"
    #>   ..$ OpenStreetMap.France               : chr "OpenStreetMap.France"
    #>   ..$ OpenStreetMap.HOT                  : chr "OpenStreetMap.HOT"
    #>   ..$ OpenStreetMap.BZH                  : chr "OpenStreetMap.BZH"
    #>   ..$ OpenSeaMap                         : chr "OpenSeaMap"
    #>   ..$ OpenPtMap                          : chr "OpenPtMap"
    #>   ..$ OpenTopoMap                        : chr "OpenTopoMap"
    #>   ..$ OpenRailwayMap                     : chr "OpenRailwayMap"
    #>   ..$ OpenFireMap                        : chr "OpenFireMap"
    #>   ..$ SafeCast                           : chr "SafeCast"
    #>   ..$ Thunderforest                      : chr "Thunderforest"
    #>   ..$ Thunderforest.OpenCycleMap         : chr "Thunderforest.OpenCycleMap"
    #>   ..$ Thunderforest.Transport            : chr "Thunderforest.Transport"
    #>   ..$ Thunderforest.TransportDark        : chr "Thunderforest.TransportDark"
    #>   ..$ Thunderforest.SpinalMap            : chr "Thunderforest.SpinalMap"
    #>   ..$ Thunderforest.Landscape            : chr "Thunderforest.Landscape"
    #>   ..$ Thunderforest.Outdoors             : chr "Thunderforest.Outdoors"
    #>   ..$ Thunderforest.Pioneer              : chr "Thunderforest.Pioneer"
    #>   ..$ Thunderforest.MobileAtlas          : chr "Thunderforest.MobileAtlas"
    #>   ..$ Thunderforest.Neighbourhood        : chr "Thunderforest.Neighbourhood"
    #>   ..$ OpenMapSurfer                      : chr "OpenMapSurfer"
    #>   ..$ OpenMapSurfer.Roads                : chr "OpenMapSurfer.Roads"
    #>   ..$ OpenMapSurfer.Hybrid               : chr "OpenMapSurfer.Hybrid"
    #>   ..$ OpenMapSurfer.AdminBounds          : chr "OpenMapSurfer.AdminBounds"
    #>   ..$ OpenMapSurfer.ContourLines         : chr "OpenMapSurfer.ContourLines"
    #>   ..$ OpenMapSurfer.Hillshade            : chr "OpenMapSurfer.Hillshade"
    #>   ..$ OpenMapSurfer.ElementsAtRisk       : chr "OpenMapSurfer.ElementsAtRisk"
    #>   ..$ Hydda                              : chr "Hydda"
    #>   ..$ Hydda.Full                         : chr "Hydda.Full"
    #>   ..$ Hydda.Base                         : chr "Hydda.Base"
    #>   ..$ Hydda.RoadsAndLabels               : chr "Hydda.RoadsAndLabels"
    #>   ..$ MapBox                             : chr "MapBox"
    #>   ..$ Stamen                             : chr "Stamen"
    #>   ..$ Stamen.Toner                       : chr "Stamen.Toner"
    #>   ..$ Stamen.TonerBackground             : chr "Stamen.TonerBackground"
    #>   ..$ Stamen.TonerHybrid                 : chr "Stamen.TonerHybrid"
    #>   ..$ Stamen.TonerLines                  : chr "Stamen.TonerLines"
    #>   ..$ Stamen.TonerLabels                 : chr "Stamen.TonerLabels"
    #>   ..$ Stamen.TonerLite                   : chr "Stamen.TonerLite"
    #>   ..$ Stamen.Watercolor                  : chr "Stamen.Watercolor"
    #>   ..$ Stamen.Terrain                     : chr "Stamen.Terrain"
    #>   ..$ Stamen.TerrainBackground           : chr "Stamen.TerrainBackground"
    #>   ..$ Stamen.TopOSMRelief                : chr "Stamen.TopOSMRelief"
    #>   ..$ Stamen.TopOSMFeatures              : chr "Stamen.TopOSMFeatures"
    #>   ..$ Esri                               : chr "Esri"
    #>   ..$ Esri.WorldStreetMap                : chr "Esri.WorldStreetMap"
    #>   ..$ Esri.DeLorme                       : chr "Esri.DeLorme"
    #>   ..$ Esri.WorldTopoMap                  : chr "Esri.WorldTopoMap"
    #>   ..$ Esri.WorldImagery                  : chr "Esri.WorldImagery"
    #>   ..$ Esri.WorldTerrain                  : chr "Esri.WorldTerrain"
    #>   ..$ Esri.WorldShadedRelief             : chr "Esri.WorldShadedRelief"
    #>   ..$ Esri.WorldPhysical                 : chr "Esri.WorldPhysical"
    #>   ..$ Esri.OceanBasemap                  : chr "Esri.OceanBasemap"
    #>   ..$ Esri.NatGeoWorldMap                : chr "Esri.NatGeoWorldMap"
    #>   ..$ Esri.WorldGrayCanvas               : chr "Esri.WorldGrayCanvas"
    #>   ..$ OpenWeatherMap                     : chr "OpenWeatherMap"
    #>   ..$ OpenWeatherMap.Clouds              : chr "OpenWeatherMap.Clouds"
    #>   ..$ OpenWeatherMap.CloudsClassic       : chr "OpenWeatherMap.CloudsClassic"
    #>   ..$ OpenWeatherMap.Precipitation       : chr "OpenWeatherMap.Precipitation"
    #>   ..$ OpenWeatherMap.PrecipitationClassic: chr "OpenWeatherMap.PrecipitationClassic"
    #>   ..$ OpenWeatherMap.Rain                : chr "OpenWeatherMap.Rain"
    #>   ..$ OpenWeatherMap.RainClassic         : chr "OpenWeatherMap.RainClassic"
    #>   ..$ OpenWeatherMap.Pressure            : chr "OpenWeatherMap.Pressure"
    #>   ..$ OpenWeatherMap.PressureContour     : chr "OpenWeatherMap.PressureContour"
    #>   ..$ OpenWeatherMap.Wind                : chr "OpenWeatherMap.Wind"
    #>   ..$ OpenWeatherMap.Temperature         : chr "OpenWeatherMap.Temperature"
    #>   ..$ OpenWeatherMap.Snow                : chr "OpenWeatherMap.Snow"
    #>   ..$ HERE                               : chr "HERE"
    #>   ..$ HERE.normalDay                     : chr "HERE.normalDay"
    #>   ..$ HERE.normalDayCustom               : chr "HERE.normalDayCustom"
    #>   ..$ HERE.normalDayGrey                 : chr "HERE.normalDayGrey"
    #>   ..$ HERE.normalDayMobile               : chr "HERE.normalDayMobile"
    #>   ..$ HERE.normalDayGreyMobile           : chr "HERE.normalDayGreyMobile"
    #>   ..$ HERE.normalDayTransit              : chr "HERE.normalDayTransit"
    #>   ..$ HERE.normalDayTransitMobile        : chr "HERE.normalDayTransitMobile"
    #>   ..$ HERE.normalNight                   : chr "HERE.normalNight"
    #>   ..$ HERE.normalNightMobile             : chr "HERE.normalNightMobile"
    #>   ..$ HERE.normalNightGrey               : chr "HERE.normalNightGrey"
    #>   ..$ HERE.normalNightGreyMobile         : chr "HERE.normalNightGreyMobile"
    #>   ..$ HERE.normalNightTransit            : chr "HERE.normalNightTransit"
    #>   ..$ HERE.normalNightTransitMobile      : chr "HERE.normalNightTransitMobile"
    #>   ..$ HERE.reducedDay                    : chr "HERE.reducedDay"
    #>   ..$ HERE.reducedNight                  : chr "HERE.reducedNight"
    #>   ..$ HERE.basicMap                      : chr "HERE.basicMap"
    #>   ..$ HERE.mapLabels                     : chr "HERE.mapLabels"
    #>   ..$ HERE.trafficFlow                   : chr "HERE.trafficFlow"
    #>   ..$ HERE.carnavDayGrey                 : chr "HERE.carnavDayGrey"
    #>   ..$ HERE.hybridDay                     : chr "HERE.hybridDay"
    #>   ..$ HERE.hybridDayMobile               : chr "HERE.hybridDayMobile"
    #>   ..$ HERE.hybridDayTransit              : chr "HERE.hybridDayTransit"
    #>   ..$ HERE.hybridDayGrey                 : chr "HERE.hybridDayGrey"
    #>   ..$ HERE.pedestrianDay                 : chr "HERE.pedestrianDay"
    #>   ..$ HERE.pedestrianNight               : chr "HERE.pedestrianNight"
    #>   ..$ HERE.satelliteDay                  : chr "HERE.satelliteDay"
    #>   ..$ HERE.terrainDay                    : chr "HERE.terrainDay"
    #>   ..$ HERE.terrainDayMobile              : chr "HERE.terrainDayMobile"
    #>   ..$ FreeMapSK                          : chr "FreeMapSK"
    #>   ..$ MtbMap                             : chr "MtbMap"
    #>   ..$ CartoDB                            : chr "CartoDB"
    #>   ..$ CartoDB.Positron                   : chr "CartoDB.Positron"
    #>   ..$ CartoDB.PositronNoLabels           : chr "CartoDB.PositronNoLabels"
    #>   ..$ CartoDB.PositronOnlyLabels         : chr "CartoDB.PositronOnlyLabels"
    #>   ..$ CartoDB.DarkMatter                 : chr "CartoDB.DarkMatter"
    #>   ..$ CartoDB.DarkMatterNoLabels         : chr "CartoDB.DarkMatterNoLabels"
    #>   ..$ CartoDB.DarkMatterOnlyLabels       : chr "CartoDB.DarkMatterOnlyLabels"
    #>   ..$ CartoDB.Voyager                    : chr "CartoDB.Voyager"
    #>   ..$ CartoDB.VoyagerNoLabels            : chr "CartoDB.VoyagerNoLabels"
    #>   ..$ CartoDB.VoyagerOnlyLabels          : chr "CartoDB.VoyagerOnlyLabels"
    #>   ..$ CartoDB.VoyagerLabelsUnder         : chr "CartoDB.VoyagerLabelsUnder"
    #>   ..$ HikeBike                           : chr "HikeBike"
    #>   ..$ HikeBike.HikeBike                  : chr "HikeBike.HikeBike"
    #>   ..$ HikeBike.HillShading               : chr "HikeBike.HillShading"
    #>   ..$ BasemapAT                          : chr "BasemapAT"
    #>   ..$ BasemapAT.basemap                  : chr "BasemapAT.basemap"
    #>   ..$ BasemapAT.grau                     : chr "BasemapAT.grau"
    #>   ..$ BasemapAT.overlay                  : chr "BasemapAT.overlay"
    #>   ..$ BasemapAT.highdpi                  : chr "BasemapAT.highdpi"
    #>   ..$ BasemapAT.orthofoto                : chr "BasemapAT.orthofoto"
    #>   ..$ nlmaps                             : chr "nlmaps"
    #>   ..$ nlmaps.standaard                   : chr "nlmaps.standaard"
    #>   ..$ nlmaps.pastel                      : chr "nlmaps.pastel"
    #>   ..$ nlmaps.grijs                       : chr "nlmaps.grijs"
    #>   ..$ nlmaps.luchtfoto                   : chr "nlmaps.luchtfoto"
    #>   ..$ NASAGIBS                           : chr "NASAGIBS"
    #>   ..$ NASAGIBS.ModisTerraTrueColorCR     : chr "NASAGIBS.ModisTerraTrueColorCR"
    #>   ..$ NASAGIBS.ModisTerraBands367CR      : chr "NASAGIBS.ModisTerraBands367CR"
    #>   ..$ NASAGIBS.ViirsEarthAtNight2012     : chr "NASAGIBS.ViirsEarthAtNight2012"
    #>   ..$ NASAGIBS.ModisTerraLSTDay          : chr "NASAGIBS.ModisTerraLSTDay"
    #>   ..$ NASAGIBS.ModisTerraSnowCover       : chr "NASAGIBS.ModisTerraSnowCover"
    #>   ..$ NASAGIBS.ModisTerraAOD             : chr "NASAGIBS.ModisTerraAOD"
    #>   ..$ NASAGIBS.ModisTerraChlorophyll     : chr "NASAGIBS.ModisTerraChlorophyll"
    #>   ..$ NLS                                : chr "NLS"
    #>   ..$ JusticeMap                         : chr "JusticeMap"
    #>   ..$ JusticeMap.income                  : chr "JusticeMap.income"
    #>   ..$ JusticeMap.americanIndian          : chr "JusticeMap.americanIndian"
    #>   ..$ JusticeMap.asian                   : chr "JusticeMap.asian"
    #>   ..$ JusticeMap.black                   : chr "JusticeMap.black"
    #>   ..$ JusticeMap.hispanic                : chr "JusticeMap.hispanic"
    #>   ..$ JusticeMap.multi                   : chr "JusticeMap.multi"
    #>   ..$ JusticeMap.nonWhite                : chr "JusticeMap.nonWhite"
    #>   ..$ JusticeMap.white                   : chr "JusticeMap.white"
    #>   ..$ JusticeMap.plurality               : chr "JusticeMap.plurality"
    #>   ..$ Wikimedia                          : chr "Wikimedia"
    #>   ..$ GeoportailFrance                   : chr "GeoportailFrance"
    #>   ..$ GeoportailFrance.parcels           : chr "GeoportailFrance.parcels"
    #>   ..$ GeoportailFrance.ignMaps           : chr "GeoportailFrance.ignMaps"
    #>   ..$ GeoportailFrance.maps              : chr "GeoportailFrance.maps"
    #>   ..$ GeoportailFrance.orthos            : chr "GeoportailFrance.orthos"
    #>   ..$ OneMapSG                           : chr "OneMapSG"
    #>   ..$ OneMapSG.Default                   : chr "OneMapSG.Default"
    #>   ..$ OneMapSG.Night                     : chr "OneMapSG.Night"
    #>   ..$ OneMapSG.Original                  : chr "OneMapSG.Original"
    #>   ..$ OneMapSG.Grey                      : chr "OneMapSG.Grey"
    #>   ..$ OneMapSG.LandLot                   : chr "OneMapSG.LandLot"
    #>  $ providers_details:List of 27
    #>   ..$ OpenStreetMap   :List of 3
    #>   .. ..$ url     : chr "//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
    #>   .. ..$ options :List of 2
    #>   .. .. ..$ maxZoom    : int 19
    #>   .. .. ..$ attribution: chr "&copy; <a href=\"https://www.openstreetmap.org/copyright\">OpenStreetMap</a> contributors"
    #>   .. ..$ variants:List of 6
    #>   .. .. ..$ Mapnik: Named list()
    #>   .. .. ..$ DE    :List of 2
    #>   .. .. .. ..$ url    : chr "//{s}.tile.openstreetmap.de/tiles/osmde/{z}/{x}/{y}.png"
    #>   .. .. .. ..$ options:List of 1
    #>   .. .. .. .. ..$ maxZoom: int 18
    #>   .. .. ..$ CH    :List of 2
    #>   .. .. .. ..$ url    : chr "//tile.osm.ch/switzerland/{z}/{x}/{y}.png"
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ maxZoom: int 18
    #>   .. .. .. .. ..$ bounds : int [1:2, 1:2] 45 48 5 11
    #>   .. .. ..$ France:List of 2
    #>   .. .. .. ..$ url    : chr "//{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png"
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ maxZoom    : int 20
    #>   .. .. .. .. ..$ attribution: chr "&copy; Openstreetmap France | {attribution.OpenStreetMap}"
    #>   .. .. ..$ HOT   :List of 2
    #>   .. .. .. ..$ url    : chr "//{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png"
    #>   .. .. .. ..$ options:List of 1
    #>   .. .. .. .. ..$ attribution: chr "{attribution.OpenStreetMap}, Tiles style by <a href=\"https://www.hotosm.org/\" target=\"_blank\">Humanitarian "| __truncated__
    #>   .. .. ..$ BZH   :List of 2
    #>   .. .. .. ..$ url    : chr "//tile.openstreetmap.bzh/br/{z}/{x}/{y}.png"
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ attribution: chr "{attribution.OpenStreetMap}, Tiles courtesy of <a href=\"http://www.openstreetmap.bzh/\" target=\"_blank\">Bret"| __truncated__
    #>   .. .. .. .. ..$ bounds     : num [1:2, 1:2] 46.2 50 -5.5 0.7
    #>   ..$ OpenSeaMap      :List of 2
    #>   .. ..$ url    : chr "//tiles.openseamap.org/seamark/{z}/{x}/{y}.png"
    #>   .. ..$ options:List of 1
    #>   .. .. ..$ attribution: chr "Map data: &copy; <a href=\"http://www.openseamap.org\">OpenSeaMap</a> contributors"
    #>   ..$ OpenPtMap       :List of 2
    #>   .. ..$ url    : chr "http://openptmap.org/tiles/{z}/{x}/{y}.png"
    #>   .. ..$ options:List of 2
    #>   .. .. ..$ maxZoom    : int 17
    #>   .. .. ..$ attribution: chr "Map data: &copy; <a href=\"http://www.openptmap.org\">OpenPtMap</a> contributors"
    #>   ..$ OpenTopoMap     :List of 2
    #>   .. ..$ url    : chr "https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png"
    #>   .. ..$ options:List of 2
    #>   .. .. ..$ maxZoom    : int 17
    #>   .. .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap}, <a href=\"http://viewfinderpanoramas.org\">SRTM</a> | Map style: &copy; "| __truncated__
    #>   ..$ OpenRailwayMap  :List of 2
    #>   .. ..$ url    : chr "https://{s}.tiles.openrailwaymap.org/standard/{z}/{x}/{y}.png"
    #>   .. ..$ options:List of 2
    #>   .. .. ..$ maxZoom    : int 19
    #>   .. .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://www.OpenRailwayMap.org\">OpenRailwa"| __truncated__
    #>   ..$ OpenFireMap     :List of 2
    #>   .. ..$ url    : chr "http://openfiremap.org/hytiles/{z}/{x}/{y}.png"
    #>   .. ..$ options:List of 2
    #>   .. .. ..$ maxZoom    : int 19
    #>   .. .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"http://www.openfiremap.org\">OpenFireMap</a"| __truncated__
    #>   ..$ SafeCast        :List of 2
    #>   .. ..$ url    : chr "//s3.amazonaws.com/te512.safecast.org/{z}/{x}/{y}.png"
    #>   .. ..$ options:List of 2
    #>   .. .. ..$ maxZoom    : int 16
    #>   .. .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://blog.safecast.org/about/\">SafeCast"| __truncated__
    #>   ..$ Thunderforest   :List of 3
    #>   .. ..$ url     : chr "https://{s}.tile.thunderforest.com/{variant}/{z}/{x}/{y}.png?apikey={apikey}"
    #>   .. ..$ options :List of 4
    #>   .. .. ..$ attribution: chr "&copy; <a href=\"http://www.thunderforest.com/\">Thunderforest</a>, {attribution.OpenStreetMap}"
    #>   .. .. ..$ variant    : chr "cycle"
    #>   .. .. ..$ apikey     : chr "<insert your api key here>"
    #>   .. .. ..$ maxZoom    : int 22
    #>   .. ..$ variants:List of 9
    #>   .. .. ..$ OpenCycleMap : chr "cycle"
    #>   .. .. ..$ Transport    :List of 1
    #>   .. .. .. ..$ options:List of 1
    #>   .. .. .. .. ..$ variant: chr "transport"
    #>   .. .. ..$ TransportDark:List of 1
    #>   .. .. .. ..$ options:List of 1
    #>   .. .. .. .. ..$ variant: chr "transport-dark"
    #>   .. .. ..$ SpinalMap    :List of 1
    #>   .. .. .. ..$ options:List of 1
    #>   .. .. .. .. ..$ variant: chr "spinal-map"
    #>   .. .. ..$ Landscape    : chr "landscape"
    #>   .. .. ..$ Outdoors     : chr "outdoors"
    #>   .. .. ..$ Pioneer      : chr "pioneer"
    #>   .. .. ..$ MobileAtlas  : chr "mobile-atlas"
    #>   .. .. ..$ Neighbourhood: chr "neighbourhood"
    #>   ..$ OpenMapSurfer   :List of 3
    #>   .. ..$ url     : chr "https://maps.heigit.org/openmapsurfer/tiles/{variant}/webmercator/{z}/{x}/{y}.png"
    #>   .. ..$ options :List of 3
    #>   .. .. ..$ maxZoom    : int 19
    #>   .. .. ..$ variant    : chr "roads"
    #>   .. .. ..$ attribution: chr "Imagery from <a href=\"http://giscience.uni-hd.de/\">GIScience Research Group @ University of Heidelberg</a> | Map data "
    #>   .. ..$ variants:List of 6
    #>   .. .. ..$ Roads         :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ variant    : chr "roads"
    #>   .. .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
    #>   .. .. ..$ Hybrid        :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ variant    : chr "hybrid"
    #>   .. .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
    #>   .. .. ..$ AdminBounds   :List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant    : chr "adminb"
    #>   .. .. .. .. ..$ maxZoom    : int 18
    #>   .. .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
    #>   .. .. ..$ ContourLines  :List of 1
    #>   .. .. .. ..$ options:List of 4
    #>   .. .. .. .. ..$ variant    : chr "asterc"
    #>   .. .. .. .. ..$ maxZoom    : int 18
    #>   .. .. .. .. ..$ minZoom    : int 13
    #>   .. .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer} <a href=\"https://lpdaac.usgs.gov/products/aster_policies\">ASTER GDEM</a>"
    #>   .. .. ..$ Hillshade     :List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant    : chr "asterh"
    #>   .. .. .. .. ..$ maxZoom    : int 18
    #>   .. .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer} <a href=\"https://lpdaac.usgs.gov/products/aster_policies\">ASTER GDEM</a>, <a href"| __truncated__
    #>   .. .. ..$ ElementsAtRisk:List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ variant    : chr "elements_at_risk"
    #>   .. .. .. .. ..$ attribution: chr "{attribution.OpenMapSurfer}{attribution.OpenStreetMap}"
    #>   ..$ Hydda           :List of 3
    #>   .. ..$ url     : chr "//{s}.tile.openstreetmap.se/hydda/{variant}/{z}/{x}/{y}.png"
    #>   .. ..$ options :List of 3
    #>   .. .. ..$ maxZoom    : int 18
    #>   .. .. ..$ variant    : chr "full"
    #>   .. .. ..$ attribution: chr "Tiles courtesy of <a href=\"http://openstreetmap.se/\" target=\"_blank\">OpenStreetMap Sweden</a> &mdash; Map d"| __truncated__
    #>   .. ..$ variants:List of 3
    #>   .. .. ..$ Full          : chr "full"
    #>   .. .. ..$ Base          : chr "base"
    #>   .. .. ..$ RoadsAndLabels: chr "roads_and_labels"
    #>   ..$ MapBox          :List of 2
    #>   .. ..$ url    : chr "https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}{r}.png?access_token={accessToken}"
    #>   .. ..$ options:List of 4
    #>   .. .. ..$ attribution: chr "<a href=\"https://www.mapbox.com/about/maps/\" target=\"_blank\">&copy; Mapbox</a> {attribution.OpenStreetMap} "| __truncated__
    #>   .. .. ..$ subdomains : chr "abcd"
    #>   .. .. ..$ id         : chr "mapbox.streets"
    #>   .. .. ..$ accessToken: chr "<insert your access token here>"
    #>   ..$ Stamen          :List of 3
    #>   .. ..$ url     : chr "//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}{r}.{ext}"
    #>   .. ..$ options :List of 6
    #>   .. .. ..$ attribution: chr "Map tiles by <a href=\"http://stamen.com\">Stamen Design</a>, <a href=\"http://creativecommons.org/licenses/by/"| __truncated__
    #>   .. .. ..$ subdomains : chr "abcd"
    #>   .. .. ..$ minZoom    : int 0
    #>   .. .. ..$ maxZoom    : int 20
    #>   .. .. ..$ variant    : chr "toner"
    #>   .. .. ..$ ext        : chr "png"
    #>   .. ..$ variants:List of 11
    #>   .. .. ..$ Toner            : chr "toner"
    #>   .. .. ..$ TonerBackground  : chr "toner-background"
    #>   .. .. ..$ TonerHybrid      : chr "toner-hybrid"
    #>   .. .. ..$ TonerLines       : chr "toner-lines"
    #>   .. .. ..$ TonerLabels      : chr "toner-labels"
    #>   .. .. ..$ TonerLite        : chr "toner-lite"
    #>   .. .. ..$ Watercolor       :List of 2
    #>   .. .. .. ..$ url    : chr "//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}.{ext}"
    #>   .. .. .. ..$ options:List of 4
    #>   .. .. .. .. ..$ variant: chr "watercolor"
    #>   .. .. .. .. ..$ ext    : chr "jpg"
    #>   .. .. .. .. ..$ minZoom: int 1
    #>   .. .. .. .. ..$ maxZoom: int 16
    #>   .. .. ..$ Terrain          :List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant: chr "terrain"
    #>   .. .. .. .. ..$ minZoom: int 0
    #>   .. .. .. .. ..$ maxZoom: int 18
    #>   .. .. ..$ TerrainBackground:List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant: chr "terrain-background"
    #>   .. .. .. .. ..$ minZoom: int 0
    #>   .. .. .. .. ..$ maxZoom: int 18
    #>   .. .. ..$ TopOSMRelief     :List of 2
    #>   .. .. .. ..$ url    : chr "//stamen-tiles-{s}.a.ssl.fastly.net/{variant}/{z}/{x}/{y}.{ext}"
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant: chr "toposm-color-relief"
    #>   .. .. .. .. ..$ ext    : chr "jpg"
    #>   .. .. .. .. ..$ bounds : int [1:2, 1:2] 22 51 -132 -56
    #>   .. .. ..$ TopOSMFeatures   :List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant: chr "toposm-features"
    #>   .. .. .. .. ..$ bounds : int [1:2, 1:2] 22 51 -132 -56
    #>   .. .. .. .. ..$ opacity: num 0.9
    #>   ..$ Esri            :List of 3
    #>   .. ..$ url     : chr "//server.arcgisonline.com/ArcGIS/rest/services/{variant}/MapServer/tile/{z}/{y}/{x}"
    #>   .. ..$ options :List of 2
    #>   .. .. ..$ variant    : chr "World_Street_Map"
    #>   .. .. ..$ attribution: chr "Tiles &copy; Esri"
    #>   .. ..$ variants:List of 10
    #>   .. .. ..$ WorldStreetMap   :List of 1
    #>   .. .. .. ..$ options:List of 1
    #>   .. .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Source: Esri, DeLorme, NAVTEQ, USGS, Intermap, iPC, NRCAN, Esri Japan, METI, Esri Ch"| __truncated__
    #>   .. .. ..$ DeLorme          :List of 1
    #>   .. .. .. ..$ options:List of 4
    #>   .. .. .. .. ..$ variant    : chr "Specialty/DeLorme_World_Base_Map"
    #>   .. .. .. .. ..$ minZoom    : int 1
    #>   .. .. .. .. ..$ maxZoom    : int 11
    #>   .. .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Copyright: &copy;2012 DeLorme"
    #>   .. .. ..$ WorldTopoMap     :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ variant    : chr "World_Topo_Map"
    #>   .. .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Esri, DeLorme, NAVTEQ, TomTom, Intermap, iPC, USGS, FAO, NPS, NRCAN, GeoBase, Kadast"| __truncated__
    #>   .. .. ..$ WorldImagery     :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ variant    : chr "World_Imagery"
    #>   .. .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-"| __truncated__
    #>   .. .. ..$ WorldTerrain     :List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant    : chr "World_Terrain_Base"
    #>   .. .. .. .. ..$ maxZoom    : int 13
    #>   .. .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Source: USGS, Esri, TANA, DeLorme, and NPS"
    #>   .. .. ..$ WorldShadedRelief:List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant    : chr "World_Shaded_Relief"
    #>   .. .. .. .. ..$ maxZoom    : int 13
    #>   .. .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Source: Esri"
    #>   .. .. ..$ WorldPhysical    :List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant    : chr "World_Physical_Map"
    #>   .. .. .. .. ..$ maxZoom    : int 8
    #>   .. .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Source: US National Park Service"
    #>   .. .. ..$ OceanBasemap     :List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant    : chr "Ocean_Basemap"
    #>   .. .. .. .. ..$ maxZoom    : int 13
    #>   .. .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Sources: GEBCO, NOAA, CHS, OSU, UNH, CSUMB, National Geographic, DeLorme, NAVTEQ, and Esri"
    #>   .. .. ..$ NatGeoWorldMap   :List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant    : chr "NatGeo_World_Map"
    #>   .. .. .. .. ..$ maxZoom    : int 16
    #>   .. .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; National Geographic, Esri, DeLorme, NAVTEQ, UNEP-WCMC, USGS, NASA, ESA, METI, NRCAN,"| __truncated__
    #>   .. .. ..$ WorldGrayCanvas  :List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ variant    : chr "Canvas/World_Light_Gray_Base"
    #>   .. .. .. .. ..$ maxZoom    : int 16
    #>   .. .. .. .. ..$ attribution: chr "{attribution.Esri} &mdash; Esri, DeLorme, NAVTEQ"
    #>   ..$ OpenWeatherMap  :List of 3
    #>   .. ..$ url     : chr "http://{s}.tile.openweathermap.org/map/{variant}/{z}/{x}/{y}.png?appid={apiKey}"
    #>   .. ..$ options :List of 4
    #>   .. .. ..$ maxZoom    : int 19
    #>   .. .. ..$ attribution: chr "Map data &copy; <a href=\"http://openweathermap.org\">OpenWeatherMap</a>"
    #>   .. .. ..$ apiKey     : chr "<insert your api key here>"
    #>   .. .. ..$ opacity    : num 0.5
    #>   .. ..$ variants:List of 11
    #>   .. .. ..$ Clouds              : chr "clouds"
    #>   .. .. ..$ CloudsClassic       : chr "clouds_cls"
    #>   .. .. ..$ Precipitation       : chr "precipitation"
    #>   .. .. ..$ PrecipitationClassic: chr "precipitation_cls"
    #>   .. .. ..$ Rain                : chr "rain"
    #>   .. .. ..$ RainClassic         : chr "rain_cls"
    #>   .. .. ..$ Pressure            : chr "pressure"
    #>   .. .. ..$ PressureContour     : chr "pressure_cntr"
    #>   .. .. ..$ Wind                : chr "wind"
    #>   .. .. ..$ Temperature         : chr "temp"
    #>   .. .. ..$ Snow                : chr "snow"
    #>   ..$ HERE            :List of 3
    #>   .. ..$ url     : chr "https://{s}.{base}.maps.api.here.com/maptile/2.1/{type}/{mapID}/{variant}/{z}/{x}/{y}/{size}/{format}?app_id={a"| __truncated__
    #>   .. ..$ options :List of 12
    #>   .. .. ..$ attribution: chr "Map &copy; 1987-2019 <a href=\"http://developer.here.com\">HERE</a>"
    #>   .. .. ..$ subdomains : chr "1234"
    #>   .. .. ..$ mapID      : chr "newest"
    #>   .. .. ..$ app_id     : chr "<insert your app_id here>"
    #>   .. .. ..$ app_code   : chr "<insert your app_code here>"
    #>   .. .. ..$ base       : chr "base"
    #>   .. .. ..$ variant    : chr "normal.day"
    #>   .. .. ..$ maxZoom    : int 20
    #>   .. .. ..$ type       : chr "maptile"
    #>   .. .. ..$ language   : chr "eng"
    #>   .. .. ..$ format     : chr "png8"
    #>   .. .. ..$ size       : chr "256"
    #>   .. ..$ variants:List of 28
    #>   .. .. ..$ normalDay               : chr "normal.day"
    #>   .. .. ..$ normalDayCustom         : chr "normal.day.custom"
    #>   .. .. ..$ normalDayGrey           : chr "normal.day.grey"
    #>   .. .. ..$ normalDayMobile         : chr "normal.day.mobile"
    #>   .. .. ..$ normalDayGreyMobile     : chr "normal.day.grey.mobile"
    #>   .. .. ..$ normalDayTransit        : chr "normal.day.transit"
    #>   .. .. ..$ normalDayTransitMobile  : chr "normal.day.transit.mobile"
    #>   .. .. ..$ normalNight             : chr "normal.night"
    #>   .. .. ..$ normalNightMobile       : chr "normal.night.mobile"
    #>   .. .. ..$ normalNightGrey         : chr "normal.night.grey"
    #>   .. .. ..$ normalNightGreyMobile   : chr "normal.night.grey.mobile"
    #>   .. .. ..$ normalNightTransit      : chr "normal.night.transit"
    #>   .. .. ..$ normalNightTransitMobile: chr "normal.night.transit.mobile"
    #>   .. .. ..$ reducedDay              : chr "reduced.day"
    #>   .. .. ..$ reducedNight            : chr "reduced.night"
    #>   .. .. ..$ basicMap                :List of 1
    #>   .. .. .. ..$ options:List of 1
    #>   .. .. .. .. ..$ type: chr "basetile"
    #>   .. .. ..$ mapLabels               :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ type  : chr "labeltile"
    #>   .. .. .. .. ..$ format: chr "png"
    #>   .. .. ..$ trafficFlow             :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ base: chr "traffic"
    #>   .. .. .. .. ..$ type: chr "flowtile"
    #>   .. .. ..$ carnavDayGrey           : chr "carnav.day.grey"
    #>   .. .. ..$ hybridDay               :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. .. ..$ variant: chr "hybrid.day"
    #>   .. .. ..$ hybridDayMobile         :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. .. ..$ variant: chr "hybrid.day.mobile"
    #>   .. .. ..$ hybridDayTransit        :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. .. ..$ variant: chr "hybrid.day.transit"
    #>   .. .. ..$ hybridDayGrey           :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. .. ..$ variant: chr "hybrid.grey.day"
    #>   .. .. ..$ pedestrianDay           : chr "pedestrian.day"
    #>   .. .. ..$ pedestrianNight         : chr "pedestrian.night"
    #>   .. .. ..$ satelliteDay            :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. .. ..$ variant: chr "satellite.day"
    #>   .. .. ..$ terrainDay              :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. .. ..$ variant: chr "terrain.day"
    #>   .. .. ..$ terrainDayMobile        :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ base   : chr "aerial"
    #>   .. .. .. .. ..$ variant: chr "terrain.day.mobile"
    #>   ..$ FreeMapSK       :List of 2
    #>   .. ..$ url    : chr "http://t{s}.freemap.sk/T/{z}/{x}/{y}.jpeg"
    #>   .. ..$ options:List of 5
    #>   .. .. ..$ minZoom    : int 8
    #>   .. .. ..$ maxZoom    : int 16
    #>   .. .. ..$ subdomains : chr "1234"
    #>   .. .. ..$ bounds     : num [1:2, 1:2] 47.2 49.8 16 22.6
    #>   .. .. ..$ attribution: chr "{attribution.OpenStreetMap}, vizualization CC-By-SA 2.0 <a href=\"http://freemap.sk\">Freemap.sk</a>"
    #>   ..$ MtbMap          :List of 2
    #>   .. ..$ url    : chr "http://tile.mtbmap.cz/mtbmap_tiles/{z}/{x}/{y}.png"
    #>   .. ..$ options:List of 1
    #>   .. .. ..$ attribution: chr "{attribution.OpenStreetMap} &amp; USGS"
    #>   ..$ CartoDB         :List of 3
    #>   .. ..$ url     : chr "https://{s}.basemaps.cartocdn.com/{variant}/{z}/{x}/{y}{r}.png"
    #>   .. ..$ options :List of 4
    #>   .. .. ..$ attribution: chr "{attribution.OpenStreetMap} &copy; <a href=\"https://carto.com/attributions\">CARTO</a>"
    #>   .. .. ..$ subdomains : chr "abcd"
    #>   .. .. ..$ maxZoom    : int 19
    #>   .. .. ..$ variant    : chr "light_all"
    #>   .. ..$ variants:List of 10
    #>   .. .. ..$ Positron            : chr "light_all"
    #>   .. .. ..$ PositronNoLabels    : chr "light_nolabels"
    #>   .. .. ..$ PositronOnlyLabels  : chr "light_only_labels"
    #>   .. .. ..$ DarkMatter          : chr "dark_all"
    #>   .. .. ..$ DarkMatterNoLabels  : chr "dark_nolabels"
    #>   .. .. ..$ DarkMatterOnlyLabels: chr "dark_only_labels"
    #>   .. .. ..$ Voyager             : chr "rastertiles/voyager"
    #>   .. .. ..$ VoyagerNoLabels     : chr "rastertiles/voyager_nolabels"
    #>   .. .. ..$ VoyagerOnlyLabels   : chr "rastertiles/voyager_only_labels"
    #>   .. .. ..$ VoyagerLabelsUnder  : chr "rastertiles/voyager_labels_under"
    #>   ..$ HikeBike        :List of 3
    #>   .. ..$ url     : chr "https://tiles.wmflabs.org/{variant}/{z}/{x}/{y}.png"
    #>   .. ..$ options :List of 3
    #>   .. .. ..$ maxZoom    : int 19
    #>   .. .. ..$ attribution: chr "{attribution.OpenStreetMap}"
    #>   .. .. ..$ variant    : chr "hikebike"
    #>   .. ..$ variants:List of 2
    #>   .. .. ..$ HikeBike   : Named list()
    #>   .. .. ..$ HillShading:List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ maxZoom: int 15
    #>   .. .. .. .. ..$ variant: chr "hillshading"
    #>   ..$ BasemapAT       :List of 3
    #>   .. ..$ url     : chr "//maps{s}.wien.gv.at/basemap/{variant}/normal/google3857/{z}/{y}/{x}.{format}"
    #>   .. ..$ options :List of 6
    #>   .. .. ..$ maxZoom    : int 19
    #>   .. .. ..$ attribution: chr "Datenquelle: <a href=\"https://www.basemap.at\">basemap.at</a>"
    #>   .. .. ..$ subdomains : chr [1:5] "" "1" "2" "3" ...
    #>   .. .. ..$ format     : chr "png"
    #>   .. .. ..$ bounds     : num [1:2, 1:2] 46.36 49.04 8.78 17.19
    #>   .. .. ..$ variant    : chr "geolandbasemap"
    #>   .. ..$ variants:List of 5
    #>   .. .. ..$ basemap  :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ maxZoom: int 20
    #>   .. .. .. .. ..$ variant: chr "geolandbasemap"
    #>   .. .. ..$ grau     : chr "bmapgrau"
    #>   .. .. ..$ overlay  : chr "bmapoverlay"
    #>   .. .. ..$ highdpi  :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ variant: chr "bmaphidpi"
    #>   .. .. .. .. ..$ format : chr "jpeg"
    #>   .. .. ..$ orthofoto:List of 1
    #>   .. .. .. ..$ options:List of 3
    #>   .. .. .. .. ..$ maxZoom: int 20
    #>   .. .. .. .. ..$ variant: chr "bmaporthofoto30cm"
    #>   .. .. .. .. ..$ format : chr "jpeg"
    #>   ..$ nlmaps          :List of 3
    #>   .. ..$ url     : chr "//geodata.nationaalgeoregister.nl/tiles/service/wmts/{variant}/EPSG:3857/{z}/{x}/{y}.png"
    #>   .. ..$ options :List of 4
    #>   .. .. ..$ minZoom    : int 6
    #>   .. .. ..$ maxZoom    : int 19
    #>   .. .. ..$ bounds     : num [1:2, 1:2] 50.5 54 3.25 7.6
    #>   .. .. ..$ attribution: chr "Kaartgegevens &copy; <a href=\"kadaster.nl\">Kadaster</a>"
    #>   .. ..$ variants:List of 4
    #>   .. .. ..$ standaard: chr "brtachtergrondkaart"
    #>   .. .. ..$ pastel   : chr "brtachtergrondkaartpastel"
    #>   .. .. ..$ grijs    : chr "brtachtergrondkaartgrijs"
    #>   .. .. ..$ luchtfoto:List of 1
    #>   .. .. .. ..$ url: chr "//geodata.nationaalgeoregister.nl/luchtfoto/rgb/wmts/1.0.0/2016_ortho25/EPSG:3857/{z}/{x}/{y}.png"
    #>   ..$ NASAGIBS        :List of 3
    #>   .. ..$ url     : chr "https://map1.vis.earthdata.nasa.gov/wmts-webmerc/{variant}/default/{time}/{tilematrixset}{maxZoom}/{z}/{y}/{x}.{format}"
    #>   .. ..$ options :List of 7
    #>   .. .. ..$ attribution  : chr "Imagery provided by services from the Global Imagery Browse Services (GIBS), operated by the NASA/GSFC/Earth Sc"| __truncated__
    #>   .. .. ..$ bounds       : num [1:2, 1:2] -85.1 85.1 -180 180
    #>   .. .. ..$ minZoom      : int 1
    #>   .. .. ..$ maxZoom      : int 9
    #>   .. .. ..$ format       : chr "jpg"
    #>   .. .. ..$ time         : chr ""
    #>   .. .. ..$ tilematrixset: chr "GoogleMapsCompatible_Level"
    #>   .. ..$ variants:List of 7
    #>   .. .. ..$ ModisTerraTrueColorCR: chr "MODIS_Terra_CorrectedReflectance_TrueColor"
    #>   .. .. ..$ ModisTerraBands367CR : chr "MODIS_Terra_CorrectedReflectance_Bands367"
    #>   .. .. ..$ ViirsEarthAtNight2012:List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ variant: chr "VIIRS_CityLights_2012"
    #>   .. .. .. .. ..$ maxZoom: int 8
    #>   .. .. ..$ ModisTerraLSTDay     :List of 1
    #>   .. .. .. ..$ options:List of 4
    #>   .. .. .. .. ..$ variant: chr "MODIS_Terra_Land_Surface_Temp_Day"
    #>   .. .. .. .. ..$ format : chr "png"
    #>   .. .. .. .. ..$ maxZoom: int 7
    #>   .. .. .. .. ..$ opacity: num 0.75
    #>   .. .. ..$ ModisTerraSnowCover  :List of 1
    #>   .. .. .. ..$ options:List of 4
    #>   .. .. .. .. ..$ variant: chr "MODIS_Terra_Snow_Cover"
    #>   .. .. .. .. ..$ format : chr "png"
    #>   .. .. .. .. ..$ maxZoom: int 8
    #>   .. .. .. .. ..$ opacity: num 0.75
    #>   .. .. ..$ ModisTerraAOD        :List of 1
    #>   .. .. .. ..$ options:List of 4
    #>   .. .. .. .. ..$ variant: chr "MODIS_Terra_Aerosol"
    #>   .. .. .. .. ..$ format : chr "png"
    #>   .. .. .. .. ..$ maxZoom: int 6
    #>   .. .. .. .. ..$ opacity: num 0.75
    #>   .. .. ..$ ModisTerraChlorophyll:List of 1
    #>   .. .. .. ..$ options:List of 4
    #>   .. .. .. .. ..$ variant: chr "MODIS_Terra_Chlorophyll_A"
    #>   .. .. .. .. ..$ format : chr "png"
    #>   .. .. .. .. ..$ maxZoom: int 7
    #>   .. .. .. .. ..$ opacity: num 0.75
    #>   ..$ NLS             :List of 2
    #>   .. ..$ url    : chr "//nls-{s}.tileserver.com/nls/{z}/{x}/{y}.jpg"
    #>   .. ..$ options:List of 5
    #>   .. .. ..$ attribution: chr "<a href=\"http://geo.nls.uk/maps/\">National Library of Scotland Historic Maps</a>"
    #>   .. .. ..$ bounds     : num [1:2, 1:2] 49.6 61.7 -12 3
    #>   .. .. ..$ minZoom    : int 1
    #>   .. .. ..$ maxZoom    : int 18
    #>   .. .. ..$ subdomains : chr "0123"
    #>   ..$ JusticeMap      :List of 3
    #>   .. ..$ url     : chr "http://www.justicemap.org/tile/{size}/{variant}/{z}/{x}/{y}.png"
    #>   .. ..$ options :List of 3
    #>   .. .. ..$ attribution: chr "<a href=\"http://www.justicemap.org/terms.php\">Justice Map</a>"
    #>   .. .. ..$ size       : chr "county"
    #>   .. .. ..$ bounds     : int [1:2, 1:2] 14 72 -180 -56
    #>   .. ..$ variants:List of 9
    #>   .. .. ..$ income        : chr "income"
    #>   .. .. ..$ americanIndian: chr "indian"
    #>   .. .. ..$ asian         : chr "asian"
    #>   .. .. ..$ black         : chr "black"
    #>   .. .. ..$ hispanic      : chr "hispanic"
    #>   .. .. ..$ multi         : chr "multi"
    #>   .. .. ..$ nonWhite      : chr "nonwhite"
    #>   .. .. ..$ white         : chr "white"
    #>   .. .. ..$ plurality     : chr "plural"
    #>   ..$ Wikimedia       :List of 2
    #>   .. ..$ url    : chr "https://maps.wikimedia.org/osm-intl/{z}/{x}/{y}{r}.png"
    #>   .. ..$ options:List of 3
    #>   .. .. ..$ attribution: chr "<a href=\"https://wikimediafoundation.org/wiki/Maps_Terms_of_Use\">Wikimedia</a>"
    #>   .. .. ..$ minZoom    : int 1
    #>   .. .. ..$ maxZoom    : int 19
    #>   ..$ GeoportailFrance:List of 3
    #>   .. ..$ url     : chr "https://wxs.ign.fr/{apikey}/geoportail/wmts?REQUEST=GetTile&SERVICE=WMTS&VERSION=1.0.0&STYLE={style}&TILEMATRIX"| __truncated__
    #>   .. ..$ options :List of 8
    #>   .. .. ..$ attribution: chr "<a target=\"_blank\" href=\"https://www.geoportail.gouv.fr/\">Geoportail France</a>"
    #>   .. .. ..$ bounds     : int [1:2, 1:2] -75 81 -180 180
    #>   .. .. ..$ minZoom    : int 2
    #>   .. .. ..$ maxZoom    : int 18
    #>   .. .. ..$ apikey     : chr "choisirgeoportail"
    #>   .. .. ..$ format     : chr "image/jpeg"
    #>   .. .. ..$ style      : chr "normal"
    #>   .. .. ..$ variant    : chr "GEOGRAPHICALGRIDSYSTEMS.MAPS.SCAN-EXPRESS.STANDARD"
    #>   .. ..$ variants:List of 4
    #>   .. .. ..$ parcels:List of 1
    #>   .. .. .. ..$ options:List of 4
    #>   .. .. .. .. ..$ variant: chr "CADASTRALPARCELS.PARCELS"
    #>   .. .. .. .. ..$ maxZoom: int 20
    #>   .. .. .. .. ..$ style  : chr "bdparcellaire"
    #>   .. .. .. .. ..$ format : chr "image/png"
    #>   .. .. ..$ ignMaps: chr "GEOGRAPHICALGRIDSYSTEMS.MAPS"
    #>   .. .. ..$ maps   : chr "GEOGRAPHICALGRIDSYSTEMS.MAPS.SCAN-EXPRESS.STANDARD"
    #>   .. .. ..$ orthos :List of 1
    #>   .. .. .. ..$ options:List of 2
    #>   .. .. .. .. ..$ maxZoom: int 19
    #>   .. .. .. .. ..$ variant: chr "ORTHOIMAGERY.ORTHOPHOTOS"
    #>   ..$ OneMapSG        :List of 3
    #>   .. ..$ url     : chr "//maps-{s}.onemap.sg/v3/{variant}/{z}/{x}/{y}.png"
    #>   .. ..$ options :List of 5
    #>   .. .. ..$ variant    : chr "Default"
    #>   .. .. ..$ minZoom    : int 11
    #>   .. .. ..$ maxZoom    : int 18
    #>   .. .. ..$ bounds     : num [1:2, 1:2] 1.56 1.16 104.11 103.5
    #>   .. .. ..$ attribution: chr "<img src=\"https://docs.onemap.sg/maps/images/oneMap64-01.png\" style=\"height:20px;width:20px;\"/> New OneMap "| __truncated__
    #>   .. ..$ variants:List of 5
    #>   .. .. ..$ Default : chr "Default"
    #>   .. .. ..$ Night   : chr "Night"
    #>   .. .. ..$ Original: chr "Original"
    #>   .. .. ..$ Grey    : chr "Grey"
    #>   .. .. ..$ LandLot : chr "LandLot"
    #>  $ src              : chr "(function (root, factory) {\n\tif (typeof define === 'function' && define.amd) {\n\t\t// AMD. Register as an an"| __truncated__
    #>  - attr(*, "class")= chr "leaflet_providers"

</div>

### Fetch custom providers

Users may use a specific version number of `leaflet-providers.js` by
passing the version number to `use_providers()`.

``` r
# Retrieve v 1.7.0 
providers_170 <- get_providers("1.7.0") 

# Load custom providers data
use_providers(providers_170)
# shorthand method
use_providers("1.7.0")

# Reset loaded providers to default providers
use_providers()
```

Now that `use_providers()` has been called with a custom
`leaflet.providers` object obtained via `get_providers()` (in this case,
a previous version of the data),
[`leaflet`](http://rstudio.github.io/leaflet) will use the custom
providers instead of the default provider data.

> Note that the package `V8` is required for `get_providers()`.

### View the loaded providers data

#### The version number of the source leaflet-providers.js

``` r
providers_loaded()$version_num
#> [1] "1.8.0"
```

#### Supported tile providers

``` r
str(providers_loaded()$providers)
```

<div style="height:150px; overflow-y: scroll;">

    #> List of 157
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
    #>  $ Thunderforest.MobileAtlas          : chr "Thunderforest.MobileAtlas"
    #>  $ Thunderforest.Neighbourhood        : chr "Thunderforest.Neighbourhood"
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
    #>   ..$ variants:List of 9
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
    #>   .. ..$ MobileAtlas  : chr "mobile-atlas"
    #>   .. ..$ Neighbourhood: chr "neighbourhood"
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
