context("Structure of providers")

testthat::expect_gt(length(providers), 150)

show_failure(testthat::expect_null(providers$OpenStreetMap))
