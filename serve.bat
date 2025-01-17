setlocal

:: Get the current folder name
for %%a in (".") do set "foldername=%%~nxa"

:: Construct the URL
set "url=http://127.0.0.1:4001/%foldername%/"

:: Start the browser with the constructed URL
start %url%

:: Start Jekyll server
bundle exec jekyll serve --port 4001

endlocal