cd /d %~dp0
:: -----------Register XD source filter------------
regsvr32  -s XDSource.ax

:: ------------------Add e-mail and Serial for CoreCodec.-----------------------
REG ADD HKLM\SOFTWARE\CoreCodec /f
REG ADD "HKLM\SOFTWARE\CoreCodec\CoreAVC Pro 3.x" /f
REG ADD "HKLM\SOFTWARE\CoreCodec\CoreAVC Pro 3.x" /v User /t REG_SZ /d rbogaar@aol.com /f
REG ADD "HKLM\SOFTWARE\CoreCodec\CoreAVC Pro 3.x" /v Serial /t REG_SZ /d TBCYS8-Q18CKZ-8FHGG8-F49LTA-UK8AQQ /f
:: --------------Register Core AVC decoder.----------------
regsvr32 -s CoreAVCDecoder.ax

:: --------------Register haali dll or ax----------------
regsvr32 -s avi.dll
regsvr32 -s mkx.dll
regsvr32 -s mp4.dll
regsvr32 -s ts.dll
regsvr32 -s splitter.ax