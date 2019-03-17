
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

#xejslrxrof .gt_table {
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

#xejslrxrof .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#xejslrxrof .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#xejslrxrof .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#xejslrxrof .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#xejslrxrof .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#xejslrxrof .gt_col_heading {
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

#xejslrxrof .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#xejslrxrof .gt_group_heading {
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

#xejslrxrof .gt_empty_group_heading {
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

#xejslrxrof .gt_striped {
  background-color: #f2f2f2;
}

#xejslrxrof .gt_from_md > :first-child {
  margin-top: 0;
}

#xejslrxrof .gt_from_md > :last-child {
  margin-bottom: 0;
}

#xejslrxrof .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#xejslrxrof .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#xejslrxrof .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#xejslrxrof .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#xejslrxrof .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#xejslrxrof .gt_table_body {
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

#xejslrxrof .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#xejslrxrof .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#xejslrxrof .gt_center {
  text-align: center;
}

#xejslrxrof .gt_left {
  text-align: left;
}

#xejslrxrof .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#xejslrxrof .gt_font_normal {
  font-weight: normal;
}

#xejslrxrof .gt_font_bold {
  font-weight: bold;
}

#xejslrxrof .gt_font_italic {
  font-style: italic;
}

#xejslrxrof .gt_super {
  font-size: 65%;
}

#xejslrxrof .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="xejslrxrof" style="overflow-x:auto;">

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

#asagzmkbrp .gt_table {
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

#asagzmkbrp .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#asagzmkbrp .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#asagzmkbrp .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#asagzmkbrp .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#asagzmkbrp .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#asagzmkbrp .gt_col_heading {
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

#asagzmkbrp .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#asagzmkbrp .gt_group_heading {
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

#asagzmkbrp .gt_empty_group_heading {
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

#asagzmkbrp .gt_striped {
  background-color: #f2f2f2;
}

#asagzmkbrp .gt_from_md > :first-child {
  margin-top: 0;
}

#asagzmkbrp .gt_from_md > :last-child {
  margin-bottom: 0;
}

#asagzmkbrp .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#asagzmkbrp .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#asagzmkbrp .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#asagzmkbrp .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#asagzmkbrp .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#asagzmkbrp .gt_table_body {
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

#asagzmkbrp .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#asagzmkbrp .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#asagzmkbrp .gt_center {
  text-align: center;
}

#asagzmkbrp .gt_left {
  text-align: left;
}

#asagzmkbrp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#asagzmkbrp .gt_font_normal {
  font-weight: normal;
}

#asagzmkbrp .gt_font_bold {
  font-weight: bold;
}

#asagzmkbrp .gt_font_italic {
  font-style: italic;
}

#asagzmkbrp .gt_super {
  font-size: 65%;
}

#asagzmkbrp .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="asagzmkbrp" style="overflow-x:auto;">

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

#mjyxixwoef .gt_table {
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

#mjyxixwoef .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#mjyxixwoef .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#mjyxixwoef .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#mjyxixwoef .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#mjyxixwoef .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#mjyxixwoef .gt_col_heading {
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

#mjyxixwoef .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#mjyxixwoef .gt_group_heading {
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

#mjyxixwoef .gt_empty_group_heading {
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

#mjyxixwoef .gt_striped {
  background-color: #f2f2f2;
}

#mjyxixwoef .gt_from_md > :first-child {
  margin-top: 0;
}

#mjyxixwoef .gt_from_md > :last-child {
  margin-bottom: 0;
}

#mjyxixwoef .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#mjyxixwoef .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#mjyxixwoef .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#mjyxixwoef .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#mjyxixwoef .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#mjyxixwoef .gt_table_body {
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

#mjyxixwoef .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#mjyxixwoef .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#mjyxixwoef .gt_center {
  text-align: center;
}

#mjyxixwoef .gt_left {
  text-align: left;
}

#mjyxixwoef .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#mjyxixwoef .gt_font_normal {
  font-weight: normal;
}

#mjyxixwoef .gt_font_bold {
  font-weight: bold;
}

#mjyxixwoef .gt_font_italic {
  font-style: italic;
}

#mjyxixwoef .gt_super {
  font-size: 65%;
}

#mjyxixwoef .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="mjyxixwoef" style="overflow-x:auto;">

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

#ndgodafxco .gt_table {
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

#ndgodafxco .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#ndgodafxco .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ndgodafxco .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ndgodafxco .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#ndgodafxco .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#ndgodafxco .gt_col_heading {
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

#ndgodafxco .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#ndgodafxco .gt_group_heading {
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

#ndgodafxco .gt_empty_group_heading {
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

#ndgodafxco .gt_striped {
  background-color: #f2f2f2;
}

#ndgodafxco .gt_from_md > :first-child {
  margin-top: 0;
}

#ndgodafxco .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ndgodafxco .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#ndgodafxco .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#ndgodafxco .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#ndgodafxco .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#ndgodafxco .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#ndgodafxco .gt_table_body {
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

#ndgodafxco .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#ndgodafxco .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#ndgodafxco .gt_center {
  text-align: center;
}

#ndgodafxco .gt_left {
  text-align: left;
}

#ndgodafxco .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ndgodafxco .gt_font_normal {
  font-weight: normal;
}

#ndgodafxco .gt_font_bold {
  font-weight: bold;
}

#ndgodafxco .gt_font_italic {
  font-style: italic;
}

#ndgodafxco .gt_super {
  font-size: 65%;
}

#ndgodafxco .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ndgodafxco" style="overflow-x:auto;">

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
