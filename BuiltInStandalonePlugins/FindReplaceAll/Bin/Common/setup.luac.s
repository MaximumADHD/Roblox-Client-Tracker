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
        5 DUPTABLE                         R2 K6 [{"getName", "getDescription", "icon", "clickableWhenViewportHidden", "enabled"}]
        6 DUPCLOSURE                       R3 K7 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K8 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 LOADK                            R3 K9 [""]
       13 SETTABLEKS                       R3 R2 K3 ["icon"]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K4 ["clickableWhenViewportHidden"]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K5 ["enabled"]
       21 DUPTABLE                         R3 K16 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
       22 SETTABLEKS                       R0 R3 K10 ["plugin"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K17 ["PLUGIN_NAME"]
       27 SETTABLEKS                       R4 R3 K11 ["pluginName"]
       29 GETUPVAL                         R4 2
       30 SETTABLEKS                       R4 R3 K12 ["translationResourceTable"]
       32 GETUPVAL                         R4 3
       33 SETTABLEKS                       R4 R3 K13 ["fallbackResourceTable"]
       35 DUPCLOSURE                       R4 K18 [PROTO_2]
       36 SETTABLEKS                       R4 R3 K14 ["getToolbarName"]
       38 SETTABLEKS                       R2 R3 K15 ["buttonInfo"]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K19 ["get"]
       43 CALL                             R5 0 1
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K20 ["Standalone"]
       47 JUMPIFEQ                         R5 R6 ; [+2]
       49 LOADB                            R4 0 +1
       50 LOADB                            R4 1
       51 GETUPVAL                         R5 5
       52 NAMECALL                         R5 R5 K21 ["IsEdit"]
       54 CALL                             R5 1 1
       55 JUMPIF                           R4 ; [+1]
       56 JUMPIFNOT                        R5 ; [+67]
       57 LOADB                            R6 1
       58 SETTABLEKS                       R6 R2 K5 ["enabled"]
       60 DUPTABLE                         R6 K26 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K17 ["PLUGIN_NAME"]
       64 SETTABLEKS                       R7 R6 K22 ["id"]
       66 GETIMPORT                        R7 K29 [DockWidgetPluginGuiInfo.new]
       68 GETIMPORT                        R8 K33 [Enum.InitialDockState.Left]
       70 LOADB                            R9 0
       71 LOADB                            R10 0
       72 LOADN                            R11 128
       73 LOADN                            R12 224
       74 LOADN                            R13 250
       75 LOADN                            R14 200
       76 CALL                             R7 7 1
       77 SETTABLEKS                       R7 R6 K23 ["dockWidgetPluginGuiInfo"]
       79 DUPCLOSURE                       R7 K34 [PROTO_3]
       80 SETTABLEKS                       R7 R6 K24 ["getDockTitle"]
       82 GETIMPORT                        R7 K37 [Enum.ZIndexBehavior.Sibling]
       84 SETTABLEKS                       R7 R6 K25 ["zIndexBehavior"]
       86 SETTABLEKS                       R6 R3 K38 ["dockWidgetInfo"]
       88 GETUPVAL                         R6 6
       89 GETTABLEKS                       R6 R6 K39 ["build"]
       91 MOVE                             R7 R3
       92 CALL                             R6 1 1
       93 LOADNIL                          R7
       94 SETTABLEKS                       R7 R6 K40 ["findActivationState"]
       96 LOADK                            R9 K41 ["FindReplace"]
       97 NAMECALL                         R7 R0 K42 ["GetPluginComponent"]
       99 CALL                             R7 2 1
      100 LOADNIL                          R8
      101 GETTABLEKS                       R9 R7 K43 ["FindActivated"]
      103 NEWCLOSURE                       R11 P4
      104 CAPTURE                          VAL R6
      105 CAPTURE                          REF R8
      106 NAMECALL                         R9 R9 K44 ["Connect"]
      108 CALL                             R9 2 1
      109 MOVE                             R8 R9
      110 GETTABLEKS                       R9 R6 K45 ["pluginLoader"]
      112 NAMECALL                         R9 R9 K46 ["waitForUserInteraction"]
      114 CALL                             R9 1 1
      115 JUMPIF                           R9 ; [+2]
      116 CLOSEUPVALS                      R8
      117 RETURN                           R0 0
      118 MOVE                             R10 R1
      119 MOVE                             R11 R0
      120 MOVE                             R12 R6
      121 CALL                             R10 2 0
      122 CLOSEUPVALS                      R8
      123 RETURN                           R0 0
      124 GETUPVAL                         R6 6
      125 GETTABLEKS                       R6 R6 K39 ["build"]
      127 MOVE                             R7 R3
      128 CALL                             R6 1 0
      129 RETURN                           R0 0

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
