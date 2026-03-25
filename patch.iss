; Copyright (C) 2020  ManlyMarco
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.

;-------------Full game name for naming patch itself and desktop icons
#define NAME "Koikatsu Sunshine"
;---------------------------------------------Current HF Patch version
#define VERSION "1.28"
;-----------------------------------------Sideloader modpack directory
;#define GameDir "L:\HFpatchmaking\KK\MODSOURCE"
#define GameDir "F:\Games\KoikatsuP"
;--Don't include any files in the build to make it go fast for testing
#define DEBUG
;---Skip file verification for easier testing, COMMENT OUT FOR RELEASE
;#define NOVERIFY
;------------Don't include general, studio and map sideloader modpacks
#define LITE
;--------------------------------------------------------Configuration
; The main executable name without the .exe
#define GameName "KoikatsuSunshine"
; Set to empty if the game has no steam version
#define GameNameSteam ""
; Set CompanyName to empty if the game has no registry keys
#define CompanyName "Illusion"
;---------------------------------------------------------------------
#include "HelperLib\Common.iss"
;---------------------------------------------------------------------
; Used for post install run links, comment out to hide
#define WikiLink "https://wiki.anime-sharing.com/hgames/index.php?title=Koikatsu_Sunshine/Technical_Help"
#define RepoLink "https://github.com/ManlyMarco/KKS-HF_Patch"
; Can be KoiDiscordLink, IsDiscordLink, or a normal link
#define DiscordLink KoiDiscordLink
;---------------------------------------------------------------------

