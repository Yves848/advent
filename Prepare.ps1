param(
    [int]$year = 2022,
    [int]$day = 0
)
if ($day -eq 0) {
    $day = Get-Date -UFormat "%e"
}

New-Item -Path "$year/DAY$day" -Force -ItemType Directory
New-Item -Path "$year/DAY$day/Data" -Force -ItemType Directory


$cookie_ = Get-Content -Path ~/.config/AOC_Session

$session = [Microsoft.PowerShell.Commands.WebRequestSession]::new()
$cookie = [System.Net.Cookie]::new('session', $cookie_)
$session.Cookies.Add('https://adventofcode.com/', $cookie)

Invoke-WebRequest -Uri "https://adventofcode.com/2021/day/12/input" -WebSession $session -OutFile "$year/DAY$day/Data/Data.txt"

Copy-Item -Path .\Project*.* "$year/DAY$day/"



