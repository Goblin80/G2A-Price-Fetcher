@echo off

MD ProductCrawl

echo Start?
pause

FOR /F %%i IN (list-ID-only.org) DO START /B crawl-dump.bat %%i
exit