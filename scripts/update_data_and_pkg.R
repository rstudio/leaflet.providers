devtools::load_all()
todays_data <- get_providers()

providers_file <- file(description = "R/providers_data.R", "w")
cat("providers_version_num <-", paste0('"', as.character(todays_data$version_num),'"'), file= providers_file)
cat("\n", file = providers_file)

cat("providers_data <- ", file = providers_file)
dput(todays_data$providers, file = providers_file)

cat("\n", file = providers_file)

cat("providers_details_data <- ", file = providers_file)
dput(todays_data$providers_details, file = providers_file)
close(providers_file)

# Delete old .js files
old_files <- list.files(path = "inst", pattern = ".*\\.js", full.names = TRUE)

if (length(old_files) > 0) {
    unlink(old_files)
}

# Write .js file to inst/
js_filename_for_inst <- paste0("leaflet-providers_", todays_data$version_num, ".js")

cat(todays_data$src, "\n", sep = "", file = file.path("inst", js_filename_for_inst))

# Tests
devtools::test()

## Automate pkg components

# Increase release num to match leaflet.js
desc::desc_set_version(todays_data$version_num)

# Auto update NEWS.md
old_news <- readLines("NEWS.md")
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
cat(file = "NEWS.md",
    new_lines,
    "\n",
    paste0(old_news, collapse = "\n"))

## Final checks
devtools::check()

spelling::spell_check_test(vignettes = TRUE, error = FALSE,
                           skip_on_cran = TRUE)

revdepcheck::revdep_check() # fails on pkgs not on CRAN

devtools::check_win_oldrelease()
devtools::check_win_release()
devtools::check_win_devel()

rhub_output <- rhub::check_for_cran(
  env_vars = c(`_R_CHECK_FORCE_SUGGESTS_` = "false", `_R_CHECK_CRAN_INCOMING_USE_ASPELL_` = "true"),
  show_status = FALSE
)
for (i in seq_len(nrow(rhub_output$urls()))) {
  rhub_output$livelog(i)
}

# Generate revdep CRAN report (to include in cran-comments.md)
revdep_report_results <- capture.output(revdepcheck::revdep_report_cran())
rhub_summary <- capture.output({rhub_output$cran_summary()})

cran_comments_msg <- "
## Test environments
* local OS X install, R 3.6.0
* ubuntu 14.04 (on travis-ci), R 3.6.0, R 3.5.3, R devel
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.
"

# Auto-update cran-comments.md
cat(file = "cran-comments.md",
  "#", as.character(Sys.Date()),
  "\n\n",
  "This submission updates `providers` and `providers.details`.",
  "\n\n",
  cran_comments_msg,
  "\n\n",
  paste0(revdep_report_results, collapse = "\n"),
  "\n",
  paste0(rhub_summary, collapse = "\n")
)
