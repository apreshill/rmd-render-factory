
Herein lies a `README` to help you navigate the galleries.

``` r
link_factory <- function(dir = "gallery", 
                         type = c("themes", "highlighters", "outputs", "viridis-options"),
                         root = "https://elastic-lovelace-155848.netlify.com"){
  if(!missing(type) & length(type) > 1) stop("Only one 'type' allowed.")
  library(dplyr)
  type <- match.arg(type)
  html_dir <- fs::dir_ls(glue::glue("{dir}/{type}"), recursive = TRUE, glob = "*.html")
  html_items <- html_dir %>% 
    tibble::enframe(name = "rel_path", value = "junk") %>% 
    dplyr::select(-junk) %>% 
    dplyr::mutate(abs_path = glue::glue("{root}{rel_path}")) %>% 
    dplyr::mutate(label_path = rel_path %>% fs::path_file(.) %>% 
                  fs::path_ext_remove(.) %>% as.character(.)) %>% 
    dplyr::mutate(link = glue::glue("[{label_path}]({abs_path})")) %>% 
    dplyr::rename_at(vars(link), ~glue::glue("List of {type}")) %>% 
    dplyr::mutate(image_link = as.character(fs::dir_ls(path = "thumbnails", regexp = glue::glue("{type}")))) %>% 
    dplyr::mutate(image_md = glue::glue("![]({image_link})"))
  return(html_items)
}

#' this function takes a tibble of links from link_factory()
#' and converts to an html table
table_factory <- function(links){
  html_items <- links
  html_table <- html_items %>% 
    dplyr::select(-ends_with("_path"), -starts_with("image_")) %>% 
    gt::gt() %>% 
    gt::fmt_markdown(
      columns = contains("List")
      )
  return(html_table)
}

#' this function takes webshots of all (absolute) links
webshot_factory <- function(links){
  html_items <- links
  for_shots <- html_items %>% 
    mutate(type = fs::path_rel(rel_path, start = "gallery") %>% fs::path_dir(.))
  webshot::webshot(glue::glue("{for_shots$abs_path}"),
                   glue::glue("thumbnails/{for_shots$type}-{for_shots$label_path}.png"), 
                   cliprect = "viewport") %>% 
    resize("55%") %>%
    shrink()
}

#' this function prints the contents of an R script in a readable code chunk "as is"
render_factory <- function(type = c("single", "themes", "highlighters", "outputs", "palettes")){
  type <- match.arg(type)
  script <- readLines(glue::glue("render_{type}.R"))
  cat(script, sep = "\n")
}
```

# The single file

All of the links below derive from a single R Markdown file titled
`index.Rmd`. Here is the YAML:

``` r
cat(readr::read_lines("input/single.Rmd", n_max = 11), sep = "\n")
```

    ---
    title: "`r params$dynamictitle`"
    author: "Alison Hill"
    params:
      dynamictitle: Texas Housing Prices
      viridis_palette: viridis
    output_format:
      html_document:
        highlighter: null
        theme: null
    ---

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
theme_links <- link_factory(type = "themes")
table_factory(links = theme_links)
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#qoegmuanlp .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #000000;
  font-size: 16px;
  background-color: #FFFFFF;
  /* table.background.color */
  width: auto;
  /* table.width */
  border-top-style: solid;
  /* table.border.top.style */
  border-top-width: 2px;
  /* table.border.top.width */
  border-top-color: #A8A8A8;
  /* table.border.top.color */
}

#qoegmuanlp .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#qoegmuanlp .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#qoegmuanlp .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#qoegmuanlp .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#qoegmuanlp .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#qoegmuanlp .gt_col_heading {
  color: #000000;
  background-color: #FFFFFF;
  /* column_labels.background.color */
  font-size: 16px;
  /* column_labels.font.size */
  font-weight: initial;
  /* column_labels.font.weight */
  vertical-align: middle;
  padding: 10px;
  margin: 10px;
}

