$url = "https://raw.githubusercontent.com/niffdy/webboot/master/lading.txt"
$ladingtxt = "$env:TEMP\lading.txt"
(New-Object System.Net.WebClient).DownloadFile($url, $ladingtxt)