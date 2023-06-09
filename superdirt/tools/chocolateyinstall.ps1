$packageName= 'superdirt'

# write new paths for SuperCollider then load machine and user path values 

$scPath = Get-AppInstallLocation SuperCollider
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") + ";" + $scPath

if (!$scPath) { 
  Write-Host "SuperCollider not found. Must be installed to install SuperDirt plugin" 
  exit -1
}

### install SuperDirt
Write-Host "Supercollider path: " $scPath
$ChocolateyPackagePath = Get-ChocolateyPath -PathType 'PackagePath'
$quarkinstall_path = $ChocolateyPackagePath + '\tools\superdirt_install.scd'
Write-Host 'Installing SuperDirt sound synth and sample library. This may take time.'
cd $scpath
.\sclang $quarkinstall_path

Write-Host "If SuperDirt or other Quarks didn't install properly, you can install them in the SuperCollider IDE."
Write-Host "See User Docs install page for details."