#qoegmuanlp .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#qoegmuanlp .gt_group_heading {
  padding: 8px;
  color: #000000;
  background-color: #FFFFFF;
  /* row_group.background.color */
  font-size: 16px;
  /* row_group.font.size */
  font-weight: initial;
  /* row_group.font.weight */
  border-top-style: solid;
  /* row_group.border.top.style */
  border-top-width: 2px;
  /* row_group.border.top.width */
  border-top-color: #A8A8A8;
  /* row_group.border.top.color */
  border-bottom-style: solid;
  /* row_group.border.bottom.style */
  border-bottom-width: 2px;
  /* row_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* row_group.border.bottom.color */
  vertical-align: middle;
}

#qoegmuanlp .gt_empty_group_heading {
  padding: 0.5px;
  color: #000000;
  background-color: #FFFFFF;
  /* row_group.background.color */
  font-size: 16px;
  /* row_group.font.size */
  font-weight: initial;
  /* row_group.font.weight */
  border-top-style: solid;
  /* row_group.border.top.style */
  border-top-width: 2px;
  /* row_group.border.top.width */
  border-top-color: #A8A8A8;
  /* row_group.border.top.color */
  border-bottom-style: solid;
  /* row_group.border.bottom.style */
  border-bottom-width: 2px;
  /* row_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* row_group.border.bottom.color */
  vertical-align: middle;
}

#qoegmuanlp .gt_striped {
  background-color: #f2f2f2;
}

#qoegmuanlp .gt_from_md > :first-child {
  margin-top: 0;
}

#qoegmuanlp .gt_from_md > :last-child {
  margin-bottom: 0;
}

#qoegmuanlp .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#qoegmuanlp .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#qoegmuanlp .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#qoegmuanlp .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#qoegmuanlp .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#qoegmuanlp .gt_table_body {
  border-top-style: solid;
  /* table_body.border.top.style */
  border-top-width: 2px;
  /* table_body.border.top.width */
  border-top-color: #A8A8A8;
  /* table_body.border.top.color */
  border-bottom-style: solid;
  /* table_body.border.bottom.style */
  border-bottom-width: 2px;
  /* table_body.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* table_body.border.bottom.color */
}

#qoegmuanlp .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#qoegmuanlp .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#qoegmuanlp .gt_center {
  text-align: center;
}

#qoegmuanlp .gt_left {
  text-align: left;
}

#qoegmuanlp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#qoegmuanlp .gt_font_normal {
  font-weight: normal;
}

#qoegmuanlp .gt_font_bold {
  font-weight: bold;
}

#qoegmuanlp .gt_font_italic {
  font-style: italic;
}

#qoegmuanlp .gt_super {
  font-size: 65%;
}

#qoegmuanlp .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="qoegmuanlp" style="overflow-x:auto;">

<!--gt table start-->

<table class="gt_table">

<tr>

<th class="gt_col_heading gt_center" rowspan="1" colspan="1">

List of
themes

</th>

</tr>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/cerulean.html">cerulean</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/cosmo.html">cosmo</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/darkly.html">darkly</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/default.html">default</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/flatly.html">flatly</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/journal.html">journal</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/lumen.html">lumen</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/paper.html">paper</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/readable.html">readable</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/sandstone.html">sandstone</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/simplex.html">simplex</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/spacelab.html">spacelab</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/united.html">united</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/themes/yeti.html">yeti</a>

</p>

</div>

</td>

</tr>

</tbody>

</table>

<!--gt table end-->

</div>

<!--/html_preserve-->

And here is the script to generate the themes:

``` r
render_factory("themes")
```

    purrr::walk(
      .x = as.list(rmarkdown:::themes()),
      ~ rmarkdown::render(
        "input/single.Rmd",
        output_file = glue::glue("{.}.html"),
        output_dir = "gallery/themes/",
        output_options = list(
          toc = TRUE, 
          toc_float = TRUE,
          code_download = TRUE,
          theme = .x
        ),
        params = list(dynamictitle = glue::glue("Texas Housing Prices: `{.}` theme"))
      )
    )

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

