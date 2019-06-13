todays_data <- get_providers()

usethis::use_data(todays_data$providers.details, overwrite = TRUE)
usethis::use_data(todays_data$providers, overwrite = TRUE)

# Automate pkg components

# Increase release num to match leaflet.js
desc::desc_set_version(todays_data$version_num)

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
