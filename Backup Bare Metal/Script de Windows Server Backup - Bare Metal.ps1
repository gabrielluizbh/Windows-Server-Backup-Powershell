## Script de Windows Server Backup - Bare Metal - Créditos Gabriel Luiz - www.gabrielluiz.com ##


$Policy = New-WBPolicy # Crie um objeto de política vazio. Variável $Policy.

Add-WBBareMetalRecovery -Policy $Policy # Adiciona a política de backup a recuperação Bare metal.

$volumeBackupLocation = New-WBBackupTarget -VolumePath D: # Especifica o local aonde será armazenado o backup.

Add-WBBackupTarget -Policy $Policy -Target $volumeBackupLocation # Especifica qual será o local do backup. Variável $volumeBackupLocation.

Start-WBBackup -Policy $policy # Especifica qual será a política de backup que será inicializada. Variável $policy.


<# 

Referências:


https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbpolicy?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/add-wbbaremetalrecovery?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbbackuptarget?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/add-wbbackuptarget?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/start-wbbackup?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

#>