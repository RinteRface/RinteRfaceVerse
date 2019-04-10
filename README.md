# RinteRfaceVerse
[![Travis build status](https://travis-ci.org/RinteRface/RinteRfaceVerse.svg?branch=master)](https://travis-ci.org/RinteRface/RinteRfaceVerse)
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/RinteRface/RinteRfaceVerse?branch=master&svg=true)](https://ci.appveyor.com/project/RinteRface/RinteRfaceVerse)
[![CRAN status](https://www.r-pkg.org/badges/version/RinteRfaceVerse)](https://cran.r-project.org/package=RinteRfaceVerse)

> Wrap-up around RinteRface templates


## Introduction
RinteRface gathers 4 templates to build nice looking dashboards with shiny. This package
aims at bringing RinteRface templates closer to shiny beginners by suggesting plug and play
boilerplates, ready to be cutsomized. These templates are different from showcases you can
find in each separate package.

## Installation

```r
devtools::install_github("RinteRface/RinteRfaceVerse")
library(RinteRfaceVerse)
```

## Getting Started

The `previewTemplate()` function enables the user to preview 4 RinteRface templates, by selecting
the relevant library:

```r
previewTemplate(lib = "shinydashboardPlus")
previewTemplate(lib = "bs4Dash")
previewTemplate(lib = "argonDash")
previewTemplate(lib = "tablerDash")
```