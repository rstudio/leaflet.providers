---
name: update-leaflet-providers
description: >
  Update the leaflet.providers R package to a new version of the upstream
  leaflet-providers JavaScript library. Use when the user asks to "update
  providers", "bump to a new leaflet-providers version", "update to
  leaflet-providers X.Y.Z", or similar. Covers the full end-to-end workflow:
  fetching the new JS, regenerating R data files, bumping the package version,
  updating NEWS.md, running checks, revdep checks, and creating a PR.
---

# Update leaflet.providers

End-to-end workflow for updating this package to a new upstream
[leaflet-providers](https://github.com/leaflet-extras/leaflet-providers) release.

## Prerequisites

Ensure these R packages are installed: `V8`, `jsonlite`, `devtools`, `desc`,
`revdepcheck`, `spelling`.

## Workflow

### 1. Determine the target version

If the user specifies a version, use it. Otherwise, fetch the latest from unpkg:

```r
jsonlite::fromJSON("https://unpkg.com/leaflet-providers/package.json")$version
```

Confirm the target version with the user before proceeding.

### 2. Update provider data

#### 2a. Fetch new provider data

```r
devtools::load_all()
todays_data <- get_providers("<TARGET_VERSION>")
```

#### 2b. Regenerate `R/providers_data.R`

Write three objects to `R/providers_data.R`:

- `providers_version_num` — character string of the new version
- `providers_data` — named list of all provider strings (from `todays_data$providers`)
- `providers_details_data` — nested list of provider details (from `todays_data$providers_details`)

Use `dput()` for the list objects. See the existing file for the exact format.

#### 2c. Update the JS file in `inst/`

1. Write `todays_data$src` to `inst/leaflet-providers/leaflet-providers.js` (overwrite the existing file).

#### 2d. Format R code

Run `air format` on any modified `.R` files (the project uses the `air` formatter):

```bash
air format R/providers_data.R
```

### 3. Bump package version

```r
desc::desc_set_version("<TARGET_VERSION>")
```

The package version matches the upstream leaflet-providers version.

### 4. Update NEWS.md

Prepend a new section at the top of `NEWS.md`:

```markdown
# leaflet.providers <VERSION>

* Updated leaflet.providers data on <DATE> from https://unpkg.com/leaflet-providers using version <VERSION> of leaflet.js
```

### 5. Run tests

```r
devtools::test()
```

All tests must pass, including the version validation tests in
`tests/testthat/test-get_providers.R`. If the new version is added to the
multi-version test loop, add it to the `versions` vector.

### 6. Run R CMD check

```r
devtools::check()
```

Target: 0 errors, 0 warnings, 0-1 notes.

### 7. Run revdep checks

```r
revdepcheck::revdep_check(num_workers = parallel::detectCores())
```

After completion, capture the results:

```r
revdepcheck::revdep_report_cran()
```

### 8. Update cran-comments.md

Update `cran-comments.md` with:
- Today's date as the heading
- Submission description
- R CMD check results summary
- Revdep check results from step 7

### 9. Verify with a demo app

Create a temporary Shiny app to visually confirm that provider tiles load:

```r
library(shiny)
library(leaflet)
library(leaflet.providers)

providers <- names(providers_default()$providers)

ui <- fluidPage(
  selectInput("provider", "Provider:", choices = providers, selected = "OpenStreetMap"),
  leafletOutput("map", height = "600px")
)

server <- function(input, output, session) {
  output$map <- renderLeaflet({
    leaflet() |>
      setView(lng = -75.1652, lat = 39.9526, zoom = 12) |>
      addProviderTiles(input$provider)
  })
}

shinyApp(ui, server)
```

### 10. Create a PR

Stage all modified files:
- `R/providers_data.R`
- `R/get_current_providers.R` (if changed)
- `inst/leaflet-providers/leaflet-providers.js`
- `DESCRIPTION`
- `NEWS.md`
- `cran-comments.md`
- `revdep/README.md`, `revdep/cran.md` (if updated)
- `tests/testthat/test-get_providers.R` (if updated)
- `.Rbuildignore` (if updated)
- `.github/workflows/R-CMD-check.yaml` (if updated)

Do NOT stage `.playwright-mcp/` or other ephemeral directories.

## Key files

| File | Purpose |
|------|---------|
| `R/providers_data.R` | Generated: version num, providers list, details list |
| `R/get_current_providers.R` | `get_providers()`, `providers_default()`, version validation |
| `inst/leaflet-providers/leaflet-providers.js` | Bundled upstream JS |
| `tests/testthat/test-get_providers.R` | Provider tests including version validation |

## Constraints

- `get_providers()` rejects versions < 1.0.10 (different JS structure).
- The package version in DESCRIPTION must match the upstream leaflet-providers version.
- The JS file lives at `inst/leaflet-providers/leaflet-providers.js` (package htmlDependency).
