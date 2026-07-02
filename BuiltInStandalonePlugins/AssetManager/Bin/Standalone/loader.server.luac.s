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
       22 JUMPIFNOT                        R1 ; [+1]
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
       42 JUMPIFNOT                        R2 ; [+5]
       43 GETIMPORT                        R2 K18 [error]
       45 LOADK                            R3 K19 ["roblox-cli should not be loading standalone plugins"]
       46 CALL                             R2 1 0
       47 RETURN                           R0 0
       48 GETIMPORT                        R2 K21 [plugin]
       50 GETTABLEKS                       R3 R0 K22 ["Name"]
       52 SETTABLEKS                       R3 R2 K22 ["Name"]
       54 GETIMPORT                        R2 K5 [require]
       56 GETTABLEKS                       R3 R0 K14 ["Packages"]
       58 GETTABLEKS                       R3 R3 K23 ["PluginLoader"]
       60 CALL                             R2 1 1
       61 GETTABLEKS                       R3 R2 K24 ["PluginLoaderBuilder"]
       63 GETIMPORT                        R4 K10 [game]
       65 LOADK                            R6 K25 ["AssetManagerRibbonBar"]
       66 NAMECALL                         R4 R4 K12 ["GetFastFlag"]
       68 CALL                             R4 2 1
       69 DUPTABLE                         R5 K33 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = True, ["clickableWhenViewportHidden"] = True}]
       70 DUPCLOSURE                       R6 K34 [PROTO_0]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R6 R5 K26 ["getName"]
       74 DUPCLOSURE                       R6 K35 [PROTO_1]
       75 SETTABLEKS                       R6 R5 K27 ["getDescription"]
       77 GETTABLEKS                       R6 R0 K36 ["Src"]
       79 GETTABLEKS                       R6 R6 K37 ["Resources"]
       81 GETTABLEKS                       R6 R6 K38 ["Localization"]
       83 GETTABLEKS                       R6 R6 K39 ["SourceStrings"]
       85 GETTABLEKS                       R7 R0 K36 ["Src"]
       87 GETTABLEKS                       R7 R7 K37 ["Resources"]
       89 GETTABLEKS                       R7 R7 K38 ["Localization"]
       91 GETTABLEKS                       R7 R7 K40 ["LocalizedStrings"]
       93 DUPTABLE                         R8 K46 [{["plugin"], ["pluginName"] = "AssetManager", ["getToolbarName"], ["translationResourceTable"], ["fallbackResourceTable"], ["buttonInfo"]}]
       94 GETIMPORT                        R9 K21 [plugin]
       96 SETTABLEKS                       R9 R8 K20 ["plugin"]
       98 DUPCLOSURE                       R9 K47 [PROTO_2]
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R9 R8 K42 ["getToolbarName"]
      102 SETTABLEKS                       R7 R8 K43 ["translationResourceTable"]
      104 SETTABLEKS                       R6 R8 K44 ["fallbackResourceTable"]
      106 SETTABLEKS                       R5 R8 K45 ["buttonInfo"]
      108 DUPTABLE                         R9 K52 [{["id"] = "AssetManager", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      109 GETIMPORT                        R10 K55 [DockWidgetPluginGuiInfo.new]
      111 GETIMPORT                        R11 K59 [Enum.InitialDockState.Bottom]
      113 LOADB                            R12 0
      114 LOADB                            R13 0
      115 LOADN                            R14 640
      116 LOADN                            R15 480
      117 LOADN                            R16 250
      118 LOADN                            R17 200
      119 CALL                             R10 7 1
      120 SETTABLEKS                       R10 R9 K49 ["dockWidgetPluginGuiInfo"]
      122 DUPCLOSURE                       R10 K60 [PROTO_3]
      123 SETTABLEKS                       R10 R9 K50 ["getDockTitle"]
      125 GETIMPORT                        R10 K63 [Enum.ZIndexBehavior.Sibling]
      127 SETTABLEKS                       R10 R9 K51 ["zIndexBehavior"]
      129 SETTABLEKS                       R9 R8 K64 ["dockWidgetInfo"]
      131 GETTABLEKS                       R9 R3 K65 ["build"]
      133 MOVE                             R10 R8
      134 CALL                             R9 1 1
      135 GETTABLEKS                       R10 R9 K66 ["pluginLoader"]
      137 NAMECALL                         R10 R10 K67 ["waitForUserInteraction"]
      139 CALL                             R10 1 1
      140 JUMPIF                           R10 ; [+1]
      141 RETURN                           R0 0
      142 GETIMPORT                        R11 K5 [require]
      144 GETTABLEKS                       R12 R0 K6 ["Bin"]
      146 GETTABLEKS                       R12 R12 K7 ["Common"]
      148 GETTABLEKS                       R12 R12 K68 ["main"]
      150 CALL                             R11 1 1
      151 MOVE                             R12 R11
      152 GETIMPORT                        R13 K21 [plugin]
      154 MOVE                             R14 R9
      155 CALL                             R12 2 0
      156 RETURN                           R0 0
