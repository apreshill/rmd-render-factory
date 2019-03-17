rmarkdown::render("input/single.Rmd", 
                  output_dir = "single-output/",
                  output_options = list(
                    toc = TRUE, 
                    toc_float = TRUE,
                    theme = "flatly",
                    highlight = "tango",
                    code_download = TRUE
                  ),
                  params = list(dynamictitle = "Texas Housing Prices: flatly theme, tango highlight")
)

