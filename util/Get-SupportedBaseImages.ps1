Function Get-SupportedBaseImages {
  [CmdletBinding()]
  Param(
    [Parameter(Position = 0, ValueFromPipeline, ValueFromPipelineByPropertyName)]
    [string]$ReleaseId = (Get-CurrentReleaseId)
    ,
    [Parameter()]
    [switch]$AsObject
  )
  Process {
    Write-Verbose "Targeting ReleaseId ${ReleaseId}"
    Get-BaseImages | Where-Object {
      $_.ReleaseId -le $ReleaseId
    } | ForEach-Object {
      If ($AsObject) { [pscustomobject]$_ }
      Else { $_ }
    }
  }
}