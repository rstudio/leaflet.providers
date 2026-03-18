test_that("providers_default() returns valid structure", {
  default <- providers_default()
  expect_s3_class(default, "leaflet_providers")
  expect_named(
    default,
    c("version_num", "providers", "providers_details", "src", "dep"),
    ignore.order = TRUE
  )
  expect_equal(default$version_num, providers_version_num)
  expect_gt(length(default$providers), 150)
  expect_gt(nchar(default$src), 0)
  expect_s3_class(default$dep, "html_dependency")
})

test_that("get_providers() rejects versions before 1.0.10", {
  expect_error(get_providers("1.0.0"), "must be >= '1.0.10'")
  expect_error(get_providers("1.0.8"), "must be >= '1.0.10'")
  expect_error(get_providers("0.9.0"), "must be >= '1.0.10'")
})

test_that("get_providers() fetches current version", {
  skip_on_cran()
  skip_if_not_installed("V8")
  skip_if_not_installed("jsonlite")

  result <- get_providers()
  expect_s3_class(result, "leaflet_providers")
  expect_gt(length(result$providers), 150)
  expect_gt(nchar(result$src), 0)
  expect_s3_class(result$dep, "html_dependency")
})

test_that("get_providers() works for multiple versions", {
  skip_on_cran()
  skip_if_not_installed("V8")
  skip_if_not_installed("jsonlite")

  # Works from v1.0.10+; v1.0.0-1.0.8 used a different JS structure.
  # Latest patch of each minor version line.
  versions <- c(
    "1.0.29",
    "1.1.17",
    "1.2.0",
    "1.3.1",
    "1.4.0",
    "1.5.0",
    "1.6.0",
    "1.7.0",
    "1.8.0",
    "1.9.1",
    "1.10.2",
    "1.11.0",
    "1.12.0",
    "1.13.0",
    "2.0.0",
    "3.0.0"
  )

  for (ver in versions) {
    info <- paste0("version: ", ver)
    result <- get_providers(ver)
    expect_true(inherits(result, "leaflet_providers"), info = info)
    expect_equal(result$version_num, ver, info = info)
    expect_gt(
      length(result$providers),
      10,
      label = paste(ver, "providers count")
    )
    expect_gt(nchar(result$src), 1000, label = paste(ver, "src length"))
    expect_true(
      !is.null(result$providers_details[["OpenStreetMap"]]),
      info = paste(ver, "has OpenStreetMap")
    )
  }
})
