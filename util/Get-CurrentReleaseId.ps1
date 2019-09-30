Function Get-CurrentReleaseId {
  [CmdletBinding()]
  Param()
  Process {
    (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ReleaseId
  }
}