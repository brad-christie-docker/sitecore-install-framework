[CmdletBinding()]
Param()
Begin {
  $__eap = $ErrorActionPreference
}
Process {
  # Include utility functions
  $util = Join-Path $PSScriptRoot -ChildPath "util"
  Get-ChildItem $util -Include "*.ps1" -Recurse | ForEach-Object { . $_.FullName }

  # Start build
  Get-SupportedBaseImages -AsObject | Format-Table "Alias", "ReleaseId"
}
End {
  $ErrorActionPreference = $__eap
}