---
title: "Getting Started"
categories: ["R"]
tags: ["wiki"]
weight: 1
---

This section describes how to get up and running!

# NECESSARY COMPONENTS

## R

The templates need at least R version 3.3. We recommend [getting R directly from CRAN](https://cran.r-project.org), but [the MRAN version of R](https://mran.microsoft.com/) will work as well.

> **Caveat for MRAN**: MRAN is a version of R that has modifications that are outside the scope of this project, however, it should be noted that it also locks the version of all packages to a specific date, so care is needed to specify repositories when installing R packages.

If you are unsure whether you have MRAN or CRAN R installed then see the [FAQ](<https://github.com/R4EPI/sitrep/wiki/4)-FAQ#i-am-unsure-if-i-have-the-mran-or-cran-version-of-r-installed>) 

## RStudio Desktop

[RStudio](https://www.rstudio.com) is an Integrated Development Environment for R that comes bundled with pandoc for publishing automated reports. Please have [version 1.1.463 or greater installed](https://www.rstudio.com/products/rstudio/download/#download).


## Configuring RStudio

It's important to start R every time with a clean working session. To do this, you must ensure that RStudio is set up correctly. Go to <kbd> Options > Global Options </kbd> and do the following:

1. **de-select** "Restore .RData into workspace at startup". This ensures R never loads any previous workspaces
2. **Select "Never"** from the dropdown menu for "Save workspace to .RData on exit". This ensures that R will never attempt to save your workspace when you close it.

Your Global Options window should look like this:

<img src="https://imgur.com/LXsbqPT.png" width = "60%" align="middle" alt="RStudio global options window showing a setting optimal for reproducibility">

When writing RMarkdown and code, it's common to wrap your text at 80 characters. You can add a reference line for this in RStudio:


<img src="https://imgur.com/FWJ7lER.png" width = "60%" align="middle" alt="Margin line setting in RStudio global options">

## Setting the default R repository

If you are using Microsoft's version of R (MRAN), the packages are all locked to one specific date (as of this writing, it's 2018-08-07). 
If you are unsure whether you have MRAN or CRAN R installed then see the [FAQ](<https://github.com/R4EPI/sitrep/wiki/4)-FAQ#i-am-unsure-if-i-have-the-mran-or-cran-version-of-r-installed>). 

To install packages that were either created or updated after this date, you should use the RStudio cloud repository. The following code will update a file called `.Rprofile` that lives in your home directory (on Windows, this directory is usually "C:\Users\\\<username>").

To create this file and set your default repository, open R and type:

```r
# install.packages("usethis", repos = "https://cran.rstudio.com/")
library("usethis")
edit_r_profile()
```

An editor window will open up and instructions will be printed to your R console. Paste the following code in the editor, save it, and restart your R session:

```r
local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cran.rstudio.com/"
  options(repos = r)
})
```

This sets the default repository to be https://cran.rstudio.com so that you will always have the latest version of R packages available.


## Updating your R version 

Please make sure you have the latest version of R installed. 
To do this you can use the *installr* package. 
See [this page](https://www.r-statistics.com/tag/installr/) for details. 

For MSF Field Epidemiologists, you do not have full admin rights to be able to do this on your field laptops. Please liaise with someone in your headquarters to ask what the best way is to do this.

``` r
install.packages("installr") # install package
installr::updateR() # updating R.
# If you wish it to go faster, run: installr::updateR(TRUE)
```

## Installing the package 

To install from GitHub you will first need to install the *remotes* package. 
Once installed you can use the *install_github* function to install *sitrep* 
from the appropriate repo. 

``` r
# install.packages("remotes", repos = "https://cran.rstudio.com")
```

The necessary R packages for these templates are described in the DESCRIPTION file. To obtain these packages, run the following from within R:

```r
remotes::install_github("R4EPI/sitrep", repos = "https://cran.rstudio.com", update = "never")
```

To explain a bit: this will install the sitrep package and also install any dependent packages that are not currently installed on your machine. It will not, however, update any of your current packages. If you want it to update packages, then you should change the argument above to `update = "ask"`.

If you are getting errors, check the FAQ section of this wiki. 

## Opening up templates 

Once the packages have been installed you can use the R-markdown templates
provided to create automated reports. 

![Example of how to open and save the cholera template](https://imgur.com/0n4wigA.gif)

To access the templates:

* Go into Rstudio
* Under the 'File' button (top left of your screen), click on the "+" 
* Then click on "R markdown...", 
* and select "From template"; 
you should be able to see all the options of templates that are available. For example "Outbreak Report". 

If you are not seeing these, then please take a look at this [GitHub post](https://github.com/R4EPI/sitrep/issues/35). 

## Folder structure 

You will need to save your rmarkdown document (the template) in the 
same folder as your dataset in order for it to work! 


# NICE-TO-HAVE COMPONENTS

### Tools for building packages

Most packages will have windows binaries available for installation. For those that don't, [the RTools suite](https://cran.r-project.org/bin/windows/Rtools/) is a straightforward, easy-to-install (with administrator priviledges) toolset that gives the user the ability to compile and install R packages directly from source on windows machines. 

