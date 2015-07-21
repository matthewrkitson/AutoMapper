@ECHO OFF

REM Builds the AutoMapper library
REM
REM This must be run from a Visual Studio command prompt to ensure that msbuild
REM (and other dependencies) is on the path. 
REM
REM Once compiled, copy the following files to MI
REM 
REM src\AutoMapper\bin\NET4\Release\AutoMapper.Net4.dll
REM src\AutoMapper\bin\NET4\Release\AutoMapper.Net4.pdb
REM src\AutoMapper\bin\NET4\Release\AutoMapper.dll
REM src\AutoMapper\bin\NET4\Release\AutoMapper.pdb
REM src\AutoMapper\bin\NET4\Release\AutoMapper.xml
REM
REM Destination: MI repository: lib/AutoMapper/

msbuild src\AutoMapper\AutoMapper.Net4.csproj /p:Configuration=Release

echo.
echo.
echo.
echo *************************************************************************
echo  Now copy the following files to the MI repository
echo. 
echo    src\AutoMapper\bin\NET4\Release\AutoMapper.Net4.dll
echo    src\AutoMapper\bin\NET4\Release\AutoMapper.Net4.pdb
echo    src\AutoMapper\bin\NET4\Release\AutoMapper.dll
echo    src\AutoMapper\bin\NET4\Release\AutoMapper.pdb
echo    src\AutoMapper\bin\NET4\Release\AutoMapper.xml
echo.
echo  Destination folder: lib/AutoMapper/
echo *************************************************************************
