PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSaveToRoblox"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnPromptSaveInstanceToRobloxAsync"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSaveToRoblox"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnImportFromRoblox"]
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnOpenManagePackagePlugin"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnPublishAsPlugin"]
        3 RETURN                           R0 1

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["BindableEvent"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 LOADK                            R3 K4 ["OpenAssetConfiguration"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K5 ["Bind"]
       10 CALL                             R1 3 0
       11 GETTABLEKS                       R1 R0 K6 ["Event"]
       13 RETURN                           R1 1

PROTO_8:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["BindableEvent"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K4 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K5 ["Bind"]
       12 CALL                             R1 3 0
       13 GETTABLEKS                       R1 R0 K6 ["Event"]
       15 RETURN                           R1 1

PROTO_10:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["BindableEvent"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K4 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K5 ["Bind"]
       12 CALL                             R1 3 0
       13 GETTABLEKS                       R1 R0 K6 ["Event"]
       15 RETURN                           R1 1

PROTO_12:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["BindableEvent"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K4 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 NAMECALL                         R2 R2 K5 ["Bind"]
       12 CALL                             R2 3 0
       13 GETTABLEKS                       R2 R1 K6 ["Event"]
       15 RETURN                           R2 1

PROTO_14:
        0 LOADK                            R0 K0 ["luaToolboxToolbar"]
        1 RETURN                           R0 1

PROTO_15:
        0 LOADK                            R0 K0 ["luaToolboxButton"]
        1 RETURN                           R0 1

PROTO_16:
        0 LOADK                            R0 K0 ["Insert items from the toolbox"]
        1 RETURN                           R0 1

PROTO_17:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["General"]
        4 LOADK                            R7 K1 ["ToolboxToolbarName"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetStartupAssetId"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 LENGTH                           R1 R0
        6 LOADN                            R2 0
        7 JUMPIFNOTLT                      R2 R1 ; [+3]
        9 LOADB                            R1 1
       10 RETURN                           R1 1
       11 LOADB                            R1 0
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R1 R2 K4 ["Parent"]
       14 GETTABLEKS                       R0 R1 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Packages"]
       20 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R2 R1 K8 ["launch"]
       25 LOADK                            R3 K9 ["Toolbox"]
       26 GETTABLEKS                       R4 R0 K10 ["Src"]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R1 K11 ["isCli"]
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+1]
       33 RETURN                           R0 0
       34 GETIMPORT                        R2 K1 [require]
       36 GETTABLEKS                       R4 R0 K6 ["Packages"]
       38 GETTABLEKS                       R3 R4 K12 ["PluginLoader"]
       40 CALL                             R2 1 1
       41 GETTABLEKS                       R3 R2 K13 ["PluginLoaderBuilder"]
       43 GETIMPORT                        R4 K1 [require]
       45 GETTABLEKS                       R7 R0 K10 ["Src"]
       47 GETTABLEKS                       R6 R7 K14 ["Util"]
       49 GETTABLEKS                       R5 R6 K15 ["Constants"]
       51 CALL                             R4 1 1
       52 GETIMPORT                        R5 K1 [require]
       54 GETTABLEKS                       R8 R0 K10 ["Src"]
       56 GETTABLEKS                       R7 R8 K14 ["Util"]
       58 GETTABLEKS                       R6 R7 K16 ["Images"]
       60 CALL                             R5 1 1
       61 GETIMPORT                        R6 K1 [require]
       63 GETTABLEKS                       R7 R0 K17 ["SharedPluginConstants"]
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K1 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Src"]
       70 GETTABLEKS                       R10 R11 K14 ["Util"]
       72 GETTABLEKS                       R9 R10 K18 ["Inserts"]
       74 GETTABLEKS                       R8 R9 K19 ["SandboxAsset"]
       76 CALL                             R7 1 1
       77 GETIMPORT                        R8 K21 [game]
       79 LOADK                            R10 K22 ["StudioService"]
       80 NAMECALL                         R8 R8 K23 ["GetService"]
       82 CALL                             R8 2 1
       83 GETIMPORT                        R9 K21 [game]
       85 LOADK                            R11 K24 ["StudioAssetService"]
       86 NAMECALL                         R9 R9 K23 ["GetService"]
       88 CALL                             R9 2 1
       89 GETIMPORT                        R10 K21 [game]
       91 LOADK                            R12 K25 ["MemStorageService"]
       92 NAMECALL                         R10 R10 K23 ["GetService"]
       94 CALL                             R10 2 1
       95 GETIMPORT                        R11 K21 [game]
       97 LOADK                            R13 K26 ["ShowSaveToRobloxOnStudioAssetService"]
       98 NAMECALL                         R11 R11 K27 ["GetFastFlag"]
      100 CALL                             R11 2 1
      101 GETIMPORT                        R12 K1 [require]
      103 GETTABLEKS                       R16 R0 K10 ["Src"]
      105 GETTABLEKS                       R15 R16 K14 ["Util"]
      107 GETTABLEKS                       R14 R15 K28 ["SharedFlags"]
      109 GETTABLEKS                       R13 R14 K29 ["getFFlagToolboxCapabilities"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K1 [require]
      114 GETTABLEKS                       R16 R0 K10 ["Src"]
      116 GETTABLEKS                       R15 R16 K30 ["Flags"]
      118 GETTABLEKS                       R14 R15 K31 ["getFFlagSaveInstanceToRobloxAsyncEnabled"]
      120 CALL                             R13 1 1
      121 NEWTABLE                         R14 16 0
      123 JUMPIFNOT                        R11 ; [+3]
      124 DUPCLOSURE                       R15 K32 [PROTO_0]
      125 CAPTURE                          VAL R9
      126 JUMP                             ; [+1]
      127 LOADNIL                          R15
      128 SETTABLEKS                       R15 R14 K33 ["StudioAssetService.OnSaveToRoblox"]
      130 MOVE                             R16 R13
      131 CALL                             R16 0 1
      132 JUMPIFNOT                        R16 ; [+3]
      133 DUPCLOSURE                       R15 K34 [PROTO_1]
      134 CAPTURE                          VAL R9
      135 JUMP                             ; [+1]
      136 LOADNIL                          R15
      137 SETTABLEKS                       R15 R14 K35 ["StudioAssetService.OnPromptSaveInstanceToRobloxAsync"]
      139 DUPCLOSURE                       R15 K36 [PROTO_2]
      140 CAPTURE                          VAL R8
      141 SETTABLEKS                       R15 R14 K37 ["StudioService.OnSaveToRoblox"]
      143 DUPCLOSURE                       R15 K38 [PROTO_3]
      144 CAPTURE                          VAL R8
      145 SETTABLEKS                       R15 R14 K39 ["StudioService.OnImportFromRoblox"]
      147 DUPCLOSURE                       R15 K40 [PROTO_4]
      148 CAPTURE                          VAL R8
      149 SETTABLEKS                       R15 R14 K41 ["StudioService.OnOpenManagePackagePlugin"]
      151 DUPCLOSURE                       R15 K42 [PROTO_5]
      152 CAPTURE                          VAL R8
      153 SETTABLEKS                       R15 R14 K43 ["StudioService.OnPublishAsPlugin"]
      155 DUPCLOSURE                       R15 K44 [PROTO_7]
      156 CAPTURE                          VAL R10
      157 SETTABLEKS                       R15 R14 K45 ["MemStorageService.OpenAssetConfiguration"]
      159 LOADK                            R16 K46 ["MemStorageService."]
      160 GETTABLEKS                       R17 R6 K47 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
      162 CONCAT                           R15 R16 R17
      163 DUPCLOSURE                       R16 K48 [PROTO_9]
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R6
      166 SETTABLE                         R16 R14 R15
      167 LOADK                            R16 K46 ["MemStorageService."]
      168 GETTABLEKS                       R17 R6 K49 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
      170 CONCAT                           R15 R16 R17
      171 DUPCLOSURE                       R16 K50 [PROTO_11]
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R6
      174 SETTABLE                         R16 R14 R15
      175 LOADK                            R16 K46 ["MemStorageService."]
      176 GETTABLEKS                       R17 R4 K51 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
      178 CONCAT                           R15 R16 R17
      179 DUPCLOSURE                       R16 K52 [PROTO_13]
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R4
      182 SETTABLE                         R16 R14 R15
      183 DUPTABLE                         R15 K64 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers", "shouldImmediatelyOpen"}]
      184 GETIMPORT                        R16 K65 [plugin]
      186 SETTABLEKS                       R16 R15 K53 ["plugin"]
      188 LOADK                            R16 K9 ["Toolbox"]
      189 SETTABLEKS                       R16 R15 K54 ["pluginName"]
      191 GETTABLEKS                       R18 R0 K66 ["Resources"]
      193 GETTABLEKS                       R17 R18 K67 ["Localization"]
      195 GETTABLEKS                       R16 R17 K68 ["LocalizedStrings"]
      197 SETTABLEKS                       R16 R15 K55 ["translationResourceTable"]
      199 GETTABLEKS                       R18 R0 K66 ["Resources"]
      201 GETTABLEKS                       R17 R18 K67 ["Localization"]
      203 GETTABLEKS                       R16 R17 K69 ["SourceStrings"]
      205 SETTABLEKS                       R16 R15 K56 ["fallbackResourceTable"]
      207 LOADNIL                          R16
      208 SETTABLEKS                       R16 R15 K57 ["overrideLocaleId"]
      210 LOADNIL                          R16
      211 SETTABLEKS                       R16 R15 K58 ["localizationNamespace"]
      213 DUPCLOSURE                       R16 K70 [PROTO_14]
      214 SETTABLEKS                       R16 R15 K59 ["getToolbarName"]
      216 DUPTABLE                         R16 K76 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
      217 DUPCLOSURE                       R17 K77 [PROTO_15]
      218 SETTABLEKS                       R17 R16 K71 ["getName"]
      220 DUPCLOSURE                       R17 K78 [PROTO_16]
      221 SETTABLEKS                       R17 R16 K72 ["getDescription"]
      223 GETTABLEKS                       R17 R5 K79 ["TOOLBOX_ICON"]
      225 SETTABLEKS                       R17 R16 K73 ["icon"]
      227 LOADNIL                          R17
      228 SETTABLEKS                       R17 R16 K74 ["text"]
      230 LOADB                            R17 1
      231 SETTABLEKS                       R17 R16 K75 ["clickableWhenViewportHidden"]
      233 SETTABLEKS                       R16 R15 K60 ["buttonInfo"]
      235 DUPTABLE                         R16 K85 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
      236 LOADK                            R17 K9 ["Toolbox"]
      237 SETTABLEKS                       R17 R16 K80 ["id"]
      239 GETIMPORT                        R17 K88 [DockWidgetPluginGuiInfo.new]
      241 GETIMPORT                        R18 K92 [Enum.InitialDockState.Left]
      243 LOADB                            R19 1
      244 LOADB                            R20 0
      245 LOADN                            R21 0
      246 LOADN                            R22 0
      247 GETTABLEKS                       R23 R4 K93 ["TOOLBOX_MIN_WIDTH"]
      249 GETTABLEKS                       R24 R4 K94 ["TOOLBOX_MIN_HEIGHT"]
      251 CALL                             R17 7 1
      252 SETTABLEKS                       R17 R16 K81 ["dockWidgetPluginGuiInfo"]
      254 DUPCLOSURE                       R17 K95 [PROTO_17]
      255 SETTABLEKS                       R17 R16 K82 ["getDockTitle"]
      257 LOADK                            R17 K9 ["Toolbox"]
      258 SETTABLEKS                       R17 R16 K83 ["name"]
      260 GETIMPORT                        R17 K98 [Enum.ZIndexBehavior.Sibling]
      262 SETTABLEKS                       R17 R16 K84 ["zIndexBehavior"]
      264 SETTABLEKS                       R16 R15 K61 ["dockWidgetInfo"]
      266 SETTABLEKS                       R14 R15 K62 ["extraTriggers"]
      268 DUPCLOSURE                       R16 K99 [PROTO_18]
      269 CAPTURE                          VAL R8
      270 SETTABLEKS                       R16 R15 K63 ["shouldImmediatelyOpen"]
      272 GETTABLEKS                       R16 R3 K100 ["build"]
      274 MOVE                             R17 R15
      275 CALL                             R16 1 1
      276 GETTABLEKS                       R17 R16 K101 ["pluginLoader"]
      278 NAMECALL                         R17 R17 K102 ["waitForUserInteraction"]
      280 CALL                             R17 1 1
      281 JUMPIF                           R17 ; [+1]
      282 RETURN                           R0 0
      283 GETIMPORT                        R18 K1 [require]
      285 GETIMPORT                        R21 K3 [script]
      287 GETTABLEKS                       R20 R21 K4 ["Parent"]
      289 GETTABLEKS                       R19 R20 K103 ["main"]
      291 CALL                             R18 1 1
      292 MOVE                             R19 R18
      293 GETIMPORT                        R20 K65 [plugin]
      295 MOVE                             R21 R16
      296 CALL                             R19 2 0
      297 RETURN                           R0 0
