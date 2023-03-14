$scores=@(67,87,81,93,60,70)
$scores | Measure-Object -Maximum -Average | Format-Table -Property Maximum,Average