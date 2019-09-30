@{
  Images = @(
    # ltsc2016 -- 10.0.14393.3204
    @{
      Alias = "windows/servercore:ltsc2016"
      Image = "mcr.microsoft.com/windows/servercore:ltsc2016"
      ReleaseId = 1607
    }
    @{
      Alias = "dotnet/framework/runtime:4.8-windowsservercore-ltsc2016"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-ltsc2016"
      ReleaseId = 1607
    }
    @{
      Alias = "dotnet/framework/runtime:4.7.2-windowsservercore-ltsc2016"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.7.2-windowsservercore-ltsc2016"
      ReleaseId = 1607
    }
    @{
      Alias = "dotnet/framework/runtime:4.7.1-windowsservercore-ltsc2016"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.7.1-windowsservercore-ltsc2016"
      ReleaseId = 1607
    }
    @{
      Alias = "dotnet/framework/runtime:4.7-windowsservercore-ltsc2016"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.7-windowsservercore-ltsc2016"
      ReleaseId = 1607
    }
    @{
      Alias = "dotnet/framework/runtime:4.6.2-windowsservercore-ltsc2016"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.6.2-windowsservercore-ltsc2016"
      ReleaseId = 1607
    }
    @{
      Alias = "dotnet/framework/runtime:3.5-windowsservercore-ltsc2016"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:3.5-windowsservercore-ltsc2016"
      ReleaseId = 1607
    }
    @{
      Alias = "microsoft/iis:ltsc2016"
      Image = "mcr.microsoft.com/windows/servercore/iis:windowsservercore-ltsc2016"
      ReleaseId = 1607
    }
  )
}