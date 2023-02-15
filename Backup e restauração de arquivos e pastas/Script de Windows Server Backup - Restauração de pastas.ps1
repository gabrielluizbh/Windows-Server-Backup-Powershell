## Script de Windows Server Backup - Restauração de pastas - Créditos Gabriel Luiz - www.gabrielluiz.com ##


Get-WBBackupSet # Verifica as versões de backup disponíveis.

$myBackup = Get-WBBackupSet | Where-Object VersionId -eq 08/07/2022-15:25 # Seleciona a versão do backup a ser restaurada.

Start-WBFileRecovery -BackupSet $myBackup -SourcePath C:\Exemplo -Recursive -TargetPath C:\Restauração # Inicia o processo de restauração da pasta no local indicado.


<# 

Explicação do comando: 

O parâmetro –Recursive–TargetPath

No caso de uma restauração redirecionada ou uma restauração para um local diferente, o alvo será o destino dos arquivos recuperados.


O parâmetro -Option


Para definir o tipo de restauração, adicione o comando com uma das seguintes configurações:


-Option SkipIfExists

Esta configuração só restaurará arquivos que foram movidos ou excluídos.


-Option CreateCopyIfExists

Esta é uma configuração padrão. Se o arquivo existir, essa configuração renomeará o arquivo restaurado.


-Option OverwriteIfExists


Se o arquivo existir, esta configuração irá substituí-lo com o arquivo restaurado.



Exemplo do uso do parâmetro -Option : Start-WBFileRecovery -BackupSet $myBackup -SourcePath C:\Exemplo -Recursive -TargetPath C:\ -Option CreateCopyIfExists



#>


<# 

Referências:


https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/get-wbbackupset?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/windowsserverbackup/start-wbfilerecovery?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815


#>