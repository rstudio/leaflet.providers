
testthat::test_that("providers_data structure", {
  testthat::expect_gt(length(providers_data), 150)

  testthat::expect_true(!is.null(providers_data[["OpenStreetMap"]]))
})

testthat::test_that("providers_details structure", {
  testthat::expect_gt(length(providers_details_data), 25)

  testthat::expect_true(!is.null(providers_details_data[["OpenStreetMap"]]))

  testthat::expect_true(!is.null(providers_details_data[["OpenStreetMap"]][["url"]]))
  testthat::expect_true(!is.null(providers_details_data[["OpenStreetMap"]][["variants"]]))
  testthat::expect_true(!is.null(providers_details_data[["OpenStreetMap"]][["options"]]))

  testthat::expect_true(!is.null(providers_details_data[["OpenStreetMap"]][["variants"]]["Mapnik"]))

  # 2023-10-05: leaflet-providers no longer uses subdomains for OpenStreetMap
  # see https://github.com/leaflet-extras/leaflet-providers/pull/472
  testthat::expect_equal(
    providers_details_data[["OpenStreetMap"]][["url"]],
    "https://tile.openstreetmap.org/{z}/{x}/{y}.png"
  )
})
