@echo off
echo Dang restore project...
dotnet restore

echo.
echo Dang build project...
dotnet build

echo.
echo Dang chay BikeShareWebApp...
dotnet run

pause
