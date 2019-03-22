exts <- c("flexdashboard::flex_dashboard", "revealjs::revealjs_presentation",
          "pagedown::html_paged")
# won't work: any tufte

purrr::walk(
  .x = exts,
  ~ rmarkdown::render(
    "input/single.Rmd",
    output_file = glue::glue("{.}"),
    output_dir = "gallery/outputs/exts/",
    output_format = .,
    params = list(dynamictitle = glue::glue("Texas Housing Prices: `{.}`"))
    )
)

