$PhantomJSExe = Join-Path $PSScriptRoot phantomjs.exe

. (Join-Path $PSScriptRoot Invoke-PhantomJS.ps1)
. (Join-Path $PSScriptRoot Convert-WebPage.ps1)