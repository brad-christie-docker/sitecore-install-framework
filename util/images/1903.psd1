@{
  Images = @(
    # 1903 -- 10.0.18362.356
    @{
      Alias = "dotnet/framework/runtime:4.8-windowsservercore-1903"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-1903"
      MultiArch = "dotnet/framework/runtime:4.8-windowsservercore"
      ReleaseId = 1903
    }
    @{
      Alias = "dotnet/framework/runtime:3.5-windowsservercore-1903"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:3.5-windowsservercore-1903"
      MultiArch = "dotnet/framework/runtime:3.5-windowsservercore"
      ReleaseId = 1903
    }
    @{
      Alias = "dotnet/framework/sdk:4.8-windowsservercore-1903"
      Image = "mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-1903"
      MultiArch = "dotnet/framework/sdk:4.8-windowsservercore"
      ReleaseId = 1903
    }
    @{
      Alias = "dotnet/framework/sdk:3.5-windowsservercore-1903"
      Image = "mcr.microsoft.com/dotnet/framework/sdk:3.5-windowsservercore-1903"
      MultiArch = "dotnet/framework/sdk:3.5-windowsservercore"
      ReleaseId = 1903
    }
    @{
      Alias = "microsoft/iis:windowsservercore-1903"
      Image = "mcr.microsoft.com/windows/servercore/iis:windowsservercore-1903"
      MultiArch = "microsoft/iis:windowsservercore"
      ReleaseId = 1903
    }
    @{
      Alias = "windows/servercore:1903"
      Image = "mcr.microsoft.com/windows/servercore:1903"
      MultiArch = "windows/servercore"
      ReleaseId = 1903
    }
  )
}