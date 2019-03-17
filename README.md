
Herein lies a `README` to help you navigate the galleries.

# The single file

All of the links below derive from a single R Markdown file titled
`index.Rmd`. Here is the YAML:

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

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#zlzkbxqcvr .gt_table {
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

#zlzkbxqcvr .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#zlzkbxqcvr .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#zlzkbxqcvr .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#zlzkbxqcvr .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#zlzkbxqcvr .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#zlzkbxqcvr .gt_col_heading {
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

#zlzkbxqcvr .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#zlzkbxqcvr .gt_group_heading {
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

#zlzkbxqcvr .gt_empty_group_heading {
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

#zlzkbxqcvr .gt_striped {
  background-color: #f2f2f2;
}

#zlzkbxqcvr .gt_from_md > :first-child {
  margin-top: 0;
}

#zlzkbxqcvr .gt_from_md > :last-child {
  margin-bottom: 0;
}

#zlzkbxqcvr .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#zlzkbxqcvr .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#zlzkbxqcvr .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#zlzkbxqcvr .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#zlzkbxqcvr .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#zlzkbxqcvr .gt_table_body {
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

#zlzkbxqcvr .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#zlzkbxqcvr .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#zlzkbxqcvr .gt_center {
  text-align: center;
}

#zlzkbxqcvr .gt_left {
  text-align: left;
}

#zlzkbxqcvr .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#zlzkbxqcvr .gt_font_normal {
  font-weight: normal;
}

#zlzkbxqcvr .gt_font_bold {
  font-weight: bold;
}

#zlzkbxqcvr .gt_font_italic {
  font-style: italic;
}

#zlzkbxqcvr .gt_super {
  font-size: 65%;
}

#zlzkbxqcvr .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="zlzkbxqcvr" style="overflow-x:auto;">

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

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/cerulean.html">cerulean</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/cosmo.html">cosmo</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/darkly.html">darkly</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/default.html">default</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/flatly.html">flatly</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/journal.html">journal</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/lumen.html">lumen</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/paper.html">paper</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/readable.html">readable</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/sandstone.html">sandstone</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/simplex.html">simplex</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/spacelab.html">spacelab</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/united.html">united</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/themes/yeti.html">yeti</a>

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

    purrr::walk(
      .x = as.list(rmarkdown:::themes()),
      ~ rmarkdown::render(
        "index.Rmd",
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

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ortlqewmly .gt_table {
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

#ortlqewmly .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#ortlqewmly .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ortlqewmly .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ortlqewmly .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#ortlqewmly .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#ortlqewmly .gt_col_heading {
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

#ortlqewmly .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#ortlqewmly .gt_group_heading {
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

#ortlqewmly .gt_empty_group_heading {
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

#ortlqewmly .gt_striped {
  background-color: #f2f2f2;
}

#ortlqewmly .gt_from_md > :first-child {
  margin-top: 0;
}

#ortlqewmly .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ortlqewmly .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#ortlqewmly .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#ortlqewmly .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#ortlqewmly .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#ortlqewmly .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#ortlqewmly .gt_table_body {
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

#ortlqewmly .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#ortlqewmly .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#ortlqewmly .gt_center {
  text-align: center;
}

#ortlqewmly .gt_left {
  text-align: left;
}

#ortlqewmly .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ortlqewmly .gt_font_normal {
  font-weight: normal;
}

#ortlqewmly .gt_font_bold {
  font-weight: bold;
}

#ortlqewmly .gt_font_italic {
  font-style: italic;
}

#ortlqewmly .gt_super {
  font-size: 65%;
}

#ortlqewmly .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ortlqewmly" style="overflow-x:auto;">

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

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/default.html">default</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/espresso.html">espresso</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/haddock.html">haddock</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/kate.html">kate</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/monochrome.html">monochrome</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/pygments.html">pygments</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/tango.html">tango</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/zenburn.html">zenburn</a>

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

    purrr::walk(
      .x = as.list(rmarkdown:::highlighters()),
      ~ rmarkdown::render(
        "index.Rmd",
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

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#uvcewpyziz .gt_table {
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

#uvcewpyziz .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#uvcewpyziz .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#uvcewpyziz .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#uvcewpyziz .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#uvcewpyziz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#uvcewpyziz .gt_col_heading {
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

#uvcewpyziz .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#uvcewpyziz .gt_group_heading {
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

#uvcewpyziz .gt_empty_group_heading {
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

#uvcewpyziz .gt_striped {
  background-color: #f2f2f2;
}

#uvcewpyziz .gt_from_md > :first-child {
  margin-top: 0;
}

