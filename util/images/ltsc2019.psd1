@{
  Images = @(
    # LTSC2019 -- 10.0.17763.737
    @{
      Alias = "windows/servercore:ltsc2019"
      Image = "mcr.microsoft.com/windows/servercore:ltsc2019"
      ReleaseId = 1809
    }
    @{
      Alias = "dotnet/framework/runtime:4.8-windowsservercore-ltsc2019"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-ltsc2019"
      ReleaseId = 1903
    }
    @{
      Alias = "dotnet/framework/runtime:4.7.2-windowsservercore-ltsc2019"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.7.2-windowsservercore-ltsc2019"
      ReleaseId = 1903
    }
    @{
      Alias = "dotnet/framework/runtime:3.5-windowsservercore-ltsc2019"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:3.5-windowsservercore-ltsc2019"
      ReleaseId = 1903
    }
    @{
      Alias = "microsoft/iis:windowsservercore-ltsc2019"
      Image = "mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2019"
      ReleaseId = 1809
    }
  )
}