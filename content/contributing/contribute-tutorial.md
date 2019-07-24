---
title: "Contributing to This Website"
description: >
  How to contribute new content to this website, including tutorials, FAQs,
  use-cases, and more.
categories: ["contributing"]
weight: 2
menuTitle: "Tutorials"
---

This website is built with [blogdown], and hosted on [Netlify]. This means that
it's possible to add both markdown and RMarkdown content to this site. Below,
I'll highlight some of the structure of this site and how to contribute the
different types of content.

# Structure of this site

This website is based off of the [learn hugo theme] and lives at
https://github.com/R4EPI/r4epis-website. Inside that repository, you will see the
following:

.    
├── config.toml    
├── **content/**    
├── index.Rmd    
├── layouts/    
├── LICENSE.md    
├── public/    
├── R4EPI--training.Rproj    
├── static/    
└── themes/    

When you want to add a page, you will add it to the `content/` directory. This
contains the structure of the website where each section displayed on the right
is a folder with an `_index.en.md`, which is the homepage for that section and
any number of other pages to be displayed. All pages should have a yaml header
with a `title` and `weight` parameter:

```yaml
---
title: "New page for R4EPIs"
weight: 15
---
```

The `weight` parameter determines where in the list this page will fall. Smaller
numbers will appear above higher numbers.

More details about customization are found in the [learn hugo theme] documentation. 

# Contributing a simple markdown document

You would use this option if you are contributing a document that doesn't 
contain any R code examples or only contains simplistic examples. This would
include tutorials, FAQs, and other descriptive material. 

If you want to contribute a markdown document, you can fork the repository, 
create a new branch, and edit a new document on github. After you are finished
editing, you can create a new pull request and the website will be tested on the
netlify servers. You can also follow the instructions for contributing an 
RMarkdown document if you want to have a live preview on your computer.

# Contributing an RMarkdown document

You would use this option if you were contributing a document that contains R
code examples that need to be displayed (for example, demonstrating some of the
functionalities of the [sitrep] package).

This has a slightly different process than contributing markdown documents
because [Netlify] cannot run R code, so you must do this on your own computer.
To contribute an RMarkdown document, first fork and clone the repository to your
computer with `usethis::create_from_github('R4EPI/r4epis-website', fork = TRUE)`. This
should open a new RStudio project with this website inside.

Next, make sure you have the [blogdown] package installed with:

```r
install.packages('blogdown', repos = "https://cloud.r-project.org")

# ensure that hugo is installed
blogdown::install_hugo()
``` 

Now you can ceate a new RMarkdown document inside one of the folders by using:

```r
blogdown::new_content("<folder>/<page>.Rmd", kind = "page")
```

This should open a bare Rmarkdown document in a new window. Edit this however
you like.  When you are finished editing your Rmarkdown document, you must
render it with 

```r
blogdown::serve_site()
``` 

This will render your document to HTML and then use hugo to display the
website. When you are happy with the results, commit your changes, push them to
github, and make a pull request.


[blogdown]: https://bookdown.org/yihui/blogdown/
[Netlify]: https://netlify.com
[learn hugo theme]: https://learn.netlify.com/en/
[sitrep]: https://github/R4EPI/sitrep
