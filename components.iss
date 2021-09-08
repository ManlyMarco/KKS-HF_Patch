[Components]
Name: "BepInEx";                               Description: "BepInEx v5.4.15.0 (Plugin framework)"                                                 ; Types: full_en full extra_en extra custom bare; Flags: fixed
Name: "BepInEx\ConfigurationManager";          Description: "Configuration Manager v16.1 (Can change plugin settings. Press F1 to open, not visible inside HMD)"; Types: full_en full extra extra_en custom bare; Flags: fixed
Name: "BepInEx\MessageCenter";                 Description: "Message Center v1.1.1 (Allows plugins to show messages in top left corner of the game)"; Types: full_en full extra extra_en custom bare; Flags: fixed
Name: "BepInEx\BepInEx_CatchUnityEventExceptions"; Description: "Catch Unity Event Exceptions v1.0 (Prevents some bugs in plugins from affecting other plugins)"; Types: full_en full extra extra_en
Name: "BepInEx\Dev";                           Description: "{cm:CompDev}"                                                                         
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "IllusionLaunchers";                     Description: "IllusionLaunchers v3.1.1.0 (Custom game launcher)"                                    ; Types: full_en full extra extra_en custom
Name: "KKManager";                             Description: "KKManager v0.17.0.0 (Manage and update mods, browse cards)"                           ; Types: full_en full extra extra_en custom bare; Flags: fixed
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "API";                                   Description: "Modding APIs (Necessary for other mods/plugins to work properly)"                     ; Types: full_en full extra_en extra custom bare; Flags: fixed
Name: "API\ResourceRedirector";                Description: "XUnity Resource Redirector v1.2.0 (Modding API)"                                      ; Types: full_en full extra_en extra custom bare; Flags: fixed
Name: "API\BepisPlugins";                      Description: "BepisPlugins v16.4 (Collection of essential plugins)"                                 ; Types: full_en full extra_en extra custom bare; Flags: fixed
Name: "API\KKAPI";                             Description: "Modding API v1.23 (API needed by many plugins)"                                       ; Types: full_en full extra_en extra custom bare; Flags: fixed
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "AT";                                    Description: "XUnity Auto Translator v1.0.2.1 (Translation loader)"                                 ; Types: full extra full_en extra_en custom
Name: "AT\TextResourceRedirector";             Description: "Text Resource Redirector v1.4.4.3 (Needed for many translations to load)"             ; Types: full_en full extra extra_en
Name: "AT\TranslationHelper";                  Description: "Translation Helper v1.1.0.9 (Extension for AT, needed for some translations)"         ; Types: full_en full extra extra_en
Name: "AT\TL";                                 Description: "{cm:CompTL}"                                                                          ; Types: full_en extra_en
Name: "AT\TL\EnglishTranslation";              Description: "Collection of English translations up to {#CurrentDate}"                              ; Types: full_en extra_en
;Name: "AT\TL\EnglishTranslation\UserData";     Description: "Translated cards, scenes and backgrounds (they overwrite defaults)"                   
Name: "AT\TL\KK_Subtitles";                    Description: "Subtitles v2.2 (Maker and H-scene subtitles. Warning: Most of the subs are machine-translated and can be pretty bad in H-scenes)"; Types: full_en extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "UNC";                                   Description: "{cm:CompUNC}"                                                                         ; Types: full_en full extra_en extra
Name: "UNC\Selector";                          Description: "Uncensor Selector v3.11.2 (NEEDS Koikatsu Overlay Mods!)"                             ; Types: full_en full extra_en extra
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Content";                               Description: "Additional content for character and scene creation (Needed to properly load many character cards and scenes)"; Types: full_en full extra_en extra
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "FIX";                                   Description: "{cm:CompFIX}"                                                                         ; Types: extra_en extra
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Feature";                               Description: "Improvements and additional features"                                                 ; Types: extra_en extra
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "MISC";                                  Description: "{cm:CompMISC}"                                                                        
Name: "MISC\FPS";                              Description: "FPS Counter v3.1 (Useful for performance testing)"                                    ; Types: full_en full extra extra_en
Name: "MISC\FIX";                              Description: "Fix game registry (e.g. after moving to different folder)"                            ; Types: full_en full extra extra_en
Name: "MISC\RuntimeUnityEditor";               Description: "RuntimeUnityEditor v2.4.0.0 (Debugging and development tool)"                         ; Types: full_en full extra extra_en
Name: "MISC\RuntimeUnityEditor\Trainer";       Description: "Cheat Tools v2.10.1 (Trainer and debugger)"                                           ; Types: full_en full extra extra_en
Name: "MISC\Memes";                            Description: "Custom intro voices v16.0 (Think Chikarin, think!)"                                   ; Types: extra_en extra
Name: "MISC\ScriptLoader";                     Description: "C# Script Loader v1.2.4 (Runs user scripts from scripts folder)"                      

[Files]
#ifndef DEBUG
Source: "Input\_Plugins\_out\BepInEx_x64\*";                DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.ConfigurationManager\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\ConfigurationManager; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.MessageCenter\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\MessageCenter; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepIn4Patcher\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\CompatBep4; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.IPALoader\*";          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\CompatIPA; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.CatchUnityEventExceptions\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\BepInEx_CatchUnityEventExceptions; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\IllusionLaunchers_Koikatsu\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: IllusionLaunchers; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\KKManager\*";                  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: KKManager; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\KKAPI\*";                      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: API\KKAPI; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\XUnity.AutoTranslator-BepIn-5x\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\KK_UncensorSelector\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: UNC\Selector; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\KKABMX\*";                     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\KKABMX; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\IllusionFixes_Koikatsu\*";     DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\KoikatuFixes; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\KK_SFW_Patcher\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\KK_SFW; Excludes: "manifest.xml"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Plugins\_out\FPSCounter\*";                 DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\FPS; Excludes: "manifest.xml"
; todo if multiple files match, match by source name

[Code]
// Need to put this behind an empty Code category so that the automatic tool doesn't add new file items below this #endif
#endif