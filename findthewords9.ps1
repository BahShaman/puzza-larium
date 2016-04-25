$s = "B lnzzxlm rhn lmtkm rhnk lxtkva lhfxpaxkx hg fr lbmx"
 # message     m       e    
$knowns = "_ MESSAGE"
  $subs = $knowns.toCharArray()
  $a = $s.toCharArray()
  $b = $s.toCharArray()
  

  
  
  
$found2ndWords = @() 
$found7thWords = @() 
  

[string]$data = get-content ./words1.txt
$data = $data.replace(" ","")
$words = $data.split(",")
#$words

foreach($word in $words){
	if($word[2] -eq $word[3]){
		if($word[0] -eq $word[5]){
			$found2ndWords += $word
			#$word
		}
	}
}  


#################
# 9 Letter words
# There are 40727 nine-letter words, http://www.bestwordlist.com/9letterwords.htm
#lhfxpaxkx


[string]$ninedata = get-content "./9letterwords.txt"
$ninedata = $ninedata.replace("`r`n"," ")
$ninewords = $ninedata.split(" ")
#$words
$ninewords.count

foreach($nineword in $ninewords){
	if($nineword[3] -eq $nineword[6]){
		if($nineword[3] -eq $nineword[8]){
			$found7thWords += $nineword
			#$nineword
		}
	}
}

foreach($s7thword in $found7thWords){
	foreach($s2ndWord in $found2ndWords){
		if($s2ndWord[0] -eq $s7thword[0]){
			if($s2ndWord[4] -eq $s7thword[3]){
				write-host "$s2ndWord ... $s7thword"
			}
		}
	}
}


