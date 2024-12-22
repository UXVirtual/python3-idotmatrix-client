@echo off
set "exe_name=idotmatrix.exe"  
set "input_path1=%~1"
set "input_path2=%~2"
set "input_path3=%~3"
set "input_path4=%~4"

if not defined input_path1 (
  echo Usage: Drag and drop an animated or static GIF file onto this script to upload to dot matrix picture frame to the top left side.
  pause
  exit /b 1
)

if not defined input_path2 (
  echo Usage: Drag and drop an animated or static GIF file onto this script to upload to dot matrix picture frame to the bottom left side.
  pause
  exit /b 1
)

if not defined input_path3 (
  echo Usage: Drag and drop an animated or static GIF file onto this script to upload to dot matrix picture frame to the top right side.
  pause
  exit /b 1
)

if not defined input_path4 (
  echo Usage: Drag and drop an animated or static GIF file onto this script to upload to dot matrix picture frame to the bottom right side.
  pause
  exit /b 1
)

echo "Uploading..."
echo "0/4 complete"

:: TOP LEFT
start "" "%~dp0%exe_name%" --address 06:4D:D7:87:26:5C --set-gif "%input_path1%" & echo "1/4 complete"
:: TOP RIGHT
start "" "%~dp0%exe_name%" --address E5:99:76:F9:E7:8F --set-gif "%input_path2%" & echo "4/4 complete"
:: BOTTOM LEFT
start "" "%~dp0%exe_name%" --address DD:FD:F8:8B:D9:DB --set-gif "%input_path3%" & echo "3/4 complete"
:: BOTTOM RIGHT
start "" "%~dp0%exe_name%" --address 4B:08:03:D7:91:16 --set-gif "%input_path4%" & echo "4/4 complete"

echo "All uploads complete"
