# Install Graded Vocab Reader Add-in for Microsoft Word (Windows)
# Script tu dong dang ky manifest.xml vao Microsoft Word

$addinId = "d7cc10ae-314b-431b-a311-26af885c657a"
$targetDir = "$env:USERPROFILE\OfficeAddins\graded-reader"
$manifestSource = "$PSScriptRoot\manifest.xml"

if (-not (Test-Path $manifestSource)) {
    Write-Host "[Loi] Khong tim thay file manifest.xml tai: $manifestSource" -ForegroundColor Red
    exit 1
}

# 1. Tao thu muc luu tru manifest co dinh
if (-not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
}

$targetManifest = "$targetDir\manifest.xml"
Copy-Item -Path $manifestSource -Destination $targetManifest -Force
Write-Host "[OK] Da sao chep manifest den: $targetManifest" -ForegroundColor Green

# 2. Dang ky Developer Sideloading vao Registry cua Office
$regPath = "HKCU:\Software\Microsoft\Office\16.0\WEF\Developer\$addinId"
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

Set-ItemProperty -Path $regPath -Name "ManifestPath" -Value $targetManifest
Write-Host "[OK] Da dang ky Add-in vao Microsoft Word thanh cong!" -ForegroundColor Green

Write-Host @"
========================================================================
HUONG DAN SU DUNG TRONG MICROSOFT WORD:
1. Mo phan mem Microsoft Word (neu dang mo thi dong va khoi dong lai).
2. Mo bat ky file tai lieu nao (vi du file Graded Reader .docx).
3. Cach mo Add-in:
   - Cach 1: Vao the 'Trang dau' (Home) -> Tim nut 'Bat Tra Tu & Doc Bai'.
   - Cach 2: Vao the 'Chen' (Insert) -> 'Tien ich bo sung cua toi' (My Add-ins) -> Chon tab 'Nha phat trien' (Developer) -> Chon 'Graded Vocab Reader'.
4. Bang tra cuu se hien o ben phai: Khi ban boi den tu nao trong Word, bang se tu dong phat am va hien nghia!
========================================================================
"@ -ForegroundColor Cyan
