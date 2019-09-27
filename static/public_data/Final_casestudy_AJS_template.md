---
title: "AJS outbreak report"
output: 
  word_document:
    keep_md: true
---

# Introduction

This is the final template used in the **sitrep** case study.  

Here we would give an executive summary of the report findings and recommentations. 
     


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This comment will not show up when you knit the document.

A comment with a title with slashes indicates a name of a code chunk.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


## Installing and loading required packages 
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// setup \\\
--------------------------------------------------------------------------------

Several packages are required for different aspects of  analysis with *R*. 
You will need to install these before starting. 

These packages can be quite large and may take a while to download in the
field. If you have access to a USB key with these packages, it makes sense to
copy and paste the packages into your computer's R package library 
(run the command .libPaths() to see the folder path). 

For help installing packages, please visit https://r4epis.netlify.com/welcome
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->






<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// define_current_week \\\
--------------------------------------------------------------------------------

You need to set the week you want to report on. Generally, this is the previous
week. Put it below.

aweek::set_week_start will define the beginning of the week. The standard is
Monday.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// read_fake_data \\\
--------------------------------------------------------------------------------


To play with this template, you can create fake data. Comment out this chunk
when you are using real data.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
You should load your data as a linelist, where each row is one case.

There are two options:
- Your data is from DHIS2: use read_DHIS_excel_data
- Your data is NOT FROM DHIS2 and in Excel, CSV, or Stata format: 
use read_nonDHIS_data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// read_DHIS_data \\\
--------------------------------------------------------------------------------

This section is for data from DHIS2.
It uses the standardized MSF data dictionary.
If you didn't use the standardized data dictionary, go to read_nonDHIS_data.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->





<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// prep_DHIS_data \\\
--------------------------------------------------------------------------------

This section is for data from DHIS2 that you loaded in read_DHIS_data.

If you didn't use DHIS2 data, go to read_nonDHIS_data.

This step shows you the data dictionary. The data dictionary has variable names
in the data_element_shortname column. Possible values for each variable are
specified in code and name columns. Code has the shortened value and Name has
the full-text value.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->





<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// read_nonDHIS_data \\\
--------------------------------------------------------------------------------

This section is for data not from DHIS2.
If you have already loaded data from DHIS2, go to read_population_data.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->





<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// prep_nonDHIS_data \\\
--------------------------------------------------------------------------------

This section is for data not from DHIS2. 
If you have already loaded data from DHIS2, go to read_population_data.

It is more difficult to prepare the nonDHIS data. You can do it! It will just
take a little more work.

Checklist to update this script to match your data:
[ ] Comment out all lines in read_DHIS_data and prep_DHIS_data
[ ] Recode your variable names to match the dictionary
[ ] Recode variable contents to match the dictionary


This step shows you the data dictionary. The data dictionary has variable names
in the data_element_shortname column. Possible values for each variable are
specified in code and name columns. Code has the shortened value and Name has
the full-text value.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->






<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// read_population_data \\\
--------------------------------------------------------------------------------

This template uses population data to calculate things like incidence.

There are three options:
- You can read in a spreadsheet with age group and region data.
- You can put in the specific populations into the gen_population function. 
- If you have the total or regional populations, you can estimate the age group
from proportions.

Comment out the options you are not using.


Age group proportions are from the OCBA population denominators tool v1. The
proportions below are for sub-Saharan Africa in 2019. They are only an estimate!
If you have more specific proportions, you can use them below.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->






<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// lab_data \\\
--------------------------------------------------------------------------------

If you have lab data, you can read it in here.
You will need to make sure that your identifier (e.g. case_number) matches the
linelist.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// browse_data \\\
--------------------------------------------------------------------------------

You'll want to look at your data. Here are a few ways you can explore.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->





<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// remove_unused_data \\\
--------------------------------------------------------------------------------

Your data might have empty rows or columns you want to remove.
You can also use this section to create temporary datasets so you can review
specific variables or rows.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This part of the script will create and clean variables in your data.

All your cleaning and variable creation should happen in these chunks.
That way, in case something goes wrong, you can push the small arrow at the top
of the chunk to re-run all the code chunks up to the current one.

The chunks are:
- standardise_dates -- will set up and clean dates.
- create_age_group  -- creates the age group variables from age
- create_vars       -- creates variables based on other variables
- factor_vars       -- helps clean factor variables
- vector_vars       -- creates groups of variables for easy use


You must adapt this section according to your data!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// standardise_dates \\\
--------------------------------------------------------------------------------

This chunk will help you set up and clean your date variables.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// create_age_group \\\ 
--------------------------------------------------------------------------------

This chunk will help you set up your age group variable.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// create_vars \\\
--------------------------------------------------------------------------------

This chunk will help you construct new variables from other variables. It
includes numeric, factor, and character vectors.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

  


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// factor_vars \\\
--------------------------------------------------------------------------------

This chunk will help you clean factor variables.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// vector_vars \\\
--------------------------------------------------------------------------------

This chunk creates groups of variables that you might want to use together. That
way, if you want to run the same function over these variables, you can run it
all at once. For example, you may want to look at frequency of all symptoms at
the same time.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// report_setup \\\
--------------------------------------------------------------------------------

This chunk removes cases after your reporting week and defines the start and end
of the reporting period.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// save_cleaned_data \\\
--------------------------------------------------------------------------------

You can save your cleaned dataset as an Excel. 
This automatically names your file "linelist_cleaned_DATE", where DATE is the
current date.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->







<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
After adjusting and running the above code, you will have a clean dataset.
This marks the start of the ANALYSIS portion of the template.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->



### Person
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This section focuses on who is affected - total, by sex, by age.
There is code to include:
- A bar chart of case numbers of incidence by age group.
- Attack rate (AR)
- Number of deaths (in suspected and confirmed cases)
- Mortality rates
- Case fatality ratio (CFR)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->



From the start of the outbreak up until 2017-W16 there were a 
total of 1436 cases. There were
717 (49.9%) females and
719 (50.1%) males. 

The most affected age group was 3-14 years. 



#### Demographics 

Cases by age group and definition 
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// describe_by_age_group_and_def \\\
--------------------------------------------------------------------------------

This chunk will create a table of cases by age group and case definition.
You can only use this chunk if you have lab results and have defined a case
definition variable.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

Age group    Confirmed cases (n)       %   Probable cases (n)       %   Suspected cases (n)       %   Missing cases (n)       %   Total
----------  --------------------  ------  -------------------  ------  --------------------  ------  ------------------  ------  ------
0-2                            4     4.0                    0     0.0                    40     5.8                  23     3.7      67
3-14                          30    30.3                    1    16.7                   284    40.9                 320    50.9     635
15-29                         46    46.5                    2    33.3                   246    35.4                 180    28.6     474
30-44                         15    15.2                    2    33.3                    95    13.7                  76    12.1     188
45+                            4     4.0                    1    16.7                    29     4.2                  30     4.8      64
Total                         99   100.0                    6   100.0                   694   100.0                 629   100.0    1428


  
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// total_props_agegroup_sex \\\
--------------------------------------------------------------------------------

