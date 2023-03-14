if ($args.Length -eq 0){
    Write-Output "Please enter a value from thekeyboard"
    $n=Read-Host
    $n1=1
    $n2=1
    for ($i = 0; $i -lt $n; ++$i){
        if($i -eq 0){
            Write-Host -NoNewline "$n1 "
            continue}
        if($i -eq 1)
        {
            Write-Host -NoNewline "$n1 "
            continue}

        $nextNum = $n1 + $n2
        $n1 = $n2
        $n2 =$nextNum
        Write-Host -NoNewline "$nextNum "
    }
}
else{
    $n=$args[0]
    $n1=1
    $n2=1
    for ($i = 0; $i -lt $n; ++$i){
        if($i -eq 0){
            Write-Host -NoNewline "$n1 "
            continue}
        if($i -eq 1)
        {
            Write-Host -NoNewline "$n1 "
            continue}

        $nextNum = $n1 + $n2
        $n1 = $n2
        $n2 =$nextNum
        Write-Host -NoNewline "$nextNum "
    }
}