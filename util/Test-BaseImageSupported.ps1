Function Test-BaseImageSupported {
  [CmdletBinding()]
  Param(
    [Parameter(Position = 0, Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
    [string]$Image
  )
  Process {
    (Get-SupportedBaseImages | Where-Object {
      $_.Image -eq $Image -or $_.Alias -eq $Image
    }) -contains $true
  }
}