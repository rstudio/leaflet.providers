# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working
with code in this repository.

## Package Overview

`leaflet.providers` is an R package that bundles map tile provider data
from
[leaflet-providers.js](https://github.com/leaflet-extras/leaflet-providers)
for use with the R `leaflet` package. The package version tracks the
bundled `leaflet-providers.js` version (currently 3.0.0).

## Development Commands

``` r

# Load package for interactive development
devtools::load_all()

# Run all tests
devtools::test()

# Run a single test file
devtools::test(filter = "get_providers")

# Lint the package
lintr::lint_package()

# Full R CMD check
devtools::check()

# Build pkgdown site
pkgdown::build_site()
```

## Architecture

### Data Flow

The package bundles provider data at two levels:

1.  **Static bundled data** (`R/providers_data.R` +
    `inst/leaflet-providers/leaflet-providers.js`): Auto-generated R
    data objects (`providers_data`, `providers_details_data`,
    `providers_version_num`) and the raw JS file shipped with the
    package. This file is excluded from linting.

2.  **Runtime-fetched data** (`R/get_current_providers.R`):
    [`get_providers()`](https://rstudio.github.io/leaflet.providers/reference/get_providers.md)
    fetches any version of `leaflet-providers.js` from unpkg.com,
    evaluates it in a V8 context, and extracts provider info. Requires
    `V8` and `jsonlite` (Suggests).

On package load (`R/zzz.R`), `use_providers(providers_default())`
initializes `loaded_providers_env` with the bundled data. Calls to
[`providers_loaded()`](https://rstudio.github.io/leaflet.providers/reference/providers_loaded.md)
return whatever is in this environment, allowing users to swap provider
data at runtime via
[`use_providers()`](https://rstudio.github.io/leaflet.providers/reference/use_providers.md).

The `leaflet_providers` S3 class is a list with fields: `version_num`,
`providers` (named list), `providers_details` (nested list), `src` (raw
JS), and `dep` (htmltools HTML dependency pointing to the JS file).

### Updating Provider Data

To update the bundled providers to the latest `leaflet-providers.js`
version, run the Claude Code skill `/update-leaflet-providers`.

### Linting

Line length limit is 100 characters (`.lintr`). `R/providers_data.R` is
excluded from linting since it is auto-generated.

### CI

GitHub Actions uses `rstudio/shiny-workflows`
(`.github/workflows/R-CMD-check.yaml`), which runs website build,
routine checks (including R code formatting), and R CMD check across
platforms. Runs on push/PR to `main` and weekly on Mondays.
