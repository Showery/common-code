cd /d %~dp0

:: -----------UnRegister XD source filter.------------
regsvr32 -u -s XDSource.ax
del XDSource.ax /f /q

:: ----------UnRegister Core AVC Decoder.----------
regsvr32 -u -s CoreAVCDecoder.ax
del CoreAVCDecoder.ax /f /q
:: -----UnRegistry information about  CoreAVCDecoder.------
REG DELETE HKLM\SOFTWARE\CoreCodec /f

:: ----------UnRegister XD MJPEG Decoder.----------
regsvr32 -u -s XDJpegDecoder.ax
del XDJpegDecoder.ax /f /q

:: --------------UnRegister haali dll or ax----------------
regsvr32 -u -s avi.dll
regsvr32 -u -s mkx.dll
regsvr32 -u -s mp4.dll
regsvr32 -u -s ts.dll
regsvr32 -u -s splitter.ax
del avi.dll /f /q
del mkx.dll /f /q
del mp4.dll /f /q
del ts.dll /f /q
del splitter.ax /f /q
del mkunicode.dll /f /q
del mkzlib.dll /f /q