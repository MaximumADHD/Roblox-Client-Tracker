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
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 GETTABLEKS                       R0 R0 K4 ["Parent"]
       14 GETTABLEKS                       R0 R0 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Src"]
       20 GETTABLEKS                       R2 R2 K7 ["Util"]
       22 GETTABLEKS                       R2 R2 K8 ["shouldPluginRun"]
       24 CALL                             R1 1 1
       25 MOVE                             R2 R1
       26 CALL                             R2 0 1
       27 JUMPIF                           R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K1 [require]
       31 GETTABLEKS                       R3 R0 K9 ["Packages"]
       33 GETTABLEKS                       R3 R3 K10 ["PluginLoader"]
       35 CALL                             R2 1 1
       36 GETTABLEKS                       R3 R2 K11 ["PluginLoaderBuilder"]
       38 GETTABLEKS                       R4 R0 K6 ["Src"]
       40 GETTABLEKS                       R4 R4 K12 ["Resources"]
       42 GETTABLEKS                       R4 R4 K13 ["Localization"]
       44 GETTABLEKS                       R4 R4 K14 ["SourceStrings"]
       46 GETTABLEKS                       R5 R0 K6 ["Src"]
       48 GETTABLEKS                       R5 R5 K12 ["Resources"]
       50 GETTABLEKS                       R5 R5 K13 ["Localization"]
       52 GETTABLEKS                       R5 R5 K15 ["LocalizedStrings"]
       54 DUPTABLE                         R6 K25 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
       55 GETIMPORT                        R7 K26 [plugin]
       57 SETTABLEKS                       R7 R6 K16 ["plugin"]
       59 LOADK                            R7 K27 ["NestedPackagePublisher"]
       60 SETTABLEKS                       R7 R6 K17 ["pluginName"]
       62 SETTABLEKS                       R5 R6 K18 ["translationResourceTable"]
       64 SETTABLEKS                       R4 R6 K19 ["fallbackResourceTable"]
       66 LOADNIL                          R7
       67 SETTABLEKS                       R7 R6 K20 ["overrideLocaleId"]
       69 LOADNIL                          R7
       70 SETTABLEKS                       R7 R6 K21 ["localizationNamespace"]
       72 DUPCLOSURE                       R7 K28 [PROTO_0]
       73 SETTABLEKS                       R7 R6 K22 ["getToolbarName"]
       75 DUPTABLE                         R7 K34 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
       76 DUPCLOSURE                       R8 K35 [PROTO_1]
       77 SETTABLEKS                       R8 R7 K29 ["getName"]
       79 DUPCLOSURE                       R8 K36 [PROTO_2]
       80 SETTABLEKS                       R8 R7 K30 ["getDescription"]
       82 LOADK                            R8 K37 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
       83 SETTABLEKS                       R8 R7 K31 ["icon"]
       85 LOADNIL                          R8
       86 SETTABLEKS                       R8 R7 K32 ["text"]
       88 LOADB                            R8 1
       89 SETTABLEKS                       R8 R7 K33 ["clickableWhenViewportHidden"]
       91 SETTABLEKS                       R7 R6 K23 ["buttonInfo"]
       93 DUPTABLE                         R7 K42 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       94 LOADK                            R8 K27 ["NestedPackagePublisher"]
       95 SETTABLEKS                       R8 R7 K38 ["id"]
       97 GETIMPORT                        R8 K45 [DockWidgetPluginGuiInfo.new]
       99 GETIMPORT                        R9 K49 [Enum.InitialDockState.Bottom]
      101 LOADB                            R10 0
      102 LOADB                            R11 0
      103 LOADN                            R12 128
      104 LOADN                            R13 224
      105 LOADN                            R14 250
      106 LOADN                            R15 200
      107 CALL                             R8 7 1
      108 SETTABLEKS                       R8 R7 K39 ["dockWidgetPluginGuiInfo"]
      110 DUPCLOSURE                       R8 K50 [PROTO_3]
      111 SETTABLEKS                       R8 R7 K40 ["getDockTitle"]
      113 GETIMPORT                        R8 K53 [Enum.ZIndexBehavior.Sibling]
      115 SETTABLEKS                       R8 R7 K41 ["zIndexBehavior"]
      117 SETTABLEKS                       R7 R6 K24 ["dockWidgetInfo"]
      119 GETTABLEKS                       R7 R3 K54 ["build"]
      121 MOVE                             R8 R6
      122 CALL                             R7 1 1
      123 GETTABLEKS                       R8 R7 K55 ["pluginLoader"]
      125 NAMECALL                         R8 R8 K56 ["waitForUserInteraction"]
      127 CALL                             R8 1 1
      128 JUMPIF                           R8 ; [+1]
      129 RETURN                           R0 0
      130 GETIMPORT                        R9 K1 [require]
      132 GETIMPORT                        R10 K3 [script]
      134 GETTABLEKS                       R10 R10 K4 ["Parent"]
      136 GETTABLEKS                       R10 R10 K57 ["main"]
      138 CALL                             R9 1 1
      139 MOVE                             R10 R9
      140 GETIMPORT                        R11 K26 [plugin]
      142 MOVE                             R12 R7
      143 CALL                             R10 2 0
      144 RETURN                           R0 0
