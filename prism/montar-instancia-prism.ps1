# Gera Rexvolution.zip para os amigos importarem no Prism Launcher (Adicionar instancia > Importar).
# Uso: .\prism\montar-instancia-prism.ps1 -Repo "usuario/repositorio" [-Branch main]
param([Parameter(Mandatory)][string]$Repo, [string]$Branch = "main")
$ErrorActionPreference = "Stop"
$prism = $PSScriptRoot
$tmp = Join-Path $env:TEMP "rexvolution-prism"
Remove-Item $tmp -Recurse -Force -ErrorAction SilentlyContinue
New-Item -ItemType Directory "$tmp\.minecraft" | Out-Null

$url = "https://raw.githubusercontent.com/$Repo/$Branch/pack.toml"
(Get-Content "$prism\instance.cfg" -Raw).Replace("__PACK_URL__", $url) | Set-Content "$tmp\instance.cfg" -NoNewline -Encoding ascii
Copy-Item "$prism\mmc-pack.json", "$prism\rexvolution.png" $tmp

$jar = "$prism\packwiz-installer-bootstrap.jar"
if (-not (Test-Path $jar)) {
    Invoke-WebRequest "https://github.com/packwiz/packwiz-installer-bootstrap/releases/latest/download/packwiz-installer-bootstrap.jar" -OutFile $jar
}
Copy-Item $jar "$tmp\.minecraft\"

$out = Join-Path (Split-Path $prism) "Rexvolution.zip"
Remove-Item $out -ErrorAction SilentlyContinue
Compress-Archive "$tmp\*" $out
Write-Host "Pronto: $out"