[Setup]
#ifndef LITE
AppName=HF Patch for Koikatsu Sunshine
OutputBaseFilename=Koikatsu Sunshine HF Patch v{#VERSION}
#else
AppName=HF Patch for Koikatsu Sunshine (Light Version)
OutputBaseFilename=Koikatsu Sunshine HF Patch v{#VERSION} Light Version
#endif

;lzma2/ultra64 | zip | lzma2/fast
Compression=lzma2/ultra64
LZMAUseSeparateProcess=yes
;Usual settings: 208576 273 8
LZMADictionarySize=208576
LZMANumFastBytes=273
LZMANumBlockThreads=8
DiskSpanning=yes
DiskSliceSize=4294967295

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "jp"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "sc"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[Types]
Name: "full_en";  Description: "{cm:fullInstall}";  Languages: en sc;
Name: "full";     Description: "{cm:fullInstall}";  Languages: jp;
Name: "extra_en"; Description: "{cm:extraInstall}"; Languages: en sc;
Name: "extra";    Description: "{cm:extraInstall}"; Languages: jp;
Name: "bare";     Description: "{cm:bareInstall}"
Name: "none";     Description: "{cm:noneInstall}"
Name: "custom";   Description: "{cm:customInstall}"; Flags: iscustom

[Components]
Name: "Patch";                    Description: "All free updates + game repair"; Types: full_en full extra_en extra custom bare none; Flags: fixed
Name: "Patch\VR";                 Description: "Install/Update VR Module"; Types: full_en full extra_en extra custom
;Name: "Patch\UserData";          Description: "{cm:CompDefCards}"; Types: full_en full extra_en extra custom bare none;
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Modpack";                  Description: "Sideloader Modpacks {#CurrentDate} (Add additional content to the game, needs at least BepisPlugins to work)"
#ifndef LITE
Name: "Modpack\General";          Description: "General (Content for making characters, always recommended)";       Types: full_en full extra_en extra
Name: "Modpack\Studio";           Description: "Studio (Additional content for making Studio scenes)";              Types: full_en full extra_en extra
Name: "Modpack\Maps";             Description: "Maps (Additional maps for use in Studio and H scenes)";             Types: full_en full extra_en extra
Name: "Modpack\Animations";       Description: "Animations (Additional adnimations for use in Studio and Free H)";  Types: full_en full extra_en extra
#endif
Name: "Modpack\Fixes";            Description: "Fixes (Fixes to some of the official content, always recommended)"; Types: full_en full extra_en extra
Name: "Modpack\MaterialEditor";   Description: "KK_MaterialEditor (Materials for use with MaterialEditor)";         Types: full_en full extra_en extra
Name: "Modpack\UncensorSelector"; Description: "KKS_UncensorSelector (Uncensors for use with UncensorSelector)"; Types: full_en full extra_en extra
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Files]
Source: "Input\start.bat"; DestDir: "{tmp}\hfp"; Flags: ignoreversion recursesubdirs createallsubdirs
#ifndef DEBUG
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Patch\1_empty_ud\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: Patch
Source: "Input\_Patch\1_empty_ud_eng\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch; Languages: en
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Patch\2_orig\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch;
Source: "Input\_Patch\3_studio\*";       DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch;
Source: "Input\_Patch\4_vr\*";           DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch\VR;
Source: "Input\_Patch\5_0210\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch;
Source: "Input\_Patch\ex_1_diff\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: EXInstalled
Source: "Input\_Patch\ex_2_0520\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch; Check: EXInstalled
Source: "Input\_Patch\ex_4_vr\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch\VR; Check: EXInstalled
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Solidbreak at the start to split off the modpacks from other files in case they don't have to be installed. solidbreak splits before the files entry with it is processed
#ifndef LITE
Source: "{#GameDir}\mods\Sideloader Modpack\*";                      DestDir: "{app}\mods\Sideloader Modpack";                       Flags: ignoreversion recursesubdirs solidbreak; Components: Modpack\General
Source: "{#GameDir}\mods\Sideloader Modpack - Exclusive KKS\*";      DestDir: "{app}\mods\Sideloader Modpack - Exclusive KKS";        Flags: ignoreversion recursesubdirs; Components: Modpack\General
Source: "{#GameDir}\mods\Sideloader Modpack - Exclusive KK KKS\*";   DestDir: "{app}\mods\Sideloader Modpack - Exclusive KK KKS";    Flags: ignoreversion recursesubdirs; Components: Modpack\General
Source: "{#GameDir}\mods\Sideloader Modpack - Studio\*";             DestDir: "{app}\mods\Sideloader Modpack - Studio";              Flags: ignoreversion recursesubdirs; Components: Modpack\Studio
Source: "{#GameDir}\mods\Sideloader Modpack - KKS_Maps\*";           DestDir: "{app}\mods\Sideloader Modpack - KKS_Maps";                Flags: ignoreversion recursesubdirs solidbreak; Components: Modpack\Maps
Source: "{#GameDir}\mods\Sideloader Modpack - Animations\*";         DestDir: "{app}\mods\Sideloader Modpack - Animations";          Flags: ignoreversion recursesubdirs; Components: Modpack\Animations
#endif
Source: "{#GameDir}\mods\Sideloader Modpack - KKS_Fixes\*";           DestDir: "{app}\mods\Sideloader Modpack - KKS_Fixes";               Flags: ignoreversion recursesubdirs; Components: Modpack\Fixes
Source: "{#GameDir}\mods\Sideloader Modpack - KK_MaterialEditor\*";   DestDir: "{app}\mods\Sideloader Modpack - KK_MaterialEditor";   Flags: ignoreversion recursesubdirs; Components: Modpack\MaterialEditor
Source: "{#GameDir}\mods\Sideloader Modpack - KKS_UncensorSelector\*";DestDir: "{app}\mods\Sideloader Modpack - KKS_UncensorSelector"; Flags: ignoreversion recursesubdirs; Components: Modpack\UncensorSelector
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "{#GameDir}\BepInEx\cache\sideloader_zipmod_cache.bin*"; DestDir: "{app}\BepinEx\cache"; Flags: ignoreversion recursesubdirs createallsubdirs;           
; Make sure this is never missing in case the plugin archive doesn't have it included. Also solidbreak to split off the modpacks
Source: "Input\_Plugins\KKS_UncensorSelector_Base.zipmod"; DestDir: "{app}\mods"; Flags: ignoreversion solidbreak; Components: UNC\Selector
#endif

; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; This include should be here because the patch files above can be overwritten by this include, and the Files section below overwrites some config files that this include extracts
#include "components.iss"

#include "HelperLib\DirectXredist.iss"

[Files]
#ifndef DEBUG
Source: "Input\BepInEx_config\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: BepInEx
Source: "Input\BepInEx_Dev\*";    DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: BepInEx\Dev
; GC stutter fix
Source: "Input\boot.config";    DestDir: "{app}\KoikatsuSunshine_Data"; Flags: ignoreversion
Source: "Input\boot.config";    DestDir: "{app}\CharaStudio_Data"; Flags: ignoreversion
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_TL\Translation_EN\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: AT\TL\EnglishTranslation
;Source: "Input\_TL\Translation_EN_userdata_jpver\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT\TL\EnglishTranslation\UserData; Check: not IsSteam
Source: "Input\_TL\_lang jp\*";                     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: jp
Source: "Input\_TL\_lang ch\*";                     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: sc
Source: "Input\_TL\_lang eng\*";                    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: en
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\Launcher_branding\*";                DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: IllusionLaunchers
; Only copy our blacklist if the user doesn't already have one (onlyifdoesntexist)
Source: "Input\itemblacklist.xml";                  DestDir: "{app}\UserData\save"; Flags: onlyifdoesntexist
; If BP isn't installed, exclude BP uncensors from the random selection
Source: "Input\US_config_noBP.cfg";                 DestDir: "{app}\BepInEx\config"; DestName: "com.deathweasel.bepinex.uncensorselector.cfg"
; This config only allows BP uncensors to be chosen by random
Source: "Input\US_config_BP.cfg";                   DestDir: "{app}\BepInEx\config"; DestName: "com.deathweasel.bepinex.uncensorselector.cfg"; Components: UNC\Selector\KKS_BetterPenetration
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Other default config
Source: "Input\marco.kkapi.cfg";                    DestDir: "{app}\BepInEx\config"; DestName: "marco.kkapi.cfg";        Flags: onlyifdoesntexist
Source: "Input\AniMorph.ABMX.cfg";                  DestDir: "{app}\BepInEx\config"; DestName: "AniMorph.ABMX.cfg";      Flags: solidbreak;   Components: Content\AnisotropicMorph
#endif

[InstallDelete]
; Clean dlls completely to fix problems with copied/unnecessary/old dlls. All dlls are included in the patch data
Type: filesandordirs; Name: "{app}\CharaStudio_Data\Managed";      Components: Patch
Type: filesandordirs; Name: "{app}\KoikatsuSunshine_Data\Managed"; Components: Patch
Type: filesandordirs; Name: "{app}\MonoBleedingEdge";              Components: Patch

; Remove stock launchers to make sure only one exists, a fresh copy will be copied back during install
Type: files; Name: "{app}\InitSetting.exe";                        Components: Patch
Type: files; Name: "{app}\InitSetting.exe.config";                 Components: Patch

; Clean up old uncensors
Type: filesandordirs; Name: "{app}\mods\Uncensor";                  Components: UNC\Selector
Type: filesandordirs; Name: "{app}\mods\Uncensors and body mods";   Components: UNC\Selector
Type: files;          Name: "{app}\BepInEx\*Demosaic.dll";          Components: UNC\Selector

; Clean up old translations
Type: filesandordirs; Name: "{app}\BepInEx\translation";                                        Components: AT\TL\EnglishTranslation

; Just in case. Also resets any hash caches
Type: filesandordirs; Name: "{app}\[UTILITY] KKManager"; Components: KKManager

; Clean up old modpacks
Type: filesandordirs; Name: "{app}\mods\Sideloader Only Mods"
Type: filesandordirs; Name: "{app}\mods\[KK]Sideloader Modpack"
Type: filesandordirs; Name: "{app}\mods\[KK]Sideloader Modpack - Compatibility Pack"
Type: filesandordirs; Name: "{app}\mods\[KK]Sideloader Modpack - Studio"
Type: filesandordirs; Name: "{app}\mods\[KK]Sideloader Modpack - Fixes"
Type: filesandordirs; Name: "{app}\mods\[EC]Sideloader Modpack"
Type: filesandordirs; Name: "{app}\mods\[EC]Sideloader Modpack - Fixes"
Type: filesandordirs; Name: "{app}\mods\[KK]*.7z"
Type: filesandordirs; Name: "{app}\mods\[EC]*.7z"
Type: filesandordirs; Name: "{app}\BepInEx\introclips"
Type: filesandordirs; Name: "{app}\mods\[moderchan]Tongue Texture v1.1.zipmod"
; Completely remove modpacks that we fully bundle
Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - Fixes"              ; Components: Modpack\Fixes
Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - KK_MaterialEditor"  ; Components: Modpack\MaterialEditor
Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - KKS_UncensorSelector"; Components: Modpack\UncensorSelector
Type: filesandordirs; Name: "{app}\mods\MyMods\BetterPenetration"                ; Components: Modpack\UncensorSelector
; Compatibility pack is safer to be removed since it can have dupes with main modpack
Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - Compatibility Pack"

; Problematic config files
Type: files; Name: "{app}\BepInEx\config\com.joan6694.illusionplugins.videoexport.cfg"
Type: files; Name: "{app}\BepInEx\config\org.bepinex.plugins.KKS_PostProcessingEffectsV3.cfg"

; Potentially incompatible, outdated or buggy plugins
Type: files; Name: "{app}\mods\atari2.1 (normal bust).zipmod"
Type: files; Name: "{app}\BepInEx\plugins\ksPlug.dll"
Type: files; Name: "{app}\XInputInterface.dll"

[CustomMessages]
MsgMissingDLC1=NOTICE - You are missing the optional "EX Extension" expansion (April 8, 2022 Summer Paid DLC). It adds 4 new personalities, private suite, and new items.%n%nThis expansion is optional, the patch will work fine without it. If you want to use it, install it BEFORE running HF Patch.

TrialDetected=This patch is for the full version of Koikatsu Sunshine only, it does not work with Koikatsu Sunshine Trial. Get the full game and try again.

IconGame=Koikatsu Sunshine
jp.IconGame=コイカツ！サンシャイン

[Tasks]
Name: desktopicon; Description: "{cm:TaskIcon}"; Flags: unchecked
Name: delete; Description: "{cm:TaskDelete}";
Name: delete\Plugins; Description: "{cm:TaskDeletePlugins}";
Name: delete\Config; Description: "{cm:TaskDeletePluginSettings}"; Flags: unchecked
Name: delete\scripts; Description: "Delete old scripts"; Flags: unchecked
Name: delete\Listfiles; Description: "{cm:TaskDeleteLst}"
#ifndef LITE
Name: delete\Sidemods; Description: "{cm:TaskDeleteSide}"
#else
Name: delete\Sidemods; Description: "{cm:TaskDeleteSide}"; Flags: unchecked
#endif

[Icons]
Name: "{userdesktop}\{cm:IconGame}"; Filename: "{app}\InitSetting.exe"; IconFilename: "{app}\InitSetting.exe"; WorkingDir: "{app}\"; Flags: createonlyiffileexists; Tasks: desktopicon; Comment: "{cm:IconGame}"
Name: "{userdesktop}\{cm:IconGame}"; Filename: "{app}\Initial Settings.exe"; IconFilename: "{app}\Initial Settings.exe"; WorkingDir: "{app}\"; Flags: createonlyiffileexists; Tasks: desktopicon; Comment: "{cm:IconGame}"

[Run]
Filename: "{tmp}\hfp\start.bat"; Parameters: """{app}"""; Description: "{cm:RunGame}"; Flags: postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist runhidden
Filename: "{app}\[UTILITY] KKManager\StandaloneUpdater.exe"; Parameters: """{app}"""; Description: "{cm:StartUpdate}"; Flags: postinstall runascurrentuser unchecked nowait skipifsilent skipifdoesntexist
#include "HelperLib\CommonRun.iss"

[Code]
// --------------------------------------------------------------------------------------- Helper methods

function VRInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{app}\KoikatsuSunshine_VR_Data\resources.assets'));
end;

function EXInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{app}\abdata\add70'));
end;

// --------------------------------------------------------------------------------------- Installation Events

function OnInstallLocationTest(): Boolean; // Additional validity checks (.exe checks are already passed)
begin
  if (not FileExists(ExpandConstant('{app}\KoikatsuSunshine_Data\sharedassets1.assets')) 
   or not FileExists(ExpandConstant('{app}\abdata\action\actioncontrol\00.unity3d')) 
   or not FileExists(ExpandConstant('{app}\abdata\sound\setting\soundsettingdata\00.unity3d')) 
   or not FileExists(ExpandConstant('{app}\abdata\sound\setting\sound3dsettingdata\00.unity3d'))) then
  begin
    // Cancel, there's file corruptions that we can't fix
    MsgBox(ExpandConstant('{cm:MsgMissingGameFiles}'), mbCriticalError, MB_OK);
    Result := False;
    Exit;
  end;
  
  if (FileExists(ExpandConstant('{app}\KoikatsuSunshineTrial.exe'))) then
  begin
    MsgBox('{cm:TrialDetected}', mbError, MB_OK);
    Result := False;
    Exit;
  end;
    
  // Check for missing paid DLC
  if not EXInstalled() then
    SuppressibleMsgBox(ExpandConstant('{cm:MsgMissingDLC1}'), mbInformation, MB_OK, 0);
  
  Result := True;
end;

procedure OnTasksPageOpen(); // Use to change which tasks are on by default
begin
  // If garbage plugins are detected, delete all old mods by default
   if (FileExists(ExpandConstant('{app}\BepInEx\0Harmony.dll')) 
    or FileExists(ExpandConstant('{app}\BepInEx\Assembly-CSharp.dll'))) then
  begin
    SuppressibleMsgBox(ExpandConstant('{cm:MsgInvalidModsDetected}'), mbError, MB_OK, 0);
    WizardSelectTasks('delete,delete\Plugins,delete\Config');
  end;
  
  if (FileExists(ExpandConstant('{app}\BepInEx\plugins\ksPlug.dll'))) then
  begin
    SuppressibleMsgBox(ExpandConstant('{cm:MsgKplugDetected}'), mbError, MB_OK, 0);
    WizardSelectTasks('delete,delete\Plugins,delete\Config');
  end;
end;

procedure OnPrepKillTasks(); // Close the game if it's running
begin
  MassTaskKill(['CharaStudio.exe', 'KoikatsuSunshine.exe', 'KoikatsuSunshine_VR.exe',
                'InitSetting.exe', 'KKManager.exe', 'StandaloneUpdater.exe']);
end;

procedure OnPrepDoCleanup(); // Remove any additional mods outside of the Bepinex folder
begin
    if (IsTaskSelected('delete\Sidemods')) then
      RemoveModsExceptModpacks(ExpandConstant('{app}'), ExpandConstant('{src}'));

    if (IsTaskSelected('delete\Listfiles')) then
      RemoveNonstandardListfiles(ExpandConstant('{app}'), ExpandConstant('{src}'));

    if (IsTaskSelected('delete\scripts')) then
      DelTree(ExpandConstant('{app}\scripts'), True, True, True);
end;

procedure OnInstallCompleted(); // Final installation step, use to modify files installed by the patch
begin
  FixConfigIllusion(ExpandConstant('{app}'), ExpandConstant('{src}'));
  FixConfigKoikatsu(ExpandConstant('{app}'), ExpandConstant('{src}'));
end;
