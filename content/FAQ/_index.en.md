---
pre: <i class='fas fa-fw fa-question-circle'></i>&nbsp;
title: "Frequently Asked Questions"
categories: ["R"]
tags: ["wiki"]
weight: 100 
---

Here are some commonly asked questions.

# Installation

## I get the error: package is not available for my current R version 

This might be because you have an unstable internet connection. 
Either try again when there are less people using the internet connection, use a different connection, 
or contact one of the maintainers for alternative offline options. 

## I get the error: Error: Failed to installed 'sitrep' from Github: (converted from warning) cannot remove prior installation of package 'curl'

1. Restart your R session by clicking "Session" from the top menu and choosing "Restart R",
or by using the keyboard shortcut <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>F10</kbd>. 
<!-- ZNK: the <kbd> tag makes the font appear as a keyboard key-->
2. Re-install the 'curl' package via `install.packages("curl")`]
3. Try the installation again

## I get errors when installing sitrep or other packages  

Restart your R session by clicking "Session" from the top menu and choosing "Restart R",
or by using the keyboard shortcut <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>F10</kbd> and try installation again. This is sometimes necessary when updating or installing new packages.

If you continue to encounter errors you may need to install the list of required packages one-by-one,
using the command `install.packages()`, as below for the package dplyr (note the name of the package is in quotes):

```r
install.packages("dplyr")
``` 


## I installed without errors---but cannot see the templates 

You will need to restart your R session. 
You can do this by clicking on "Session" in the menu up top and then choosing 
"Restart R". Alternatively, you can use a keyboard shortcut: <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>F10</kbd>

If this does not work, try restarting your computer and opening R-Studio again. 

If this they still do not appear, then please take a look at this [GitHub post](https://github.com/R4EPI/sitrep/issues/35).

## I am unsure if I have the MRAN or CRAN version of R installed. 

If you click tools > global options... Then under the general tab you can see the R version. 
If you click on change... then the different versions will pop up. 
MRAN will be in a microsoft folder whereas CRAN will be in an R folder. 
See this [picture](https://revolution-computing.typepad.com/.a/6a010534b1db25970b01bb08b57b47970d-pi) for an example. 


# Data analysis / Coding 

## Basic introductory course 

See the R Basics Resources page for a list of introductory online courses.

## I have a date column and a time column, how do I combine the two?

You can use `paste()` to combine the columns and [`lubridate::ymd_hm()`](https://lubridate.tidyverse.org/reference/ymd_hms.html) to convert them into a datetime. For example, here's how you would combine the columns `date_of_x` and `time_of_y` (this assumes that the dates are formatted like yyyy-mm-dd and the times are formatted like hh:mm) in the data frame `my_data`

```r
library(dplyr)
library(lubridate)
my_data %>%
  mutate(date_time = ymd_hm(paste(date_of_x, time_of_y), tz = "UTC")
```

## My summary table is wrong. There are missing values where there should be none.

This may be because you need to specify `na.rm = TRUE`, which indicates that missing values should be discarded before calculation:

```r
sum(c(1:10, NA))
## [1] NA
sum(c(1:10, NA), na.rm = TRUE)
## [1] 55
```

## How do I prevent results from my exploratory analysis from showing up in the word document

You can add `include = FALSE` in the chunk header:

    ```{r, echo = FALSE, include = FALSE, warnings = FALSE, messages = FALSE}
    
    # summary code here

    ```
## Searching for commas is driving me nuts! 

Turn on code diagnostics, it will show up with helpful messages 
https://support.rstudio.com/hc/en-us/articles/205753617-Code-Diagnostics

# General statistical methodologies

## I am not sure what statistical test to use 

Take a look at this table from the UCLA statistics department 
https://stats.idre.ucla.edu/other/mult-pkg/whatstat/

## I am not sure what plot to use for visualising my data 

Take a look at this book 
https://serialmentor.com/dataviz/

https://www.data-to-viz.com


## Need some more background info on survey methods 

LSHTM epidemiology in crises material: http://conflict.lshtm.ac.uk/page_02.htm
WHO nutritional survey standards: https://www.who.int/nutrition/publications/anthropometry-data-quality-report/en/




