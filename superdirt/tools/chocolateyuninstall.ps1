$packageName= 'superdirt'

# write new paths for SuperCollider then load machine and user path values 

$scPath = Get-AppInstallLocation SuperCollider
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") + ";" + $scPath

### uninstall SuperDirt
Write-Host "Supercollider path: " $scPath
$ChocolateyPackagePath = Get-ChocolateyPath -PathType 'PackagePath'
$quarkuninstall_path = $ChocolateyPackagePath + '\tools\superdirt_uninstall.scd'
Write-Host 'Uninstalling SuperDirt sound synth and sample library. This may take time.'
cd $scpath
.\sclang $quarkuninstall_path