You can also show cases by proportion of the total population by sex and age.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Cases by age group and sex 

Age group    F cases (n)      %   M cases (n)      %   Total
----------  ------------  -----  ------------  -----  ------
0-2                   26    1.8            41    2.9      67
3-14                 222   15.5           413   28.9     635
15-29                316   22.1           158   11.1     474
30-44                118    8.3            70    4.9     188
45+                   32    2.2            32    2.2      64
Total                714   50.0           714   50.0    1428

  
Age pyramid 

There were 0 (0.0%) cases missing information on sex and 8 (0.6%) missing age group.



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// age_pyramid \\\
--------------------------------------------------------------------------------

This chunk creates an age/sex pyramid of your cases.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
![](Final_casestudy_AJS_template_files/figure-docx/age_pyramid-1.png)<!-- -->



Of the patients, 691 (48.1%) were seen as outpatients and 86 (6.0%) were inpatients.

Age pyramid for under 2  

![](Final_casestudy_AJS_template_files/figure-docx/age_pyramid_under2-1.png)<!-- -->



Cases by symptoms
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// describe_by_symptoms \\\
--------------------------------------------------------------------------------

This chunk gives the counts and proportions for all of the variables in SYMPTOMS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

variable                       n      %
--------------------------  ----  -----
Fever                        668   84.0
Nausea anorexia              425   53.5
Vomiting                     457   57.6
Epigastric pain heartburn    469   59.2
Generalized itch             512   64.6
Headache                     633   80.0
Joint pains                  240   30.5
Diarrhoea                    112   14.2
Bleeding                      52    6.6



Cases by lab results 
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// describe_by_labs \\\
--------------------------------------------------------------------------------


This chunk gives the counts and proportions for all of the variables in LABS.
If you do not have lab results, comment out this chunk.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

Lab test                             Negative (n)       %   Positive (n)       %   IgG-/IgM- (n)      %   IgG-/IgM+ (n)      %   IgG+/IgM- (n)      %   IgG+/IgM+ (n)      %   IgG±/IgM- (n)     %
----------------------------------  -------------  ------  -------------  ------  --------------  -----  --------------  -----  --------------  -----  --------------  -----  --------------  ----
Hep b rdt                                     222    91.7             20     8.3               -      -               -      -               -      -               -      -               -     -
Hep c rdt                                     239    99.2              2     0.8               -      -               -      -               -      -               -      -               -     -
Hep e rdt                                     149    59.8            100    40.2               -      -               -      -               -      -               -      -               -     -
Test hepatitis a                               23   100.0              -       -               -      -               -      -               -      -               -      -               -     -
Test hepatitis b                               22    95.7              1     4.3               -      -               -      -               -      -               -      -               -     -
Test hepatitis c                               23   100.0              -       -               -      -               -      -               -      -               -      -               -     -
Test hepatitis e igm                           21    33.9             41    66.1               -      -               -      -               -      -               -      -               -     -
Test hepatitis e genotype                       -       -              2   100.0               -      -               -      -               -      -               -      -               -     -
Test hepatitis e virus                          7    11.3              1     1.6               9   14.5              14   22.6               5    8.1              26   41.9               -     -
Malaria rdt at admission                      160    63.5             92    36.5               -      -               -      -               -      -               -      -               -     -
Dengue                                          -       -              -       -              12   52.2               -      -              10   43.5               -      -               1   4.3
Yellow fever                                    -       -              -       -              18   78.3               -      -               5   21.7               -      -               -     -
Chikungunya onyongnyong                         -       -              -       -              20   87.0               -      -               3   13.0               -      -               -     -
Other arthropod transmitted virus              23   100.0              -       -               -      -               -      -               -      -               -      -               -     -




#### Case fatality ratio 

Of 86 (6.0%) inpatients, there have been 13 (0.9%) deaths, of which 
0 (0.0%) 
were dead on arrival. 

 
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// describe_time_to_death \\\
--------------------------------------------------------------------------------

If you have the time_to_death available, you can use this chunk to describe when
inpatients died. If not, comment it out.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




The case fatality ratio among inpatients with known outcomes is below.
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// overall_cfr \\\
--------------------------------------------------------------------------------

This chunk gives the case fatality ratio among inpatients with outcomes.
If you have no deaths reported, the table will not be useful.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

 Deaths   Cases   CFR (%)  95%CI         
-------  ------  --------  --------------
     13      86      15.1  (9.05--24.16) 


The case fatality ratio by sex among inpatients with known outcomes is below. 
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// cfr_by_sex \\\
--------------------------------------------------------------------------------

This chunk gives the case fatality ratio among inpatients with outcomes, divided
by sex. If you have no deaths reported, the table will not be useful.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

Sex      Deaths   Cases   CFR (%)  95%CI          
------  -------  ------  --------  ---------------
F            11      55      20.0  (11.55--32.36) 
M             2      31       6.5  (1.79--20.72)  
Total        13      86      15.1  (9.05--24.16)  



CFR by age group among inpatients with known outcomes
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// cfr_by_age_group \\\
--------------------------------------------------------------------------------

This chunk gives the case fatality ratio among inpatients with outcomes, divided
by age group. If you have no deaths reported, the table will not be useful.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

Age group    Deaths   Cases   CFR (%)  95%CI          
----------  -------  ------  --------  ---------------
0-2               4      11      36.4  (15.17--64.62) 
3-14              1      17       5.9  (1.05--26.98)  
15-29             5      36      13.9  (6.08--28.66)  
30-44             2      17      11.8  (3.29--34.34)  
45+               1       4      25.0  (4.56--69.94)  
(Missing)         0       1       0.0  (0.00--79.35)  
Total            13      86      15.1  (9.05--24.16)  


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// cfr_by_case_def \\\
--------------------------------------------------------------------------------

This chunk gives the case fatality ratio among inpatients with outcomes, divided
by case definition. You must have lab results or a case definition defined to
use this. If you have no deaths, the table will not be useful.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

Case definition    Deaths   Cases   CFR (%)  95%CI         
----------------  -------  ------  --------  --------------
Confirmed               8      44      18.2  (9.51--31.96) 
Suspected               5      42      11.9  (5.19--25.00) 
Total                  13      86      15.1  (9.05--24.16) 



#### Attack rate

The attack rate per 10,000 population is below (based on available population data available for the catchment area/region of interest). 



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// collect_variables \\\
--------------------------------------------------------------------------------

