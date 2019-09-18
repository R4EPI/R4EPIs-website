---
pre: <i class='fas fa-fw fa-project-diagram'></i>&nbsp;
title: "About Outbreak Templates"
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
> 1. in RStudio, click on File > New File > R Markdown
> 2. select "From Template" and then select the outbreak report template you want to use

## Getting started with outbreak templates in R

This section (TODO: INSERT LINK TO THE WALK THROUGH ON OUTBREAK DATA ANALYSIS) offers you a step by step guide on how to use the outbreak templates to fit your data and run the analysis.

## Concepts of outbreak linelist data analysis

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

## Outbreak templates, the basics

In the Outbreak Template Walkthrough (INSERT LINK), there is a step by step description of how to use the templates for data analysis using outbreak linelists.

We have designed the templates to run through a similar series of data management and analytical questions in the same order:

1. **Import data** and perform initial data cleaning
2. **Browse and view** your data to get a sense of your dataset structure, naming of variables, etc.
3. **Re-naming and recoding** variables to help with data analysis (i.e. creation of epidemiological weeks, recoding of age groups, application of case definitions etc.)
4. Analysis of **personal characteristics**: demographics, signs and symptoms, attack rates, risk groups etc.
5. Analysis of **temporal characteristics**: creating graphs that display different indicators in time
6. Analysis of **spatial/geographical characteristics**: creating maps

## Other uses of the templates

As the coding included in the outbreak templates is structured in terms of time, place and person, they can also be used to help guide you through any other analysis for epidemiological data from either:

* outpatient registers
* hospital registers
* other surveillance data

You will not be able to use the same set up of the data dictionaries, but you should be able to work out how to recode and rename your variables, create graphs and tables of relevant variables and if necessary generate maps.

There is also coding to be able to guide you on conducting simple statistical comparisons between groups (chi square, t-test etc.), as well as the calculation of Odds Ratios (ORs) and Risk Ratios (RR) and running regression models for multivariate analyses.
