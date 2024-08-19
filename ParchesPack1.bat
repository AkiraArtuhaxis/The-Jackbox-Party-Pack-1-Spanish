@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Borrar "Picker.swf"
CD "PartyPack"
DEL "Picker.swf"
:: Cambiar "FibbageXL" a "Fibbage"
CD ..
RENAME "FibbageXL" "Fibbage"
:: Copiar y pegar "ArchivosEGS"
CD ..
CD ..
xcopy "ArchivosEGS" "Main" /s /y
:: Hacer versión EGS en JPP1-ES-EGS.zip
CD "Main"
DEL "jbg.config.jet"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP1-ES-EGS.zip" "."
:: Copiar y pegar "ArchivosSwitch"
CD ..
xcopy "ArchivosSwitch" "Main" /s /y
:: Hacer versión Switch en JPP1-ES-SWITCH.zip
CD "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP1-ES-SWITCH.zip" "."
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
:: Borrar "JackboxPartyPack.swf"
CD "Picker"
DEL "JackboxPartyPack.swf"
:: Cambiar "Fibbage" a "FibbageXL"
CD ..
RENAME "Fibbage" "FibbageXL"
:: Copiar y pegar "ArchivosSteam"
CD ..
CD ..
xcopy "ArchivosSteam" "Main" /s /y
CD "Main"
DEL "config.jet"
:: Hacer versión Steam en JPP1-ES.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP1-ES.zip" "."