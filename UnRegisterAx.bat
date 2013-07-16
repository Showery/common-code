cd /d %~dp0
:: -----------UnRegister XD source filter.------------
regsvr32 -u -s XDSource.ax

:: ----------UnRegister Core AVC Decoder.----------
regsvr32 -u -s CoreAVCDecoder.ax

:: -----UnRegistry information about  CoreAVCDecoder.------
REG DELETE HKLM\SOFTWARE\CoreCodec /f

:: --------------UnRegister haali dll or ax----------------
regsvr32 -u -s avi.dll
regsvr32 -u -s mkx.dll
regsvr32 -u -s mp4.dll
regsvr32 -u -s ts.dll
regsvr32 -u -s splitter.ax