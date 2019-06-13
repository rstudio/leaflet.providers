
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

``` r
library(leaflet.providers)
## View supported tile providers
names(providers)
#>   [1] "OpenStreetMap"                      
#>   [2] "OpenStreetMap.Mapnik"               
#>   [3] "OpenStreetMap.DE"                   
#>   [4] "OpenStreetMap.CH"                   
#>   [5] "OpenStreetMap.France"               
#>   [6] "OpenStreetMap.HOT"                  
#>   [7] "OpenStreetMap.BZH"                  
#>   [8] "OpenSeaMap"                         
#>   [9] "OpenPtMap"                          
#>  [10] "OpenTopoMap"                        
#>  [11] "OpenRailwayMap"                     
#>  [12] "OpenFireMap"                        
#>  [13] "SafeCast"                           
#>  [14] "Thunderforest"                      
#>  [15] "Thunderforest.OpenCycleMap"         
#>  [16] "Thunderforest.Transport"            
#>  [17] "Thunderforest.TransportDark"        
#>  [18] "Thunderforest.SpinalMap"            
#>  [19] "Thunderforest.Landscape"            
#>  [20] "Thunderforest.Outdoors"             
#>  [21] "Thunderforest.Pioneer"              
#>  [22] "Thunderforest.MobileAtlas"          
#>  [23] "Thunderforest.Neighbourhood"        
#>  [24] "OpenMapSurfer"                      
#>  [25] "OpenMapSurfer.Roads"                
#>  [26] "OpenMapSurfer.Hybrid"               
#>  [27] "OpenMapSurfer.AdminBounds"          
#>  [28] "OpenMapSurfer.ContourLines"         
#>  [29] "OpenMapSurfer.Hillshade"            
#>  [30] "OpenMapSurfer.ElementsAtRisk"       
#>  [31] "Hydda"                              
#>  [32] "Hydda.Full"                         
#>  [33] "Hydda.Base"                         
#>  [34] "Hydda.RoadsAndLabels"               
#>  [35] "MapBox"                             
#>  [36] "Stamen"                             
#>  [37] "Stamen.Toner"                       
#>  [38] "Stamen.TonerBackground"             
#>  [39] "Stamen.TonerHybrid"                 
#>  [40] "Stamen.TonerLines"                  
#>  [41] "Stamen.TonerLabels"                 
#>  [42] "Stamen.TonerLite"                   
#>  [43] "Stamen.Watercolor"                  
#>  [44] "Stamen.Terrain"                     
#>  [45] "Stamen.TerrainBackground"           
#>  [46] "Stamen.TopOSMRelief"                
#>  [47] "Stamen.TopOSMFeatures"              
#>  [48] "Esri"                               
#>  [49] "Esri.WorldStreetMap"                
#>  [50] "Esri.DeLorme"                       
#>  [51] "Esri.WorldTopoMap"                  
#>  [52] "Esri.WorldImagery"                  
#>  [53] "Esri.WorldTerrain"                  
#>  [54] "Esri.WorldShadedRelief"             
#>  [55] "Esri.WorldPhysical"                 
#>  [56] "Esri.OceanBasemap"                  
#>  [57] "Esri.NatGeoWorldMap"                
#>  [58] "Esri.WorldGrayCanvas"               
#>  [59] "OpenWeatherMap"                     
#>  [60] "OpenWeatherMap.Clouds"              
#>  [61] "OpenWeatherMap.CloudsClassic"       
#>  [62] "OpenWeatherMap.Precipitation"       
#>  [63] "OpenWeatherMap.PrecipitationClassic"
#>  [64] "OpenWeatherMap.Rain"                
#>  [65] "OpenWeatherMap.RainClassic"         
#>  [66] "OpenWeatherMap.Pressure"            
#>  [67] "OpenWeatherMap.PressureContour"     
#>  [68] "OpenWeatherMap.Wind"                
#>  [69] "OpenWeatherMap.Temperature"         
#>  [70] "OpenWeatherMap.Snow"                
#>  [71] "HERE"                               
#>  [72] "HERE.normalDay"                     
#>  [73] "HERE.normalDayCustom"               
#>  [74] "HERE.normalDayGrey"                 
#>  [75] "HERE.normalDayMobile"               
#>  [76] "HERE.normalDayGreyMobile"           
#>  [77] "HERE.normalDayTransit"              
#>  [78] "HERE.normalDayTransitMobile"        
#>  [79] "HERE.normalNight"                   
#>  [80] "HERE.normalNightMobile"             
#>  [81] "HERE.normalNightGrey"               
#>  [82] "HERE.normalNightGreyMobile"         
#>  [83] "HERE.normalNightTransit"            
#>  [84] "HERE.normalNightTransitMobile"      
#>  [85] "HERE.reducedDay"                    
#>  [86] "HERE.reducedNight"                  
#>  [87] "HERE.basicMap"                      
#>  [88] "HERE.mapLabels"                     
#>  [89] "HERE.trafficFlow"                   
#>  [90] "HERE.carnavDayGrey"                 
#>  [91] "HERE.hybridDay"                     
#>  [92] "HERE.hybridDayMobile"               
#>  [93] "HERE.hybridDayTransit"              
#>  [94] "HERE.hybridDayGrey"                 
#>  [95] "HERE.pedestrianDay"                 
#>  [96] "HERE.pedestrianNight"               
#>  [97] "HERE.satelliteDay"                  
#>  [98] "HERE.terrainDay"                    
#>  [99] "HERE.terrainDayMobile"              
#> [100] "FreeMapSK"                          
#> [101] "MtbMap"                             
#> [102] "CartoDB"                            
#> [103] "CartoDB.Positron"                   
#> [104] "CartoDB.PositronNoLabels"           
#> [105] "CartoDB.PositronOnlyLabels"         
#> [106] "CartoDB.DarkMatter"                 
#> [107] "CartoDB.DarkMatterNoLabels"         
#> [108] "CartoDB.DarkMatterOnlyLabels"       
#> [109] "CartoDB.Voyager"                    
#> [110] "CartoDB.VoyagerNoLabels"            
#> [111] "CartoDB.VoyagerOnlyLabels"          
#> [112] "CartoDB.VoyagerLabelsUnder"         
#> [113] "HikeBike"                           
#> [114] "HikeBike.HikeBike"                  
#> [115] "HikeBike.HillShading"               
#> [116] "BasemapAT"                          
#> [117] "BasemapAT.basemap"                  
#> [118] "BasemapAT.grau"                     
#> [119] "BasemapAT.overlay"                  
#> [120] "BasemapAT.highdpi"                  
#> [121] "BasemapAT.orthofoto"                
#> [122] "nlmaps"                             
#> [123] "nlmaps.standaard"                   
#> [124] "nlmaps.pastel"                      
#> [125] "nlmaps.grijs"                       
#> [126] "nlmaps.luchtfoto"                   
#> [127] "NASAGIBS"                           
#> [128] "NASAGIBS.ModisTerraTrueColorCR"     
#> [129] "NASAGIBS.ModisTerraBands367CR"      
#> [130] "NASAGIBS.ViirsEarthAtNight2012"     
#> [131] "NASAGIBS.ModisTerraLSTDay"          
#> [132] "NASAGIBS.ModisTerraSnowCover"       
#> [133] "NASAGIBS.ModisTerraAOD"             
#> [134] "NASAGIBS.ModisTerraChlorophyll"     
#> [135] "NLS"                                
#> [136] "JusticeMap"                         
#> [137] "JusticeMap.income"                  
#> [138] "JusticeMap.americanIndian"          
#> [139] "JusticeMap.asian"                   
#> [140] "JusticeMap.black"                   
#> [141] "JusticeMap.hispanic"                
#> [142] "JusticeMap.multi"                   
#> [143] "JusticeMap.nonWhite"                
#> [144] "JusticeMap.white"                   
#> [145] "JusticeMap.plurality"               
#> [146] "Wikimedia"                          
#> [147] "GeoportailFrance"                   
#> [148] "GeoportailFrance.parcels"           
#> [149] "GeoportailFrance.ignMaps"           
#> [150] "GeoportailFrance.maps"              
#> [151] "GeoportailFrance.orthos"            
#> [152] "OneMapSG"                           
#> [153] "OneMapSG.Default"                   
#> [154] "OneMapSG.Night"                     
#> [155] "OneMapSG.Original"                  
#> [156] "OneMapSG.Grey"                      
#> [157] "OneMapSG.LandLot"
```
