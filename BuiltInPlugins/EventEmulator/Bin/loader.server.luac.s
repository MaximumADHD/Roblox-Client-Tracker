PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Toolbar"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        9 CALL                             R0 1 1
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R0 K6 [require]
       14 GETIMPORT                        R1 K8 [script]
       16 GETTABLEKS                       R1 R1 K9 ["Parent"]
       18 GETTABLEKS                       R1 R1 K10 ["defineLuaFlags"]
       20 CALL                             R0 1 0
       21 GETIMPORT                        R0 K8 [script]
       23 GETTABLEKS                       R0 R0 K9 ["Parent"]
       25 GETTABLEKS                       R0 R0 K9 ["Parent"]
       27 GETIMPORT                        R1 K6 [require]
       29 GETTABLEKS                       R2 R0 K11 ["Packages"]
       31 GETTABLEKS                       R2 R2 K12 ["PluginLoader"]
       33 CALL                             R1 1 1
       34 GETTABLEKS                       R2 R1 K13 ["PluginLoaderBuilder"]
       36 GETTABLEKS                       R3 R0 K14 ["Src"]
       38 GETTABLEKS                       R3 R3 K15 ["Resources"]
       40 GETTABLEKS                       R3 R3 K16 ["Localization"]
       42 GETTABLEKS                       R3 R3 K17 ["SourceStrings"]
       44 GETTABLEKS                       R4 R0 K14 ["Src"]
       46 GETTABLEKS                       R4 R4 K15 ["Resources"]
       48 GETTABLEKS                       R4 R4 K16 ["Localization"]
       50 GETTABLEKS                       R4 R4 K18 ["LocalizedStrings"]
       52 DUPTABLE                         R5 K28 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
       53 GETIMPORT                        R6 K29 [plugin]
       55 SETTABLEKS                       R6 R5 K19 ["plugin"]
       57 LOADK                            R6 K30 ["EventEmulator"]
       58 SETTABLEKS                       R6 R5 K20 ["pluginName"]
       60 SETTABLEKS                       R4 R5 K21 ["translationResourceTable"]
       62 SETTABLEKS                       R3 R5 K22 ["fallbackResourceTable"]
       64 LOADNIL                          R6
       65 SETTABLEKS                       R6 R5 K23 ["overrideLocaleId"]
       67 LOADNIL                          R6
       68 SETTABLEKS                       R6 R5 K24 ["localizationNamespace"]
       70 DUPCLOSURE                       R6 K31 [PROTO_0]
       71 SETTABLEKS                       R6 R5 K25 ["getToolbarName"]
       73 DUPTABLE                         R6 K37 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
       74 DUPCLOSURE                       R7 K38 [PROTO_1]
       75 SETTABLEKS                       R7 R6 K32 ["getName"]
       77 DUPCLOSURE                       R7 K39 [PROTO_2]
       78 SETTABLEKS                       R7 R6 K33 ["getDescription"]
       80 LOADK                            R7 K40 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
       81 SETTABLEKS                       R7 R6 K34 ["icon"]
       83 LOADNIL                          R7
       84 SETTABLEKS                       R7 R6 K35 ["text"]
       86 LOADB                            R7 1
       87 SETTABLEKS                       R7 R6 K36 ["clickableWhenViewportHidden"]
       89 SETTABLEKS                       R6 R5 K26 ["buttonInfo"]
       91 DUPTABLE                         R6 K45 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       92 LOADK                            R7 K30 ["EventEmulator"]
       93 SETTABLEKS                       R7 R6 K41 ["id"]
       95 GETIMPORT                        R7 K48 [DockWidgetPluginGuiInfo.new]
       97 GETIMPORT                        R8 K52 [Enum.InitialDockState.Left]
       99 LOADB                            R9 0
      100 LOADB                            R10 0
      101 LOADN                            R11 54
      102 LOADN                            R12 225
      103 LOADN                            R13 54
      104 LOADN                            R14 225
      105 CALL                             R7 7 1
      106 SETTABLEKS                       R7 R6 K42 ["dockWidgetPluginGuiInfo"]
      108 DUPCLOSURE                       R7 K53 [PROTO_3]
      109 SETTABLEKS                       R7 R6 K43 ["getDockTitle"]
      111 GETIMPORT                        R7 K56 [Enum.ZIndexBehavior.Sibling]
      113 SETTABLEKS                       R7 R6 K44 ["zIndexBehavior"]
      115 SETTABLEKS                       R6 R5 K27 ["dockWidgetInfo"]
      117 GETTABLEKS                       R6 R2 K57 ["build"]
      119 MOVE                             R7 R5
      120 CALL                             R6 1 1
      121 GETTABLEKS                       R7 R6 K58 ["pluginLoader"]
      123 NAMECALL                         R7 R7 K59 ["waitForUserInteraction"]
      125 CALL                             R7 1 1
      126 JUMPIF                           R7 ; [+1]
      127 RETURN                           R0 0
      128 GETIMPORT                        R8 K6 [require]
      130 GETIMPORT                        R9 K8 [script]
      132 GETTABLEKS                       R9 R9 K9 ["Parent"]
      134 GETTABLEKS                       R9 R9 K60 ["main"]
      136 CALL                             R8 1 1
      137 MOVE                             R9 R8
      138 GETIMPORT                        R10 K29 [plugin]
      140 MOVE                             R11 R6
      141 CALL                             R9 2 0
      142 RETURN                           R0 0
