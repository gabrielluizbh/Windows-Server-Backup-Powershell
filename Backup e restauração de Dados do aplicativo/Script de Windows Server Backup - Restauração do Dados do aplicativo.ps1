## Script de Windows Server Backup - Restauração do Estado do Sistema - Créditos Gabriel Luiz - www.gabrielluiz.com ##


Get-WBBackupSet # Verifica as versões de backup disponíveis.

$myBackup = Get-WBBackupSet | Where-Object VersionId -eq 10/17/2022-23:08 # Seleciona a versão do backup a ser restaurada.

$myApp = $myBackup.Application | Where-Object Identifier -eq Registry # Seleciona o aplicativo a ser restaurado.

Start-WBSystemStateRecovery -BackupSet $myBackup # Inicia o processo de restauração dos Dados do aplicativo.


<# 

Referências:


https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/Get-WBBackupset?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/start-wbbackup?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815


#>