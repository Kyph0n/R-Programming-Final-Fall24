# Scraping Tool for Titles from a Webpage
titleScraper <- function(url) {
  library(rvest)
  # Read the webpage
  page <- read_html(url)
  # Extract the titles
  titles <- page %>% html_nodes("h1, h2, h3") %>% html_text()
  return(titles)
}
