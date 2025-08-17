@echo off
REM === Change this to your image path ===
set IMAGE=C:\Users\Shrey\Pictures\Saved Pictures\2.jpg
set REMOTE=/sdcard/wallpaper.jpg

adb push "%IMAGE%" "%REMOTE%"
adb shell cmd wallpaper set "%REMOTE%"

echo Wallpaper changed!
pause
