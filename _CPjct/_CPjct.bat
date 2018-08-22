set Current_CD_CPjct=%cd%
cd C:\Users\User\Desktop
rd /s /q  _project
mkdir _project
cd _project
<nul set /p x=>index.html
mkdir css
mkdir js
mkdir less
cd less
<nul set /p x=>style.less
cd ..
cd js
<nul set /p x=>script.js
cd ..
set Current_CD__project=%cd%
cd %Current_CD_CPjct%
copy reset.css %Current_CD__project%\css
copy index.html %Current_CD__project%
copy server.bat %Current_CD__project%
cd %Current_CD__project%
browser-sync start --server --files "*/**, *.*"
cd ..
start _project\






