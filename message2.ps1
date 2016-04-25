$s = "B lnzzxlm rhn lmtkm rhnk lxtkva lhfxpaxkx hg fr lbmx"
 # message     m       e    
$knowns = "_ MESSAGE"
  $subs = $knowns.toCharArray()
  $a = $s.toCharArray()
  $b = $s.toCharArray()
  
<#   
  for($letterindex=0;$letterindex -lt $subs.count;$letterindex++){
	$letter = $subs[$letterindex]
	if($letter -eq "_"){continue}
	if($letter -eq " "){continue}
	write-host -foregroundcolor magenta ("replacing "+$s[$letterindex]+" for $letter ")
	for($encodedindex=0;$encodedindex -lt $a.count;$encodedindex++){
			#$b[$encodedindex] = 
	}
  }
#>

$data = get-content ./words1.txt
$words = data.split(",")
$words

  
