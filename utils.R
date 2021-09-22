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


library(htmltools)

# Generate HTML for a 4-wide bootstrap thumbnail
thumbnail <- function(title, img, href, caption = TRUE) {
  div(class = "col-sm-4",
      a(class = "thumbnail", title = title, href = href,
        img(src = img),
        div(class = ifelse(caption, "caption", ""),
            ifelse(caption, title, "")
        )
      )
  )
}

# Generate HTML for several rows of 4-wide bootstrap thumbnails 
thumbnails <- function(thumbs) {
  
  # capture arguments and setup rows to return
  numThumbs <- length(thumbs)
  fullRows <- numThumbs / 3
  rows <- tagList()
  
  # add a row of thumbnails
  addRow <- function(first, last) {
    rows <<- tagAppendChild(rows, div(class = "row", thumbs[first:last]))
  }
  
  # handle full rows
  for (i in 1:fullRows) {
    last <- i * 3
    first <- last-2
    addRow(first, last)
  }
  
  # check for leftovers
  leftover <- numThumbs %% 3
  if (leftover > 0) {
    last <- numThumbs
    first <- last - leftover + 1
    addRow(first, last)
  }
  
  # return the rows!
  rows
}

# Generate HTML for examples
examples <- function(caption = TRUE, showcaseOnly = FALSE, shinyOnly = FALSE) {
  
  # read examples into data frame (so we can easily sort/filter/etc)
  examples <- yaml::yaml.load_file("examples.yml")
  examples <- plyr::ldply(examples, data.frame, stringsAsFactors=FALSE)
  
  # filter if requested
  if (showcaseOnly)
    examples <- subset(examples, examples$showcase == TRUE)
  if (shinyOnly)
    examples <- subset(examples, examples$shiny == TRUE)
  
  # convert to list for thumbnail generation
  examples <- apply(examples, 1, function(r) { 
    list(title = r["title"],
         img = r["img"],
         href = r["href"]) 
  })
  
  thumbnails(lapply(examples, function(x) {
    thumbnail(title = x$title, 
              img = x$img, 
              href = x$href, 
              caption = caption)
  }))
}

