[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/IzVO6Cb0)
Simple practice for creating a makefile using Palmer penguins data
================
David Gerard

<!-- README.md is generated from README.Rmd. Please edit that file -->

## Introduction

This is a simple exercise for creating a makefile to manage a small
project that examines the really cool [Palmer Penguins
data](https://allisonhorst.github.io/palmerpenguins/).

The files in the final report are:

- Makefile
- Readme.Rmd
- Readme.md
- analysis
  - classify_penguins.R
  - penguin_report.qmd
  - plot_penguin.R
- output
  - penguin_class.csv
  - penguin_pairs.png
  - penguin_report.html

These files have the following dependency structure:

![](README-dependency-graph-1.png)<!-- -->

# Instructions

0.  Make sure you have the necessary R packages installed:

    ``` r
    library(tidyverse)
    library(tidymodels)
    library(GGally)
    library(palmerpenguins)
    library(randomForest)
    library(gt)
    ```

1.  Modify the Makefile to automatically manage this pipeline.

2.  Run `make` in the terminal to generate all of the output
    (penguin_class.csv, penguin_pairs.png, and penguin_report.html)

3.  Change the color scheme in the pairs plot and re-run `make`.

4.  Correct the date field in the YAML header in “penguin_report.html”
    and re-run `make`
