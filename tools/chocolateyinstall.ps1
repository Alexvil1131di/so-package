$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'temp.exe'

$packagename = 'temp'

$packageArgs = @{
  packageName   = $packagename
  #unzipLocation = $toolsDir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  file         = $fileLocation

  softwareName  = 'temp*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique


  validExitCodes= @(0)
  silentArgs   = '/S'           # NSIS

}

Install-ChocolateyPackage @packageArgs # https://docs.chocolatey.org/en-us/create/functions/install-chocolateypackage
