#Tool for Restarting Computers
#Author: Trent W


$computerListPath = Read-Host -Prompt "Enter the path of the file containing the list of computer to restart( ex. C:\Users\Desktop\Scripts\computers.txt ) "
# Read the computer names from the text file
$computerNames = Get-Content $computerListPath
$sep = "____________________________"
$computersAttempted = @（）
$computersOffline = @()
$computersFailed = @()
$statColorSuccess = "Green"
$statColorOffline = "DarkGray"
$statColorFailed = "Red"
Write-Host ""
Write-Host "Starting..."
Write-Host $sep
# Iterate through each computer name
foreach ($computer in $computerNames)
# Check if the computer is online
if (Test-Connection -ComputerName $computer -Count 1 -Quiet) {
$resMessage = @($true, "$computer | Restarting...")
try {
Restart-Computer -ComputerName $computer -Force
} Catch [System.Exception] {
$resMessage - @($false, "$computer | Failed - Error: $error[0]!")
}
if ($resMessage[0] -eq $true){
$resMessagecolor = $statColorSuccess
$computersAttempted = $computersAttempted + $computer
}else {
$resMessageColor = $statColorFailed
$computersFailed = $computersFailed + $computer
}
Write-Host $resMessage [1] -Foregroundcolor $resMessageColor
} else {
$computersoffline = $computersoffline + $computer
Write-Host "$computer | Failed - Offline" - ForegroundColor $statColorOffline
}
}

$totalcomputers = $computerNames.Count.ToString()
$totalAttempted = $computersAttempted.Count.ToString()
$totalOffline = $computersoffline.Count.ToString()
$totalFailed - $computersFailed.Count.ToString()
$totalCombinedFailed - ($computersoffline.Count + $computersFailed.Count).ToString()
# Final message
write-Host ""
Write-Host " Totals"
Write-Host $sep
write-Host "($totalAttempted/$totalComputers) restarted successfully." -ForegroundColor $statColorSuccess
Write-Host "($totalcombinedFailed/$totalcomputers) failed" -ForegroundColor $statColorFailed
Write-Host " - $totaloffline failed due to being offline." -Foregroundcolor $statcoloroffline
write-Host " - $totalfailed failed due to some other error involved with the restart process." - ForegroundColor $statcolorFailed
Write-Host "Done Dude"
Read-Host -Prompt "Press ENTER to exit.,"



