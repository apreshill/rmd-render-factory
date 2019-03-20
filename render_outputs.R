doc_outputs <- c("html_notebook", "html_document", "pdf_document", 
                 "word_document", "odt_document", "rtf_document", "github_document")

purrr::walk(
  .x = doc_outputs,
  ~ rmarkdown::render(
    "input/single.Rmd",
    output_file = glue::glue("{.}"),
    output_dir = "gallery/outputs/docs/",
    output_format = .,
    params = list(dynamictitle = glue::glue("Texas Housing Prices: `{.}`"))
    )
)

slide_outputs <- c("ioslides_presentation", "slidy_presentation", "beamer_presentation", "powerpoint_presentation")

purrr::walk(
  .x = slide_outputs,
  ~ rmarkdown::render(
    "input/single.Rmd",
    output_file = glue::glue("{.}"),
    output_dir = "gallery/outputs/slides/",
    output_format = .,
    params = list(dynamictitle = glue::glue("Texas Housing Prices: `{.}`"))
  )
)

