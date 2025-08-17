@echo off
REM === Change this to your image path ===
set IMAGE=C:\Users\Public\Pictures\Sample Pictures\Desert.jpg
set REMOTE=/sdcard/wallpaper.jpg

adb push "%IMAGE%" "%REMOTE%"
adb shell cmd wallpaper set "%REMOTE%"

echo Wallpaper changed!
pause
