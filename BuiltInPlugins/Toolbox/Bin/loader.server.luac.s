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
      106 NEWTABLE                         R12 16 0
      108 DUPCLOSURE                       R13 K28 [PROTO_0]
      109 CAPTURE                          VAL R9
      110 SETTABLEKS                       R13 R12 K29 ["StudioAssetService.OnSaveToRoblox"]
      112 DUPCLOSURE                       R13 K30 [PROTO_1]
      113 CAPTURE                          VAL R9
      114 SETTABLEKS                       R13 R12 K31 ["StudioAssetService.OnPromptSaveInstanceToRobloxAsync"]
      116 DUPCLOSURE                       R13 K32 [PROTO_2]
      117 CAPTURE                          VAL R8
      118 SETTABLEKS                       R13 R12 K33 ["StudioService.OnSaveToRoblox"]
      120 DUPCLOSURE                       R13 K34 [PROTO_3]
      121 CAPTURE                          VAL R8
      122 SETTABLEKS                       R13 R12 K35 ["StudioService.OnImportFromRoblox"]
      124 DUPCLOSURE                       R13 K36 [PROTO_4]
      125 CAPTURE                          VAL R8
      126 SETTABLEKS                       R13 R12 K37 ["StudioService.OnOpenManagePackagePlugin"]
      128 DUPCLOSURE                       R13 K38 [PROTO_5]
      129 CAPTURE                          VAL R8
      130 SETTABLEKS                       R13 R12 K39 ["StudioService.OnPublishAsPlugin"]
      132 DUPCLOSURE                       R13 K40 [PROTO_7]
      133 CAPTURE                          VAL R10
      134 SETTABLEKS                       R13 R12 K41 ["MemStorageService.OpenAssetConfiguration"]
      136 LOADK                            R14 K42 ["MemStorageService."]
      137 GETTABLEKS                       R15 R6 K43 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
      139 CONCAT                           R13 R14 R15
      140 DUPCLOSURE                       R14 K44 [PROTO_9]
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R6
      143 SETTABLE                         R14 R12 R13
      144 LOADK                            R14 K42 ["MemStorageService."]
      145 GETTABLEKS                       R15 R6 K45 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
      147 CONCAT                           R13 R14 R15
      148 DUPCLOSURE                       R14 K46 [PROTO_11]
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R6
      151 SETTABLE                         R14 R12 R13
      152 LOADK                            R14 K42 ["MemStorageService."]
      153 GETTABLEKS                       R15 R4 K47 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
      155 CONCAT                           R13 R14 R15
      156 DUPCLOSURE                       R14 K48 [PROTO_13]
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R4
      159 SETTABLE                         R14 R12 R13
      160 DUPTABLE                         R13 K61 [{["plugin"], ["pluginName"] = "Toolbox", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"], ["extraTriggers"], ["shouldImmediatelyOpen"]}]
      161 GETIMPORT                        R14 K62 [plugin]
      163 SETTABLEKS                       R14 R13 K49 ["plugin"]
      165 GETTABLEKS                       R14 R0 K63 ["Resources"]
      167 GETTABLEKS                       R14 R14 K64 ["Localization"]
      169 GETTABLEKS                       R14 R14 K65 ["LocalizedStrings"]
      171 SETTABLEKS                       R14 R13 K51 ["translationResourceTable"]
      173 GETTABLEKS                       R14 R0 K63 ["Resources"]
      175 GETTABLEKS                       R14 R14 K64 ["Localization"]
      177 GETTABLEKS                       R14 R14 K66 ["SourceStrings"]
      179 SETTABLEKS                       R14 R13 K52 ["fallbackResourceTable"]
      181 DUPCLOSURE                       R14 K67 [PROTO_14]
      182 SETTABLEKS                       R14 R13 K56 ["getToolbarName"]
      184 DUPTABLE                         R14 K74 [{["getName"], ["getDescription"], ["icon"], ["text"] = , ["clickableWhenViewportHidden"] = True}]
      185 DUPCLOSURE                       R15 K75 [PROTO_15]
      186 SETTABLEKS                       R15 R14 K68 ["getName"]
      188 DUPCLOSURE                       R15 K76 [PROTO_16]
      189 SETTABLEKS                       R15 R14 K69 ["getDescription"]
      191 GETTABLEKS                       R15 R5 K77 ["TOOLBOX_ICON"]
      193 SETTABLEKS                       R15 R14 K70 ["icon"]
      195 SETTABLEKS                       R14 R13 K57 ["buttonInfo"]
      197 DUPTABLE                         R14 K83 [{["id"] = "Toolbox", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["name"] = "Toolbox", ["zIndexBehavior"]}]
      198 GETIMPORT                        R15 K86 [DockWidgetPluginGuiInfo.new]
      200 GETIMPORT                        R16 K90 [Enum.InitialDockState.Left]
      202 LOADB                            R17 1
      203 LOADB                            R18 0
      204 LOADN                            R19 0
      205 LOADN                            R20 0
      206 GETTABLEKS                       R21 R4 K91 ["TOOLBOX_MIN_WIDTH"]
      208 GETTABLEKS                       R22 R4 K92 ["TOOLBOX_MIN_HEIGHT"]
      210 CALL                             R15 7 1
      211 SETTABLEKS                       R15 R14 K79 ["dockWidgetPluginGuiInfo"]
      213 DUPCLOSURE                       R15 K93 [PROTO_17]
      214 SETTABLEKS                       R15 R14 K80 ["getDockTitle"]
      216 GETIMPORT                        R15 K96 [Enum.ZIndexBehavior.Sibling]
      218 SETTABLEKS                       R15 R14 K82 ["zIndexBehavior"]
      220 SETTABLEKS                       R14 R13 K58 ["dockWidgetInfo"]
      222 SETTABLEKS                       R12 R13 K59 ["extraTriggers"]
      224 DUPCLOSURE                       R14 K97 [PROTO_18]
      225 CAPTURE                          VAL R8
      226 SETTABLEKS                       R14 R13 K60 ["shouldImmediatelyOpen"]
      228 GETTABLEKS                       R14 R3 K98 ["build"]
      230 MOVE                             R15 R13
      231 CALL                             R14 1 1
      232 GETTABLEKS                       R15 R14 K99 ["pluginLoader"]
      234 NAMECALL                         R15 R15 K100 ["waitForUserInteraction"]
      236 CALL                             R15 1 1
      237 JUMPIF                           R15 ; [+1]
      238 RETURN                           R0 0
      239 GETIMPORT                        R16 K1 [require]
      241 GETIMPORT                        R17 K3 [script]
      243 GETTABLEKS                       R17 R17 K4 ["Parent"]
      245 GETTABLEKS                       R17 R17 K101 ["main"]
      247 CALL                             R16 1 1
      248 MOVE                             R17 R16
      249 GETIMPORT                        R18 K62 [plugin]
      251 MOVE                             R19 R14
      252 CALL                             R17 2 0
      253 RETURN                           R0 0
