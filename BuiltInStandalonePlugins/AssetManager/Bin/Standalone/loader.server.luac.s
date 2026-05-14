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
       69 DUPTABLE                         R5 K31 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
       70 DUPCLOSURE                       R6 K32 [PROTO_0]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R6 R5 K26 ["getName"]
       74 DUPCLOSURE                       R6 K33 [PROTO_1]
       75 SETTABLEKS                       R6 R5 K27 ["getDescription"]
       77 LOADK                            R6 K34 [""]
       78 SETTABLEKS                       R6 R5 K28 ["icon"]
       80 LOADB                            R6 1
       81 SETTABLEKS                       R6 R5 K29 ["enabled"]
       83 LOADB                            R6 1
       84 SETTABLEKS                       R6 R5 K30 ["clickableWhenViewportHidden"]
       86 GETTABLEKS                       R6 R0 K35 ["Src"]
       88 GETTABLEKS                       R6 R6 K36 ["Resources"]
       90 GETTABLEKS                       R6 R6 K37 ["Localization"]
       92 GETTABLEKS                       R6 R6 K38 ["SourceStrings"]
       94 GETTABLEKS                       R7 R0 K35 ["Src"]
       96 GETTABLEKS                       R7 R7 K36 ["Resources"]
       98 GETTABLEKS                       R7 R7 K37 ["Localization"]
      100 GETTABLEKS                       R7 R7 K39 ["LocalizedStrings"]
      102 DUPTABLE                         R8 K45 [{"plugin", "pluginName", "getToolbarName", "translationResourceTable", "fallbackResourceTable", "buttonInfo"}]
      103 GETIMPORT                        R9 K21 [plugin]
      105 SETTABLEKS                       R9 R8 K20 ["plugin"]
      107 LOADK                            R9 K2 ["AssetManager"]
      108 SETTABLEKS                       R9 R8 K40 ["pluginName"]
      110 DUPCLOSURE                       R9 K46 [PROTO_2]
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R9 R8 K41 ["getToolbarName"]
      114 SETTABLEKS                       R7 R8 K42 ["translationResourceTable"]
      116 SETTABLEKS                       R6 R8 K43 ["fallbackResourceTable"]
      118 SETTABLEKS                       R5 R8 K44 ["buttonInfo"]
      120 DUPTABLE                         R9 K51 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      121 LOADK                            R10 K2 ["AssetManager"]
      122 SETTABLEKS                       R10 R9 K47 ["id"]
      124 GETIMPORT                        R10 K54 [DockWidgetPluginGuiInfo.new]
      126 GETIMPORT                        R11 K58 [Enum.InitialDockState.Bottom]
      128 LOADB                            R12 0
      129 LOADB                            R13 0
      130 LOADN                            R14 128
      131 LOADN                            R15 224
      132 LOADN                            R16 250
      133 LOADN                            R17 200
      134 CALL                             R10 7 1
      135 SETTABLEKS                       R10 R9 K48 ["dockWidgetPluginGuiInfo"]
      137 DUPCLOSURE                       R10 K59 [PROTO_3]
      138 SETTABLEKS                       R10 R9 K49 ["getDockTitle"]
      140 GETIMPORT                        R10 K62 [Enum.ZIndexBehavior.Sibling]
      142 SETTABLEKS                       R10 R9 K50 ["zIndexBehavior"]
      144 SETTABLEKS                       R9 R8 K63 ["dockWidgetInfo"]
      146 GETTABLEKS                       R9 R3 K64 ["build"]
      148 MOVE                             R10 R8
      149 CALL                             R9 1 1
      150 GETTABLEKS                       R10 R9 K65 ["pluginLoader"]
      152 NAMECALL                         R10 R10 K66 ["waitForUserInteraction"]
      154 CALL                             R10 1 1
      155 JUMPIF                           R10 ; [+1]
      156 RETURN                           R0 0
      157 GETIMPORT                        R11 K5 [require]
      159 GETTABLEKS                       R12 R0 K6 ["Bin"]
      161 GETTABLEKS                       R12 R12 K7 ["Common"]
      163 GETTABLEKS                       R12 R12 K67 ["main"]
      165 CALL                             R11 1 1
      166 MOVE                             R12 R11
      167 GETIMPORT                        R13 K21 [plugin]
      169 MOVE                             R14 R9
      170 CALL                             R12 2 0
      171 RETURN                           R0 0
