purrr::walk(
  .x = as.list(rmarkdown:::themes()),
  ~ rmarkdown::render(
    "index.Rmd",
    output_file = glue::glue("theme_{.}.html"),
    output_dir = "gallery-theme/",
    output_options = list(
      toc = TRUE, 
      toc_float = TRUE,
      theme = .x
    ),
    params = list(dynamictitle = glue::glue("Visualizing the ocean floor: `{.}` theme"))
  )
)
