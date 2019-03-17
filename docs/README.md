
Herein lies a `README` to help you navigate the galleries.

``` r
link_factory <- function(dir = "gallery", 
                         type = c("themes", "highlighters", "outputs", "viridis-options"),
                         root = "https://elastic-lovelace-155848.netlify.com/"){
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
  library(webshot)
  html_items <- links
  for_shots <- html_items %>% 
    mutate(type = fs::path_rel(rel_path, start = "gallery") %>% fs::path_dir(.))
  webshot(glue::glue("{for_shots$abs_path}"),
                   glue::glue("thumbnails/{for_shots$type}-{for_shots$label_path}.png"), 
                   cliprect = "viewport") %>% 
    magick::image_scale("200")
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

#ocmxihulbn .gt_table {
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

#ocmxihulbn .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#ocmxihulbn .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ocmxihulbn .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ocmxihulbn .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#ocmxihulbn .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#ocmxihulbn .gt_col_heading {
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

#ocmxihulbn .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#ocmxihulbn .gt_group_heading {
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

#ocmxihulbn .gt_empty_group_heading {
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

#ocmxihulbn .gt_striped {
  background-color: #f2f2f2;
}

#ocmxihulbn .gt_from_md > :first-child {
  margin-top: 0;
}

#ocmxihulbn .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ocmxihulbn .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#ocmxihulbn .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#ocmxihulbn .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#ocmxihulbn .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#ocmxihulbn .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#ocmxihulbn .gt_table_body {
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

#ocmxihulbn .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#ocmxihulbn .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#ocmxihulbn .gt_center {
  text-align: center;
}

#ocmxihulbn .gt_left {
  text-align: left;
}

#ocmxihulbn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ocmxihulbn .gt_font_normal {
  font-weight: normal;
}

#ocmxihulbn .gt_font_bold {
  font-weight: bold;
}

#ocmxihulbn .gt_font_italic {
  font-style: italic;
}

#ocmxihulbn .gt_super {
  font-size: 65%;
}

#ocmxihulbn .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ocmxihulbn" style="overflow-x:auto;">

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

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/cerulean.html">cerulean</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/cosmo.html">cosmo</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/darkly.html">darkly</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/default.html">default</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/flatly.html">flatly</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/journal.html">journal</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/lumen.html">lumen</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/paper.html">paper</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/readable.html">readable</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/sandstone.html">sandstone</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/simplex.html">simplex</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/spacelab.html">spacelab</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/united.html">united</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/themes/yeti.html">yeti</a>

</p>

</div>

</td>

</tr>

</tbody>

</table>

<!--gt table end-->

</div>

<!--/html_preserve-->

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

#ehzihljugl .gt_table {
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

#ehzihljugl .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#ehzihljugl .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ehzihljugl .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ehzihljugl .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#ehzihljugl .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#ehzihljugl .gt_col_heading {
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

#ehzihljugl .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#ehzihljugl .gt_group_heading {
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

#ehzihljugl .gt_empty_group_heading {
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

#ehzihljugl .gt_striped {
  background-color: #f2f2f2;
}

#ehzihljugl .gt_from_md > :first-child {
  margin-top: 0;
}

#ehzihljugl .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ehzihljugl .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#ehzihljugl .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#ehzihljugl .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#ehzihljugl .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#ehzihljugl .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#ehzihljugl .gt_table_body {
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

#ehzihljugl .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#ehzihljugl .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#ehzihljugl .gt_center {
  text-align: center;
}

#ehzihljugl .gt_left {
  text-align: left;
}

#ehzihljugl .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ehzihljugl .gt_font_normal {
  font-weight: normal;
}

#ehzihljugl .gt_font_bold {
  font-weight: bold;
}

#ehzihljugl .gt_font_italic {
  font-style: italic;
}

#ehzihljugl .gt_super {
  font-size: 65%;
}

#ehzihljugl .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ehzihljugl" style="overflow-x:auto;">

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

<a href="https://elastic-lovelace-155848.netlify.com/gallery/highlighters/default.html">default</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/highlighters/espresso.html">espresso</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/highlighters/haddock.html">haddock</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/highlighters/kate.html">kate</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/highlighters/monochrome.html">monochrome</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/highlighters/pygments.html">pygments</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/highlighters/tango.html">tango</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/highlighters/zenburn.html">zenburn</a>

</p>

</div>

</td>

</tr>

</tbody>

</table>

<!--gt table end-->

</div>

<!--/html_preserve-->

# Output formats

``` r
output_links <- link_factory(type = "outputs")
table_factory(links = output_links)
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#qskaqzmgjc .gt_table {
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

