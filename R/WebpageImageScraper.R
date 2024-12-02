# Scraping Tool for Images from a Webpage
imageScraper <- function(url) {
  library(rvest)
  # Read the webpage
  page <- read_html(url)
  # Extract the images
  images <- page %>% html_nodes("img") %>% html_attr("src")
  return(images)
}
