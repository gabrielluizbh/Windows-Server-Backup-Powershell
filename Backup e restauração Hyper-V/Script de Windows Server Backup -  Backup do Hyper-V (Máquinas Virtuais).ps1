## Script de Windows Server Backup -  Backup do Hyper-V (Máquinas Virtuais) - Créditos Gabriel Luiz - www.gabrielluiz.com ##


$Policy = New-WBPolicy # Crie um objeto de política vazio. Variável $Policy.

$VirtualMachines = Get-WBVirtualMachine # Verifica as máquinas virtuais no host de Hyper-V e adiciona na variável $VirtualMachines.

Add-WBVirtualMachine -Policy $Policy -VirtualMachine $VirtualMachines # Adiciona as máquinas virtuais a política de backup. Variável $VirtualMachines.

$volumeBackupLocation = New-WBBackupTarget -VolumePath D: # Especifica o local aonde será armazenado o backup.

Add-WBBackupTarget -Policy $Policy -Target $volumeBackupLocation # Especifica qual será o local do backup. Variável $volumeBackupLocation.

Start-WBBackup -Policy $policy # Especifica qual será a política de backup que será inicializada. Variável $policy.


<# 

Referências:


https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbpolicy?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/get-wbvirtualmachine?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/add-wbvirtualmachine?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/new-wbbackuptarget?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/add-wbbackuptarget?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/start-wbbackup?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815


#>