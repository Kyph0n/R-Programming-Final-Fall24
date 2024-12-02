# WebScrap
Webscrap is a website scraping tool set for non-social media websites. When gathering data it may be needed to scrape a website for data, this toolset scraps focused data off websites.

## Features
WebScrap includes the following functions:
1. WebpageTitleScraper - Scrapes elements that are considered titles
2. WebpageImageScraper - Scrapes the images and stores their URLs
3. WebpageLinkScraper - Scrapes the links
4. WebpageTextScraper - Scrapes the standard text element
5. WebpageTableScraper - Scrapes table elements

## Use Examples
Frist you choose what web element you want to scrape. For this example I want to scrape IMDB for the top TV shows which has names stores as Titles, so I will use WebpageTitleScraper as such:
<pre> topTV <- data.frame(WebpageTitleScraper("https://www.imdb.com/chart/toptv/")) </pre>

This will store the titles elements on the site into a data frame which can them be cleaned or combined with other data to house your site data.

## References
https://stackoverflow.com/questions/35690914/web-scraping-the-iis-based-website

https://www.youtube.com/watch?v=Sz9bANIXTlc&t=182s
