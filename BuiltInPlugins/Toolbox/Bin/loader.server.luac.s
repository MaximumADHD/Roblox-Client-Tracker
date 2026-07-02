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
      174 DUPTABLE                         R14 K63 [{["plugin"], ["pluginName"] = "Toolbox", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"], ["extraTriggers"], ["shouldImmediatelyOpen"]}]
      175 GETIMPORT                        R15 K64 [plugin]
      177 SETTABLEKS                       R15 R14 K51 ["plugin"]
      179 GETTABLEKS                       R15 R0 K65 ["Resources"]
      181 GETTABLEKS                       R15 R15 K66 ["Localization"]
      183 GETTABLEKS                       R15 R15 K67 ["LocalizedStrings"]
      185 SETTABLEKS                       R15 R14 K53 ["translationResourceTable"]
      187 GETTABLEKS                       R15 R0 K65 ["Resources"]
      189 GETTABLEKS                       R15 R15 K66 ["Localization"]
      191 GETTABLEKS                       R15 R15 K68 ["SourceStrings"]
      193 SETTABLEKS                       R15 R14 K54 ["fallbackResourceTable"]
      195 DUPCLOSURE                       R15 K69 [PROTO_14]
      196 SETTABLEKS                       R15 R14 K58 ["getToolbarName"]
      198 DUPTABLE                         R15 K76 [{["getName"], ["getDescription"], ["icon"], ["text"] = , ["clickableWhenViewportHidden"] = True}]
      199 DUPCLOSURE                       R16 K77 [PROTO_15]
      200 SETTABLEKS                       R16 R15 K70 ["getName"]
      202 DUPCLOSURE                       R16 K78 [PROTO_16]
      203 SETTABLEKS                       R16 R15 K71 ["getDescription"]
      205 GETTABLEKS                       R16 R5 K79 ["TOOLBOX_ICON"]
      207 SETTABLEKS                       R16 R15 K72 ["icon"]
      209 SETTABLEKS                       R15 R14 K59 ["buttonInfo"]
      211 DUPTABLE                         R15 K85 [{["id"] = "Toolbox", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["name"] = "Toolbox", ["zIndexBehavior"]}]
      212 GETIMPORT                        R16 K88 [DockWidgetPluginGuiInfo.new]
      214 GETIMPORT                        R17 K92 [Enum.InitialDockState.Left]
      216 LOADB                            R18 1
      217 LOADB                            R19 0
      218 LOADN                            R20 0
      219 LOADN                            R21 0
      220 GETTABLEKS                       R22 R4 K93 ["TOOLBOX_MIN_WIDTH"]
      222 GETTABLEKS                       R23 R4 K94 ["TOOLBOX_MIN_HEIGHT"]
      224 CALL                             R16 7 1
      225 SETTABLEKS                       R16 R15 K81 ["dockWidgetPluginGuiInfo"]
      227 DUPCLOSURE                       R16 K95 [PROTO_17]
      228 SETTABLEKS                       R16 R15 K82 ["getDockTitle"]
      230 GETIMPORT                        R16 K98 [Enum.ZIndexBehavior.Sibling]
      232 SETTABLEKS                       R16 R15 K84 ["zIndexBehavior"]
      234 SETTABLEKS                       R15 R14 K60 ["dockWidgetInfo"]
      236 SETTABLEKS                       R13 R14 K61 ["extraTriggers"]
      238 DUPCLOSURE                       R15 K99 [PROTO_18]
      239 CAPTURE                          VAL R8
      240 SETTABLEKS                       R15 R14 K62 ["shouldImmediatelyOpen"]
      242 GETTABLEKS                       R15 R3 K100 ["build"]
      244 MOVE                             R16 R14
      245 CALL                             R15 1 1
      246 GETTABLEKS                       R16 R15 K101 ["pluginLoader"]
      248 NAMECALL                         R16 R16 K102 ["waitForUserInteraction"]
      250 CALL                             R16 1 1
      251 JUMPIF                           R16 ; [+1]
      252 RETURN                           R0 0
      253 GETIMPORT                        R17 K1 [require]
      255 GETIMPORT                        R18 K3 [script]
      257 GETTABLEKS                       R18 R18 K4 ["Parent"]
      259 GETTABLEKS                       R18 R18 K103 ["main"]
      261 CALL                             R17 1 1
      262 MOVE                             R18 R17
      263 GETIMPORT                        R19 K64 [plugin]
      265 MOVE                             R20 R15
      266 CALL                             R18 2 0
      267 RETURN                           R0 0
