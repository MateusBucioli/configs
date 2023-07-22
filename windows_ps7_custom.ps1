if(test-path -PathType container $PROFILE) {
      New-Item -ItemType Directory -Path $PROFILE
}

$profileContent = @"

Invoke-Expression (&starship init powershell)

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Cria um alias para utilizar o comando docker em uma distribuicao WSL2
# Altere o valor do parametro -d (ex: Ubuntu-22.04) para o nome da distribuicao desejada (utilize wsl -l para visualizar o nome de suas distros)
#function wsl-docker {
#	param(
#		[Parameter(ValueFromRemainingArguments=$true)]
#		$params
#	)
#	wsl -d Ubuntu-22.04 --exec docker $params
#}
#New-Alias docker wsl-docker
"@

Add-Content -Path $PROFILE -Value $profileContent
