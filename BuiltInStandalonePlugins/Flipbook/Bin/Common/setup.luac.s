PROTO_0:
        0 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R3 K0 ["Open Flipbook to view and preview UI components"]
        1 RETURN                           R3 1

PROTO_2:
        0 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Checked"]
        3 SETTABLEKS                       R2 R1 K1 ["Enabled"]
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unmount"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Name"]
        3 SETTABLEKS                       R1 R0 K0 ["Name"]
        5 NEWTABLE                         R1 0 1
        7 DUPTABLE                         R2 K12 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"], ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K1 ["uri"]
       11 DUPCLOSURE                       R3 K13 [PROTO_0]
       12 SETTABLEKS                       R3 R2 K4 ["getText"]
       14 DUPCLOSURE                       R3 K14 [PROTO_1]
       15 SETTABLEKS                       R3 R2 K5 ["getTooltip"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K15 ["FLIPBOOK_LOGO"]
       20 SETTABLEKS                       R3 R2 K6 ["icon"]
       22 SETLIST                          R1 R2 1 [1]
       24 DUPTABLE                         R2 K23 [{["plugin"], ["pluginName"] = "Flipbook", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       25 SETTABLEKS                       R0 R2 K16 ["plugin"]
       27 GETUPVAL                         R3 3
       28 SETTABLEKS                       R3 R2 K19 ["translationResourceTable"]
       30 GETUPVAL                         R3 4
       31 SETTABLEKS                       R3 R2 K20 ["fallbackResourceTable"]
       33 SETTABLEKS                       R1 R2 K22 ["actionInfos"]
       35 GETIMPORT                        R3 K25 [game]
       37 LOADK                            R5 K26 ["RunService"]
       38 NAMECALL                         R3 R3 K27 ["GetService"]
       40 CALL                             R3 2 1
       41 GETUPVAL                         R5 5
       42 GETTABLEKS                       R5 R5 K28 ["get"]
       44 CALL                             R5 0 1
       45 GETUPVAL                         R6 5
       46 GETTABLEKS                       R6 R6 K29 ["Standalone"]
       48 JUMPIFEQ                         R5 R6 ; [+2]
       50 LOADB                            R4 0 +1
       51 LOADB                            R4 1
       52 NAMECALL                         R5 R3 K30 ["IsEdit"]
       54 CALL                             R5 1 1
       55 JUMPIF                           R4 ; [+1]
       56 JUMPIFNOT                        R5 ; [+83]
       57 DUPTABLE                         R6 K36 [{["id"] = "FlipbookInternal", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       58 GETIMPORT                        R7 K39 [DockWidgetPluginGuiInfo.new]
       60 GETIMPORT                        R8 K43 [Enum.InitialDockState.Bottom]
       62 LOADB                            R9 0
       63 LOADB                            R10 0
       64 LOADN                            R11 640
       65 LOADN                            R12 480
       66 LOADN                            R13 250
       67 LOADN                            R14 200
       68 CALL                             R7 7 1
       69 SETTABLEKS                       R7 R6 K33 ["dockWidgetPluginGuiInfo"]
       71 DUPCLOSURE                       R7 K44 [PROTO_2]
       72 SETTABLEKS                       R7 R6 K34 ["getDockTitle"]
       74 GETIMPORT                        R7 K47 [Enum.ZIndexBehavior.Sibling]
       76 SETTABLEKS                       R7 R6 K35 ["zIndexBehavior"]
       78 SETTABLEKS                       R6 R2 K48 ["dockWidgetInfo"]
       80 GETUPVAL                         R6 6
       81 GETTABLEKS                       R6 R6 K49 ["build"]
       83 MOVE                             R7 R2
       84 CALL                             R6 1 1
       85 GETTABLEKS                       R7 R6 K50 ["mainDockWidget"]
       87 MOVE                             R9 R7
       88 JUMPIFNOT                        R9 ; [+4]
       89 LOADK                            R11 K51 ["DockWidgetPluginGui"]
       90 NAMECALL                         R9 R7 K52 ["IsA"]
       92 CALL                             R9 2 1
       93 FASTCALL2K                       ASSERT R9 K53 ; [+4]
       95 LOADK                            R10 K53 ["Flipbook needs a DockWidgetPluginGui to work"]
       96 GETIMPORT                        R8 K55 [assert]
       98 CALL                             R8 2 0
       99 LOADK                            R10 K56 ["Actions"]
      100 NAMECALL                         R8 R0 K57 ["GetPluginComponent"]
      102 CALL                             R8 2 1
      103 GETUPVAL                         R11 1
      104 NAMECALL                         R9 R8 K58 ["BindToChangedAsync"]
      106 CALL                             R9 2 1
      107 NEWCLOSURE                       R11 P3
      108 CAPTURE                          VAL R7
      109 NAMECALL                         R9 R9 K59 ["Connect"]
      111 CALL                             R9 2 1
      112 NEWCLOSURE                       R12 P4
      113 CAPTURE                          VAL R8
      114 CAPTURE                          UPVAL U1
      115 NAMECALL                         R10 R7 K60 ["BindToClose"]
      117 CALL                             R10 2 0
      118 GETTABLEKS                       R10 R6 K61 ["pluginLoader"]
      120 NAMECALL                         R10 R10 K62 ["waitForUserInteraction"]
      122 CALL                             R10 1 1
      123 JUMPIF                           R10 ; [+1]
      124 RETURN                           R0 0
      125 GETUPVAL                         R11 2
      126 GETTABLEKS                       R11 R11 K63 ["createFlipbookPlugin"]
      128 MOVE                             R12 R0
      129 MOVE                             R13 R7
      130 CALL                             R11 2 1
      131 GETTABLEKS                       R12 R0 K64 ["Unloading"]
      133 NEWCLOSURE                       R14 P5
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R9
      136 NAMECALL                         R12 R12 K59 ["Connect"]
      138 CALL                             R12 2 0
      139 RETURN                           R0 0
      140 GETUPVAL                         R6 6
      141 GETTABLEKS                       R6 R6 K49 ["build"]
      143 MOVE                             R7 R2
      144 CALL                             R6 1 0
      145 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Flipbook"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["FlipbookCore"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Bin"]
       32 GETTABLEKS                       R5 R5 K11 ["Common"]
       34 GETTABLEKS                       R5 R5 K12 ["pluginType"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["PluginLoaderBuilder"]
       39 GETTABLEKS                       R6 R0 K14 ["Src"]
       41 GETTABLEKS                       R6 R6 K15 ["Resources"]
       43 GETTABLEKS                       R6 R6 K16 ["Localization"]
       45 GETTABLEKS                       R6 R6 K17 ["SourceStrings"]
       47 GETTABLEKS                       R7 R0 K14 ["Src"]
       49 GETTABLEKS                       R7 R7 K15 ["Resources"]
       51 GETTABLEKS                       R7 R7 K16 ["Localization"]
       53 GETTABLEKS                       R7 R7 K18 ["LocalizedStrings"]
       55 GETTABLEKS                       R8 R2 K19 ["Util"]
       57 GETTABLEKS                       R8 R8 K20 ["StudioUri"]
       59 GETTABLEKS                       R9 R8 K21 ["fromAction"]
       61 LOADK                            R10 K2 ["Flipbook"]
       62 LOADK                            R11 K22 ["Toggle"]
       63 CALL                             R9 2 1
       64 DUPCLOSURE                       R10 K23 [PROTO_7]
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 RETURN                           R10 1
