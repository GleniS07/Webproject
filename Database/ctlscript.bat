@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\ingres\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\ingres\scripts\ctl.bat START)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\mysql\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\mysql\scripts\ctl.bat START)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\postgresql\scripts\ctl.bat START)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\apache\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\apache\scripts\ctl.bat START)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\openoffice\scripts\ctl.bat START)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\apache-tomcat\scripts\ctl.bat START)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\resin\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\resin\scripts\ctl.bat START)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\jetty\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\jetty\scripts\ctl.bat START)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\subversion\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\lucene\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\lucene\scripts\ctl.bat START)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\third_application\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\third_application\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\third_application\scripts\ctl.bat STOP)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\lucene\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\subversion\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\subversion\scripts\ctl.bat STOP)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\jetty\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\jetty\scripts\ctl.bat STOP)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\resin\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\resin\scripts\ctl.bat STOP)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\openoffice\scripts\ctl.bat STOP)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\apache\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\apache\scripts\ctl.bat STOP)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\ingres\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\ingres\scripts\ctl.bat STOP)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\mysql\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\mysql\scripts\ctl.bat STOP)
if exist C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\conta\OneDrive\Documents\GitHub\Webproject\Database\postgresql\scripts\ctl.bat STOP)

:end

