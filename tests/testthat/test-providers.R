context("Structure of providers")

testthat::expect_gt(length(providers), 150)

testthat::expect_true(!is.null(providers["OpenStreetMap"]))
