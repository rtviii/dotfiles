For the amount of columns in that csv, the interesting stuff seems somewhat slim.

We got ~3k replies and retweets, mostly from UK,USA,Germany,Spain,Belgium, Netherlands.

According to the twitter's sentiment classification we get out of the box, most (87%) of tweets(will refer to replys and retweets as tweets) are neutral with 10%/3% going to negative positive. About 35% of all tweets are no-comment retweets of the few of Isabela's tweets that got a lot of engagement.

http://twitter.com/Rajni_Gamage/statuses/1565584218763464705
http://twitter.com/AHAkramLodhi/statuses/1560109643115937793
http://twitter.com/lost_professor/statuses/1558621878041952257
http://twitter.com/FrancoisGeerolf/statuses/1568484432503242752
http://twitter.com/nbunkerauthor/statuses/1566675882802135042
http://twitter.com/DanBuk4/statuses/1567233709958467584
http://twitter.com/kuocsemajn/statuses/1565523676920963073
http://twitter.com/goethe_chan/statuses/1560066746375057408
http://twitter.com/acekatana/statuses/1557453164046995458


There are some shorthands for relevance like twitter followers, "reach" and "impressions" for each account. These have super long tails (few actual news outlets/experts with following and the majority are Joe Schmoes with less than 200 followers).


It's not a huge dataset, admittedly. I'd say we can do some NLP/clustering on it if you wanted to really juice it because the contents of those tweets which actually have text on them (about 2200/3000) is a bit richer than what twitter sentiment analysis lets on.
E.g. someone might say "We here in Germany pay higher taxes and the prices are still rising" which twitter would classify as neutral because it is factual, yet there is an obvious injustice/downside implied by the author. From skimming the text (i'll attach just that column, slightly cleaned up as `content.csv`) there is a good healthy mix of everything from "science,pragmatism,bitcoin" poop-throwing types to 100-follower accounts making long threads about economic history of their country of which this price controls episode with Isabela is just a small footnote to some passive-aggresive "oh, so now you deserve tenured professorship of X, Y and Z, right?" type of stabs at her. 

Frankly i don't have a good idea of how to chaff things like that out via NLP tools too well, but can look into it.
