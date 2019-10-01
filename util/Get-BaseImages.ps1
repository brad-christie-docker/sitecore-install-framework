Function Get-BaseImages {
  [CmdletBinding()]
  Param()
  Process {
    $imagesPath = Join-Path $PSScriptRoot -ChildPath "images"
    If (!(Test-Path $imagesPath)) {
      Throw "Unable to find images path."
    }

    $baseImages = @()
    Get-Childitem $imagesPath -Include "*.psd1" -Recurse | ForEach-Object {
      $_isLtsc = $_.BaseName -like "ltsc*"
      $baseImages += (Import-PowerShellDataFile $_.FullName).Images | ForEach-Object {
        $_.Add('IsLTSC', $_isLtsc) # | Add-Member -NotePropertyName "IsLTSC" -NotePropertyValue $_isLtsc -PassThru
        Return $_
      }
    }
    $sortProperties = @(
      @{ Expression = { $_.ReleaseId }; Descending = $true }
      @{ Expression = { $_.Image }; Descending = $true }
    )
    Return ($baseImages | Sort-Object $sortProperties)
  }
}