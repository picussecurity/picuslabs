Several methods were implemented to test CVE-2020-1472 Zerologon Vulnerability in an Active Directory environment. Secura published a [Python Script](https://github.com/SecuraBV/CVE-2020-1472) that utilizes the Impacket library to test the vulnerability. However, some enterprise environments prevent installing Python or Impacket for security concerns. Accordingly, we build a packed version of the testing script by using Auto-py-to-exe that gathers all Python dependencies. So, we created a directory packed that includes all dependencies to run the testing script without installing Python.

Test instructions:
1) Copy both zerologon_tester.zip and zerologon_tester.ps1 files into a computer in the domain controlled by the target Domain Controller.
2) Run the zerologon_tester.ps1 script on the PowerShell console:
```
PS C:\temp>.\zerologon_tester.ps1
[*] DC: 192.168.70.4 (DC1)
Performing authentication attempts...
============================================================================================
Success! DC can be fully compromised by a Zerologon attack.
```

Or run the script on the command shell:

```
C:\temp>powershell .\zerologon_tester.ps1
[*] DC: 192.168.70.4 (DC1)
Performing authentication attempts...
=========================================================================
Success! DC can be fully compromised by a Zerologon attack.
```
