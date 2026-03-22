#Requires -Version 5.1
$ErrorActionPreference = 'Stop'

$Repo = "chronoboost/homebrew-sb-cli"
$Binary = "sb.exe"

# Detect architecture
$arch = switch ($env:PROCESSOR_ARCHITECTURE) {
    'AMD64' { 'amd64' }
    'ARM64' { 'arm64' }
    default { throw "Unsupported architecture: $env:PROCESSOR_ARCHITECTURE" }
}

# Get version (use $env:VERSION or fetch latest)
$version = $env:VERSION
if (-not $version) {
    $release = Invoke-RestMethod -Uri "https://api.github.com/repos/$Repo/releases/latest"
    $version = $release.tag_name -replace '^v', ''
}
if (-not $version) {
    throw "Could not determine latest version"
}

$zipName = "sb_windows_${arch}.zip"
$url = "https://github.com/$Repo/releases/download/v$version/$zipName"

Write-Host "Installing sb v$version (windows/$arch)..."

# Download and extract to temp dir
$tmpDir = Join-Path ([System.IO.Path]::GetTempPath()) "sb-install-$([System.Guid]::NewGuid())"
New-Item -ItemType Directory -Path $tmpDir | Out-Null

try {
    $zipPath = Join-Path $tmpDir $zipName
    Invoke-WebRequest -Uri $url -OutFile $zipPath -UseBasicParsing
    Expand-Archive -Path $zipPath -DestinationPath $tmpDir -Force

    # Install to user's local bin dir (no admin required)
    $installDir = Join-Path $env:LOCALAPPDATA "sb"
    if (-not (Test-Path $installDir)) {
        New-Item -ItemType Directory -Path $installDir | Out-Null
    }
    Copy-Item (Join-Path $tmpDir $Binary) (Join-Path $installDir $Binary) -Force

    # Add to PATH if not already there
    $userPath = [Environment]::GetEnvironmentVariable('Path', 'User')
    if ($userPath -notlike "*$installDir*") {
        [Environment]::SetEnvironmentVariable('Path', "$installDir;$userPath", 'User')
        Write-Host "Added $installDir to your PATH (restart your terminal for it to take effect)"
    }

    # Make available in current session
    $env:Path = "$installDir;$env:Path"

    Write-Host "sb v$version installed successfully"
    & (Join-Path $installDir $Binary) version
}
finally {
    Remove-Item -Recurse -Force $tmpDir -ErrorAction SilentlyContinue
}
