PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSaveToRoblox"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSaveToRoblox"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnImportFromRoblox"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnOpenManagePackagePlugin"]
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnPublishAsPlugin"]
        3 RETURN                           R0 1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 LOADK                            R0 K0 ["luaToolboxToolbar"]
        1 RETURN                           R0 1

PROTO_14:
        0 LOADK                            R0 K0 ["luaToolboxButton"]
        1 RETURN                           R0 1

PROTO_15:
        0 LOADK                            R0 K0 ["Insert items from the toolbox"]
        1 RETURN                           R0 1

PROTO_16:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["General"]
        4 LOADK                            R7 K1 ["ToolboxToolbarName"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_17:
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

PROTO_18:
        0 LOADK                            R4 K0 ["Model"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+10]
        5 LOADK                            R4 K2 ["Folder"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+5]
       10 LOADK                            R4 K3 ["LuaSourceContainer"]
       11 NAMECALL                         R2 R0 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+7]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K4 ["SetTelemetryForInstance"]
       18 MOVE                             R3 R0
       19 MOVE                             R4 R1
       20 LOADK                            R5 K5 ["PlaceOpen"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

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
       72 GETTABLEKS                       R9 R10 K18 ["DataModel"]
       74 GETTABLEKS                       R8 R9 K19 ["CrawlDataModelForStoreModels"]
       76 CALL                             R7 1 1
       77 GETIMPORT                        R8 K1 [require]
       79 GETTABLEKS                       R12 R0 K10 ["Src"]
       81 GETTABLEKS                       R11 R12 K14 ["Util"]
       83 GETTABLEKS                       R10 R11 K20 ["Inserts"]
       85 GETTABLEKS                       R9 R10 K21 ["SandboxAsset"]
       87 CALL                             R8 1 1
       88 GETIMPORT                        R9 K23 [game]
       90 LOADK                            R11 K24 ["StudioService"]
       91 NAMECALL                         R9 R9 K25 ["GetService"]
       93 CALL                             R9 2 1
       94 GETIMPORT                        R10 K23 [game]
       96 LOADK                            R12 K26 ["StudioAssetService"]
       97 NAMECALL                         R10 R10 K25 ["GetService"]
       99 CALL                             R10 2 1
      100 GETIMPORT                        R11 K23 [game]
      102 LOADK                            R13 K27 ["MemStorageService"]
      103 NAMECALL                         R11 R11 K25 ["GetService"]
      105 CALL                             R11 2 1
      106 GETIMPORT                        R12 K23 [game]
      108 LOADK                            R14 K28 ["ShowSaveToRobloxOnStudioAssetService"]
      109 NAMECALL                         R12 R12 K29 ["GetFastFlag"]
      111 CALL                             R12 2 1
      112 GETIMPORT                        R13 K1 [require]
      114 GETTABLEKS                       R17 R0 K10 ["Src"]
      116 GETTABLEKS                       R16 R17 K14 ["Util"]
      118 GETTABLEKS                       R15 R16 K30 ["SharedFlags"]
      120 GETTABLEKS                       R14 R15 K31 ["getFFlagToolboxCapabilities"]
      122 CALL                             R13 1 1
      123 NEWTABLE                         R14 8 0
      125 JUMPIFNOT                        R12 ; [+3]
      126 DUPCLOSURE                       R15 K32 [PROTO_0]
      127 CAPTURE                          VAL R10
      128 JUMP                             ; [+1]
      129 LOADNIL                          R15
      130 SETTABLEKS                       R15 R14 K33 ["StudioAssetService.OnSaveToRoblox"]
      132 DUPCLOSURE                       R15 K34 [PROTO_1]
      133 CAPTURE                          VAL R9
      134 SETTABLEKS                       R15 R14 K35 ["StudioService.OnSaveToRoblox"]
      136 DUPCLOSURE                       R15 K36 [PROTO_2]
      137 CAPTURE                          VAL R9
      138 SETTABLEKS                       R15 R14 K37 ["StudioService.OnImportFromRoblox"]
      140 DUPCLOSURE                       R15 K38 [PROTO_3]
      141 CAPTURE                          VAL R9
      142 SETTABLEKS                       R15 R14 K39 ["StudioService.OnOpenManagePackagePlugin"]
      144 DUPCLOSURE                       R15 K40 [PROTO_4]
      145 CAPTURE                          VAL R9
      146 SETTABLEKS                       R15 R14 K41 ["StudioService.OnPublishAsPlugin"]
      148 DUPCLOSURE                       R15 K42 [PROTO_6]
      149 CAPTURE                          VAL R11
      150 SETTABLEKS                       R15 R14 K43 ["MemStorageService.OpenAssetConfiguration"]
      152 LOADK                            R16 K44 ["MemStorageService."]
      153 GETTABLEKS                       R17 R6 K45 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
      155 CONCAT                           R15 R16 R17
      156 DUPCLOSURE                       R16 K46 [PROTO_8]
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R6
      159 SETTABLE                         R16 R14 R15
      160 LOADK                            R16 K44 ["MemStorageService."]
      161 GETTABLEKS                       R17 R6 K47 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
      163 CONCAT                           R15 R16 R17
      164 DUPCLOSURE                       R16 K48 [PROTO_10]
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R6
      167 SETTABLE                         R16 R14 R15
      168 LOADK                            R16 K44 ["MemStorageService."]
      169 GETTABLEKS                       R17 R4 K49 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
      171 CONCAT                           R15 R16 R17
      172 DUPCLOSURE                       R16 K50 [PROTO_12]
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R4
      175 SETTABLE                         R16 R14 R15
      176 DUPTABLE                         R15 K62 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers", "shouldImmediatelyOpen"}]
      177 GETIMPORT                        R16 K63 [plugin]
      179 SETTABLEKS                       R16 R15 K51 ["plugin"]
      181 LOADK                            R16 K9 ["Toolbox"]
      182 SETTABLEKS                       R16 R15 K52 ["pluginName"]
      184 GETTABLEKS                       R18 R0 K64 ["Resources"]
      186 GETTABLEKS                       R17 R18 K65 ["Localization"]
      188 GETTABLEKS                       R16 R17 K66 ["LocalizedStrings"]
      190 SETTABLEKS                       R16 R15 K53 ["translationResourceTable"]
      192 GETTABLEKS                       R18 R0 K64 ["Resources"]
      194 GETTABLEKS                       R17 R18 K65 ["Localization"]
      196 GETTABLEKS                       R16 R17 K67 ["SourceStrings"]
      198 SETTABLEKS                       R16 R15 K54 ["fallbackResourceTable"]
      200 LOADNIL                          R16
      201 SETTABLEKS                       R16 R15 K55 ["overrideLocaleId"]
      203 LOADNIL                          R16
      204 SETTABLEKS                       R16 R15 K56 ["localizationNamespace"]
      206 DUPCLOSURE                       R16 K68 [PROTO_13]
      207 SETTABLEKS                       R16 R15 K57 ["getToolbarName"]
      209 DUPTABLE                         R16 K74 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
      210 DUPCLOSURE                       R17 K75 [PROTO_14]
      211 SETTABLEKS                       R17 R16 K69 ["getName"]
      213 DUPCLOSURE                       R17 K76 [PROTO_15]
      214 SETTABLEKS                       R17 R16 K70 ["getDescription"]
      216 GETTABLEKS                       R17 R5 K77 ["TOOLBOX_ICON"]
      218 SETTABLEKS                       R17 R16 K71 ["icon"]
      220 LOADNIL                          R17
      221 SETTABLEKS                       R17 R16 K72 ["text"]
      223 LOADB                            R17 1
      224 SETTABLEKS                       R17 R16 K73 ["clickableWhenViewportHidden"]
      226 SETTABLEKS                       R16 R15 K58 ["buttonInfo"]
      228 DUPTABLE                         R16 K83 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
      229 LOADK                            R17 K9 ["Toolbox"]
      230 SETTABLEKS                       R17 R16 K78 ["id"]
      232 GETIMPORT                        R17 K86 [DockWidgetPluginGuiInfo.new]
      234 GETIMPORT                        R18 K90 [Enum.InitialDockState.Left]
      236 LOADB                            R19 1
      237 LOADB                            R20 0
      238 LOADN                            R21 0
      239 LOADN                            R22 0
      240 GETTABLEKS                       R23 R4 K91 ["TOOLBOX_MIN_WIDTH"]
      242 GETTABLEKS                       R24 R4 K92 ["TOOLBOX_MIN_HEIGHT"]
      244 CALL                             R17 7 1
      245 SETTABLEKS                       R17 R16 K79 ["dockWidgetPluginGuiInfo"]
      247 DUPCLOSURE                       R17 K93 [PROTO_16]
      248 SETTABLEKS                       R17 R16 K80 ["getDockTitle"]
      250 LOADK                            R17 K9 ["Toolbox"]
      251 SETTABLEKS                       R17 R16 K81 ["name"]
      253 GETIMPORT                        R17 K96 [Enum.ZIndexBehavior.Sibling]
      255 SETTABLEKS                       R17 R16 K82 ["zIndexBehavior"]
      257 SETTABLEKS                       R16 R15 K59 ["dockWidgetInfo"]
      259 SETTABLEKS                       R14 R15 K60 ["extraTriggers"]
      261 DUPCLOSURE                       R16 K97 [PROTO_17]
      262 CAPTURE                          VAL R9
      263 SETTABLEKS                       R16 R15 K61 ["shouldImmediatelyOpen"]
      265 MOVE                             R16 R13
      266 CALL                             R16 0 1
      267 JUMPIFNOT                        R16 ; [+6]
      268 MOVE                             R16 R7
      269 GETIMPORT                        R17 K23 [game]
      271 DUPCLOSURE                       R18 K98 [PROTO_18]
      272 CAPTURE                          VAL R8
      273 CALL                             R16 2 0
      274 GETTABLEKS                       R16 R3 K99 ["build"]
      276 MOVE                             R17 R15
      277 CALL                             R16 1 1
      278 GETTABLEKS                       R17 R16 K100 ["pluginLoader"]
      280 NAMECALL                         R17 R17 K101 ["waitForUserInteraction"]
      282 CALL                             R17 1 1
      283 JUMPIF                           R17 ; [+1]
      284 RETURN                           R0 0
      285 GETIMPORT                        R18 K1 [require]
      287 GETIMPORT                        R21 K3 [script]
      289 GETTABLEKS                       R20 R21 K4 ["Parent"]
      291 GETTABLEKS                       R19 R20 K102 ["main"]
      293 CALL                             R18 1 1
      294 MOVE                             R19 R18
      295 GETIMPORT                        R20 K63 [plugin]
      297 MOVE                             R21 R16
      298 CALL                             R19 2 0
      299 RETURN                           R0 0
