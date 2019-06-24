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



horse_tweets <- search_tweets(q = "競馬", n = 200) #テキストに"競馬"を含むツイートを200個抽出


dim(horse_tweets)
View(head(horse_tweets))
horse_tweets = as.data.frame(horse_tweets)
str(horse_tweets)

table(str_sub(as.character(horse_tweets$created_at), 12, 16))

horse_names = c("リスグラシュー", "キセキ")
horse_tweets = list()
for (i in 1:2){
  horse_name = horse_names[[i]]
  horse_tweets[[i]] <- search_tweets(q = as.character(horse_name), n = 100) 
}