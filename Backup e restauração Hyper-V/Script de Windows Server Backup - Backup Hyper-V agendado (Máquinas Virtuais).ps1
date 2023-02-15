## Script de Windows Server Backup - Backup Hyper-V agendado (Máquinas Virtuais) - Créditos Gabriel Luiz - www.gabrielluiz.com ##

$Policy = New-WBPolicy # Crie um objeto de política vazio. Variável $Policy.

$VirtualMachines = Get-WBVirtualMachine # Verifica as máquinas virtuais no host de Hyper-V e adiciona na variável $VirtualMachines.

Add-WBVirtualMachine -Policy $Policy -VirtualMachine $VirtualMachines # Adiciona as máquinas virtuais a política de backup. Variável $VirtualMachines.

$volumeBackupLocation = New-WBBackupTarget -VolumePath D: # Especifica o local aonde será armazenado o backup.

Add-WBBackupTarget -Policy $Policy -Target $volumeBackupLocation # Especifica qual será o local do backup. Variável $volumeBackupLocation.

Set-WBSchedule -Policy $Policy 09:00, 19:00 # Especifica qual será o horário do backup, Neste exemplo será as 09:00 e 19:00 horas.

Set-WBPolicy -Policy $Policy # Salva a política de backup.


<# 

Referências:


https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbpolicy?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/get-wbvirtualmachine?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/add-wbvirtualmachine?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbbackuptarget?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/add-wbbackuptarget?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/set-wbschedule?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/set-wbpolicy?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

#>