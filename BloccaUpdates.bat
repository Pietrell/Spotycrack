@echo off
COLOR 0a
MODE con:cols=100 lines=20
TITLE Blocca Updates
taskkill /f /im Spotify.exe
icacls "%localappdata%\Spotify\Update" /reset /T
del /s /q "%localappdata%\Spotify\Update"
mkdir "%localappdata%\Spotify\Update"
icacls "%localappdata%\Spotify\Update" /deny "%username%":W
if not exist "%appdata%\Spotify\" mkdir "%appdata%\Spotify"
del "%appdata%\Spotify\SpotifyMigrator.exe"
del "%appdata%\Spotify\SpotifyStartupTask.exe"
del "%appdata%\Spotify\chrome_elf.dll" 
copy ".\chrome_elf.dll" "%appdata%\Spotify\"
echo END CRACK
pause
exit