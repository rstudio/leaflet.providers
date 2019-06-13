# leaflet.providers

<!-- badges: start -->
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/leslie-huang/leaflet.providers?branch=master&svg=true)](https://ci.appveyor.com/project/leslie-huang/leaflet.providers)
[![Travis build status](https://travis-ci.org/leslie-huang/leaflet.providers.svg?branch=master)](https://travis-ci.org/leslie-huang/leaflet.providers)
[![Codecov test coverage](https://codecov.io/gh/leslie-huang/leaflet.providers/branch/master/graph/badge.svg)](https://codecov.io/gh/leslie-huang/leaflet.providers?branch=master)
<!-- badges: end -->

The goal of leaflet.providers is to provide regularly updated data on the third-party tile providers supported by `leaflet`. This package is to be used with `leaflet`.

## Installation

You can install the released version of leaflet.providers from [CRAN](https://CRAN.R-project.org) or the development version for Github:

``` r
# CRAN version
install.packages("leaflet.providers")

# Or Github version
if (!require('devtools')) install.packages('devtools')
devtools::install_github('leslie-huang/leaflet.providers')
```

## Example

This is a basic example of the data that is automatically loaded with `leaflet.providers`.

``` r
library(leaflet.providers)
## View supported tile providers
names(providers)
```

