<# if (!(Get-Module "oh-my-posh")) {
    Install-Module oh-my-posh -Scope CurrentUser -Force
}

if (!(Get-Module "posh-git")) {
    Install-Module -Name posh-git -Scope CurrentUser -Force
}

if (!(Get-Module "Terminal-Icons")) {
    Install-Module -Name Terminal-Icons -Scope CurrentUser -Force
} #>

clear

# Modules
Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons

# Prompt
$omp_config = Join-Path $PSScriptRoot "\.dandresrp.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
$env:POSH_GIT_ENABLED = $true

$pwshconfig = Join-Path $HOME "\.config\powershell\user_profile.ps1"
$pwshpath = Join-Path $HOME "\.config\powershell\"

# Aliases
#Set-Alias vim nvim
#Set-Alias ll ls
#Set-Alias g git
Set-Alias touch ni