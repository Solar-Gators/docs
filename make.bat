@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=python -m sphinx-build
)
set SOURCEDIR=.
set BUILDDIR=_build

if "%1" == "" goto help
if "%1" == "livehtml" goto livehtml
if "%1" == "legacy-livehtml" goto legacy-livehtml
if "%1" == "legacy" goto legacy

%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.http://sphinx-doc.org/
	exit /b 1
)

python3 -m pipenv run %SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS%
goto end

:help
python3 -m pipenv run %SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS%
goto end

:legacy
%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS%
goto end

:legacy-livehtml
python3 -m sphinx-autobuild -b html %SPHINXOPTS% %SOURCEDIR% %BUILDDIR%/html
goto end

:livehtml
python3 -m pipenv run sphinx-autobuild -b html %SPHINXOPTS% %SOURCEDIR% %BUILDDIR%/html

:end
popd
