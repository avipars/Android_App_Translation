$dir = ".\directory\"
$strings = "strings.xml"
$fullDir = $dir + $strings 

$csv = $dir + "Results.csv"
[XML]$content = Get-Content $fullDIr

Stop-Process -Name notepad -Force
Remove-Item -Path $csv

$xml = New-Object -TypeName XML
$xml.Load($fullDir)

$translatableCount=0;
$translatableFalseCount=0; 

foreach ($bename in $Xml.resources.string) {
    if($bename.translatable -ne $false){
        $translatableCount++; 
        Write-Host $bename.name #key
        
        $AdditionalContent = [PSCustomObject]@{Key = $bename.name; Value = $bename.InnerXML}
        $AdditionalContent | Export-Csv -Path $csv -NoTypeInformation -Append
    }
    else
    {
        $translatableFalseCount++; 
    }
    $i++ 
}


Invoke-Item $fullDir
Invoke-Item $csv

Write-Host "Strings Translatable = "  $translatableCount 
Write-Host "Strings Non-Translatable = "  $translatableFalseCount 
Write-Host "Strings Total = "  $i 
