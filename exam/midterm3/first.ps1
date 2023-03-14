if($args.Length -ne 1){
    Write-Warning "Please give a filename!!!"
}
else {
    if(Test-Path $args[0]){
        $content = Get-Content $args[0]
        $result = 1
        foreach ($num in $content.Split(" ")){
            $result = $result * [int]$num
        }
        Write-Host "Product = " $result
        
    }
    else {
        Write-Host "Incorrect File name or it does not exist"
    }
}