``` r
hl_links <- link_factory(type = "highlighters")
table_factory(links = hl_links)
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#dwmvpmiyai .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #000000;
  font-size: 16px;
  background-color: #FFFFFF;
  /* table.background.color */
  width: auto;
  /* table.width */
  border-top-style: solid;
  /* table.border.top.style */
  border-top-width: 2px;
  /* table.border.top.width */
  border-top-color: #A8A8A8;
  /* table.border.top.color */
}

#dwmvpmiyai .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#dwmvpmiyai .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#dwmvpmiyai .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#dwmvpmiyai .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#dwmvpmiyai .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#dwmvpmiyai .gt_col_heading {
  color: #000000;
  background-color: #FFFFFF;
  /* column_labels.background.color */
  font-size: 16px;
  /* column_labels.font.size */
  font-weight: initial;
  /* column_labels.font.weight */
  vertical-align: middle;
  padding: 10px;
  margin: 10px;
}

#dwmvpmiyai .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#dwmvpmiyai .gt_group_heading {
  padding: 8px;
  color: #000000;
  background-color: #FFFFFF;
  /* row_group.background.color */
  font-size: 16px;
  /* row_group.font.size */
  font-weight: initial;
  /* row_group.font.weight */
  border-top-style: solid;
  /* row_group.border.top.style */
  border-top-width: 2px;
  /* row_group.border.top.width */
  border-top-color: #A8A8A8;
  /* row_group.border.top.color */
  border-bottom-style: solid;
  /* row_group.border.bottom.style */
  border-bottom-width: 2px;
  /* row_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* row_group.border.bottom.color */
  vertical-align: middle;
}

#dwmvpmiyai .gt_empty_group_heading {
  padding: 0.5px;
  color: #000000;
  background-color: #FFFFFF;
  /* row_group.background.color */
  font-size: 16px;
  /* row_group.font.size */
  font-weight: initial;
  /* row_group.font.weight */
  border-top-style: solid;
  /* row_group.border.top.style */
  border-top-width: 2px;
  /* row_group.border.top.width */
  border-top-color: #A8A8A8;
  /* row_group.border.top.color */
  border-bottom-style: solid;
  /* row_group.border.bottom.style */
  border-bottom-width: 2px;
  /* row_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* row_group.border.bottom.color */
  vertical-align: middle;
}

#dwmvpmiyai .gt_striped {
  background-color: #f2f2f2;
}

#dwmvpmiyai .gt_from_md > :first-child {
  margin-top: 0;
}

#dwmvpmiyai .gt_from_md > :last-child {
  margin-bottom: 0;
}

#dwmvpmiyai .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#dwmvpmiyai .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#dwmvpmiyai .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#dwmvpmiyai .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#dwmvpmiyai .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#dwmvpmiyai .gt_table_body {
  border-top-style: solid;
  /* table_body.border.top.style */
  border-top-width: 2px;
  /* table_body.border.top.width */
  border-top-color: #A8A8A8;
  /* table_body.border.top.color */
  border-bottom-style: solid;
  /* table_body.border.bottom.style */
  border-bottom-width: 2px;
  /* table_body.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* table_body.border.bottom.color */
}

#dwmvpmiyai .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#dwmvpmiyai .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#dwmvpmiyai .gt_center {
  text-align: center;
}

#dwmvpmiyai .gt_left {
  text-align: left;
}

#dwmvpmiyai .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#dwmvpmiyai .gt_font_normal {
  font-weight: normal;
}

#dwmvpmiyai .gt_font_bold {
  font-weight: bold;
}

#dwmvpmiyai .gt_font_italic {
  font-style: italic;
}

#dwmvpmiyai .gt_super {
  font-size: 65%;
}

#dwmvpmiyai .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="dwmvpmiyai" style="overflow-x:auto;">

<!--gt table start-->

<table class="gt_table">

<tr>

<th class="gt_col_heading gt_center" rowspan="1" colspan="1">

List of
highlighters

</th>

</tr>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/highlighters/default.html">default</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/highlighters/espresso.html">espresso</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/highlighters/haddock.html">haddock</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/highlighters/kate.html">kate</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/highlighters/monochrome.html">monochrome</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/highlighters/pygments.html">pygments</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/highlighters/tango.html">tango</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/highlighters/zenburn.html">zenburn</a>

</p>

</div>

</td>

</tr>

</tbody>

</table>

<!--gt table end-->

</div>

<!--/html_preserve-->

And here is the script to generate the highlighters:

``` r
render_factory("highlighters")
```

    purrr::walk(
      .x = as.list(rmarkdown:::highlighters()),
      ~ rmarkdown::render(
        "input/single.Rmd",
        output_file = glue::glue("{.}.html"),
        output_dir = "gallery/highlighters/",
        output_options = list(
          toc = TRUE, 
          toc_float = TRUE,
          theme = "cosmo",
          code_download = TRUE,
          highlight = .x
        ),
        params = list(dynamictitle = glue::glue("Texas Housing Prices: `{.}` highlighter"))
      )
    )

# Output formats

``` r
output_links <- link_factory(type = "outputs")
table_factory(links = output_links)
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#cnichgkxae .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #000000;
  font-size: 16px;
  background-color: #FFFFFF;
  /* table.background.color */
  width: auto;
  /* table.width */
  border-top-style: solid;
  /* table.border.top.style */
  border-top-width: 2px;
  /* table.border.top.width */
  border-top-color: #A8A8A8;
  /* table.border.top.color */
}

