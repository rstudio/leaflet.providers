# Use custom tile provider

Use a custom `leaflet_providers` object, e.g. providers data fetched
with
[get_providers](https://rstudio.github.io/leaflet.providers/reference/get_providers.md),
with the `leaflet` package.

## Usage

``` r
use_providers(providers_info = NULL)
```

## Arguments

- providers_info:

  A custom `leaflet_providers` object. If `NULL`, uses default
  providers.

## Examples

``` r
# \donttest{
if (require("V8") && require("jsonlite")) {
  # Set providers to latest providers
  use_providers(get_providers())

  # Set providers to a custom providers object (specific version number)
  use_providers(get_providers("1.4.0"))
  use_providers("1.4.0")
}
#> Loading required package: V8
#> Using V8 engine 12.4.254.21
#> Loading required package: jsonlite
# }
```
