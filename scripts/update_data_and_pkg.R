ct <- V8::v8()

# create dummy Leaflet object
ct$eval("var L = {TileLayer : {extend: function(){return {};}}, Util : {extend: function(){return {};}}, tileLayer : {}}")

# Load providers.js file
ct$source("https://unpkg.com/leaflet-providers")

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

# Auto-update cran-comments.md

# Increment release num.
desc_lines <- readLines("DESCRIPTION")
sink("DESCRIPTION")
for (line in desc_lines) {
  if (!is.na((stringr::str_extract(line, "Version: ")))) {
    current_vnumber <- stringr::str_remove(line, "Version: ")
    vnumber_components <- lapply(strsplit(current_vnumber, "\\."), as.numeric)
    names(vnumber_components[[1]]) <- c("major", "minor", "patch")
    # assume updated data is "minor"
    incremented_vnumber <- paste(vnumber_components[[1]]["major"], vnumber_components[[1]]["minor"] + 1, vnumber_components[[1]]["patch"], sep = ".")
    updated_line <- paste("Version: ", incremented_vnumber, sep = "")
    cat(updated_line, sep = "\n")
  }
      else {
        cat(line, sep = "\n")
      }
}
sink()


usethis::use_revdep()

usethis::use_pkgdown()
