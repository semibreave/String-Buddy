$str = Read-Host 'Enter String'

$char_count = 1
$char_limit = Read-Host 'Enter char limit'
$vm = ""

$arr = @()

for($i =0 ; $i -lt $str.Length; $i++){

    $vm += $str[$i]
    $char_count++

    if($char_count -gt $char_limit){
    
        $char_count = 1
        $arr += $vm
        $vm = ""
    }
}

$arr