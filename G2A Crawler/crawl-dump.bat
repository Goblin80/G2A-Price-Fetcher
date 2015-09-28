@echo off

curl -s -k "https://www.g2a.com/lucene/item/%1" -H "User-Agent: CMD" >> ProductCrawl\%1.txt

exit