Import-Module -Name Terminal-Icons

$ENV:STARSHIP_CONFIG = "$HOME\.config\powershell\starship.toml"
Invoke-Expression (&starship init powershell)

$pwshconfig = Join-Path $HOME "\.config\powershell\user_profile.ps1"
$pwshpath = Join-Path $HOME "\.config\powershell\"

<# Aliases #>
Set-Alias touch ni
Set-Alias vim nvim
