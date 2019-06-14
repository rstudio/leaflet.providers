context("Structure of providers.details")

testthat::expect_gt(length(providers.details), 25)

testthat::expect_true(!is.null(providers.details[["OpenStreetMap"]]))

testthat::expect_true(!is.null(providers.details[["OpenStreetMap"]][["url"]]))
testthat::expect_true(!is.null(providers.details[["OpenStreetMap"]][["variants"]]))
testthat::expect_true(!is.null(providers.details[["OpenStreetMap"]][["options"]]))

testthat::expect_true(!is.null(providers.details[["OpenStreetMap"]][["variants"]]["Mapnik"]))
