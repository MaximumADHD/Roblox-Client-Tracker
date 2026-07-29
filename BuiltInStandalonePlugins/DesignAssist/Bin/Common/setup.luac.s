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
        4 LOADK                            R7 K1 ["Button"]
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

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Name"]
        3 SETTABLEKS                       R3 R0 K0 ["Name"]
        5 DUPTABLE                         R3 K7 [{["plugin"], ["pluginName"] = "DesignAssist", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"]}]
        6 SETTABLEKS                       R0 R3 K1 ["plugin"]
        8 GETUPVAL                         R4 1
        9 SETTABLEKS                       R4 R3 K4 ["translationResourceTable"]
       11 GETUPVAL                         R4 2
       12 SETTABLEKS                       R4 R3 K5 ["fallbackResourceTable"]
       14 JUMPIFEQKS                       R1 K8 ["edit"] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K6 ["noToolbar"]
       20 JUMPIFNOTEQKS                    R1 K9 ["standalone"] ; [+51]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K10 ["registerAction"]
       25 MOVE                             R5 R0
       26 LOADB                            R6 0
       27 CALL                             R4 2 0
       28 GETUPVAL                         R4 4
       29 SETTABLEKS                       R4 R3 K11 ["getToolbarName"]
       31 DUPTABLE                         R4 K19 [{["getName"], ["getDescription"], ["icon"], ["text"], ["clickableWhenViewportHidden"] = True, ["enabled"] = True}]
       32 GETUPVAL                         R5 5
       33 SETTABLEKS                       R5 R4 K12 ["getName"]
       35 GETUPVAL                         R5 6
       36 SETTABLEKS                       R5 R4 K13 ["getDescription"]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K20 ["TOOLBAR_ICON"]
       41 SETTABLEKS                       R5 R4 K14 ["icon"]
       43 GETUPVAL                         R5 5
       44 SETTABLEKS                       R5 R4 K15 ["text"]
       46 SETTABLEKS                       R4 R3 K21 ["buttonInfo"]
       48 NEWTABLE                         R4 0 1
       50 DUPTABLE                         R5 K31 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"], ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False, ["visibleOnRibbon"] = True}]
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K32 ["ACTION_URI"]
       54 SETTABLEKS                       R6 R5 K22 ["uri"]
       56 GETUPVAL                         R6 5
       57 SETTABLEKS                       R6 R5 K25 ["getText"]
       59 GETUPVAL                         R6 6
       60 SETTABLEKS                       R6 R5 K26 ["getTooltip"]
       62 GETUPVAL                         R6 3
       63 GETTABLEKS                       R6 R6 K33 ["ACTION_ICON"]
       65 SETTABLEKS                       R6 R5 K14 ["icon"]
       67 SETLIST                          R4 R5 1 [1]
       69 SETTABLEKS                       R4 R3 K34 ["actionInfos"]
       71 JUMP                             ; [+36]
       72 JUMPIFNOTEQKS                    R1 K8 ["edit"] ; [+25]
       74 DUPTABLE                         R4 K39 [{["id"] = "DesignAssist", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       75 GETIMPORT                        R5 K42 [DockWidgetPluginGuiInfo.new]
       77 GETIMPORT                        R6 K46 [Enum.InitialDockState.Right]
       79 LOADB                            R7 1
       80 LOADB                            R8 1
       81 LOADN                            R9 450
       82 LOADN                            R10 650
       83 LOADN                            R11 350
       84 LOADN                            R12 300
       85 CALL                             R5 7 1
       86 SETTABLEKS                       R5 R4 K36 ["dockWidgetPluginGuiInfo"]
       88 GETUPVAL                         R5 7
       89 SETTABLEKS                       R5 R4 K37 ["getDockTitle"]
       91 GETIMPORT                        R5 K49 [Enum.ZIndexBehavior.Sibling]
       93 SETTABLEKS                       R5 R4 K38 ["zIndexBehavior"]
       95 SETTABLEKS                       R4 R3 K50 ["dockWidgetInfo"]
       97 JUMP                             ; [+10]
       98 GETIMPORT                        R4 K52 [error]
      100 LOADK                            R6 K53 ["Unknown DesignAssist plugin mode: "]
      101 FASTCALL1                        TOSTRING R1 ; [+3]
      102 MOVE                             R8 R1
      103 GETIMPORT                        R7 K55 [tostring]
      105 CALL                             R7 1 1
      106 CONCAT                           R5 R6 R7
      107 CALL                             R4 1 0
      108 GETUPVAL                         R4 8
      109 GETTABLEKS                       R4 R4 K56 ["build"]
      111 MOVE                             R5 R3
      112 CALL                             R4 1 1
      113 GETTABLEKS                       R5 R4 K57 ["pluginLoader"]
      115 NAMECALL                         R5 R5 K58 ["waitForUserInteraction"]
      117 CALL                             R5 1 1
      118 JUMPIF                           R5 ; [+1]
      119 RETURN                           R0 0
      120 JUMPIFNOTEQKS                    R1 K9 ["standalone"] ; [+10]
      122 GETUPVAL                         R6 9
      123 GETTABLEKS                       R6 R6 K59 ["activateToggleAction"]
      125 MOVE                             R7 R0
      126 GETUPVAL                         R8 3
      127 GETTABLEKS                       R8 R8 K32 ["ACTION_URI"]
      129 CALL                             R6 2 0
      130 RETURN                           R0 0
      131 JUMPIFNOT                        R2 ; [+4]
      132 MOVE                             R6 R2
      133 MOVE                             R7 R0
      134 MOVE                             R8 R4
      135 CALL                             R6 2 0
      136 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
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
       36 GETTABLEKS                       R6 R6 K14 ["Ribbon"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R7 K15 ["Util"]
       45 GETTABLEKS                       R7 R7 K16 ["PluginRuntime"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K17 [PROTO_0]
       49 DUPCLOSURE                       R8 K18 [PROTO_1]
       50 DUPCLOSURE                       R9 K19 [PROTO_2]
       51 DUPCLOSURE                       R10 K20 [PROTO_3]
       52 DUPCLOSURE                       R11 K21 [PROTO_4]
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 RETURN                           R11 1
