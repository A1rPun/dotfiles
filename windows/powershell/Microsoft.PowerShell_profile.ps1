# Linux:   ~/.config/powershell/Microsoft.PowerShell_profile.ps1
# Windows: %USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

function prompt {
  r41nb0w
  " "
}

function r41nb0w {
  $MachineName = [Environment]::MachineName
  $UserName = [Environment]::UserName

  try {
    $IsAdmin = (New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
  }
  catch {
    $IsAdmin = ""
  }

  Write-Host "┌─[" -ForegroundColor Red -NoNewline
  Write-Host "$MachineName" -ForegroundColor DarkYellow -NoNewline
  Write-Host "]─[" -ForegroundColor Yellow -NoNewline
  Write-Host "$UserName" -ForegroundColor Green -NoNewline
  Write-Host "]─[" -ForegroundColor Cyan -NoNewline
  Write-Host "$pwd" -ForegroundColor Blue -NoNewline
  Write-Host "]" -ForegroundColor Magenta
  Write-Host "└»" -ForegroundColor Red -NoNewline
  Write-Host "$IsAdmin" -ForegroundColor Red -NoNewline
}
