# disable_smb1server

With the release of yet another malware attack, the SMB1 protocol is causing more damage than good.

This cookbook has two functions:
- Use Inspec to check if the SMB1 parameter is present and set to '0'
- Use Chef to enforce the SMB1 parameter.

This registry_key can be present on all Windows operating systems from Windows XP to 2016. Later versions, like Windows 2016, ship with SMB1 disabled by the default. Running this cookbook on a Windows 2016 Server instance just explicitly expects that behavior.
