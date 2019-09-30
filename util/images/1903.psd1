@{
  Images = @(
    # 1903 -- 10.0.18362.356
    @{
      Alias = "windows/servercore:1903"
      Image = "mcr.microsoft.com/windows/servercore:1903"
      ReleaseId = 1903
    }
    @{
      Alias = "dotnet/framework/runtime:4.8-windowsservercore-1903"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-1903"
      ReleaseId = 1903
    }
    @{
      Alias = "dotnet/framework/runtime:3.5-windowsservercore-1903"
      Image = "mcr.microsoft.com/dotnet/framework/runtime:3.5-windowsservercore-1903"
      ReleaseId = 1903
    }
  )
}