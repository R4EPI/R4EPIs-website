---
chapter: true
categories: ["R"]
tags: ["wiki"]
weight: 5
pre: <b>1. </b>
title: WELCOME
---

Welcome to the sitrep wiki!

# Idea of the package

The idea of the package is give you standardised data cleaning, analysis and
reporting tools to cover common types of outbreaks and population based surveys
that would be conducted in an MSF emergency response setting. The templates
cover outbreak investigations (acute jaundice syndrome, cholera, measles,
meningitis) and three of the MSF ERB pre-approved surveys: mortality, nutrition
and vaccination.

All of the templates are contained within the package as RStudio templates that
can easily be used from within RStudio. These templates should demonstrate,
ideally using a public dataset, what can be done. The user then changes the
version of the template and modifies it to his/her needs.

The templates address all aspects of:

* data cleaning of outbreak linelists and survey data (household and individual
  level)
* analysis of data to report in terms of time/place/person (more for linelist
  analysis)
* analysis of survey data (including accounting for survey design)

the package itself can hold specific functions that are relevant to the reports
but do not fit in any other packages that we control. For example:

* Code to plot specific age pyramids
* Sample size calculations
* Functions to reformat the epitools 2x2 table output
* ...

