function Invoke-PhantomJS
{
    param(
        $JSFileName,
        $JavaScript,
        [Switch]$ConvertFromJson
    )
    
    $DeleteFile = $false

    if($JavaScript) 
    {
        $JSFileName = [System.IO.Path]::GetTempFileName()
        $JavaScript | Set-Content -Encoding Ascii $JSFileName
        $DeleteFile = $true
    }

    $result = & $PhantomJSExe $JSFileName

    if($DeleteFile) { del $JSFileName }

    if($ConvertFromJson) { return $result | ConvertFrom-Json }

    return $result
}