#cnichgkxae .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#cnichgkxae .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#cnichgkxae .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#cnichgkxae .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#cnichgkxae .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#cnichgkxae .gt_col_heading {
  color: #000000;
  background-color: #FFFFFF;
  /* column_labels.background.color */
  font-size: 16px;
  /* column_labels.font.size */
  font-weight: initial;
  /* column_labels.font.weight */
  vertical-align: middle;
  padding: 10px;
  margin: 10px;
}

#cnichgkxae .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#cnichgkxae .gt_group_heading {
  padding: 8px;
  color: #000000;
  background-color: #FFFFFF;
  /* row_group.background.color */
  font-size: 16px;
  /* row_group.font.size */
  font-weight: initial;
  /* row_group.font.weight */
  border-top-style: solid;
  /* row_group.border.top.style */
  border-top-width: 2px;
  /* row_group.border.top.width */
  border-top-color: #A8A8A8;
  /* row_group.border.top.color */
  border-bottom-style: solid;
  /* row_group.border.bottom.style */
  border-bottom-width: 2px;
  /* row_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* row_group.border.bottom.color */
  vertical-align: middle;
}

#cnichgkxae .gt_empty_group_heading {
  padding: 0.5px;
  color: #000000;
  background-color: #FFFFFF;
  /* row_group.background.color */
  font-size: 16px;
  /* row_group.font.size */
  font-weight: initial;
  /* row_group.font.weight */
  border-top-style: solid;
  /* row_group.border.top.style */
  border-top-width: 2px;
  /* row_group.border.top.width */
  border-top-color: #A8A8A8;
  /* row_group.border.top.color */
  border-bottom-style: solid;
  /* row_group.border.bottom.style */
  border-bottom-width: 2px;
  /* row_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* row_group.border.bottom.color */
  vertical-align: middle;
}

#cnichgkxae .gt_striped {
  background-color: #f2f2f2;
}

#cnichgkxae .gt_from_md > :first-child {
  margin-top: 0;
}

#cnichgkxae .gt_from_md > :last-child {
  margin-bottom: 0;
}

#cnichgkxae .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#cnichgkxae .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#cnichgkxae .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#cnichgkxae .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#cnichgkxae .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#cnichgkxae .gt_table_body {
  border-top-style: solid;
  /* table_body.border.top.style */
  border-top-width: 2px;
  /* table_body.border.top.width */
  border-top-color: #A8A8A8;
  /* table_body.border.top.color */
  border-bottom-style: solid;
  /* table_body.border.bottom.style */
  border-bottom-width: 2px;
  /* table_body.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* table_body.border.bottom.color */
}

