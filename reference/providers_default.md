# Return default providers, providers_details, version, and HTML Dependency.

Return default providers, providers_details, version, and HTML
Dependency.

## Usage

``` r
providers_default()
```

## Value

`leaflet_providers` object containing `version_num`, `providers`,
`providers_details`, `src`, and `dep`.

## Examples

``` r
str(providers_default(), max = 3, list.len = 4)
#> List of 5
#>  $ version_num      : chr "3.0.0"
#>  $ providers        :List of 224
#>   ..$ OpenStreetMap                         : chr "OpenStreetMap"
#>   ..$ OpenStreetMap.Mapnik                  : chr "OpenStreetMap.Mapnik"
#>   ..$ OpenStreetMap.DE                      : chr "OpenStreetMap.DE"
#>   ..$ OpenStreetMap.CH                      : chr "OpenStreetMap.CH"
#>   .. [list output truncated]
#>  $ providers_details:List of 37
#>   ..$ OpenStreetMap        :List of 3
#>   .. ..$ url     : chr "https://tile.openstreetmap.org/{z}/{x}/{y}.png"
#>   .. ..$ options :List of 2
#>   .. ..$ variants:List of 7
#>   ..$ MapTilesAPI          :List of 3
#>   .. ..$ url     : chr "https://maptiles.p.rapidapi.com/{variant}/{z}/{x}/{y}.png?rapidapi-key={apikey}"
#>   .. ..$ options :List of 4
#>   .. ..$ variants:List of 3
#>   ..$ OpenSeaMap           :List of 2
#>   .. ..$ url    : chr "https://tiles.openseamap.org/seamark/{z}/{x}/{y}.png"
#>   .. ..$ options:List of 1
#>   ..$ OPNVKarte            :List of 2
#>   .. ..$ url    : chr "https://tileserver.memomaps.de/tilegen/{z}/{x}/{y}.png"
#>   .. ..$ options:List of 2
#>   .. [list output truncated]
#>  $ src              : chr "(function(root, factory) {\n\tif (typeof define === 'function' && define.amd) {\n\t\t// AMD. Register as an ano"| __truncated__
#>   [list output truncated]
#>  - attr(*, "class")= chr "leaflet_providers"
```
