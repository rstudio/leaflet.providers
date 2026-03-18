# Fetch leaflet providers from Leaflet.js.

Fetch leaflet providers from Leaflet.js.

## Usage

``` r
get_providers(version_num = NULL)
```

## Arguments

- version_num:

  Version number with which to update leaflet providers. If `NULL`,
  fetches most recent version.

## Value

`leaflet_providers` object containing `providers_version_num`,
`providers_data`, `providers_details_data`, `src`

## Examples

``` r
# \donttest{
if (
  requireNamespace("V8", quietly = TRUE) &&
  requireNamespace("jsonlite", quietly = TRUE)
) {
  get_providers()
  get_providers("2.0.0")
}
#> $version_num
#> [1] "2.0.0"
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
#> $providers$MapTilesAPI
#> [1] "MapTilesAPI"
#> 
#> $providers$MapTilesAPI.OSMEnglish
#> [1] "MapTilesAPI.OSMEnglish"
#> 
#> $providers$MapTilesAPI.OSMFrancais
#> [1] "MapTilesAPI.OSMFrancais"
#> 
#> $providers$MapTilesAPI.OSMEspagnol
#> [1] "MapTilesAPI.OSMEspagnol"
#> 
#> $providers$OpenSeaMap
#> [1] "OpenSeaMap"
#> 
#> $providers$OPNVKarte
#> [1] "OPNVKarte"
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
#> $providers$Stadia
#> [1] "Stadia"
#> 
#> $providers$Stadia.AlidadeSmooth
#> [1] "Stadia.AlidadeSmooth"
#> 
#> $providers$Stadia.AlidadeSmoothDark
#> [1] "Stadia.AlidadeSmoothDark"
#> 
#> $providers$Stadia.OSMBright
#> [1] "Stadia.OSMBright"
#> 
#> $providers$Stadia.Outdoors
#> [1] "Stadia.Outdoors"
#> 
#> $providers$Stadia.StamenToner
#> [1] "Stadia.StamenToner"
#> 
#> $providers$Stadia.StamenTonerBackground
#> [1] "Stadia.StamenTonerBackground"
#> 
#> $providers$Stadia.StamenTonerLines
#> [1] "Stadia.StamenTonerLines"
#> 
#> $providers$Stadia.StamenTonerLabels
#> [1] "Stadia.StamenTonerLabels"
#> 
#> $providers$Stadia.StamenTonerLite
#> [1] "Stadia.StamenTonerLite"
#> 
#> $providers$Stadia.StamenWatercolor
#> [1] "Stadia.StamenWatercolor"
#> 
#> $providers$Stadia.StamenTerrain
#> [1] "Stadia.StamenTerrain"
#> 
#> $providers$Stadia.StamenTerrainBackground
#> [1] "Stadia.StamenTerrainBackground"
#> 
#> $providers$Stadia.StamenTerrainLabels
#> [1] "Stadia.StamenTerrainLabels"
#> 
#> $providers$Stadia.StamenTerrainLines
#> [1] "Stadia.StamenTerrainLines"
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
#> $providers$CyclOSM
#> [1] "CyclOSM"
#> 
#> $providers$Jawg
#> [1] "Jawg"
#> 
#> $providers$Jawg.Streets
#> [1] "Jawg.Streets"
#> 
#> $providers$Jawg.Terrain
#> [1] "Jawg.Terrain"
#> 
#> $providers$Jawg.Sunny
#> [1] "Jawg.Sunny"
#> 
#> $providers$Jawg.Dark
#> [1] "Jawg.Dark"
#> 
#> $providers$Jawg.Light
#> [1] "Jawg.Light"
#> 
#> $providers$Jawg.Matrix
#> [1] "Jawg.Matrix"
#> 
#> $providers$MapBox
#> [1] "MapBox"
#> 
#> $providers$MapTiler
#> [1] "MapTiler"
#> 
#> $providers$MapTiler.Streets
#> [1] "MapTiler.Streets"
#> 
#> $providers$MapTiler.Basic
#> [1] "MapTiler.Basic"
#> 
#> $providers$MapTiler.Bright
#> [1] "MapTiler.Bright"
#> 
#> $providers$MapTiler.Pastel
#> [1] "MapTiler.Pastel"
#> 
#> $providers$MapTiler.Positron
#> [1] "MapTiler.Positron"
#> 
#> $providers$MapTiler.Hybrid
#> [1] "MapTiler.Hybrid"
#> 
#> $providers$MapTiler.Toner
#> [1] "MapTiler.Toner"
#> 
#> $providers$MapTiler.Topo
#> [1] "MapTiler.Topo"
#> 
#> $providers$MapTiler.Voyager
#> [1] "MapTiler.Voyager"
#> 
#> $providers$TomTom
#> [1] "TomTom"
#> 
#> $providers$TomTom.Basic
#> [1] "TomTom.Basic"
#> 
#> $providers$TomTom.Hybrid
#> [1] "TomTom.Hybrid"
#> 
#> $providers$TomTom.Labels
#> [1] "TomTom.Labels"
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
#> $providers$HERE.normalDayTraffic
#> [1] "HERE.normalDayTraffic"
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
#> $providers$HERE.hybridDayTraffic
#> [1] "HERE.hybridDayTraffic"
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
#> $providers$HEREv3
#> [1] "HEREv3"
#> 
#> $providers$HEREv3.normalDay
#> [1] "HEREv3.normalDay"
#> 
#> $providers$HEREv3.normalDayCustom
#> [1] "HEREv3.normalDayCustom"
#> 
#> $providers$HEREv3.normalDayGrey
#> [1] "HEREv3.normalDayGrey"
#> 
#> $providers$HEREv3.normalDayMobile
#> [1] "HEREv3.normalDayMobile"
#> 
#> $providers$HEREv3.normalDayGreyMobile
#> [1] "HEREv3.normalDayGreyMobile"
#> 
#> $providers$HEREv3.normalDayTransit
#> [1] "HEREv3.normalDayTransit"
#> 
#> $providers$HEREv3.normalDayTransitMobile
#> [1] "HEREv3.normalDayTransitMobile"
#> 
#> $providers$HEREv3.normalNight
#> [1] "HEREv3.normalNight"
#> 
#> $providers$HEREv3.normalNightMobile
#> [1] "HEREv3.normalNightMobile"
#> 
#> $providers$HEREv3.normalNightGrey
#> [1] "HEREv3.normalNightGrey"
#> 
#> $providers$HEREv3.normalNightGreyMobile
#> [1] "HEREv3.normalNightGreyMobile"
#> 
#> $providers$HEREv3.normalNightTransit
#> [1] "HEREv3.normalNightTransit"
#> 
#> $providers$HEREv3.normalNightTransitMobile
#> [1] "HEREv3.normalNightTransitMobile"
#> 
#> $providers$HEREv3.reducedDay
#> [1] "HEREv3.reducedDay"
#> 
#> $providers$HEREv3.reducedNight
#> [1] "HEREv3.reducedNight"
#> 
#> $providers$HEREv3.basicMap
#> [1] "HEREv3.basicMap"
#> 
#> $providers$HEREv3.mapLabels
#> [1] "HEREv3.mapLabels"
#> 
#> $providers$HEREv3.trafficFlow
#> [1] "HEREv3.trafficFlow"
#> 
#> $providers$HEREv3.carnavDayGrey
#> [1] "HEREv3.carnavDayGrey"
#> 
#> $providers$HEREv3.hybridDay
#> [1] "HEREv3.hybridDay"
#> 
#> $providers$HEREv3.hybridDayMobile
#> [1] "HEREv3.hybridDayMobile"
#> 
#> $providers$HEREv3.hybridDayTransit
#> [1] "HEREv3.hybridDayTransit"
#> 
#> $providers$HEREv3.hybridDayGrey
#> [1] "HEREv3.hybridDayGrey"
#> 
#> $providers$HEREv3.pedestrianDay
#> [1] "HEREv3.pedestrianDay"
#> 
#> $providers$HEREv3.pedestrianNight
#> [1] "HEREv3.pedestrianNight"
#> 
#> $providers$HEREv3.satelliteDay
#> [1] "HEREv3.satelliteDay"
#> 
#> $providers$HEREv3.terrainDay
#> [1] "HEREv3.terrainDay"
#> 
#> $providers$HEREv3.terrainDayMobile
#> [1] "HEREv3.terrainDayMobile"
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
#> $providers$BasemapAT.terrain
#> [1] "BasemapAT.terrain"
#> 
#> $providers$BasemapAT.surface
#> [1] "BasemapAT.surface"
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
#> $providers$nlmaps.water
#> [1] "nlmaps.water"
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
#> $providers$GeoportailFrance
#> [1] "GeoportailFrance"
#> 
#> $providers$GeoportailFrance.plan
#> [1] "GeoportailFrance.plan"
#> 
#> $providers$GeoportailFrance.parcels
#> [1] "GeoportailFrance.parcels"
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
#> $providers$USGS
#> [1] "USGS"
#> 
#> $providers$USGS.USTopo
#> [1] "USGS.USTopo"
#> 
#> $providers$USGS.USImagery
#> [1] "USGS.USImagery"
#> 
#> $providers$USGS.USImageryTopo
#> [1] "USGS.USImageryTopo"
#> 
#> $providers$WaymarkedTrails
#> [1] "WaymarkedTrails"
#> 
#> $providers$WaymarkedTrails.hiking
#> [1] "WaymarkedTrails.hiking"
#> 
#> $providers$WaymarkedTrails.cycling
#> [1] "WaymarkedTrails.cycling"
#> 
#> $providers$WaymarkedTrails.mtb
#> [1] "WaymarkedTrails.mtb"
#> 
#> $providers$WaymarkedTrails.slopes
#> [1] "WaymarkedTrails.slopes"
#> 
#> $providers$WaymarkedTrails.riding
#> [1] "WaymarkedTrails.riding"
#> 
#> $providers$WaymarkedTrails.skating
#> [1] "WaymarkedTrails.skating"
#> 
#> $providers$OpenAIP
#> [1] "OpenAIP"
#> 
#> $providers$OpenSnowMap
#> [1] "OpenSnowMap"
#> 
#> $providers$OpenSnowMap.pistes
#> [1] "OpenSnowMap.pistes"
#> 
#> $providers$AzureMaps
#> [1] "AzureMaps"
#> 
#> $providers$AzureMaps.MicrosoftImagery
#> [1] "AzureMaps.MicrosoftImagery"
#> 
#> $providers$AzureMaps.MicrosoftBaseDarkGrey
#> [1] "AzureMaps.MicrosoftBaseDarkGrey"
#> 
#> $providers$AzureMaps.MicrosoftBaseRoad
#> [1] "AzureMaps.MicrosoftBaseRoad"
#> 
#> $providers$AzureMaps.MicrosoftBaseHybridRoad
#> [1] "AzureMaps.MicrosoftBaseHybridRoad"
#> 
#> $providers$AzureMaps.MicrosoftTerraMain
#> [1] "AzureMaps.MicrosoftTerraMain"
#> 
#> $providers$AzureMaps.MicrosoftWeatherInfraredMain
#> [1] "AzureMaps.MicrosoftWeatherInfraredMain"
#> 
#> $providers$AzureMaps.MicrosoftWeatherRadarMain
#> [1] "AzureMaps.MicrosoftWeatherRadarMain"
#> 
#> $providers$SwissFederalGeoportal
#> [1] "SwissFederalGeoportal"
#> 
#> $providers$SwissFederalGeoportal.NationalMapColor
#> [1] "SwissFederalGeoportal.NationalMapColor"
#> 
#> $providers$SwissFederalGeoportal.NationalMapGrey
#> [1] "SwissFederalGeoportal.NationalMapGrey"
#> 
#> $providers$SwissFederalGeoportal.SWISSIMAGE
#> [1] "SwissFederalGeoportal.SWISSIMAGE"
#> 
#> 
#> $providers_details
#> $providers_details$OpenStreetMap
#> $providers_details$OpenStreetMap$url
#> [1] "https://tile.openstreetmap.org/{z}/{x}/{y}.png"
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
#> [1] "https://tile.openstreetmap.de/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenStreetMap$variants$DE$options
#> $providers_details$OpenStreetMap$variants$DE$options$maxZoom
#> [1] 18
#> 
#> 
#> 
#> $providers_details$OpenStreetMap$variants$CH
#> $providers_details$OpenStreetMap$variants$CH$url
#> [1] "https://tile.osm.ch/switzerland/{z}/{x}/{y}.png"
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
#> [1] "https://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenStreetMap$variants$France$options
#> $providers_details$OpenStreetMap$variants$France$options$maxZoom
#> [1] 20
#> 
#> $providers_details$OpenStreetMap$variants$France$options$attribution
#> [1] "&copy; OpenStreetMap France | {attribution.OpenStreetMap}"
#> 
#> 
#> 
#> $providers_details$OpenStreetMap$variants$HOT
#> $providers_details$OpenStreetMap$variants$HOT$url
#> [1] "https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenStreetMap$variants$HOT$options
#> $providers_details$OpenStreetMap$variants$HOT$options$attribution
#> [1] "{attribution.OpenStreetMap}, Tiles style by <a href=\"https://www.hotosm.org/\" target=\"_blank\">Humanitarian OpenStreetMap Team</a> hosted by <a href=\"https://openstreetmap.fr/\" target=\"_blank\">OpenStreetMap France</a>"
#> 
#> 
#> 
#> $providers_details$OpenStreetMap$variants$BZH
#> $providers_details$OpenStreetMap$variants$BZH$url
#> [1] "https://tile.openstreetmap.bzh/br/{z}/{x}/{y}.png"
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
#> $providers_details$MapTilesAPI
#> $providers_details$MapTilesAPI$url
#> [1] "https://maptiles.p.rapidapi.com/{variant}/{z}/{x}/{y}.png?rapidapi-key={apikey}"
#> 
#> $providers_details$MapTilesAPI$options
#> $providers_details$MapTilesAPI$options$attribution
#> [1] "&copy; <a href=\"http://www.maptilesapi.com/\">MapTiles API</a>, {attribution.OpenStreetMap}"
#> 
#> $providers_details$MapTilesAPI$options$variant
#> [1] "en/map/v1"
#> 
#> $providers_details$MapTilesAPI$options$apikey
#> [1] "<insert your api key here>"
#> 
#> $providers_details$MapTilesAPI$options$maxZoom
#> [1] 19
#> 
#> 
#> $providers_details$MapTilesAPI$variants
#> $providers_details$MapTilesAPI$variants$OSMEnglish
#> $providers_details$MapTilesAPI$variants$OSMEnglish$options
#> $providers_details$MapTilesAPI$variants$OSMEnglish$options$variant
#> [1] "en/map/v1"
#> 
#> 
#> 
#> $providers_details$MapTilesAPI$variants$OSMFrancais
#> $providers_details$MapTilesAPI$variants$OSMFrancais$options
#> $providers_details$MapTilesAPI$variants$OSMFrancais$options$variant
#> [1] "fr/map/v1"
#> 
#> 
#> 
#> $providers_details$MapTilesAPI$variants$OSMEspagnol
#> $providers_details$MapTilesAPI$variants$OSMEspagnol$options
#> $providers_details$MapTilesAPI$variants$OSMEspagnol$options$variant
#> [1] "es/map/v1"
#> 
#> 
#> 
#> 
#> 
#> $providers_details$OpenSeaMap
#> $providers_details$OpenSeaMap$url
#> [1] "https://tiles.openseamap.org/seamark/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenSeaMap$options
#> $providers_details$OpenSeaMap$options$attribution
#> [1] "Map data: &copy; <a href=\"http://www.openseamap.org\">OpenSeaMap</a> contributors"
#> 
#> 
#> 
#> $providers_details$OPNVKarte
#> $providers_details$OPNVKarte$url
#> [1] "https://tileserver.memomaps.de/tilegen/{z}/{x}/{y}.png"
#> 
#> $providers_details$OPNVKarte$options
#> $providers_details$OPNVKarte$options$maxZoom
#> [1] 18
#> 
#> $providers_details$OPNVKarte$options$attribution
#> [1] "Map <a href=\"https://memomaps.de/\">memomaps.de</a> <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA</a>, map data {attribution.OpenStreetMap}"
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
#> [1] "https://s3.amazonaws.com/te512.safecast.org/{z}/{x}/{y}.png"
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
#> $providers_details$Stadia
#> $providers_details$Stadia$url
#> [1] "https://tiles.stadiamaps.com/tiles/{variant}/{z}/{x}/{y}{r}.{ext}"
#> 
#> $providers_details$Stadia$options
#> $providers_details$Stadia$options$minZoom
#> [1] 0
#> 
#> $providers_details$Stadia$options$maxZoom
#> [1] 20
#> 
#> $providers_details$Stadia$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$options$variant
#> [1] "alidade_smooth"
#> 
#> $providers_details$Stadia$options$ext
#> [1] "png"
#> 
#> 
#> $providers_details$Stadia$variants
#> $providers_details$Stadia$variants$AlidadeSmooth
#> [1] "alidade_smooth"
#> 
#> $providers_details$Stadia$variants$AlidadeSmoothDark
#> [1] "alidade_smooth_dark"
#> 
#> $providers_details$Stadia$variants$OSMBright
#> [1] "osm_bright"
#> 
#> $providers_details$Stadia$variants$Outdoors
#> [1] "outdoors"
#> 
#> $providers_details$Stadia$variants$StamenToner
#> $providers_details$Stadia$variants$StamenToner$options
#> $providers_details$Stadia$variants$StamenToner$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$variants$StamenToner$options$variant
#> [1] "stamen_toner"
#> 
#> 
#> 
#> $providers_details$Stadia$variants$StamenTonerBackground
#> $providers_details$Stadia$variants$StamenTonerBackground$options
#> $providers_details$Stadia$variants$StamenTonerBackground$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$variants$StamenTonerBackground$options$variant
#> [1] "stamen_toner_background"
#> 
#> 
#> 
#> $providers_details$Stadia$variants$StamenTonerLines
#> $providers_details$Stadia$variants$StamenTonerLines$options
#> $providers_details$Stadia$variants$StamenTonerLines$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$variants$StamenTonerLines$options$variant
#> [1] "stamen_toner_lines"
#> 
#> 
#> 
#> $providers_details$Stadia$variants$StamenTonerLabels
#> $providers_details$Stadia$variants$StamenTonerLabels$options
#> $providers_details$Stadia$variants$StamenTonerLabels$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$variants$StamenTonerLabels$options$variant
#> [1] "stamen_toner_labels"
#> 
#> 
#> 
#> $providers_details$Stadia$variants$StamenTonerLite
#> $providers_details$Stadia$variants$StamenTonerLite$options
#> $providers_details$Stadia$variants$StamenTonerLite$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$variants$StamenTonerLite$options$variant
#> [1] "stamen_toner_lite"
#> 
#> 
#> 
#> $providers_details$Stadia$variants$StamenWatercolor
#> $providers_details$Stadia$variants$StamenWatercolor$url
#> [1] "https://tiles.stadiamaps.com/tiles/{variant}/{z}/{x}/{y}.{ext}"
#> 
#> $providers_details$Stadia$variants$StamenWatercolor$options
#> $providers_details$Stadia$variants$StamenWatercolor$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$variants$StamenWatercolor$options$variant
#> [1] "stamen_watercolor"
#> 
#> $providers_details$Stadia$variants$StamenWatercolor$options$ext
#> [1] "jpg"
#> 
#> $providers_details$Stadia$variants$StamenWatercolor$options$minZoom
#> [1] 1
#> 
#> $providers_details$Stadia$variants$StamenWatercolor$options$maxZoom
#> [1] 16
#> 
#> 
#> 
#> $providers_details$Stadia$variants$StamenTerrain
#> $providers_details$Stadia$variants$StamenTerrain$options
#> $providers_details$Stadia$variants$StamenTerrain$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$variants$StamenTerrain$options$variant
#> [1] "stamen_terrain"
#> 
#> $providers_details$Stadia$variants$StamenTerrain$options$minZoom
#> [1] 0
#> 
#> $providers_details$Stadia$variants$StamenTerrain$options$maxZoom
#> [1] 18
#> 
#> 
#> 
#> $providers_details$Stadia$variants$StamenTerrainBackground
#> $providers_details$Stadia$variants$StamenTerrainBackground$options
#> $providers_details$Stadia$variants$StamenTerrainBackground$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$variants$StamenTerrainBackground$options$variant
#> [1] "stamen_terrain_background"
#> 
#> $providers_details$Stadia$variants$StamenTerrainBackground$options$minZoom
#> [1] 0
#> 
#> $providers_details$Stadia$variants$StamenTerrainBackground$options$maxZoom
#> [1] 18
#> 
#> 
#> 
#> $providers_details$Stadia$variants$StamenTerrainLabels
#> $providers_details$Stadia$variants$StamenTerrainLabels$options
#> $providers_details$Stadia$variants$StamenTerrainLabels$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$variants$StamenTerrainLabels$options$variant
#> [1] "stamen_terrain_labels"
#> 
#> $providers_details$Stadia$variants$StamenTerrainLabels$options$minZoom
#> [1] 0
#> 
#> $providers_details$Stadia$variants$StamenTerrainLabels$options$maxZoom
#> [1] 18
#> 
#> 
#> 
#> $providers_details$Stadia$variants$StamenTerrainLines
#> $providers_details$Stadia$variants$StamenTerrainLines$options
#> $providers_details$Stadia$variants$StamenTerrainLines$options$attribution
#> [1] "&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> &copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> &copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Stadia$variants$StamenTerrainLines$options$variant
#> [1] "stamen_terrain_lines"
#> 
#> $providers_details$Stadia$variants$StamenTerrainLines$options$minZoom
#> [1] 0
#> 
#> $providers_details$Stadia$variants$StamenTerrainLines$options$maxZoom
#> [1] 18
#> 
#> 
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
#> $providers_details$CyclOSM
#> $providers_details$CyclOSM$url
#> [1] "https://{s}.tile-cyclosm.openstreetmap.fr/cyclosm/{z}/{x}/{y}.png"
#> 
#> $providers_details$CyclOSM$options
#> $providers_details$CyclOSM$options$maxZoom
#> [1] 20
#> 
#> $providers_details$CyclOSM$options$attribution
#> [1] "<a href=\"https://github.com/cyclosm/cyclosm-cartocss-style/releases\" title=\"CyclOSM - Open Bicycle render\">CyclOSM</a> | Map data: {attribution.OpenStreetMap}"
#> 
#> 
#> 
#> $providers_details$Jawg
#> $providers_details$Jawg$url
#> [1] "https://{s}.tile.jawg.io/{variant}/{z}/{x}/{y}{r}.png?access-token={accessToken}"
#> 
#> $providers_details$Jawg$options
#> $providers_details$Jawg$options$attribution
#> [1] "<a href=\"http://jawg.io\" title=\"Tiles Courtesy of Jawg Maps\" target=\"_blank\">&copy; <b>Jawg</b>Maps</a> {attribution.OpenStreetMap}"
#> 
#> $providers_details$Jawg$options$minZoom
#> [1] 0
#> 
#> $providers_details$Jawg$options$maxZoom
#> [1] 22
#> 
#> $providers_details$Jawg$options$subdomains
#> [1] "abcd"
#> 
#> $providers_details$Jawg$options$variant
#> [1] "jawg-terrain"
#> 
#> $providers_details$Jawg$options$accessToken
#> [1] "<insert your access token here>"
#> 
#> 
#> $providers_details$Jawg$variants
#> $providers_details$Jawg$variants$Streets
#> [1] "jawg-streets"
#> 
#> $providers_details$Jawg$variants$Terrain
#> [1] "jawg-terrain"
#> 
#> $providers_details$Jawg$variants$Sunny
#> [1] "jawg-sunny"
#> 
#> $providers_details$Jawg$variants$Dark
#> [1] "jawg-dark"
#> 
#> $providers_details$Jawg$variants$Light
#> [1] "jawg-light"
#> 
#> $providers_details$Jawg$variants$Matrix
#> [1] "jawg-matrix"
#> 
#> 
#> 
#> $providers_details$MapBox
#> $providers_details$MapBox$url
#> [1] "https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}{r}?access_token={accessToken}"
#> 
#> $providers_details$MapBox$options
#> $providers_details$MapBox$options$attribution
#> [1] "&copy; <a href=\"https://www.mapbox.com/about/maps/\" target=\"_blank\">Mapbox</a> {attribution.OpenStreetMap} <a href=\"https://www.mapbox.com/map-feedback/\" target=\"_blank\">Improve this map</a>"
#> 
#> $providers_details$MapBox$options$tileSize
#> [1] 512
#> 
#> $providers_details$MapBox$options$maxZoom
#> [1] 18
#> 
#> $providers_details$MapBox$options$zoomOffset
#> [1] -1
#> 
#> $providers_details$MapBox$options$id
#> [1] "mapbox/streets-v11"
#> 
#> $providers_details$MapBox$options$accessToken
#> [1] "<insert your access token here>"
#> 
#> 
#> 
#> $providers_details$MapTiler
#> $providers_details$MapTiler$url
#> [1] "https://api.maptiler.com/maps/{variant}/{z}/{x}/{y}{r}.{ext}?key={key}"
#> 
#> $providers_details$MapTiler$options
#> $providers_details$MapTiler$options$attribution
#> [1] "<a href=\"https://www.maptiler.com/copyright/\" target=\"_blank\">&copy; MapTiler</a> <a href=\"https://www.openstreetmap.org/copyright\" target=\"_blank\">&copy; OpenStreetMap contributors</a>"
#> 
#> $providers_details$MapTiler$options$variant
#> [1] "streets"
#> 
#> $providers_details$MapTiler$options$ext
#> [1] "png"
#> 
#> $providers_details$MapTiler$options$key
#> [1] "<insert your MapTiler Cloud API key here>"
#> 
#> $providers_details$MapTiler$options$tileSize
#> [1] 512
#> 
#> $providers_details$MapTiler$options$zoomOffset
#> [1] -1
#> 
#> $providers_details$MapTiler$options$minZoom
#> [1] 0
#> 
#> $providers_details$MapTiler$options$maxZoom
#> [1] 21
#> 
#> 
#> $providers_details$MapTiler$variants
#> $providers_details$MapTiler$variants$Streets
#> [1] "streets"
#> 
#> $providers_details$MapTiler$variants$Basic
#> [1] "basic"
#> 
#> $providers_details$MapTiler$variants$Bright
#> [1] "bright"
#> 
#> $providers_details$MapTiler$variants$Pastel
#> [1] "pastel"
#> 
#> $providers_details$MapTiler$variants$Positron
#> [1] "positron"
#> 
#> $providers_details$MapTiler$variants$Hybrid
#> $providers_details$MapTiler$variants$Hybrid$options
#> $providers_details$MapTiler$variants$Hybrid$options$variant
#> [1] "hybrid"
#> 
#> $providers_details$MapTiler$variants$Hybrid$options$ext
#> [1] "jpg"
#> 
#> 
#> 
#> $providers_details$MapTiler$variants$Toner
#> [1] "toner"
#> 
#> $providers_details$MapTiler$variants$Topo
#> [1] "topo"
#> 
#> $providers_details$MapTiler$variants$Voyager
#> [1] "voyager"
#> 
#> 
#> 
#> $providers_details$TomTom
#> $providers_details$TomTom$url
#> [1] "https://{s}.api.tomtom.com/map/1/tile/{variant}/{style}/{z}/{x}/{y}.{ext}?key={apikey}"
#> 
#> $providers_details$TomTom$options
#> $providers_details$TomTom$options$variant
#> [1] "basic"
#> 
#> $providers_details$TomTom$options$maxZoom
#> [1] 22
#> 
#> $providers_details$TomTom$options$attribution
#> [1] "<a href=\"https://tomtom.com\" target=\"_blank\">&copy;  1992 - 2026 TomTom.</a> "
#> 
#> $providers_details$TomTom$options$subdomains
#> [1] "abcd"
#> 
#> $providers_details$TomTom$options$style
#> [1] "main"
#> 
#> $providers_details$TomTom$options$ext
#> [1] "png"
#> 
#> $providers_details$TomTom$options$apikey
#> [1] "<insert your API key here>"
#> 
#> 
#> $providers_details$TomTom$variants
#> $providers_details$TomTom$variants$Basic
#> [1] "basic"
#> 
#> $providers_details$TomTom$variants$Hybrid
#> [1] "hybrid"
#> 
#> $providers_details$TomTom$variants$Labels
#> [1] "labels"
#> 
#> 
#> 
#> $providers_details$Esri
#> $providers_details$Esri$url
#> [1] "https://server.arcgisonline.com/ArcGIS/rest/services/{variant}/MapServer/tile/{z}/{y}/{x}"
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
#> [1] "Ocean/World_Ocean_Base"
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
#> [1] "Map &copy; 1987-2026 <a href=\"http://developer.here.com\">HERE</a>"
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
#> $providers_details$HERE$variants$normalDayTraffic
#> $providers_details$HERE$variants$normalDayTraffic$options
#> $providers_details$HERE$variants$normalDayTraffic$options$variant
#> [1] "normal.traffic.day"
#> 
#> $providers_details$HERE$variants$normalDayTraffic$options$base
#> [1] "traffic"
#> 
#> $providers_details$HERE$variants$normalDayTraffic$options$type
#> [1] "traffictile"
#> 
#> 
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
#> $providers_details$HERE$variants$hybridDayTraffic
#> $providers_details$HERE$variants$hybridDayTraffic$options
#> $providers_details$HERE$variants$hybridDayTraffic$options$variant
#> [1] "hybrid.traffic.day"
#> 
#> $providers_details$HERE$variants$hybridDayTraffic$options$base
#> [1] "traffic"
#> 
#> $providers_details$HERE$variants$hybridDayTraffic$options$type
#> [1] "traffictile"
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
#> $providers_details$HEREv3
#> $providers_details$HEREv3$url
#> [1] "https://{s}.{base}.maps.ls.hereapi.com/maptile/2.1/{type}/{mapID}/{variant}/{z}/{x}/{y}/{size}/{format}?apiKey={apiKey}&lg={language}"
#> 
#> $providers_details$HEREv3$options
#> $providers_details$HEREv3$options$attribution
#> [1] "Map &copy; 1987-2026 <a href=\"http://developer.here.com\">HERE</a>"
#> 
#> $providers_details$HEREv3$options$subdomains
#> [1] "1234"
#> 
#> $providers_details$HEREv3$options$mapID
#> [1] "newest"
#> 
#> $providers_details$HEREv3$options$apiKey
#> [1] "<insert your apiKey here>"
#> 
#> $providers_details$HEREv3$options$base
#> [1] "base"
#> 
#> $providers_details$HEREv3$options$variant
#> [1] "normal.day"
#> 
#> $providers_details$HEREv3$options$maxZoom
#> [1] 20
#> 
#> $providers_details$HEREv3$options$type
#> [1] "maptile"
#> 
#> $providers_details$HEREv3$options$language
#> [1] "eng"
#> 
#> $providers_details$HEREv3$options$format
#> [1] "png8"
#> 
#> $providers_details$HEREv3$options$size
#> [1] "256"
#> 
#> 
#> $providers_details$HEREv3$variants
#> $providers_details$HEREv3$variants$normalDay
#> [1] "normal.day"
#> 
#> $providers_details$HEREv3$variants$normalDayCustom
#> [1] "normal.day.custom"
#> 
#> $providers_details$HEREv3$variants$normalDayGrey
#> [1] "normal.day.grey"
#> 
#> $providers_details$HEREv3$variants$normalDayMobile
#> [1] "normal.day.mobile"
#> 
#> $providers_details$HEREv3$variants$normalDayGreyMobile
#> [1] "normal.day.grey.mobile"
#> 
#> $providers_details$HEREv3$variants$normalDayTransit
#> [1] "normal.day.transit"
#> 
#> $providers_details$HEREv3$variants$normalDayTransitMobile
#> [1] "normal.day.transit.mobile"
#> 
#> $providers_details$HEREv3$variants$normalNight
#> [1] "normal.night"
#> 
#> $providers_details$HEREv3$variants$normalNightMobile
#> [1] "normal.night.mobile"
#> 
#> $providers_details$HEREv3$variants$normalNightGrey
#> [1] "normal.night.grey"
#> 
#> $providers_details$HEREv3$variants$normalNightGreyMobile
#> [1] "normal.night.grey.mobile"
#> 
#> $providers_details$HEREv3$variants$normalNightTransit
#> [1] "normal.night.transit"
#> 
#> $providers_details$HEREv3$variants$normalNightTransitMobile
#> [1] "normal.night.transit.mobile"
#> 
#> $providers_details$HEREv3$variants$reducedDay
#> [1] "reduced.day"
#> 
#> $providers_details$HEREv3$variants$reducedNight
#> [1] "reduced.night"
#> 
#> $providers_details$HEREv3$variants$basicMap
#> $providers_details$HEREv3$variants$basicMap$options
#> $providers_details$HEREv3$variants$basicMap$options$type
#> [1] "basetile"
#> 
#> 
#> 
#> $providers_details$HEREv3$variants$mapLabels
#> $providers_details$HEREv3$variants$mapLabels$options
#> $providers_details$HEREv3$variants$mapLabels$options$type
#> [1] "labeltile"
#> 
#> $providers_details$HEREv3$variants$mapLabels$options$format
#> [1] "png"
#> 
#> 
#> 
#> $providers_details$HEREv3$variants$trafficFlow
#> $providers_details$HEREv3$variants$trafficFlow$options
#> $providers_details$HEREv3$variants$trafficFlow$options$base
#> [1] "traffic"
#> 
#> $providers_details$HEREv3$variants$trafficFlow$options$type
#> [1] "flowtile"
#> 
#> 
#> 
#> $providers_details$HEREv3$variants$carnavDayGrey
#> [1] "carnav.day.grey"
#> 
#> $providers_details$HEREv3$variants$hybridDay
#> $providers_details$HEREv3$variants$hybridDay$options
#> $providers_details$HEREv3$variants$hybridDay$options$base
#> [1] "aerial"
#> 
#> $providers_details$HEREv3$variants$hybridDay$options$variant
#> [1] "hybrid.day"
#> 
#> 
#> 
#> $providers_details$HEREv3$variants$hybridDayMobile
#> $providers_details$HEREv3$variants$hybridDayMobile$options
#> $providers_details$HEREv3$variants$hybridDayMobile$options$base
#> [1] "aerial"
#> 
#> $providers_details$HEREv3$variants$hybridDayMobile$options$variant
#> [1] "hybrid.day.mobile"
#> 
#> 
#> 
#> $providers_details$HEREv3$variants$hybridDayTransit
#> $providers_details$HEREv3$variants$hybridDayTransit$options
#> $providers_details$HEREv3$variants$hybridDayTransit$options$base
#> [1] "aerial"
#> 
#> $providers_details$HEREv3$variants$hybridDayTransit$options$variant
#> [1] "hybrid.day.transit"
#> 
#> 
#> 
#> $providers_details$HEREv3$variants$hybridDayGrey
#> $providers_details$HEREv3$variants$hybridDayGrey$options
#> $providers_details$HEREv3$variants$hybridDayGrey$options$base
#> [1] "aerial"
#> 
#> $providers_details$HEREv3$variants$hybridDayGrey$options$variant
#> [1] "hybrid.grey.day"
#> 
#> 
#> 
#> $providers_details$HEREv3$variants$pedestrianDay
#> [1] "pedestrian.day"
#> 
#> $providers_details$HEREv3$variants$pedestrianNight
#> [1] "pedestrian.night"
#> 
#> $providers_details$HEREv3$variants$satelliteDay
#> $providers_details$HEREv3$variants$satelliteDay$options
#> $providers_details$HEREv3$variants$satelliteDay$options$base
#> [1] "aerial"
#> 
#> $providers_details$HEREv3$variants$satelliteDay$options$variant
#> [1] "satellite.day"
#> 
#> 
#> 
#> $providers_details$HEREv3$variants$terrainDay
#> $providers_details$HEREv3$variants$terrainDay$options
#> $providers_details$HEREv3$variants$terrainDay$options$base
#> [1] "aerial"
#> 
#> $providers_details$HEREv3$variants$terrainDay$options$variant
#> [1] "terrain.day"
#> 
#> 
#> 
#> $providers_details$HEREv3$variants$terrainDayMobile
#> $providers_details$HEREv3$variants$terrainDayMobile$options
#> $providers_details$HEREv3$variants$terrainDayMobile$options$base
#> [1] "aerial"
#> 
#> $providers_details$HEREv3$variants$terrainDayMobile$options$variant
#> [1] "terrain.day.mobile"
#> 
#> 
#> 
#> 
#> 
#> $providers_details$FreeMapSK
#> $providers_details$FreeMapSK$url
#> [1] "https://{s}.freemap.sk/T/{z}/{x}/{y}.jpeg"
#> 
#> $providers_details$FreeMapSK$options
#> $providers_details$FreeMapSK$options$minZoom
#> [1] 8
#> 
#> $providers_details$FreeMapSK$options$maxZoom
#> [1] 16
#> 
#> $providers_details$FreeMapSK$options$subdomains
#> [1] "abcd"
#> 
#> $providers_details$FreeMapSK$options$bounds
#>          [,1]     [,2]
#> [1,] 47.20464 15.99609
#> [2,] 49.83090 22.57690
#> 
#> $providers_details$FreeMapSK$options$attribution
#> [1] "{attribution.OpenStreetMap}, visualization CC-By-SA 2.0 <a href=\"http://freemap.sk\">Freemap.sk</a>"
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
#> [1] 20
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
#> [1] "https://mapsneu.wien.gv.at/basemap/{variant}/{type}/google3857/{z}/{y}/{x}.{format}"
#> 
#> $providers_details$BasemapAT$options
#> $providers_details$BasemapAT$options$maxZoom
#> [1] 19
#> 
#> $providers_details$BasemapAT$options$attribution
#> [1] "Datenquelle: <a href=\"https://www.basemap.at\">basemap.at</a>"
#> 
#> $providers_details$BasemapAT$options$type
#> [1] "normal"
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
#> $providers_details$BasemapAT$variants$terrain
#> $providers_details$BasemapAT$variants$terrain$options
#> $providers_details$BasemapAT$variants$terrain$options$variant
#> [1] "bmapgelaende"
#> 
#> $providers_details$BasemapAT$variants$terrain$options$type
#> [1] "grau"
#> 
#> $providers_details$BasemapAT$variants$terrain$options$format
#> [1] "jpeg"
#> 
#> 
#> 
#> $providers_details$BasemapAT$variants$surface
#> $providers_details$BasemapAT$variants$surface$options
#> $providers_details$BasemapAT$variants$surface$options$variant
#> [1] "bmapoberflaeche"
#> 
#> $providers_details$BasemapAT$variants$surface$options$type
#> [1] "grau"
#> 
#> $providers_details$BasemapAT$variants$surface$options$format
#> [1] "jpeg"
#> 
#> 
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
#> [1] "https://service.pdok.nl/brt/achtergrondkaart/wmts/v2_0/{variant}/EPSG:3857/{z}/{x}/{y}.png"
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
#> [1] "Kaartgegevens &copy; <a href=\"https://www.kadaster.nl\">Kadaster</a>"
#> 
#> 
#> $providers_details$nlmaps$variants
#> $providers_details$nlmaps$variants$standaard
#> [1] "standaard"
#> 
#> $providers_details$nlmaps$variants$pastel
#> [1] "pastel"
#> 
#> $providers_details$nlmaps$variants$grijs
#> [1] "grijs"
#> 
#> $providers_details$nlmaps$variants$water
#> [1] "water"
#> 
#> $providers_details$nlmaps$variants$luchtfoto
#> $providers_details$nlmaps$variants$luchtfoto$url
#> [1] "https://service.pdok.nl/hwh/luchtfotorgb/wmts/v1_0/Actueel_ortho25/EPSG:3857/{z}/{x}/{y}.jpeg"
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
#> [1] "MODIS_Terra_NDSI_Snow_Cover"
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
#> [1] "https://nls-{s}.tileserver.com/nls/{z}/{x}/{y}.jpg"
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
#> [1] "https://www.justicemap.org/tile/{size}/{variant}/{z}/{x}/{y}.png"
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
#> [1] "image/png"
#> 
#> $providers_details$GeoportailFrance$options$style
#> [1] "normal"
#> 
#> $providers_details$GeoportailFrance$options$variant
#> [1] "GEOGRAPHICALGRIDSYSTEMS.PLANIGNV2"
#> 
#> 
#> $providers_details$GeoportailFrance$variants
#> $providers_details$GeoportailFrance$variants$plan
#> [1] "GEOGRAPHICALGRIDSYSTEMS.PLANIGNV2"
#> 
#> $providers_details$GeoportailFrance$variants$parcels
#> $providers_details$GeoportailFrance$variants$parcels$options
#> $providers_details$GeoportailFrance$variants$parcels$options$variant
#> [1] "CADASTRALPARCELS.PARCELLAIRE_EXPRESS"
#> 
#> $providers_details$GeoportailFrance$variants$parcels$options$style
#> [1] "PCI vecteur"
#> 
#> $providers_details$GeoportailFrance$variants$parcels$options$maxZoom
#> [1] 20
#> 
#> 
#> 
#> $providers_details$GeoportailFrance$variants$orthos
#> $providers_details$GeoportailFrance$variants$orthos$options
#> $providers_details$GeoportailFrance$variants$orthos$options$maxZoom
#> [1] 19
#> 
#> $providers_details$GeoportailFrance$variants$orthos$options$format
#> [1] "image/jpeg"
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
#> [1] "https://maps-{s}.onemap.sg/v3/{variant}/{z}/{x}/{y}.png"
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
#> $providers_details$USGS
#> $providers_details$USGS$url
#> [1] "https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/tile/{z}/{y}/{x}"
#> 
#> $providers_details$USGS$options
#> $providers_details$USGS$options$maxZoom
#> [1] 20
#> 
#> $providers_details$USGS$options$attribution
#> [1] "Tiles courtesy of the <a href=\"https://usgs.gov/\">U.S. Geological Survey</a>"
#> 
#> 
#> $providers_details$USGS$variants
#> $providers_details$USGS$variants$USTopo
#> named list()
#> 
#> $providers_details$USGS$variants$USImagery
#> $providers_details$USGS$variants$USImagery$url
#> [1] "https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryOnly/MapServer/tile/{z}/{y}/{x}"
#> 
#> 
#> $providers_details$USGS$variants$USImageryTopo
#> $providers_details$USGS$variants$USImageryTopo$url
#> [1] "https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryTopo/MapServer/tile/{z}/{y}/{x}"
#> 
#> 
#> 
#> 
#> $providers_details$WaymarkedTrails
#> $providers_details$WaymarkedTrails$url
#> [1] "https://tile.waymarkedtrails.org/{variant}/{z}/{x}/{y}.png"
#> 
#> $providers_details$WaymarkedTrails$options
#> $providers_details$WaymarkedTrails$options$maxZoom
#> [1] 18
#> 
#> $providers_details$WaymarkedTrails$options$attribution
#> [1] "Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://waymarkedtrails.org\">waymarkedtrails.org</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)"
#> 
#> 
#> $providers_details$WaymarkedTrails$variants
#> $providers_details$WaymarkedTrails$variants$hiking
#> [1] "hiking"
#> 
#> $providers_details$WaymarkedTrails$variants$cycling
#> [1] "cycling"
#> 
#> $providers_details$WaymarkedTrails$variants$mtb
#> [1] "mtb"
#> 
#> $providers_details$WaymarkedTrails$variants$slopes
#> [1] "slopes"
#> 
#> $providers_details$WaymarkedTrails$variants$riding
#> [1] "riding"
#> 
#> $providers_details$WaymarkedTrails$variants$skating
#> [1] "skating"
#> 
#> 
#> 
#> $providers_details$OpenAIP
#> $providers_details$OpenAIP$url
#> [1] "https://{s}.tile.maps.openaip.net/geowebcache/service/tms/1.0.0/openaip_basemap@EPSG%3A900913@png/{z}/{x}/{y}.{ext}"
#> 
#> $providers_details$OpenAIP$options
#> $providers_details$OpenAIP$options$attribution
#> [1] "<a href=\"https://www.openaip.net/\">openAIP Data</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-NC-SA</a>)"
#> 
#> $providers_details$OpenAIP$options$ext
#> [1] "png"
#> 
#> $providers_details$OpenAIP$options$minZoom
#> [1] 4
#> 
#> $providers_details$OpenAIP$options$maxZoom
#> [1] 14
#> 
#> $providers_details$OpenAIP$options$tms
#> [1] TRUE
#> 
#> $providers_details$OpenAIP$options$detectRetina
#> [1] TRUE
#> 
#> $providers_details$OpenAIP$options$subdomains
#> [1] "12"
#> 
#> 
#> 
#> $providers_details$OpenSnowMap
#> $providers_details$OpenSnowMap$url
#> [1] "https://tiles.opensnowmap.org/{variant}/{z}/{x}/{y}.png"
#> 
#> $providers_details$OpenSnowMap$options
#> $providers_details$OpenSnowMap$options$minZoom
#> [1] 9
#> 
#> $providers_details$OpenSnowMap$options$maxZoom
#> [1] 18
#> 
#> $providers_details$OpenSnowMap$options$attribution
#> [1] "Map data: {attribution.OpenStreetMap} & ODbL, &copy; <a href=\"https://www.opensnowmap.org/iframes/data.html\">www.opensnowmap.org</a> <a href=\"https://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA</a>"
#> 
#> 
#> $providers_details$OpenSnowMap$variants
#> $providers_details$OpenSnowMap$variants$pistes
#> [1] "pistes"
#> 
#> 
#> 
#> $providers_details$AzureMaps
#> $providers_details$AzureMaps$url
#> [1] "https://atlas.microsoft.com/map/tile?api-version={apiVersion}&tilesetId={variant}&x={x}&y={y}&zoom={z}&language={language}&subscription-key={subscriptionKey}"
#> 
#> $providers_details$AzureMaps$options
#> $providers_details$AzureMaps$options$attribution
#> [1] "See https://docs.microsoft.com/en-us/rest/api/maps/render-v2/get-map-tile for details."
#> 
#> $providers_details$AzureMaps$options$apiVersion
#> [1] "2.0"
#> 
#> $providers_details$AzureMaps$options$variant
#> [1] "microsoft.imagery"
#> 
#> $providers_details$AzureMaps$options$subscriptionKey
#> [1] "<insert your subscription key here>"
#> 
#> $providers_details$AzureMaps$options$language
#> [1] "en-US"
#> 
#> 
#> $providers_details$AzureMaps$variants
#> $providers_details$AzureMaps$variants$MicrosoftImagery
#> [1] "microsoft.imagery"
#> 
#> $providers_details$AzureMaps$variants$MicrosoftBaseDarkGrey
#> [1] "microsoft.base.darkgrey"
#> 
#> $providers_details$AzureMaps$variants$MicrosoftBaseRoad
#> [1] "microsoft.base.road"
#> 
#> $providers_details$AzureMaps$variants$MicrosoftBaseHybridRoad
#> [1] "microsoft.base.hybrid.road"
#> 
#> $providers_details$AzureMaps$variants$MicrosoftTerraMain
#> [1] "microsoft.terra.main"
#> 
#> $providers_details$AzureMaps$variants$MicrosoftWeatherInfraredMain
#> $providers_details$AzureMaps$variants$MicrosoftWeatherInfraredMain$url
#> [1] "https://atlas.microsoft.com/map/tile?api-version={apiVersion}&tilesetId={variant}&x={x}&y={y}&zoom={z}&timeStamp={timeStamp}&language={language}&subscription-key={subscriptionKey}"
#> 
#> $providers_details$AzureMaps$variants$MicrosoftWeatherInfraredMain$options
#> $providers_details$AzureMaps$variants$MicrosoftWeatherInfraredMain$options$timeStamp
#> [1] "2021-05-08T09:03:00Z"
#> 
#> $providers_details$AzureMaps$variants$MicrosoftWeatherInfraredMain$options$attribution
#> [1] "See https://docs.microsoft.com/en-us/rest/api/maps/render-v2/get-map-tile#uri-parameters for details."
#> 
#> $providers_details$AzureMaps$variants$MicrosoftWeatherInfraredMain$options$variant
#> [1] "microsoft.weather.infrared.main"
#> 
#> 
#> 
#> $providers_details$AzureMaps$variants$MicrosoftWeatherRadarMain
#> $providers_details$AzureMaps$variants$MicrosoftWeatherRadarMain$url
#> [1] "https://atlas.microsoft.com/map/tile?api-version={apiVersion}&tilesetId={variant}&x={x}&y={y}&zoom={z}&timeStamp={timeStamp}&language={language}&subscription-key={subscriptionKey}"
#> 
#> $providers_details$AzureMaps$variants$MicrosoftWeatherRadarMain$options
#> $providers_details$AzureMaps$variants$MicrosoftWeatherRadarMain$options$timeStamp
#> [1] "2021-05-08T09:03:00Z"
#> 
#> $providers_details$AzureMaps$variants$MicrosoftWeatherRadarMain$options$attribution
#> [1] "See https://docs.microsoft.com/en-us/rest/api/maps/render-v2/get-map-tile#uri-parameters for details."
#> 
#> $providers_details$AzureMaps$variants$MicrosoftWeatherRadarMain$options$variant
#> [1] "microsoft.weather.radar.main"
#> 
#> 
#> 
#> 
#> 
#> $providers_details$SwissFederalGeoportal
#> $providers_details$SwissFederalGeoportal$url
#> [1] "https://wmts.geo.admin.ch/1.0.0/{variant}/default/current/3857/{z}/{x}/{y}.jpeg"
#> 
#> $providers_details$SwissFederalGeoportal$options
#> $providers_details$SwissFederalGeoportal$options$attribution
#> [1] "&copy; <a href=\"https://www.swisstopo.admin.ch/\">swisstopo</a>"
#> 
#> $providers_details$SwissFederalGeoportal$options$minZoom
#> [1] 2
#> 
#> $providers_details$SwissFederalGeoportal$options$maxZoom
#> [1] 18
#> 
#> $providers_details$SwissFederalGeoportal$options$bounds
#>          [,1]      [,2]
#> [1,] 45.39818  5.140242
#> [2,] 48.23065 11.477570
#> 
#> 
#> $providers_details$SwissFederalGeoportal$variants
#> $providers_details$SwissFederalGeoportal$variants$NationalMapColor
#> [1] "ch.swisstopo.pixelkarte-farbe"
#> 
#> $providers_details$SwissFederalGeoportal$variants$NationalMapGrey
#> [1] "ch.swisstopo.pixelkarte-grau"
#> 
#> $providers_details$SwissFederalGeoportal$variants$SWISSIMAGE
#> $providers_details$SwissFederalGeoportal$variants$SWISSIMAGE$options
#> $providers_details$SwissFederalGeoportal$variants$SWISSIMAGE$options$variant
#> [1] "ch.swisstopo.swissimage"
#> 
#> $providers_details$SwissFederalGeoportal$variants$SWISSIMAGE$options$maxZoom
#> [1] 19
#> 
#> 
#> 
#> 
#> 
#> 
#> $src
#> [1] "(function (root, factory) {\n\tif (typeof define === 'function' && define.amd) {\n\t\t// AMD. Register as an anonymous module.\n\t\tdefine(['leaflet'], factory);\n\t} else if (typeof modules === 'object' && module.exports) {\n\t\t// define a Common JS module that relies on 'leaflet'\n\t\tmodule.exports = factory(require('leaflet'));\n\t} else {\n\t\t// Assume Leaflet is loaded into global object L already\n\t\tfactory(L);\n\t}\n}(this, function (L) {\n\t'use strict';\n\n\tL.TileLayer.Provider = L.TileLayer.extend({\n\t\tinitialize: function (arg, options) {\n\t\t\tvar providers = L.TileLayer.Provider.providers;\n\n\t\t\tvar parts = arg.split('.');\n\n\t\t\tvar providerName = parts[0];\n\t\t\tvar variantName = parts[1];\n\n\t\t\tif (!providers[providerName]) {\n\t\t\t\tthrow 'No such provider (' + providerName + ')';\n\t\t\t}\n\n\t\t\tvar provider = {\n\t\t\t\turl: providers[providerName].url,\n\t\t\t\toptions: providers[providerName].options\n\t\t\t};\n\n\t\t\t// overwrite values in provider from variant.\n\t\t\tif (variantName && 'variants' in providers[providerName]) {\n\t\t\t\tif (!(variantName in providers[providerName].variants)) {\n\t\t\t\t\tthrow 'No such variant of ' + providerName + ' (' + variantName + ')';\n\t\t\t\t}\n\t\t\t\tvar variant = providers[providerName].variants[variantName];\n\t\t\t\tvar variantOptions;\n\t\t\t\tif (typeof variant === 'string') {\n\t\t\t\t\tvariantOptions = {\n\t\t\t\t\t\tvariant: variant\n\t\t\t\t\t};\n\t\t\t\t} else {\n\t\t\t\t\tvariantOptions = variant.options;\n\t\t\t\t}\n\t\t\t\tprovider = {\n\t\t\t\t\turl: variant.url || provider.url,\n\t\t\t\t\toptions: L.Util.extend({}, provider.options, variantOptions)\n\t\t\t\t};\n\t\t\t}\n\n\t\t\t// replace attribution placeholders with their values from toplevel provider attribution,\n\t\t\t// recursively\n\t\t\tvar attributionReplacer = function (attr) {\n\t\t\t\tif (attr.indexOf('{attribution.') === -1) {\n\t\t\t\t\treturn attr;\n\t\t\t\t}\n\t\t\t\treturn attr.replace(/\\{attribution.(\\w*)\\}/g,\n\t\t\t\t\tfunction (match, attributionName) {\n\t\t\t\t\t\treturn attributionReplacer(providers[attributionName].options.attribution);\n\t\t\t\t\t}\n\t\t\t\t);\n\t\t\t};\n\t\t\tprovider.options.attribution = attributionReplacer(provider.options.attribution);\n\n\t\t\t// Compute final options combining provider options with any user overrides\n\t\t\tvar layerOpts = L.Util.extend({}, provider.options, options);\n\t\t\tL.TileLayer.prototype.initialize.call(this, provider.url, layerOpts);\n\t\t}\n\t});\n\n\t/**\n\t * Definition of providers.\n\t * see http://leafletjs.com/reference.html#tilelayer for options in the options map.\n\t */\n\n\tL.TileLayer.Provider.providers = {\n\t\tOpenStreetMap: {\n\t\t\turl: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution:\n\t\t\t\t\t'&copy; <a href=\"https://www.openstreetmap.org/copyright\">OpenStreetMap</a> contributors'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tMapnik: {},\n\t\t\t\tDE: {\n\t\t\t\t\turl: 'https://tile.openstreetmap.de/{z}/{x}/{y}.png',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 18\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tCH: {\n\t\t\t\t\turl: 'https://tile.osm.ch/switzerland/{z}/{x}/{y}.png',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 18,\n\t\t\t\t\t\tbounds: [[45, 5], [48, 11]]\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tFrance: {\n\t\t\t\t\turl: 'https://{s}.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 20,\n\t\t\t\t\t\tattribution: '&copy; OpenStreetMap France | {attribution.OpenStreetMap}'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tHOT: {\n\t\t\t\t\turl: 'https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}, ' +\n\t\t\t\t\t\t\t'Tiles style by <a href=\"https://www.hotosm.org/\" target=\"_blank\">Humanitarian OpenStreetMap Team</a> ' +\n\t\t\t\t\t\t\t'hosted by <a href=\"https://openstreetmap.fr/\" target=\"_blank\">OpenStreetMap France</a>'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tBZH: {\n\t\t\t\t\turl: 'https://tile.openstreetmap.bzh/br/{z}/{x}/{y}.png',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution: '{attribution.OpenStreetMap}, Tiles courtesy of <a href=\"http://www.openstreetmap.bzh/\" target=\"_blank\">Breton OpenStreetMap Team</a>',\n\t\t\t\t\t\tbounds: [[46.2, -5.5], [50, 0.7]]\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tMapTilesAPI: {\n\t\t\turl: 'https://maptiles.p.rapidapi.com/{variant}/{z}/{x}/{y}.png?rapidapi-key={apikey}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'&copy; <a href=\"http://www.maptilesapi.com/\">MapTiles API</a>, {attribution.OpenStreetMap}',\n\t\t\t\tvariant: 'en/map/v1',\n\t\t\t\t// Get your own MapTiles API access token here : https://www.maptilesapi.com/\n\t\t\t\t// NB : this is a demonstration key that comes with no guarantee and not to be used in production\n\t\t\t\tapikey: '<insert your api key here>',\n\t\t\t\tmaxZoom: 19\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tOSMEnglish: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'en/map/v1'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tOSMFrancais: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'fr/map/v1'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tOSMEspagnol: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'es/map/v1'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tOpenSeaMap: {\n\t\t\turl: 'https://tiles.openseamap.org/seamark/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tattribution: 'Map data: &copy; <a href=\"http://www.openseamap.org\">OpenSeaMap</a> contributors'\n\t\t\t}\n\t\t},\n\t\tOPNVKarte: {\n\t\t\turl: 'https://tileserver.memomaps.de/tilegen/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 18,\n\t\t\t\tattribution: 'Map <a href=\"https://memomaps.de/\">memomaps.de</a> <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA</a>, map data {attribution.OpenStreetMap}'\n\t\t\t}\n\t\t},\n\t\tOpenTopoMap: {\n\t\t\turl: 'https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 17,\n\t\t\t\tattribution: 'Map data: {attribution.OpenStreetMap}, <a href=\"http://viewfinderpanoramas.org\">SRTM</a> | Map style: &copy; <a href=\"https://opentopomap.org\">OpenTopoMap</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)'\n\t\t\t}\n\t\t},\n\t\tOpenRailwayMap: {\n\t\t\turl: 'https://{s}.tiles.openrailwaymap.org/standard/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution: 'Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://www.OpenRailwayMap.org\">OpenRailwayMap</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)'\n\t\t\t}\n\t\t},\n\t\tOpenFireMap: {\n\t\t\turl: 'http://openfiremap.org/hytiles/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution: 'Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"http://www.openfiremap.org\">OpenFireMap</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)'\n\t\t\t}\n\t\t},\n\t\tSafeCast: {\n\t\t\turl: 'https://s3.amazonaws.com/te512.safecast.org/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 16,\n\t\t\t\tattribution: 'Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://blog.safecast.org/about/\">SafeCast</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)'\n\t\t\t}\n\t\t},\n\t\tStadia: {\n\t\t\turl: 'https://tiles.stadiamaps.com/tiles/{variant}/{z}/{x}/{y}{r}.{ext}',\n\t\t\toptions: {\n\t\t\t\tminZoom: 0,\n\t\t\t\tmaxZoom: 20,\n\t\t\t\tattribution:\n\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\tvariant: 'alidade_smooth',\n\t\t\t\text: 'png'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tAlidadeSmooth: 'alidade_smooth',\n\t\t\t\tAlidadeSmoothDark: 'alidade_smooth_dark',\n\t\t\t\tOSMBright: 'osm_bright',\n\t\t\t\tOutdoors: 'outdoors',\n\t\t\t\tStamenToner: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\t\t\tvariant: 'stamen_toner'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tStamenTonerBackground: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\t\t\tvariant: 'stamen_toner_background'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tStamenTonerLines: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\t\t\tvariant: 'stamen_toner_lines'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tStamenTonerLabels: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\t\t\tvariant: 'stamen_toner_labels'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tStamenTonerLite: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\t\t\tvariant: 'stamen_toner_lite'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tStamenWatercolor: {\n\t\t\t\t\turl: 'https://tiles.stadiamaps.com/tiles/{variant}/{z}/{x}/{y}.{ext}',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\t\t\tvariant: 'stamen_watercolor',\n\t\t\t\t\t\text: 'jpg',\n\t\t\t\t\t\tminZoom: 1,\n\t\t\t\t\t\tmaxZoom: 16\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tStamenTerrain: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\t\t\tvariant: 'stamen_terrain',\n\t\t\t\t\t\tminZoom: 0,\n\t\t\t\t\t\tmaxZoom: 18\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tStamenTerrainBackground: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\t\t\tvariant: 'stamen_terrain_background',\n\t\t\t\t\t\tminZoom: 0,\n\t\t\t\t\t\tmaxZoom: 18\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tStamenTerrainLabels: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\t\t\tvariant: 'stamen_terrain_labels',\n\t\t\t\t\t\tminZoom: 0,\n\t\t\t\t\t\tmaxZoom: 18\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tStamenTerrainLines: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stadiamaps.com/\" target=\"_blank\">Stadia Maps</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://www.stamen.com/\" target=\"_blank\">Stamen Design</a> ' +\n\t\t\t\t\t\t\t'&copy; <a href=\"https://openmaptiles.org/\" target=\"_blank\">OpenMapTiles</a> ' +\n\t\t\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\t\t\tvariant: 'stamen_terrain_lines',\n\t\t\t\t\t\tminZoom: 0,\n\t\t\t\t\t\tmaxZoom: 18\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tThunderforest: {\n\t\t\turl: 'https://{s}.tile.thunderforest.com/{variant}/{z}/{x}/{y}.png?apikey={apikey}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'&copy; <a href=\"http://www.thunderforest.com/\">Thunderforest</a>, {attribution.OpenStreetMap}',\n\t\t\t\tvariant: 'cycle',\n\t\t\t\tapikey: '<insert your api key here>',\n\t\t\t\tmaxZoom: 22\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tOpenCycleMap: 'cycle',\n\t\t\t\tTransport: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'transport'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tTransportDark: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'transport-dark'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tSpinalMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'spinal-map'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tLandscape: 'landscape',\n\t\t\t\tOutdoors: 'outdoors',\n\t\t\t\tPioneer: 'pioneer',\n\t\t\t\tMobileAtlas: 'mobile-atlas',\n\t\t\t\tNeighbourhood: 'neighbourhood'\n\t\t\t}\n\t\t},\n\t\tCyclOSM: {\n\t\t\turl: 'https://{s}.tile-cyclosm.openstreetmap.fr/cyclosm/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 20,\n\t\t\t\tattribution: '<a href=\"https://github.com/cyclosm/cyclosm-cartocss-style/releases\" title=\"CyclOSM - Open Bicycle render\">CyclOSM</a> | Map data: {attribution.OpenStreetMap}'\n\t\t\t}\n\t\t},\n\t\tJawg: {\n\t\t\turl: 'https://{s}.tile.jawg.io/{variant}/{z}/{x}/{y}{r}.png?access-token={accessToken}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'<a href=\"http://jawg.io\" title=\"Tiles Courtesy of Jawg Maps\" target=\"_blank\">&copy; <b>Jawg</b>Maps</a> ' +\n\t\t\t\t\t'{attribution.OpenStreetMap}',\n\t\t\t\tminZoom: 0,\n\t\t\t\tmaxZoom: 22,\n\t\t\t\tsubdomains: 'abcd',\n\t\t\t\tvariant: 'jawg-terrain',\n\t\t\t\t// Get your own Jawg access token here : https://www.jawg.io/lab/\n\t\t\t\t// NB : this is a demonstration key that comes with no guarantee\n\t\t\t\taccessToken: '<insert your access token here>',\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tStreets: 'jawg-streets',\n\t\t\t\tTerrain: 'jawg-terrain',\n\t\t\t\tSunny: 'jawg-sunny',\n\t\t\t\tDark: 'jawg-dark',\n\t\t\t\tLight: 'jawg-light',\n\t\t\t\tMatrix: 'jawg-matrix'\n\t\t\t}\n\t\t},\n\t\tMapBox: {\n\t\t\turl: 'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}{r}?access_token={accessToken}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'&copy; <a href=\"https://www.mapbox.com/about/maps/\" target=\"_blank\">Mapbox</a> ' +\n\t\t\t\t\t'{attribution.OpenStreetMap} ' +\n\t\t\t\t\t'<a href=\"https://www.mapbox.com/map-feedback/\" target=\"_blank\">Improve this map</a>',\n\t\t\t\ttileSize: 512,\n\t\t\t\tmaxZoom: 18,\n\t\t\t\tzoomOffset: -1,\n\t\t\t\tid: 'mapbox/streets-v11',\n\t\t\t\taccessToken: '<insert your access token here>',\n\t\t\t}\n\t\t},\n\t\tMapTiler: {\n\t\t\turl: 'https://api.maptiler.com/maps/{variant}/{z}/{x}/{y}{r}.{ext}?key={key}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'<a href=\"https://www.maptiler.com/copyright/\" target=\"_blank\">&copy; MapTiler</a> <a href=\"https://www.openstreetmap.org/copyright\" target=\"_blank\">&copy; OpenStreetMap contributors</a>',\n\t\t\t\tvariant: 'streets',\n\t\t\t\text: 'png',\n\t\t\t\tkey: '<insert your MapTiler Cloud API key here>',\n\t\t\t\ttileSize: 512,\n\t\t\t\tzoomOffset: -1,\n\t\t\t\tminZoom: 0,\n\t\t\t\tmaxZoom: 21\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tStreets: 'streets',\n\t\t\t\tBasic: 'basic',\n\t\t\t\tBright: 'bright',\n\t\t\t\tPastel: 'pastel',\n\t\t\t\tPositron: 'positron',\n\t\t\t\tHybrid: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'hybrid',\n\t\t\t\t\t\text: 'jpg'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tToner: 'toner',\n\t\t\t\tTopo: 'topo',\n\t\t\t\tVoyager: 'voyager'\n\t\t\t}\n\t\t},\n\t\tTomTom: {\n\t\t\turl: 'https://{s}.api.tomtom.com/map/1/tile/{variant}/{style}/{z}/{x}/{y}.{ext}?key={apikey}',\n\t\t\toptions: {\n\t\t\t\tvariant: 'basic',\n\t\t\t\tmaxZoom: 22,\n\t\t\t\tattribution:\n\t\t\t\t\t'<a href=\"https://tomtom.com\" target=\"_blank\">&copy;  1992 - ' + new Date().getFullYear() + ' TomTom.</a> ',\n\t\t\t\tsubdomains: 'abcd',\n\t\t\t\tstyle: 'main',\n\t\t\t\text: 'png',\n\t\t\t\tapikey: '<insert your API key here>',\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tBasic: 'basic',\n\t\t\t\tHybrid: 'hybrid',\n\t\t\t\tLabels: 'labels'\n\t\t\t}\n\t\t},\n\t\tEsri: {\n\t\t\turl: 'https://server.arcgisonline.com/ArcGIS/rest/services/{variant}/MapServer/tile/{z}/{y}/{x}',\n\t\t\toptions: {\n\t\t\t\tvariant: 'World_Street_Map',\n\t\t\t\tattribution: 'Tiles &copy; Esri'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tWorldStreetMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'{attribution.Esri} &mdash; ' +\n\t\t\t\t\t\t\t'Source: Esri, DeLorme, NAVTEQ, USGS, Intermap, iPC, NRCAN, Esri Japan, METI, Esri China (Hong Kong), Esri (Thailand), TomTom, 2012'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tDeLorme: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'Specialty/DeLorme_World_Base_Map',\n\t\t\t\t\t\tminZoom: 1,\n\t\t\t\t\t\tmaxZoom: 11,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; Copyright: &copy;2012 DeLorme'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldTopoMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'World_Topo_Map',\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'{attribution.Esri} &mdash; ' +\n\t\t\t\t\t\t\t'Esri, DeLorme, NAVTEQ, TomTom, Intermap, iPC, USGS, FAO, NPS, NRCAN, GeoBase, Kadaster NL, Ordnance Survey, Esri Japan, METI, Esri China (Hong Kong), and the GIS User Community'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldImagery: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'World_Imagery',\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'{attribution.Esri} &mdash; ' +\n\t\t\t\t\t\t\t'Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldTerrain: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'World_Terrain_Base',\n\t\t\t\t\t\tmaxZoom: 13,\n\t\t\t\t\t\tattribution:\n\t\t\t\t\t\t\t'{attribution.Esri} &mdash; ' +\n\t\t\t\t\t\t\t'Source: USGS, Esri, TANA, DeLorme, and NPS'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldShadedRelief: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'World_Shaded_Relief',\n\t\t\t\t\t\tmaxZoom: 13,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; Source: Esri'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldPhysical: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'World_Physical_Map',\n\t\t\t\t\t\tmaxZoom: 8,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; Source: US National Park Service'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tOceanBasemap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'Ocean/World_Ocean_Base',\n\t\t\t\t\t\tmaxZoom: 13,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; Sources: GEBCO, NOAA, CHS, OSU, UNH, CSUMB, National Geographic, DeLorme, NAVTEQ, and Esri'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tNatGeoWorldMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'NatGeo_World_Map',\n\t\t\t\t\t\tmaxZoom: 16,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; National Geographic, Esri, DeLorme, NAVTEQ, UNEP-WCMC, USGS, NASA, ESA, METI, NRCAN, GEBCO, NOAA, iPC'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tWorldGrayCanvas: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'Canvas/World_Light_Gray_Base',\n\t\t\t\t\t\tmaxZoom: 16,\n\t\t\t\t\t\tattribution: '{attribution.Esri} &mdash; Esri, DeLorme, NAVTEQ'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tOpenWeatherMap: {\n\t\t\turl: 'http://{s}.tile.openweathermap.org/map/{variant}/{z}/{x}/{y}.png?appid={apiKey}',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution: 'Map data &copy; <a href=\"http://openweathermap.org\">OpenWeatherMap</a>',\n\t\t\t\tapiKey: '<insert your api key here>',\n\t\t\t\topacity: 0.5\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tClouds: 'clouds',\n\t\t\t\tCloudsClassic: 'clouds_cls',\n\t\t\t\tPrecipitation: 'precipitation',\n\t\t\t\tPrecipitationClassic: 'precipitation_cls',\n\t\t\t\tRain: 'rain',\n\t\t\t\tRainClassic: 'rain_cls',\n\t\t\t\tPressure: 'pressure',\n\t\t\t\tPressureContour: 'pressure_cntr',\n\t\t\t\tWind: 'wind',\n\t\t\t\tTemperature: 'temp',\n\t\t\t\tSnow: 'snow'\n\t\t\t}\n\t\t},\n\t\tHERE: {\n\t\t\t/*\n\t\t\t * HERE maps, formerly Nokia maps.\n\t\t\t * These basemaps are free, but you need an api id and app key. Please sign up at\n\t\t\t * https://developer.here.com/plans\n\t\t\t */\n\t\t\turl:\n\t\t\t\t'https://{s}.{base}.maps.api.here.com/maptile/2.1/' +\n\t\t\t\t'{type}/{mapID}/{variant}/{z}/{x}/{y}/{size}/{format}?' +\n\t\t\t\t'app_id={app_id}&app_code={app_code}&lg={language}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'Map &copy; 1987-' + new Date().getFullYear() + ' <a href=\"http://developer.here.com\">HERE</a>',\n\t\t\t\tsubdomains: '1234',\n\t\t\t\tmapID: 'newest',\n\t\t\t\t'app_id': '<insert your app_id here>',\n\t\t\t\t'app_code': '<insert your app_code here>',\n\t\t\t\tbase: 'base',\n\t\t\t\tvariant: 'normal.day',\n\t\t\t\tmaxZoom: 20,\n\t\t\t\ttype: 'maptile',\n\t\t\t\tlanguage: 'eng',\n\t\t\t\tformat: 'png8',\n\t\t\t\tsize: '256'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tnormalDay: 'normal.day',\n\t\t\t\tnormalDayCustom: 'normal.day.custom',\n\t\t\t\tnormalDayGrey: 'normal.day.grey',\n\t\t\t\tnormalDayMobile: 'normal.day.mobile',\n\t\t\t\tnormalDayGreyMobile: 'normal.day.grey.mobile',\n\t\t\t\tnormalDayTransit: 'normal.day.transit',\n\t\t\t\tnormalDayTransitMobile: 'normal.day.transit.mobile',\n\t\t\t\tnormalDayTraffic: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'normal.traffic.day',\n\t\t\t\t\t\tbase: 'traffic',\n\t\t\t\t\t\ttype: 'traffictile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tnormalNight: 'normal.night',\n\t\t\t\tnormalNightMobile: 'normal.night.mobile',\n\t\t\t\tnormalNightGrey: 'normal.night.grey',\n\t\t\t\tnormalNightGreyMobile: 'normal.night.grey.mobile',\n\t\t\t\tnormalNightTransit: 'normal.night.transit',\n\t\t\t\tnormalNightTransitMobile: 'normal.night.transit.mobile',\n\t\t\t\treducedDay: 'reduced.day',\n\t\t\t\treducedNight: 'reduced.night',\n\t\t\t\tbasicMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\ttype: 'basetile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tmapLabels: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\ttype: 'labeltile',\n\t\t\t\t\t\tformat: 'png'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\ttrafficFlow: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'traffic',\n\t\t\t\t\t\ttype: 'flowtile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tcarnavDayGrey: 'carnav.day.grey',\n\t\t\t\thybridDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thybridDayMobile: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.day.mobile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thybridDayTransit: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.day.transit'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thybridDayGrey: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.grey.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thybridDayTraffic: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'hybrid.traffic.day',\n\t\t\t\t\t\tbase: 'traffic',\n\t\t\t\t\t\ttype: 'traffictile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tpedestrianDay: 'pedestrian.day',\n\t\t\t\tpedestrianNight: 'pedestrian.night',\n\t\t\t\tsatelliteDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'satellite.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tterrainDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'terrain.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tterrainDayMobile: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'terrain.day.mobile'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tHEREv3: {\n\t\t\t/*\n\t\t\t * HERE maps API Version 3.\n\t\t\t * These basemaps are free, but you need an API key. Please sign up at\n\t\t\t * https://developer.here.com/plans\n\t\t\t * Version 3 deprecates the app_id and app_code access in favor of apiKey\n\t\t\t *\n\t\t\t * Supported access methods as of 2019/12/21:\n\t\t\t * @see https://developer.here.com/faqs#access-control-1--how-do-you-control-access-to-here-location-services\n\t\t\t */\n\t\t\turl:\n\t\t\t\t'https://{s}.{base}.maps.ls.hereapi.com/maptile/2.1/' +\n\t\t\t\t'{type}/{mapID}/{variant}/{z}/{x}/{y}/{size}/{format}?' +\n\t\t\t\t'apiKey={apiKey}&lg={language}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'Map &copy; 1987-' + new Date().getFullYear() + ' <a href=\"http://developer.here.com\">HERE</a>',\n\t\t\t\tsubdomains: '1234',\n\t\t\t\tmapID: 'newest',\n\t\t\t\tapiKey: '<insert your apiKey here>',\n\t\t\t\tbase: 'base',\n\t\t\t\tvariant: 'normal.day',\n\t\t\t\tmaxZoom: 20,\n\t\t\t\ttype: 'maptile',\n\t\t\t\tlanguage: 'eng',\n\t\t\t\tformat: 'png8',\n\t\t\t\tsize: '256'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tnormalDay: 'normal.day',\n\t\t\t\tnormalDayCustom: 'normal.day.custom',\n\t\t\t\tnormalDayGrey: 'normal.day.grey',\n\t\t\t\tnormalDayMobile: 'normal.day.mobile',\n\t\t\t\tnormalDayGreyMobile: 'normal.day.grey.mobile',\n\t\t\t\tnormalDayTransit: 'normal.day.transit',\n\t\t\t\tnormalDayTransitMobile: 'normal.day.transit.mobile',\n\t\t\t\tnormalNight: 'normal.night',\n\t\t\t\tnormalNightMobile: 'normal.night.mobile',\n\t\t\t\tnormalNightGrey: 'normal.night.grey',\n\t\t\t\tnormalNightGreyMobile: 'normal.night.grey.mobile',\n\t\t\t\tnormalNightTransit: 'normal.night.transit',\n\t\t\t\tnormalNightTransitMobile: 'normal.night.transit.mobile',\n\t\t\t\treducedDay: 'reduced.day',\n\t\t\t\treducedNight: 'reduced.night',\n\t\t\t\tbasicMap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\ttype: 'basetile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tmapLabels: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\ttype: 'labeltile',\n\t\t\t\t\t\tformat: 'png'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\ttrafficFlow: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'traffic',\n\t\t\t\t\t\ttype: 'flowtile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tcarnavDayGrey: 'carnav.day.grey',\n\t\t\t\thybridDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thybridDayMobile: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.day.mobile'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thybridDayTransit: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.day.transit'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thybridDayGrey: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'hybrid.grey.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tpedestrianDay: 'pedestrian.day',\n\t\t\t\tpedestrianNight: 'pedestrian.night',\n\t\t\t\tsatelliteDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'satellite.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tterrainDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'terrain.day'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tterrainDayMobile: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tbase: 'aerial',\n\t\t\t\t\t\tvariant: 'terrain.day.mobile'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tFreeMapSK: {\n\t\t\turl: 'https://{s}.freemap.sk/T/{z}/{x}/{y}.jpeg',\n\t\t\toptions: {\n\t\t\t\tminZoom: 8,\n\t\t\t\tmaxZoom: 16,\n\t\t\t\tsubdomains: 'abcd',\n\t\t\t\tbounds: [[47.204642, 15.996093], [49.830896, 22.576904]],\n\t\t\t\tattribution:\n\t\t\t\t\t'{attribution.OpenStreetMap}, visualization CC-By-SA 2.0 <a href=\"http://freemap.sk\">Freemap.sk</a>'\n\t\t\t}\n\t\t},\n\t\tMtbMap: {\n\t\t\turl: 'http://tile.mtbmap.cz/mtbmap_tiles/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'{attribution.OpenStreetMap} &amp; USGS'\n\t\t\t}\n\t\t},\n\t\tCartoDB: {\n\t\t\turl: 'https://{s}.basemaps.cartocdn.com/{variant}/{z}/{x}/{y}{r}.png',\n\t\t\toptions: {\n\t\t\t\tattribution: '{attribution.OpenStreetMap} &copy; <a href=\"https://carto.com/attributions\">CARTO</a>',\n\t\t\t\tsubdomains: 'abcd',\n\t\t\t\tmaxZoom: 20,\n\t\t\t\tvariant: 'light_all'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tPositron: 'light_all',\n\t\t\t\tPositronNoLabels: 'light_nolabels',\n\t\t\t\tPositronOnlyLabels: 'light_only_labels',\n\t\t\t\tDarkMatter: 'dark_all',\n\t\t\t\tDarkMatterNoLabels: 'dark_nolabels',\n\t\t\t\tDarkMatterOnlyLabels: 'dark_only_labels',\n\t\t\t\tVoyager: 'rastertiles/voyager',\n\t\t\t\tVoyagerNoLabels: 'rastertiles/voyager_nolabels',\n\t\t\t\tVoyagerOnlyLabels: 'rastertiles/voyager_only_labels',\n\t\t\t\tVoyagerLabelsUnder: 'rastertiles/voyager_labels_under'\n\t\t\t}\n\t\t},\n\t\tHikeBike: {\n\t\t\turl: 'https://tiles.wmflabs.org/{variant}/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution: '{attribution.OpenStreetMap}',\n\t\t\t\tvariant: 'hikebike'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tHikeBike: {},\n\t\t\t\tHillShading: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 15,\n\t\t\t\t\t\tvariant: 'hillshading'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tBasemapAT: {\n\t\t\turl: 'https://mapsneu.wien.gv.at/basemap/{variant}/{type}/google3857/{z}/{y}/{x}.{format}',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tattribution: 'Datenquelle: <a href=\"https://www.basemap.at\">basemap.at</a>',\n\t\t\t\ttype: 'normal',\n\t\t\t\tformat: 'png',\n\t\t\t\tbounds: [[46.358770, 8.782379], [49.037872, 17.189532]],\n\t\t\t\tvariant: 'geolandbasemap'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tbasemap: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 20, // currently only in Vienna\n\t\t\t\t\t\tvariant: 'geolandbasemap'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tgrau: 'bmapgrau',\n\t\t\t\toverlay: 'bmapoverlay',\n\t\t\t\tterrain: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'bmapgelaende',\n\t\t\t\t\t\ttype: 'grau',\n\t\t\t\t\t\tformat: 'jpeg'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tsurface: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'bmapoberflaeche',\n\t\t\t\t\t\ttype: 'grau',\n\t\t\t\t\t\tformat: 'jpeg'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\thighdpi: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'bmaphidpi',\n\t\t\t\t\t\tformat: 'jpeg'\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\torthofoto: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 20, // currently only in Vienna\n\t\t\t\t\t\tvariant: 'bmaporthofoto30cm',\n\t\t\t\t\t\tformat: 'jpeg'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tnlmaps: {\n\t\t\turl: 'https://service.pdok.nl/brt/achtergrondkaart/wmts/v2_0/{variant}/EPSG:3857/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tminZoom: 6,\n\t\t\t\tmaxZoom: 19,\n\t\t\t\tbounds: [[50.5, 3.25], [54, 7.6]],\n\t\t\t\tattribution: 'Kaartgegevens &copy; <a href=\"https://www.kadaster.nl\">Kadaster</a>'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\t'standaard': 'standaard',\n\t\t\t\t'pastel': 'pastel',\n\t\t\t\t'grijs': 'grijs',\n\t\t\t\t'water': 'water',\n\t\t\t\t'luchtfoto': {\n\t\t\t\t\t'url': 'https://service.pdok.nl/hwh/luchtfotorgb/wmts/v1_0/Actueel_ortho25/EPSG:3857/{z}/{x}/{y}.jpeg',\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tNASAGIBS: {\n\t\t\turl: 'https://map1.vis.earthdata.nasa.gov/wmts-webmerc/{variant}/default/{time}/{tilematrixset}{maxZoom}/{z}/{y}/{x}.{format}',\n\t\t\toptions: {\n\t\t\t\tattribution:\n\t\t\t\t\t'Imagery provided by services from the Global Imagery Browse Services (GIBS), operated by the NASA/GSFC/Earth Science Data and Information System ' +\n\t\t\t\t\t'(<a href=\"https://earthdata.nasa.gov\">ESDIS</a>) with funding provided by NASA/HQ.',\n\t\t\t\tbounds: [[-85.0511287776, -179.999999975], [85.0511287776, 179.999999975]],\n\t\t\t\tminZoom: 1,\n\t\t\t\tmaxZoom: 9,\n\t\t\t\tformat: 'jpg',\n\t\t\t\ttime: '',\n\t\t\t\ttilematrixset: 'GoogleMapsCompatible_Level'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tModisTerraTrueColorCR: 'MODIS_Terra_CorrectedReflectance_TrueColor',\n\t\t\t\tModisTerraBands367CR: 'MODIS_Terra_CorrectedReflectance_Bands367',\n\t\t\t\tViirsEarthAtNight2012: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'VIIRS_CityLights_2012',\n\t\t\t\t\t\tmaxZoom: 8\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tModisTerraLSTDay: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'MODIS_Terra_Land_Surface_Temp_Day',\n\t\t\t\t\t\tformat: 'png',\n\t\t\t\t\t\tmaxZoom: 7,\n\t\t\t\t\t\topacity: 0.75\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tModisTerraSnowCover: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'MODIS_Terra_NDSI_Snow_Cover',\n\t\t\t\t\t\tformat: 'png',\n\t\t\t\t\t\tmaxZoom: 8,\n\t\t\t\t\t\topacity: 0.75\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tModisTerraAOD: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'MODIS_Terra_Aerosol',\n\t\t\t\t\t\tformat: 'png',\n\t\t\t\t\t\tmaxZoom: 6,\n\t\t\t\t\t\topacity: 0.75\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\tModisTerraChlorophyll: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'MODIS_Terra_Chlorophyll_A',\n\t\t\t\t\t\tformat: 'png',\n\t\t\t\t\t\tmaxZoom: 7,\n\t\t\t\t\t\topacity: 0.75\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tNLS: {\n\t\t\t// NLS maps are copyright National library of Scotland.\n\t\t\t// http://maps.nls.uk/projects/api/index.html\n\t\t\t// Please contact NLS for anything other than non-commercial low volume usage\n\t\t\t//\n\t\t\t// Map sources: Ordnance Survey 1:1m to 1:63K, 1920s-1940s\n\t\t\t//   z0-9  - 1:1m\n\t\t\t//  z10-11 - quarter inch (1:253440)\n\t\t\t//  z12-18 - one inch (1:63360)\n\t\t\turl: 'https://nls-{s}.tileserver.com/nls/{z}/{x}/{y}.jpg',\n\t\t\toptions: {\n\t\t\t\tattribution: '<a href=\"http://geo.nls.uk/maps/\">National Library of Scotland Historic Maps</a>',\n\t\t\t\tbounds: [[49.6, -12], [61.7, 3]],\n\t\t\t\tminZoom: 1,\n\t\t\t\tmaxZoom: 18,\n\t\t\t\tsubdomains: '0123',\n\t\t\t}\n\t\t},\n\t\tJusticeMap: {\n\t\t\t// Justice Map (http://www.justicemap.org/)\n\t\t\t// Visualize race and income data for your community, county and country.\n\t\t\t// Includes tools for data journalists, bloggers and community activists.\n\t\t\turl: 'https://www.justicemap.org/tile/{size}/{variant}/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tattribution: '<a href=\"http://www.justicemap.org/terms.php\">Justice Map</a>',\n\t\t\t\t// one of 'county', 'tract', 'block'\n\t\t\t\tsize: 'county',\n\t\t\t\t// Bounds for USA, including Alaska and Hawaii\n\t\t\t\tbounds: [[14, -180], [72, -56]]\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tincome: 'income',\n\t\t\t\tamericanIndian: 'indian',\n\t\t\t\tasian: 'asian',\n\t\t\t\tblack: 'black',\n\t\t\t\thispanic: 'hispanic',\n\t\t\t\tmulti: 'multi',\n\t\t\t\tnonWhite: 'nonwhite',\n\t\t\t\twhite: 'white',\n\t\t\t\tplurality: 'plural'\n\t\t\t}\n\t\t},\n\t\tGeoportailFrance: {\n\t\t\turl: 'https://wxs.ign.fr/{apikey}/geoportail/wmts?REQUEST=GetTile&SERVICE=WMTS&VERSION=1.0.0&STYLE={style}&TILEMATRIXSET=PM&FORMAT={format}&LAYER={variant}&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}',\n\t\t\toptions: {\n\t\t\t\tattribution: '<a target=\"_blank\" href=\"https://www.geoportail.gouv.fr/\">Geoportail France</a>',\n\t\t\t\tbounds: [[-75, -180], [81, 180]],\n\t\t\t\tminZoom: 2,\n\t\t\t\tmaxZoom: 18,\n\t\t\t\t// Get your own geoportail apikey here : http://professionnels.ign.fr/ign/contrats/\n\t\t\t\t// NB : 'choisirgeoportail' is a demonstration key that comes with no guarantee\n\t\t\t\tapikey: 'choisirgeoportail',\n\t\t\t\tformat: 'image/png',\n\t\t\t\tstyle: 'normal',\n\t\t\t\tvariant: 'GEOGRAPHICALGRIDSYSTEMS.PLANIGNV2'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tplan: 'GEOGRAPHICALGRIDSYSTEMS.PLANIGNV2',\n\t\t\t\tparcels: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'CADASTRALPARCELS.PARCELLAIRE_EXPRESS',\n\t\t\t\t\t\tstyle: 'PCI vecteur',\n\t\t\t\t\t\tmaxZoom: 20\n\t\t\t\t\t}\n\t\t\t\t},\n\t\t\t\torthos: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tmaxZoom: 19,\n\t\t\t\t\t\tformat: 'image/jpeg',\n\t\t\t\t\t\tvariant: 'ORTHOIMAGERY.ORTHOPHOTOS'\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tOneMapSG: {\n\t\t\turl: 'https://maps-{s}.onemap.sg/v3/{variant}/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tvariant: 'Default',\n\t\t\t\tminZoom: 11,\n\t\t\t\tmaxZoom: 18,\n\t\t\t\tbounds: [[1.56073, 104.11475], [1.16, 103.502]],\n\t\t\t\tattribution: '<img src=\"https://docs.onemap.sg/maps/images/oneMap64-01.png\" style=\"height:20px;width:20px;\"/> New OneMap | Map data &copy; contributors, <a href=\"http://SLA.gov.sg\">Singapore Land Authority</a>'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tDefault: 'Default',\n\t\t\t\tNight: 'Night',\n\t\t\t\tOriginal: 'Original',\n\t\t\t\tGrey: 'Grey',\n\t\t\t\tLandLot: 'LandLot'\n\t\t\t}\n\t\t},\n\t\tUSGS: {\n\t\t\turl: 'https://basemap.nationalmap.gov/arcgis/rest/services/USGSTopo/MapServer/tile/{z}/{y}/{x}',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 20,\n\t\t\t\tattribution: 'Tiles courtesy of the <a href=\"https://usgs.gov/\">U.S. Geological Survey</a>'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tUSTopo: {},\n\t\t\t\tUSImagery: {\n\t\t\t\t\turl: 'https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryOnly/MapServer/tile/{z}/{y}/{x}'\n\t\t\t\t},\n\t\t\t\tUSImageryTopo: {\n\t\t\t\t\turl: 'https://basemap.nationalmap.gov/arcgis/rest/services/USGSImageryTopo/MapServer/tile/{z}/{y}/{x}'\n\t\t\t\t}\n\t\t\t}\n\t\t},\n\t\tWaymarkedTrails: {\n\t\t\turl: 'https://tile.waymarkedtrails.org/{variant}/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tmaxZoom: 18,\n\t\t\t\tattribution: 'Map data: {attribution.OpenStreetMap} | Map style: &copy; <a href=\"https://waymarkedtrails.org\">waymarkedtrails.org</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-SA</a>)'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\thiking: 'hiking',\n\t\t\t\tcycling: 'cycling',\n\t\t\t\tmtb: 'mtb',\n\t\t\t\tslopes: 'slopes',\n\t\t\t\triding: 'riding',\n\t\t\t\tskating: 'skating'\n\t\t\t}\n\t\t},\n\t\tOpenAIP: {\n\t\t\turl: 'https://{s}.tile.maps.openaip.net/geowebcache/service/tms/1.0.0/openaip_basemap@EPSG%3A900913@png/{z}/{x}/{y}.{ext}',\n\t\t\toptions: {\n\t\t\t\tattribution: '<a href=\"https://www.openaip.net/\">openAIP Data</a> (<a href=\"https://creativecommons.org/licenses/by-sa/3.0/\">CC-BY-NC-SA</a>)',\n\t\t\t\text: 'png',\n\t\t\t\tminZoom: 4,\n\t\t\t\tmaxZoom: 14,\n\t\t\t\ttms: true,\n\t\t\t\tdetectRetina: true,\n\t\t\t\tsubdomains: '12'\n\t\t\t}\n\t\t},\n\t\tOpenSnowMap: {\n\t\t\turl: 'https://tiles.opensnowmap.org/{variant}/{z}/{x}/{y}.png',\n\t\t\toptions: {\n\t\t\t\tminZoom: 9,\n\t\t\t\tmaxZoom: 18,\n\t\t\t\tattribution: 'Map data: {attribution.OpenStreetMap} & ODbL, &copy; <a href=\"https://www.opensnowmap.org/iframes/data.html\">www.opensnowmap.org</a> <a href=\"https://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA</a>'\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tpistes: 'pistes',\n\t\t\t}\n\t\t},\n\t\tAzureMaps: {\n\t\t\turl: \n\t\t\t\t'https://atlas.microsoft.com/map/tile?api-version={apiVersion}'+\n\t\t\t\t'&tilesetId={variant}&x={x}&y={y}&zoom={z}&language={language}'+\n\t\t\t\t'&subscription-key={subscriptionKey}',\n\t\t\toptions: {\n\t\t\t\tattribution: 'See https://docs.microsoft.com/en-us/rest/api/maps/render-v2/get-map-tile for details.',\n\t\t\t\tapiVersion: '2.0',\n\t\t\t\tvariant: 'microsoft.imagery',\n\t\t\t\tsubscriptionKey: '<insert your subscription key here>',\n\t\t\t\tlanguage: 'en-US',\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tMicrosoftImagery: 'microsoft.imagery',\n\t\t\t\tMicrosoftBaseDarkGrey: 'microsoft.base.darkgrey',\n\t\t\t\tMicrosoftBaseRoad: 'microsoft.base.road',\n\t\t\t\tMicrosoftBaseHybridRoad: 'microsoft.base.hybrid.road',\n\t\t\t\tMicrosoftTerraMain: 'microsoft.terra.main',\n\t\t\t\tMicrosoftWeatherInfraredMain: {\n\t\t\t\t\turl: \n\t\t\t\t\t'https://atlas.microsoft.com/map/tile?api-version={apiVersion}'+\n\t\t\t\t\t'&tilesetId={variant}&x={x}&y={y}&zoom={z}'+\n\t\t\t\t\t'&timeStamp={timeStamp}&language={language}' +\n\t\t\t\t\t'&subscription-key={subscriptionKey}',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\ttimeStamp: '2021-05-08T09:03:00Z',\n\t\t\t\t\t\tattribution: 'See https://docs.microsoft.com/en-us/rest/api/maps/render-v2/get-map-tile#uri-parameters for details.',\n\t\t\t\t\t\tvariant: 'microsoft.weather.infrared.main',\n\t\t\t\t\t},\n\t\t\t\t},\n\t\t\t\tMicrosoftWeatherRadarMain: {\n\t\t\t\t\turl: \n\t\t\t\t\t'https://atlas.microsoft.com/map/tile?api-version={apiVersion}'+\n\t\t\t\t\t'&tilesetId={variant}&x={x}&y={y}&zoom={z}'+\n\t\t\t\t\t'&timeStamp={timeStamp}&language={language}' +\n\t\t\t\t\t'&subscription-key={subscriptionKey}',\n\t\t\t\t\toptions: {\n\t\t\t\t\t\ttimeStamp: '2021-05-08T09:03:00Z',\n\t\t\t\t\t\tattribution: 'See https://docs.microsoft.com/en-us/rest/api/maps/render-v2/get-map-tile#uri-parameters for details.',\n\t\t\t\t\t\tvariant: 'microsoft.weather.radar.main',\n\t\t\t\t\t},\n\t\t\t\t}\n\t\t\t},\n\t\t},\n\t\tSwissFederalGeoportal: {\n\t\t\turl: 'https://wmts.geo.admin.ch/1.0.0/{variant}/default/current/3857/{z}/{x}/{y}.jpeg',\n\t\t\toptions: {\n\t\t\t\tattribution: '&copy; <a href=\"https://www.swisstopo.admin.ch/\">swisstopo</a>',\n\t\t\t\tminZoom: 2,\n\t\t\t\tmaxZoom: 18,\n\t\t\t\tbounds: [[45.398181, 5.140242], [48.230651, 11.47757]]\n\t\t\t},\n\t\t\tvariants: {\n\t\t\t\tNationalMapColor: 'ch.swisstopo.pixelkarte-farbe',\n\t\t\t\tNationalMapGrey: 'ch.swisstopo.pixelkarte-grau',\n\t\t\t\tSWISSIMAGE: {\n\t\t\t\t\toptions: {\n\t\t\t\t\t\tvariant: 'ch.swisstopo.swissimage',\n\t\t\t\t\t\tmaxZoom: 19\n\t\t\t\t\t}\n\t\t\t\t}\n\t\t\t}\n\t\t}\n\t};\n\n\tL.tileLayer.provider = function (provider, options) {\n\t\treturn new L.TileLayer.Provider(provider, options);\n\t};\n\n\treturn L;\n}));"
#> 
#> $dep
#> List of 10
#>  $ name      : chr "leaflet-providers"
#>  $ version   : chr "2.0.0"
#>  $ src       :List of 1
#>   ..$ href: chr "https://unpkg.com/leaflet-providers@2.0.0"
#>  $ meta      : NULL
#>  $ script    : chr "leaflet-providers.js"
#>  $ stylesheet: NULL
#>  $ head      : NULL
#>  $ attachment: NULL
#>  $ package   : NULL
#>  $ all_files : logi FALSE
#>  - attr(*, "class")= chr "html_dependency"
#> 
#> attr(,"class")
#> [1] "leaflet_providers"
# }
```
