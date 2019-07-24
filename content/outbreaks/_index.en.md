---
title: "Outbreak Templates"
categories: ["R"]
tags: ["wiki"]
weight: 10
---

# Available Templates

There are four available outbreak templates:

1. Cholera
2. Measels
3. Meningitis
4. Acute Jaundice Syndrome

These instructions refer to the generic outbreak template (so lines do not necessarily correspond to the disease specific templates (e.g. "Cholera Outbreak Template"). 
This is a template that can be used to create an automated outbreak situation report based on the standard MSF-OCA outbreak linelists that are used to collect data during these situations.

All of the R4epis templates are written in R markdown.

Some important points to note about the outbreak templates:

- The first section addresses some housekeeping rules that should facilitate that R/R studio work fine during this process
- The second section addresses some common aspects around data cleaning and formatting of your data, to ensure that things are correctly formatted before you start your analysis
- The third section has the coding to be able to do analysis in terms of time, place and person (organised in this order)

Some important points around the R markdowns:

- You can type normal text in white spaces
- You can type R-code in the grey spaces (denoted by three backticks and r) "[e.g.````` ```{r} ``````]"
(see [Rmarkdown introduction](https://rmarkdown.rstudio.com/articles_intro.html) and
    [Markdown basics](https://rmarkdown.rstudio.com/authoring_basics.html))
- Introductions and contents of sections are within square brackets "[...]" and
    can be deleted as appropriate
- Examples of inline code (to automate updating numbers, e.g. in the "Person" section of the report), can
    similarly be removed/updated
- Code itself can be deleted, but as a word of caution: make sure you aren't
    deleting bits where variables are created/manipulated, or at least update
    them appropriately

If you ever have difficulties understanding how a piece of code is working, an easy way to rapidly understand the code is to either run the individual chunk of code (run by pressing the triangle on the top right of each grey box of code) or each line of the chunk and check how the output appears.


## Packages used in this template

### Generic packages

- **knitr** used to create the output document (pdf, doc, html)
- **dplyr** used to clean and shape the data
- **epitrix** used for data cleaning and variable standardisation
- **ggplot2** used to visualise your data using different plotting methods

### More epidemiology-specific packages

- **sitrep** includes a variety of useful field epidemiology functions
- **incidence** used for creating epicurves
- **ISOweek** used for creating epiweeks
- **epitools** used for creating 2by2 tables


### Mapping packages

There are a number of mapping packages highlighted in this template that you could use

- **ggspatial** used for selecting basemap tiles
- **sf** used for manipulating spatial objects (e.g. polygons) easily


## Overview of actions performed in the template
1.  Import data and perform an initial cleaning step on variable names using RECON's **epitrix** package. 
To decide which code chunk to use for reading and cleaning data, use the following decision tree. 

ADD AN OVERVIEW OF THE DATA DICTIONARY!

ADD AN EXAMPLE TABLE OF HOW THE POPULATION DATA SHOULD BE FORMATTED IF READ IN FROM EXCEL!

ADD DECISION TREE DIAGRAM FOR CHOOSING WHICH CODECHUNK TO USE BASED ON DATA AVAILABLE (DHIS/nonDHIS etc)
ALSO MENTION THAT THESE SCRIPTS ARE BUILT TO SERVICE THE DHIS COMPATIBLE DATASETS - SO IF YOU ARE USING
OTHERS YOU WILL NEED TO GO BACK AND COMMENT OUT THE WHOLE READ-DHIS2 SECTION!
ADD NOTE ON SUPRESSION OF WARNINGS AND MESSAGES IN CHUNK HEADERS



2.  Browse your data using functions such as **str** and **summary**

3.  Initial preparation of data for analysis including creating:
    + age groups
    + case definitions
    + epiweeks

4.  Analysis by person
    + number of cases\*
    + cases by sex and age group and combinations thereof
    + age sex pyramid
    + case fatality rate, by sex, age group and case definition
    + attack rate
    + mortality rate
    + two by two tables

\*You may notice in the "Person"section that there is R code in white spaces.
Here you are able to take information from your data set, by using 
`` `r your code` `` and incorporate it directly in the text part of your output
e.g. `` `r "nrow(linelist_cleaned)"` `` will let us know the total number of
cases in the dataset.

5. Analysis by time
    + epicurve by date of onset (using the **incidence** package)
    + epicurve by date of onset and sex, or case definition or other categorical variable of interest

6. Analysis by place  
The template guides you through obtaining a basemap for your area of interest, selecting shapefiles for provinces/districts/regions of interest and code is provided to enable you to create:
    + tables showing attack rate by region/district/village (depending on what is available)
    + dot maps by case definition
    + choropleth maps showing attack rate and mortality rate per district
   