This defines your population by summing up the population by age group.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




Below gives the attack rate per 10,000 population (N = 62,336)

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
///attack_rate \\\
--------------------------------------------------------------------------------

This chunk calculates the attack rate and then shows you the confidence
intervals.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

 Cases (n)   AR (per 10,000)              95%CI
----------  ----------------  -----------------
      1436             230.4   (218.88--242.44)

Here, we can see that the attack rate for a population of 62,336 was 230.36 (CI 218.88--242.44).


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// attack_rate_by_agegroup \\\
--------------------------------------------------------------------------------

This chunk calculates the attack rate by age group and then gives a table of
attack rate by group.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->





<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#### Mortality attributable to AJS
This section can only be used if you are in a closed population (eg refugee camp).
The assumptions don't hold in an open/community setting.

This chunk calculates the attack rate by age group and then gives a table of
attack rate by group.

This section gives mortality rates attributable to AJS in a closed population. 
It does not calculate all-cause mortality. It assumes that all AJS deaths are 
among inpatients.

This demonstrates three ways of calculating mortality rate based on 
catchment population (twice) and based on hospital population. 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// collect_variables_rates \\\
--------------------------------------------------------------------------------

This chunk calculates key variables to do mortality rate.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// mortality_rate \\\
--------------------------------------------------------------------------------

To produce a mortality rate (attribuatble to AJS) per 10,000 people use the
following code chunk. This assumes that you are capturing every AJS death in
your population.
Mortality rate attributable to AJS per 10,000 population
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->





<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// mortality_rate_CMR \\\
--------------------------------------------------------------------------------

To produce a crude mortality rate attributable to AJS per 10,000 people per 
day, use the folowing code chunk. 

This assumes that you are capturing every AJS death in your population and 
that your population remains stable over the time period of interest. 

