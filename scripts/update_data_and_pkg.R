todays_data <- get_providers()

providers <- todays_data$providers
providers.details <- todays_data$providers.details

usethis::use_data(providers.details, overwrite = TRUE)
usethis::use_data(providers, overwrite = TRUE)

# Tests
devtools::test()

## Automate pkg components

# Increase release num to match leaflet.js
desc::desc_set_version(todays_data$version_num)

# Auto update NEWS.md
lines <- readLines("NEWS.md")
filecon <- file("NEWS.md", "wt")
new_lines <- paste("# leaflet.providers",
                   todays_data$version_num,
                   "\n",
                   "* Updated leaflet.providers data on",
                   Sys.Date(),
                   "from",
                   "https://unpkg.com/leaflet-providers",
                   "using version",
                   todays_data$version_num,
                   "of leaflet.js",
                   "\n",
                   sep = " ")
writeLines(new_lines, con = filecon)
writeLines(lines, con = filecon)
close(filecon)

# Generate revdep CRAN report (to include in cran-comments.md)
revdep_report_results <- capture.output(revdepcheck::revdep_report_cran())

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
writeLines("\n", con = filecon)
writeLines(revdep_report_results, con = filecon)
close(filecon)

spelling::spell_check_test(vignettes = TRUE, error = FALSE,
                           skip_on_cran = TRUE)


# revdepcheck::revdep_check() # fails on pkgs not on CRAN

## Final checks
devtools::check()

devtools::check_win_oldrelease()
devtools::check_win_release()
devtools::check_win_devel()

rhub::check_for_cran()
