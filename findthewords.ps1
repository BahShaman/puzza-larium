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

[string]$data = get-content ./words1.txt
$data = $data.replace(" ","")
$words = $data.split(",")
#$words

foreach($word in $words){
	if($word[2] -eq $word[3]){
		if($word[0] -eq $word[5]){
			$word
		}
	}
}



#################
# 9 Letter words
# There are 40727 nine-letter words, http://www.bestwordlist.com/9letterwords.htm
#lhfxpaxkx

[string]$data = get-content "./9letterwords.txt"
$data = $data.replace("`n",",")
$words = $data.split(",")
#$words
$words.count
<#
foreach($word in $words){
	if($word[2] -eq $word[3]){
		if($word[0] -eq $word[5]){
			$word
		}
	}
}
#>
