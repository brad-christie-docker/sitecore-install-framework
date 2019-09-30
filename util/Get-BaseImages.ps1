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
      $baseImages += (Import-PowerShellDataFile $_.FullName).Images
    }
    Return $baseImages
  }
}