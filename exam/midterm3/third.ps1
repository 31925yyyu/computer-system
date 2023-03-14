if($args.Length -ne 1){
    Write-Warning "Please enter a string"
}
else {
    $text = $args[0]
    $count_words = 0
    $count_chars = 0
    foreach ($word in $text.Split(" ")){
        $count_words+=1
        $count_chars+=$word.Length
    }
    Write-Host "number of words = $count_words"
    Write-Host "number of characters = $count_chars"
}