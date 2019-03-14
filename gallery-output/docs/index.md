Visualizing the ocean floor
================
2019-03-14

From: <https://rmarkdown.rstudio.com/lesson-6.html>

# Packages

``` r
library(marmap) # for data and map
library(ggplot2) # needed for map
```

# Marine map

The [marmap](https://cran.r-project.org/web/packages/marmap/index.html)
package provides tools and data for visualizing the ocean floor. Here is
an example contour plot of marmap’s `hawaii` dataset.

``` r
data(list = params$data)
autoplot(get(params$data)) 
```

![](/Users/alison/rprojs/rmd-render-factory/gallery-output/docs/index_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->
