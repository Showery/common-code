cd /d %~dp0
:: -----------Register XD source filter------------
if not exist XDSource.ax (
   msg %username% XDSource.ax 文件不存在
)
regsvr32  -s XDSource.ax

:: ------------------Add e-mail and Serial for CoreCodec.-----------------------
REG ADD HKLM\SOFTWARE\CoreCodec /f
REG ADD "HKLM\SOFTWARE\CoreCodec\CoreAVC Pro 3.x" /f
REG ADD "HKLM\SOFTWARE\CoreCodec\CoreAVC Pro 3.x" /v User /t REG_SZ /d rbogaar@aol.com /f
REG ADD "HKLM\SOFTWARE\CoreCodec\CoreAVC Pro 3.x" /v Serial /t REG_SZ /d TBCYS8-Q18CKZ-8FHGG8-F49LTA-UK8AQQ /f
:: --------------Register Core AVC decoder.----------------
if not exist CoreAVCDecoder.ax (
   msg %username% CoreAVCDecoder.ax 文件不存在
)
regsvr32 -s CoreAVCDecoder.ax

:: --------------Register XD MJPEG Decoder.----------------
if not exist XDJpegDecoder.ax (
   msg %username% XDJpegDecoder.ax 文件不存在
)
regsvr32 -s XDJpegDecoder.ax

:: --------------Register haali dll or ax----------------
if not exist avi.dll (
   msg %username% avi.dll 文件不存在
)
regsvr32 -s avi.dll
if not exist avi.dll (
   msg %username% avi.dll 文件不存在
)
regsvr32 -s mkx.dll
if not exist mkx.dll (
   msg %username% mkx.dll 文件不存在
)
regsvr32 -s mp4.dll
if not exist mp4.dll (
   msg %username% mp4.dll 文件不存在
)
regsvr32 -s ts.dll
if not exist ts.dll (
   msg %username% ts.dll 文件不存在
)
regsvr32 -s splitter.ax