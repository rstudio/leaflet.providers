# Changelog

## leaflet.providers 3.0.0

CRAN release: 2026-03-18

### New features

- Updated bundled leaflet-providers.js from v2.0.0 to v3.0.0
  ([\#44](https://github.com/rstudio/leaflet.providers/issues/44)).

- [`get_providers()`](https://rstudio.github.io/leaflet.providers/reference/get_providers.md)
  now validates `version_num` and errors if the version is less than
  `"1.0.10"`
  ([\#44](https://github.com/rstudio/leaflet.providers/issues/44)).

### Bug fixes and minor improvements

- [`providers_default()`](https://rstudio.github.io/leaflet.providers/reference/providers_default.md)
  now returns an
  [`htmltools::htmlDependency()`](https://rstudio.github.io/htmltools/reference/htmlDependency.html)
  that points to the packaged file directly, rather than a temporary
  copy ([\#43](https://github.com/rstudio/leaflet.providers/issues/43)).

## leaflet.providers 2.0.0

CRAN release: 2023-10-17

- Updated leaflet.providers data on 2023-10-05 from
  <https://unpkg.com/leaflet-providers> using version 2.0.0 of
  leaflet-providers.js

- [`get_providers()`](https://rstudio.github.io/leaflet.providers/reference/get_providers.md)
  and `default_providers()` both include a stable
  [`htmltools::htmlDependency()`](https://rstudio.github.io/htmltools/reference/htmlDependency.html)
  in the `dep` slot of the returned object. The default dependency uses
  the static `leaflet-providers.js` file included in the
  `leaflet.providers` package, while the
  [`get_providers()`](https://rstudio.github.io/leaflet.providers/reference/get_providers.md)
  dependency uses the `leaflet-providers.js` file from the `unpkg.com`
  CDN. This makes it possible for `leaflet::addProviderTiles()` to use
  the stable HTML dependency that can be cached by knitr
  ([\#36](https://github.com/rstudio/leaflet.providers/issues/36)).

- The previous version (v1.13.0) of leaflet.providers required R \>=
  3.6. While versions of R older than 3.6 are not actively supported,
  the theoretically supported minimum R version is lower, likely R \>=
  2.10. We’ve restored the previous R version minimum requirement.
  ([\#33](https://github.com/rstudio/leaflet.providers/issues/33))

## leaflet.providers 1.13.0

CRAN release: 2023-08-10

- Updated leaflet.providers data on 2023-08-07 from
  <https://unpkg.com/leaflet-providers> using version 1.13.0 of
  leaflet-providers.js

## leaflet.providers 1.9.0

CRAN release: 2019-11-09

- Updated leaflet.providers data on 2019-11-06 from
  <https://unpkg.com/leaflet-providers> using version 1.9.0 of
  leaflet-providers.js

## leaflet.providers 1.8.0

CRAN release: 2019-07-15

- Added a `NEWS.md` file to track changes to the package.
- Initialized package (version number 1.8.0 matches version number of
  leaflet-providers.js).
