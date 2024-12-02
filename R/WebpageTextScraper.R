# Scraping Tool for Text from a Webpage
textScraper <- function(url) {
  library(rvest)
  # Read the webpage
  page <- read_html(url)
  # Extract the text
  text <- page %>% html_nodes("p") %>% html_text()
  return(text)
}
