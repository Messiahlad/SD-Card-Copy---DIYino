
@echo off

echo    =========================================
echo    =      DIYino SoundFont Copy            =
echo    =                                       =
echo    =  Step One: Prepare SD Card - Format   =
echo    =  your SD card to FAT32 and note the   =
echo    =  driver letter eg. F:\                =
echo    =                                       =
echo    =========================================
echo    =                                       =
echo    =  Step Two: Copy SoundFonts            =
echo    =                                       =
echo    =  Run this Batch file in the soundfont =
echo    =  folder                               =
echo    =                                       =
echo    =========================================
echo[
echo[

:menu
rem set /p choice="Enter the Drive Letter of your FORMATTED SD Card" 
set /p "$Drive=Enter the Drive Letter of your FORMATTED SD Card : "
goto:Drive

:Drive
echo[
echo[
echo %$Drive%:\ [Is the Selected Drive]
echo[
echo %~dp0 [Is the Soundfont location]
echo[
echo[
echo To copy Your Soundfonts to you SD Card
pause

xcopy /s /i /exclude:excludedfileslist.txt "%~dp0." "%$Drive%:\"

pause
exit
