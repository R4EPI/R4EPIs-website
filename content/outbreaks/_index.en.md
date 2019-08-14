---
title: "Outbreak Templates"
categories: ["R"]
tags: ["wiki"]
weight: 10
---
![msfepimeasles](images/msfepimeasles.jpg?width=30pc)

**Source**: Elise Mertens/MSF; MSF is working with the Ministry of Public Health throughout the year to monitor areas at risks of disease outbreaks. Week after week Louis, the MSF epidemiologist, monitors the health zones that have reported cases and the levels of epidemic alert. He is also in charge of coordinating the post-vaccination coverage survey to ensure that the vaccination coverage rate is sufficient.

The outbreak templates have been developed to cover four of the most common outbreak scenarios MSF teams face in our project locations. They include:

1. **Cholera/Acute watery diarrhea**
2. **Meningitis**
3. **Measles/Rubella**
4. **Acute Jaundice Syndrome (often suspected to be Hepatitis E)**

Some recent examples of such outbreak responses and the data analysis that was done during those outbreaks is available here:

* [Cholera epidemic in Yemen, 2016–18: an analysis of surveillance data](https://www.thelancet.com/journals/langlo/article/PIIS2214-109X(18)30230-4/fulltext)
* [Invasive Meningococcal Meningitis Serogroup C Outbreak in Northwest Nigeria, 2015 - Third Consecutive Outbreak of a New Strain](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4958021/?report=reader)
* [Lessons and Challenges for Measles Control from Unexpected Large Outbreak, Malawi](https://wwwnc.cdc.gov/eid/article/19/2/12-0301_article)
* [A large outbreak of Hepatitis E virus genotype 1 infection in an urban setting in Chad likely linked to household level transmission factors, 2016-2017](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0188240)

You can access these by selecting them from the RStudio RMarkdown template menu:
> RStudio>File>New File>R Markdownn>Template>Select Outbreak Report Template

# Getting started with outbreak templates in R

This section (TODO: INSERT LINK TO THE WALK THROUGH ON OUTBREAK DATA ANALYSIS) offers you a step by step guide on how to use the outbreak templates to fit your data and run the analysis.

# Concepts of outbreak linelist data analysis

The main analysis of outbreak data will always focus on describing your data in terms of :

* **Time**
* **Person**
* **Place**

## Time characteristics

Usually the main component of this will include the creation of an "epidemic curve" which demonstrates the dynamics of the outbreak in time (by day of the outbreak or epidemiological week).

The epidemic curve will give an understanding about the mode of transmission of the outbreak in question and also possibly whether the outbreak is slowing down or still not under control.

![Number and weekly incidence rate of CSM cases treated by MSF in Kebbi and Sokoto states, February 10 – June 8, 2015](images/epicurvemeningitis.jpg?width=40pc)

**Source**: [Chow J, et al. Invasive Meningococcal Meningitis Serogroup C Outbreak in Northwest Nigeria, 2015 – Third Consecutive Outbreak of a New Strain. PLOS Currents Outbreaks. 2016 Jul 7 . Edition 1.](10.1371/currents.outbreaks.06d10b6b4e690917d8b0a04268906143)

## Person characteristics

This will include a series of graphs or tables that show the demographic breakdown of the cases identified in the outbreak.  It will include a comparison in attack rates and mortality rates in different age and gender groups to help guide the analysis to the identification of risk groups for infection and death. 

This information can help identify priority groups for public health interventions and prevention activities or for improved/different clinical management approaches.

![Characteristics of cases of acute jaundice syndrome and those testing positive and negative for HEV using RDTs RDTs during an acute outbreak of HEV in Am Timan, Chad, 2016–2017](images/hevperson.png?width=40pc)

**Source**: [Spina A, Lenglet A, et al.(2017) A large outbreak of Hepatitis E virus genotype 1 infection in an urban setting in Chad likely linked to household level transmission factors, 2016-2017. PLoS ONE 12(11): e0188240.](https://doi.org/10.1371/journal.pone.0188240)

## Place characteristics

Here you will create different types of maps to illustrate the geographical spread and impact of the outbreak. Maps can aid in the identification of hotspots for the targeting or improvement of prevention and public health measures.

![Cholera in Yemen, 2017](images/cholerayemen.png?width=40pc)

**Source**: [MSF calls for increased response to cholera outbreak](https://www.msf.ie/article/yemen-msf-calls-increased-response-cholera-outbreak)

# Outbreak templates, the basics

In the Outbreak Template Walkthrough (INSERT LINK), there is a step by step description of how to use the templates for data analysis using outbreak linelists.

We have designed the templates to run through a similar series of data management and analytical questions in the same order:

1. **Import data** and perform initial data cleaning
2. **Browse and view** your data to get a sense of your dataset structure, naming of variables, etc.
3. **Re-naming and recoding** variables to help with data analysis (i.e. creation of epidemiological weeks, recoding of age groups, application of case definitions etc.)
4. Analysis of **personal characteristics**: demographics, signs and symptoms, attack rates, risk groups etc.
5. Analysis of **temporal characteristics**: creating graphs that display different indicators in time
6. Analysis of **spatial/geographical characteristics**: creating maps

# Other uses of the templates

As the coding included in the outbreak templates is structured in terms of time, place and person, they can also be used to help guide you through any other analysis for epidemiological data from either:

* outpatient registers
* hospital registers
* other surveillance data

You will not be able to use the same set up of the data dictionaries, but you should be able to work out how to recode and rename your variables, create graphs and tables of relevant variables and if necessary generate maps.

There is also coding to be able to guide you on conducting simple statistical comparisons between groups (chi square, t-test etc.), as well as the calculation of Odds Ratios (ORs) and Risk Ratios (RR) and running regression models for multivariate analyses.

> **Below here is all the stuff that was written before that we need to make sure is included in the outbreak template walkthrough**


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
   





