@echo off

::==============================================================================================================::
SET /p NAME=Type Product Name:
SET  NAME=%NAME: =+%

curl -k -s "https://www.g2a.com/lucene/search/quick?phrase=%NAME%" | jq ".docs[] | {Name:.name, Product_ID:.id}"

SET /P ID=Type corresponding ID:
::==============================================================================================================::

curl -k -s "https://www.g2a.com/marketplace/product/auctions/?id=%ID%" | jq ".a[] | .f"

pause