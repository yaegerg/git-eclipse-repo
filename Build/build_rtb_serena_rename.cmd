@echo off
call d:\build_scripts\parse_dmbrdname.cmd
set dm_merge_bl=%dm_src%_%dm_date%_%dm_time%
if not exist Targets mkdir Targets
attrib -r Targets\*.ear
set RC=0
cd Build
setlocal
rem set BASE_DIR=C:\Program Files\IBM\SDP70
rem set ANT_HOME=C:\Program Files\IBM\SDP70Shared\plugins\org.apache.ant_1.6.5
set BASE_DIR=D:\IBM\RAD75
set ANT_HOME=D:\IBM\RAD75\runtimes\base_v61\deploytool\itp\plugins\org.apache.ant_1.6.5
set JAVA_HOME=%BASE_DIR%\jdk
@echo base_dir=%base_dir%
@echo ant_home=%ant_home%
@echo java_home=%java_home%
set path=%JAVA_HOME%\bin;%ANT_HOME%\bin;%path%
@echo on
call ant -Drelease_tag=%dm_merge_bl% -f build_serena.xml
exit /b %RC%
::COMMENT 1
::COMMENT 2
::COMMENT 3
::COMMENT 4
::COMMENT 1 from Programmer 1
::COMMENT 1 FROM PROGRAMMER 2
