#' @title Webpage Text Scraper
#' @description This function scrapes the text of a webpage.
#' @param url The URL of the webpage.
#' @return A character vector containing the text of the webpage.

textScraper <- function(url) {
  library(rvest)
  # Read the webpage
  page <- read_html(url)
  # Extract the text
  text <- page %>% html_nodes("p") %>% html_text()
  return(text)
}
