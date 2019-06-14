context("Structure of providers.details")

testthat::expect_gt(length(providers.details), 25)

testthat::expect_true(!is.null(providers.details$OpenStreetMap))
