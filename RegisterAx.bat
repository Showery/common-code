cd /d %~dp0
:: -----------Register XD source filter------------
if exist XDSource.ax (
    regsvr32  -s XDSource.ax
) else (
    msg %username% NdvrManagerע�����XDSource.ax �ļ�������
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
    msg %username% NdvrManagerע�����CoreAVCDecoder.ax �ļ�������
)

:: --------------Register XD MJPEG Decoder.----------------
if exist XDJpegDecoder.ax (
    regsvr32 -s XDJpegDecoder.ax
) else (
    msg %username% NdvrManagerע�����XDJpegDecoder.ax �ļ�������
)

:: --------------Register XD EVR Presenter.------------------
if exist EVRPresenter.ax (
    regsvr32 -s EVRPresenter.ax
) else (
    msg %username% NdvrManagerע�����EVRPresenter.ax�ļ�������
)

:: --------------Register haali dll or ax----------------
if not exist mkunicode.dll (
   msg %username% NdvrManagerע�����mkunicode.dll �ļ�������
)

if exist avi.dll (
    regsvr32 -s avi.dll
) else (
    msg %username% NdvrManagerע�����avi.dll �ļ�������
)

if exist mkx.dll (
    regsvr32 -s mkx.dll
) else (
    msg %username% NdvrManagerע�����mkx.dll �ļ�������
)

if exist mp4.dll (
    regsvr32 -s mp4.dll
) else (
    msg %username% NdvrManagerע�����mp4.dll �ļ�������
)

if exist ts.dll (
    regsvr32 -s ts.dll
) else (
    msg %username% NdvrManagerע�����ts.dll �ļ�������
)

if exist splitter.ax (
    regsvr32 -s splitter.ax
) else (
    msg %username% NdvrManagerע�����splitter.ax �ļ�������
)