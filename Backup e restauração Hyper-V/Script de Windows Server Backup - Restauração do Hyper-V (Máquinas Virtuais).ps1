## Script de Windows Server Backup - Restauração do Hyper-V (Máquinas Virtuais) - Créditos Gabriel Luiz - www.gabrielluiz.com ##


Get-WBBackupset # Verifica as versões de backup disponíveis.

$myBackup = Get-WBBackupSet # Atribuimos os backups a variável $myBackup.

$myBackup | fl BackupTime,Application # Verificamos a versão do backup com base na hora de execução do backup e seus aplicativos.

$myBackup[3].Application.Component[1] # Selecionamos a versão do backup e o componente que desejamos restaurar. 

Start-WBHyperVRecovery -BackupSet $myBackup[3] –VMInBackup $myBackup[3].Application.Component[1] # Inicia a restauração da máquina 



<# 

Referências:


https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/Get-WBBackupset?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/start-wbbackup?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815


#>