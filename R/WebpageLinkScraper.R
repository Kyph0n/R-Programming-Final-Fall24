# Scraping Tool for Links from a Webpage
linkScraper <- function(url) {
  library(rvest)
  # Read the webpage
  page <- read_html(url)
  # Extract the links
  links <- page %>% html_nodes("a") %>% html_attr("href")
  return(links)
}
