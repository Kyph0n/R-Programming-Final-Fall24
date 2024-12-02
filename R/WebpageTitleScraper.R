#' @title WebpageTitleScraper
#' @description This function scrapes the titles of a webpage.
#' @param url The URL of the webpage.
#' @return A character vector containing the titles of the webpage.

titleScraper <- function(url) {
  library(rvest)
  # Read the webpage
  page <- read_html(url)
  # Extract the titles
  titles <- page %>% html_nodes("h1, h2, h3") %>% html_text()
  return(titles)
}
