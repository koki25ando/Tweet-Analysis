library(tidyverse)
library(rtweet)

appname <- "XXXX" # name of application
key <- "XXXX" # your api application key
secret <- "XXXX" # api secret
at <- "XXXX-XXXX" #access token
as <- "XXXX" # access secret

twitter_token <- rtweet::create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret,
  access_token = at, 
  access_secret = as)



horse_tweets <- search_tweets(q = "競馬", n = 200) #テキストに"競馬"を含むツイートを20,000個抽出
horse_tweets$text
