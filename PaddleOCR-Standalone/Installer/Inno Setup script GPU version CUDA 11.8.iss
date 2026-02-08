#define MyAppName "PaddleOCR-GPU"
#define MyAppVersion "1.4.0"
#define MyAppURL "https://github.com/timminator/PaddleOCR-Standalone"
#define MyAppExeName "paddleocr.exe"
#define MyInstallerVersion "1.4.0.0"
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
OutputBaseFilename={#MyAppName}-v{#MyAppVersion}-CUDA-11.8-setup-x64
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
Source: "..\PaddleOCR GPU\PaddleOCR-GPU-v1.4.0-CUDA-11.8\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR GPU\PaddleOCR-GPU-v1.4.0-CUDA-11.8\*.*"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\PaddleOCR GPU\PaddleOCR-GPU-v1.4.0-CUDA-11.8\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

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