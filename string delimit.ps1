$arr =@()
$vm =""

$str= Read-Host "Enter string"
$delim = Read-Host "Enter delimiter"
$slen = $str.Length

while($slen -gt 0){

    if($str.LastIndexOf($delim) -ge 0){

        $vm = $str.Substring($str.LastIndexOf($delim))

        $arr += $vm

        $slen -= $vm.Length

        $str = $str.Substring(0,$str.LastIndexOf($delim))
    }
    
    else{
        
        $vm = $str

        $arr += $vm

        $slen -= $vm.Length

    }
    

}

    [array]::Reverse($arr)

    $arr
