#' @title Webpage Image Scraper
#' @description This function scrapes the images of a webpage.
#' @param url The URL of the webpage.
#' @return A character vector containing the images of the webpage.

imageScraper <- function(url) {
  library(rvest)
  # Read the webpage
  page <- read_html(url)
  # Extract the images
  images <- page %>% html_nodes("img") %>% html_attr("src")
  return(images)
}
