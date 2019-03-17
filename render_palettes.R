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
