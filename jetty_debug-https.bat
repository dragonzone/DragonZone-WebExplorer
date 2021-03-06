set PORT=%1
shift
if "" == "%PORT%" set PORT=7555

set JAVA_MEM=-Xms256m -Xmx512m
set TIMEZONE=-Duser.timezone=GMT+00:00
@rem set TEMP_DIR=-Djava.io.tmpdir=/opt/temp
set MAVEN_OPTS=%JAVA_MEM% %TIMEZONE% %TEMP_DIR% -Djava.net.preferIPv4Stack=true -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=%PORT%,server=y,suspend=n
@echo First argument must be the DEBUG port which is currently: %PORT%
@echo Use -o argument to run off-line: jetty_debug.bat %PORT% -o 
@echo Use clean to do a clean build: jetty_debug.bat %PORT% clean
@call mvn -f pom-jetty8-https.xml %1 %2 -Djava.net.preferIPv4Stack=true jetty:run
