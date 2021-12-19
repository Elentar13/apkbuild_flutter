@echo off

cd ..
git fetch
git branch -a
set /p branch_id="Enter branch designation:"
set /p phase="Enter development phase (development/production/staging)"

git checkout %branch_id%
git checkout -- .
git checkout %branch_id%
git pull origin %branch_id%

cmd /c flutter build apk --target="lib/000_app/config/main_%phase%.dart"

"%LOCALAPPDATA%\Android\Sdk\platform-tools\adb.exe" uninstall com.exevio.kastapp
"%LOCALAPPDATA%\Android\Sdk\platform-tools\adb.exe" install -r "build\app\outputs\apk\release\app-release.apk"