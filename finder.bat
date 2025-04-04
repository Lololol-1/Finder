@echo off
start cmd /k "netsh wlan show profiles"

:menu
cls
echo  oooooooooo.		.o			oooo		
echo `888'   `Y8b	 .d88			`888		
echo  888	 888   .d'888	.ooooo.  888  oooo  
echo  888oooo888' .d'  888   d88' `"Y8  888 .8P'   
echo  888	`88b 88ooo888oo 888		888888.	
echo  888	.88P	  888   888   .o8  888 `88b.  
echo  o888bood8P'	  o888o  `Y8bod8P' o888o o888o 
											  
set /p saved="SSID ? : "(
netsh wlan show profile name="%saved%" key=clear 
echo click any key to try again
pause > nul
) else (
echo.
goto menu
