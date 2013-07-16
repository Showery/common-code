cd /d %~dp0
:: -----------UnRegister XD source filter.------------
regsvr32 -u -s XDSource.ax

:: ----------UnRegister Core AVC Decoder.----------
regsvr32 -u -s CoreAVCDecoder.ax

:: -----UnRegistry information about  CoreAVCDecoder.------
REG DELETE HKLM\SOFTWARE\CoreCodec /f
REG DELETE HKCR\CLSID\{083863F1-70DE-11D0-BD40-00A0C911CE86}\Instance\{09571A4B-F1FE-4C60-9760-DE6D310C7C31} /f

:: --------------UnRegister haali dll or ax----------------
regsvr32 -u -s avi.dll
regsvr32 -u -s mkx.dll
regsvr32 -u -s mp4.dll
regsvr32 -u -s ts.dll
regsvr32 -u -s splitter.ax

:: ---------------UnRegistry hex data about haali---------------------
REG DELETE HKLM\SOFTWARE\Classes\CLSID\{083863F1-70DE-11D0-BD40-00A0C911CE86}\Instance\{55DA30FC-F16B-49FC-BAA5-AE59FC65F82D} /f
REG DELETE HKLM\SOFTWARE\Classes\CLSID\{083863F1-70DE-11D0-BD40-00A0C911CE86}\Instance\{564FD788-86C9-4444-971E-CC4A243DA150} /f
REG DELETE HKLM\SOFTWARE\Classes\CLSID\{083863F1-70DE-11D0-BD40-00A0C911CE86}\Instance\{8F43B7D9-9D6B-4F48-BE18-4D787C795EEA} /f
REG DELETE HKLM\SOFTWARE\Classes\CLSID\{083863F1-70DE-11D0-BD40-00A0C911CE86}\Instance\{8F43B7D9-9D6B-4F48-BE18-4D787C795EEA} /f