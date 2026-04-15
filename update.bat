@echo off
REM Strategy Frameworks + TOC + TRIZ — Auto Update (Windows)
REM Usage: update.bat [target_dir]
REM Default target: .claude\skills\ in current directory

setlocal enabledelayedexpansion

set "TARGET=%~1"
if "%TARGET%"=="" set "TARGET=.claude\skills"

set "TEMP=%TEMP%\sf-update-%RANDOM%"
mkdir "%TEMP%" 2>nul

echo.
echo  Strategy Frameworks Auto Update
echo  Target: %TARGET%
echo.

set UPDATED=0

REM 1. Strategy Frameworks
echo    Updating strategy-frameworks...
git clone --depth 1 --quiet https://github.com/ironyjk/strategy-frameworks.git "%TEMP%\sf" 2>nul
if %errorlevel%==0 (
    for %%d in (wardley ooda systems-thinking blue-ocean design-thinking first-principles porter drucker bsc bcg-matrix mckinsey-7s swot-pestel ansoff-matrix disruptive-innovation scenario-planning stp marketing-mix jtbd bmc kotter okr lean-startup real-options game-theory pyramid-principle rbv think) do (
        if exist "%TEMP%\sf\%%d" (
            xcopy /s /y /q "%TEMP%\sf\%%d\*" "%TARGET%\%%d\" >nul 2>&1
        )
    )
    echo    [OK] strategy-frameworks
    set /a UPDATED+=1
) else (
    echo    [FAIL] strategy-frameworks
)

REM 2. TOC Agents
echo    Updating toc-agents...
git clone --depth 1 --quiet https://github.com/ironyjk/toc-agents.git "%TEMP%\toc" 2>nul
if %errorlevel%==0 (
    if exist "%TEMP%\toc\.claude\skills\toc" (
        xcopy /s /y /q "%TEMP%\toc\.claude\skills\toc\*" "%TARGET%\toc\" >nul 2>&1
    )
    echo    [OK] toc-agents
    set /a UPDATED+=1
) else (
    echo    [FAIL] toc-agents
)

REM 3. TRIZ Agents
echo    Updating triz-agents...
git clone --depth 1 --quiet https://github.com/ironyjk/triz-agents.git "%TEMP%\triz" 2>nul
if %errorlevel%==0 (
    if exist "%TEMP%\triz\.claude\skills\triz" (
        xcopy /s /y /q "%TEMP%\triz\.claude\skills\triz\*" "%TARGET%\triz\" >nul 2>&1
    )
    echo    [OK] triz-agents
    set /a UPDATED+=1
) else (
    echo    [FAIL] triz-agents
)

REM Cleanup
rmdir /s /q "%TEMP%" 2>nul

echo.
echo  %UPDATED%/3 repos updated
echo  46 tools ready in %TARGET%\
echo  Run: /think [your problem]
echo.

endlocal
