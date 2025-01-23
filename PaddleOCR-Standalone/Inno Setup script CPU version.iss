#define MyAppName "PaddleOCR-CPU"
#define MyAppVersion "1.0.0"
#define MyAppURL "https://github.com/timminator/PaddleOCR-Standalone"
#define MyAppExeName "paddleocr.exe"
#define MyInstallerVersion "1.0.0.0"
#define MyAppCopyright "timminator"

#include "environment.iss"

[Setup]
SignTool=signtool $f
AppId={{..}
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
SetupIconFile=..\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=classic
UninstallDisplayName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}
ChangesEnvironment=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Dirs]
Name: "{app}"; Permissions: everyone-full

[Files]
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_asyncio.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_bz2.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_ctypes.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_decimal.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_elementtree.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_hashlib.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_lzma.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_multiprocessing.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_overlapped.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_queue.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_socket.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_sqlite3.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_ssl.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_tkinter.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_uuid.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\_zoneinfo.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\geos-23a442ac2dc21ec50035b705fec97a5a.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\libblas.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\libcrypto-3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\libffi-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\libgcc_s_seh-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\libgfortran-3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\libiomp5md.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\libquadmath-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\libsf_error_state.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\libssl-3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\msvcp140-a69f03e9a25e87aaadb3f9acf048914d.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\pyexpat.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\python3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\python311.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\select.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\sqlite3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\tcl86t.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\tk86t.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\unicodedata.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\vcruntime140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\vcruntime140_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\astor\*"; DestDir: "{app}\astor"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\certifi\*"; DestDir: "{app}\certifi"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\charset_normalizer\*"; DestDir: "{app}\charset_normalizer"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\contourpy\*"; DestDir: "{app}\contourpy"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\cv2\*"; DestDir: "{app}\cv2"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\docx\*"; DestDir: "{app}\docx"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\google\*"; DestDir: "{app}\google"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\kiwisolver\*"; DestDir: "{app}\kiwisolver"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\lmdb\*"; DestDir: "{app}\lmdb"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\lxml\*"; DestDir: "{app}\lxml"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\matplotlib\*"; DestDir: "{app}\matplotlib"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\numpy\*"; DestDir: "{app}\numpy"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\numpy.libs\*"; DestDir: "{app}\numpy.libs"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\paddle\*"; DestDir: "{app}\paddle"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\paddleocr\*"; DestDir: "{app}\paddleocr"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\PIL\*"; DestDir: "{app}\PIL"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\pyclipper\*"; DestDir: "{app}\pyclipper"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\pydantic_core\*"; DestDir: "{app}\pydantic_core"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\scipy\*"; DestDir: "{app}\scipy"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\scipy.libs\*"; DestDir: "{app}\scipy.libs"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\shapely\*"; DestDir: "{app}\shapely"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\shapely.libs\*"; DestDir: "{app}\shapely.libs"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\skimage\*"; DestDir: "{app}\skimage"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\sklearn\*"; DestDir: "{app}\sklearn"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\tcl\*"; DestDir: "{app}\tcl"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\tcl8\*"; DestDir: "{app}\tcl8"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\tk\*"; DestDir: "{app}\tk"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\yaml\*"; DestDir: "{app}\yaml"; Flags: ignoreversion recursesubdirs
Source: "..\PaddleOCR CPU\PaddleOCR-CPU-v1.0.0\zstandard\*"; DestDir: "{app}\zstandard"; Flags: ignoreversion recursesubdirs

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