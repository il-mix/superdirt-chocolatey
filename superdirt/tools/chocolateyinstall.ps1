$packageName= 'superdirt'

# write new paths for SuperCollider, Pulsar and Pulsar apm 
#   then load machine and user path values 


$scPath = Get-AppInstallLocation SuperCollider
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") + ";" + $scPath

### install SuperDirt
Write-Host "Supercollider path: " $scPath
$ChocolateyPackagePath = Get-ChocolateyPath -PathType 'PackagePath'
$quarkinstall_path = $ChocolateyPackagePath + '\tools\quarkinstall.sc'
Write-Host 'Installing SuperDirt sound synth and sample library. This may take time.'
cd $scpath
.\sclang $quarkinstall_path

Write-Host "If SuperDirt or other Quarks didn't install properly, you can install them in the SuperCollider IDE."
Write-Host "See User Docs install page for details.`n"
