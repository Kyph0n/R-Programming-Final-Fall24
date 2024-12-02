#' @title Webpage Table Scraper
#' @description This function scrapes the tables of a webpage.
#' @param url The URL of the webpage.
#' @return A list containing the tables of the webpage.

tableScraper <- function(url) {
  library(rvest)
  # Read the webpage
  page <- read_html(url)
  # Extract the tables
  tables <- page %>% html_nodes("table") %>% html_table()
  return(tables)
}
