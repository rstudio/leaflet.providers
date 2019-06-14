context("Structure of providers.details")

testthat::expect_gt(length(providers.details), 150)

show_failure(testthat::expect_null(providers.details$OpenStreetMap))
