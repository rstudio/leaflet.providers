
<!-- README.md is generated from README.Rmd. Please edit that file -->

# leaflet.providers

<!-- badges: start -->

[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/leslie-huang/leaflet.providers?branch=master&svg=true)](https://ci.appveyor.com/project/leslie-huang/leaflet.providers)
[![Travis build
status](https://travis-ci.org/leslie-huang/leaflet.providers.svg?branch=master)](https://travis-ci.org/leslie-huang/leaflet.providers)
[![Codecov test
coverage](https://codecov.io/gh/leslie-huang/leaflet.providers/branch/master/graph/badge.svg)](https://codecov.io/gh/leslie-huang/leaflet.providers?branch=master)

<!-- badges: end -->

The goal of leaflet.providers is to provide regularly updated data on
the third-party tile providers supported by `leaflet`. This package is
to be used with `leaflet`.

## Installation

You can install the released version of leaflet.providers from
[CRAN](https://CRAN.R-project.org):

``` r
# CRAN version
install.packages("leaflet.providers")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("leslie-huang/leaflet.providers")
```

## Example

This is a basic example of the data that is automatically loaded with
`leaflet.providers`.

### View supported tile providers

``` r
library(leaflet.providers)
str(providers)
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
#>   [list output truncated]
```

### View snippet of providers.details

``` r
str(providers.details, vec.len = 1, list.len=3)
#> List of 27
#>  $ OpenStreetMap   :List of 3
#>   ..$ url     : chr "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
#>   ..$ options :List of 2
#>   .. ..$ maxZoom    : int 19
#>   .. ..$ attribution: chr "&copy; <a href=\"https://www.openstreetmap.org/copyright\">OpenStreetMap</a> contributors"
#>   ..$ variants:List of 6
#>   .. ..$ Mapnik: Named list()
#>   .. ..$ DE    :List of 2
#>   .. .. ..$ url    : chr "https://{s}.tile.openstreetmap.de/tiles/osmde/{z}/{x}/{y}.png"
#>   .. .. ..$ options:List of 1
#>   .. .. .. ..$ maxZoom: int 18
#>   .. ..$ CH    :List of 2
#>   .. .. ..$ url    : chr "https://tile.osm.ch/switzerland/{z}/{x}/{y}.png"
#>   .. .. ..$ options:List of 2
#>   .. .. .. ..$ maxZoom: int 18
#>   .. .. .. ..$ bounds : int [1:2, 1:2] 45 48 ...
#>   .. .. [list output truncated]
#>  $ OpenSeaMap      :List of 2
#>   ..$ url    : chr "https://tiles.openseamap.org/seamark/{z}/{x}/{y}.png"
#>   ..$ options:List of 1
#>   .. ..$ attribution: chr "Map data: &copy; <a href=\"http://www.openseamap.org\">OpenSeaMap</a> contributors"
#>  $ OpenPtMap       :List of 2
#>   ..$ url    : chr "http://openptmap.org/tiles/{z}/{x}/{y}.png"
#>   ..$ options:List of 2
#>   .. ..$ maxZoom    : int 17
#>   .. ..$ attribution: chr "Map data: &copy; <a href=\"http://www.openptmap.org\">OpenPtMap</a> contributors"
#>   [list output truncated]
```
