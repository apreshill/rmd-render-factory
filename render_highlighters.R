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
      highlight = .x
    ),
    params = list(dynamictitle = glue::glue("Visualizing Texas: `{.}` highlighter"))
  )
)
