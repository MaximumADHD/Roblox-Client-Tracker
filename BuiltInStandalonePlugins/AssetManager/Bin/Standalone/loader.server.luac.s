PROTO_0:
        0 LOADK                            R3 K0 ["assetManagerToolButton"]
        1 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 LOADK                            R3 K0 ["assetManagerToolbar"]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [plugin]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K10 [game]
       18 LOADK                            R3 K11 ["DebugAssetMgInAssetDm"]
       19 NAMECALL                         R1 R1 K12 ["GetFastFlag"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+1]
       23 RETURN                           R0 0
       24 GETIMPORT                        R1 K5 [require]
       26 GETTABLEKS                       R2 R0 K13 ["Packages"]
       28 GETTABLEKS                       R2 R2 K14 ["TestLoader"]
       30 CALL                             R1 1 1
       31 GETTABLEKS                       R2 R1 K15 ["isCli"]
       33 CALL                             R2 0 1
       34 JUMPIFNOT                        R2 ; [+5]
       35 GETIMPORT                        R2 K17 [error]
       37 LOADK                            R3 K18 ["roblox-cli should not be loading standalone plugins"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0
       40 GETIMPORT                        R2 K20 [plugin]
       42 GETTABLEKS                       R3 R0 K21 ["Name"]
       44 SETTABLEKS                       R3 R2 K21 ["Name"]
       46 GETIMPORT                        R2 K5 [require]
       48 GETTABLEKS                       R3 R0 K13 ["Packages"]
       50 GETTABLEKS                       R3 R3 K22 ["PluginLoader"]
       52 CALL                             R2 1 1
       53 GETTABLEKS                       R3 R2 K23 ["PluginLoaderBuilder"]
       55 DUPTABLE                         R4 K31 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = True, ["clickableWhenViewportHidden"] = True}]
       56 DUPCLOSURE                       R5 K32 [PROTO_0]
       57 SETTABLEKS                       R5 R4 K24 ["getName"]
       59 DUPCLOSURE                       R5 K33 [PROTO_1]
       60 SETTABLEKS                       R5 R4 K25 ["getDescription"]
       62 GETTABLEKS                       R5 R0 K34 ["Src"]
       64 GETTABLEKS                       R5 R5 K35 ["Resources"]
       66 GETTABLEKS                       R5 R5 K36 ["Localization"]
       68 GETTABLEKS                       R5 R5 K37 ["SourceStrings"]
       70 GETTABLEKS                       R6 R0 K34 ["Src"]
       72 GETTABLEKS                       R6 R6 K35 ["Resources"]
       74 GETTABLEKS                       R6 R6 K36 ["Localization"]
       76 GETTABLEKS                       R6 R6 K38 ["LocalizedStrings"]
       78 DUPTABLE                         R7 K44 [{["plugin"], ["pluginName"] = "AssetManager", ["getToolbarName"], ["translationResourceTable"], ["fallbackResourceTable"], ["buttonInfo"]}]
       79 GETIMPORT                        R8 K20 [plugin]
       81 SETTABLEKS                       R8 R7 K19 ["plugin"]
       83 DUPCLOSURE                       R8 K45 [PROTO_2]
       84 SETTABLEKS                       R8 R7 K40 ["getToolbarName"]
       86 SETTABLEKS                       R6 R7 K41 ["translationResourceTable"]
       88 SETTABLEKS                       R5 R7 K42 ["fallbackResourceTable"]
       90 SETTABLEKS                       R4 R7 K43 ["buttonInfo"]
       92 DUPTABLE                         R8 K50 [{["id"] = "AssetManager", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       93 GETIMPORT                        R9 K53 [DockWidgetPluginGuiInfo.new]
       95 GETIMPORT                        R10 K57 [Enum.InitialDockState.Bottom]
       97 LOADB                            R11 0
       98 LOADB                            R12 0
       99 LOADN                            R13 640
      100 LOADN                            R14 480
      101 LOADN                            R15 250
      102 LOADN                            R16 200
      103 CALL                             R9 7 1
      104 SETTABLEKS                       R9 R8 K47 ["dockWidgetPluginGuiInfo"]
      106 DUPCLOSURE                       R9 K58 [PROTO_3]
      107 SETTABLEKS                       R9 R8 K48 ["getDockTitle"]
      109 GETIMPORT                        R9 K61 [Enum.ZIndexBehavior.Sibling]
      111 SETTABLEKS                       R9 R8 K49 ["zIndexBehavior"]
      113 SETTABLEKS                       R8 R7 K62 ["dockWidgetInfo"]
      115 NEWTABLE                         R8 2 0
      117 GETIMPORT                        R9 K5 [require]
      119 GETTABLEKS                       R10 R0 K34 ["Src"]
      121 GETTABLEKS                       R10 R10 K63 ["Util"]
      123 GETTABLEKS                       R10 R10 K64 ["getOpenFromExternalTriggerSignal"]
      125 CALL                             R9 1 1
      126 DUPCLOSURE                       R10 K65 [PROTO_4]
      127 CAPTURE                          VAL R9
      128 SETTABLEKS                       R10 R8 K66 ["OpenFromExternalTrigger"]
      130 GETIMPORT                        R10 K5 [require]
      132 GETTABLEKS                       R11 R0 K34 ["Src"]
      134 GETTABLEKS                       R11 R11 K67 ["Flags"]
      136 GETTABLEKS                       R11 R11 K68 ["getFFlagAssetManagerShowAsset"]
      138 CALL                             R10 1 1
      139 MOVE                             R11 R10
      140 CALL                             R11 0 1
      141 JUMPIFNOT                        R11 ; [+18]
      142 GETIMPORT                        R11 K5 [require]
      144 GETTABLEKS                       R12 R0 K34 ["Src"]
      146 GETTABLEKS                       R12 R12 K63 ["Util"]
      148 GETTABLEKS                       R12 R12 K69 ["getShowAssetRequestedSignal"]
      150 CALL                             R11 1 1
      151 MOVE                             R12 R11
      152 GETIMPORT                        R13 K20 [plugin]
      154 CALL                             R12 1 1
      155 JUMPIFNOT                        R12 ; [+4]
      156 DUPCLOSURE                       R13 K70 [PROTO_5]
      157 CAPTURE                          VAL R12
      158 SETTABLEKS                       R13 R8 K71 ["ShowAssetRequested"]
      160 SETTABLEKS                       R8 R7 K72 ["extraTriggers"]
      162 GETTABLEKS                       R11 R3 K73 ["build"]
      164 MOVE                             R12 R7
      165 CALL                             R11 1 1
      166 GETTABLEKS                       R12 R11 K74 ["pluginLoader"]
      168 NAMECALL                         R12 R12 K75 ["waitForUserInteraction"]
      170 CALL                             R12 1 1
      171 JUMPIF                           R12 ; [+1]
      172 RETURN                           R0 0
      173 GETIMPORT                        R13 K5 [require]
      175 GETTABLEKS                       R14 R0 K6 ["Bin"]
      177 GETTABLEKS                       R14 R14 K7 ["Common"]
      179 GETTABLEKS                       R14 R14 K76 ["main"]
      181 CALL                             R13 1 1
      182 MOVE                             R14 R13
      183 GETIMPORT                        R15 K20 [plugin]
      185 MOVE                             R16 R11
      186 CALL                             R14 2 0
      187 RETURN                           R0 0
