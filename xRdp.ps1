#Author: Trent W
#This is used to RDP into multiple hosts
$computers = Get-Content -Path "C: \Users\<username>\Desktop|Scripts\computer_list.txt'
Write-Host "

 __  __       _ _   _       _        ____  ____  ____  
|  \/  |_   _| | |_(_)_ __ | | ___  |  _ \|  _ \|  _ \ 
| |\/| | | | | | __| | '_ \| |/ _ \ | |_) | | | | |_) |
| |  | | |_| | | |_| | |_) | |  __/ |  _ <| |_| |  __/ 
|_|  |_|\__,_|_|\__|_| .__/|_|\___|_|_| \_\____/|_|_   
| |__  _   _  |_   _||_| ___ _ __ | |_  \ \      / /   
| '_ \| | | |   | || '__/ _ \ '_ \| __|  \ \ /\ / /    
| |_) | |_| |   | || | |  __/ | | | |_    \ V  V /     
|_.__/ \__, |   |_||_|  \___|_| |_|\__|    \_/\_/      
       |___/                                          "


foreach ($computer in $computers) {
Start-Process "$env:windir|system32 \mstsc.exe" -ArgumentList "/v:$computer"