#qskaqzmgjc .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#qskaqzmgjc .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#qskaqzmgjc .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#qskaqzmgjc .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#qskaqzmgjc .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#qskaqzmgjc .gt_col_heading {
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

#qskaqzmgjc .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#qskaqzmgjc .gt_group_heading {
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

#qskaqzmgjc .gt_empty_group_heading {
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

#qskaqzmgjc .gt_striped {
  background-color: #f2f2f2;
}

#qskaqzmgjc .gt_from_md > :first-child {
  margin-top: 0;
}

#qskaqzmgjc .gt_from_md > :last-child {
  margin-bottom: 0;
}

#qskaqzmgjc .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#qskaqzmgjc .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#qskaqzmgjc .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#qskaqzmgjc .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#qskaqzmgjc .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#qskaqzmgjc .gt_table_body {
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

#qskaqzmgjc .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#qskaqzmgjc .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#qskaqzmgjc .gt_center {
  text-align: center;
}

#qskaqzmgjc .gt_left {
  text-align: left;
}

#qskaqzmgjc .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#qskaqzmgjc .gt_font_normal {
  font-weight: normal;
}

#qskaqzmgjc .gt_font_bold {
  font-weight: bold;
}

#qskaqzmgjc .gt_font_italic {
  font-style: italic;
}

#qskaqzmgjc .gt_super {
  font-size: 65%;
}

#qskaqzmgjc .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="qskaqzmgjc" style="overflow-x:auto;">

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

<a href="https://elastic-lovelace-155848.netlify.com/gallery/outputs/docs/github_document.html">github\_document</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/outputs/docs/html_document.html">html\_document</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/outputs/docs/html_notebook.nb.html">html\_notebook.nb</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/outputs/exts/flexdashboard::flex_dashboard.html">flexdashboard::flex\_dashboard</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/outputs/exts/revealjs::revealjs_presentation.html">revealjs::revealjs\_presentation</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/outputs/slides/ioslides_presentation.html">ioslides\_presentation</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/outputs/slides/slidy_presentation.html">slidy\_presentation</a>

</p>

</div>

</td>

</tr>

</tbody>

</table>

<!--gt table end-->

</div>

<!--/html_preserve-->

# Viridis options

``` r
viridis_links <- link_factory(type = "viridis-options")
table_factory(links = viridis_links)
```

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#gqkgtyqgwj .gt_table {
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

#gqkgtyqgwj .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#gqkgtyqgwj .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#gqkgtyqgwj .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#gqkgtyqgwj .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#gqkgtyqgwj .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#gqkgtyqgwj .gt_col_heading {
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

#gqkgtyqgwj .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#gqkgtyqgwj .gt_group_heading {
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

#gqkgtyqgwj .gt_empty_group_heading {
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

#gqkgtyqgwj .gt_striped {
  background-color: #f2f2f2;
}

#gqkgtyqgwj .gt_from_md > :first-child {
  margin-top: 0;
}

#gqkgtyqgwj .gt_from_md > :last-child {
  margin-bottom: 0;
}

#gqkgtyqgwj .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#gqkgtyqgwj .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#gqkgtyqgwj .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#gqkgtyqgwj .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#gqkgtyqgwj .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#gqkgtyqgwj .gt_table_body {
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

#gqkgtyqgwj .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#gqkgtyqgwj .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#gqkgtyqgwj .gt_center {
  text-align: center;
}

#gqkgtyqgwj .gt_left {
  text-align: left;
}

#gqkgtyqgwj .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#gqkgtyqgwj .gt_font_normal {
  font-weight: normal;
}

#gqkgtyqgwj .gt_font_bold {
  font-weight: bold;
}

#gqkgtyqgwj .gt_font_italic {
  font-style: italic;
}

#gqkgtyqgwj .gt_super {
  font-size: 65%;
}

#gqkgtyqgwj .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="gqkgtyqgwj" style="overflow-x:auto;">

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

<a href="https://elastic-lovelace-155848.netlify.com/gallery/viridis-options/cividis.html">cividis</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/viridis-options/inferno.html">inferno</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/viridis-options/magma.html">magma</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/viridis-options/plasma.html">plasma</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://elastic-lovelace-155848.netlify.com/gallery/viridis-options/viridis.html">viridis</a>

</p>

</div>

</td>

</tr>

</tbody>

</table>

<!--gt table end-->

</div>

<!--/html_preserve-->

``` r
webshot_factory(links = theme_links)
webshot_factory(links = hl_links)
webshot_factory(links = output_links)
webshot_factory(links = viridis_links)
```
