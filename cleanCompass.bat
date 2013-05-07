:: Batch Script to compass clean all Compass Directories
setlocal EnableDelayedExpansion
::Specifiy which locations to watch ONE location per line, no comments.
set file=C:\altiris\locations.txt
::Specifiy Ruby location
set rubyLocation=C:\Ruby200-x64\bin\
::Iterate clear locations
FOR /F %%i IN (%file%) DO (
  set watchLocation=%%i
	::Call clear and send it current watch location, and ruby location
	start cleanDirectory.CMD %watchLocation%
)
