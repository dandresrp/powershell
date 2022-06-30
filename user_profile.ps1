Import-Module -Name Terminal-Icons

$pwshconfig = Join-Path $HOME "\.config\powershell\user_profile.ps1"
$pwshpath = Join-Path $HOME "\.config\powershell\"

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\robbyrussel.omp.json" | Invoke-Expression

<# Aliases #>
Set-Alias touch ni
Set-Alias notepad++ "C:\Program Files (x86)\Notepad++\notepad++.exe"