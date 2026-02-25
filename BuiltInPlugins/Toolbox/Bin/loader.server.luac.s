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

PROTO_19:
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
      123 GETIMPORT                        R14 K1 [require]
      125 GETTABLEKS                       R17 R0 K10 ["Src"]
      127 GETTABLEKS                       R16 R17 K32 ["Flags"]
      129 GETTABLEKS                       R15 R16 K33 ["getFFlagSaveInstanceToRobloxAsyncEnabled"]
      131 CALL                             R14 1 1
      132 NEWTABLE                         R15 16 0
      134 JUMPIFNOT                        R12 ; [+3]
      135 DUPCLOSURE                       R16 K34 [PROTO_0]
      136 CAPTURE                          VAL R10
      137 JUMP                             ; [+1]
      138 LOADNIL                          R16
      139 SETTABLEKS                       R16 R15 K35 ["StudioAssetService.OnSaveToRoblox"]
      141 MOVE                             R17 R14
      142 CALL                             R17 0 1
      143 JUMPIFNOT                        R17 ; [+3]
      144 DUPCLOSURE                       R16 K36 [PROTO_1]
      145 CAPTURE                          VAL R10
      146 JUMP                             ; [+1]
      147 LOADNIL                          R16
      148 SETTABLEKS                       R16 R15 K37 ["StudioAssetService.OnPromptSaveInstanceToRobloxAsync"]
      150 DUPCLOSURE                       R16 K38 [PROTO_2]
      151 CAPTURE                          VAL R9
      152 SETTABLEKS                       R16 R15 K39 ["StudioService.OnSaveToRoblox"]
      154 DUPCLOSURE                       R16 K40 [PROTO_3]
      155 CAPTURE                          VAL R9
      156 SETTABLEKS                       R16 R15 K41 ["StudioService.OnImportFromRoblox"]
      158 DUPCLOSURE                       R16 K42 [PROTO_4]
      159 CAPTURE                          VAL R9
      160 SETTABLEKS                       R16 R15 K43 ["StudioService.OnOpenManagePackagePlugin"]
      162 DUPCLOSURE                       R16 K44 [PROTO_5]
      163 CAPTURE                          VAL R9
      164 SETTABLEKS                       R16 R15 K45 ["StudioService.OnPublishAsPlugin"]
      166 DUPCLOSURE                       R16 K46 [PROTO_7]
      167 CAPTURE                          VAL R11
      168 SETTABLEKS                       R16 R15 K47 ["MemStorageService.OpenAssetConfiguration"]
      170 LOADK                            R17 K48 ["MemStorageService."]
      171 GETTABLEKS                       R18 R6 K49 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
      173 CONCAT                           R16 R17 R18
      174 DUPCLOSURE                       R17 K50 [PROTO_9]
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R6
      177 SETTABLE                         R17 R15 R16
      178 LOADK                            R17 K48 ["MemStorageService."]
      179 GETTABLEKS                       R18 R6 K51 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
      181 CONCAT                           R16 R17 R18
      182 DUPCLOSURE                       R17 K52 [PROTO_11]
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R6
      185 SETTABLE                         R17 R15 R16
      186 LOADK                            R17 K48 ["MemStorageService."]
      187 GETTABLEKS                       R18 R4 K53 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
      189 CONCAT                           R16 R17 R18
      190 DUPCLOSURE                       R17 K54 [PROTO_13]
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R4
      193 SETTABLE                         R17 R15 R16
      194 DUPTABLE                         R16 K66 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers", "shouldImmediatelyOpen"}]
      195 GETIMPORT                        R17 K67 [plugin]
      197 SETTABLEKS                       R17 R16 K55 ["plugin"]
      199 LOADK                            R17 K9 ["Toolbox"]
      200 SETTABLEKS                       R17 R16 K56 ["pluginName"]
      202 GETTABLEKS                       R19 R0 K68 ["Resources"]
      204 GETTABLEKS                       R18 R19 K69 ["Localization"]
      206 GETTABLEKS                       R17 R18 K70 ["LocalizedStrings"]
      208 SETTABLEKS                       R17 R16 K57 ["translationResourceTable"]
      210 GETTABLEKS                       R19 R0 K68 ["Resources"]
      212 GETTABLEKS                       R18 R19 K69 ["Localization"]
      214 GETTABLEKS                       R17 R18 K71 ["SourceStrings"]
      216 SETTABLEKS                       R17 R16 K58 ["fallbackResourceTable"]
      218 LOADNIL                          R17
      219 SETTABLEKS                       R17 R16 K59 ["overrideLocaleId"]
      221 LOADNIL                          R17
      222 SETTABLEKS                       R17 R16 K60 ["localizationNamespace"]
      224 DUPCLOSURE                       R17 K72 [PROTO_14]
      225 SETTABLEKS                       R17 R16 K61 ["getToolbarName"]
      227 DUPTABLE                         R17 K78 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
      228 DUPCLOSURE                       R18 K79 [PROTO_15]
      229 SETTABLEKS                       R18 R17 K73 ["getName"]
      231 DUPCLOSURE                       R18 K80 [PROTO_16]
      232 SETTABLEKS                       R18 R17 K74 ["getDescription"]
      234 GETTABLEKS                       R18 R5 K81 ["TOOLBOX_ICON"]
      236 SETTABLEKS                       R18 R17 K75 ["icon"]
      238 LOADNIL                          R18
      239 SETTABLEKS                       R18 R17 K76 ["text"]
      241 LOADB                            R18 1
      242 SETTABLEKS                       R18 R17 K77 ["clickableWhenViewportHidden"]
      244 SETTABLEKS                       R17 R16 K62 ["buttonInfo"]
      246 DUPTABLE                         R17 K87 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
      247 LOADK                            R18 K9 ["Toolbox"]
      248 SETTABLEKS                       R18 R17 K82 ["id"]
      250 GETIMPORT                        R18 K90 [DockWidgetPluginGuiInfo.new]
      252 GETIMPORT                        R19 K94 [Enum.InitialDockState.Left]
      254 LOADB                            R20 1
      255 LOADB                            R21 0
      256 LOADN                            R22 0
      257 LOADN                            R23 0
      258 GETTABLEKS                       R24 R4 K95 ["TOOLBOX_MIN_WIDTH"]
      260 GETTABLEKS                       R25 R4 K96 ["TOOLBOX_MIN_HEIGHT"]
      262 CALL                             R18 7 1
      263 SETTABLEKS                       R18 R17 K83 ["dockWidgetPluginGuiInfo"]
      265 DUPCLOSURE                       R18 K97 [PROTO_17]
      266 SETTABLEKS                       R18 R17 K84 ["getDockTitle"]
      268 LOADK                            R18 K9 ["Toolbox"]
      269 SETTABLEKS                       R18 R17 K85 ["name"]
      271 GETIMPORT                        R18 K100 [Enum.ZIndexBehavior.Sibling]
      273 SETTABLEKS                       R18 R17 K86 ["zIndexBehavior"]
      275 SETTABLEKS                       R17 R16 K63 ["dockWidgetInfo"]
      277 SETTABLEKS                       R15 R16 K64 ["extraTriggers"]
      279 DUPCLOSURE                       R17 K101 [PROTO_18]
      280 CAPTURE                          VAL R9
      281 SETTABLEKS                       R17 R16 K65 ["shouldImmediatelyOpen"]
      283 MOVE                             R17 R13
      284 CALL                             R17 0 1
      285 JUMPIFNOT                        R17 ; [+6]
      286 MOVE                             R17 R7
      287 GETIMPORT                        R18 K23 [game]
      289 DUPCLOSURE                       R19 K102 [PROTO_19]
      290 CAPTURE                          VAL R8
      291 CALL                             R17 2 0
      292 GETTABLEKS                       R17 R3 K103 ["build"]
      294 MOVE                             R18 R16
      295 CALL                             R17 1 1
      296 GETTABLEKS                       R18 R17 K104 ["pluginLoader"]
      298 NAMECALL                         R18 R18 K105 ["waitForUserInteraction"]
      300 CALL                             R18 1 1
      301 JUMPIF                           R18 ; [+1]
      302 RETURN                           R0 0
      303 GETIMPORT                        R19 K1 [require]
      305 GETIMPORT                        R22 K3 [script]
      307 GETTABLEKS                       R21 R22 K4 ["Parent"]
      309 GETTABLEKS                       R20 R21 K106 ["main"]
      311 CALL                             R19 1 1
      312 MOVE                             R20 R19
      313 GETIMPORT                        R21 K67 [plugin]
      315 MOVE                             R22 R17
      316 CALL                             R20 2 0
      317 RETURN                           R0 0