#cnichgkxae .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#cnichgkxae .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#cnichgkxae .gt_center {
  text-align: center;
}

#cnichgkxae .gt_left {
  text-align: left;
}

#cnichgkxae .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#cnichgkxae .gt_font_normal {
  font-weight: normal;
}

#cnichgkxae .gt_font_bold {
  font-weight: bold;
}

#cnichgkxae .gt_font_italic {
  font-style: italic;
}

#cnichgkxae .gt_super {
  font-size: 65%;
}

#cnichgkxae .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="cnichgkxae" style="overflow-x:auto;">

<!--gt table start-->

<table class="gt_table">

<tr>

<th class="gt_col_heading gt_center" rowspan="1" colspan="1">

List of
outputs

</th>

</tr>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/outputs/docs/github_document.html">github\_document</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/outputs/docs/html_document.html">html\_document</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/outputs/docs/html_notebook.nb.html">html\_notebook.nb</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/outputs/exts/flexdashboard::flex_dashboard.html">flexdashboard::flex\_dashboard</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/outputs/exts/revealjs::revealjs_presentation.html">revealjs::revealjs\_presentation</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/outputs/slides/ioslides_presentation.html">ioslides\_presentation</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/outputs/slides/slidy_presentation.html">slidy\_presentation</a>

</p>

</div>

</td>

</tr>

</tbody>

</table>

<!--gt table end-->

</div>

<!--/html_preserve-->

And here is the script to generate the outputs:

``` r
render_factory("outputs")
```

    doc_outputs <- c("html_notebook", "html_document", "pdf_document", 
                     "word_document", "odt_document", "rtf_document", "github_document")
    doc_exts <- c("nb.html", "html", "pdf", "docx", "odt", "rtf", "md")
    
    purrr::walk2(
      .x = doc_outputs,
      .y = doc_exts,
      ~ rmarkdown::render(
        "input/single.Rmd",
        output_file = glue::glue("{.x}.{.y}"),
        output_dir = "gallery/outputs/docs/",
        output_format = .,
        params = list(dynamictitle = glue::glue("Texas Housing Prices: `{.}`"))
        )
    )
    
    slide_outputs <- c("ioslides_presentation", "slidy_presentation", "beamer_presentation", "powerpoint_presentation")
    slide_exts <- c("html", "html", "pdf", "pptx")
    
    purrr::walk2(
      .x = slide_outputs,
      .y = slide_exts,
      ~ rmarkdown::render(
        "input/single.Rmd",
        output_file = glue::glue("{.x}.{.y}"),
        output_dir = "gallery/outputs/slides/",
        output_format = .,
        params = list(dynamictitle = glue::glue("Texas Housing Prices: `{.}`"))
      )
    )

# Viridis options

