$source = "http://www.puzzalarium.com/robot.txt"
$destination = "c:\users\mboscia\documents\projects\puzzle\robots.txt"
 
$source = "http://www.puzzalarium.com/"
$destination = "c:\users\mboscia\documents\projects\puzzle\home.html"

#Invoke-WebRequest $source -OutFile $destination

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($source, $destination)
#OR
#(New-Object System.Net.WebClient).DownloadFile($url, $output)
