$s = "B lnzzxlm rhn lmtkm rhnk lxtkva lhfxpaxkx hg fr lbmx"
$d = "_ _______ ___ _____ ____ ______ _________ __ __ ____"

 # message     m       e    
$knowns = "_ SUGGEST ___ _____ ____ ______ SOMEWHERE __ __ ____"
#$knowns = "_ CORRECT ___ _____ ____ ______ CLIENTELE __ __ ____"
  $subs = $knowns.toCharArray()
  $a = $s.toCharArray()
  $b = $s.toCharArray()
  
  for($letterindex=0;$letterindex -lt $subs.count;$letterindex++){
	$letter = $subs[$letterindex]
	if($letter -eq "_"){continue}
	if($letter -eq " "){continue}
	write-host -foregroundcolor magenta ("replacing "+$s[$letterindex]+" for $letter ")
	for($encodedindex=0;$encodedindex -lt $a.count;$encodedindex++){
			if($a[$encodedindex] -eq $s[$letterindex]){
				$b[$encodedindex] = $letter
			}
	}
  }

  $b -join("")

  
