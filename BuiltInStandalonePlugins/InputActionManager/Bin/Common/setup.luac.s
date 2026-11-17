PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

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
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["pluginLoader"]
        4 NAMECALL                         R1 R1 K1 ["_onUserInteracted"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 NEWTABLE                         R2 0 1
        7 DUPTABLE                         R3 K13 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
        8 DUPTABLE                         R4 K22 [{["DataModel"] = "Standalone", ["PluginId"] = "InputActionManager", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
        9 SETTABLEKS                       R4 R3 K1 ["uri"]
       11 DUPCLOSURE                       R4 K23 [PROTO_0]
       12 SETTABLEKS                       R4 R3 K4 ["getText"]
       14 DUPCLOSURE                       R4 K24 [PROTO_1]
       15 SETTABLEKS                       R4 R3 K5 ["getTooltip"]
       17 SETLIST                          R2 R3 1 [1]
       19 DUPTABLE                         R3 K31 [{["plugin"], ["pluginName"] = "InputActionManager", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       20 SETTABLEKS                       R0 R3 K25 ["plugin"]
       22 GETUPVAL                         R4 1
       23 SETTABLEKS                       R4 R3 K27 ["translationResourceTable"]
       25 GETUPVAL                         R4 2
       26 SETTABLEKS                       R4 R3 K28 ["fallbackResourceTable"]
       28 SETTABLEKS                       R2 R3 K30 ["actionInfos"]
       30 GETIMPORT                        R4 K33 [game]
       32 LOADK                            R6 K34 ["RunService"]
       33 NAMECALL                         R4 R4 K35 ["GetService"]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K36 ["get"]
       39 CALL                             R6 0 1
       40 GETUPVAL                         R7 3
       41 GETTABLEKS                       R7 R7 K15 ["Standalone"]
       43 JUMPIFEQ                         R6 R7 ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 NAMECALL                         R6 R4 K37 ["IsEdit"]
       49 CALL                             R6 1 1
       50 JUMPIF                           R5 ; [+1]
       51 JUMPIFNOT                        R6 ; [+54]
       52 DUPTABLE                         R7 K42 [{["id"] = "InputActionManager", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       53 GETIMPORT                        R8 K45 [DockWidgetPluginGuiInfo.new]
       55 GETIMPORT                        R9 K49 [Enum.InitialDockState.Bottom]
       57 LOADB                            R10 0
       58 LOADB                            R11 0
       59 LOADN                            R12 640
       60 LOADN                            R13 480
       61 LOADN                            R14 250
       62 LOADN                            R15 200
       63 CALL                             R8 7 1
       64 SETTABLEKS                       R8 R7 K39 ["dockWidgetPluginGuiInfo"]
       66 DUPCLOSURE                       R8 K50 [PROTO_2]
       67 SETTABLEKS                       R8 R7 K40 ["getDockTitle"]
       69 GETIMPORT                        R8 K53 [Enum.ZIndexBehavior.Sibling]
       71 SETTABLEKS                       R8 R7 K41 ["zIndexBehavior"]
       73 SETTABLEKS                       R7 R3 K54 ["dockWidgetInfo"]
       75 GETUPVAL                         R7 4
       76 GETTABLEKS                       R7 R7 K55 ["build"]
       78 MOVE                             R8 R3
       79 CALL                             R7 1 1
       80 LOADNIL                          R8
       81 LOADK                            R11 K56 ["FilterInstances"]
       82 NEWCLOSURE                       R12 P3
       83 CAPTURE                          REF R8
       84 CAPTURE                          VAL R7
       85 NAMECALL                         R9 R0 K57 ["OnInvoke"]
       87 CALL                             R9 3 1
       88 GETTABLEKS                       R10 R7 K58 ["pluginLoader"]
       90 NAMECALL                         R10 R10 K59 ["waitForUserInteraction"]
       92 CALL                             R10 1 1
       93 JUMPIF                           R10 ; [+2]
       94 CLOSEUPVALS                      R8
       95 RETURN                           R0 0
       96 NAMECALL                         R11 R9 K60 ["Destroy"]
       98 CALL                             R11 1 0
       99 MOVE                             R11 R1
      100 MOVE                             R12 R0
      101 MOVE                             R13 R7
      102 MOVE                             R14 R8
      103 CALL                             R11 3 0
      104 CLOSEUPVALS                      R8
      105 RETURN                           R0 0
      106 GETUPVAL                         R7 4
      107 GETTABLEKS                       R7 R7 K55 ["build"]
      109 MOVE                             R8 R3
      110 CALL                             R7 1 0
      111 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
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
       34 GETTABLEKS                       R6 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R6 K14 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Bin"]
       43 GETTABLEKS                       R7 R7 K16 ["Common"]
       45 GETTABLEKS                       R7 R7 K17 ["pluginType"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K18 [PROTO_4]
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 RETURN                           R7 1
