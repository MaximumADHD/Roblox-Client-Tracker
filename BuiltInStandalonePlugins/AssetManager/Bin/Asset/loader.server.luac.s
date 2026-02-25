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
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["defineLuaFlags"]
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
       34 GETTABLEKS                       R3 R0 K14 ["Packages"]
       36 GETTABLEKS                       R2 R3 K15 ["TestLoader"]
       38 CALL                             R1 1 1
       39 GETTABLEKS                       R2 R1 K16 ["isCli"]
       41 CALL                             R2 0 1
       42 JUMPIFNOT                        R2 ; [+1]
       43 RETURN                           R0 0
       44 GETIMPORT                        R2 K18 [plugin]
       46 GETTABLEKS                       R3 R0 K19 ["Name"]
       48 SETTABLEKS                       R3 R2 K19 ["Name"]
       50 GETIMPORT                        R2 K5 [require]
       52 GETTABLEKS                       R4 R0 K14 ["Packages"]
       54 GETTABLEKS                       R3 R4 K20 ["PluginLoader"]
       56 CALL                             R2 1 1
       57 GETTABLEKS                       R3 R2 K21 ["PluginLoaderBuilder"]
       59 GETIMPORT                        R4 K10 [game]
       61 LOADK                            R6 K22 ["AssetManagerRibbonBar"]
       62 NAMECALL                         R4 R4 K12 ["GetFastFlag"]
       64 CALL                             R4 2 1
       65 DUPTABLE                         R5 K28 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
       66 DUPCLOSURE                       R6 K29 [PROTO_0]
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R6 R5 K23 ["getName"]
       70 DUPCLOSURE                       R6 K30 [PROTO_1]
       71 SETTABLEKS                       R6 R5 K24 ["getDescription"]
       73 LOADK                            R6 K31 [""]
       74 SETTABLEKS                       R6 R5 K25 ["icon"]
       76 LOADB                            R6 1
       77 SETTABLEKS                       R6 R5 K26 ["enabled"]
       79 LOADB                            R6 1
       80 SETTABLEKS                       R6 R5 K27 ["clickableWhenViewportHidden"]
       82 GETTABLEKS                       R9 R0 K32 ["Src"]
       84 GETTABLEKS                       R8 R9 K33 ["Resources"]
       86 GETTABLEKS                       R7 R8 K34 ["Localization"]
       88 GETTABLEKS                       R6 R7 K35 ["SourceStrings"]
       90 GETTABLEKS                       R10 R0 K32 ["Src"]
       92 GETTABLEKS                       R9 R10 K33 ["Resources"]
       94 GETTABLEKS                       R8 R9 K34 ["Localization"]
       96 GETTABLEKS                       R7 R8 K36 ["LocalizedStrings"]
       98 DUPTABLE                         R8 K42 [{"plugin", "pluginName", "getToolbarName", "translationResourceTable", "fallbackResourceTable", "buttonInfo"}]
       99 GETIMPORT                        R9 K18 [plugin]
      101 SETTABLEKS                       R9 R8 K17 ["plugin"]
      103 LOADK                            R9 K2 ["AssetManager"]
      104 SETTABLEKS                       R9 R8 K37 ["pluginName"]
      106 DUPCLOSURE                       R9 K43 [PROTO_2]
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R9 R8 K38 ["getToolbarName"]
      110 SETTABLEKS                       R7 R8 K39 ["translationResourceTable"]
      112 SETTABLEKS                       R6 R8 K40 ["fallbackResourceTable"]
      114 SETTABLEKS                       R5 R8 K41 ["buttonInfo"]
      116 DUPTABLE                         R9 K48 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      117 LOADK                            R10 K2 ["AssetManager"]
      118 SETTABLEKS                       R10 R9 K44 ["id"]
      120 GETIMPORT                        R10 K51 [DockWidgetPluginGuiInfo.new]
      122 GETIMPORT                        R11 K55 [Enum.InitialDockState.Bottom]
      124 LOADB                            R12 0
      125 LOADB                            R13 0
      126 LOADN                            R14 128
      127 LOADN                            R15 224
      128 LOADN                            R16 250
      129 LOADN                            R17 200
      130 CALL                             R10 7 1
      131 SETTABLEKS                       R10 R9 K45 ["dockWidgetPluginGuiInfo"]
      133 DUPCLOSURE                       R10 K56 [PROTO_3]
      134 SETTABLEKS                       R10 R9 K46 ["getDockTitle"]
      136 GETIMPORT                        R10 K59 [Enum.ZIndexBehavior.Sibling]
      138 SETTABLEKS                       R10 R9 K47 ["zIndexBehavior"]
      140 SETTABLEKS                       R9 R8 K60 ["dockWidgetInfo"]
      142 GETTABLEKS                       R9 R3 K61 ["build"]
      144 MOVE                             R10 R8
      145 CALL                             R9 1 1
      146 GETTABLEKS                       R10 R9 K62 ["pluginLoader"]
      148 NAMECALL                         R10 R10 K63 ["waitForUserInteraction"]
      150 CALL                             R10 1 1
      151 JUMPIF                           R10 ; [+1]
      152 RETURN                           R0 0
      153 GETIMPORT                        R11 K5 [require]
      155 GETTABLEKS                       R14 R0 K32 ["Src"]
      157 GETTABLEKS                       R13 R14 K64 ["Asset"]
      159 GETTABLEKS                       R12 R13 K65 ["setupAssetsDm"]
      161 CALL                             R11 1 1
      162 MOVE                             R12 R11
      163 GETIMPORT                        R13 K18 [plugin]
      165 CALL                             R12 1 0
      166 GETIMPORT                        R12 K5 [require]
      168 GETTABLEKS                       R15 R0 K6 ["Bin"]
      170 GETTABLEKS                       R14 R15 K7 ["Common"]
      172 GETTABLEKS                       R13 R14 K66 ["main"]
      174 CALL                             R12 1 1
      175 MOVE                             R13 R12
      176 GETIMPORT                        R14 K18 [plugin]
      178 MOVE                             R15 R9
      179 CALL                             R13 2 0
      180 RETURN                           R0 0
