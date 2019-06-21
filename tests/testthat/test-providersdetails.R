context("Structure of providers_details_data")

testthat::test_that("providers.details structure", {
  testthat::expect_gt(length(providers_details_data), 25)

  testthat::expect_true(!is.null(providers_details_data[["OpenStreetMap"]]))

  testthat::expect_true(!is.null(providers_details_data[["OpenStreetMap"]][["url"]]))
  testthat::expect_true(!is.null(providers_details_data[["OpenStreetMap"]][["variants"]]))
  testthat::expect_true(!is.null(providers_details_data[["OpenStreetMap"]][["options"]]))

  testthat::expect_true(!is.null(providers_details_data[["OpenStreetMap"]][["variants"]]["Mapnik"]))

  testthat::expect_equal(providers_details_data[["OpenStreetMap"]][["url"]], "//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png")
})
