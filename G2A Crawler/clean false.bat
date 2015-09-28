@echo off

SETlocal EnableDelayedExpansion

SET DirectoryNm=ProductCrawl

FOR /F %%i IN ('DIR /B %DirectoryNm%') DO (
	REM Read the first line
	SET /p j= < %DirectoryNm%\%%i
	IF "!j!" EQU "false" (
		del %DirectoryNm%\%%i
	) ELSE (
		REM jq .name %DirectoryNm%\%%i > %DirectoryNm%\formatted-%%i
		jq .name %DirectoryNm%\%%i > %DirectoryNm%\formatted-%%i
		SET /p a=<%DirectoryNm%\formatted-%%i
		SET b=%%i
		echo !b:~0,-4!, !a! > %DirectoryNm%\formatted-%%i
	)
)

pause