$s = "FOHYHU JLUO. YLVLW WKH KXVKURRP."
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
  
$found2ndWords = @() 
$found7thWords = @() 


[string]$data = get-content ./wordstagline1.txt
$data = $data.replace(" ","")
$words = $data.split(",")
#$words

foreach($word in $words){
	if($word[0] -eq $word[3]){
		if($word[5] -eq $word[6]){
			$found2ndWords += $word
		}
	}
}



#################
# 9 Letter words
# There are 40727 nine-letter words, http://www.bestwordlist.com/9letterwords.htm
#lhfxpaxkx

[string]$ninedata = get-content "./6letterwords.txt"
$ninedata = $ninedata.replace("`r`n"," ")
$ninewords = $ninedata.split(" ")
#$words
$ninewords.count

foreach($nineword in $ninewords){
	if($nineword[2] -eq $nineword[4]){
			$found7thWords += $nineword
			#$nineword
	}
}

foreach($s7thword in $found7thWords){
	foreach($s2ndWord in $found2ndWords){
		if($s2ndWord[5] -eq $s7thword[4]){
				write-host "$s2ndWord ... $s7thword"
		}
	}
}

