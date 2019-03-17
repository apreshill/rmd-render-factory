
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

<table class="table table-hover table-condensed" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;">

List of
themes

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

<table class="table table-hover table-condensed" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;">

List of
highlighters

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/default.html" style="     ">default</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/espresso.html" style="     ">espresso</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/haddock.html" style="     ">haddock</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/kate.html" style="     ">kate</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/monochrome.html" style="     ">monochrome</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/pygments.html" style="     ">pygments</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/tango.html" style="     ">tango</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/highlighters/zenburn.html" style="     ">zenburn</a>

</td>

</tr>

</tbody>

</table>

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

<table class="table table-hover table-condensed" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;">

List of
outputs

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/docs/github_document.html" style="     ">github\_document</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/docs/html_document.html" style="     ">html\_document</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/docs/html_notebook.nb.html" style="     ">html\_notebook.nb</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/exts/flexdashboard::flex_dashboard.html" style="     ">flexdashboard::flex\_dashboard</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/exts/revealjs::revealjs_presentation.html" style="     ">revealjs::revealjs\_presentation</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/slides/ioslides_presentation.html" style="     ">ioslides\_presentation</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/outputs/slides/slidy_presentation.html" style="     ">slidy\_presentation</a>

</td>

</tr>

</tbody>

</table>

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

<table class="table table-hover table-condensed" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;">

List of
viridis-options

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/viridis-options/cividis.html" style="     ">cividis</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/viridis-options/inferno.html" style="     ">inferno</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/viridis-options/magma.html" style="     ">magma</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/viridis-options/plasma.html" style="     ">plasma</a>

</td>

</tr>

<tr>

<td style="text-align:left;">

<a href="https://apreshill.github.io/rmd-render-factory/gallery/viridis-options/viridis.html" style="     ">viridis</a>

</td>

</tr>

</tbody>

</table>

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
