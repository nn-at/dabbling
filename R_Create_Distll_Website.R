# Build a personal website with distill - Ariel Muldoon - April 6, 2021
# https://aosmith16.github.io/spring-r-topics/


# Intall & load packages --------------------------------------------------

if(!require("pacman"))install.packages("pacman") # if can't load pacman then install pacman else load pacman

# load packages - install any not already installed prior to loading
pacman::p_load(distill, postcards, devtools, fontawesome, gt, webshot, dplyr, tidyr, usethis,
               gh, htmlwidgets, ggplot2, palmerpenguins, plotly, DT, leaflet, dygraphs, flexdashboard,
               reprex, datapasta)

# fontawesome you have to use version 0.1.0 - if you use version 0.2.0 it offsets the icons
remove.packages("fontawesome")
installed.packages()[,1]

# install version 0.1.0 - choose "skip" when asked for updates
devtools::install_version("fontawesome", version = "0.1.0", repos = "http://cran.us.r-project.org")

install.packages("pointblank") # a dependency for fonntawesome - second time round also chose "skip" when asked about updates and it worked

library(fontawesome)
library(here)


# Distill info ------------------------------------------------------------

# This site provides examples of things you can do with distill site (e.g. themes, syntax highlighting,
# code folding, asides, citations, equations, diff figure layouts, and more)

# Distill main page:
# https://rstudio.github.io/distill/

# Fig layouts: https://rstudio.github.io/distill/figures.html
# Diagrams: https://rstudio.github.io/distill/diagrams.html
# D3 viz: https://rstudio.github.io/distill/interactivity.html
# Tables: https://rstudio.github.io/distill/tables.html

# Info from main site:
# Distill for R Markdown is a web publishing format optimized for scientific and technical communication. 
# Distill articles include:
  
# Reader-friendly typography that adapts well to mobile devices.
# Features essential to technical writing like LaTeX math, citations, and footnotes.
# Flexible figure layout options (e.g. displaying figures at a larger width than the article text).
# Attractively rendered tables with optional support for pagination.
# Support for a wide variety of diagramming tools for illustrating concepts.
# The ability to incorporate JavaScript and D3-based interactive visualizations.
# A variety of ways to publish articles, including support for publishing sets of articles as a Distill website or as a Distill blog.
# Distill for R Markdown is based on the Distill web framework, which was originally created for use in the 
# Distill Machine Learning Journal (Carter, Olah, and Satyanarayan 2016). 
# Distill for R Markdown combines the technical authoring features of Distill with R Markdown, enabling a fully reproducible workflow based on literate programming (Knuth 1984).

# Initial site creation ---------------------------------------------------

# Make a website within this dabbling project director
distill::create_website(dir = ".", title = "Dabbling with R", gh_pages = TRUE)

# After running the above - close RStudio then reopen the project - you will see a Build tab near Environment tab

# index.Rmd is our home page - every distill website must have an index.Rmd file and it needs to be in the root directory - do not move it


# Site navigation ---------------------------------------------------------

# Site nav can be right or left of the page
# you can use words or icons as site nav titles - if you use icons use fontawesome package
# href in nav must refer to either a html page in docs folder or a URL
# for icons use - icon instead of - text in nav menu and the fav icon shortcut e.g. fa fa-github

# Create a new page -------------------------------------------------------

# create an Article page, local HTML file, R markdown distill article which has HTML output, using RStudio's drop-down menus

# create using package
distill::create_article(file = "postcard", template = "jolla", package = "postcards")

# create an "images" folder in project root directory and store any images for pages there

# title: "Dabbling with R"
# description: |
#   Welcome to the website. I hope you enjoy it!

# To add to site - see other sites as examples:
# Search bar
# icons within text paragarphs
# background colour and colour scheme updates
# large icons only for social media - and without the box around them
# get navigation bar or some sort of nav and home link option on the article pages otherwise you can't return to home




# Create theme ------------------------------------------------------------

distill::create_theme()

# creates a theme.css file stored in project root directory and continaing the CSS for current site


distill::create_blog(dir = , title = , gh_pages = TRUE, edit = )

distill::create_post(title = , collection = , author = , slug = , date = , date_prefix = , draft = , edit = )






