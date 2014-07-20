Import-Module .\PowerShellPhantomJS.psm1 -force

Invoke-PhantomJS -ConvertFromJson -JavaScript @"
    var n = JSON.stringify(window.navigator);
    console.log(n);
    phantom.exit();
"@