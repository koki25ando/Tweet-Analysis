library(tidyverse)
library(rtweet)

appname <- "Nike_Tweets_Analysis" # name of application
key <- "hIE9CVVsHFsGPWHsvjj9vc52X" # your api application key
secret <- "I3CvypiOgfyjck9DDn0RsOKvJAUveAS3krFOK9ShLscd4iVie1" # api secret
at <- "2183834275-Tdz35pNu5m4SLJDLeqSQgLNixCGbnGpwTWYprV7" #access token
as <- "2ymbDG538YprpMCQgoRJQYo1xLIydZixEAABlze7YFNEV" # access secret

twitter_token <- rtweet::create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret,
  access_token = at, 
  access_secret = as)



horse_tweets <- search_tweets(q = "競馬", n = 200) #テキストに"競馬"を含むツイートを20,000個抽出
horse_tweets$text
