Function Get-SupportedBaseImages {
  [CmdletBinding()]
  Param(
    [Parameter(Position = 0, ValueFromPipeline, ValueFromPipelineByPropertyName)]
    [string]$ReleaseId = (Get-CurrentReleaseId)
    ,
    [Parameter()]
    [Alias("LTSC")]
    [switch]$LongTermSupportChannel
    ,
    [Parameter()]
    [switch]$AsObject
  )
  Process {
    Write-Verbose "Targeting ReleaseId ${ReleaseId}"
    Get-BaseImages | Where-Object {
      $_.ReleaseId -le $ReleaseId -and (!$LongTermSupportChannel -or $_.IsLTSC)
    } | ForEach-Object {
      If ($AsObject) { [pscustomobject]$_ }
      Else { $_ }
    }
  }
}