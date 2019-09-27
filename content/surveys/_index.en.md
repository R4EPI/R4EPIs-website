---
pre: <i class='fas fa-fw fa-clipboard-list'></i>&nbsp;
title: "About Survey Templates"
categories: ["R"]
tags: ["wiki"]
weight: 15
---

![MSF Epidemiologist carrying out survey](images/msfepisurvey.jpg?width=30pc)

*Above: Suzanne Moja, 36, from Madrid, Spain is an epidemologist and supervises the team of MSF researchers in Bokoro, Chad.* ***Source: Charlotte Morris/MSF.*** 

**The survey templates have been developed to match the data that would be collected using 
[MSF Ethical Review Board pre-approved surveys](https://fieldresearch.msf.org/handle/10144/618942) on:** 

* ***Retrospective mortality and access to care***,  
* ***Vaccination coverage*** and   
* ***Malnutrition***.   


## Getting started

The survey report templates are special "RMarkdown" scripts, and are included with **sitrep** package installation. 
RMarkdown scripts give you a way of writing your analysis code and report in one document by allowing you to interleave chunks of code that the computer will run in between explanatory text meant for a person to read.

**For assistance using the survey templates** 

Read more about RMarkdown scripts and how to modify the templates in the [Training Materials](https://r4epis.netlify.com/training/) pages of this website. 

The [case study walk-though](https://r4epis.netlify.com/training/walk-through/) offers you a step-by-step guide on how to use the templates to fit your data and run the analysis. 
Althrough the walk-through uses an outbreak template, the structure and techniques used to modify the templates are similar. 
At the start of the walk-through you can download the case study's data files and final template to follow along. 
In the walk-through, you will learn lessons for modifying the templates to fit your needs.

**To access the survey templates:**

* Open RStudio
* Under the 'File' button (top left of your screen), click on the "+" 
* Then click on "R markdown...", 
* and select "From template"; 
you should be able to see all the options of templates that are available. For example "Mortality Survey". 

![example of opening and saving cholera template](images/opening_template.gif)






## Basic concepts of survey data analysis

**Further resources** 

This website will not cover the detailed aspects of designing, implementing and analysing a survey in MSF contexts. 
There are many other training and briefing materials that address this aspect. We will cover a few crucial concepts 
which are required for the understanding and use of the templates for your survey analysis.

For further survey methodology resources please see: 

* [MSF Field Research site](https://fieldresearch.msf.org/)
* [SMART Methodology](https://smartmethodology.org/about-smart/?doing_wp_cron=1569090491.1568140983581542968750) (Standardized Monitoring and Assessment of Relief and Transitions)
* This site on [the use of epidemiological tools in conflict-affected populations](http://conflict.lshtm.ac.uk/page_02.htm) from the London School of Hygiene and Tropical Medicine (LSHTM). 

## Sampling strategy
There are different ways to sample populations for surveys. The most commonly used in MSF settings are:

1. **Simple random sampling (SRS)**: requires a comprehensive sampling frame (i.e. total list of households inside a refugee camp or 
GPS based sampling in a known area).
2. **Cluster based sampling**: most commonly used in combination with sampling villages proportional to population size.
3. **Stratified samples**: uses either SRS or cluster based sampling but in two different adminstrative areas in order to obtain
precise prevalence estimates for them.

The templates can accomodate analysis of data from all sampling designs.

## Sample size
Before implementing a survey you will need to calculate the sample size for that survey.

When calculating a sample size for your survey you take the below parameters into consideration:

* **Estimate of prevalence**
* **Design effect or intraclass coefficient**
* **Precision required around your estimate of prevalence**

### Estimate of prevalence
You will need to use an estimate of the prevalence/coverage of the your main outcome of interest in your to-be-surveyed population
 (prevalence of malnutrition, measles vaccination coverage, etc.). You will use published or grey literature to determine a logical 
estimate of this parameter.

{{% notice note %}}
The largest sample size you will need will be that which is calculated using an estimate of prevalence of 50%. The closer to 0% or 100% prevalence you set your estimate, the smaller your sample size will be. Therefore, if you have no idea what your estimate of prevalence is, try and use 50% and the largest possible sample size.
{{% /notice %}}

### Design effect
The easiest way to remember the design effect (which we usually refer to as DEFF), is that it is a measure of the variability of the outcome of interest within your clusters (if you are conducting a cluster based survey) and between your clusters. 

The higher the DEFF, the higher the variability between clusters and the higher the probability that subjects within a cluster are similar.

In a well designed survey, you will aim to have a calculated DEFF for your outcome of interest as close as possible to 1. This is because a DEFF of 1 means that your survey design has approached Simple Random Sampling (SRS) for your outcome of interest. SRS is the gold standard in survey design, but often not possible in MSF contexts. In general, in two-stage cluster sampling surveys, we would assume a DEFF of 2.

Mathematically DEFF is calculated as:

> **DEFF=1+(1-n) * rho**
> where n=sample size of your survey and rho=intraclass coefficient

When analysing your survery data, we often recalculate the DEFF for the main outcomes of interest. This because the DEFF will give you a good estimate on whether the survey design and sampling approach made sense in your survey for your outcome of interest.

### Precision around your estimate
The precision around your estimate stipulates how close to the your estimate you would like the 95% confidence interval of your prevalence estimate to fall.

> **For example**: you have calculated a 72% measles vaccination coverage in your study population. You would like to ensure that the 
> 95% confidence interval is narrow (between 70-74%); thus you would set your precision at 2% (2% above and below 72%).

The lower your precision, the higher your sample size calculation will be.

You only use the estimate of the precision when calculating a sample size before your survey. 

## Data collection and databases
The templates assume that data will have been collected using mobile data collection or will have been entered into an electronic database (Excel, Epi Data, Redcap etc.).

We recommend that you try and establish generic data dictionaries for mobile data collection (through template questionnaires) or through template databases. This will improve the consistency of the naming of your variables and will facilitate the frequent and systematic use of the Survey Templates.

## Overview of survey template parts

We have designed the templates to run through a similar series of analytical questions in the same order:

1. **Description of your survey** sample and population in that survey sample
2. **Comparison of your survey sample** to the population breakdown of that area (this will help you understand how biased your data is)
3. **Calculation of the main outcomes of interest** (including DEFF): 

  * Mortality survey template: crude mortality rate (CMR) and under 5 year mortality rate (U5MR)
  * Vaccination coverage: vaccination coverage of vaccines of interest
  * Malnutrition: prevalence of malnutrition in target population through MUAC and Weight for Height Scores  
4. Calculation of **secondary outcomes of interest**

{{% notice info %}}
The sampling stratgey **MUST** be considered by the epidemiologist using the templates in order to ensure an appropriate weighting is applied to the analysis.
{{% /notice %}}

