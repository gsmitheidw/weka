$ErrorActionPreference = 'Stop';

Uninstall-ChocolateyZipPackage `
  -PackageName weka `
  -ZipFileName weka-3-8-5.zip `

# Clean up Start Menu Shortcut:
Remove-Item -Path "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Weka 3.8.5.lnk" -Confirm:$false

