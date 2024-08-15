#Author: Trent W
#Script use to ping multiple computers to test if online
$names = Get-Content "computerlist.txt"
Write-Host = "
 ____  _ _   _  ____ _   _____     _   _____ ____  
|  _ \(_) \ | |/ ___| |_|___ / ___| |_|___ /|  _ \ 
| |_) | |  \| | |  _| __| |_ \/ __| __| |_ \| |_) |
|  __/| | |\  | |_| | |_ ___) \__ \ |_ ___) |  _ < 
|_|   |_|_| \_|\____|\__|____/|___/\__|____/|_| \_\ "

foreach ($name in $names) {
if (Test-Connection -ComputerName $name -Count 1 -ErrorAction SilentlyContinue) {
Write-Host "$name, up"
} else {
Write-Host "$name, down"
}
}