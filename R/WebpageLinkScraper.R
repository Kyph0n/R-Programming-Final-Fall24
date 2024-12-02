#' @title Webpage Link Scraper
#' @description This function scrapes the links of a webpage.
#' @param url The URL of the webpage.
#' @return A character vector containing the links of the webpage.

linkScraper <- function(url) {
  library(rvest)
  # Read the webpage
  page <- read_html(url)
  # Extract the links
  links <- page %>% html_nodes("a") %>% html_attr("href")
  return(links)
}
