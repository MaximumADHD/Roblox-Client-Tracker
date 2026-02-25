PROTO_0:
        0 LOADK                            R3 K0 ["ControlsEmulatorButton"]
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
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 LOADK                            R3 K0 ["ControlsEmulatorToolbar"]
        1 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["DataModelSessionStarted"]
        5 RETURN                           R0 1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K7 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden", "enabled"}]
        6 DUPCLOSURE                       R3 K8 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K9 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 LOADK                            R3 K10 ["rbxlocaltheme://Controller"]
       13 SETTABLEKS                       R3 R2 K3 ["icon"]
       15 DUPCLOSURE                       R3 K11 [PROTO_2]
       16 SETTABLEKS                       R3 R2 K4 ["text"]
       18 LOADB                            R3 1
       19 SETTABLEKS                       R3 R2 K5 ["clickableWhenViewportHidden"]
       21 LOADB                            R3 0
       22 SETTABLEKS                       R3 R2 K6 ["enabled"]
       24 GETTABLEKS                       R3 R0 K12 ["MultipleDocumentInterfaceInstance"]
       26 DUPTABLE                         R4 K20 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
       27 SETTABLEKS                       R0 R4 K13 ["plugin"]
       29 LOADK                            R5 K21 ["ControlsEmulator"]
       30 SETTABLEKS                       R5 R4 K14 ["pluginName"]
       32 GETUPVAL                         R5 1
       33 SETTABLEKS                       R5 R4 K15 ["translationResourceTable"]
       35 GETUPVAL                         R5 2
       36 SETTABLEKS                       R5 R4 K16 ["fallbackResourceTable"]
       38 DUPCLOSURE                       R5 K22 [PROTO_3]
       39 SETTABLEKS                       R5 R4 K17 ["getToolbarName"]
       41 SETTABLEKS                       R2 R4 K18 ["buttonInfo"]
       43 DUPTABLE                         R5 K24 [{"SessionStarted"}]
       44 NEWCLOSURE                       R6 P4
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R6 R5 K23 ["SessionStarted"]
       48 SETTABLEKS                       R5 R4 K19 ["extraTriggers"]
       50 GETIMPORT                        R5 K26 [game]
       52 LOADK                            R7 K27 ["RunService"]
       53 NAMECALL                         R5 R5 K28 ["GetService"]
       55 CALL                             R5 2 1
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R7 R8 K29 ["get"]
       59 CALL                             R7 0 1
       60 GETUPVAL                         R9 3
       61 GETTABLEKS                       R8 R9 K30 ["Standalone"]
       63 JUMPIFEQ                         R7 R8 ; [+2]
       65 LOADB                            R6 0 +1
       66 LOADB                            R6 1
       67 NAMECALL                         R7 R5 K31 ["IsEdit"]
       69 CALL                             R7 1 1
       70 JUMPIF                           R6 ; [+1]
       71 JUMPIFNOT                        R7 ; [+46]
       72 LOADB                            R8 1
       73 SETTABLEKS                       R8 R2 K6 ["enabled"]
       75 DUPTABLE                         R8 K36 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       76 LOADK                            R9 K21 ["ControlsEmulator"]
       77 SETTABLEKS                       R9 R8 K32 ["id"]
       79 GETIMPORT                        R9 K39 [DockWidgetPluginGuiInfo.new]
       81 GETIMPORT                        R10 K43 [Enum.InitialDockState.Right]
       83 LOADB                            R11 0
       84 LOADB                            R12 0
       85 LOADN                            R13 128
       86 LOADN                            R14 224
       87 LOADN                            R15 250
       88 LOADN                            R16 200
       89 CALL                             R9 7 1
       90 SETTABLEKS                       R9 R8 K33 ["dockWidgetPluginGuiInfo"]
       92 DUPCLOSURE                       R9 K44 [PROTO_5]
       93 SETTABLEKS                       R9 R8 K34 ["getDockTitle"]
       95 GETIMPORT                        R9 K47 [Enum.ZIndexBehavior.Sibling]
       97 SETTABLEKS                       R9 R8 K35 ["zIndexBehavior"]
       99 SETTABLEKS                       R8 R4 K48 ["dockWidgetInfo"]
      101 GETUPVAL                         R9 4
      102 GETTABLEKS                       R8 R9 K49 ["build"]
      104 MOVE                             R9 R4
      105 CALL                             R8 1 1
      106 GETTABLEKS                       R9 R8 K50 ["pluginLoader"]
      108 NAMECALL                         R9 R9 K51 ["waitForUserInteraction"]
      110 CALL                             R9 1 1
      111 JUMPIF                           R9 ; [+1]
      112 RETURN                           R0 0
      113 MOVE                             R10 R1
      114 MOVE                             R11 R0
      115 MOVE                             R12 R8
      116 CALL                             R10 2 0
      117 RETURN                           R0 0
      118 GETUPVAL                         R9 4
      119 GETTABLEKS                       R8 R9 K49 ["build"]
      121 MOVE                             R9 R4
      122 CALL                             R8 1 0
      123 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R6 R0 K9 ["Src"]
       18 GETTABLEKS                       R5 R6 K10 ["Resources"]
       20 GETTABLEKS                       R4 R5 K11 ["Localization"]
       22 GETTABLEKS                       R3 R4 K12 ["SourceStrings"]
       24 GETTABLEKS                       R7 R0 K9 ["Src"]
       26 GETTABLEKS                       R6 R7 K10 ["Resources"]
       28 GETTABLEKS                       R5 R6 K11 ["Localization"]
       30 GETTABLEKS                       R4 R5 K13 ["LocalizedStrings"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K14 ["Bin"]
       36 GETTABLEKS                       R7 R8 K15 ["Common"]
       38 GETTABLEKS                       R6 R7 K16 ["pluginType"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K17 [PROTO_6]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
