cd /d %~dp0
:: -----------Register XD source filter------------
if exist XDSource.ax (
    regsvr32  -s XDSource.ax
) else (
    msg %username% NdvrManager注册错误：XDSource.ax 文件不存在
)

:: ------------------Add e-mail and Serial for CoreCodec.-----------------------
if /i "%PROCESSOR_IDENTIFIER:~0,3%"=="X86" (
    REG ADD HKLM\SOFTWARE\CoreCodec /f
    REG ADD "HKLM\SOFTWARE\CoreCodec\CoreAVC Pro 3.x" /f
    REG ADD "HKLM\SOFTWARE\CoreCodec\CoreAVC Pro 3.x" /v User /t REG_SZ /d rbogaar@aol.com /f
    REG ADD "HKLM\SOFTWARE\CoreCodec\CoreAVC Pro 3.x" /v Serial /t REG_SZ /d TBCYS8-Q18CKZ-8FHGG8-F49LTA-UK8AQQ /f
) else (
    REG ADD HKLM\SOFTWARE\Wow6432Node\CoreCodec /f
    REG ADD "HKLM\SOFTWARE\Wow6432Node\CoreCodec\CoreAVC Pro 3.x" /f
    REG ADD "HKLM\SOFTWARE\Wow6432Node\CoreCodec\CoreAVC Pro 3.x" /v User /t REG_SZ /d rbogaar@aol.com /f
    REG ADD "HKLM\SOFTWARE\Wow6432Node\CoreCodec\CoreAVC Pro 3.x" /v Serial /t REG_SZ /d TBCYS8-Q18CKZ-8FHGG8-F49LTA-UK8AQQ /f
)

:: --------------Register Core AVC decoder.----------------
if exist CoreAVCDecoder.ax (
    regsvr32 -s CoreAVCDecoder.ax
) else (
    msg %username% NdvrManager注册错误：CoreAVCDecoder.ax 文件不存在
)

:: --------------Register XD MJPEG Decoder.----------------
if exist XDJpegDecoder.ax (
    regsvr32 -s XDJpegDecoder.ax
) else (
    msg %username% NdvrManager注册错误：XDJpegDecoder.ax 文件不存在
)

:: --------------Register XD EVR Presenter.------------------
if exist EVRPresenter.ax (
    regsvr32 -s EVRPresenter.ax
) else (
    msg %username% NdvrManager注册错误：EVRPresenter.ax文件不存在
)

:: --------------Register haali dll or ax----------------
if not exist mkunicode.dll (
   msg %username% NdvrManager注册错误：mkunicode.dll 文件不存在
)

if exist avi.dll (
    regsvr32 -s avi.dll
) else (
    msg %username% NdvrManager注册错误：avi.dll 文件不存在
)

if exist mkx.dll (
    regsvr32 -s mkx.dll
) else (
    msg %username% NdvrManager注册错误：mkx.dll 文件不存在
)

if exist mp4.dll (
    regsvr32 -s mp4.dll
) else (
    msg %username% NdvrManager注册错误：mp4.dll 文件不存在
)

if exist ts.dll (
    regsvr32 -s ts.dll
) else (
    msg %username% NdvrManager注册错误：ts.dll 文件不存在
)

if exist splitter.ax (
    regsvr32 -s splitter.ax
) else (
    msg %username% NdvrManager注册错误：splitter.ax 文件不存在
)