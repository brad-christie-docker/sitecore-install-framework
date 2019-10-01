Function Get-LatestSupportedBaseImages {
  [CmdletBinding()]
  Param(
    [Parameter()]
    [Alias("LTSC")]
    [switch]$LongTermSupportChannel
    ,
    [Parameter()]
    [switch]$AsObject
  )
  Process {
    $latest = @()
    Get-SupportedBaseImages -LongTermSupportChannel:$LongTermSupportChannel | ForEach-Object {
      $_image = $_
      If ($null -eq ($latest | Where-Object { $_.MultiArch -eq $_image.MultiArch })) {
        $latest += $_image
      }
    }
    If ($AsObject) {
      $latest = $latest | ForEach-Object { [pscustomobject]$_ }
    }
    Return $latest
  }
}