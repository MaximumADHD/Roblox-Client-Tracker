PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSaveToRoblox"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPromptSaveInstanceToRobloxAsync"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSaveToRoblox"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnImportFromRoblox"]
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnOpenManagePackagePlugin"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishAsPlugin"]
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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K4 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K4 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
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
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K4 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 GETTABLEKS                       R0 R0 K4 ["Parent"]
       14 GETTABLEKS                       R0 R0 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Packages"]
       20 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
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
       36 GETTABLEKS                       R3 R0 K6 ["Packages"]
       38 GETTABLEKS                       R3 R3 K12 ["PluginLoader"]
       40 CALL                             R2 1 1
       41 GETTABLEKS                       R3 R2 K13 ["PluginLoaderBuilder"]
       43 GETIMPORT                        R4 K1 [require]
       45 GETTABLEKS                       R5 R0 K10 ["Src"]
       47 GETTABLEKS                       R5 R5 K14 ["Util"]
       49 GETTABLEKS                       R5 R5 K15 ["Constants"]
       51 CALL                             R4 1 1
       52 GETIMPORT                        R5 K1 [require]
       54 GETTABLEKS                       R6 R0 K10 ["Src"]
       56 GETTABLEKS                       R6 R6 K14 ["Util"]
       58 GETTABLEKS                       R6 R6 K16 ["Images"]
       60 CALL                             R5 1 1
       61 GETIMPORT                        R6 K1 [require]
       63 GETTABLEKS                       R7 R0 K17 ["SharedPluginConstants"]
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K1 [require]
       68 GETTABLEKS                       R8 R0 K10 ["Src"]
       70 GETTABLEKS                       R8 R8 K14 ["Util"]
       72 GETTABLEKS                       R8 R8 K18 ["Inserts"]
       74 GETTABLEKS                       R8 R8 K19 ["SandboxAsset"]
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
       95 GETIMPORT                        R11 K1 [require]
       97 GETTABLEKS                       R12 R0 K10 ["Src"]
       99 GETTABLEKS                       R12 R12 K14 ["Util"]
      101 GETTABLEKS                       R12 R12 K26 ["SharedFlags"]
      103 GETTABLEKS                       R12 R12 K27 ["getFFlagToolboxCapabilities"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K1 [require]
      108 GETTABLEKS                       R13 R0 K10 ["Src"]
      110 GETTABLEKS                       R13 R13 K28 ["Flags"]
      112 GETTABLEKS                       R13 R13 K29 ["getFFlagSaveInstanceToRobloxAsyncEnabled"]
      114 CALL                             R12 1 1
      115 NEWTABLE                         R13 16 0
      117 DUPCLOSURE                       R14 K30 [PROTO_0]
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R14 R13 K31 ["StudioAssetService.OnSaveToRoblox"]
      121 MOVE                             R15 R12
      122 CALL                             R15 0 1
      123 JUMPIFNOT                        R15 ; [+3]
      124 DUPCLOSURE                       R14 K32 [PROTO_1]
      125 CAPTURE                          VAL R9
      126 JUMP                             ; [+1]
      127 LOADNIL                          R14
      128 SETTABLEKS                       R14 R13 K33 ["StudioAssetService.OnPromptSaveInstanceToRobloxAsync"]
      130 DUPCLOSURE                       R14 K34 [PROTO_2]
      131 CAPTURE                          VAL R8
      132 SETTABLEKS                       R14 R13 K35 ["StudioService.OnSaveToRoblox"]
      134 DUPCLOSURE                       R14 K36 [PROTO_3]
      135 CAPTURE                          VAL R8
      136 SETTABLEKS                       R14 R13 K37 ["StudioService.OnImportFromRoblox"]
      138 DUPCLOSURE                       R14 K38 [PROTO_4]
      139 CAPTURE                          VAL R8
      140 SETTABLEKS                       R14 R13 K39 ["StudioService.OnOpenManagePackagePlugin"]
      142 DUPCLOSURE                       R14 K40 [PROTO_5]
      143 CAPTURE                          VAL R8
      144 SETTABLEKS                       R14 R13 K41 ["StudioService.OnPublishAsPlugin"]
      146 DUPCLOSURE                       R14 K42 [PROTO_7]
      147 CAPTURE                          VAL R10
      148 SETTABLEKS                       R14 R13 K43 ["MemStorageService.OpenAssetConfiguration"]
      150 LOADK                            R15 K44 ["MemStorageService."]
      151 GETTABLEKS                       R16 R6 K45 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
      153 CONCAT                           R14 R15 R16
      154 DUPCLOSURE                       R15 K46 [PROTO_9]
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R6
      157 SETTABLE                         R15 R13 R14
      158 LOADK                            R15 K44 ["MemStorageService."]
      159 GETTABLEKS                       R16 R6 K47 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
      161 CONCAT                           R14 R15 R16
      162 DUPCLOSURE                       R15 K48 [PROTO_11]
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R6
      165 SETTABLE                         R15 R13 R14
      166 LOADK                            R15 K44 ["MemStorageService."]
      167 GETTABLEKS                       R16 R4 K49 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
      169 CONCAT                           R14 R15 R16
      170 DUPCLOSURE                       R15 K50 [PROTO_13]
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R4
      173 SETTABLE                         R15 R13 R14
      174 DUPTABLE                         R14 K62 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers", "shouldImmediatelyOpen"}]
      175 GETIMPORT                        R15 K63 [plugin]
      177 SETTABLEKS                       R15 R14 K51 ["plugin"]
      179 LOADK                            R15 K9 ["Toolbox"]
      180 SETTABLEKS                       R15 R14 K52 ["pluginName"]
      182 GETTABLEKS                       R15 R0 K64 ["Resources"]
      184 GETTABLEKS                       R15 R15 K65 ["Localization"]
      186 GETTABLEKS                       R15 R15 K66 ["LocalizedStrings"]
      188 SETTABLEKS                       R15 R14 K53 ["translationResourceTable"]
      190 GETTABLEKS                       R15 R0 K64 ["Resources"]
      192 GETTABLEKS                       R15 R15 K65 ["Localization"]
      194 GETTABLEKS                       R15 R15 K67 ["SourceStrings"]
      196 SETTABLEKS                       R15 R14 K54 ["fallbackResourceTable"]
      198 LOADNIL                          R15
      199 SETTABLEKS                       R15 R14 K55 ["overrideLocaleId"]
      201 LOADNIL                          R15
      202 SETTABLEKS                       R15 R14 K56 ["localizationNamespace"]
      204 DUPCLOSURE                       R15 K68 [PROTO_14]
      205 SETTABLEKS                       R15 R14 K57 ["getToolbarName"]
      207 DUPTABLE                         R15 K74 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
      208 DUPCLOSURE                       R16 K75 [PROTO_15]
      209 SETTABLEKS                       R16 R15 K69 ["getName"]
      211 DUPCLOSURE                       R16 K76 [PROTO_16]
      212 SETTABLEKS                       R16 R15 K70 ["getDescription"]
      214 GETTABLEKS                       R16 R5 K77 ["TOOLBOX_ICON"]
      216 SETTABLEKS                       R16 R15 K71 ["icon"]
      218 LOADNIL                          R16
      219 SETTABLEKS                       R16 R15 K72 ["text"]
      221 LOADB                            R16 1
      222 SETTABLEKS                       R16 R15 K73 ["clickableWhenViewportHidden"]
      224 SETTABLEKS                       R15 R14 K58 ["buttonInfo"]
      226 DUPTABLE                         R15 K83 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
      227 LOADK                            R16 K9 ["Toolbox"]
      228 SETTABLEKS                       R16 R15 K78 ["id"]
      230 GETIMPORT                        R16 K86 [DockWidgetPluginGuiInfo.new]
      232 GETIMPORT                        R17 K90 [Enum.InitialDockState.Left]
      234 LOADB                            R18 1
      235 LOADB                            R19 0
      236 LOADN                            R20 0
      237 LOADN                            R21 0
      238 GETTABLEKS                       R22 R4 K91 ["TOOLBOX_MIN_WIDTH"]
      240 GETTABLEKS                       R23 R4 K92 ["TOOLBOX_MIN_HEIGHT"]
      242 CALL                             R16 7 1
      243 SETTABLEKS                       R16 R15 K79 ["dockWidgetPluginGuiInfo"]
      245 DUPCLOSURE                       R16 K93 [PROTO_17]
      246 SETTABLEKS                       R16 R15 K80 ["getDockTitle"]
      248 LOADK                            R16 K9 ["Toolbox"]
      249 SETTABLEKS                       R16 R15 K81 ["name"]
      251 GETIMPORT                        R16 K96 [Enum.ZIndexBehavior.Sibling]
      253 SETTABLEKS                       R16 R15 K82 ["zIndexBehavior"]
      255 SETTABLEKS                       R15 R14 K59 ["dockWidgetInfo"]
      257 SETTABLEKS                       R13 R14 K60 ["extraTriggers"]
      259 DUPCLOSURE                       R15 K97 [PROTO_18]
      260 CAPTURE                          VAL R8
      261 SETTABLEKS                       R15 R14 K61 ["shouldImmediatelyOpen"]
      263 GETTABLEKS                       R15 R3 K98 ["build"]
      265 MOVE                             R16 R14
      266 CALL                             R15 1 1
      267 GETTABLEKS                       R16 R15 K99 ["pluginLoader"]
      269 NAMECALL                         R16 R16 K100 ["waitForUserInteraction"]
      271 CALL                             R16 1 1
      272 JUMPIF                           R16 ; [+1]
      273 RETURN                           R0 0
      274 GETIMPORT                        R17 K1 [require]
      276 GETIMPORT                        R18 K3 [script]
      278 GETTABLEKS                       R18 R18 K4 ["Parent"]
      280 GETTABLEKS                       R18 R18 K101 ["main"]
      282 CALL                             R17 1 1
      283 MOVE                             R18 R17
      284 GETIMPORT                        R19 K63 [plugin]
      286 MOVE                             R20 R15
      287 CALL                             R18 2 0
      288 RETURN                           R0 0
