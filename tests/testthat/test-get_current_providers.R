test_that("providers_default() returns valid leaflet_providers object", {
  result <- providers_default()

  expect_s3_class(result, "leaflet_providers")
  expect_named(
    result,
    c("version_num", "providers", "providers_details", "src", "dep")
  )
  expect_identical(result$version_num, providers_version_num)
  expect_identical(result$providers, providers_data)
  expect_identical(result$providers_details, providers_details_data)
})

test_that("providers_default() reads JS source from packaged file", {
  result <- providers_default()

  expect_type(result$src, "character")
  expect_gt(nchar(result$src), 0)
  expect_match(result$src, "L.TileLayer.Provider", fixed = TRUE)
})

test_that("providers_default() dep uses package-based htmlDependency", {
  dep <- providers_default()$dep

  expect_s3_class(dep, "html_dependency")
  expect_identical(dep$name, "leaflet-providers")
  expect_identical(dep$version, providers_version_num)
  expect_identical(dep$package, "leaflet.providers")
  expect_identical(dep$script, "leaflet-providers.js")
  expect_false(dep$all_files)

  # src should be a file path, not an href
  expect_true("file" %in% names(dep$src))
})

test_that("use_providers() and providers_loaded() round-trip", {
  original <- providers_loaded()

  use_providers(providers_default())
  loaded <- providers_loaded()

  expect_type(loaded, "list")
  expect_named(
    loaded,
    c("version_num", "providers", "providers_details", "src", "dep")
  )
  expect_identical(loaded$version_num, providers_version_num)
  expect_identical(loaded$providers, providers_data)
  expect_s3_class(loaded$dep, "html_dependency")

  # Reset
  use_providers(providers_default())
})

test_that("use_providers() rejects invalid input", {
  expect_error(
    use_providers(list(a = 1)),
    "must be a 'leaflet_providers' object"
  )
})

test_that("leaflet_providers_dependency_url() creates href-based dependency", {
  dep <- leaflet.providers:::leaflet_providers_dependency_url(
    "1.0.0",
    "https://example.com/leaflet-providers.js"
  )

  expect_s3_class(dep, "html_dependency")
  expect_identical(dep$name, "leaflet-providers")
  expect_identical(dep$version, "1.0.0")
  expect_identical(dep$script, "leaflet-providers.js")
  expect_true("href" %in% names(dep$src))
  expect_identical(dep$src[["href"]], "https://example.com")
  expect_null(dep$package)
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
