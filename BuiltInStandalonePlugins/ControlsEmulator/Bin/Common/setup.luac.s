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
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["DataModelSessionStarted"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K10 [{["getName"], ["getDescription"], ["icon"] = "rbxlocaltheme://Controller", ["text"], ["clickableWhenViewportHidden"] = True, ["enabled"] = False}]
        6 DUPCLOSURE                       R3 K11 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K12 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 DUPCLOSURE                       R3 K13 [PROTO_2]
       13 SETTABLEKS                       R3 R2 K5 ["text"]
       15 GETTABLEKS                       R3 R0 K14 ["MultipleDocumentInterfaceInstance"]
       17 DUPTABLE                         R4 K23 [{["plugin"], ["pluginName"] = "ControlsEmulator", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"], ["extraTriggers"]}]
       18 SETTABLEKS                       R0 R4 K15 ["plugin"]
       20 GETUPVAL                         R5 1
       21 SETTABLEKS                       R5 R4 K18 ["translationResourceTable"]
       23 GETUPVAL                         R5 2
       24 SETTABLEKS                       R5 R4 K19 ["fallbackResourceTable"]
       26 DUPCLOSURE                       R5 K24 [PROTO_3]
       27 SETTABLEKS                       R5 R4 K20 ["getToolbarName"]
       29 SETTABLEKS                       R2 R4 K21 ["buttonInfo"]
       31 DUPTABLE                         R5 K26 [{"SessionStarted"}]
       32 NEWCLOSURE                       R6 P4
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R6 R5 K25 ["SessionStarted"]
       36 SETTABLEKS                       R5 R4 K22 ["extraTriggers"]
       38 GETIMPORT                        R5 K28 [game]
       40 LOADK                            R7 K29 ["RunService"]
       41 NAMECALL                         R5 R5 K30 ["GetService"]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R7 R7 K31 ["get"]
       47 CALL                             R7 0 1
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R8 R8 K32 ["Standalone"]
       51 JUMPIFEQ                         R7 R8 ; [+2]
       53 LOADB                            R6 0 +1
       54 LOADB                            R6 1
       55 NAMECALL                         R7 R5 K33 ["IsEdit"]
       57 CALL                             R7 1 1
       58 JUMPIF                           R6 ; [+1]
       59 JUMPIFNOT                        R7 ; [+43]
       60 LOADB                            R8 1
       61 SETTABLEKS                       R8 R2 K8 ["enabled"]
       63 DUPTABLE                         R8 K38 [{["id"] = "ControlsEmulator", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       64 GETIMPORT                        R9 K41 [DockWidgetPluginGuiInfo.new]
       66 GETIMPORT                        R10 K45 [Enum.InitialDockState.Right]
       68 LOADB                            R11 0
       69 LOADB                            R12 0
       70 LOADN                            R13 640
       71 LOADN                            R14 480
       72 LOADN                            R15 250
       73 LOADN                            R16 200
       74 CALL                             R9 7 1
       75 SETTABLEKS                       R9 R8 K35 ["dockWidgetPluginGuiInfo"]
       77 DUPCLOSURE                       R9 K46 [PROTO_5]
       78 SETTABLEKS                       R9 R8 K36 ["getDockTitle"]
       80 GETIMPORT                        R9 K49 [Enum.ZIndexBehavior.Sibling]
       82 SETTABLEKS                       R9 R8 K37 ["zIndexBehavior"]
       84 SETTABLEKS                       R8 R4 K50 ["dockWidgetInfo"]
       86 GETUPVAL                         R8 4
       87 GETTABLEKS                       R8 R8 K51 ["build"]
       89 MOVE                             R9 R4
       90 CALL                             R8 1 1
       91 GETTABLEKS                       R9 R8 K52 ["pluginLoader"]
       93 NAMECALL                         R9 R9 K53 ["waitForUserInteraction"]
       95 CALL                             R9 1 1
       96 JUMPIF                           R9 ; [+1]
       97 RETURN                           R0 0
       98 MOVE                             R10 R1
       99 MOVE                             R11 R0
      100 MOVE                             R12 R8
      101 CALL                             R10 2 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R8 4
      104 GETTABLEKS                       R8 R8 K51 ["build"]
      106 MOVE                             R9 R4
      107 CALL                             R8 1 0
      108 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Resources"]
       20 GETTABLEKS                       R3 R3 K11 ["Localization"]
       22 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["Localization"]
       30 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Bin"]
       36 GETTABLEKS                       R6 R6 K15 ["Common"]
       38 GETTABLEKS                       R6 R6 K16 ["pluginType"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K17 [PROTO_6]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
