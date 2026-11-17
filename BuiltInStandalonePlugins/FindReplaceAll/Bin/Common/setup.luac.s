PROTO_0:
        0 LOADK                            R3 K0 ["FindReplaceAllButton"]
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
        0 LOADK                            R3 K0 ["FindReplaceAllToolbar"]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"searchText", "showReplace"}]
        2 SETTABLEKS                       R0 R3 K0 ["searchText"]
        4 SETTABLEKS                       R1 R3 K1 ["showReplace"]
        6 SETTABLEKS                       R3 R2 K3 ["findActivationState"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["mainDockWidget"]
       11 LOADB                            R3 1
       12 SETTABLEKS                       R3 R2 K5 ["Enabled"]
       14 GETUPVAL                         R2 1
       15 NAMECALL                         R2 R2 K6 ["Disconnect"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K9 [{["getName"], ["getDescription"], ["icon"] = "", ["clickableWhenViewportHidden"] = True, ["enabled"] = False}]
        6 DUPCLOSURE                       R3 K10 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K11 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 DUPTABLE                         R3 K18 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
       13 SETTABLEKS                       R0 R3 K12 ["plugin"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K19 ["PLUGIN_NAME"]
       18 SETTABLEKS                       R4 R3 K13 ["pluginName"]
       20 GETUPVAL                         R4 2
       21 SETTABLEKS                       R4 R3 K14 ["translationResourceTable"]
       23 GETUPVAL                         R4 3
       24 SETTABLEKS                       R4 R3 K15 ["fallbackResourceTable"]
       26 DUPCLOSURE                       R4 K20 [PROTO_2]
       27 SETTABLEKS                       R4 R3 K16 ["getToolbarName"]
       29 SETTABLEKS                       R2 R3 K17 ["buttonInfo"]
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R5 R5 K21 ["get"]
       34 CALL                             R5 0 1
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K22 ["Standalone"]
       38 JUMPIFEQ                         R5 R6 ; [+2]
       40 LOADB                            R4 0 +1
       41 LOADB                            R4 1
       42 GETUPVAL                         R5 5
       43 NAMECALL                         R5 R5 K23 ["IsEdit"]
       45 CALL                             R5 1 1
       46 JUMPIF                           R4 ; [+1]
       47 JUMPIFNOT                        R5 ; [+67]
       48 LOADB                            R6 1
       49 SETTABLEKS                       R6 R2 K7 ["enabled"]
       51 DUPTABLE                         R6 K28 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K19 ["PLUGIN_NAME"]
       55 SETTABLEKS                       R7 R6 K24 ["id"]
       57 GETIMPORT                        R7 K31 [DockWidgetPluginGuiInfo.new]
       59 GETIMPORT                        R8 K35 [Enum.InitialDockState.Left]
       61 LOADB                            R9 0
       62 LOADB                            R10 0
       63 LOADN                            R11 640
       64 LOADN                            R12 480
       65 LOADN                            R13 250
       66 LOADN                            R14 200
       67 CALL                             R7 7 1
       68 SETTABLEKS                       R7 R6 K25 ["dockWidgetPluginGuiInfo"]
       70 DUPCLOSURE                       R7 K36 [PROTO_3]
       71 SETTABLEKS                       R7 R6 K26 ["getDockTitle"]
       73 GETIMPORT                        R7 K39 [Enum.ZIndexBehavior.Sibling]
       75 SETTABLEKS                       R7 R6 K27 ["zIndexBehavior"]
       77 SETTABLEKS                       R6 R3 K40 ["dockWidgetInfo"]
       79 GETUPVAL                         R6 6
       80 GETTABLEKS                       R6 R6 K41 ["build"]
       82 MOVE                             R7 R3
       83 CALL                             R6 1 1
       84 LOADNIL                          R7
       85 SETTABLEKS                       R7 R6 K42 ["findActivationState"]
       87 LOADK                            R9 K43 ["FindReplace"]
       88 NAMECALL                         R7 R0 K44 ["GetPluginComponent"]
       90 CALL                             R7 2 1
       91 LOADNIL                          R8
       92 GETTABLEKS                       R9 R7 K45 ["FindActivated"]
       94 NEWCLOSURE                       R11 P4
       95 CAPTURE                          VAL R6
       96 CAPTURE                          REF R8
       97 NAMECALL                         R9 R9 K46 ["Connect"]
       99 CALL                             R9 2 1
      100 MOVE                             R8 R9
      101 GETTABLEKS                       R9 R6 K47 ["pluginLoader"]
      103 NAMECALL                         R9 R9 K48 ["waitForUserInteraction"]
      105 CALL                             R9 1 1
      106 JUMPIF                           R9 ; [+2]
      107 CLOSEUPVALS                      R8
      108 RETURN                           R0 0
      109 MOVE                             R10 R1
      110 MOVE                             R11 R0
      111 MOVE                             R12 R6
      112 CALL                             R10 2 0
      113 CLOSEUPVALS                      R8
      114 RETURN                           R0 0
      115 GETUPVAL                         R6 6
      116 GETTABLEKS                       R6 R6 K41 ["build"]
      118 MOVE                             R7 R3
      119 CALL                             R6 1 0
      120 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["FindReplaceAll"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["PluginLoader"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["PluginLoaderBuilder"]
       22 GETTABLEKS                       R4 R1 K13 ["Src"]
       24 GETTABLEKS                       R4 R4 K14 ["Resources"]
       26 GETTABLEKS                       R4 R4 K15 ["Localization"]
       28 GETTABLEKS                       R4 R4 K16 ["SourceStrings"]
       30 GETTABLEKS                       R5 R1 K13 ["Src"]
       32 GETTABLEKS                       R5 R5 K14 ["Resources"]
       34 GETTABLEKS                       R5 R5 K15 ["Localization"]
       36 GETTABLEKS                       R5 R5 K17 ["LocalizedStrings"]
       38 GETIMPORT                        R6 K9 [require]
       40 GETTABLEKS                       R7 R1 K13 ["Src"]
       42 GETTABLEKS                       R7 R7 K18 ["Util"]
       44 GETTABLEKS                       R7 R7 K19 ["Constants"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K9 [require]
       49 GETTABLEKS                       R8 R1 K20 ["Bin"]
       51 GETTABLEKS                       R8 R8 K21 ["Common"]
       53 GETTABLEKS                       R8 R8 K22 ["pluginType"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K23 [PROTO_5]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R3
       64 RETURN                           R8 1
