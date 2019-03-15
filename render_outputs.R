doc_outputs <- c("html_notebook", "html_document", "pdf_document", 
                 "word_document", "odt_document", "rtf_document", "github_document")

purrr::walk(
  .x = doc_outputs,
  ~ rmarkdown::render(
    "index.Rmd",
    output_dir = "gallery/outputs/docs/",
    output_format = .,
    params = list(dynamictitle = glue::glue("Visualizing Texas: `{.}`"))
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
    params = list(dynamictitle = glue::glue("Visualizing Texas: `{.}`"))
  )
)

