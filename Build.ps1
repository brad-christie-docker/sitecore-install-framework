[CmdletBinding()]
Param(
  [Parameter()]
  [switch]$Latest
  ,
  [Parameter()]
  [Alias("LTSC")]
  [switch]$LongTermSupportChannel
)
Begin {
  $__eap = $ErrorActionPreference
}
Process {
  # Include utility functions
  $util = Join-Path $PSScriptRoot -ChildPath "util"
  Get-ChildItem $util -Include "*.ps1" -Recurse | ForEach-Object { . $_.FullName }

  # Start build
  If ($Latest) {
    $baseImages = Get-LatestSupportedBaseImages -LongTermSupportChannel:$LongTermSupportChannel -AsObject
  } Else {
    $baseImages = Get-SupportedBaseImages -LongTermSupportChannel:$LongTermSupportChannel -AsObject
  }
  $baseImages | Format-Table "Image", "MultiArch", "IsLTSC"
}
End {
  $ErrorActionPreference = $__eap
}