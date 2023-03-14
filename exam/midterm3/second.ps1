if($args.Length -ne 1){
    Write-Warning "Please give a filename!!!"
}
else {
    if(Test-Path $args[0]){
        $content = Get-Content $args[0]
        $st1 = $content.Split(" ")[0]
        $st2 = $content.Split(" ")[1]
        Set-Content -Path $args[0] "$st2 $st1"
        Write-Host "String/Names swapped inside the file"
    }
    else {
        Write-Host "Incorrect File name or it does not exist"
    }
}