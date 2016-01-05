@echo off
::call d:\build_scripts\parse_dmbrdname.cmd
set dm_merge_bl=LOCAL_BUILD
if not exist Targets mkdir Targets
::attrib -r Targets\*.ear
set RC=0
cd Build
setlocal
set BASE_DIR=C:\Progra~1\IBM\WebSphere\AppServer70
set ANT_HOME=C:\Ant\apache-ant-1.7.1
set JAVA_HOME=%BASE_DIR%\java
@echo base_dir=%base_dir%
@echo ant_home=%ant_home%
@echo java_home=%java_home%
@echo job_name=%job_name%
set path=%JAVA_HOME%\bin;%ANT_HOME%\bin;%path%
@echo on
call ant -Drelease_tag=%dm_merge_bl% -Dwebsphere.serverhome="%BASE_DIR%" -f build_serena.xml
set RC=%ERRORLEVEL%
exit /b %RC%