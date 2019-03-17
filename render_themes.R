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
