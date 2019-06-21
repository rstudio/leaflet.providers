context("Structure of providers_data")

testthat::test_that("providers_data structure", {
  testthat::expect_gt(length(providers_data), 150)

  testthat::expect_true(!is.null(providers_data[["OpenStreetMap"]]))
})
