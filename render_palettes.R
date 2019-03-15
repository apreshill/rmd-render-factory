purrr::walk(
  .x = c("magma", "inferno", "plasma", "viridis", "cividis"),
  ~ rmarkdown::render(
    "index.Rmd",
    output_file = glue::glue("{.}.html"),
    output_dir = "gallery/viridis-options/",
    output_options = list(
      toc = TRUE, 
      toc_float = TRUE,
      theme = "cosmo",
      highlight = "tango"
    ),
    params = list(dynamictitle = glue::glue("Visualizing Texas: viridis color palette `{.}`"),
                  viridis_palette = .)
  )
)
