rmarkdown::render("index.Rmd", 
                  output_dir = "single-output/",
                  output_options = list(
                    toc = TRUE, 
                    toc_float = TRUE,
                    theme = "flatly",
                    highlight = "tango"
                  )
)

