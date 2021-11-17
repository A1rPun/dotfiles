# Linux:   ~/.config/powershell/Microsoft.PowerShell_profile.ps1
# Windows: %USERPROFILE%\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
# Windows: %USERPROFILE%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

function prompt {
  r41nb0w
  " "
}

function r41nb0w {
  $MachineName = [Environment]::MachineName
  $UserName = [Environment]::UserName

  try {
    $currentUser = New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())
    $IsAdmin = $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
  }
  catch {
    $IsAdmin = ""
  }

  Write-Host "/[" -ForegroundColor Red -NoNewline
  Write-Host "$MachineName" -ForegroundColor DarkYellow -NoNewline
  Write-Host "][" -ForegroundColor Yellow -NoNewline
  Write-Host "$UserName" -ForegroundColor Green -NoNewline
  Write-Host "][" -ForegroundColor Cyan -NoNewline
  Write-Host "$pwd" -ForegroundColor Blue -NoNewline
  Write-Host "]" -ForegroundColor Magenta
  Write-Host "\" -ForegroundColor Red -NoNewline

  if ($IsAdmin) {
    Write-Host "Elevated" -ForegroundColor Red -NoNewline
  }
  Write-Host ">" -ForegroundColor Red -NoNewline
}

function notepad++($file) {
  $programs = [Environment]::GetEnvironmentVariable('programfiles')
  try {
    & "$programs\Notepad++\notepad++.exe" $file
  } catch {
    notepad++Fallback($programs, $file)
  }
}

function notepad++Fallback($programs, $file) {
  try {
    & "$programs (x86)\Notepad++\notepad++.exe" $file
  } catch {}
}

function history_all {
  Get-Content (Get-PSReadLineOption).HistorySavePath
}

function mklink ($link, $target) {
  New-Item -Path $link -ItemType SymbolicLink -Value $target
}

function .. {
  cd ..
}

Set-Alias touch New-Item
Set-Alias grep Select-String
Set-Alias nano notepad++
Set-Alias vim nano
Set-Alias vi vim
