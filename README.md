
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

#vgstxfatrq .gt_table {
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

#vgstxfatrq .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#vgstxfatrq .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#vgstxfatrq .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#vgstxfatrq .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#vgstxfatrq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#vgstxfatrq .gt_col_heading {
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

#vgstxfatrq .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#vgstxfatrq .gt_group_heading {
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

#vgstxfatrq .gt_empty_group_heading {
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

#vgstxfatrq .gt_striped {
  background-color: #f2f2f2;
}

#vgstxfatrq .gt_from_md > :first-child {
  margin-top: 0;
}

#vgstxfatrq .gt_from_md > :last-child {
  margin-bottom: 0;
}

#vgstxfatrq .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#vgstxfatrq .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#vgstxfatrq .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#vgstxfatrq .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#vgstxfatrq .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#vgstxfatrq .gt_table_body {
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

#vgstxfatrq .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#vgstxfatrq .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#vgstxfatrq .gt_center {
  text-align: center;
}

#vgstxfatrq .gt_left {
  text-align: left;
}

#vgstxfatrq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#vgstxfatrq .gt_font_normal {
  font-weight: normal;
}

#vgstxfatrq .gt_font_bold {
  font-weight: bold;
}

#vgstxfatrq .gt_font_italic {
  font-style: italic;
}

#vgstxfatrq .gt_super {
  font-size: 65%;
}

#vgstxfatrq .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="vgstxfatrq" style="overflow-x:auto;">

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

#psfykjtaln .gt_table {
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

#psfykjtaln .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#psfykjtaln .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#psfykjtaln .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#psfykjtaln .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#psfykjtaln .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#psfykjtaln .gt_col_heading {
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

#psfykjtaln .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#psfykjtaln .gt_group_heading {
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

#psfykjtaln .gt_empty_group_heading {
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

#psfykjtaln .gt_striped {
  background-color: #f2f2f2;
}

#psfykjtaln .gt_from_md > :first-child {
  margin-top: 0;
}

#psfykjtaln .gt_from_md > :last-child {
  margin-bottom: 0;
}

#psfykjtaln .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#psfykjtaln .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#psfykjtaln .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#psfykjtaln .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#psfykjtaln .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#psfykjtaln .gt_table_body {
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

#psfykjtaln .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#psfykjtaln .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#psfykjtaln .gt_center {
  text-align: center;
}

#psfykjtaln .gt_left {
  text-align: left;
}

#psfykjtaln .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#psfykjtaln .gt_font_normal {
  font-weight: normal;
}

#psfykjtaln .gt_font_bold {
  font-weight: bold;
}

#psfykjtaln .gt_font_italic {
  font-style: italic;
}

#psfykjtaln .gt_super {
  font-size: 65%;
}

#psfykjtaln .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="psfykjtaln" style="overflow-x:auto;">

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

#ruqjxxbchi .gt_table {
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

#ruqjxxbchi .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#ruqjxxbchi .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ruqjxxbchi .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ruqjxxbchi .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#ruqjxxbchi .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#ruqjxxbchi .gt_col_heading {
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

#ruqjxxbchi .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#ruqjxxbchi .gt_group_heading {
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

#ruqjxxbchi .gt_empty_group_heading {
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

#ruqjxxbchi .gt_striped {
  background-color: #f2f2f2;
}

#ruqjxxbchi .gt_from_md > :first-child {
  margin-top: 0;
}

#ruqjxxbchi .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ruqjxxbchi .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#ruqjxxbchi .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#ruqjxxbchi .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#ruqjxxbchi .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#ruqjxxbchi .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#ruqjxxbchi .gt_table_body {
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

#ruqjxxbchi .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#ruqjxxbchi .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#ruqjxxbchi .gt_center {
  text-align: center;
}

#ruqjxxbchi .gt_left {
  text-align: left;
}

#ruqjxxbchi .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ruqjxxbchi .gt_font_normal {
  font-weight: normal;
}

#ruqjxxbchi .gt_font_bold {
  font-weight: bold;
}

#ruqjxxbchi .gt_font_italic {
  font-style: italic;
}

#ruqjxxbchi .gt_super {
  font-size: 65%;
}

#ruqjxxbchi .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="ruqjxxbchi" style="overflow-x:auto;">

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

#dnbrelcsgj .gt_table {
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

#dnbrelcsgj .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#dnbrelcsgj .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#dnbrelcsgj .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#dnbrelcsgj .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#dnbrelcsgj .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#dnbrelcsgj .gt_col_heading {
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

#dnbrelcsgj .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#dnbrelcsgj .gt_group_heading {
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

#dnbrelcsgj .gt_empty_group_heading {
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

#dnbrelcsgj .gt_striped {
  background-color: #f2f2f2;
}

#dnbrelcsgj .gt_from_md > :first-child {
  margin-top: 0;
}

#dnbrelcsgj .gt_from_md > :last-child {
  margin-bottom: 0;
}

#dnbrelcsgj .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#dnbrelcsgj .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#dnbrelcsgj .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#dnbrelcsgj .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#dnbrelcsgj .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#dnbrelcsgj .gt_table_body {
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

#dnbrelcsgj .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#dnbrelcsgj .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#dnbrelcsgj .gt_center {
  text-align: center;
}

#dnbrelcsgj .gt_left {
  text-align: left;
}

#dnbrelcsgj .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#dnbrelcsgj .gt_font_normal {
  font-weight: normal;
}

#dnbrelcsgj .gt_font_bold {
  font-weight: bold;
}

#dnbrelcsgj .gt_font_italic {
  font-style: italic;
}

#dnbrelcsgj .gt_super {
  font-size: 65%;
}

#dnbrelcsgj .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>

<div id="dnbrelcsgj" style="overflow-x:auto;">

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
