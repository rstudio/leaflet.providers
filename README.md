
<!-- README.md is generated from README.Rmd. Please edit that file -->

# leaflet.providers

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/leaflet.providers)](https://CRAN.R-project.org/package=leaflet.providers)
[![R-CMD-check](https://github.com/rstudio/leaflet.providers/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/rstudio/leaflet.providers/actions)
[![Codecov test
coverage](https://codecov.io/gh/rstudio/leaflet.providers/branch/main/graph/badge.svg)](https://app.codecov.io/gh/rstudio/leaflet.providers?branch=main)

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
pak::pak("rstudio/leaflet.providers")
```

## Example

The following are basic example of the default providers data that comes
`leaflet.providers` as well as the available methods to fetch and load
custom providers.

### Default providers

``` r
library(leaflet.providers)

str(providers_default(), max.level = 2)
```

<div style="height:150px; overflow-y: scroll;">

    #> List of 5
    #>  $ version_num      : chr "2.0.0"
    #>  $ providers        :List of 233
    #>   ..$ OpenStreetMap                         : chr "OpenStreetMap"
    #>   ..$ OpenStreetMap.Mapnik                  : chr "OpenStreetMap.Mapnik"
    #>   ..$ OpenStreetMap.DE                      : chr "OpenStreetMap.DE"
    #>   ..$ OpenStreetMap.CH                      : chr "OpenStreetMap.CH"
    #>   ..$ OpenStreetMap.France                  : chr "OpenStreetMap.France"
    #>   ..$ OpenStreetMap.HOT                     : chr "OpenStreetMap.HOT"
    #>   ..$ OpenStreetMap.BZH                     : chr "OpenStreetMap.BZH"
    #>   ..$ MapTilesAPI                           : chr "MapTilesAPI"
    #>   ..$ MapTilesAPI.OSMEnglish                : chr "MapTilesAPI.OSMEnglish"
    #>   ..$ MapTilesAPI.OSMFrancais               : chr "MapTilesAPI.OSMFrancais"
    #>   ..$ MapTilesAPI.OSMEspagnol               : chr "MapTilesAPI.OSMEspagnol"
    #>   ..$ OpenSeaMap                            : chr "OpenSeaMap"
    #>   ..$ OPNVKarte                             : chr "OPNVKarte"
    #>   ..$ OpenTopoMap                           : chr "OpenTopoMap"
    #>   ..$ OpenRailwayMap                        : chr "OpenRailwayMap"
    #>   ..$ OpenFireMap                           : chr "OpenFireMap"
    #>   ..$ SafeCast                              : chr "SafeCast"
    #>   ..$ Stadia                                : chr "Stadia"
    #>   ..$ Stadia.AlidadeSmooth                  : chr "Stadia.AlidadeSmooth"
    #>   ..$ Stadia.AlidadeSmoothDark              : chr "Stadia.AlidadeSmoothDark"
    #>   ..$ Stadia.OSMBright                      : chr "Stadia.OSMBright"
    #>   ..$ Stadia.Outdoors                       : chr "Stadia.Outdoors"
    #>   ..$ Stadia.StamenToner                    : chr "Stadia.StamenToner"
    #>   ..$ Stadia.StamenTonerBackground          : chr "Stadia.StamenTonerBackground"
    #>   ..$ Stadia.StamenTonerLines               : chr "Stadia.StamenTonerLines"
    #>   ..$ Stadia.StamenTonerLabels              : chr "Stadia.StamenTonerLabels"
    #>   ..$ Stadia.StamenTonerLite                : chr "Stadia.StamenTonerLite"
    #>   ..$ Stadia.StamenWatercolor               : chr "Stadia.StamenWatercolor"
    #>   ..$ Stadia.StamenTerrain                  : chr "Stadia.StamenTerrain"
    #>   ..$ Stadia.StamenTerrainBackground        : chr "Stadia.StamenTerrainBackground"
    #>   ..$ Stadia.StamenTerrainLabels            : chr "Stadia.StamenTerrainLabels"
    #>   ..$ Stadia.StamenTerrainLines             : chr "Stadia.StamenTerrainLines"
    #>   ..$ Thunderforest                         : chr "Thunderforest"
    #>   ..$ Thunderforest.OpenCycleMap            : chr "Thunderforest.OpenCycleMap"
    #>   ..$ Thunderforest.Transport               : chr "Thunderforest.Transport"
    #>   ..$ Thunderforest.TransportDark           : chr "Thunderforest.TransportDark"
    #>   ..$ Thunderforest.SpinalMap               : chr "Thunderforest.SpinalMap"
    #>   ..$ Thunderforest.Landscape               : chr "Thunderforest.Landscape"
    #>   ..$ Thunderforest.Outdoors                : chr "Thunderforest.Outdoors"
    #>   ..$ Thunderforest.Pioneer                 : chr "Thunderforest.Pioneer"
    #>   ..$ Thunderforest.MobileAtlas             : chr "Thunderforest.MobileAtlas"
    #>   ..$ Thunderforest.Neighbourhood           : chr "Thunderforest.Neighbourhood"
    #>   ..$ CyclOSM                               : chr "CyclOSM"
    #>   ..$ Jawg                                  : chr "Jawg"
    #>   ..$ Jawg.Streets                          : chr "Jawg.Streets"
    #>   ..$ Jawg.Terrain                          : chr "Jawg.Terrain"
    #>   ..$ Jawg.Sunny                            : chr "Jawg.Sunny"
    #>   ..$ Jawg.Dark                             : chr "Jawg.Dark"
    #>   ..$ Jawg.Light                            : chr "Jawg.Light"
    #>   ..$ Jawg.Matrix                           : chr "Jawg.Matrix"
    #>   ..$ MapBox                                : chr "MapBox"
    #>   ..$ MapTiler                              : chr "MapTiler"
    #>   ..$ MapTiler.Streets                      : chr "MapTiler.Streets"
    #>   ..$ MapTiler.Basic                        : chr "MapTiler.Basic"
    #>   ..$ MapTiler.Bright                       : chr "MapTiler.Bright"
    #>   ..$ MapTiler.Pastel                       : chr "MapTiler.Pastel"
    #>   ..$ MapTiler.Positron                     : chr "MapTiler.Positron"
    #>   ..$ MapTiler.Hybrid                       : chr "MapTiler.Hybrid"
    #>   ..$ MapTiler.Toner                        : chr "MapTiler.Toner"
    #>   ..$ MapTiler.Topo                         : chr "MapTiler.Topo"
    #>   ..$ MapTiler.Voyager                      : chr "MapTiler.Voyager"
    #>   ..$ TomTom                                : chr "TomTom"
    #>   ..$ TomTom.Basic                          : chr "TomTom.Basic"
    #>   ..$ TomTom.Hybrid                         : chr "TomTom.Hybrid"
    #>   ..$ TomTom.Labels                         : chr "TomTom.Labels"
    #>   ..$ Esri                                  : chr "Esri"
    #>   ..$ Esri.WorldStreetMap                   : chr "Esri.WorldStreetMap"
    #>   ..$ Esri.DeLorme                          : chr "Esri.DeLorme"
    #>   ..$ Esri.WorldTopoMap                     : chr "Esri.WorldTopoMap"
    #>   ..$ Esri.WorldImagery                     : chr "Esri.WorldImagery"
    #>   ..$ Esri.WorldTerrain                     : chr "Esri.WorldTerrain"
    #>   ..$ Esri.WorldShadedRelief                : chr "Esri.WorldShadedRelief"
    #>   ..$ Esri.WorldPhysical                    : chr "Esri.WorldPhysical"
    #>   ..$ Esri.OceanBasemap                     : chr "Esri.OceanBasemap"
    #>   ..$ Esri.NatGeoWorldMap                   : chr "Esri.NatGeoWorldMap"
    #>   ..$ Esri.WorldGrayCanvas                  : chr "Esri.WorldGrayCanvas"
    #>   ..$ OpenWeatherMap                        : chr "OpenWeatherMap"
    #>   ..$ OpenWeatherMap.Clouds                 : chr "OpenWeatherMap.Clouds"
    #>   ..$ OpenWeatherMap.CloudsClassic          : chr "OpenWeatherMap.CloudsClassic"
    #>   ..$ OpenWeatherMap.Precipitation          : chr "OpenWeatherMap.Precipitation"
    #>   ..$ OpenWeatherMap.PrecipitationClassic   : chr "OpenWeatherMap.PrecipitationClassic"
    #>   ..$ OpenWeatherMap.Rain                   : chr "OpenWeatherMap.Rain"
    #>   ..$ OpenWeatherMap.RainClassic            : chr "OpenWeatherMap.RainClassic"
    #>   ..$ OpenWeatherMap.Pressure               : chr "OpenWeatherMap.Pressure"
    #>   ..$ OpenWeatherMap.PressureContour        : chr "OpenWeatherMap.PressureContour"
    #>   ..$ OpenWeatherMap.Wind                   : chr "OpenWeatherMap.Wind"
    #>   ..$ OpenWeatherMap.Temperature            : chr "OpenWeatherMap.Temperature"
    #>   ..$ OpenWeatherMap.Snow                   : chr "OpenWeatherMap.Snow"
    #>   ..$ HERE                                  : chr "HERE"
    #>   ..$ HERE.normalDay                        : chr "HERE.normalDay"
    #>   ..$ HERE.normalDayCustom                  : chr "HERE.normalDayCustom"
    #>   ..$ HERE.normalDayGrey                    : chr "HERE.normalDayGrey"
    #>   ..$ HERE.normalDayMobile                  : chr "HERE.normalDayMobile"
    #>   ..$ HERE.normalDayGreyMobile              : chr "HERE.normalDayGreyMobile"
    #>   ..$ HERE.normalDayTransit                 : chr "HERE.normalDayTransit"
    #>   ..$ HERE.normalDayTransitMobile           : chr "HERE.normalDayTransitMobile"
    #>   ..$ HERE.normalDayTraffic                 : chr "HERE.normalDayTraffic"
    #>   ..$ HERE.normalNight                      : chr "HERE.normalNight"
    #>   ..$ HERE.normalNightMobile                : chr "HERE.normalNightMobile"
    #>   .. [list output truncated]
    #>  $ providers_details:List of 36
    #>   ..$ OpenStreetMap        :List of 3
    #>   ..$ MapTilesAPI          :List of 3
    #>   ..$ OpenSeaMap           :List of 2
    #>   ..$ OPNVKarte            :List of 2
    #>   ..$ OpenTopoMap          :List of 2
    #>   ..$ OpenRailwayMap       :List of 2
    #>   ..$ OpenFireMap          :List of 2
    #>   ..$ SafeCast             :List of 2
    #>   ..$ Stadia               :List of 3
    #>   ..$ Thunderforest        :List of 3
    #>   ..$ CyclOSM              :List of 2
    #>   ..$ Jawg                 :List of 3
    #>   ..$ MapBox               :List of 2
    #>   ..$ MapTiler             :List of 3
    #>   ..$ TomTom               :List of 3
    #>   ..$ Esri                 :List of 3
    #>   ..$ OpenWeatherMap       :List of 3
    #>   ..$ HERE                 :List of 3
    #>   ..$ HEREv3               :List of 3
    #>   ..$ FreeMapSK            :List of 2
    #>   ..$ MtbMap               :List of 2
    #>   ..$ CartoDB              :List of 3
    #>   ..$ HikeBike             :List of 3
    #>   ..$ BasemapAT            :List of 3
    #>   ..$ nlmaps               :List of 3
    #>   ..$ NASAGIBS             :List of 3
    #>   ..$ NLS                  :List of 2
    #>   ..$ JusticeMap           :List of 3
    #>   ..$ GeoportailFrance     :List of 3
    #>   ..$ OneMapSG             :List of 3
    #>   ..$ USGS                 :List of 3
    #>   ..$ WaymarkedTrails      :List of 3
    #>   ..$ OpenAIP              :List of 2
    #>   ..$ OpenSnowMap          :List of 3
    #>   ..$ AzureMaps            :List of 3
    #>   ..$ SwissFederalGeoportal:List of 3
    #>  $ src              : chr "(function (root, factory) {\n\tif (typeof define === 'function' && define.amd) {\n\t\t// AMD. Register as an an"| __truncated__
    #>  $ dep              :List of 10
    #>   ..$ name      : chr "leaflet-providers"
    #>   ..$ version   : chr "2.0.0"
    #>   ..$ src       :List of 1
    #>   ..$ meta      : NULL
    #>   ..$ script    : chr "leaflet-providers_2.0.0.js"
    #>   ..$ stylesheet: NULL
    #>   ..$ head      : NULL
    #>   ..$ attachment: NULL
    #>   ..$ package   : NULL
    #>   ..$ all_files : logi FALSE
    #>   ..- attr(*, "class")= chr "html_dependency"
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
[`leaflet`](https://rstudio.github.io/leaflet/) will use the custom
providers instead of the default provider data.

> Note that the package `V8` is required for `get_providers()`.

### View the loaded providers data

#### The version number of the source leaflet-providers.js

``` r
providers_loaded()$version_num
#> [1] "2.0.0"
```

#### Supported tile providers

``` r
names(providers_loaded()$providers)
```

<div style="height:150px; overflow-y: scroll;">

    #>   [1] "OpenStreetMap"                         
    #>   [2] "OpenStreetMap.Mapnik"                  
    #>   [3] "OpenStreetMap.DE"                      
    #>   [4] "OpenStreetMap.CH"                      
    #>   [5] "OpenStreetMap.France"                  
    #>   [6] "OpenStreetMap.HOT"                     
    #>   [7] "OpenStreetMap.BZH"                     
    #>   [8] "MapTilesAPI"                           
    #>   [9] "MapTilesAPI.OSMEnglish"                
    #>  [10] "MapTilesAPI.OSMFrancais"               
    #>  [11] "MapTilesAPI.OSMEspagnol"               
    #>  [12] "OpenSeaMap"                            
    #>  [13] "OPNVKarte"                             
    #>  [14] "OpenTopoMap"                           
    #>  [15] "OpenRailwayMap"                        
    #>  [16] "OpenFireMap"                           
    #>  [17] "SafeCast"                              
    #>  [18] "Stadia"                                
    #>  [19] "Stadia.AlidadeSmooth"                  
    #>  [20] "Stadia.AlidadeSmoothDark"              
    #>  [21] "Stadia.OSMBright"                      
    #>  [22] "Stadia.Outdoors"                       
    #>  [23] "Stadia.StamenToner"                    
    #>  [24] "Stadia.StamenTonerBackground"          
    #>  [25] "Stadia.StamenTonerLines"               
    #>  [26] "Stadia.StamenTonerLabels"              
    #>  [27] "Stadia.StamenTonerLite"                
    #>  [28] "Stadia.StamenWatercolor"               
    #>  [29] "Stadia.StamenTerrain"                  
    #>  [30] "Stadia.StamenTerrainBackground"        
    #>  [31] "Stadia.StamenTerrainLabels"            
    #>  [32] "Stadia.StamenTerrainLines"             
    #>  [33] "Thunderforest"                         
    #>  [34] "Thunderforest.OpenCycleMap"            
    #>  [35] "Thunderforest.Transport"               
    #>  [36] "Thunderforest.TransportDark"           
    #>  [37] "Thunderforest.SpinalMap"               
    #>  [38] "Thunderforest.Landscape"               
    #>  [39] "Thunderforest.Outdoors"                
    #>  [40] "Thunderforest.Pioneer"                 
    #>  [41] "Thunderforest.MobileAtlas"             
    #>  [42] "Thunderforest.Neighbourhood"           
    #>  [43] "CyclOSM"                               
    #>  [44] "Jawg"                                  
    #>  [45] "Jawg.Streets"                          
    #>  [46] "Jawg.Terrain"                          
    #>  [47] "Jawg.Sunny"                            
    #>  [48] "Jawg.Dark"                             
    #>  [49] "Jawg.Light"                            
    #>  [50] "Jawg.Matrix"                           
    #>  [51] "MapBox"                                
    #>  [52] "MapTiler"                              
    #>  [53] "MapTiler.Streets"                      
    #>  [54] "MapTiler.Basic"                        
    #>  [55] "MapTiler.Bright"                       
    #>  [56] "MapTiler.Pastel"                       
    #>  [57] "MapTiler.Positron"                     
    #>  [58] "MapTiler.Hybrid"                       
    #>  [59] "MapTiler.Toner"                        
    #>  [60] "MapTiler.Topo"                         
    #>  [61] "MapTiler.Voyager"                      
    #>  [62] "TomTom"                                
    #>  [63] "TomTom.Basic"                          
    #>  [64] "TomTom.Hybrid"                         
    #>  [65] "TomTom.Labels"                         
    #>  [66] "Esri"                                  
    #>  [67] "Esri.WorldStreetMap"                   
    #>  [68] "Esri.DeLorme"                          
    #>  [69] "Esri.WorldTopoMap"                     
    #>  [70] "Esri.WorldImagery"                     
    #>  [71] "Esri.WorldTerrain"                     
    #>  [72] "Esri.WorldShadedRelief"                
    #>  [73] "Esri.WorldPhysical"                    
    #>  [74] "Esri.OceanBasemap"                     
    #>  [75] "Esri.NatGeoWorldMap"                   
    #>  [76] "Esri.WorldGrayCanvas"                  
    #>  [77] "OpenWeatherMap"                        
    #>  [78] "OpenWeatherMap.Clouds"                 
    #>  [79] "OpenWeatherMap.CloudsClassic"          
    #>  [80] "OpenWeatherMap.Precipitation"          
    #>  [81] "OpenWeatherMap.PrecipitationClassic"   
    #>  [82] "OpenWeatherMap.Rain"                   
    #>  [83] "OpenWeatherMap.RainClassic"            
    #>  [84] "OpenWeatherMap.Pressure"               
    #>  [85] "OpenWeatherMap.PressureContour"        
    #>  [86] "OpenWeatherMap.Wind"                   
    #>  [87] "OpenWeatherMap.Temperature"            
    #>  [88] "OpenWeatherMap.Snow"                   
    #>  [89] "HERE"                                  
    #>  [90] "HERE.normalDay"                        
    #>  [91] "HERE.normalDayCustom"                  
    #>  [92] "HERE.normalDayGrey"                    
    #>  [93] "HERE.normalDayMobile"                  
    #>  [94] "HERE.normalDayGreyMobile"              
    #>  [95] "HERE.normalDayTransit"                 
    #>  [96] "HERE.normalDayTransitMobile"           
    #>  [97] "HERE.normalDayTraffic"                 
    #>  [98] "HERE.normalNight"                      
    #>  [99] "HERE.normalNightMobile"                
    #> [100] "HERE.normalNightGrey"                  
    #> [101] "HERE.normalNightGreyMobile"            
    #> [102] "HERE.normalNightTransit"               
    #> [103] "HERE.normalNightTransitMobile"         
    #> [104] "HERE.reducedDay"                       
    #> [105] "HERE.reducedNight"                     
    #> [106] "HERE.basicMap"                         
    #> [107] "HERE.mapLabels"                        
    #> [108] "HERE.trafficFlow"                      
    #> [109] "HERE.carnavDayGrey"                    
    #> [110] "HERE.hybridDay"                        
    #> [111] "HERE.hybridDayMobile"                  
    #> [112] "HERE.hybridDayTransit"                 
    #> [113] "HERE.hybridDayGrey"                    
    #> [114] "HERE.hybridDayTraffic"                 
    #> [115] "HERE.pedestrianDay"                    
    #> [116] "HERE.pedestrianNight"                  
    #> [117] "HERE.satelliteDay"                     
    #> [118] "HERE.terrainDay"                       
    #> [119] "HERE.terrainDayMobile"                 
    #> [120] "HEREv3"                                
    #> [121] "HEREv3.normalDay"                      
    #> [122] "HEREv3.normalDayCustom"                
    #> [123] "HEREv3.normalDayGrey"                  
    #> [124] "HEREv3.normalDayMobile"                
    #> [125] "HEREv3.normalDayGreyMobile"            
    #> [126] "HEREv3.normalDayTransit"               
    #> [127] "HEREv3.normalDayTransitMobile"         
    #> [128] "HEREv3.normalNight"                    
    #> [129] "HEREv3.normalNightMobile"              
    #> [130] "HEREv3.normalNightGrey"                
    #> [131] "HEREv3.normalNightGreyMobile"          
    #> [132] "HEREv3.normalNightTransit"             
    #> [133] "HEREv3.normalNightTransitMobile"       
    #> [134] "HEREv3.reducedDay"                     
    #> [135] "HEREv3.reducedNight"                   
    #> [136] "HEREv3.basicMap"                       
    #> [137] "HEREv3.mapLabels"                      
    #> [138] "HEREv3.trafficFlow"                    
    #> [139] "HEREv3.carnavDayGrey"                  
    #> [140] "HEREv3.hybridDay"                      
    #> [141] "HEREv3.hybridDayMobile"                
    #> [142] "HEREv3.hybridDayTransit"               
    #> [143] "HEREv3.hybridDayGrey"                  
    #> [144] "HEREv3.pedestrianDay"                  
    #> [145] "HEREv3.pedestrianNight"                
    #> [146] "HEREv3.satelliteDay"                   
    #> [147] "HEREv3.terrainDay"                     
    #> [148] "HEREv3.terrainDayMobile"               
    #> [149] "FreeMapSK"                             
    #> [150] "MtbMap"                                
    #> [151] "CartoDB"                               
    #> [152] "CartoDB.Positron"                      
    #> [153] "CartoDB.PositronNoLabels"              
    #> [154] "CartoDB.PositronOnlyLabels"            
    #> [155] "CartoDB.DarkMatter"                    
    #> [156] "CartoDB.DarkMatterNoLabels"            
    #> [157] "CartoDB.DarkMatterOnlyLabels"          
    #> [158] "CartoDB.Voyager"                       
    #> [159] "CartoDB.VoyagerNoLabels"               
    #> [160] "CartoDB.VoyagerOnlyLabels"             
    #> [161] "CartoDB.VoyagerLabelsUnder"            
    #> [162] "HikeBike"                              
    #> [163] "HikeBike.HikeBike"                     
    #> [164] "HikeBike.HillShading"                  
    #> [165] "BasemapAT"                             
    #> [166] "BasemapAT.basemap"                     
    #> [167] "BasemapAT.grau"                        
    #> [168] "BasemapAT.overlay"                     
    #> [169] "BasemapAT.terrain"                     
    #> [170] "BasemapAT.surface"                     
    #> [171] "BasemapAT.highdpi"                     
    #> [172] "BasemapAT.orthofoto"                   
    #> [173] "nlmaps"                                
    #> [174] "nlmaps.standaard"                      
    #> [175] "nlmaps.pastel"                         
    #> [176] "nlmaps.grijs"                          
    #> [177] "nlmaps.water"                          
    #> [178] "nlmaps.luchtfoto"                      
    #> [179] "NASAGIBS"                              
    #> [180] "NASAGIBS.ModisTerraTrueColorCR"        
    #> [181] "NASAGIBS.ModisTerraBands367CR"         
    #> [182] "NASAGIBS.ViirsEarthAtNight2012"        
    #> [183] "NASAGIBS.ModisTerraLSTDay"             
    #> [184] "NASAGIBS.ModisTerraSnowCover"          
    #> [185] "NASAGIBS.ModisTerraAOD"                
    #> [186] "NASAGIBS.ModisTerraChlorophyll"        
    #> [187] "NLS"                                   
    #> [188] "JusticeMap"                            
    #> [189] "JusticeMap.income"                     
    #> [190] "JusticeMap.americanIndian"             
    #> [191] "JusticeMap.asian"                      
    #> [192] "JusticeMap.black"                      
    #> [193] "JusticeMap.hispanic"                   
    #> [194] "JusticeMap.multi"                      
    #> [195] "JusticeMap.nonWhite"                   
    #> [196] "JusticeMap.white"                      
    #> [197] "JusticeMap.plurality"                  
    #> [198] "GeoportailFrance"                      
    #> [199] "GeoportailFrance.plan"                 
    #> [200] "GeoportailFrance.parcels"              
    #> [201] "GeoportailFrance.orthos"               
    #> [202] "OneMapSG"                              
    #> [203] "OneMapSG.Default"                      
    #> [204] "OneMapSG.Night"                        
    #> [205] "OneMapSG.Original"                     
    #> [206] "OneMapSG.Grey"                         
    #> [207] "OneMapSG.LandLot"                      
    #> [208] "USGS"                                  
    #> [209] "USGS.USTopo"                           
    #> [210] "USGS.USImagery"                        
    #> [211] "USGS.USImageryTopo"                    
    #> [212] "WaymarkedTrails"                       
    #> [213] "WaymarkedTrails.hiking"                
    #> [214] "WaymarkedTrails.cycling"               
    #> [215] "WaymarkedTrails.mtb"                   
    #> [216] "WaymarkedTrails.slopes"                
    #> [217] "WaymarkedTrails.riding"                
    #> [218] "WaymarkedTrails.skating"               
    #> [219] "OpenAIP"                               
    #> [220] "OpenSnowMap"                           
    #> [221] "OpenSnowMap.pistes"                    
    #> [222] "AzureMaps"                             
    #> [223] "AzureMaps.MicrosoftImagery"            
    #> [224] "AzureMaps.MicrosoftBaseDarkGrey"       
    #> [225] "AzureMaps.MicrosoftBaseRoad"           
    #> [226] "AzureMaps.MicrosoftBaseHybridRoad"     
    #> [227] "AzureMaps.MicrosoftTerraMain"          
    #> [228] "AzureMaps.MicrosoftWeatherInfraredMain"
    #> [229] "AzureMaps.MicrosoftWeatherRadarMain"   
    #> [230] "SwissFederalGeoportal"                 
    #> [231] "SwissFederalGeoportal.NationalMapColor"
    #> [232] "SwissFederalGeoportal.NationalMapGrey" 
    #> [233] "SwissFederalGeoportal.SWISSIMAGE"

</div>

#### Tile providers’ details

``` r
str(providers_loaded()$providers_details)
```

<div style="height:150px; overflow-y: scroll;">

    #> List of 36
    #>  $ OpenStreetMap        :List of 3
    #>   ..$ url     : chr "https://tile.openstreetmap.org/{z}/{x}/{y}.png"
    #>   ..$ options :List of 2
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ attribution: chr "&copy; <a href=\"https://www.openstreetmap.org/copyright\">OpenStreetMap</a> contributors"
    #>   ..$ variants:List of 6
    #>   .. ..$ Mapnik: Named list()
    #>   .. ..$ DE    :List of 2
    #>   .. .. ..$ url    : chr "https://tile.openstreetmap.de/{z}/{x}/{y}.png"
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ maxZoom: int 18
    #>   .. ..$ CH    :List of 2
    #>   .. .. ..$ url    : chr "https://tile.osm.ch/switzerland/{z}/{x}/{y}.png"
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ maxZoom: int 18
    #>   .. .. .. ..$ bounds : int [1:2, 1:2] 45 48 5 11
    #>   .. ..$ France:List of 2
    #>   .. .. ..$ url    : chr "https://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png"
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ maxZoom    : int 20
    #>   .. .. .. ..$ attribution: chr "&copy; OpenStreetMap France | {attribution.OpenStreetMap}"
    #>   .. ..$ HOT   :List of 2
    #>   .. .. ..$ url    : chr "https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png"
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ attribution: chr "{attribution.OpenStreetMap}, Tiles style by <a href=\"https://www.hotosm.org/\" target=\"_blank\">Humanitarian "| __truncated__
    #>   .. ..$ BZH   :List of 2
    #>   .. .. ..$ url    : chr "https://tile.openstreetmap.bzh/br/{z}/{x}/{y}.png"
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ attribution: chr "{attribution.OpenStreetMap}, Tiles courtesy of <a href=\"http://www.openstreetmap.bzh/\" target=\"_blank\">Bret"| __truncated__
    #>   .. .. .. ..$ bounds     : num [1:2, 1:2] 46.2 50 -5.5 0.7
    #>  $ MapTilesAPI          :List of 3
    #>   ..$ url     : chr "https://maptiles.p.rapidapi.com/{variant}/{z}/{x}/{y}.png?rapidapi-key={apikey}"
    #>   ..$ options :List of 4
    #>   .. ..$ attribution: chr "&copy; <a href=\"http://www.maptilesapi.com/\">MapTiles API</a>, {attribution.OpenStreetMap}"
    #>   .. ..$ variant    : chr "en/map/v1"
    #>   .. ..$ apikey     : chr "<insert your api key here>"
    #>   .. ..$ maxZoom    : int 19
    #>   ..$ variants:List of 3
    #>   .. ..$ OSMEnglish :List of 1
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ variant: chr "en/map/v1"
    #>   .. ..$ OSMFrancais:List of 1
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ variant: chr "fr/map/v1"
    #>   .. ..$ OSMEspagnol:List of 1
    #>   .. .. ..$ options:List of 1
    #>   .. .. .. ..$ variant: chr "es/map/v1"
    #>  $ OpenSeaMap           :List of 2
    #>   ..$ url    : chr "https://tiles.openseamap.org/seamark/{z}/{x}/{y}.png"
    #>   ..$ options:List of 1
    #>   .. ..$ attribution: chr "Map data: &copy; <a href=\"http://www.openseamap.org\">OpenSeaMap</a> contributors"
    #>  $ OPNVKarte            :List of 2
    #>   ..$ url    : chr "https://tileserver.memomaps.de/tilegen/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ attribution: chr "Map <a href=\"https://memomaps.de/\">memomaps.de</a> <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\""| __truncated__
    #>  $ OpenTopoMap          :List of 2
    #>   ..$ url    : chr "https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 17
    #>   .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap}, <a href=\"http://viewfinderpanoramas.org\">SRTM</a> | Map style: &copy; "| __truncated__
    #>  $ OpenRailwayMap       :List of 2
    #>   ..$ url    : chr "https://{s}.tiles.openrailwaymap.org/standard/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://www.OpenRailwayMap.org\">OpenRailwa"| __truncated__
    #>  $ OpenFireMap          :List of 2
    #>   ..$ url    : chr "http://openfiremap.org/hytiles/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"http://www.openfiremap.org\">OpenFireMap</a"| __truncated__
    #>  $ SafeCast             :List of 2
    #>   ..$ url    : chr "https://s3.amazonaws.com/te512.safecast.org/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 16
    #>   .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://blog.safecast.org/about/\">SafeCast"| __truncated__
    #>  $ Stadia               :List of 3
    #>   ..$ url     : chr "https://tiles.stadiamaps.com/tiles/{variant}/{z}/{x}/{y}{r}.{ext}"
    #>   ..$ options :List of 5
    #>   .. ..$ minZoom    : int 0
    #>   .. ..$ maxZoom    : int 20
    #>   .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://openm"| __truncated__
    #>   .. ..$ variant    : chr "alidade_smooth"
    #>   .. ..$ ext        : chr "png"
    #>   ..$ variants:List of 14
    #>   .. ..$ AlidadeSmooth          : chr "alidade_smooth"
    #>   .. ..$ AlidadeSmoothDark      : chr "alidade_smooth_dark"
    #>   .. ..$ OSMBright              : chr "osm_bright"
    #>   .. ..$ Outdoors               : chr "outdoors"
    #>   .. ..$ StamenToner            :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.s"| __truncated__
    #>   .. .. .. ..$ variant    : chr "stamen_toner"
    #>   .. ..$ StamenTonerBackground  :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.s"| __truncated__
    #>   .. .. .. ..$ variant    : chr "stamen_toner_background"
    #>   .. ..$ StamenTonerLines       :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.s"| __truncated__
    #>   .. .. .. ..$ variant    : chr "stamen_toner_lines"
    #>   .. ..$ StamenTonerLabels      :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.s"| __truncated__
    #>   .. .. .. ..$ variant    : chr "stamen_toner_labels"
    #>   .. ..$ StamenTonerLite        :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.s"| __truncated__
    #>   .. .. .. ..$ variant    : chr "stamen_toner_lite"
    #>   .. ..$ StamenWatercolor       :List of 2
    #>   .. .. ..$ url    : chr "https://tiles.stadiamaps.com/tiles/{variant}/{z}/{x}/{y}.{ext}"
    #>   .. .. ..$ options:List of 5
    #>   .. .. .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.s"| __truncated__
    #>   .. .. .. ..$ variant    : chr "stamen_watercolor"
    #>   .. .. .. ..$ ext        : chr "jpg"
    #>   .. .. .. ..$ minZoom    : int 1
    #>   .. .. .. ..$ maxZoom    : int 16
    #>   .. ..$ StamenTerrain          :List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.s"| __truncated__
    #>   .. .. .. ..$ variant    : chr "stamen_terrain"
    #>   .. .. .. ..$ minZoom    : int 0
    #>   .. .. .. ..$ maxZoom    : int 18
    #>   .. ..$ StamenTerrainBackground:List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.s"| __truncated__
    #>   .. .. .. ..$ variant    : chr "stamen_terrain_background"
    #>   .. .. .. ..$ minZoom    : int 0
    #>   .. .. .. ..$ maxZoom    : int 18
    #>   .. ..$ StamenTerrainLabels    :List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.s"| __truncated__
    #>   .. .. .. ..$ variant    : chr "stamen_terrain_labels"
    #>   .. .. .. ..$ minZoom    : int 0
    #>   .. .. .. ..$ maxZoom    : int 18
    #>   .. ..$ StamenTerrainLines     :List of 1
    #>   .. .. ..$ options:List of 4
    #>   .. .. .. ..$ attribution: chr "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.s"| __truncated__
    #>   .. .. .. ..$ variant    : chr "stamen_terrain_lines"
    #>   .. .. .. ..$ minZoom    : int 0
    #>   .. .. .. ..$ maxZoom    : int 18
    #>  $ Thunderforest        :List of 3
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
    #>  $ CyclOSM              :List of 2
    #>   ..$ url    : chr "https://{s}.tile-cyclosm.openstreetmap.fr/cyclosm/{z}/{x}/{y}.png"
    #>   ..$ options:List of 2
    #>   .. ..$ maxZoom    : int 20
    #>   .. ..$ attribution: chr "<a href=\"https://github.com/cyclosm/cyclosm-cartocss-style/releases\" title=\"CyclOSM - Open Bicycle render\">"| __truncated__
    #>  $ Jawg                 :List of 3
    #>   ..$ url     : chr "https://{s}.tile.jawg.io/{variant}/{z}/{x}/{y}{r}.png?access-token={accessToken}"
    #>   ..$ options :List of 6
    #>   .. ..$ attribution: chr "<a href=\"http://jawg.io\" title=\"Tiles Courtesy of Jawg Maps\" target=\"_blank\">&copy; <b>Jawg</b>Maps</a> {"| __truncated__
    #>   .. ..$ minZoom    : int 0
    #>   .. ..$ maxZoom    : int 22
    #>   .. ..$ subdomains : chr "abcd"
    #>   .. ..$ variant    : chr "jawg-terrain"
    #>   .. ..$ accessToken: chr "<insert your access token here>"
    #>   ..$ variants:List of 6
    #>   .. ..$ Streets: chr "jawg-streets"
    #>   .. ..$ Terrain: chr "jawg-terrain"
    #>   .. ..$ Sunny  : chr "jawg-sunny"
    #>   .. ..$ Dark   : chr "jawg-dark"
    #>   .. ..$ Light  : chr "jawg-light"
    #>   .. ..$ Matrix : chr "jawg-matrix"
    #>  $ MapBox               :List of 2
    #>   ..$ url    : chr "https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}{r}?access_token={accessToken}"
    #>   ..$ options:List of 6
    #>   .. ..$ attribution: chr "&copy; <a href=\"https://www.mapbox.com/about/maps/\" target=\"_blank\">Mapbox</a> {attribution.OpenStreetMap} "| __truncated__
    #>   .. ..$ tileSize   : int 512
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ zoomOffset : int -1
    #>   .. ..$ id         : chr "mapbox/streets-v11"
    #>   .. ..$ accessToken: chr "<insert your access token here>"
    #>  $ MapTiler             :List of 3
    #>   ..$ url     : chr "https://api.maptiler.com/maps/{variant}/{z}/{x}/{y}{r}.{ext}?key={key}"
    #>   ..$ options :List of 8
    #>   .. ..$ attribution: chr "<a href=\"https://www.maptiler.com/copyright/\" target=\"_blank\">&copy; MapTiler</a> <a href=\"https://www.ope"| __truncated__
    #>   .. ..$ variant    : chr "streets"
    #>   .. ..$ ext        : chr "png"
    #>   .. ..$ key        : chr "<insert your MapTiler Cloud API key here>"
    #>   .. ..$ tileSize   : int 512
    #>   .. ..$ zoomOffset : int -1
    #>   .. ..$ minZoom    : int 0
    #>   .. ..$ maxZoom    : int 21
    #>   ..$ variants:List of 9
    #>   .. ..$ Streets : chr "streets"
    #>   .. ..$ Basic   : chr "basic"
    #>   .. ..$ Bright  : chr "bright"
    #>   .. ..$ Pastel  : chr "pastel"
    #>   .. ..$ Positron: chr "positron"
    #>   .. ..$ Hybrid  :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ variant: chr "hybrid"
    #>   .. .. .. ..$ ext    : chr "jpg"
    #>   .. ..$ Toner   : chr "toner"
    #>   .. ..$ Topo    : chr "topo"
    #>   .. ..$ Voyager : chr "voyager"
    #>  $ TomTom               :List of 3
    #>   ..$ url     : chr "https://{s}.api.tomtom.com/map/1/tile/{variant}/{style}/{z}/{x}/{y}.{ext}?key={apikey}"
    #>   ..$ options :List of 7
    #>   .. ..$ variant    : chr "basic"
    #>   .. ..$ maxZoom    : int 22
    #>   .. ..$ attribution: chr "<a href=\"https://tomtom.com\" target=\"_blank\">&copy;  1992 - 2023 TomTom.</a> "
    #>   .. ..$ subdomains : chr "abcd"
    #>   .. ..$ style      : chr "main"
    #>   .. ..$ ext        : chr "png"
    #>   .. ..$ apikey     : chr "<insert your API key here>"
    #>   ..$ variants:List of 3
    #>   .. ..$ Basic : chr "basic"
    #>   .. ..$ Hybrid: chr "hybrid"
    #>   .. ..$ Labels: chr "labels"
    #>  $ Esri                 :List of 3
    #>   ..$ url     : chr "https://server.arcgisonline.com/ArcGIS/rest/services/{variant}/MapServer/tile/{z}/{y}/{x}"
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
    #>   .. .. .. ..$ variant    : chr "Ocean/World_Ocean_Base"
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
    #>  $ OpenWeatherMap       :List of 3
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
    #>  $ HERE                 :List of 3
    #>   ..$ url     : chr "https://{s}.{base}.maps.api.here.com/maptile/2.1/{type}/{mapID}/{variant}/{z}/{x}/{y}/{size}/{format}?app_id={a"| __truncated__
    #>   ..$ options :List of 12
    #>   .. ..$ attribution: chr "Map &copy; 1987-2023 <a href=\"http://developer.here.com\">HERE</a>"
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
    #>   ..$ variants:List of 30
    #>   .. ..$ normalDay               : chr "normal.day"
    #>   .. ..$ normalDayCustom         : chr "normal.day.custom"
    #>   .. ..$ normalDayGrey           : chr "normal.day.grey"
    #>   .. ..$ normalDayMobile         : chr "normal.day.mobile"
    #>   .. ..$ normalDayGreyMobile     : chr "normal.day.grey.mobile"
    #>   .. ..$ normalDayTransit        : chr "normal.day.transit"
    #>   .. ..$ normalDayTransitMobile  : chr "normal.day.transit.mobile"
    #>   .. ..$ normalDayTraffic        :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant: chr "normal.traffic.day"
    #>   .. .. .. ..$ base   : chr "traffic"
    #>   .. .. .. ..$ type   : chr "traffictile"
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
    #>   .. ..$ hybridDayTraffic        :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant: chr "hybrid.traffic.day"
    #>   .. .. .. ..$ base   : chr "traffic"
    #>   .. .. .. ..$ type   : chr "traffictile"
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
    #>  $ HEREv3               :List of 3
    #>   ..$ url     : chr "https://{s}.{base}.maps.ls.hereapi.com/maptile/2.1/{type}/{mapID}/{variant}/{z}/{x}/{y}/{size}/{format}?apiKey="| __truncated__
    #>   ..$ options :List of 11
    #>   .. ..$ attribution: chr "Map &copy; 1987-2023 <a href=\"http://developer.here.com\">HERE</a>"
    #>   .. ..$ subdomains : chr "1234"
    #>   .. ..$ mapID      : chr "newest"
    #>   .. ..$ apiKey     : chr "<insert your apiKey here>"
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
    #>  $ FreeMapSK            :List of 2
    #>   ..$ url    : chr "https://{s}.freemap.sk/T/{z}/{x}/{y}.jpeg"
    #>   ..$ options:List of 5
    #>   .. ..$ minZoom    : int 8
    #>   .. ..$ maxZoom    : int 16
    #>   .. ..$ subdomains : chr "abcd"
    #>   .. ..$ bounds     : num [1:2, 1:2] 47.2 49.8 16 22.6
    #>   .. ..$ attribution: chr "{attribution.OpenStreetMap}, visualization CC-By-SA 2.0 <a href=\"http://freemap.sk\">Freemap.sk</a>"
    #>  $ MtbMap               :List of 2
    #>   ..$ url    : chr "http://tile.mtbmap.cz/mtbmap_tiles/{z}/{x}/{y}.png"
    #>   ..$ options:List of 1
    #>   .. ..$ attribution: chr "{attribution.OpenStreetMap} &amp; USGS"
    #>  $ CartoDB              :List of 3
    #>   ..$ url     : chr "https://{s}.basemaps.cartocdn.com/{variant}/{z}/{x}/{y}{r}.png"
    #>   ..$ options :List of 4
    #>   .. ..$ attribution: chr "{attribution.OpenStreetMap} &copy; <a href=\"https://carto.com/attributions\">CARTO</a>"
    #>   .. ..$ subdomains : chr "abcd"
    #>   .. ..$ maxZoom    : int 20
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
    #>  $ HikeBike             :List of 3
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
    #>  $ BasemapAT            :List of 3
    #>   ..$ url     : chr "https://mapsneu.wien.gv.at/basemap/{variant}/{type}/google3857/{z}/{y}/{x}.{format}"
    #>   ..$ options :List of 6
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ attribution: chr "Datenquelle: <a href=\"https://www.basemap.at\">basemap.at</a>"
    #>   .. ..$ type       : chr "normal"
    #>   .. ..$ format     : chr "png"
    #>   .. ..$ bounds     : num [1:2, 1:2] 46.36 49.04 8.78 17.19
    #>   .. ..$ variant    : chr "geolandbasemap"
    #>   ..$ variants:List of 7
    #>   .. ..$ basemap  :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ maxZoom: int 20
    #>   .. .. .. ..$ variant: chr "geolandbasemap"
    #>   .. ..$ grau     : chr "bmapgrau"
    #>   .. ..$ overlay  : chr "bmapoverlay"
    #>   .. ..$ terrain  :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant: chr "bmapgelaende"
    #>   .. .. .. ..$ type   : chr "grau"
    #>   .. .. .. ..$ format : chr "jpeg"
    #>   .. ..$ surface  :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant: chr "bmapoberflaeche"
    #>   .. .. .. ..$ type   : chr "grau"
    #>   .. .. .. ..$ format : chr "jpeg"
    #>   .. ..$ highdpi  :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ variant: chr "bmaphidpi"
    #>   .. .. .. ..$ format : chr "jpeg"
    #>   .. ..$ orthofoto:List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ maxZoom: int 20
    #>   .. .. .. ..$ variant: chr "bmaporthofoto30cm"
    #>   .. .. .. ..$ format : chr "jpeg"
    #>  $ nlmaps               :List of 3
    #>   ..$ url     : chr "https://service.pdok.nl/brt/achtergrondkaart/wmts/v2_0/{variant}/EPSG:3857/{z}/{x}/{y}.png"
    #>   ..$ options :List of 4
    #>   .. ..$ minZoom    : int 6
    #>   .. ..$ maxZoom    : int 19
    #>   .. ..$ bounds     : num [1:2, 1:2] 50.5 54 3.25 7.6
    #>   .. ..$ attribution: chr "Kaartgegevens &copy; <a href=\"https://www.kadaster.nl\">Kadaster</a>"
    #>   ..$ variants:List of 5
    #>   .. ..$ standaard: chr "standaard"
    #>   .. ..$ pastel   : chr "pastel"
    #>   .. ..$ grijs    : chr "grijs"
    #>   .. ..$ water    : chr "water"
    #>   .. ..$ luchtfoto:List of 1
    #>   .. .. ..$ url: chr "https://service.pdok.nl/hwh/luchtfotorgb/wmts/v1_0/Actueel_ortho25/EPSG:3857/{z}/{x}/{y}.jpeg"
    #>  $ NASAGIBS             :List of 3
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
    #>   .. .. .. ..$ variant: chr "MODIS_Terra_NDSI_Snow_Cover"
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
    #>  $ NLS                  :List of 2
    #>   ..$ url    : chr "https://nls-{s}.tileserver.com/nls/{z}/{x}/{y}.jpg"
    #>   ..$ options:List of 5
    #>   .. ..$ attribution: chr "<a href=\"http://geo.nls.uk/maps/\">National Library of Scotland Historic Maps</a>"
    #>   .. ..$ bounds     : num [1:2, 1:2] 49.6 61.7 -12 3
    #>   .. ..$ minZoom    : int 1
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ subdomains : chr "0123"
    #>  $ JusticeMap           :List of 3
    #>   ..$ url     : chr "https://www.justicemap.org/tile/{size}/{variant}/{z}/{x}/{y}.png"
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
    #>  $ GeoportailFrance     :List of 3
    #>   ..$ url     : chr "https://wxs.ign.fr/{apikey}/geoportail/wmts?REQUEST=GetTile&SERVICE=WMTS&VERSION=1.0.0&STYLE={style}&TILEMATRIX"| __truncated__
    #>   ..$ options :List of 8
    #>   .. ..$ attribution: chr "<a target=\"_blank\" href=\"https://www.geoportail.gouv.fr/\">Geoportail France</a>"
    #>   .. ..$ bounds     : int [1:2, 1:2] -75 81 -180 180
    #>   .. ..$ minZoom    : int 2
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ apikey     : chr "choisirgeoportail"
    #>   .. ..$ format     : chr "image/png"
    #>   .. ..$ style      : chr "normal"
    #>   .. ..$ variant    : chr "GEOGRAPHICALGRIDSYSTEMS.PLANIGNV2"
    #>   ..$ variants:List of 3
    #>   .. ..$ plan   : chr "GEOGRAPHICALGRIDSYSTEMS.PLANIGNV2"
    #>   .. ..$ parcels:List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ variant: chr "CADASTRALPARCELS.PARCELLAIRE_EXPRESS"
    #>   .. .. .. ..$ style  : chr "PCI vecteur"
    #>   .. .. .. ..$ maxZoom: int 20
    #>   .. ..$ orthos :List of 1
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ maxZoom: int 19
    #>   .. .. .. ..$ format : chr "image/jpeg"
    #>   .. .. .. ..$ variant: chr "ORTHOIMAGERY.ORTHOPHOTOS"
    #>  $ OneMapSG             :List of 3
    #>   ..$ url     : chr "https://maps-{s}.onemap.sg/v3/{variant}/{z}/{x}/{y}.png"
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
    #>  $ USGS                 :List of 3
    #>   ..$ url     : chr "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/tile/{z}/{y}/{x}"
    #>   ..$ options :List of 2
    #>   .. ..$ maxZoom    : int 20
    #>   .. ..$ attribution: chr "Tiles courtesy of the <a href=\"https://usgs.gov/\">U.S. Geological Survey</a>"
    #>   ..$ variants:List of 3
    #>   .. ..$ USTopo       : Named list()
    #>   .. ..$ USImagery    :List of 1
    #>   .. .. ..$ url: chr "https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryOnly/MapServer/tile/{z}/{y}/{x}"
    #>   .. ..$ USImageryTopo:List of 1
    #>   .. .. ..$ url: chr "https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryTopo/MapServer/tile/{z}/{y}/{x}"
    #>  $ WaymarkedTrails      :List of 3
    #>   ..$ url     : chr "https://tile.waymarkedtrails.org/{variant}/{z}/{x}/{y}.png"
    #>   ..$ options :List of 2
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://waymarkedtrails.org\">waymarkedtrai"| __truncated__
    #>   ..$ variants:List of 6
    #>   .. ..$ hiking : chr "hiking"
    #>   .. ..$ cycling: chr "cycling"
    #>   .. ..$ mtb    : chr "mtb"
    #>   .. ..$ slopes : chr "slopes"
    #>   .. ..$ riding : chr "riding"
    #>   .. ..$ skating: chr "skating"
    #>  $ OpenAIP              :List of 2
    #>   ..$ url    : chr "https://{s}.tile.maps.openaip.net/geowebcache/service/tms/1.0.0/openaip_basemap@EPSG%3A900913@png/{z}/{x}/{y}.{ext}"
    #>   ..$ options:List of 7
    #>   .. ..$ attribution : chr "<a href=\"https://www.openaip.net/\">openAIP Data</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0"| __truncated__
    #>   .. ..$ ext         : chr "png"
    #>   .. ..$ minZoom     : int 4
    #>   .. ..$ maxZoom     : int 14
    #>   .. ..$ tms         : logi TRUE
    #>   .. ..$ detectRetina: logi TRUE
    #>   .. ..$ subdomains  : chr "12"
    #>  $ OpenSnowMap          :List of 3
    #>   ..$ url     : chr "https://tiles.opensnowmap.org/{variant}/{z}/{x}/{y}.png"
    #>   ..$ options :List of 3
    #>   .. ..$ minZoom    : int 9
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ attribution: chr "Map data: {attribution.OpenStreetMap} & ODbL, &copy; <a href=\"https://www.opensnowmap.org/iframes/data.html\">"| __truncated__
    #>   ..$ variants:List of 1
    #>   .. ..$ pistes: chr "pistes"
    #>  $ AzureMaps            :List of 3
    #>   ..$ url     : chr "https://atlas.microsoft.com/map/tile?api-version={apiVersion}&tilesetId={variant}&x={x}&y={y}&zoom={z}&language"| __truncated__
    #>   ..$ options :List of 5
    #>   .. ..$ attribution    : chr "See https://docs.microsoft.com/en-us/rest/api/maps/render-v2/get-map-tile for details."
    #>   .. ..$ apiVersion     : chr "2.0"
    #>   .. ..$ variant        : chr "microsoft.imagery"
    #>   .. ..$ subscriptionKey: chr "<insert your subscription key here>"
    #>   .. ..$ language       : chr "en-US"
    #>   ..$ variants:List of 7
    #>   .. ..$ MicrosoftImagery            : chr "microsoft.imagery"
    #>   .. ..$ MicrosoftBaseDarkGrey       : chr "microsoft.base.darkgrey"
    #>   .. ..$ MicrosoftBaseRoad           : chr "microsoft.base.road"
    #>   .. ..$ MicrosoftBaseHybridRoad     : chr "microsoft.base.hybrid.road"
    #>   .. ..$ MicrosoftTerraMain          : chr "microsoft.terra.main"
    #>   .. ..$ MicrosoftWeatherInfraredMain:List of 2
    #>   .. .. ..$ url    : chr "https://atlas.microsoft.com/map/tile?api-version={apiVersion}&tilesetId={variant}&x={x}&y={y}&zoom={z}&timeStam"| __truncated__
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ timeStamp  : chr "2021-05-08T09:03:00Z"
    #>   .. .. .. ..$ attribution: chr "See https://docs.microsoft.com/en-us/rest/api/maps/render-v2/get-map-tile#uri-parameters for details."
    #>   .. .. .. ..$ variant    : chr "microsoft.weather.infrared.main"
    #>   .. ..$ MicrosoftWeatherRadarMain   :List of 2
    #>   .. .. ..$ url    : chr "https://atlas.microsoft.com/map/tile?api-version={apiVersion}&tilesetId={variant}&x={x}&y={y}&zoom={z}&timeStam"| __truncated__
    #>   .. .. ..$ options:List of 3
    #>   .. .. .. ..$ timeStamp  : chr "2021-05-08T09:03:00Z"
    #>   .. .. .. ..$ attribution: chr "See https://docs.microsoft.com/en-us/rest/api/maps/render-v2/get-map-tile#uri-parameters for details."
    #>   .. .. .. ..$ variant    : chr "microsoft.weather.radar.main"
    #>  $ SwissFederalGeoportal:List of 3
    #>   ..$ url     : chr "https://wmts.geo.admin.ch/1.0.0/{variant}/default/current/3857/{z}/{x}/{y}.jpeg"
    #>   ..$ options :List of 4
    #>   .. ..$ attribution: chr "&copy; <a href=\"https://www.swisstopo.admin.ch/\">swisstopo</a>"
    #>   .. ..$ minZoom    : int 2
    #>   .. ..$ maxZoom    : int 18
    #>   .. ..$ bounds     : num [1:2, 1:2] 45.4 48.23 5.14 11.48
    #>   ..$ variants:List of 3
    #>   .. ..$ NationalMapColor: chr "ch.swisstopo.pixelkarte-farbe"
    #>   .. ..$ NationalMapGrey : chr "ch.swisstopo.pixelkarte-grau"
    #>   .. ..$ SWISSIMAGE      :List of 1
    #>   .. .. ..$ options:List of 2
    #>   .. .. .. ..$ variant: chr "ch.swisstopo.swissimage"
    #>   .. .. .. ..$ maxZoom: int 19

</div>
