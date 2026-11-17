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
       24 GETIMPORT                        R1 K5 [require]
       26 GETTABLEKS                       R2 R0 K13 ["Packages"]
       28 GETTABLEKS                       R2 R2 K14 ["TestLoader"]
       30 CALL                             R1 1 1
       31 GETTABLEKS                       R2 R1 K15 ["isCli"]
       33 CALL                             R2 0 1
       34 JUMPIFNOT                        R2 ; [+1]
       35 RETURN                           R0 0
       36 GETIMPORT                        R2 K17 [plugin]
       38 GETTABLEKS                       R3 R0 K18 ["Name"]
       40 SETTABLEKS                       R3 R2 K18 ["Name"]
       42 GETIMPORT                        R2 K5 [require]
       44 GETTABLEKS                       R3 R0 K13 ["Packages"]
       46 GETTABLEKS                       R3 R3 K19 ["PluginLoader"]
       48 CALL                             R2 1 1
       49 GETTABLEKS                       R3 R2 K20 ["PluginLoaderBuilder"]
       51 DUPTABLE                         R4 K28 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = True, ["clickableWhenViewportHidden"] = True}]
       52 DUPCLOSURE                       R5 K29 [PROTO_0]
       53 SETTABLEKS                       R5 R4 K21 ["getName"]
       55 DUPCLOSURE                       R5 K30 [PROTO_1]
       56 SETTABLEKS                       R5 R4 K22 ["getDescription"]
       58 GETTABLEKS                       R5 R0 K31 ["Src"]
       60 GETTABLEKS                       R5 R5 K32 ["Resources"]
       62 GETTABLEKS                       R5 R5 K33 ["Localization"]
       64 GETTABLEKS                       R5 R5 K34 ["SourceStrings"]
       66 GETTABLEKS                       R6 R0 K31 ["Src"]
       68 GETTABLEKS                       R6 R6 K32 ["Resources"]
       70 GETTABLEKS                       R6 R6 K33 ["Localization"]
       72 GETTABLEKS                       R6 R6 K35 ["LocalizedStrings"]
       74 DUPTABLE                         R7 K41 [{["plugin"], ["pluginName"] = "AssetManager", ["getToolbarName"], ["translationResourceTable"], ["fallbackResourceTable"], ["buttonInfo"]}]
       75 GETIMPORT                        R8 K17 [plugin]
       77 SETTABLEKS                       R8 R7 K16 ["plugin"]
       79 DUPCLOSURE                       R8 K42 [PROTO_2]
       80 SETTABLEKS                       R8 R7 K37 ["getToolbarName"]
       82 SETTABLEKS                       R6 R7 K38 ["translationResourceTable"]
       84 SETTABLEKS                       R5 R7 K39 ["fallbackResourceTable"]
       86 SETTABLEKS                       R4 R7 K40 ["buttonInfo"]
       88 DUPTABLE                         R8 K47 [{["id"] = "AssetManager", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       89 GETIMPORT                        R9 K50 [DockWidgetPluginGuiInfo.new]
       91 GETIMPORT                        R10 K54 [Enum.InitialDockState.Bottom]
       93 LOADB                            R11 0
       94 LOADB                            R12 0
       95 LOADN                            R13 640
       96 LOADN                            R14 480
       97 LOADN                            R15 250
       98 LOADN                            R16 200
       99 CALL                             R9 7 1
      100 SETTABLEKS                       R9 R8 K44 ["dockWidgetPluginGuiInfo"]
      102 DUPCLOSURE                       R9 K55 [PROTO_3]
      103 SETTABLEKS                       R9 R8 K45 ["getDockTitle"]
      105 GETIMPORT                        R9 K58 [Enum.ZIndexBehavior.Sibling]
      107 SETTABLEKS                       R9 R8 K46 ["zIndexBehavior"]
      109 SETTABLEKS                       R8 R7 K59 ["dockWidgetInfo"]
      111 GETTABLEKS                       R8 R3 K60 ["build"]
      113 MOVE                             R9 R7
      114 CALL                             R8 1 1
      115 GETTABLEKS                       R9 R8 K61 ["pluginLoader"]
      117 NAMECALL                         R9 R9 K62 ["waitForUserInteraction"]
      119 CALL                             R9 1 1
      120 JUMPIF                           R9 ; [+1]
      121 RETURN                           R0 0
      122 GETIMPORT                        R10 K5 [require]
      124 GETTABLEKS                       R11 R0 K31 ["Src"]
      126 GETTABLEKS                       R11 R11 K63 ["Asset"]
      128 GETTABLEKS                       R11 R11 K64 ["setupAssetsDm"]
      130 CALL                             R10 1 1
      131 MOVE                             R11 R10
      132 GETIMPORT                        R12 K17 [plugin]
      134 CALL                             R11 1 0
      135 GETIMPORT                        R11 K5 [require]
      137 GETTABLEKS                       R12 R0 K6 ["Bin"]
      139 GETTABLEKS                       R12 R12 K7 ["Common"]
      141 GETTABLEKS                       R12 R12 K65 ["main"]
      143 CALL                             R11 1 1
      144 MOVE                             R12 R11
      145 GETIMPORT                        R13 K17 [plugin]
      147 MOVE                             R14 R8
      148 CALL                             R12 2 0
      149 RETURN                           R0 0
