@echo off
REM $Id$
set JAVA=%JAVA_HOME%\bin\java
set cp=build\classes;lib\jdom.jar;lib\xerces_1_2_3.jar;lib\xalan_2_0_0.jar;lib\log4j.jar;lib/mx4j-jmx.jar;lib/mx4j-tools.jar;%CLASSPATH%
for %%i in (ext\*.jar) do call bin\cp.bat %%i
set CP=%CP%;%JAVA_HOME%\lib\tools.jar

%JAVA% -classpath %CP% -Djpos.config=src/etc/jpos.cfg -Dsax.parser=org.apache.xerces.parsers.SAXParser %1.Test %2 %3 %4 %5 %6

set cp=
