## Final checks
devtools::check()

spelling::spell_check_test(vignettes = TRUE, error = FALSE, skip_on_cran = TRUE)

# revdepcheck::revdep_reset()
revdepcheck::revdep_check(num_workers = parallel::detectCores())

# devtools::check_win_oldrelease()
# devtools::check_win_release()
devtools::check_win_devel()

# Generate revdep CRAN report (to include in cran-comments.md)
revdep_report_results <- capture.output(revdepcheck::revdep_report_cran())

cran_comments_msg <- "
## Test environments

* local macOS, R 4.3.0
* GitHub Actions
  * macOS
    * 4.3
  * windows
    * 4.3
  * ubuntu18
    * devel, 4.3, 4.2, 4.1, 4.0, 3.6
* devtools::
  * check_win_devel()

## R CMD check results

0 errors | 0 warnings | 1 note

"

# Auto-update cran-comments.md
cat(
  file = "cran-comments.md",
  sep = "",
  "# ",
  as.character(Sys.Date()),
  "\n\n",
  "This submission updates `providers` and `providers.details`.",
  "\n\n",
  cran_comments_msg,
  "\n\n",
  paste0(revdep_report_results, collapse = "\n"),
  "\n",
  ""
)
