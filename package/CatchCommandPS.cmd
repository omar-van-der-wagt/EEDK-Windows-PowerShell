:: 2023-02-01 Omar van der Wagt
@echo off

del %temp%\EEDK_script.log
del %temp%\script.ps1

echo %* 1>> %temp%\EEDK_script.log 2>&1
set p=%*
set s=%p:~0,2%
set e=%p:~-4%
if /i "%s%"=="\\" (
	if /i "%e%"==".ps1" (
		echo Run script file %* 1>> %temp%\EEDK_script.log 2>&1
		::powershell.exe -executionpolicy bypass -windowstyle hidden -file %* 1>> %temp%\EEDK_script.log 2>&1
		echo f | xcopy /y /c /r /f "%*" "%temp%\script.ps1" 1>> %temp%\EEDK_script.log 2>&1
		powershell.exe -executionpolicy bypass -windowstyle hidden -file %temp%\script.ps1 1>> %temp%\EEDK_script.log 2>&1
		del %temp%\script.ps1 1>> %temp%\EEDK_script.log 2>&1
	) else (
		GOTO runCommand
	)
) else (
	GOTO runCommand
)
goto:eof

:runCommand
	echo Run command %* 1>> %temp%\EEDK_script.log 2>&1
	powershell.exe -executionpolicy bypass -windowstyle hidden -command "%*" 1>> %temp%\EEDK_script.log 2>&1
goto:eof

Exit /B 0
