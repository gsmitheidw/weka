$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://prdownloads.sourceforge.net/weka/weka-3-8-6.zip' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $env:ProgramFiles
  url           = $url
  softwareName  = 'weka*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  checksum      = '7E57405331F01C07ED84D9E0FFA07548CDDF70877E4518FCD016C117E8C6E867'
  checksumType  = 'sha256' 

}

# Extracted path from zip includes folder hence: $env:ProgramFiles\weka-3-8-6

# Test Java exists on path (required), note javaw not java to not display a console window:
if ((Get-Command javaw -ErrorAction SilentlyContinue).Name -eq 'javaw.exe') {

Install-ChocolateyZipPackage @packageArgs

[string]$javapath = (Get-Command javaw).Path

	Install-ChocolateyShortcut `
	  -ShortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Weka 3.8.6.lnk" `
	  -TargetPath "$javapath" `
	  -WorkingDirectory "$env:ProgramFiles\weka-3-8-6" `
	  -Arguments '-jar weka.jar' `
	  -IconLocation "$env:ProgramFiles\weka-3-8-6\weka.ico" `
	  -Description 'Weka Machine Learning in Java'

}
else {

	Write-Error 'No Java runtime found on path on this system. Please amend path or install a version of Java JDK/JRE' -ErrorAction Stop

}
