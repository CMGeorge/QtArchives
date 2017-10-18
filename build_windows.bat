CALL mingw32-make distclean --silent
CALL qmake -spec win32-g++ -config +=warn_off CONFIG+=warn_off && (
  echo ==QMake complete.
) || (
  echo !!!!!!!!!!!!!!!QtArchives qmake error.!!!!!!!!!!!!!!!
  exit /B 1
)
REM  -spec win32-g++
CALL mingw32-make qmake_all --silent
echo "Making QtArchives Library"
CALL mingw32-make -j 8 --silent && (
	echo ==Build Complete
) || (
	echo !!!!!!!!!!!!!!!QtArchives make error.!!!!!!!!!!!!!!!
	exit /B 2
)
echo "Installing QtArchives"
CALL mingw32-make -j 1 --silent install 