#uvcewpyziz .gt_from_md > :last-child {
  margin-bottom: 0;
}

#uvcewpyziz .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#uvcewpyziz .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#uvcewpyziz .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#uvcewpyziz .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#uvcewpyziz .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#uvcewpyziz .gt_table_body {
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

#uvcewpyziz .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#uvcewpyziz .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#uvcewpyziz .gt_center {
  text-align: center;
}

#uvcewpyziz .gt_left {
  text-align: left;
}

#uvcewpyziz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#uvcewpyziz .gt_font_normal {
  font-weight: normal;
}

#uvcewpyziz .gt_font_bold {
  font-weight: bold;
}

#uvcewpyziz .gt_font_italic {
  font-style: italic;
}

#uvcewpyziz .gt_super {
  font-size: 65%;
}

#uvcewpyziz .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="uvcewpyziz" style="overflow-x:auto;">

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

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/docs/github_document.html">github\_document</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/docs/html_document.html">html\_document</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/docs/html_notebook.nb.html">html\_notebook.nb</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/exts/flexdashboard::flex_dashboard.html">flexdashboard::flex\_dashboard</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/exts/revealjs::revealjs_presentation.html">revealjs::revealjs\_presentation</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/slides/ioslides_presentation.html">ioslides\_presentation</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/slides/slidy_presentation.html">slidy\_presentation</a>

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

    doc_outputs <- c("html_notebook", "html_document", "pdf_document", 
                     "word_document", "odt_document", "rtf_document", "github_document")
    doc_exts <- c("nb.html", "html", "pdf", "docx", "odt", "rtf", "md")
    
    purrr::walk2(
      .x = doc_outputs,
      .y = doc_exts,
      ~ rmarkdown::render(
        "index.Rmd",
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
        "index.Rmd",
        output_file = glue::glue("{.x}.{.y}"),
        output_dir = "gallery/outputs/slides/",
        output_format = .,
        params = list(dynamictitle = glue::glue("Texas Housing Prices: `{.}`"))
      )
    )

# Viridis options

<!--html_preserve-->

<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#zdqjfwybyw .gt_table {
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

#zdqjfwybyw .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#zdqjfwybyw .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#zdqjfwybyw .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#zdqjfwybyw .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#zdqjfwybyw .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#zdqjfwybyw .gt_col_heading {
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

#zdqjfwybyw .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#zdqjfwybyw .gt_group_heading {
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

#zdqjfwybyw .gt_empty_group_heading {
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

#zdqjfwybyw .gt_striped {
  background-color: #f2f2f2;
}

#zdqjfwybyw .gt_from_md > :first-child {
  margin-top: 0;
}

#zdqjfwybyw .gt_from_md > :last-child {
  margin-bottom: 0;
}

#zdqjfwybyw .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#zdqjfwybyw .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#zdqjfwybyw .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#zdqjfwybyw .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#zdqjfwybyw .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#zdqjfwybyw .gt_table_body {
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

#zdqjfwybyw .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#zdqjfwybyw .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#zdqjfwybyw .gt_center {
  text-align: center;
}

#zdqjfwybyw .gt_left {
  text-align: left;
}

#zdqjfwybyw .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#zdqjfwybyw .gt_font_normal {
  font-weight: normal;
}

#zdqjfwybyw .gt_font_bold {
  font-weight: bold;
}

#zdqjfwybyw .gt_font_italic {
  font-style: italic;
}

#zdqjfwybyw .gt_super {
  font-size: 65%;
}

#zdqjfwybyw .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="zdqjfwybyw" style="overflow-x:auto;">

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

<a href="https://apreshill.github.io/rmd-render-factory/gallery/viridis-options/cividis.html">cividis</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/viridis-options/inferno.html">inferno</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/viridis-options/magma.html">magma</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center gt_striped">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/viridis-options/plasma.html">plasma</a>

</p>

</div>

</td>

</tr>

<tr>

<td class="gt_row gt_center">

<div class="gt_from_md">

<p>

<a href="https://apreshill.github.io/rmd-render-factory/gallery/viridis-options/viridis.html">viridis</a>

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

    purrr::walk(
      .x = c("magma", "inferno", "plasma", "viridis", "cividis"),
      ~ rmarkdown::render(
        "index.Rmd",
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
