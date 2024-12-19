@echo off
set "exe_name=idotmatrix.exe"  
set "input_path=%~1"

if not defined input_path (
  echo Usage: Drag and drop an animated or static GIF file onto this script to upload to dot matrix picture frame.
  pause
  exit /b 1
)

"%~dp0%exe_name%" --address auto --set-gif "%input_path%"

echo Upload complete!
