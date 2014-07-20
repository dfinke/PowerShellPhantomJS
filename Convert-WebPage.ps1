function Convert-WebPage {
    param(
        $Url,
        $OutFile,
        [Switch]$Show
    )
    
    & $PhantomJSExe .\capture.js $Url $OutFile
    
    if($Show) { Invoke-Item $OutFile }
}