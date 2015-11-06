::
:: postinstall : Additional tool with apt-cyg
::
:: The MIT License (MIT)
::
:: Copyright (c) 2015 github.com/balanx/
::
@echo OFF
cls & cd
set rootdir=%cd%
xcopy /y /e /h /i /r  .\var\cache\setup\postinstall\*.*
pause
bin\dash.exe /bin/postinstall
