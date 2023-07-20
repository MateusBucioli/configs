if(test-path -PathType container $PROFILE) {
      New-Item -ItemType Directory -Path $PROFILE
}
Add-Content -Path $PROFILE -Value "Invoke-Expression (&starship init powershell)"
