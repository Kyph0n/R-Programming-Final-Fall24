# Scraping Tool for Tables from a Webpage
tableScraper <- function(url) {
  library(rvest)
  # Read the webpage
  page <- read_html(url)
  # Extract the tables
  tables <- page %>% html_nodes("table") %>% html_table()
  return(tables)
}