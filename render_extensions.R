exts <- c("flexdashboard::flex_dashboard", "revealjs::revealjs_presentation")
# won't work: any tufte
file_exts <- c("html", "html")

purrr::walk2(
  .x = exts,
  .y = file_exts,
  ~ rmarkdown::render(
    "index.Rmd",
    output_file = glue::glue("{.x}.{.y}"),
    output_dir = "gallery/outputs/exts/",
    output_format = .x,
    params = list(dynamictitle = glue::glue("Visualizing Texas: `{.x}`"))
    )
)

