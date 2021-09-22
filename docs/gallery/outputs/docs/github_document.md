Texas Housing Prices: `github_document`
================
Alison Hill

The `txhousing` data is available when you install and load the
`ggplot2` package.

``` r
library(tidyverse)
txsamp <- txhousing %>% 
  filter(city %in% c("Houston", "Fort Worth", "San Antonio", "Dallas", "Austin"))
```

# Austin is expensive

``` r
ggplot(data = txsamp, aes(x = sales, y = median)) +
   geom_point(aes(colour = city)) + 
   scale_colour_viridis_d("City\nCenter", option = params$viridis_palette)
```

![](/Users/alison/rprojs/rmd-render-factory/gallery/outputs/docs/github_document_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

# Austin prices on the rise

``` r
ggplot(data = filter(txsamp, city == "Austin"), aes(x = sales, y = median)) +
   geom_point(aes(colour = year)) + 
   scale_colour_viridis_c("Austin by year", option = params$viridis_palette, direction = -1) 
```

![](/Users/alison/rprojs/rmd-render-factory/gallery/outputs/docs/github_document_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

# Fort Worth has more affordable housing

``` r
library(scales) # to make y-axis in non-scientific notation
ggplot(txsamp, aes(x = median, fill = city)) +
  geom_histogram(aes(weight = sales), position = "dodge", binwidth = 15000) +
  scale_fill_viridis_d(option = params$viridis_palette)+
  scale_y_continuous(labels = comma)
```

![](/Users/alison/rprojs/rmd-render-factory/gallery/outputs/docs/github_document_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

# The current pace of sales is fast

“Months inventory”: amount of time it would take to sell all current
listings at current pace of sales.

``` r
ggplot(data = txsamp, aes(x = year, y = inventory, colour = city)) +
  geom_point() + 
  geom_smooth(se = FALSE) +
  scale_colour_viridis_d("City\nCenter", option = params$viridis_palette) 
```

![](/Users/alison/rprojs/rmd-render-factory/gallery/outputs/docs/github_document_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

# Thanks to…

  - Jennifer Thompson:
    <https://github.com/jenniferthompson/ParamRmdExample>
  - Garrett Grolemund: <https://rmarkdown.rstudio.com/lesson-6.html>
