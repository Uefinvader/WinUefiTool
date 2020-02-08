@echo off

echo -----------------------
echo UEFITool Compile Script
echo -----------------------

echo.
echo Checking requirements...

for %%R in (mingw49_32_release_static, mingw492_32, UEFITool-new_engine) do (
	if not exist %%R (
		echo.
		echo %%R not found!
		echo.
		pause
		exit /b 1
	)
)

set QtStcDir=%cd%\mingw49_32_release_static
set MingwDir=%cd%\mingw492_32
set UTSrcDir=%cd%\UEFITool-new_engine

PATH = %QtStcDir%\bin;%MingwDir%\bin;

echo.
echo Building Make file...

qmake %UTSrcDir%\UEFITool\uefitool.pro QMAKE_CXXFLAGS="-static -flto -Os" QMAKE_LFLAGS="-static -flto -Os" CONFIG+=optimize_size CONFIG+=staticlib CONFIG+=static

echo.
echo Compiling sources...

mingw32-make -s -f Makefile.release
copy /b /y release\UEFITool.exe %cd%\UEFITool.exe > nul

echo.
echo Cleaning up...

mingw32-make -s distclean 2> nul
for %%F in (object_script.UEFITool.Release, object_script.UEFITool.Debug) do if exist %%F del %%F > nul
for %%D in (release, debug) do if exist %%D rmdir /q /s %%D > nul

echo.
echo Done!
echo.
pause
exit /b 0