
## Comments
### 2019-11-08

This submission updates `providers` and `providers.details` to version 1.9.0.

This submission also changes the maintainer from Leslie Huang <lesliehuang@nyu.edu> to Barret Schloerke <barret@rstudio.com>.  The email conversation is copied below.

### 2019-11-07 Emails

On Thu, Nov 7, 2019 at 2:01 PM Leslie Huang <lesliehuang@nyu.edu> wrote:
Hi Barret,

Thanks, I'm doing well! [[personal information removed]]

Changing the maintainer is fine with me!

[[personal information removed]]

Best,
Leslie

Leslie Huang
PhD student, Data Science
New York University
https://leslie-huang.github.io


On Thu, Nov 7, 2019 at 1:32 PM Barret Schloerke <barret@rstudio.com> wrote:
Hi Leslie,

Hope the semester is going well!

I'm getting ready to release `leaflet` and `leaflet.providers`.

May we change the maintainer from you (Leslie Huang <lesliehuang@nyu.edu>) to me (Barret Schloerke <barret@rstudio.com>)?

Thank you,
Barret


## Test environments
* local OS X install, R 3.6.1
* ubuntu 14.04 (on travis-ci), release, oldrel, devel
* win-builder (devel and release)
* R-hub windows-x86_64-devel (r-devel)
* R-hub ubuntu-gcc-release (r-release)
* R-hub fedora-clang-devel (r-devel)

## R CMD check results

#### For all testing environments except R-hub fedora...

NOTE:
* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Barret Schloerke <barret@rstudio.com>'

New maintainer:
  Barret Schloerke <barret@rstudio.com>
Old maintainer(s):
  Leslie Huang <lesliehuang@nyu.edu>

0 errors | 0 warnings | 1 note


#### On R-hub fedora-clang-devel (r-devel)
* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Barret Schloerke <barret@rstudio.com>'

New maintainer:
  Barret Schloerke <barret@rstudio.com>
Old maintainer(s):
  Leslie Huang <lesliehuang@nyu.edu>

*  checking package dependencies ... NOTE
  Package suggested but not available for checking: ‘V8’

0 errors ✔ | 0 warnings ✔ | 2 notes ✖


## revdepcheck results

We checked 0 reverse dependencies, comparing R CMD check results across CRAN and dev versions of this package.

* We saw 0 new problems
* We failed to check 0 packages
