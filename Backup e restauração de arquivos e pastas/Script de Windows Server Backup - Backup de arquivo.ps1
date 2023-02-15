## Script de Windows Server Backup - Backup de arquivo - Créditos Gabriel Luiz - www.gabrielluiz.com ##


$Policy = New-WBPolicy # Crie um objeto de política vazio. Variável $Policy.

$Filespec = New-WBFileSpec -FileSpec C:\Exemplo\1.bmp # Especifica o arquivo que será realizado o backup.

$volumeBackupLocation = New-WBBackupTarget -VolumePath D: # Especifica o local aonde será armazenado o backup.

Add-WBFileSpec -Policy $Policy -FileSpec $FileSpec # Especifica qual será o objeto do backup. Variável $Filespec.

Add-WBBackupTarget -Policy $Policy -Target $volumeBackupLocation # Especifica qual será o local do backup. Variável $volumeBackupLocation.

Start-WBBackup -Policy $policy # Especifica qual será a política de backup que será inicializada. Variável $policy.


<# 

Referências:


https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbpolicy?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbfilespec?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbbackuptarget?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/add-wbfilespec?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/add-wbbackuptarget?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/start-wbbackup?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

#>