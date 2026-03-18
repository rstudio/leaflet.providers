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
if (
  interactive() &&
  requireNamespace("V8", quietly = TRUE) &&
  requireNamespace("jsonlite", quietly = TRUE)
) {
  get_providers()
  get_providers("1.8.0")
}
```
