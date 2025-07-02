#define MyAppName "PaddleOCR-GPU"
#define MyAppVersion "1.3.0"
#define MyAppURL "https://github.com/timminator/PaddleOCR-Standalone"
#define MyAppExeName "paddleocr.exe"
#define MyInstallerVersion "1.3.0.0"
#define MyAppCopyright "timminator"

#include "environment.iss"

[Setup]
SignTool=signtool $f
AppId={{B9918FE7-379B-450E-8D48-F39954A21218}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
VersionInfoVersion={#MyInstallerVersion}
AppCopyright={#MyAppCopyright}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf64}\{#MyAppName}
UsePreviousAppDir=yes
LicenseFile=..\LICENSE
DisableProgramGroupPage=yes
PrivilegesRequired=admin
OutputBaseFilename={#MyAppName}-v{#MyAppVersion}-setup-x64
SetupIconFile=..\paddleocr.ico
Compression=lzma2/ultra64
InternalCompressLevel=ultra64
SolidCompression=yes
LZMAUseSeparateProcess=yes
LZMANumBlockThreads=6
WizardStyle=classic
UninstallDisplayName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
ChangesEnvironment=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Dirs]
Name: "{app}"; Permissions: everyone-full

[Files]
Source: "..\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_asyncio.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_bz2.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_ctypes.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_decimal.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_elementtree.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_hashlib.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_lzma.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_multiprocessing.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_overlapped.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_queue.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_ruamel_yaml.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_socket.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_sqlite3.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_ssl.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_tkinter.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_uuid.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_wmi.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\_zoneinfo.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\cublas64_11.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\cublasLt64_11.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\cudnn_cnn_infer64_8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\cudnn_ops_infer64_8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\cudnn64_8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\libcrypto-3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\libffi-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\libssl-3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\pyexpat.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\python3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\python312.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\select.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\sqlite3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\tcl86t.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\tk86t.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\ujson.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\unicodedata.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\vcruntime140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\vcruntime140_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\zlib1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\.paddlex\*"; DestDir: "{app}\.paddlex"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\certifi\*"; DestDir: "{app}\certifi"; Flags: ignoreversion recursesubdirs
Source: "..\charset_normalizer\*"; DestDir: "{app}\charset_normalizer"; Flags: ignoreversion recursesubdirs
Source: "..\cv2\*"; DestDir: "{app}\cv2"; Flags: ignoreversion recursesubdirs
Source: "..\google\*"; DestDir: "{app}\google"; Flags: ignoreversion recursesubdirs
Source: "..\jaraco\*"; DestDir: "{app}\jaraco"; Flags: ignoreversion recursesubdirs
Source: "..\numpy\*"; DestDir: "{app}\numpy"; Flags: ignoreversion recursesubdirs
Source: "..\numpy.libs\*"; DestDir: "{app}\numpy.libs"; Flags: ignoreversion recursesubdirs
Source: "..\paddle\*"; DestDir: "{app}\paddle"; Flags: ignoreversion recursesubdirs
Source: "..\paddlex\*"; DestDir: "{app}\paddlex"; Flags: ignoreversion recursesubdirs
Source: "..\pandas\*"; DestDir: "{app}\pandas"; Flags: ignoreversion recursesubdirs
Source: "..\pandas.libs\*"; DestDir: "{app}\pandas.libs"; Flags: ignoreversion recursesubdirs
Source: "..\PIL\*"; DestDir: "{app}\PIL"; Flags: ignoreversion recursesubdirs
Source: "..\pyclipper\*"; DestDir: "{app}\pyclipper"; Flags: ignoreversion recursesubdirs
Source: "..\pydantic_core\*"; DestDir: "{app}\pydantic_core"; Flags: ignoreversion recursesubdirs
Source: "..\pypdfium2\*"; DestDir: "{app}\pypdfium2"; Flags: ignoreversion recursesubdirs
Source: "..\pypdfium2_raw\*"; DestDir: "{app}\pypdfium2_raw"; Flags: ignoreversion recursesubdirs
Source: "..\pytz\*"; DestDir: "{app}\pytz"; Flags: ignoreversion recursesubdirs
Source: "..\shapely\*"; DestDir: "{app}\shapely"; Flags: ignoreversion recursesubdirs
Source: "..\shapely.libs\*"; DestDir: "{app}\shapely.libs"; Flags: ignoreversion recursesubdirs
Source: "..\tzdata\*"; DestDir: "{app}\tzdata"; Flags: ignoreversion recursesubdirs
Source: "..\yaml\*"; DestDir: "{app}\yaml"; Flags: ignoreversion recursesubdirs
Source: "..\zstandard\*"; DestDir: "{app}\zstandard"; Flags: ignoreversion recursesubdirs

[Code]
procedure CurStepChanged(CurStep: TSetupStep);
begin
    if (CurStep = ssPostInstall) and WizardIsTaskSelected('envPath')
    then EnvAddPath(ExpandConstant('{app}'));
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
    if CurUninstallStep = usPostUninstall
    then EnvRemovePath(ExpandConstant('{app}'));
end;

[Tasks]
Name: envPath; Description: "Add to PATH variable"

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[UninstallDelete]
Type: filesandordirs; Name: "{app}\.paddlex"