devtools::load_all()
todays_data <- get_providers()

if (todays_data$version_num == providers_version_num) {
  stop("leaflet-providers up to date")
}

providers_file <- file(description = "R/providers_data.R", "w")
cat(
  "providers_version_num <-",
  paste0('"', as.character(todays_data$version_num), '"'),
  file = providers_file
)
cat("\n", file = providers_file)

cat("providers_data <- ", file = providers_file)
dput(todays_data$providers, file = providers_file)

cat("\n", file = providers_file)

cat("providers_details_data <- ", file = providers_file)
dput(todays_data$providers_details, file = providers_file)
close(providers_file)

# Write .js file to inst/
js_filename_for_inst <- "leaflet-providers.js"

cat(
  todays_data$src,
  "\n",
  sep = "",
  file = file.path("inst", "leaflet-providers", js_filename_for_inst)
)

# Tests
devtools::test()

## Automate pkg components

# Increase release num to match leaflet.js
desc::desc_set_version(todays_data$version_num)

# Auto update NEWS.md
old_news <- readLines("NEWS.md")
new_lines <- paste0(
  "# leaflet.providers",
  todays_data$version_num,
  "\n",
  "\n",
  "* Updated leaflet.providers data on ",
  Sys.Date(),
  " from https://unpkg.com/leaflet-providers using version ",
  todays_data$version_num,
  " of leaflet.js\n"
)
cat(
  file = "NEWS.md",
  sep = "",
  new_lines,
  "\n",
  paste0(old_news, collapse = "\n")
)
