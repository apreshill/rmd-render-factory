link_factory <- function(dir = "gallery", 
                         type = c("themes", "highlighters", "outputs", "viridis-options"),
                         root = "https://elastic-lovelace-155848.netlify.com/"){
  if(!missing(type) & length(type) > 1) stop("Only one 'type' allowed.")
  library(dplyr)
  type <- match.arg(type)
  html_dir <- fs::dir_ls(glue::glue("{dir}/{type}"), recursive = TRUE, glob = "*.html")
  html_items <- html_dir %>% 
    tibble::enframe(name = "rel_path", value = "junk") %>% 
    dplyr::select(-junk) %>% 
    dplyr::mutate(abs_path = glue::glue("{root}{rel_path}")) %>% 
    dplyr::mutate(label_path = rel_path %>% fs::path_file(.) %>% 
                    fs::path_ext_remove(.) %>% as.character(.)) %>% 
    dplyr::mutate(link = glue::glue("[{label_path}]({abs_path})")) %>% 
    dplyr::rename_at(vars(link), ~glue::glue("List of {type}")) %>% 
    dplyr::mutate(image_rel = as.character(fs::dir_ls(path = "thumbnails", regexp = glue::glue("{type}")))) %>% 
    dplyr::mutate(image_md = glue::glue("![]({image_rel})")) %>% 
    dplyr::mutate(image_html = glue::glue("<a href='{abs_path}'><img src='{image_rel}'></a>"))
  return(html_items)
}

#' this function takes a tibble of links from link_factory()
#' and converts to an html table
table_factory <- function(links){
  html_items <- links
  html_table <- html_items %>% 
    dplyr::select(-ends_with("_path"), -starts_with("image_")) %>% 
    gt::gt() %>% 
    gt::fmt_markdown(
      columns = contains("List")
    )
  return(html_table)
}

#' this function takes webshots of all (absolute) links
webshot_factory <- function(links){
  library(webshot)
  html_items <- links
  for_shots <- html_items %>% 
    mutate(type = fs::path_rel(rel_path, start = "gallery") %>% fs::path_dir(.))
  webshot(glue::glue("{for_shots$abs_path}"),
                   glue::glue("thumbnails/{for_shots$type}-{for_shots$label_path}.png"), 
                   cliprect = "viewport") %>% 
    resize("55%") %>%
    shrink()
}
