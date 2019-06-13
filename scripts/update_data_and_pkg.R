# Increment release num.
usethis::use_version()

ct <- V8::v8()

# create dummy Leaflet object
ct$eval("var L = {TileLayer : {extend: function(){return {};}}, Util : {extend: function(){return {};}}, tileLayer : {}}")

# Load providers.js file
providers_filepath <- "https://unpkg.com/leaflet-providers"
ct$source(providers_filepath)

providers_json <- ct$eval("JSON.stringify(L.TileLayer.Provider.providers)")

providers.details <- jsonlite::fromJSON(providers_json)

variants <- purrr::map(providers.details, ~ names(.$variants))

providers <- purrr::map(names(providers.details), function(provider) {
  if (is.null(variants[[provider]])) {
    provider
  } else {
    c(provider, stringr::str_c(provider,'.',variants[[provider]]))
  }
}) %>% purrr::flatten_chr()

providers <- setNames(as.list(providers), providers)

usethis::use_data(providers.details, overwrite = TRUE)
usethis::use_data(providers, overwrite = TRUE)

# Automate pkg components

spelling::spell_check_test(vignettes = TRUE, error = FALSE,
                           skip_on_cran = TRUE)

# Auto update NEWS.md
lines <- readLines("NEWS.md")
filecon <- file("NEWS.md", "wt")
writeLines(lines[1], con = filecon) # heading already creating by use_version
new_lines <- paste("\n",
                   "* Updated leaflet.providers data on",
                   Sys.Date(),
                   "from",
                   providers_filepath,
                   "\n",
                   sep = " ")
writeLines(new_lines, con = filecon)
writeLines(lines[2:length(lines)], con = filecon)
close(filecon)

# Auto-update cran-comments.md
lines <- readLines("cran-comments.md")
filecon <- file("cran-comments.md", "wt")
new_lines <- paste("#", Sys.Date(),
                   "\n\n",
                   "This submission updates `providers` and `providers.details`.",
                   "\n",
                   sep = " ")
writeLines(new_lines, con = filecon)
writeLines(lines, con = filecon)
close(filecon)

revdepcheck::revdep_check()
