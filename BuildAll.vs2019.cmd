pushd "%~dp0"
call BuildManual.cmd
call BuildBin.vs2019.cmd %1
pushd Testing\GoogleTest\UnitTests
UnitTests.exe || exit
popd
call BuildInstaller.cmd %1
call BuildArc.cmd %1
popd
