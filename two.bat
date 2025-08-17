@echo off
:: Correct image path (no percent signs inside!)
set "imagePath="C:\Users\Shrey\Desktop\zzz.jpg""

:: Set wallpaper path in registry
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%imagePath%" /f

:: Set wallpaper style: 10 = Fill
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 10 /f
reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f

:: Properly refresh the wallpaper (Force update using SPI function)
powershell -command "(Add-Type '[DllImport(\"user32.dll\")]public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);' -Name NativeMethods -Namespace Win32 -PassThru)::SystemParametersInfo(20, 0, '%imagePath%', 3)"