``` r
viridis_links <- link_factory(type = "viridis-options")
table_factory(links = viridis_links)
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ficadhrzhu .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #000000;
  font-size: 16px;
  background-color: #FFFFFF;
  /* table.background.color */
  width: auto;
  /* table.width */
  border-top-style: solid;
  /* table.border.top.style */
  border-top-width: 2px;
  /* table.border.top.width */
  border-top-color: #A8A8A8;
  /* table.border.top.color */
}

#ficadhrzhu .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#ficadhrzhu .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ficadhrzhu .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ficadhrzhu .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#ficadhrzhu .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#ficadhrzhu .gt_col_heading {
  color: #000000;
  background-color: #FFFFFF;
  /* column_labels.background.color */
  font-size: 16px;
  /* column_labels.font.size */
  font-weight: initial;
  /* column_labels.font.weight */
  vertical-align: middle;
  padding: 10px;
  margin: 10px;
}

#ficadhrzhu .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#ficadhrzhu .gt_group_heading {
  padding: 8px;
  color: #000000;
  background-color: #FFFFFF;
  /* row_group.background.color */
  font-size: 16px;
  /* row_group.font.size */
  font-weight: initial;
  /* row_group.font.weight */
  border-top-style: solid;
  /* row_group.border.top.style */
  border-top-width: 2px;
  /* row_group.border.top.width */
  border-top-color: #A8A8A8;
  /* row_group.border.top.color */
  border-bottom-style: solid;
  /* row_group.border.bottom.style */
  border-bottom-width: 2px;
  /* row_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* row_group.border.bottom.color */
  vertical-align: middle;
}

#ficadhrzhu .gt_empty_group_heading {
  padding: 0.5px;
  color: #000000;
  background-color: #FFFFFF;
  /* row_group.background.color */
  font-size: 16px;
  /* row_group.font.size */
  font-weight: initial;
  /* row_group.font.weight */
  border-top-style: solid;
  /* row_group.border.top.style */
  border-top-width: 2px;
  /* row_group.border.top.width */
  border-top-color: #A8A8A8;
  /* row_group.border.top.color */
  border-bottom-style: solid;
  /* row_group.border.bottom.style */
  border-bottom-width: 2px;
  /* row_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* row_group.border.bottom.color */
  vertical-align: middle;
}

#ficadhrzhu .gt_striped {
  background-color: #f2f2f2;
}

#ficadhrzhu .gt_from_md > :first-child {
  margin-top: 0;
}

#ficadhrzhu .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ficadhrzhu .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#ficadhrzhu .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#ficadhrzhu .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#ficadhrzhu .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#ficadhrzhu .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#ficadhrzhu .gt_table_body {
  border-top-style: solid;
  /* table_body.border.top.style */
  border-top-width: 2px;
  /* table_body.border.top.width */
  border-top-color: #A8A8A8;
  /* table_body.border.top.color */
  border-bottom-style: solid;
  /* table_body.border.bottom.style */
  border-bottom-width: 2px;
  /* table_body.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* table_body.border.bottom.color */
}

#ficadhrzhu .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#ficadhrzhu .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#ficadhrzhu .gt_center {
  text-align: center;
}

#ficadhrzhu .gt_left {
  text-align: left;
}

#ficadhrzhu .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ficadhrzhu .gt_font_normal {
  font-weight: normal;
}

#ficadhrzhu .gt_font_bold {
  font-weight: bold;
}

#ficadhrzhu .gt_font_italic {
  font-style: italic;
}

#ficadhrzhu .gt_super {
  font-size: 65%;
}

#ficadhrzhu .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ficadhrzhu" style="overflow-x:auto;">

<!--gt table start-->

<table class="gt_table">

<tr>

<th class="gt_col_heading gt_center" rowspan="1" colspan="1">

List of
viridis-options

</th>

</tr>

<tbody class="gt_table_body">

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/viridis-options/cividis.html">cividis</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/viridis-options/inferno.html">inferno</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/viridis-options/magma.html">magma</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/viridis-options/plasma.html">plasma</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.comgallery/viridis-options/viridis.html">viridis</a>

</p>

</div>

</td>

</tr>

</tbody>

</table>

<!--gt table end-->

</div>

<!--/html_preserve-->

And here is the script to generate the viridis palettes:

``` r
render_factory("palettes")
```

    purrr::walk(
      .x = c("magma", "inferno", "plasma", "viridis", "cividis"),
      ~ rmarkdown::render(
        "input/single.Rmd",
        output_file = glue::glue("{.}.html"),
        output_dir = "gallery/viridis-options/",
        output_options = list(
          toc = TRUE, 
          toc_float = TRUE,
          code_download = TRUE,
          theme = "cosmo",
          highlight = "tango"
        ),
        params = list(dynamictitle = glue::glue("Texas Housing Prices: viridis color palette `{.}`"),
                      viridis_palette = .)
      )
    )

``` r
webshot_factory(links = theme_links)
webshot_factory(links = hl_links)
webshot_factory(links = output_links)
webshot_factory(links = viridis_links)
```
