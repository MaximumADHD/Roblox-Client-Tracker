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
      112 GETTABLEKS                       R13 R13 K29 ["getEngineFeatureEnableCreatorStorePlugin"]
      114 CALL                             R12 1 1
      115 NEWTABLE                         R13 16 0
      117 DUPCLOSURE                       R14 K30 [PROTO_0]
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R14 R13 K31 ["StudioAssetService.OnSaveToRoblox"]
      121 DUPCLOSURE                       R14 K32 [PROTO_1]
      122 CAPTURE                          VAL R9
      123 SETTABLEKS                       R14 R13 K33 ["StudioAssetService.OnPromptSaveInstanceToRobloxAsync"]
      125 DUPCLOSURE                       R14 K34 [PROTO_2]
      126 CAPTURE                          VAL R8
      127 SETTABLEKS                       R14 R13 K35 ["StudioService.OnSaveToRoblox"]
      129 DUPCLOSURE                       R14 K36 [PROTO_3]
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R14 R13 K37 ["StudioService.OnImportFromRoblox"]
      133 DUPCLOSURE                       R14 K38 [PROTO_4]
      134 CAPTURE                          VAL R8
      135 SETTABLEKS                       R14 R13 K39 ["StudioService.OnOpenManagePackagePlugin"]
      137 DUPCLOSURE                       R14 K40 [PROTO_5]
      138 CAPTURE                          VAL R8
      139 SETTABLEKS                       R14 R13 K41 ["StudioService.OnPublishAsPlugin"]
      141 DUPCLOSURE                       R14 K42 [PROTO_7]
      142 CAPTURE                          VAL R10
      143 SETTABLEKS                       R14 R13 K43 ["MemStorageService.OpenAssetConfiguration"]
      145 LOADK                            R15 K44 ["MemStorageService."]
      146 GETTABLEKS                       R16 R6 K45 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
      148 CONCAT                           R14 R15 R16
      149 DUPCLOSURE                       R15 K46 [PROTO_9]
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R6
      152 SETTABLE                         R15 R13 R14
      153 LOADK                            R15 K44 ["MemStorageService."]
      154 GETTABLEKS                       R16 R6 K47 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
      156 CONCAT                           R14 R15 R16
      157 DUPCLOSURE                       R15 K48 [PROTO_11]
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R6
      160 SETTABLE                         R15 R13 R14
      161 LOADK                            R15 K44 ["MemStorageService."]
      162 GETTABLEKS                       R16 R4 K49 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
      164 CONCAT                           R14 R15 R16
      165 DUPCLOSURE                       R15 K50 [PROTO_13]
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R4
      168 SETTABLE                         R15 R13 R14
      169 DUPTABLE                         R14 K63 [{["plugin"], ["pluginName"] = "Toolbox", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"], ["extraTriggers"], ["shouldImmediatelyOpen"]}]
      170 GETIMPORT                        R15 K64 [plugin]
      172 SETTABLEKS                       R15 R14 K51 ["plugin"]
      174 GETTABLEKS                       R15 R0 K65 ["Resources"]
      176 GETTABLEKS                       R15 R15 K66 ["Localization"]
      178 GETTABLEKS                       R15 R15 K67 ["LocalizedStrings"]
      180 SETTABLEKS                       R15 R14 K53 ["translationResourceTable"]
      182 GETTABLEKS                       R15 R0 K65 ["Resources"]
      184 GETTABLEKS                       R15 R15 K66 ["Localization"]
      186 GETTABLEKS                       R15 R15 K68 ["SourceStrings"]
      188 SETTABLEKS                       R15 R14 K54 ["fallbackResourceTable"]
      190 DUPCLOSURE                       R15 K69 [PROTO_14]
      191 SETTABLEKS                       R15 R14 K58 ["getToolbarName"]
      193 DUPTABLE                         R15 K76 [{["getName"], ["getDescription"], ["icon"], ["text"] = , ["clickableWhenViewportHidden"] = True}]
      194 DUPCLOSURE                       R16 K77 [PROTO_15]
      195 SETTABLEKS                       R16 R15 K70 ["getName"]
      197 DUPCLOSURE                       R16 K78 [PROTO_16]
      198 SETTABLEKS                       R16 R15 K71 ["getDescription"]
      200 GETTABLEKS                       R16 R5 K79 ["TOOLBOX_ICON"]
      202 SETTABLEKS                       R16 R15 K72 ["icon"]
      204 SETTABLEKS                       R15 R14 K59 ["buttonInfo"]
      206 DUPTABLE                         R15 K85 [{["id"] = "Toolbox", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["name"] = "Toolbox", ["zIndexBehavior"]}]
      207 GETIMPORT                        R16 K88 [DockWidgetPluginGuiInfo.new]
      209 GETIMPORT                        R17 K92 [Enum.InitialDockState.Left]
      211 LOADB                            R18 1
      212 LOADB                            R19 0
      213 LOADN                            R20 0
      214 LOADN                            R21 0
      215 GETTABLEKS                       R22 R4 K93 ["TOOLBOX_MIN_WIDTH"]
      217 GETTABLEKS                       R23 R4 K94 ["TOOLBOX_MIN_HEIGHT"]
      219 CALL                             R16 7 1
      220 SETTABLEKS                       R16 R15 K81 ["dockWidgetPluginGuiInfo"]
      222 DUPCLOSURE                       R16 K95 [PROTO_17]
      223 SETTABLEKS                       R16 R15 K82 ["getDockTitle"]
      225 GETIMPORT                        R16 K98 [Enum.ZIndexBehavior.Sibling]
      227 SETTABLEKS                       R16 R15 K84 ["zIndexBehavior"]
      229 SETTABLEKS                       R15 R14 K60 ["dockWidgetInfo"]
      231 SETTABLEKS                       R13 R14 K61 ["extraTriggers"]
      233 DUPCLOSURE                       R15 K99 [PROTO_18]
      234 CAPTURE                          VAL R8
      235 SETTABLEKS                       R15 R14 K62 ["shouldImmediatelyOpen"]
      237 MOVE                             R15 R12
      238 CALL                             R15 0 1
      239 JUMPIFNOT                        R15 ; [+30]
      240 LOADB                            R15 1
      241 SETTABLEKS                       R15 R14 K100 ["noToolbar"]
      243 LOADNIL                          R15
      244 SETTABLEKS                       R15 R14 K59 ["buttonInfo"]
      246 LOADNIL                          R15
      247 SETTABLEKS                       R15 R14 K60 ["dockWidgetInfo"]
      249 LOADNIL                          R15
      250 SETTABLEKS                       R15 R14 K62 ["shouldImmediatelyOpen"]
      252 LOADK                            R16 K44 ["MemStorageService."]
      253 GETTABLEKS                       R17 R6 K45 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
      255 CONCAT                           R15 R16 R17
      256 LOADNIL                          R16
      257 SETTABLE                         R16 R13 R15
      258 LOADK                            R16 K44 ["MemStorageService."]
      259 GETTABLEKS                       R17 R6 K47 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
      261 CONCAT                           R15 R16 R17
      262 LOADNIL                          R16
      263 SETTABLE                         R16 R13 R15
      264 LOADK                            R16 K44 ["MemStorageService."]
      265 GETTABLEKS                       R17 R4 K49 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
      267 CONCAT                           R15 R16 R17
      268 LOADNIL                          R16
      269 SETTABLE                         R16 R13 R15
      270 GETTABLEKS                       R15 R3 K101 ["build"]
      272 MOVE                             R16 R14
      273 CALL                             R15 1 1
      274 GETTABLEKS                       R16 R15 K102 ["pluginLoader"]
      276 NAMECALL                         R16 R16 K103 ["waitForUserInteraction"]
      278 CALL                             R16 1 1
      279 JUMPIF                           R16 ; [+1]
      280 RETURN                           R0 0
      281 GETIMPORT                        R17 K1 [require]
      283 GETIMPORT                        R18 K3 [script]
      285 GETTABLEKS                       R18 R18 K4 ["Parent"]
      287 GETTABLEKS                       R18 R18 K104 ["main"]
      289 CALL                             R17 1 1
      290 MOVE                             R18 R17
      291 GETIMPORT                        R19 K64 [plugin]
      293 MOVE                             R20 R15
      294 CALL                             R18 2 0
      295 RETURN                           R0 0
