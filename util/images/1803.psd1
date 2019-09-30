@{
  Images = @(
    # 1803 -- 10.0.17134.1006
    @{
      Alias = "windows/servercore:1803"
      Image = "mcr.microsoft.com/windows/servercore:1803"
      ReleaseId = 1803
    }
    @{
      Alias = "dotnet/framework/runtime:4.8-windowsservercore-1803"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-1803"
      ReleaseId = 1803
    }
    @{
      Alias = "dotnet/framework/runtime:4.7.2-windowsservercore-1803"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.7.2-windowsservercore-1803"
      ReleaseId = 1803
    }
    @{
      Alias = "dotnet/framework/runtime:3.5-windowsservercore-1803"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:3.5-windowsservercore-1803"
      ReleaseId = 1803
    }
    @{
      Alias = "microsoft/iis:1803"
      Image = "mcr.microsoft.com/windows/servercore/iis:windowsservercore-1803"
      ReleaseId = 1803
    }
  )
}