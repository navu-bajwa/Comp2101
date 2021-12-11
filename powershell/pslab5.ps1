param ( [switch]$Disks, [switch]$Network , [switch]$System)

if ( !($System) -and !($Disks) -and !($Network)) {
  out-hardwareInfo
  out-osInfo
  out-processorInfo
  out-ramInfo
  out-diskInfo
  out-networkInfo
  out-graphicInfo
}

if ($System -eq $true) {
  out-hardwareInfo
  out-osInfo
  out-processorInfo
  out-ramInfo
  out-graphicInfo
}
if ($Disks -eq $true) {
  out-diskInfo
}
if ($Network -eq $true) {
  out-networkInfo
}