In this situation the time period of interest is from the beginning of the 
epiweek your first case occured in, until the last day of the epiweek you are 
currently reporting on. (see this presentation (https://www.odi.org/sites/odi.org.uk/files/odi-assets/events-presentations/776.pdf) for more detail)

Crude mortality rate attributable to AJS per 10,000 population per day
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->






<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// mortality_rate_patients \\\
--------------------------------------------------------------------------------

Alternatively, if you are unsure whether your hospital deaths are
representative of the wider population, use the following code chunk. 
This uses the person days of cases in your linelist with a known outcome. 
However, this will give you an unreasonably high mortality rate, as 
those in hospital will only be the most severely affected. ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Mortality rate attributable to AJS per 10,000 patients per day








### Time
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This section focuses on the when of the outbreak:
- When did cases fall ill?
- Are numbers increasing or decreasing?

There is code to include an epi curve.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

There were 825 (57.5%) cases missing dates of onset.

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// epicurve \\\
--------------------------------------------------------------------------------

# This chunk will calculate weekly incidence and plot your epicurve.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
![](Final_casestudy_AJS_template_files/figure-docx/epicurve-1.png)<!-- -->

The peak of the outbreak was in 2017-W06



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// biweekly_epicurve \\\
--------------------------------------------------------------------------------

If needed, you can plot a biweekly epicurve. You can also do this by month,
quarter, or year. You can change the start of your week as needed.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

![](Final_casestudy_AJS_template_files/figure-docx/biweekly_epicurve-1.png)<!-- -->



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// incidence_by_gender \\\
--------------------------------------------------------------------------------

You can plot weekly incidence by gender using this chunk.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

![](Final_casestudy_AJS_template_files/figure-docx/incidence_by_gender-1.png)<!-- -->



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// incidence_by_case_def \\\
--------------------------------------------------------------------------------

This chunk shows the weekly incidence by case definition. You must have a
defined case definition variable.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
![](Final_casestudy_AJS_template_files/figure-docx/incidence_by_case_def-1.png)<!-- -->



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// incidence_by_water_source \\\
--------------------------------------------------------------------------------

You can similarly stratify your incidence by water source (or any other
categorical variable!).
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->





<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// incidence_by_sex_facility \\\
--------------------------------------------------------------------------------

This chunk limits the data to only inpatients, then stratifies by sex.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Cases by week of onset among inpatients by sex 

![](Final_casestudy_AJS_template_files/figure-docx/incidence_by_sex_facility-1.png)<!-- -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// attack_rate_per_week \\\
--------------------------------------------------------------------------------

This chunk creates a table of attack rate by week
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Attack rate per 10,000 population by week 


  Epiweek   Cases (n)   Population   AR (per 10,000)              95%CI
---------  ----------  -----------  ----------------  -----------------
 2016-W23           1        62336               0.2       (0.03--0.91)
 2016-W24           0        62336               0.0       (0.00--0.62)
 2016-W25           0        62336               0.0       (0.00--0.62)
 2016-W26           0        62336               0.0       (0.00--0.62)
 2016-W27           0        62336               0.0       (0.00--0.62)
 2016-W28           0        62336               0.0       (0.00--0.62)
 2016-W29           1        62336               0.2       (0.03--0.91)
 2016-W30           2        62336               0.3       (0.09--1.17)
 2016-W31           0        62336               0.0       (0.00--0.62)
 2016-W32           0        62336               0.0       (0.00--0.62)
 2016-W33           3        62336               0.5       (0.16--1.42)
 2016-W34           7        62336               1.1       (0.54--2.32)
 2016-W35           1        62336               0.2       (0.03--0.91)
 2016-W36           2        62336               0.3       (0.09--1.17)
 2016-W37          17        62336               2.7       (1.70--4.37)
 2016-W38          12        62336               1.9       (1.10--3.36)
 2016-W39           9        62336               1.4       (0.76--2.74)
 2016-W40          10        62336               1.6       (0.87--2.95)
 2016-W41           3        62336               0.5       (0.16--1.42)
 2016-W42           5        62336               0.8       (0.34--1.88)
 2016-W43           5        62336               0.8       (0.34--1.88)
 2016-W44           3        62336               0.5       (0.16--1.42)
 2016-W45           5        62336               0.8       (0.34--1.88)
 2016-W46          12        62336               1.9       (1.10--3.36)
 2016-W47          13        62336               2.1       (1.22--3.57)
 2016-W48          23        62336               3.7       (2.46--5.54)
 2016-W49          19        62336               3.0       (1.95--4.76)
 2016-W50          35        62336               5.6       (4.04--7.81)
 2016-W51          22        62336               3.5       (2.33--5.34)
 2016-W52          31        62336               5.0       (3.50--7.06)
 2017-W01          16        62336               2.6       (1.58--4.17)
 2017-W02          22        62336               3.5       (2.33--5.34)
 2017-W03          14        62336               2.2       (1.34--3.77)
 2017-W04          20        62336               3.2       (2.08--4.96)
 2017-W05          16        62336               2.6       (1.58--4.17)
 2017-W06         118        62336              18.9     (15.81--22.66)
 2017-W07          20        62336               3.2       (2.08--4.96)
 2017-W08          41        62336               6.6       (4.85--8.92)
 2017-W09          15        62336               2.4       (1.46--3.97)
 2017-W10          39        62336               6.3       (4.58--8.55)
 2017-W11           8        62336               1.3       (0.65--2.53)
 2017-W12          14        62336               2.2       (1.34--3.77)
 2017-W13           8        62336               1.3       (0.65--2.53)
 2017-W14          11        62336               1.8       (0.99--3.16)
 2017-W15           3        62336               0.5       (0.16--1.42)
 2017-W16           5        62336               0.8       (0.34--1.88)
        -         825        62336             132.3   (123.67--141.62)
 


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// cumulative_attack_rate_per_week \\\
--------------------------------------------------------------------------------

This chunk calculates the cumulative attack rate per week.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Cumulative attack rate per 10,000 population per week


  Epiweek   Cases (n)   Population   AR (per 10,000)              95%CI
---------  ----------  -----------  ----------------  -----------------
 2016-W23           1        62336               0.2       (0.03--0.91)
 2016-W24           1        62336               0.2       (0.03--0.91)
 2016-W25           1        62336               0.2       (0.03--0.91)
 2016-W26           1        62336               0.2       (0.03--0.91)
 2016-W27           1        62336               0.2       (0.03--0.91)
 2016-W28           1        62336               0.2       (0.03--0.91)
 2016-W29           2        62336               0.3       (0.09--1.17)
 2016-W30           4        62336               0.6       (0.25--1.65)
 2016-W31           4        62336               0.6       (0.25--1.65)
 2016-W32           4        62336               0.6       (0.25--1.65)
 2016-W33           7        62336               1.1       (0.54--2.32)
 2016-W34          14        62336               2.2       (1.34--3.77)
 2016-W35          15        62336               2.4       (1.46--3.97)
 2016-W36          17        62336               2.7       (1.70--4.37)
 2016-W37          34        62336               5.5       (3.90--7.62)
 2016-W38          46        62336               7.4       (5.53--9.84)
 2016-W39          55        62336               8.8      (6.78--11.48)
 2016-W40          65        62336              10.4      (8.18--13.29)
 2016-W41          68        62336              10.9      (8.61--13.83)
 2016-W42          73        62336              11.7      (9.32--14.72)
 2016-W43          78        62336              12.5     (10.03--15.61)
 2016-W44          81        62336              13.0     (10.46--16.15)
 2016-W45          86        62336              13.8     (11.17--17.03)
 2016-W46          98        62336              15.7     (12.90--19.15)
 2016-W47         111        62336              17.8     (14.79--21.44)
 2016-W48         134        62336              21.5     (18.15--25.45)
 2016-W49         153        62336              24.5     (20.95--28.75)
 2016-W50         188        62336              30.2     (26.15--34.78)
 2016-W51         210        62336              33.7     (29.44--38.55)
 2016-W52         241        62336              38.7     (34.09--43.85)
 2017-W01         257        62336              41.2     (36.49--46.57)
 2017-W02         279        62336              44.8     (39.81--50.31)
 2017-W03         293        62336              47.0     (41.93--52.69)
 2017-W04         313        62336              50.2     (44.96--56.07)
 2017-W05         329        62336              52.8     (47.39--58.78)
 2017-W06         447        62336              71.7     (65.38--78.64)
 2017-W07         467        62336              74.9     (68.44--82.00)
 2017-W08         508        62336              81.5     (74.73--88.86)
 2017-W09         523        62336              83.9     (77.04--91.37)
 2017-W10         562        62336              90.2     (83.03--97.89)
 2017-W11         570        62336              91.4     (84.26--99.22)
 2017-W12         584        62336              93.7    (86.42--101.56)
 2017-W13         592        62336              95.0    (87.65--102.89)
 2017-W14         603        62336              96.7    (89.35--104.73)
 2017-W15         606        62336              97.2    (89.81--105.23)
 2017-W16         611        62336              98.0    (90.58--106.06)
        -        1436        62336             230.4   (218.88--242.44)



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// cumulative_attack_rate_per_week \\\
--------------------------------------------------------------------------------

This chunk calculates the CFR among inpatients as a proportion per week.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Case fatality ratio as a proportion among inpatients by week


   Epiweek   Deaths   Cases   CFR (%)           95%CI
----------  -------  ------  --------  --------------
  2016-W23        0       0         -      (NaN--NaN)
  2016-W24        0       0         -      (NaN--NaN)
  2016-W25        0       0         -      (NaN--NaN)
  2016-W26        0       0         -      (NaN--NaN)
  2016-W27        0       0         -      (NaN--NaN)
  2016-W28        0       0         -      (NaN--NaN)
  2016-W29        0       0         -      (NaN--NaN)
  2016-W30        0       1         0   (0.00--79.35)
  2016-W31        0       0         -      (NaN--NaN)
  2016-W32        0       0         -      (NaN--NaN)
  2016-W33        0       1         0   (0.00--79.35)
  2016-W34        0       0         -      (NaN--NaN)
  2016-W35        0       0         -      (NaN--NaN)
  2016-W36        0       0         -      (NaN--NaN)
  2016-W37        0       4         0   (0.00--48.99)
  2016-W38        0       3         0   (0.00--56.15)
  2016-W39        0       2         0   (0.00--65.76)
  2016-W40        0       5         0   (0.00--43.45)
  2016-W41        0       1         0   (0.00--79.35)
  2016-W42        0       5         0   (0.00--43.45)
  2016-W43        0       1         0   (0.00--79.35)
  2016-W44        0       1         0   (0.00--79.35)
  2016-W45        0       3         0   (0.00--56.15)
  2016-W46        0       4         0   (0.00--48.99)
  2016-W47        0       1         0   (0.00--79.35)
  2016-W48        0       1         0   (0.00--79.35)
  2016-W49        0       0         -      (NaN--NaN)
  2016-W50        0       1         0   (0.00--79.35)
  2016-W51        0       1         0   (0.00--79.35)
  2016-W52        0       2         0   (0.00--65.76)
  2017-W01        0       2         0   (0.00--65.76)
  2017-W02        0       1         0   (0.00--79.35)
  2017-W03        0       2         0   (0.00--65.76)
  2017-W04        0       4         0   (0.00--48.99)
  2017-W05        0       1         0   (0.00--79.35)
  2017-W06        0       5         0   (0.00--43.45)
  2017-W07        0       1         0   (0.00--79.35)
  2017-W08        0       1         0   (0.00--79.35)
  2017-W09        0       1         0   (0.00--79.35)
  2017-W10        0       1         0   (0.00--79.35)
  2017-W11        0       0         -      (NaN--NaN)
  2017-W12        0       0         -      (NaN--NaN)
  2017-W13        0       2         0   (0.00--65.76)
  2017-W14        0       1         0   (0.00--79.35)
  2017-W15        0       0         -      (NaN--NaN)
  2017-W16        0       0         -      (NaN--NaN)
 (Missing)        0      27         0   (0.00--12.46)



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
You could plot the AR (in the population) and CFR (among inpatients only)
together with the epicurve by epiweek.

We will do this in three steps: 
- creating the AR graph (ar_line_graph)
- creating the CFR graph (cfr_line_graph)
- combining and plotting 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// ar_line_graph \\\
--------------------------------------------------------------------------------

This chunk sets up the AR graph. (It does not print the graph automatically.)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// cfr_line_graph \\\
--------------------------------------------------------------------------------

This chunk sets up the CFR graph. (It does not print the graph automatically.)
If you do not have any deaths in your data set, this will not show anything.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// epicurve_ar_cfr \\\
--------------------------------------------------------------------------------

This chunk prints the AR and CFR with the epicurve.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

```
## Error in stop_if_not_aweek_string(x): aweek strings must match the pattern 'YYYY-Www-d'. The first incorrect string was: '(Missing)'
```



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// describe_admissions_by_epiweek \\\
--------------------------------------------------------------------------------

This chunk creates a table showing inpatient admissions by  case definition 
and epiweek.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Inpatient admissions by case definition and week  


value       Confirmed (n)       %   Suspected (n)       %   Total
---------  --------------  ------  --------------  ------  ------
2016-W30                1     3.0               0     0.0       1
2016-W33                0     0.0               1     3.8       1
2016-W37                2     6.1               2     7.7       4
2016-W38                1     3.0               2     7.7       3
2016-W39                1     3.0               1     3.8       2
2016-W40                4    12.1               1     3.8       5
2016-W41                1     3.0               0     0.0       1
2016-W42                2     6.1               3    11.5       5
2016-W43                1     3.0               0     0.0       1
2016-W44                0     0.0               1     3.8       1
2016-W45                2     6.1               1     3.8       3
2016-W46                2     6.1               2     7.7       4
2016-W47                0     0.0               1     3.8       1
2016-W48                1     3.0               0     0.0       1
2016-W50                1     3.0               0     0.0       1
2016-W51                0     0.0               1     3.8       1
2016-W52                2     6.1               0     0.0       2
2017-W01                2     6.1               0     0.0       2
2017-W02                0     0.0               1     3.8       1
2017-W03                0     0.0               2     7.7       2
2017-W04                3     9.1               1     3.8       4
2017-W05                1     3.0               0     0.0       1
2017-W06                4    12.1               1     3.8       5
2017-W07                1     3.0               0     0.0       1
2017-W08                0     0.0               1     3.8       1
2017-W09                0     0.0               1     3.8       1
2017-W10                0     0.0               1     3.8       1
2017-W13                1     3.0               1     3.8       2
2017-W14                0     0.0               1     3.8       1
Total                  33   100.0              26   100.0      59



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// describe_admissions_by_epiweek \\\
--------------------------------------------------------------------------------

This chunk creates a table showing inpatient exits by type per epiweek.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Inpatient discharges by reason for exit and week 


Week        Dead (n)       %   Discharged (n)       %   Left (n)     %   Missing (n)       %   Total
---------  ---------  ------  ---------------  ------  ---------  ----  ------------  ------  ------
2016-W30           0     0.0                0     0.0          0     0             1     7.1       1
2016-W33           0     0.0                1     2.9          0     0             0     0.0       1
2016-W37           0     0.0                2     5.7          0     0             2    14.3       4
2016-W38           1    12.5                2     5.7          0     0             0     0.0       3
2016-W39           0     0.0                2     5.7          0     0             0     0.0       2
2016-W40           1    12.5                4    11.4          0     0             0     0.0       5
2016-W41           0     0.0                0     0.0          1    50             0     0.0       1
2016-W42           2    25.0                1     2.9          0     0             2    14.3       5
2016-W43           0     0.0                0     0.0          0     0             1     7.1       1
2016-W44           0     0.0                0     0.0          0     0             1     7.1       1
2016-W45           2    25.0                0     0.0          0     0             1     7.1       3
2016-W46           0     0.0                3     8.6          0     0             1     7.1       4
2016-W47           0     0.0                0     0.0          0     0             1     7.1       1
2016-W48           0     0.0                0     0.0          0     0             1     7.1       1
2016-W50           0     0.0                1     2.9          0     0             0     0.0       1
2016-W51           0     0.0                0     0.0          0     0             1     7.1       1
2016-W52           1    12.5                0     0.0          0     0             1     7.1       2
2017-W01           0     0.0                1     2.9          1    50             0     0.0       2
2017-W02           0     0.0                1     2.9          0     0             0     0.0       1
2017-W03           0     0.0                2     5.7          0     0             0     0.0       2
2017-W04           0     0.0                4    11.4          0     0             0     0.0       4
2017-W05           0     0.0                0     0.0          0     0             1     7.1       1
2017-W06           0     0.0                5    14.3          0     0             0     0.0       5
2017-W07           1    12.5                0     0.0          0     0             0     0.0       1
2017-W08           0     0.0                1     2.9          0     0             0     0.0       1
2017-W09           0     0.0                1     2.9          0     0             0     0.0       1
2017-W10           0     0.0                1     2.9          0     0             0     0.0       1
2017-W13           0     0.0                2     5.7          0     0             0     0.0       2
2017-W14           0     0.0                1     2.9          0     0             0     0.0       1
Total              8   100.0               35   100.0          2   100            14   100.0      59






### Place 
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This section focuses on the where of the outbreak: what area is affected, how
many villages, and so on.

There is code to include maps based on distribution of cases. You must have a
shapefile to create this map.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


#### Descriptive



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// describe_by_region_facility \\\
--------------------------------------------------------------------------------

This chunk creates a basic table of the number and percent of cases by region
and by facility. If you only have one facility, you can remove the strata.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Cases by region and facility type


Region              Inpatient (n)       %   Outpatient (n)       %   Missing (n)       %   Total
-----------------  --------------  ------  ---------------  ------  ------------  ------  ------
AB GARA                         0     0.0                0     0.0             1     0.2       1
ABLELAYE                        5     6.0                1     0.1             2     0.3       8
ABOUDEA                         1     1.2                0     0.0             0     0.0       1
ADAMRE                          2     2.4               22     3.2            24     3.7      48
ADJABONA                        0     0.0                0     0.0             2     0.3       2
AFFOUSSE                        1     1.2                1     0.1             0     0.0       2
AL-FRECHE                       1     1.2                0     0.0             0     0.0       1
AL-HOUGNA                       1     1.2               10     1.5            10     1.5      21
AL-MOURA                        1     1.2                0     0.0             0     0.0       1
AL ALAK                         0     0.0                1     0.1             0     0.0       1
AL HOUA                         0     0.0                0     0.0             1     0.2       1
AL KOUCK                        0     0.0                1     0.1             0     0.0       1
AL MIDODIL                      1     1.2                0     0.0             0     0.0       1
ALBAYADI                        1     1.2                1     0.1             0     0.0       2
ALBOUKHASS                      0     0.0                6     0.9             6     0.9      12
ALKASSÉ                         4     4.8               15     2.2             5     0.8      24
AM-DOUMA                        0     0.0                1     0.1             0     0.0       1
AM ASSALA                       0     0.0                1     0.1             0     0.0       1
AM BADARO 1                     0     0.0                1     0.1             0     0.0       1
AM KIFEO                        1     1.2                0     0.0             0     0.0       1
AMANASISSE                      0     0.0                1     0.1             0     0.0       1
AMBARITE                        0     0.0                3     0.4             1     0.2       4
AMCHOKA                         1     1.2                0     0.0             0     0.0       1
AMDIREDIMAT                     1     1.2                0     0.0             0     0.0       1
AMDJALAT                        0     0.0                2     0.3             2     0.3       4
AMMANASIS                       0     0.0                0     0.0             2     0.3       2
AMSINENE                        3     3.6                5     0.7             5     0.8      13
ANALA                           2     2.4                2     0.3             4     0.6       8
ANFANDOCK                       5     6.0               26     3.8            19     2.9      50
ANGUITEI                        0     0.0                0     0.0             1     0.2       1
ANGUITEYE                       0     0.0                0     0.0             1     0.2       1
ARDO                            3     3.6                2     0.3             0     0.0       5
ATETAL                          0     0.0                0     0.0             1     0.2       1
ATOUA                           1     1.2                1     0.1             0     0.0       2
BADINA                          0     0.0                1     0.1             0     0.0       1
BANDJADID                       0     0.0                1     0.1             0     0.0       1
BAUNE                           1     1.2                0     0.0             0     0.0       1
BIR TAGAL                       0     0.0                1     0.1             0     0.0       1
BRANO                           0     0.0                1     0.1             0     0.0       1
CHATAU                          0     0.0                0     0.0             1     0.2       1
COMMERCANT                      0     0.0                3     0.4            15     2.3      18
COUBO ABNIMIR                   0     0.0                1     0.1             0     0.0       1
DARASALAM                       0     0.0               26     3.8            25     3.8      51
DARWAL                          1     1.2                0     0.0             0     0.0       1
DELEBAE                         1     1.2                1     0.1             0     0.0       2
DIFFIR                          2     2.4                2     0.3             0     0.0       4
DIJEKHINÉ                       1     1.2                0     0.0             0     0.0       1
DILEMA                          3     3.6               22     3.2            18     2.8      43
DINGUESS                        2     2.4                2     0.3             3     0.5       7
DJAMBALBAHAR                    0     0.0                9     1.3             6     0.9      15
DJOGO                           0     0.0                1     0.1             0     0.0       1
GANATIR                         5     6.0              113    16.5           102    15.6     220
GANATIR 1                       0     0.0                2     0.3             7     1.1       9
GANATIR 2                       0     0.0                7     1.0             5     0.8      12
GARDOLE                         0     0.0                1     0.1             2     0.3       3
GOURMOUDAY                      0     0.0                2     0.3             1     0.2       3
GOZ-TAMADJA                     1     1.2                2     0.3             0     0.0       3
GOZ DJARAT                      1     1.2                0     0.0             0     0.0       1
GOZ MABILE                      1     1.2                7     1.0            11     1.7      19
GOZ MABILE 2                    1     1.2                5     0.7             8     1.2      14
GRÉDAÏ                          0     0.0                1     0.1             0     0.0       1
HABILÉ                          0     0.0                1     0.1             0     0.0       1
HARAZA                          1     1.2                0     0.0             0     0.0       1
HILE BARA                       2     2.4               13     1.9             5     0.8      20
HILE ODAA                       0     0.0                2     0.3             0     0.0       2
HIMEDA                          0     0.0                1     0.1             0     0.0       1
IDETER                          0     0.0                1     0.1             0     0.0       1
KACHKACHA                       3     3.6                1     0.1             2     0.3       6
KOUBO AMNIMIRE                  0     0.0                0     0.0             3     0.5       3
MABROUKA                        0     0.0                0     0.0             1     0.2       1
MATAR                           0     0.0                2     0.3             2     0.3       4
MINA                            2     2.4                3     0.4             8     1.2      13
MIRÉKIKE                        1     1.2                0     0.0             0     0.0       1
MIRER                           1     1.2                0     0.0             0     0.0       1
MOURAY                          0     0.0                1     0.1             0     0.0       1
NOUGRA KARO                     0     0.0                1     0.1             0     0.0       1
OUM-ALKHOURA                    0     0.0                0     0.0             2     0.3       2
PEDIS                           0     0.0                1     0.1             0     0.0       1
RASSAFIL CHATEAU                0     0.0                0     0.0             1     0.2       1
RASSALFIL                       3     3.6                6     0.9             2     0.3      11
RIAD                            3     3.6               37     5.4            47     7.2      87
RIDINA                          0     0.0               72    10.5            75    11.5     147
RIDINA 1                        0     0.0                2     0.3             9     1.4      11
RIDINA 2                        0     0.0                5     0.7            19     2.9      24
RIMELIE                         0     0.0                1     0.1             0     0.0       1
SALAMAT                         2     2.4               22     3.2            23     3.5      47
SIHEBA                          1     1.2                0     0.0             0     0.0       1
TARADONA                        2     2.4              136    19.9            97    14.9     235
TARADONA 1                      1     1.2               14     2.0            19     2.9      34
TARADONA 2                      5     6.0               39     5.7            19     2.9      63
TARADONA 3                      1     1.2                6     0.9            26     4.0      33
ZONGO                           0     0.0                3     0.4             1     0.2       4
Total                          83   100.0              684   100.0           652   100.0    1419

  

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// describe_by_region_outcome \\\
--------------------------------------------------------------------------------

This chunk creates a basic table of the outcomes among inpatients by region.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Inpatient discharges by reason for exit and region 


Region          Dead (n)       %   Discharged (n)       %   Left (n)     %   Missing (n)       %   Total
-------------  ---------  ------  ---------------  ------  ---------  ----  ------------  ------  ------
ABLELAYE               1     7.7                4     7.8          0     0             0     0.0       5
ABOUDEA                0     0.0                1     2.0          0     0             0     0.0       1
ADAMRE                 0     0.0                0     0.0          1    50             1     5.9       2
AFFOUSSE               0     0.0                1     2.0          0     0             0     0.0       1
AL-FRECHE              0     0.0                1     2.0          0     0             0     0.0       1
AL-HOUGNA              1     7.7                0     0.0          0     0             0     0.0       1
AL-MOURA               0     0.0                1     2.0          0     0             0     0.0       1
AL MIDODIL             0     0.0                1     2.0          0     0             0     0.0       1
ALBAYADI               0     0.0                1     2.0          0     0             0     0.0       1
ALKASSÉ                0     0.0                4     7.8          0     0             0     0.0       4
AM KIFEO               0     0.0                1     2.0          0     0             0     0.0       1
AMCHOKA                0     0.0                1     2.0          0     0             0     0.0       1
AMDIREDIMAT            0     0.0                1     2.0          0     0             0     0.0       1
AMSINENE               1     7.7                0     0.0          0     0             2    11.8       3
ANALA                  0     0.0                0     0.0          1    50             1     5.9       2
ANFANDOCK              1     7.7                4     7.8          0     0             0     0.0       5
ARDO                   0     0.0                2     3.9          0     0             1     5.9       3
ATOUA                  0     0.0                1     2.0          0     0             0     0.0       1
BAUNE                  0     0.0                1     2.0          0     0             0     0.0       1
DARWAL                 0     0.0                1     2.0          0     0             0     0.0       1
DELEBAE                1     7.7                0     0.0          0     0             0     0.0       1
DIFFIR                 0     0.0                2     3.9          0     0             0     0.0       2
DIJEKHINÉ              0     0.0                1     2.0          0     0             0     0.0       1
DILEMA                 0     0.0                2     3.9          0     0             1     5.9       3
DINGUESS               1     7.7                1     2.0          0     0             0     0.0       2
GANATIR                0     0.0                4     7.8          0     0             1     5.9       5
GOZ-TAMADJA            0     0.0                0     0.0          0     0             1     5.9       1
GOZ DJARAT             0     0.0                0     0.0          0     0             1     5.9       1
GOZ MABILE             1     7.7                0     0.0          0     0             0     0.0       1
GOZ MABILE 2           0     0.0                0     0.0          0     0             1     5.9       1
HARAZA                 1     7.7                0     0.0          0     0             0     0.0       1
HILE BARA              0     0.0                2     3.9          0     0             0     0.0       2
KACHKACHA              2    15.4                1     2.0          0     0             0     0.0       3
MINA                   1     7.7                1     2.0          0     0             0     0.0       2
MIRÉKIKE               0     0.0                1     2.0          0     0             0     0.0       1
MIRER                  0     0.0                1     2.0          0     0             0     0.0       1
RASSALFIL              0     0.0                3     5.9          0     0             0     0.0       3
RIAD                   1     7.7                1     2.0          0     0             1     5.9       3
SALAMAT                0     0.0                2     3.9          0     0             0     0.0       2
SIHEBA                 0     0.0                1     2.0          0     0             0     0.0       1
TARADONA               0     0.0                1     2.0          0     0             1     5.9       2
TARADONA 1             0     0.0                0     0.0          0     0             1     5.9       1
TARADONA 2             1     7.7                1     2.0          0     0             3    17.6       5
TARADONA 3             0     0.0                0     0.0          0     0             1     5.9       1
Total                 13   100.0               51   100.0          2   100            17   100.0      83



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// attack_rate_by_region \\\
--------------------------------------------------------------------------------

If you do not have a shapefile, you may want to calculate attack rates by
region.

Consider facet wrapping by a larger unit if you have many regions (eg if you
have patients from 10+ villages, you may want to show your tables by health
zone)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Attack rage per 10,000 population by region 


           Region   Cases (n)   Population   AR (per 10,000)              95%CI
-----------------  ----------  -----------  ----------------  -----------------
                -          17            -                 -           (NA--NA)
          AB GARA           1            -                 -           (NA--NA)
         ABLELAYE           8            -                 -           (NA--NA)
          ABOUDEA           1            -                 -           (NA--NA)
           ADAMRE          48            -                 -           (NA--NA)
         ADJABONA           2        2,350               8.5      (2.33--30.98)
         AFFOUSSE           2            -                 -           (NA--NA)
        AL-FRECHE           1            -                 -           (NA--NA)
        AL-HOUGNA          21            -                 -           (NA--NA)
         AL-MOURA           1            -                 -           (NA--NA)
          AL ALAK           1            -                 -           (NA--NA)
          AL HOUA           1            -                 -           (NA--NA)
         AL KOUCK           1            -                 -           (NA--NA)
       AL MIDODIL           1            -                 -           (NA--NA)
         ALBAYADI           2            -                 -           (NA--NA)
       ALBOUKHASS          12            -                 -           (NA--NA)
          ALKASSÉ          24            -                 -           (NA--NA)
         AM-DOUMA           1            -                 -           (NA--NA)
        AM ASSALA           1            -                 -           (NA--NA)
      AM BADARO 1           1            -                 -           (NA--NA)
         AM KIFEO           1            -                 -           (NA--NA)
       AMANASISSE           1            -                 -           (NA--NA)
         AMBARITE           4            -                 -           (NA--NA)
          AMCHOKA           1            -                 -           (NA--NA)
      AMDIREDIMAT           1            -                 -           (NA--NA)
         AMDJALAT           4            -                 -           (NA--NA)
        AMMANASIS           2            -                 -           (NA--NA)
         AMSINENE          13            -                 -           (NA--NA)
            ANALA           8            -                 -           (NA--NA)
        ANFANDOCK          50            -                 -           (NA--NA)
         ANGUITEI           1            -                 -           (NA--NA)
        ANGUITEYE           1            -                 -           (NA--NA)
             ARDO           5            -                 -           (NA--NA)
           ATETAL           1            -                 -           (NA--NA)
            ATOUA           2            -                 -           (NA--NA)
           BADINA           1            -                 -           (NA--NA)
        BANDJADID           1            -                 -           (NA--NA)
            BAUNE           1            -                 -           (NA--NA)
        BIR TAGAL           1            -                 -           (NA--NA)
            BRANO           1            -                 -           (NA--NA)
           CHATAU           1            -                 -           (NA--NA)
       COMMERCANT          18            -                 -           (NA--NA)
    COUBO ABNIMIR           1            -                 -           (NA--NA)
        DARASALAM          51            -                 -           (NA--NA)
           DARWAL           1            -                 -           (NA--NA)
          DELEBAE           2            -                 -           (NA--NA)
           DIFFIR           4            -                 -           (NA--NA)
        DIJEKHINÉ           1            -                 -           (NA--NA)
           DILEMA          43            -                 -           (NA--NA)
         DINGUESS           7        2,268              30.9     (14.96--63.57)
     DJAMBALBAHAR          15            -                 -           (NA--NA)
            DJOGO           1            -                 -           (NA--NA)
          GANATIR         220            -                 -           (NA--NA)
        GANATIR 1           9            -                 -           (NA--NA)
        GANATIR 2          12            -                 -           (NA--NA)
          GARDOLE           3        2,286              13.1      (4.46--38.51)
       GOURMOUDAY           3            -                 -           (NA--NA)
      GOZ-TAMADJA           3            -                 -           (NA--NA)
       GOZ DJARAT           1            -                 -           (NA--NA)
       GOZ MABILE          19            -                 -           (NA--NA)
     GOZ MABILE 2          14        3,086              45.4     (27.04--76.01)
           GRÉDAÏ           1            -                 -           (NA--NA)
           HABILÉ           1            -                 -           (NA--NA)
           HARAZA           1            -                 -           (NA--NA)
        HILE BARA          20            -                 -           (NA--NA)
        HILE ODAA           2            -                 -           (NA--NA)
           HIMEDA           1            -                 -           (NA--NA)
           IDETER           1            -                 -           (NA--NA)
        KACHKACHA           6            -                 -           (NA--NA)
   KOUBO AMNIMIRE           3            -                 -           (NA--NA)
         MABROUKA           1            -                 -           (NA--NA)
            MATAR           4          569              70.3    (27.37--179.34)
             MINA          13            -                 -           (NA--NA)
         MIRÉKIKE           1            -                 -           (NA--NA)
            MIRER           1            -                 -           (NA--NA)
           MOURAY           1            -                 -           (NA--NA)
      NOUGRA KARO           1            -                 -           (NA--NA)
     OUM-ALKHOURA           2            -                 -           (NA--NA)
            PEDIS           1            -                 -           (NA--NA)
 RASSAFIL CHATEAU           1            -                 -           (NA--NA)
        RASSALFIL          11            -                 -           (NA--NA)
             RIAD          87        6,073             143.3   (116.29--176.36)
           RIDINA         147            -                 -           (NA--NA)
         RIDINA 1          11        2,336              47.1     (26.31--84.13)
         RIDINA 2          24        3,734              64.3     (43.23--95.46)
          RIMELIE           1            -                 -           (NA--NA)
          SALAMAT          47            -                 -           (NA--NA)
           SIHEBA           1            -                 -           (NA--NA)
         TARADONA         235            -                 -           (NA--NA)
       TARADONA 1          34        6,484              52.4     (37.55--73.18)
       TARADONA 2          63        5,250             120.0    (93.91--153.23)
       TARADONA 3          33        5,416              60.9     (43.42--85.44)
            ZONGO           4        1,607              24.9      (9.68--63.83)


<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// bar_attack_rate_by_region \\\
--------------------------------------------------------------------------------

You can then plot the above table on a bar plot. AR is on the y-axis, and it
will show regions in descending order by AR.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
![](Final_casestudy_AJS_template_files/figure-docx/bar_attack_rate_by_region-1.png)<!-- -->



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// mortality_rate_region \\\
--------------------------------------------------------------------------------

You could also calculate mortality rate by region (check the mortality code
chunk in Person section for assumptions).
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
Mortality rate per 10,000 population by region 


Region        Deaths   Population   Mortality (per 10,000)  95%CI         
-----------  -------  -----------  -----------------------  --------------
ABLELAYE           1            -                        -  (NA--NA)      
AL-HOUGNA          1            -                        -  (NA--NA)      
AMSINENE           1            -                        -  (NA--NA)      
ANFANDOCK          1            -                        -  (NA--NA)      
BADINA             1            -                        -  (NA--NA)      
DELEBAE            1            -                        -  (NA--NA)      
DINGUESS           1         2268                      4.4  (0.78--24.93) 
GOZ MABILE         1            -                        -  (NA--NA)      
HARAZA             1            -                        -  (NA--NA)      
KACHKACHA          2            -                        -  (NA--NA)      
MINA               1            -                        -  (NA--NA)      
RIAD               1         6073                      1.6  (0.29--9.32)  
TARADONA 2         1         5250                      1.9  (0.34--10.78) 




#### Maps 
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// read_shapefiles \\\
--------------------------------------------------------------------------------

To create maps, you need to have a shapefile of the area. Often, the MSF GIS
unit can provide shapefiles.

Your shapefile can be a polygon or points. Polygons do not need to be contiguous.

The names of the polygons or points MUST match the names in your linelist.

Your coordinate reference system needs to be WGS84.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

```
## Coordinate Reference System:
##   EPSG: 4326 
##   proj4string: "+proj=longlat +datum=WGS84 +no_defs"
```



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// dot_map \\\
--------------------------------------------------------------------------------

If you have the coordinates for your cases, you can create a dot map showing
where the cases are.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->




<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// choropleth_maps \\\
--------------------------------------------------------------------------------

Once you have loaded your shapefile, you can map the case counts or attack rates.

You will want to make your counts or AR categorical. R will not do this
automatically (unlike QGIS or ArcGIS).

This chunk will walk you through several steps:
- Create table with categories of counts or ARs by region.
- Join your table with your shapefile.
- Choose which variable you will use.

Make sure you delete or comment out the section you are not using.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
![](Final_casestudy_AJS_template_files/figure-docx/choropleth_maps-1.png)<!-- -->



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/// map_for_loop_epiweek \\\
--------------------------------------------------------------------------------

This chunk will create a map and barplot by week.

You need to:
- Decide if you want to show counts, AR, or categories of counts/AR.
- Define categories for your variable.
- Replace `Cases (n)` and `AR (per 10,000)` or "categories", appropriately.


If you have a lot of map regions, you may want to use facet_wrap to show
sub-units.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-1.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-2.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-3.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-4.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-5.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-6.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-7.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-8.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-9.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-10.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-11.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-12.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-13.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-14.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-15.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-16.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-17.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-18.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-19.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-20.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-21.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-22.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-23.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-24.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-25.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-26.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-27.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-28.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-29.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-30.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-31.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-32.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-33.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-34.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-35.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-36.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-37.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-38.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-39.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-40.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-41.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-42.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-43.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-44.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-45.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-46.png)<!-- -->![](Final_casestudy_AJS_template_files/figure-docx/map_for_loop_epiweek-47.png)<!-- -->

