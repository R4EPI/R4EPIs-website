---
title: "Survey templates"
categories: ["R"]
tags: ["wiki"]
weight: 15
---

# Survey Templates

We currently have three survey templates available in the [sitrep] package:

1. Vaccination Coverage
2. Malnutrition
3. Retrospective Mortality Access to Care

You can access these by selecting them from the RStudio RMarkdown template menu:

# Concepts

## Explanation of design effect from epiet ras case study: 

A design effect of 1.407 suggests that the variability (variance or the square
of the standard error) of the estimate under the chosen design is 40.7% larger
than that of the same-sized simple random sampling. Similarly, a design effect
of 2.358 suggests that the variability of the estimate allowing for clustering,
stratification and sampling weights is 135.8% larger than that would come from
the same sample size if simple random sampling were used.

Rearranging the formula: `deff=1+(n-1) x rho` ==> `rho=(deff-1)/(n-1)` where
`deff=2.358` and `n=20`, you can get intraclass correlation coefficient
`(rho)=0.071`.

You may use this value of rho in sample size calculations in other similar
surveys in the future. As mentioned earlier, the rho is the proportion of the
total variation in the outcome that is between clusters; this measures the
degree of similarity or correlation between subjects within the same cluster.
The larger the rho-that is the tendency for subjects within a cluster to be
similar-the greater the size of the design effect and the larger the additional
number of subjects required to achieve the same precision.
