# 2019-11-06

This submission updates `providers` and `providers.details` to version 1.9.0.

This submission also changes the maintainer from Leslie Huang <lesliehuang@nyu.edu> to Barret Schloerke <barret@rstudio.com>.


## Test environments
* local OS X install, R 3.6.1
* ubuntu 14.04 (on travis-ci), release, oldrel, devel
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

NOTE:
* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Barret Schloerke <barret@rstudio.com>'

New maintainer:
  Barret Schloerke <barret@rstudio.com>
Old maintainer(s):
  Leslie Huang <lesliehuang@nyu.edu>


## Test environments
- R-hub windows-x86_64-devel (r-devel)
- R-hub ubuntu-gcc-release (r-release)
- R-hub fedora-clang-devel (r-devel)

## R CMD check results
❯ On windows-x86_64-devel (r-devel), ubuntu-gcc-release (r-release)
  checking CRAN incoming feasibility ... NOTE
  Maintainer: 'Barret Schloerke <barret@rstudio.com>'
    Barret Schloerke <barret@rstudio.com>

    Leslie Huang <lesliehuang@nyu.edu>
  Old maintainer(s):
  New maintainer:

❯ On fedora-clang-devel (r-devel)
  checking package dependencies ... NOTE
  Package suggested but not available for checking: ‘V8’

0 errors ✔ | 0 warnings ✔ | 2 notes ✖


## revdepcheck results

We checked 0 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

* We saw 0 new problems
* We failed to check 0 packages
