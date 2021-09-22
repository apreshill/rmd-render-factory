themes <- as.list(rmarkdown:::themes())

for (i in themes){
  rmarkdown::render('input/single.Rmd',  
                    output_file =  glue::glue("{i}"),
                    output_dir = "test-for-loop/themes/",
                    output_options = list(
                      toc = TRUE, 
                      toc_float = TRUE,
                      code_download = TRUE,
                      theme = i)
                    )
}

palettes <- c("magma", "inferno", "plasma", "viridis", "cividis")

for (i in palettes){
  rmarkdown::render('input/single.Rmd',  
                    output_file =  glue::glue("{i}"),
                    output_dir = "test-for-loop/palettes/")
}

both <- expand.grid(themes, palettes)
for (i in both){
  rmarkdown::render('input/single.Rmd',  
                    output_file =  glue::glue("{i}"),
                    output_dir = "test-for-loop/both/")
}
