<# Modules #>
# Import-Module posh-git
# Import-Module oh-my-posh
Import-Module -Name Terminal-Icons

<# Prompt #>
# $omp_config = Join-Path $PSScriptRoot "\.star.omp.json"
# oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
# $env:POSH_GIT_ENABLED = $true

$ENV:STARSHIP_CONFIG = "$HOME\.config\powershell\starship.toml"
Invoke-Expression (&starship init powershell)

$pwshconfig = Join-Path $HOME "\.config\powershell\user_profile.ps1"
$pwshpath = Join-Path $HOME "\.config\powershell\"

<# Aliases #>
Set-Alias touch ni
Set-Alias vim nvim
