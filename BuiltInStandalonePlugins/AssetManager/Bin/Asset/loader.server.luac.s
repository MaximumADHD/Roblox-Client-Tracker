PROTO_0:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+2]
        2 LOADK                            R3 K0 ["assetManagerToolButton"]
        3 RETURN                           R3 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 LOADK                            R6 K1 ["Plugin"]
        8 LOADK                            R7 K2 ["Button"]
        9 CALL                             R3 4 -1
       10 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+2]
        2 LOADK                            R3 K0 ["assetManagerToolbar"]
        3 RETURN                           R3 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 LOADK                            R6 K1 ["Plugin"]
        8 LOADK                            R7 K2 ["Toolbar"]
        9 CALL                             R3 4 -1
       10 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

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
       22 JUMPIF                           R1 ; [+1]
       23 RETURN                           R0 0
       24 GETIMPORT                        R1 K10 [game]
       26 LOADK                            R3 K13 ["EnableAssetManager"]
       27 NAMECALL                         R1 R1 K12 ["GetFastFlag"]
       29 CALL                             R1 2 1
       30 JUMPIF                           R1 ; [+1]
       31 RETURN                           R0 0
       32 GETIMPORT                        R1 K5 [require]
       34 GETTABLEKS                       R2 R0 K14 ["Packages"]
       36 GETTABLEKS                       R2 R2 K15 ["TestLoader"]
       38 CALL                             R1 1 1
       39 GETTABLEKS                       R2 R1 K16 ["isCli"]
       41 CALL                             R2 0 1
       42 JUMPIFNOT                        R2 ; [+1]
       43 RETURN                           R0 0
       44 GETIMPORT                        R2 K18 [plugin]
       46 GETTABLEKS                       R3 R0 K19 ["Name"]
       48 SETTABLEKS                       R3 R2 K19 ["Name"]
       50 GETIMPORT                        R2 K5 [require]
       52 GETTABLEKS                       R3 R0 K14 ["Packages"]
       54 GETTABLEKS                       R3 R3 K20 ["PluginLoader"]
       56 CALL                             R2 1 1
       57 GETTABLEKS                       R3 R2 K21 ["PluginLoaderBuilder"]
       59 GETIMPORT                        R4 K10 [game]
       61 LOADK                            R6 K22 ["AssetManagerRibbonBar"]
       62 NAMECALL                         R4 R4 K12 ["GetFastFlag"]
       64 CALL                             R4 2 1
       65 DUPTABLE                         R5 K30 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = True, ["clickableWhenViewportHidden"] = True}]
       66 DUPCLOSURE                       R6 K31 [PROTO_0]
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R6 R5 K23 ["getName"]
       70 DUPCLOSURE                       R6 K32 [PROTO_1]
       71 SETTABLEKS                       R6 R5 K24 ["getDescription"]
       73 GETTABLEKS                       R6 R0 K33 ["Src"]
       75 GETTABLEKS                       R6 R6 K34 ["Resources"]
       77 GETTABLEKS                       R6 R6 K35 ["Localization"]
       79 GETTABLEKS                       R6 R6 K36 ["SourceStrings"]
       81 GETTABLEKS                       R7 R0 K33 ["Src"]
       83 GETTABLEKS                       R7 R7 K34 ["Resources"]
       85 GETTABLEKS                       R7 R7 K35 ["Localization"]
       87 GETTABLEKS                       R7 R7 K37 ["LocalizedStrings"]
       89 DUPTABLE                         R8 K43 [{["plugin"], ["pluginName"] = "AssetManager", ["getToolbarName"], ["translationResourceTable"], ["fallbackResourceTable"], ["buttonInfo"]}]
       90 GETIMPORT                        R9 K18 [plugin]
       92 SETTABLEKS                       R9 R8 K17 ["plugin"]
       94 DUPCLOSURE                       R9 K44 [PROTO_2]
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R9 R8 K39 ["getToolbarName"]
       98 SETTABLEKS                       R7 R8 K40 ["translationResourceTable"]
      100 SETTABLEKS                       R6 R8 K41 ["fallbackResourceTable"]
      102 SETTABLEKS                       R5 R8 K42 ["buttonInfo"]
      104 DUPTABLE                         R9 K49 [{["id"] = "AssetManager", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      105 GETIMPORT                        R10 K52 [DockWidgetPluginGuiInfo.new]
      107 GETIMPORT                        R11 K56 [Enum.InitialDockState.Bottom]
      109 LOADB                            R12 0
      110 LOADB                            R13 0
      111 LOADN                            R14 640
      112 LOADN                            R15 480
      113 LOADN                            R16 250
      114 LOADN                            R17 200
      115 CALL                             R10 7 1
      116 SETTABLEKS                       R10 R9 K46 ["dockWidgetPluginGuiInfo"]
      118 DUPCLOSURE                       R10 K57 [PROTO_3]
      119 SETTABLEKS                       R10 R9 K47 ["getDockTitle"]
      121 GETIMPORT                        R10 K60 [Enum.ZIndexBehavior.Sibling]
      123 SETTABLEKS                       R10 R9 K48 ["zIndexBehavior"]
      125 SETTABLEKS                       R9 R8 K61 ["dockWidgetInfo"]
      127 GETTABLEKS                       R9 R3 K62 ["build"]
      129 MOVE                             R10 R8
      130 CALL                             R9 1 1
      131 GETTABLEKS                       R10 R9 K63 ["pluginLoader"]
      133 NAMECALL                         R10 R10 K64 ["waitForUserInteraction"]
      135 CALL                             R10 1 1
      136 JUMPIF                           R10 ; [+1]
      137 RETURN                           R0 0
      138 GETIMPORT                        R11 K5 [require]
      140 GETTABLEKS                       R12 R0 K33 ["Src"]
      142 GETTABLEKS                       R12 R12 K65 ["Asset"]
      144 GETTABLEKS                       R12 R12 K66 ["setupAssetsDm"]
      146 CALL                             R11 1 1
      147 MOVE                             R12 R11
      148 GETIMPORT                        R13 K18 [plugin]
      150 CALL                             R12 1 0
      151 GETIMPORT                        R12 K5 [require]
      153 GETTABLEKS                       R13 R0 K6 ["Bin"]
      155 GETTABLEKS                       R13 R13 K7 ["Common"]
      157 GETTABLEKS                       R13 R13 K67 ["main"]
      159 CALL                             R12 1 1
      160 MOVE                             R13 R12
      161 GETIMPORT                        R14 K18 [plugin]
      163 MOVE                             R15 R9
      164 CALL                             R13 2 0
      165 RETURN                           R0 0
