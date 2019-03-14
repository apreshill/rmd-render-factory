doc_outputs <- c("html_notebook", "html_document", "pdf_document", 
                 "word_document", "odt_document", "rtf_document", "github_document")

purrr::walk(
  .x = doc_outputs,
  ~ rmarkdown::render(
    "index.Rmd",
   # output_file = glue::glue("param_report_{.}.html"),
    output_dir = "gallery-output/docs/",
    output_format = .,
    )
)

slide_outputs <- c("ioslides_presentation", "slidy_presentation", "beamer_presentation", "powerpoint_presentation")

purrr::walk(
  .x = slide_outputs,
  ~ rmarkdown::render(
    "index.Rmd",
   # output_file = glue::glue("param_report_{.}.html"),
    output_dir = "gallery-output/slides/",
    output_format = .,
  )
)

# minimal example
purrr::walk2(
  .x = c("ioslides_presentation", "slidy_presentation", "powerpoint_presentation"),
  .y = c("html", "html", "pptx"),
  ~ rmarkdown::render(
    "index.Rmd",
    output_file = glue::glue("slide_{.x}.{.y}"),
    output_dir = "gallery-output/test/",
    output_format = .x,
  )
)



