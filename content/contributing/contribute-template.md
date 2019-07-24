---
title: "Contributing a Template"
description: >
  Instructions for contributing new templates or adding content to existing 
  templates.
categories: ["contributing"]
weight: 1
menuTitle: "Templates"
---

# Template Structure

## Where templates lives in *sitrep*

All the templates are written in [RMarkdown] according to the [template
structure] section of the RMarkdown book. In the [sitrep] package, that contains
these templates, the teplates all live in 
`inst/rmarkdown/<NAME>/skeleton/skeleton.Rmd`. This is what the current template
structure looks like:

```
inst
└── rmarkdown
    └── templates
        ├── ajs_outbreak
        │   ├── skeleton
        │   │   └── skeleton.Rmd
        │   └── template.yaml
        ├── cholera_outbreak
        │   ├── skeleton
        │   │   └── skeleton.Rmd
        │   └── template.yaml
        ├── measles_outbreak
        │   ├── skeleton
        │   │   └── skeleton.Rmd
        │   └── template.yaml
        ├── meningitis_outbreak
        │   ├── skeleton
        │   │   └── skeleton.Rmd
        │   └── template.yaml
        ├── mortality
        │   ├── skeleton
        │   │   └── skeleton.Rmd
        │   └── template.yaml
        ├── nutrition
        │   ├── skeleton
        │   │   └── skeleton.Rmd
        │   └── template.yaml
        └── vaccination
            ├── skeleton
            │   └── skeleton.Rmd
            └── template.yaml
```

## Template Document Structure

All templates start with a minimal yaml header and have the following main 
sections:

1. Data Import
2. Data Cleaning and Standardisation
3. Descriptive analysis (Person, Time, Place)

````markdown
---
title: "AJS outbreak report"
output: 
  word_document:
    keep_md: true
---

# Data Import

```{r import_data}
# If you have standard DHIS2 data, then follow these instructions...
dat <- rio::import("mydata.xlsx", sheet = 1)
```

# Data Cleaning

# Descriptive analysis

````

The first two sections will be heavily commented to instruct the user on how to
set up their data. The idea is that the pain of setting up the data analysis is
front-loaded when the field epi is starting their analysis, and automated after
that. 

This setup will create a word document report, keeping both the word and
markdown version. The markdown version is kept so that the figures from the
template are exported to PNG format instead of simply embedded in the document.


## How to contribute

If you use RStudio, you can use 
`usethis::create_from_github('R4EPI/sitrep', fork = TRUE)` to create a fork of 
the project to your account and clone it to your computer. After that, create a
new branch using RStudio, make your changes, push it to your account and then
create a pull request. 

[RMarkdown]: https://bookdown.org/yihui/rmarkdown/
[template structure]: https://bookdown.org/yihui/rmarkdown/template-structure.html
[sitrep]: https://github.com/R4EPI/sitrep
