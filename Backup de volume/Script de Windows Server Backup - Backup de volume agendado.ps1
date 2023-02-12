## Script de Windows Server Backup - Backup de volume agendado - Créditos Gabriel Luiz - www.gabrielluiz.com ##


$Policy = New-WBPolicy # Crie um objeto de política vazio. Variável $Policy.

$volume = Get-WBVolume -VolumePath C: # Seleciona o volume que será realizado o backup.

Add-WBVolume -Policy $Policy -Volume $volume # Especifica o volume que será realizado o backup.

$target = New-WBBackupTarget -VolumePath D: # Seleciona o volume que será armazenado o backup.

Add-WBBackupTarget -Policy $Policy -Target $target # Especifica o local aonde será armazenado o backup.

Set-WBSchedule -Policy $Policy 09:00, 19:00 # Especifica qual será o horário do backup, Neste exemplo será as 09:00 e 19:00 horas.

Set-WBPolicy -Policy $Policy # Salva a política de backup.


<# 

Referências: 


https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbpolicy?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/get-wbvolume?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/add-WBVolume?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbbackuptarget?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/add-wbbackuptarget?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/set-wbschedule?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/set-wbpolicy?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

#>