doc_outputs <- grep('^[^_]+_(document|notebook)$', ls(asNamespace('rmarkdown')), value = TRUE)

purrr::walk(
  .x = as.list(doc_outputs),
  ~ rmarkdown::render(
    "input/single.Rmd",
    output_file = glue::glue("{.}"),
    output_dir = "gallery/outputs/docs/",
    output_format = .,
    params = list(dynamictitle = glue::glue("Texas Housing Prices: `{.}`"))
    )
)

slide_outputs <- grep('^[^_]+_(presentation)$', ls(asNamespace('rmarkdown')), value = TRUE)

purrr::walk(
  .x = as.list(slide_outputs),
  ~ rmarkdown::render(
    "input/single.Rmd",
    output_file = glue::glue("{.}"),
    output_dir = "gallery/outputs/slides/",
    output_format = .,
    params = list(dynamictitle = glue::glue("Texas Housing Prices: `{.}`"))
  )
)

