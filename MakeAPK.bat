ECHO OFF
color F0
ECHO  Batch script to generate signed APK, ready to publish.
ECHO  #############################################################
ECHO                        Andaired v1.0                         
ECHO  #############################################################
ECHO  If APK was build succesfuly you will get word "test".
ECHO  Also you need to enter password if not defined in Andaired
ECHO  for every build if checked (emulator,debug or captive)
ECHO  *
ECHO Type "exit" without quotes or simply close window after everything is done
CALL APKCaptive.bat
D:\Program Files\AIRSDK_Compiler\bin\adt -package -target apk -storetype pkcs12 -keystore D:\Kelase\Theory\library\codecanyon-4600694-andaired\Certificate\mycert.p12 -storepass iwan24itb osi.apk application.xml osi.swf
pause
exit /b
