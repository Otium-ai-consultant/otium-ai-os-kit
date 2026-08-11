# Otium AI OS Kit — Node.js check and install (Windows / PowerShell).
#
# The plugins and the optional Obsidian connector need Node.js and npx.
# This script checks for them, tries winget if it is available, and VERIFIES
# the result instead of assuming success.
#
# Run it yourself with:
#   powershell -ExecutionPolicy Bypass -File setup.ps1
#
# Safe to run as many times as you like.

$ErrorActionPreference = "Stop"

function Test-Node {
  $n = Get-Command node -ErrorAction SilentlyContinue
  $x = Get-Command npx  -ErrorAction SilentlyContinue
  return ($null -ne $n -and $null -ne $x)
}

function Show-ManualSteps {
  Write-Host ""
  Write-Host "Install Node.js by hand instead. It takes about two minutes:"
  Write-Host ""
  Write-Host "  1. Go to  https://nodejs.org"
  Write-Host "  2. Click the green LTS button"
  Write-Host "  3. Open the downloaded file and click through Next, Next, Finish"
  Write-Host "  4. Close Claude Code completely and reopen it"
  Write-Host ""
  Write-Host "Then say 'check node' in the chat and your AI will confirm it worked."
}

if (Test-Node) {
  Write-Host "OK: Node.js $(node -v) and npx are both available. Nothing to do."
  exit 0
}

Write-Host "Node.js was not found. Trying winget..."

if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
  Write-Host "winget is not available on this machine."
  Show-ManualSteps
  exit 1
}

# winget is a native executable. $ErrorActionPreference does NOT catch its
# failures, so the exit code has to be checked by hand. Without this, a failed
# install (no network, UAC declined, blocked by policy) still prints success
# and the user restarts into the same broken state.
winget install --id OpenJS.NodeJS.LTS -e --scope user --source winget `
  --accept-package-agreements --accept-source-agreements

if ($LASTEXITCODE -ne 0) {
  Write-Host ""
  Write-Host "Node install FAILED (winget exit code $LASTEXITCODE)."
  Write-Host "Common causes: no internet, the UAC prompt was declined, or company policy blocks winget."
  Show-ManualSteps
  exit 1
}

# Re-check in a fresh PATH. winget updates the environment for new processes,
# not for this one, so a miss here is expected and not an error.
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" +
            [System.Environment]::GetEnvironmentVariable("Path", "User")

if (Test-Node) {
  Write-Host ""
  Write-Host "OK: installed Node.js $(node -v) with npx."
} else {
  Write-Host ""
  Write-Host "OK: winget reported success. Node is not visible in this window yet, which is normal."
}

Write-Host "-> Close Claude Code completely and reopen it, then carry on with onboarding."
exit 0
