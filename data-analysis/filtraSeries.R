library(dplyr)
library(tidyr)
library(readr)

library(knitr)

series <- read.csv("../data/series_from_imdb.csv", encoding = "UTF-8" )
series_filtradas <- series %>% 
  filter(series_name %in% c("Supernatural", "Mr Robot","Orphan Black","Sherlock", "CSI Las Vegas"))%>%
  select(c(series_name,Episode,series_ep,season,season_ep,UserRating,UserVotes)) %>%
  write_csv("../data/series_filtradas.csv")
