rd /s /q .tmp
md ".tmp\\renderer"

copy resources\package.json .tmp
copy resources\*.js .tmp
copy frontend\dist\basta\*.* .tmp\renderer
cd .tmp
npm install
npx electron-packager . --electron-version 7.1.8 --platform win32 --icon .\..\gfx\tt.icns --out ..\publish --overwrite true
