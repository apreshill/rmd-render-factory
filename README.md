
Herein lies a `README` to help you navigate the galleries.

# Themes

R Markdown comes with some several built-in `theme`s. Themes are drawn
from the Bootswatch theme library. Valid themes include `default`,
`cerulean`, `journal`, `flatly`, `darkly`, `readable`, `spacelab`,
`united`, `cosmo`, `lumen`, `paper`, `sandstone`, `simplex`, and `yeti`.
Pass `null` for no theme. To use a theme for a single .html file output
from a .Rmd file, you edit your YAML:

``` yaml
title: "README.Rmd"
output_format: 
  html_document:
    theme: flatly
```

``` r
themes <- dir_ls("gallery/themes", recursive = TRUE, glob = "*.html") %>% 
  enframe(name = "path", value = "junk") %>% 
  select(-junk) %>% 
  mutate(path = glue::glue("{root}{path}")) %>% 
  mutate(link_read = path %>% fs::path_file(.) %>% path_ext_remove(.) %>% as.character())
```

``` r
themes %>% 
  mutate(link = cell_spec(link_read, 
                           "html", 
                          link = path)
         ) %>% 
  select("Theme Gallery" = link) %>% 
  kable("html", escape = FALSE) %>%
  kable_styling(bootstrap_options = c("hover", "condensed")) 
```

<table class="table table-hover table-condensed" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;">

Theme
Gallery

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/cerulean.html" style="     ">cerulean</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/cosmo.html" style="     ">cosmo</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/darkly.html" style="     ">darkly</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/default.html" style="     ">default</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/flatly.html" style="     ">flatly</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/journal.html" style="     ">journal</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/lumen.html" style="     ">lumen</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/paper.html" style="     ">paper</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/readable.html" style="     ">readable</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/sandstone.html" style="     ">sandstone</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/simplex.html" style="     ">simplex</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/spacelab.html" style="     ">spacelab</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/united.html" style="     ">united</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/yeti.html" style="     ">yeti</a>

</td>

</tr>

</tbody>

</table>

``` r
library(dplyr)
library(knitr)
```

    ## Warning: package 'knitr' was built under R version 3.5.2

``` r
library(kableExtra)
dt_url <- c("https://en.wikipedia.org/wiki/Cadillac_Fleetwood",
            "https://www.lincoln.com/luxury-cars/continental/",
            "http://shop.honda.com/civics.aspx",
            "https://bringatrailer.com/2011/12/28/striking-1973-maserati-bora-4-9/")

mtcars[c(15,16,19,31),1:3] %>% 
  mutate(model = cell_spec(row.names(.), "html", link = dt_url)) %>%
  kable("html", escape = FALSE) %>%
  kable_styling(bootstrap_options = c("hover", "condensed")) 
```

<table class="table table-hover table-condensed" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:right;">

mpg

</th>

<th style="text-align:right;">

cyl

</th>

<th style="text-align:right;">

disp

</th>

<th style="text-align:left;">

model

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:right;">

10.4

</td>

<td style="text-align:right;">

8

</td>

<td style="text-align:right;">

472.0

</td>

<td style="text-align:left;">

<a href="https://en.wikipedia.org/wiki/Cadillac_Fleetwood" style="     ">Cadillac
Fleetwood</a>

</td>

</tr>

<tr>

<td style="text-align:right;">

10.4

</td>

<td style="text-align:right;">

8

</td>

<td style="text-align:right;">

460.0

</td>

<td style="text-align:left;">

<a href="https://www.lincoln.com/luxury-cars/continental/" style="     ">Lincoln
Continental</a>

</td>

</tr>

<tr>

<td style="text-align:right;">

30.4

</td>

<td style="text-align:right;">

4

</td>

<td style="text-align:right;">

75.7

</td>

<td style="text-align:left;">

<a href="http://shop.honda.com/civics.aspx" style="     ">Honda
Civic</a>

</td>

</tr>

<tr>

<td style="text-align:right;">

15.0

</td>

<td style="text-align:right;">

8

</td>

<td style="text-align:right;">

301.0

</td>

<td style="text-align:left;">

<a href="https://bringatrailer.com/2011/12/28/striking-1973-maserati-bora-4-9/" style="     ">Maserati
Bora</a>

</td>

</tr>

</tbody>

</table>

# Highlighters

R Markdown also comes with several built-in syntax highlighting styles.
Supported styles include `default`, `tango`, `pygments`, `kate`,
`monochrome`, `espresso`, `zenburn`, `haddock`, and `textmate`. Pass
`null` to prevent syntax highlighting. To use a highlighter for a single
.html file output from a .Rmd file, you edit your YAML:

``` yaml
title: "README.Rmd"
output_format: 
  html_document:
    highlighter: tango
```

# Output formats
