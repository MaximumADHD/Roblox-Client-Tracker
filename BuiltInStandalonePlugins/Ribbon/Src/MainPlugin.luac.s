PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["GetSetting"]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R2 R0 K0 ["GetSetting"]
        7 CALL                             R2 2 1
        8 GETIMPORT                        R3 K2 [game]
       10 LOADK                            R5 K3 ["NewRibbonIxpLayer"]
       11 NAMECALL                         R3 R3 K4 ["GetFastString"]
       13 CALL                             R3 2 1
       14 LOADB                            R4 1
       15 JUMPIFEQKNIL                     R1 ; [+5]
       17 JUMPIFEQKNIL                     R2 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 LOADB                            R5 0
       22 JUMPIFNOT                        R4 ; [+44]
       23 GETUPVAL                         R6 2
       24 MOVE                             R8 R3
       25 NAMECALL                         R6 R6 K5 ["GetUserStatusForLayer"]
       27 CALL                             R6 2 1
       28 GETIMPORT                        R7 K9 [Enum.IXPLoadingStatus.Initialized]
       30 JUMPIFNOTEQ                      R6 R7 ; [+36]
       32 GETUPVAL                         R7 2
       33 MOVE                             R9 R3
       34 NAMECALL                         R7 R7 K10 ["GetUserLayerVariables"]
       36 CALL                             R7 2 1
       37 JUMPIFNOTEQKNIL                  R2 ; [+8]
       39 GETTABLEKS                       R8 R7 K11 ["isCompact"]
       41 JUMPIFEQKNIL                     R8 ; [+4]
       43 GETTABLEKS                       R2 R7 K11 ["isCompact"]
       45 LOADB                            R5 1
       46 JUMPIFNOTEQKNIL                  R1 ; [+8]
       48 GETTABLEKS                       R8 R7 K12 ["showLabels"]
       50 JUMPIFEQKNIL                     R8 ; [+4]
       52 GETTABLEKS                       R1 R7 K12 ["showLabels"]
       54 LOADB                            R5 1
       55 GETUPVAL                         R8 3
       56 JUMPIF                           R8 ; [+10]
       57 GETUPVAL                         R10 0
       58 NAMECALL                         R8 R0 K0 ["GetSetting"]
       60 CALL                             R8 2 1
       61 MOVE                             R2 R8
       62 GETUPVAL                         R10 1
       63 NAMECALL                         R8 R0 K0 ["GetSetting"]
       65 CALL                             R8 2 1
       66 MOVE                             R1 R8
       67 JUMPIFNOT                        R5 ; [+5]
       68 GETUPVAL                         R6 2
       69 MOVE                             R8 R3
       70 NAMECALL                         R6 R6 K13 ["LogUserLayerExposure"]
       72 CALL                             R6 2 0
       73 JUMPIFNOTEQKNIL                  R1 ; [+2]
       75 LOADB                            R1 1
       76 JUMPIFNOTEQKNIL                  R2 ; [+2]
       78 LOADB                            R2 1
       79 DUPTABLE                         R6 K14 [{"showLabels", "isCompact"}]
       80 SETTABLEKS                       R1 R6 K12 ["showLabels"]
       82 SETTABLEKS                       R2 R6 K11 ["isCompact"]
       84 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["showLabels"]
        5 JUMPIFNOT                        R0 ; [+2]
        6 LOADK                            R0 K2 ["ShowLabelsTokens"]
        7 RETURN                           R0 1
        8 LOADK                            R0 K3 ["HideLabelsTokens"]
        9 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 2
        2 LOADK                            R1 K0 ["ShowLabelsTokens"]
        3 LOADK                            R2 K1 ["HideLabelsTokens"]
        4 SETLIST                          R0 R1 2 [1]
        6 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["compactDensity"]
        5 JUMPIFNOT                        R0 ; [+2]
        6 LOADK                            R0 K2 ["DensityCompact"]
        7 RETURN                           R0 1
        8 LOADK                            R0 K3 ["DensityDefault"]
        9 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 2
        2 LOADK                            R1 K0 ["DensityCompact"]
        3 LOADK                            R2 K1 ["DensityDefault"]
        4 SETLIST                          R0 R1 2 [1]
        6 RETURN                           R0 1

PROTO_5:
        0 LOADK                            R0 K0 ["GeneralTokens"]
        1 RETURN                           R0 1

PROTO_6:
        0 NEWTABLE                         R0 0 1
        2 LOADK                            R1 K0 ["GeneralTokens"]
        3 SETLIST                          R0 R1 1 [1]
        5 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["Resources"]
        7 GETTABLEKS                       R1 R1 K4 ["GeneralTokens"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["Src"]
       15 GETTABLEKS                       R2 R2 K3 ["Resources"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["GetCurrentName"]
       20 CALL                             R4 0 -1
       21 NAMECALL                         R2 R2 K6 ["FindFirstChild"]
       23 CALL                             R2 -1 -1
       24 CALL                             R1 -1 1
       25 GETIMPORT                        R2 K1 [require]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K2 ["Src"]
       30 GETTABLEKS                       R3 R3 K3 ["Resources"]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K5 ["GetCurrentName"]
       35 CALL                             R5 0 -1
       36 NAMECALL                         R3 R3 K6 ["FindFirstChild"]
       38 CALL                             R3 -1 -1
       39 CALL                             R2 -1 1
       40 NEWTABLE                         R5 0 2
       42 MOVE                             R6 R0
       43 MOVE                             R7 R2
       44 SETLIST                          R5 R6 2 [1]
       46 NAMECALL                         R3 R1 K7 ["SetDerives"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K4 ["Floating"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K5 ["Enabled"]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K6 ["closeTooltips"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toString"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Uri"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["toString"]
       10 GETTABLEKS                       R4 R0 K1 ["Uri"]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQ                      R2 R3 ; [+3]
       15 GETUPVAL                         R1 1
       16 RETURN                           R1 1
       17 MOVE                             R1 R0
       18 RETURN                           R1 1

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"customTools"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["customTools"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K0 ["customTools"]
       10 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K0 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resizer"]
        3 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R3 K2 ["X"]
        7 NAMECALL                         R1 R1 K3 ["setWidth"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["WindowChromeController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R0 K2 ["SetCaptionDragRectsAsync"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["showLabels"]
        2 NOT                              R1 R2
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 NAMECALL                         R2 R2 K1 ["SetSetting"]
        8 CALL                             R2 3 0
        9 DUPTABLE                         R2 K2 [{"showLabels"}]
       10 SETTABLEKS                       R1 R2 K0 ["showLabels"]
       12 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["compactDensity"]
        2 NOT                              R1 R2
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 NAMECALL                         R2 R2 K1 ["SetSetting"]
        8 CALL                             R2 3 0
        9 DUPTABLE                         R2 K2 [{"compactDensity"}]
       10 SETTABLEKS                       R1 R2 K0 ["compactDensity"]
       12 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["showFloating"]
        5 NOT                              R0 R1
        6 JUMPIF                           R0 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["Floating"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["Enabled"]
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R0
       16 NAMECALL                         R1 R1 K4 ["SetSetting"]
       18 CALL                             R1 3 0
       19 GETUPVAL                         R1 0
       20 DUPTABLE                         R3 K5 [{"showFloating"}]
       21 SETTABLEKS                       R0 R3 K1 ["showFloating"]
       23 NAMECALL                         R1 R1 K6 ["setState"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Widgets"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["join"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["pluginUri"]
        9 DUPTABLE                         R4 K6 [{["Category"] = "Widgets", ["ItemId"] = "Tabs/*/MoveGridSize"}]
       10 CALL                             R2 2 -1
       11 NAMECALL                         R0 R0 K7 ["FocusAsync"]
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Widgets"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["join"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["pluginUri"]
        9 DUPTABLE                         R4 K6 [{["Category"] = "Widgets", ["ItemId"] = "Tabs/*/RotateGridSize"}]
       10 CALL                             R2 2 -1
       11 NAMECALL                         R0 R0 K7 ["FocusAsync"]
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Floating"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        6 RETURN                           R0 0

PROTO_25:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["connections"]
        5 GETTABLEKS                       R3 R0 K1 ["CurrentDataModelTypeAboutToChange"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R3 R3 K2 ["Connect"]
       11 CALL                             R3 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R1 K5 [table.insert]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["showFloating"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["Panels"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["floatingUri"]
       12 NAMECALL                         R0 R0 K4 ["FocusAsync"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["showFloating"]
        5 JUMPIFNOT                        R0 ; [+31]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["state"]
        9 GETTABLEKS                       R0 R0 K2 ["expanded"]
       11 JUMPIFNOT                        R0 ; [+25]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K3 ["toggleTask"]
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETIMPORT                        R0 K6 [task.cancel]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K3 ["toggleTask"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 0
       23 GETIMPORT                        R1 K8 [task.delay]
       25 GETUPVAL                         R3 1
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETUPVAL                         R3 2
       29 DIVK                             R2 R3 K9 [1000]
       30 JUMP                             ; [+1]
       31 LOADK                            R2 K10 [0.3]
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          UPVAL U0
       34 CALL                             R1 2 1
       35 SETTABLEKS                       R1 R0 K3 ["toggleTask"]
       37 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleTask"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["toggleTask"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["toggleTask"]
       14 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 GETUPVAL                         R5 0
        3 NAMECALL                         R3 R2 K1 ["GetSetting"]
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+7]
        8 LOADB                            R3 0
        9 GETUPVAL                         R6 0
       10 MOVE                             R7 R3
       11 NAMECALL                         R4 R2 K2 ["SetSetting"]
       13 CALL                             R4 3 0
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 GETUPVAL                         R6 1
       17 JUMPIFNOT                        R6 ; [+9]
       18 GETGLOBAL                        R6 K3 ["getRibbonDefaultSettingsFromIXP"]
       20 MOVE                             R7 R2
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R4 R6 K4 ["showLabels"]
       24 GETTABLEKS                       R5 R6 K5 ["isCompact"]
       26 JUMP                             ; [+16]
       27 GETUPVAL                         R8 2
       28 NAMECALL                         R6 R2 K1 ["GetSetting"]
       30 CALL                             R6 2 1
       31 MOVE                             R4 R6
       32 JUMPIFNOTEQKNIL                  R4 ; [+2]
       34 LOADB                            R4 1
       35 GETUPVAL                         R8 3
       36 NAMECALL                         R6 R2 K1 ["GetSetting"]
       38 CALL                             R6 2 1
       39 MOVE                             R5 R6
       40 JUMPIFNOTEQKNIL                  R5 ; [+2]
       42 LOADB                            R5 1
       43 DUPTABLE                         R6 K11 [{["expanded"] = False, ["customTools"], ["showFloating"], ["showLabels"], ["compactDensity"]}]
       44 NEWTABLE                         R7 0 0
       46 SETTABLEKS                       R7 R6 K8 ["customTools"]
       48 SETTABLEKS                       R3 R6 K9 ["showFloating"]
       50 SETTABLEKS                       R4 R6 K4 ["showLabels"]
       52 SETTABLEKS                       R5 R6 K10 ["compactDensity"]
       54 SETTABLEKS                       R6 R0 K12 ["state"]
       56 GETUPVAL                         R6 4
       57 GETTABLEKS                       R6 R6 K13 ["wrap"]
       59 GETTABLEKS                       R7 R1 K0 ["Plugin"]
       61 NAMECALL                         R7 R7 K14 ["GetUri"]
       63 CALL                             R7 1 -1
       64 CALL                             R6 -1 1
       65 SETTABLEKS                       R6 R0 K15 ["pluginUri"]
       67 GETTABLEKS                       R6 R1 K0 ["Plugin"]
       69 LOADK                            R8 K16 ["Tools"]
       70 NAMECALL                         R6 R6 K17 ["GetPluginComponent"]
       72 CALL                             R6 2 1
       73 SETTABLEKS                       R6 R0 K16 ["Tools"]
       75 GETTABLEKS                       R6 R1 K0 ["Plugin"]
       77 LOADK                            R8 K18 ["Panels"]
       78 NAMECALL                         R6 R6 K17 ["GetPluginComponent"]
       80 CALL                             R6 2 1
       81 SETTABLEKS                       R6 R0 K18 ["Panels"]
       83 GETTABLEKS                       R6 R1 K0 ["Plugin"]
       85 LOADK                            R8 K19 ["Widgets"]
       86 NAMECALL                         R6 R6 K17 ["GetPluginComponent"]
       88 CALL                             R6 2 1
       89 SETTABLEKS                       R6 R0 K19 ["Widgets"]
       91 GETTABLEKS                       R6 R1 K0 ["Plugin"]
       93 LOADK                            R8 K20 ["InteractionTelemetry"]
       94 NAMECALL                         R6 R6 K17 ["GetPluginComponent"]
       96 CALL                             R6 2 1
       97 SETTABLEKS                       R6 R0 K20 ["InteractionTelemetry"]
       99 GETUPVAL                         R6 4
      100 GETTABLEKS                       R6 R6 K21 ["join"]
      102 GETTABLEKS                       R7 R0 K15 ["pluginUri"]
      104 DUPTABLE                         R8 K25 [{["Category"] = "Panels", ["ItemId"] = "Floating"}]
      105 CALL                             R6 2 1
      106 SETTABLEKS                       R6 R0 K26 ["floatingUri"]
      108 GETUPVAL                         R6 4
      109 GETTABLEKS                       R6 R6 K21 ["join"]
      111 GETTABLEKS                       R7 R0 K15 ["pluginUri"]
      113 DUPTABLE                         R8 K28 [{["Category"] = "Widgets", ["ItemId"] = "Ribbon"}]
      114 CALL                             R6 2 1
      115 SETTABLEKS                       R6 R0 K29 ["widgetUri"]
      117 GETUPVAL                         R6 5
      118 GETTABLEKS                       R6 R6 K30 ["new"]
      120 MOVE                             R7 R2
      121 CALL                             R6 1 1
      122 SETTABLEKS                       R6 R0 K31 ["resizer"]
      124 GETTABLEKS                       R6 R0 K31 ["resizer"]
      126 LOADB                            R8 0
      127 MOVE                             R9 R3
      128 MOVE                             R10 R4
      129 MOVE                             R11 R5
      130 NAMECALL                         R6 R6 K32 ["update"]
      132 CALL                             R6 5 0
      133 GETUPVAL                         R6 6
      134 GETTABLEKS                       R6 R6 K30 ["new"]
      136 MOVE                             R7 R2
      137 GETTABLEKS                       R8 R1 K24 ["Floating"]
      139 CALL                             R6 2 1
      140 SETTABLEKS                       R6 R0 K33 ["hider"]
      142 GETTABLEKS                       R6 R0 K33 ["hider"]
      144 NAMECALL                         R6 R6 K34 ["start"]
      146 CALL                             R6 1 0
      147 GETUPVAL                         R6 7
      148 GETTABLEKS                       R6 R6 K35 ["Localization"]
      150 GETTABLEKS                       R6 R6 K30 ["new"]
      152 DUPTABLE                         R7 K39 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Ribbon"}]
      153 GETUPVAL                         R8 8
      154 SETTABLEKS                       R8 R7 K36 ["stringResourceTable"]
      156 GETUPVAL                         R8 9
      157 SETTABLEKS                       R8 R7 K37 ["translationResourceTable"]
      159 CALL                             R6 1 1
      160 SETTABLEKS                       R6 R0 K40 ["localization"]
      162 GETUPVAL                         R6 7
      163 GETTABLEKS                       R6 R6 K41 ["Analytics"]
      165 GETTABLEKS                       R6 R6 K30 ["new"]
      167 GETUPVAL                         R7 10
      168 CALL                             R6 1 1
      169 SETTABLEKS                       R6 R0 K42 ["analytics"]
      171 NEWTABLE                         R6 0 0
      173 SETTABLEKS                       R6 R0 K43 ["connections"]
      175 GETUPVAL                         R6 11
      176 GETTABLEKS                       R6 R6 K30 ["new"]
      178 CALL                             R6 0 1
      179 SETTABLEKS                       R6 R0 K44 ["labelsChangedSignal"]
      181 GETUPVAL                         R6 11
      182 GETTABLEKS                       R6 R6 K30 ["new"]
      184 CALL                             R6 0 1
      185 SETTABLEKS                       R6 R0 K45 ["compactDensitySignal"]
      187 DUPTABLE                         R6 K49 [{"GetCurrentName", "GetNames", "Changed"}]
      188 NEWCLOSURE                       R7 P0
      189 CAPTURE                          VAL R0
      190 SETTABLEKS                       R7 R6 K46 ["GetCurrentName"]
      192 DUPCLOSURE                       R7 K50 [PROTO_2]
      193 SETTABLEKS                       R7 R6 K47 ["GetNames"]
      195 GETTABLEKS                       R7 R0 K44 ["labelsChangedSignal"]
      197 SETTABLEKS                       R7 R6 K48 ["Changed"]
      199 DUPTABLE                         R7 K49 [{"GetCurrentName", "GetNames", "Changed"}]
      200 NEWCLOSURE                       R8 P2
      201 CAPTURE                          VAL R0
      202 SETTABLEKS                       R8 R7 K46 ["GetCurrentName"]
      204 DUPCLOSURE                       R8 K51 [PROTO_4]
      205 SETTABLEKS                       R8 R7 K47 ["GetNames"]
      207 GETTABLEKS                       R8 R0 K45 ["compactDensitySignal"]
      209 SETTABLEKS                       R8 R7 K48 ["Changed"]
      211 NEWTABLE                         R8 0 3
      213 DUPTABLE                         R9 K52 [{"GetCurrentName", "GetNames"}]
      214 DUPCLOSURE                       R10 K53 [PROTO_5]
      215 SETTABLEKS                       R10 R9 K46 ["GetCurrentName"]
      217 DUPCLOSURE                       R10 K54 [PROTO_6]
      218 SETTABLEKS                       R10 R9 K47 ["GetNames"]
      220 MOVE                             R10 R6
      221 MOVE                             R11 R7
      222 SETLIST                          R8 R9 3 [1]
      224 GETUPVAL                         R9 12
      225 GETTABLEKS                       R9 R9 K55 ["Util"]
      227 GETTABLEKS                       R9 R9 K56 ["createFoundationDesignBinding"]
      229 CALL                             R9 0 2
      230 SETTABLEKS                       R10 R0 K57 ["onFoundationStyleSheetChange"]
      232 GETUPVAL                         R11 13
      233 NEWTABLE                         R12 0 0
      235 MOVE                             R13 R8
      236 DUPTABLE                         R14 K59 [{"FoundationBinding"}]
      237 SETTABLEKS                       R9 R14 K58 ["FoundationBinding"]
      239 CALL                             R11 3 1
      240 GETUPVAL                         R12 14
      241 GETTABLEKS                       R13 R1 K0 ["Plugin"]
      243 LOADNIL                          R14
      244 LOADNIL                          R15
      245 MOVE                             R16 R11
      246 CALL                             R12 4 1
      247 SETTABLEKS                       R12 R0 K60 ["design"]
      249 GETIMPORT                        R12 K62 [require]
      251 GETUPVAL                         R13 15
      252 GETTABLEKS                       R13 R13 K63 ["Src"]
      254 GETTABLEKS                       R13 R13 K64 ["Resources"]
      256 GETTABLEKS                       R13 R13 K65 ["GeneralTokens"]
      258 CALL                             R12 1 1
      259 GETUPVAL                         R13 16
      260 LOADNIL                          R14
      261 LOADNIL                          R15
      262 FORGPREP                         R13
      263 GETIMPORT                        R18 K62 [require]
      265 GETUPVAL                         R19 15
      266 GETTABLEKS                       R19 R19 K63 ["Src"]
      268 GETTABLEKS                       R19 R19 K64 ["Resources"]
      270 MOVE                             R21 R17
      271 NAMECALL                         R19 R19 K66 ["FindFirstChild"]
      273 CALL                             R19 2 -1
      274 CALL                             R18 -1 1
      275 NEWTABLE                         R21 0 1
      277 MOVE                             R22 R12
      278 SETLIST                          R21 R22 1 [1]
      280 NAMECALL                         R19 R18 K67 ["SetDerives"]
      282 CALL                             R19 2 0
      283 FORGLOOP                         R13 2 ; [-21]
      285 NEWCLOSURE                       R13 P6
      286 CAPTURE                          UPVAL U15
      287 CAPTURE                          VAL R6
      288 CAPTURE                          VAL R7
      289 MOVE                             R14 R13
      290 CALL                             R14 0 0
      291 GETTABLEKS                       R15 R0 K43 ["connections"]
      293 GETTABLEKS                       R16 R7 K48 ["Changed"]
      295 MOVE                             R18 R13
      296 NAMECALL                         R16 R16 K68 ["Connect"]
      298 CALL                             R16 2 -1
      299 FASTCALL                         TABLE_INSERT ; [+2]
      300 GETIMPORT                        R14 K71 [table.insert]
      302 CALL                             R14 -1 0
      303 GETTABLEKS                       R15 R0 K43 ["connections"]
      305 GETTABLEKS                       R16 R6 K48 ["Changed"]
      307 MOVE                             R18 R13
      308 NAMECALL                         R16 R16 K68 ["Connect"]
      310 CALL                             R16 2 -1
      311 FASTCALL                         TABLE_INSERT ; [+2]
      312 GETIMPORT                        R14 K71 [table.insert]
      314 CALL                             R14 -1 0
      315 GETUPVAL                         R14 17
      316 GETUPVAL                         R15 15
      317 GETTABLEKS                       R15 R15 K63 ["Src"]
      319 GETTABLEKS                       R15 R15 K72 ["Components"]
      321 CALL                             R14 1 1
      322 CALL                             R14 0 1
      323 SETTABLEKS                       R14 R0 K73 ["theme"]
      325 GETUPVAL                         R14 18
      326 GETTABLEKS                       R14 R14 K30 ["new"]
      328 GETTABLEKS                       R15 R1 K0 ["Plugin"]
      330 NAMECALL                         R15 R15 K74 ["GetMouse"]
      332 CALL                             R15 1 -1
      333 CALL                             R14 -1 1
      334 SETTABLEKS                       R14 R0 K75 ["mouse"]
      336 GETTABLEKS                       R14 R0 K75 ["mouse"]
      338 LOADK                            R16 K76 ["Arrow"]
      339 LOADN                            R17 0
      340 NAMECALL                         R14 R14 K77 ["__pushCursor"]
      342 CALL                             R14 3 0
      343 NEWCLOSURE                       R14 P7
      344 CAPTURE                          VAL R0
      345 SETTABLEKS                       R14 R0 K78 ["expand"]
      347 NEWCLOSURE                       R14 P8
      348 CAPTURE                          VAL R0
      349 CAPTURE                          VAL R1
      350 CAPTURE                          UPVAL U19
      351 SETTABLEKS                       R14 R0 K79 ["compact"]
      353 NEWCLOSURE                       R14 P9
      354 CAPTURE                          VAL R0
      355 CAPTURE                          UPVAL U20
      356 CAPTURE                          UPVAL U4
      357 SETTABLEKS                       R14 R0 K80 ["onToolChanged"]
      359 NEWCLOSURE                       R14 P10
      360 CAPTURE                          VAL R0
      361 SETTABLEKS                       R14 R0 K81 ["onResize"]
      363 GETUPVAL                         R14 21
      364 CALL                             R14 0 1
      365 JUMPIFNOT                        R14 ; [+4]
      366 NEWCLOSURE                       R14 P11
      367 CAPTURE                          VAL R2
      368 SETTABLEKS                       R14 R0 K82 ["OnUncoveredRectsChange"]
      370 NEWCLOSURE                       R14 P12
      371 CAPTURE                          VAL R0
      372 CAPTURE                          VAL R2
      373 CAPTURE                          UPVAL U2
      374 SETTABLEKS                       R14 R0 K83 ["onToggleLabels"]
      376 NEWCLOSURE                       R14 P13
      377 CAPTURE                          VAL R0
      378 CAPTURE                          VAL R2
      379 CAPTURE                          UPVAL U3
      380 SETTABLEKS                       R14 R0 K84 ["onToggleCompactDensity"]
      382 NEWCLOSURE                       R14 P14
      383 CAPTURE                          VAL R0
      384 CAPTURE                          VAL R1
      385 CAPTURE                          VAL R2
      386 CAPTURE                          UPVAL U0
      387 SETTABLEKS                       R14 R0 K85 ["onToggleFloating"]
      389 LOADK                            R16 K86 ["Actions"]
      390 NAMECALL                         R14 R2 K17 ["GetPluginComponent"]
      392 CALL                             R14 2 1
      393 DUPTABLE                         R17 K95 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Checkable"] = True, ["Checked"], ["Text"]}]
      394 GETUPVAL                         R18 4
      395 GETTABLEKS                       R18 R18 K21 ["join"]
      397 GETTABLEKS                       R19 R0 K15 ["pluginUri"]
      399 DUPTABLE                         R20 K97 [{["Category"] = "Actions", ["ItemId"] = "ShowHideLabels"}]
      400 CALL                             R18 2 1
      401 SETTABLEKS                       R18 R17 K87 ["Uri"]
      403 GETTABLEKS                       R18 R0 K12 ["state"]
      405 GETTABLEKS                       R18 R18 K4 ["showLabels"]
      407 SETTABLEKS                       R18 R17 K93 ["Checked"]
      409 GETTABLEKS                       R18 R0 K40 ["localization"]
      411 LOADK                            R20 K98 ["Action"]
      412 LOADK                            R21 K99 ["Labels"]
      413 NAMECALL                         R18 R18 K100 ["getText"]
      415 CALL                             R18 3 1
      416 SETTABLEKS                       R18 R17 K94 ["Text"]
      418 LOADB                            R18 1
      419 NAMECALL                         R15 R14 K101 ["CreateAsync"]
      421 CALL                             R15 3 1
      422 GETTABLEKS                       R17 R0 K43 ["connections"]
      424 GETTABLEN                        R18 R15 1
      425 GETTABLEKS                       R20 R0 K83 ["onToggleLabels"]
      427 NAMECALL                         R18 R18 K68 ["Connect"]
      429 CALL                             R18 2 -1
      430 FASTCALL                         TABLE_INSERT ; [+2]
      431 GETIMPORT                        R16 K71 [table.insert]
      433 CALL                             R16 -1 0
      434 DUPTABLE                         R18 K95 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Checkable"] = True, ["Checked"], ["Text"]}]
      435 GETUPVAL                         R19 4
      436 GETTABLEKS                       R19 R19 K21 ["join"]
      438 GETTABLEKS                       R20 R0 K15 ["pluginUri"]
      440 DUPTABLE                         R21 K103 [{["Category"] = "Actions", ["ItemId"] = "CompactDensity"}]
      441 CALL                             R19 2 1
      442 SETTABLEKS                       R19 R18 K87 ["Uri"]
      444 GETTABLEKS                       R19 R0 K12 ["state"]
      446 GETTABLEKS                       R19 R19 K10 ["compactDensity"]
      448 SETTABLEKS                       R19 R18 K93 ["Checked"]
      450 GETTABLEKS                       R19 R0 K40 ["localization"]
      452 LOADK                            R21 K98 ["Action"]
      453 LOADK                            R22 K102 ["CompactDensity"]
      454 NAMECALL                         R19 R19 K100 ["getText"]
      456 CALL                             R19 3 1
      457 SETTABLEKS                       R19 R18 K94 ["Text"]
      459 LOADB                            R19 1
      460 NAMECALL                         R16 R14 K101 ["CreateAsync"]
      462 CALL                             R16 3 1
      463 GETTABLEKS                       R18 R0 K43 ["connections"]
      465 GETTABLEN                        R19 R16 1
      466 GETTABLEKS                       R21 R0 K84 ["onToggleCompactDensity"]
      468 NAMECALL                         R19 R19 K68 ["Connect"]
      470 CALL                             R19 2 -1
      471 FASTCALL                         TABLE_INSERT ; [+2]
      472 GETIMPORT                        R17 K71 [table.insert]
      474 CALL                             R17 -1 0
      475 GETUPVAL                         R17 4
      476 GETTABLEKS                       R17 R17 K21 ["join"]
      478 GETTABLEKS                       R18 R0 K15 ["pluginUri"]
      480 DUPTABLE                         R19 K105 [{["Category"] = "Actions", ["ItemId"] = "DockUndockRibbon"}]
      481 CALL                             R17 2 1
      482 DUPTABLE                         R20 K95 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Checkable"] = True, ["Checked"], ["Text"]}]
      483 SETTABLEKS                       R17 R20 K87 ["Uri"]
      485 GETTABLEKS                       R21 R0 K12 ["state"]
      487 GETTABLEKS                       R21 R21 K9 ["showFloating"]
      489 SETTABLEKS                       R21 R20 K93 ["Checked"]
      491 GETTABLEKS                       R21 R0 K40 ["localization"]
      493 LOADK                            R23 K98 ["Action"]
      494 LOADK                            R24 K106 ["CollapseToolbar"]
      495 NAMECALL                         R21 R21 K100 ["getText"]
      497 CALL                             R21 3 1
      498 SETTABLEKS                       R21 R20 K94 ["Text"]
      500 LOADB                            R21 1
      501 NAMECALL                         R18 R14 K101 ["CreateAsync"]
      503 CALL                             R18 3 1
      504 GETTABLEKS                       R20 R0 K43 ["connections"]
      506 GETTABLEN                        R21 R18 1
      507 GETTABLEKS                       R23 R0 K85 ["onToggleFloating"]
      509 NAMECALL                         R21 R21 K68 ["Connect"]
      511 CALL                             R21 2 -1
      512 FASTCALL                         TABLE_INSERT ; [+2]
      513 GETIMPORT                        R19 K71 [table.insert]
      515 CALL                             R19 -1 0
      516 NEWCLOSURE                       R19 P15
      517 CAPTURE                          VAL R14
      518 CAPTURE                          VAL R17
      519 SETTABLEKS                       R19 R0 K107 ["toggleFloating"]
      521 NEWTABLE                         R21 0 2
      523 GETUPVAL                         R22 4
      524 GETTABLEKS                       R22 R22 K108 ["fromAction"]
      526 LOADK                            R23 K109 ["BuilderTools"]
      527 LOADK                            R24 K110 ["SetMoveIncrement"]
      528 CALL                             R22 2 1
      529 GETUPVAL                         R23 4
      530 GETTABLEKS                       R23 R23 K108 ["fromAction"]
      532 LOADK                            R24 K109 ["BuilderTools"]
      533 LOADK                            R25 K111 ["SetRotateIncrement"]
      534 CALL                             R23 2 -1
      535 SETLIST                          R21 R22 -1 [1]
      537 NAMECALL                         R19 R14 K112 ["MultiBindToActivatedAsync"]
      539 CALL                             R19 2 1
      540 LENGTH                           R22 R19
      541 JUMPIFEQKN                       R22 K113 [2] ; [+2]
      543 LOADB                            R21 0 +1
      544 LOADB                            R21 1
      545 LOADK                            R23 K114 ["Expected 2 signals for spinbox focus actions, got %* signals instead"]
      546 LENGTH                           R25 R19
      547 NAMECALL                         R23 R23 K115 ["format"]
      549 CALL                             R23 2 1
      550 MOVE                             R22 R23
      551 FASTCALL2                        ASSERT R21 R22 ; [+3]
      553 GETIMPORT                        R20 K117 [assert]
      555 CALL                             R20 2 0
      556 GETTABLEN                        R20 R19 1
      557 GETTABLEN                        R21 R19 2
      558 GETTABLEKS                       R23 R0 K43 ["connections"]
      560 NEWCLOSURE                       R26 P16
      561 CAPTURE                          VAL R0
      562 CAPTURE                          UPVAL U4
      563 NAMECALL                         R24 R20 K68 ["Connect"]
      565 CALL                             R24 2 -1
      566 FASTCALL                         TABLE_INSERT ; [+2]
      567 GETIMPORT                        R22 K71 [table.insert]
      569 CALL                             R22 -1 0
      570 GETTABLEKS                       R23 R0 K43 ["connections"]
      572 NEWCLOSURE                       R26 P17
      573 CAPTURE                          VAL R0
      574 CAPTURE                          UPVAL U4
      575 NAMECALL                         R24 R21 K68 ["Connect"]
      577 CALL                             R24 2 -1
      578 FASTCALL                         TABLE_INSERT ; [+2]
      579 GETIMPORT                        R22 K71 [table.insert]
      581 CALL                             R22 -1 0
      582 LOADNIL                          R22
      583 SETTABLEKS                       R22 R0 K118 ["toggleTask"]
      585 NEWCLOSURE                       R22 P18
      586 CAPTURE                          VAL R0
      587 CAPTURE                          VAL R1
      588 SETTABLEKS                       R22 R0 K119 ["onDataModelSessionStarted"]
      590 GETTABLEKS                       R23 R0 K43 ["connections"]
      592 GETTABLEKS                       R24 R1 K120 ["Mdi"]
      594 GETTABLEKS                       R24 R24 K121 ["DataModelSessionStarted"]
      596 GETTABLEKS                       R26 R0 K119 ["onDataModelSessionStarted"]
      598 NAMECALL                         R24 R24 K68 ["Connect"]
      600 CALL                             R24 2 -1
      601 FASTCALL                         TABLE_INSERT ; [+2]
      602 GETIMPORT                        R22 K71 [table.insert]
      604 CALL                             R22 -1 0
      605 GETTABLEKS                       R22 R0 K119 ["onDataModelSessionStarted"]
      607 GETTABLEKS                       R23 R1 K120 ["Mdi"]
      609 GETTABLEKS                       R23 R23 K122 ["FocusedDataModelSession"]
      611 CALL                             R22 1 0
      612 NEWCLOSURE                       R22 P19
      613 CAPTURE                          VAL R0
      614 CAPTURE                          UPVAL U22
      615 CAPTURE                          UPVAL U23
      616 SETTABLEKS                       R22 R0 K123 ["openFloating"]
      618 GETUPVAL                         R22 22
      619 CALL                             R22 0 1
      620 JUMPIFNOT                        R22 ; [+4]
      621 NEWCLOSURE                       R22 P20
      622 CAPTURE                          VAL R0
      623 SETTABLEKS                       R22 R0 K124 ["cancelOpenFloating"]
      625 LOADK                            R24 K125 ["Settings"]
      626 NAMECALL                         R22 R2 K17 ["GetPluginComponent"]
      628 CALL                             R22 2 1
      629 GETUPVAL                         R23 24
      630 GETTABLEKS                       R23 R23 K30 ["new"]
      632 MOVE                             R24 R14
      633 MOVE                             R25 R22
      634 CALL                             R23 2 1
      635 SETTABLEKS                       R23 R0 K126 ["controlSignalStore"]
      637 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_31:
        0 DUPTABLE                         R1 K1 [{"customTools"}]
        1 GETUPVAL                         R2 0
        2 NEWTABLE                         R3 0 0
        4 GETTABLEKS                       R4 R0 K0 ["customTools"]
        6 GETUPVAL                         R5 1
        7 CALL                             R2 3 1
        8 SETTABLEKS                       R2 R1 K0 ["customTools"]
       10 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["connections"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["Tools"]
        6 GETTABLEKS                       R5 R0 K2 ["Uri"]
        8 NAMECALL                         R3 R3 K3 ["BindAsync"]
       10 CALL                             R3 2 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["onToolChanged"]
       14 NAMECALL                         R3 R3 K5 ["Connect"]
       16 CALL                             R3 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R1 K8 [table.insert]
       20 CALL                             R1 -1 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K1 ["Tools"]
       24 NEWTABLE                         R3 0 1
       26 GETTABLEKS                       R4 R0 K2 ["Uri"]
       28 SETLIST                          R3 R4 1 [1]
       30 NAMECALL                         R1 R1 K9 ["GetAsync"]
       32 CALL                             R1 2 1
       33 GETUPVAL                         R2 0
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R2 R2 K10 ["setState"]
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Tools"]
        3 NAMECALL                         R0 R0 K1 ["ListAsync"]
        5 CALL                             R0 1 1
        6 MOVE                             R1 R0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K2 ["connections"]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K0 ["Tools"]
       16 MOVE                             R10 R5
       17 NAMECALL                         R8 R8 K3 ["BindAsync"]
       19 CALL                             R8 2 1
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K4 ["onToolChanged"]
       23 NAMECALL                         R8 R8 K5 ["Connect"]
       25 CALL                             R8 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R6 K8 [table.insert]
       29 CALL                             R6 -1 0
       30 FORGLOOP                         R1 2 ; [-21]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K0 ["Tools"]
       35 MOVE                             R3 R0
       36 NAMECALL                         R1 R1 K9 ["GetAsync"]
       38 CALL                             R1 2 1
       39 GETUPVAL                         R2 0
       40 DUPTABLE                         R4 K11 [{"customTools"}]
       41 SETTABLEKS                       R1 R4 K10 ["customTools"]
       43 NAMECALL                         R2 R2 K12 ["setState"]
       45 CALL                             R2 2 0
       46 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 LOADK                            R5 K2 ["PlaceManager"]
        5 NAMECALL                         R3 R2 K3 ["GetPluginComponent"]
        7 CALL                             R3 2 1
        8 GETTABLEKS                       R5 R0 K4 ["connections"]
       10 GETTABLEKS                       R6 R3 K5 ["PlaceDocPanelShown"]
       12 GETTABLEKS                       R8 R0 K6 ["expand"]
       14 NAMECALL                         R6 R6 K7 ["Connect"]
       16 CALL                             R6 2 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R4 K10 [table.insert]
       20 CALL                             R4 -1 0
       21 GETTABLEKS                       R5 R0 K4 ["connections"]
       23 GETTABLEKS                       R6 R3 K11 ["PlaceDocPanelClosed"]
       25 GETTABLEKS                       R8 R0 K12 ["compact"]
       27 NAMECALL                         R6 R6 K7 ["Connect"]
       29 CALL                             R6 2 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R4 K10 [table.insert]
       33 CALL                             R4 -1 0
       34 GETIMPORT                        R4 K14 [pcall]
       36 NEWCLOSURE                       R5 P0
       37 CAPTURE                          VAL R3
       38 CALL                             R4 1 2
       39 JUMPIFNOT                        R4 ; [+4]
       40 JUMPIFNOT                        R5 ; [+3]
       41 GETTABLEKS                       R6 R0 K6 ["expand"]
       43 CALL                             R6 0 0
       44 GETTABLEKS                       R7 R0 K4 ["connections"]
       46 GETTABLEKS                       R8 R0 K15 ["Tools"]
       48 GETTABLEKS                       R8 R8 K16 ["Added"]
       50 NEWCLOSURE                       R10 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U0
       53 NAMECALL                         R8 R8 K7 ["Connect"]
       55 CALL                             R8 2 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R6 K10 [table.insert]
       59 CALL                             R6 -1 0
       60 GETTABLEKS                       R6 R0 K17 ["Widgets"]
       62 NEWTABLE                         R8 0 1
       64 DUPTABLE                         R9 K21 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
       65 GETTABLEKS                       R10 R0 K22 ["pluginUri"]
       67 SETTABLEKS                       R10 R9 K18 ["Uri"]
       69 GETTABLEKS                       R10 R0 K0 ["props"]
       71 GETTABLEKS                       R10 R10 K19 ["Widget"]
       73 SETTABLEKS                       R10 R9 K19 ["Widget"]
       75 GETTABLEKS                       R10 R0 K0 ["props"]
       77 GETTABLEKS                       R10 R10 K19 ["Widget"]
       79 SETTABLEKS                       R10 R9 K20 ["DEPRECATED_PluginGui"]
       81 SETLIST                          R8 R9 1 [1]
       83 NAMECALL                         R6 R6 K23 ["RegisterAsync"]
       85 CALL                             R6 2 0
       86 GETTABLEKS                       R6 R0 K24 ["Panels"]
       88 GETTABLEKS                       R8 R0 K25 ["floatingUri"]
       90 DUPTABLE                         R9 K32 [{["TargetWidgetUri"], ["TargetAnchorPoint"], ["SubjectAnchorPoint"], ["Offset"], ["AllowScreenOverflow"] = True}]
       91 GETTABLEKS                       R10 R0 K33 ["widgetUri"]
       93 SETTABLEKS                       R10 R9 K26 ["TargetWidgetUri"]
       95 GETIMPORT                        R10 K36 [Vector2.new]
       97 LOADN                            R11 0
       98 LOADN                            R12 1
       99 CALL                             R10 2 1
      100 SETTABLEKS                       R10 R9 K27 ["TargetAnchorPoint"]
      102 GETIMPORT                        R10 K36 [Vector2.new]
      104 LOADN                            R11 0
      105 LOADN                            R12 0
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K28 ["SubjectAnchorPoint"]
      109 GETIMPORT                        R10 K36 [Vector2.new]
      111 LOADN                            R11 0
      112 LOADN                            R12 0
      113 CALL                             R10 2 1
      114 SETTABLEKS                       R10 R9 K29 ["Offset"]
      116 NAMECALL                         R6 R6 K37 ["SetAttachmentAsync"]
      118 CALL                             R6 3 0
      119 GETIMPORT                        R6 K40 [task.defer]
      121 NEWCLOSURE                       R7 P2
      122 CAPTURE                          VAL R0
      123 CALL                             R6 1 0
      124 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R3 K1 ["showFloating"]
        4 GETTABLEKS                       R4 R2 K1 ["showFloating"]
        6 JUMPIFNOTEQ                      R3 R4 ; [+25]
        8 GETTABLEKS                       R3 R0 K0 ["state"]
       10 GETTABLEKS                       R3 R3 K2 ["showLabels"]
       12 GETTABLEKS                       R4 R2 K2 ["showLabels"]
       14 JUMPIFNOTEQ                      R3 R4 ; [+17]
       16 GETTABLEKS                       R3 R0 K0 ["state"]
       18 GETTABLEKS                       R3 R3 K3 ["expanded"]
       20 GETTABLEKS                       R4 R2 K3 ["expanded"]
       22 JUMPIFNOTEQ                      R3 R4 ; [+9]
       24 GETTABLEKS                       R3 R0 K0 ["state"]
       26 GETTABLEKS                       R3 R3 K4 ["compactDensity"]
       28 GETTABLEKS                       R4 R2 K4 ["compactDensity"]
       30 JUMPIFEQ                         R3 R4 ; [+22]
       32 GETTABLEKS                       R3 R0 K5 ["resizer"]
       34 GETTABLEKS                       R5 R0 K0 ["state"]
       36 GETTABLEKS                       R5 R5 K3 ["expanded"]
       38 GETTABLEKS                       R6 R0 K0 ["state"]
       40 GETTABLEKS                       R6 R6 K1 ["showFloating"]
       42 GETTABLEKS                       R7 R0 K0 ["state"]
       44 GETTABLEKS                       R7 R7 K2 ["showLabels"]
       46 GETTABLEKS                       R8 R0 K0 ["state"]
       48 GETTABLEKS                       R8 R8 K4 ["compactDensity"]
       50 NAMECALL                         R3 R3 K6 ["update"]
       52 CALL                             R3 5 0
       53 GETTABLEKS                       R3 R0 K0 ["state"]
       55 GETTABLEKS                       R3 R3 K1 ["showFloating"]
       57 JUMPIF                           R3 ; [+7]
       58 GETTABLEKS                       R3 R0 K7 ["props"]
       60 GETTABLEKS                       R3 R3 K8 ["Floating"]
       62 LOADB                            R4 0
       63 SETTABLEKS                       R4 R3 K9 ["Enabled"]
       65 GETTABLEKS                       R3 R0 K0 ["state"]
       67 GETTABLEKS                       R3 R3 K2 ["showLabels"]
       69 GETTABLEKS                       R4 R2 K2 ["showLabels"]
       71 JUMPIFEQ                         R3 R4 ; [+6]
       73 GETTABLEKS                       R3 R0 K10 ["labelsChangedSignal"]
       75 NAMECALL                         R3 R3 K11 ["Fire"]
       77 CALL                             R3 1 0
       78 GETTABLEKS                       R3 R0 K0 ["state"]
       80 GETTABLEKS                       R3 R3 K4 ["compactDensity"]
       82 GETTABLEKS                       R4 R2 K4 ["compactDensity"]
       84 JUMPIFEQ                         R3 R4 ; [+6]
       86 GETTABLEKS                       R3 R0 K12 ["compactDensitySignal"]
       88 NAMECALL                         R3 R3 K11 ["Fire"]
       90 CALL                             R3 1 0
       91 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["connections"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 NAMECALL                         R6 R5 K1 ["Disconnect"]
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R0 K0 ["connections"]
       14 GETTABLEKS                       R1 R0 K2 ["hider"]
       16 NAMECALL                         R1 R1 K3 ["stop"]
       18 CALL                             R1 1 0
       19 GETTABLEKS                       R1 R0 K4 ["controlSignalStore"]
       21 NAMECALL                         R1 R1 K5 ["destroy"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 DUPTABLE                         R4 K6 [{"Surface", "AddTools", "ManageTabs"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K7 ["createElement"]
       10 GETUPVAL                         R6 1
       11 DUPTABLE                         R7 K23 [{"CustomTools", "Design", "Expanded", "Floating", "FloatingDesign", "OnResize", "OnUncoveredRectsChange", "IsSystemMenuInWindow", "OpenFloating", "CancelOpenFloating", "ToggleFloating", "ShowLabels", "ShowFloating", "Plugin", "PluginUri", "Scale"}]
       12 GETTABLEKS                       R8 R2 K24 ["customTools"]
       14 SETTABLEKS                       R8 R7 K8 ["CustomTools"]
       16 GETTABLEKS                       R8 R0 K25 ["design"]
       18 SETTABLEKS                       R8 R7 K9 ["Design"]
       20 GETTABLEKS                       R8 R2 K26 ["expanded"]
       22 SETTABLEKS                       R8 R7 K10 ["Expanded"]
       24 GETTABLEKS                       R8 R1 K11 ["Floating"]
       26 SETTABLEKS                       R8 R7 K11 ["Floating"]
       28 GETTABLEKS                       R8 R0 K27 ["floatingDesign"]
       30 SETTABLEKS                       R8 R7 K12 ["FloatingDesign"]
       32 GETTABLEKS                       R8 R0 K28 ["onResize"]
       34 SETTABLEKS                       R8 R7 K13 ["OnResize"]
       36 GETTABLEKS                       R8 R0 K14 ["OnUncoveredRectsChange"]
       38 SETTABLEKS                       R8 R7 K14 ["OnUncoveredRectsChange"]
       40 GETUPVAL                         R9 2
       41 CALL                             R9 0 1
       42 JUMPIFNOT                        R9 ; [+7]
       43 GETTABLEKS                       R9 R1 K29 ["SystemMenuWidget"]
       45 JUMPIFNOTEQKNIL                  R9 ; [+2]
       47 LOADB                            R8 0 +1
       48 LOADB                            R8 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R8
       51 SETTABLEKS                       R8 R7 K15 ["IsSystemMenuInWindow"]
       53 GETTABLEKS                       R8 R0 K30 ["openFloating"]
       55 SETTABLEKS                       R8 R7 K16 ["OpenFloating"]
       57 GETUPVAL                         R9 3
       58 CALL                             R9 0 1
       59 JUMPIFNOT                        R9 ; [+3]
       60 GETTABLEKS                       R8 R0 K31 ["cancelOpenFloating"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R8
       64 SETTABLEKS                       R8 R7 K17 ["CancelOpenFloating"]
       66 GETTABLEKS                       R8 R0 K32 ["toggleFloating"]
       68 SETTABLEKS                       R8 R7 K18 ["ToggleFloating"]
       70 GETTABLEKS                       R8 R2 K33 ["showLabels"]
       72 SETTABLEKS                       R8 R7 K19 ["ShowLabels"]
       74 GETTABLEKS                       R8 R2 K34 ["showFloating"]
       76 SETTABLEKS                       R8 R7 K20 ["ShowFloating"]
       78 SETTABLEKS                       R3 R7 K2 ["Plugin"]
       80 GETTABLEKS                       R8 R0 K35 ["pluginUri"]
       82 SETTABLEKS                       R8 R7 K21 ["PluginUri"]
       84 GETTABLEKS                       R8 R2 K36 ["scale"]
       86 SETTABLEKS                       R8 R7 K22 ["Scale"]
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R4 K3 ["Surface"]
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R5 R5 K7 ["createElement"]
       94 GETUPVAL                         R6 4
       95 DUPTABLE                         R7 K38 [{"ActiveTabIdentifier", "CustomTools"}]
       96 GETTABLEKS                       R9 R2 K39 ["activeTab"]
       98 JUMPIFNOT                        R9 ; [+5]
       99 GETTABLEKS                       R8 R2 K39 ["activeTab"]
      101 GETTABLEKS                       R8 R8 K40 ["Identifier"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R8
      105 SETTABLEKS                       R8 R7 K37 ["ActiveTabIdentifier"]
      107 GETTABLEKS                       R8 R2 K24 ["customTools"]
      109 SETTABLEKS                       R8 R7 K8 ["CustomTools"]
      111 CALL                             R5 2 1
      112 SETTABLEKS                       R5 R4 K4 ["AddTools"]
      114 GETUPVAL                         R5 0
      115 GETTABLEKS                       R5 R5 K7 ["createElement"]
      117 GETUPVAL                         R6 5
      118 CALL                             R5 1 1
      119 SETTABLEKS                       R5 R4 K5 ["ManageTabs"]
      121 GETUPVAL                         R5 6
      122 GETTABLEKS                       R5 R5 K41 ["provide"]
      124 NEWTABLE                         R6 0 7
      126 GETUPVAL                         R7 7
      127 GETTABLEKS                       R7 R7 K42 ["new"]
      129 MOVE                             R8 R3
      130 CALL                             R7 1 1
      131 GETTABLEKS                       R8 R0 K43 ["mouse"]
      133 GETUPVAL                         R9 8
      134 GETTABLEKS                       R9 R9 K42 ["new"]
      136 GETTABLEKS                       R10 R1 K44 ["Widget"]
      138 CALL                             R9 1 1
      139 GETUPVAL                         R10 9
      140 GETTABLEKS                       R10 R10 K42 ["new"]
      142 GETTABLEKS                       R11 R0 K25 ["design"]
      144 CALL                             R10 1 1
      145 GETTABLEKS                       R11 R0 K45 ["theme"]
      147 GETTABLEKS                       R12 R0 K46 ["localization"]
      149 GETTABLEKS                       R13 R0 K47 ["analytics"]
      151 SETLIST                          R6 R7 7 [1]
      153 DUPTABLE                         R7 K49 [{"ContextStack"}]
      154 GETUPVAL                         R8 0
      155 GETTABLEKS                       R8 R8 K7 ["createElement"]
      157 GETUPVAL                         R9 10
      158 DUPTABLE                         R10 K51 [{"providers"}]
      159 NEWTABLE                         R11 0 5
      161 GETUPVAL                         R12 0
      162 GETTABLEKS                       R12 R12 K7 ["createElement"]
      164 GETUPVAL                         R13 11
      165 DUPTABLE                         R14 K53 [{"onStyleSheetChange"}]
      166 GETTABLEKS                       R15 R0 K54 ["onFoundationStyleSheetChange"]
      168 SETTABLEKS                       R15 R14 K52 ["onStyleSheetChange"]
      170 CALL                             R12 2 1
      171 GETUPVAL                         R13 0
      172 GETTABLEKS                       R13 R13 K7 ["createElement"]
      174 GETUPVAL                         R14 12
      175 GETTABLEKS                       R14 R14 K55 ["Provider"]
      177 DUPTABLE                         R15 K57 [{"value"}]
      178 GETTABLEKS                       R16 R0 K58 ["controlSignalStore"]
      180 SETTABLEKS                       R16 R15 K56 ["value"]
      182 CALL                             R13 2 1
      183 GETUPVAL                         R14 0
      184 GETTABLEKS                       R14 R14 K7 ["createElement"]
      186 GETUPVAL                         R15 13
      187 DUPTABLE                         R16 K59 [{"CustomTools"}]
      188 GETTABLEKS                       R17 R2 K24 ["customTools"]
      190 SETTABLEKS                       R17 R16 K8 ["CustomTools"]
      192 CALL                             R14 2 1
      193 GETUPVAL                         R15 0
      194 GETTABLEKS                       R15 R15 K7 ["createElement"]
      196 GETUPVAL                         R16 14
      197 GETTABLEKS                       R16 R16 K55 ["Provider"]
      199 DUPTABLE                         R17 K57 [{"value"}]
      200 DUPTABLE                         R18 K61 [{"mode"}]
      201 GETTABLEKS                       R20 R2 K62 ["compactDensity"]
      203 JUMPIFNOT                        R20 ; [+2]
      204 LOADK                            R19 K63 ["DensityCompact"]
      205 JUMP                             ; [+1]
      206 LOADK                            R19 K64 ["DensityDefault"]
      207 SETTABLEKS                       R19 R18 K60 ["mode"]
      209 SETTABLEKS                       R18 R17 K56 ["value"]
      211 CALL                             R15 2 1
      212 GETUPVAL                         R16 0
      213 GETTABLEKS                       R16 R16 K7 ["createElement"]
      215 GETUPVAL                         R17 15
      216 DUPTABLE                         R18 K65 [{"Plugin"}]
      217 SETTABLEKS                       R3 R18 K2 ["Plugin"]
      219 CALL                             R16 2 -1
      220 SETLIST                          R11 R12 -1 [1]
      222 SETTABLEKS                       R11 R10 K50 ["providers"]
      224 MOVE                             R11 R4
      225 CALL                             R8 3 1
      226 SETTABLEKS                       R8 R7 K48 ["ContextStack"]
      228 CALL                             R5 2 -1
      229 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["IXPService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["SharedFlags"]
       26 GETTABLEKS                       R4 R4 K14 ["getFFlagEnableRibbonDefaultSettingsIXP"]
       28 CALL                             R3 1 1
       29 CALL                             R3 0 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["SharedFlags"]
       36 GETTABLEKS                       R5 R5 K15 ["getFFlagEnableRibbonDefaultSettingsIXPRealTreatment"]
       38 CALL                             R4 1 1
       39 CALL                             R4 0 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K12 ["Src"]
       44 GETTABLEKS                       R6 R6 K13 ["SharedFlags"]
       46 GETTABLEKS                       R6 R6 K16 ["getFIntRibbonSettingsVersion"]
       48 CALL                             R5 1 1
       49 CALL                             R5 0 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Packages"]
       54 GETTABLEKS                       R7 R7 K17 ["StudioFoundation"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R6 K18 ["Components"]
       59 GETTABLEKS                       R7 R7 K19 ["FoundationProviderAdapter"]
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K12 ["Src"]
       65 GETTABLEKS                       R9 R9 K20 ["Util"]
       67 GETTABLEKS                       R9 R9 K21 ["AnalyticsHandlers"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K6 ["Packages"]
       74 GETTABLEKS                       R10 R10 K22 ["ReactUtils"]
       76 CALL                             R9 1 1
       77 GETTABLEKS                       R10 R9 K23 ["ContextStack"]
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K6 ["Packages"]
       83 GETTABLEKS                       R12 R12 K24 ["Framework"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R11 K25 ["Styling"]
       88 GETTABLEKS                       R13 R11 K26 ["Style"]
       90 GETTABLEKS                       R14 R13 K27 ["makeTheme"]
       92 GETIMPORT                        R15 K5 [require]
       94 GETTABLEKS                       R16 R0 K12 ["Src"]
       96 GETTABLEKS                       R16 R16 K28 ["Types"]
       98 CALL                             R15 1 1
       99 GETTABLEKS                       R16 R11 K29 ["ContextServices"]
      101 GETTABLEKS                       R17 R12 K30 ["registerPluginStyles"]
      103 GETTABLEKS                       R18 R16 K31 ["Plugin"]
      105 GETTABLEKS                       R19 R16 K32 ["Focus"]
      107 GETTABLEKS                       R20 R16 K33 ["Mouse"]
      109 GETIMPORT                        R21 K5 [require]
      111 GETTABLEKS                       R22 R0 K12 ["Src"]
      113 GETTABLEKS                       R22 R22 K18 ["Components"]
      115 GETTABLEKS                       R22 R22 K34 ["RibbonDefinitionProvider"]
      117 CALL                             R21 1 1
      118 GETIMPORT                        R22 K5 [require]
      120 GETTABLEKS                       R23 R0 K12 ["Src"]
      122 GETTABLEKS                       R23 R23 K18 ["Components"]
      124 GETTABLEKS                       R23 R23 K35 ["TabLocationProvider"]
      126 CALL                             R22 1 1
      127 GETIMPORT                        R23 K5 [require]
      129 GETTABLEKS                       R24 R0 K12 ["Src"]
      131 GETTABLEKS                       R24 R24 K36 ["Contexts"]
      133 GETTABLEKS                       R24 R24 K37 ["Density"]
      135 CALL                             R23 1 1
      136 GETIMPORT                        R24 K5 [require]
      138 GETTABLEKS                       R25 R0 K12 ["Src"]
      140 GETTABLEKS                       R25 R25 K20 ["Util"]
      142 GETTABLEKS                       R25 R25 K38 ["ControlSignalStore"]
      144 CALL                             R24 1 1
      145 GETIMPORT                        R25 K5 [require]
      147 GETTABLEKS                       R26 R0 K12 ["Src"]
      149 GETTABLEKS                       R26 R26 K36 ["Contexts"]
      151 GETTABLEKS                       R26 R26 K39 ["ControlSignalStoreContext"]
      153 CALL                             R25 1 1
      154 GETIMPORT                        R26 K5 [require]
      156 GETTABLEKS                       R27 R0 K12 ["Src"]
      158 GETTABLEKS                       R27 R27 K18 ["Components"]
      160 GETTABLEKS                       R27 R27 K40 ["AddTools"]
      162 CALL                             R26 1 1
      163 GETIMPORT                        R27 K5 [require]
      165 GETTABLEKS                       R28 R0 K12 ["Src"]
      167 GETTABLEKS                       R28 R28 K18 ["Components"]
      169 GETTABLEKS                       R28 R28 K41 ["ManageTabs"]
      171 CALL                             R27 1 1
      172 GETTABLEKS                       R28 R0 K12 ["Src"]
      174 GETTABLEKS                       R28 R28 K42 ["Resources"]
      176 GETTABLEKS                       R28 R28 K43 ["Localization"]
      178 GETTABLEKS                       R28 R28 K44 ["SourceStrings"]
      180 GETTABLEKS                       R29 R0 K12 ["Src"]
      182 GETTABLEKS                       R29 R29 K42 ["Resources"]
      184 GETTABLEKS                       R29 R29 K43 ["Localization"]
      186 GETTABLEKS                       R29 R29 K45 ["LocalizedStrings"]
      188 GETTABLEKS                       R30 R16 K46 ["Design"]
      190 GETTABLEKS                       R31 R6 K20 ["Util"]
      192 GETTABLEKS                       R31 R31 K47 ["StudioUri"]
      194 GETTABLEKS                       R32 R11 K20 ["Util"]
      196 GETTABLEKS                       R32 R32 K48 ["Signal"]
      198 GETIMPORT                        R33 K5 [require]
      200 GETTABLEKS                       R34 R0 K12 ["Src"]
      202 GETTABLEKS                       R34 R34 K20 ["Util"]
      204 GETTABLEKS                       R34 R34 K49 ["FloatingRibbonHider"]
      206 CALL                             R33 1 1
      207 GETIMPORT                        R34 K5 [require]
      209 GETTABLEKS                       R35 R0 K12 ["Src"]
      211 GETTABLEKS                       R35 R35 K20 ["Util"]
      213 GETTABLEKS                       R35 R35 K50 ["RibbonResizer"]
      215 CALL                             R34 1 1
      216 GETIMPORT                        R35 K5 [require]
      218 GETTABLEKS                       R36 R0 K6 ["Packages"]
      220 GETTABLEKS                       R36 R36 K51 ["Dash"]
      222 CALL                             R35 1 1
      223 GETTABLEKS                       R36 R35 K52 ["append"]
      225 GETTABLEKS                       R37 R35 K53 ["map"]
      227 GETIMPORT                        R38 K5 [require]
      229 GETTABLEKS                       R39 R0 K12 ["Src"]
      231 GETTABLEKS                       R39 R39 K18 ["Components"]
      233 GETTABLEKS                       R39 R39 K54 ["MainView"]
      235 CALL                             R38 1 1
      236 GETIMPORT                        R39 K5 [require]
      238 GETTABLEKS                       R40 R0 K12 ["Src"]
      240 GETTABLEKS                       R40 R40 K55 ["Hooks"]
      242 GETTABLEKS                       R40 R40 K56 ["TooltipSettings"]
      244 CALL                             R39 1 1
      245 GETIMPORT                        R40 K9 [game]
      247 LOADK                            R42 K57 ["RibbonFloatingShowDelayMillis"]
      248 LOADN                            R43 300
      249 NAMECALL                         R40 R40 K58 ["DefineFastInt"]
      251 CALL                             R40 3 1
      252 GETIMPORT                        R41 K5 [require]
      254 GETTABLEKS                       R42 R0 K12 ["Src"]
      256 GETTABLEKS                       R42 R42 K13 ["SharedFlags"]
      258 GETTABLEKS                       R42 R42 K59 ["getFFlagRibbonCancelShowFloatingTask"]
      260 CALL                             R41 1 1
      261 GETIMPORT                        R42 K5 [require]
      263 GETTABLEKS                       R43 R0 K12 ["Src"]
      265 GETTABLEKS                       R43 R43 K13 ["SharedFlags"]
      267 GETTABLEKS                       R43 R43 K60 ["getFeatureStudioCustomWindowChrome"]
      269 CALL                             R42 1 1
      270 GETTABLEKS                       R43 R1 K61 ["PureComponent"]
      272 LOADK                            R45 K62 ["MainPlugin"]
      273 NAMECALL                         R43 R43 K63 ["extend"]
      275 CALL                             R43 2 1
      276 NEWTABLE                         R44 0 6
      278 LOADK                            R45 K64 ["PluginStylesDarkTheme"]
      279 LOADK                            R46 K65 ["PluginStylesLightTheme"]
      280 LOADK                            R47 K66 ["ShowLabelsTokens"]
      281 LOADK                            R48 K67 ["HideLabelsTokens"]
      282 LOADK                            R49 K68 ["DensityCompact"]
      283 LOADK                            R50 K69 ["DensityDefault"]
      284 SETLIST                          R44 R45 6 [1]
      286 LOADK                            R45 K70 ["MODERN_RIBBON"]
      287 LOADN                            R46 0
      288 JUMPIFNOTLT                      R46 R5 ; [+7]
      290 LOADK                            R46 K71 ["MODERN_RIBBON_%*"]
      291 MOVE                             R48 R5
      292 NAMECALL                         R46 R46 K72 ["format"]
      294 CALL                             R46 2 1
      295 MOVE                             R45 R46
      296 LOADK                            R47 K73 ["%*:ShowFloating"]
      297 MOVE                             R49 R45
      298 NAMECALL                         R47 R47 K72 ["format"]
      300 CALL                             R47 2 1
      301 MOVE                             R46 R47
      302 LOADK                            R48 K74 ["%*:ShowLabels"]
      303 MOVE                             R50 R45
      304 NAMECALL                         R48 R48 K72 ["format"]
      306 CALL                             R48 2 1
      307 MOVE                             R47 R48
      308 LOADK                            R49 K75 ["%*:CompactDensity"]
      309 MOVE                             R51 R45
      310 NAMECALL                         R49 R49 K72 ["format"]
      312 CALL                             R49 2 1
      313 MOVE                             R48 R49
      314 DUPCLOSURE                       R49 K76 [PROTO_0]
      315 CAPTURE                          VAL R47
      316 CAPTURE                          VAL R48
      317 CAPTURE                          VAL R2
      318 CAPTURE                          VAL R4
      319 SETGLOBAL                        R49 K77 ["getRibbonDefaultSettingsFromIXP"]
      321 DUPCLOSURE                       R49 K78 [PROTO_29]
      322 CAPTURE                          VAL R46
      323 CAPTURE                          VAL R3
      324 CAPTURE                          VAL R47
      325 CAPTURE                          VAL R48
      326 CAPTURE                          VAL R31
      327 CAPTURE                          VAL R34
      328 CAPTURE                          VAL R33
      329 CAPTURE                          VAL R16
      330 CAPTURE                          VAL R28
      331 CAPTURE                          VAL R29
      332 CAPTURE                          VAL R8
      333 CAPTURE                          VAL R32
      334 CAPTURE                          VAL R6
      335 CAPTURE                          VAL R36
      336 CAPTURE                          VAL R17
      337 CAPTURE                          VAL R0
      338 CAPTURE                          VAL R44
      339 CAPTURE                          VAL R14
      340 CAPTURE                          VAL R20
      341 CAPTURE                          VAL R39
      342 CAPTURE                          VAL R37
      343 CAPTURE                          VAL R42
      344 CAPTURE                          VAL R41
      345 CAPTURE                          VAL R40
      346 CAPTURE                          VAL R24
      347 SETTABLEKS                       R49 R43 K79 ["init"]
      349 DUPCLOSURE                       R49 K80 [PROTO_34]
      350 CAPTURE                          VAL R36
      351 SETTABLEKS                       R49 R43 K81 ["didMount"]
      353 DUPCLOSURE                       R49 K82 [PROTO_35]
      354 SETTABLEKS                       R49 R43 K83 ["didUpdate"]
      356 DUPCLOSURE                       R49 K84 [PROTO_36]
      357 SETTABLEKS                       R49 R43 K85 ["willUnmount"]
      359 DUPCLOSURE                       R49 K86 [PROTO_37]
      360 CAPTURE                          VAL R1
      361 CAPTURE                          VAL R38
      362 CAPTURE                          VAL R42
      363 CAPTURE                          VAL R41
      364 CAPTURE                          VAL R26
      365 CAPTURE                          VAL R27
      366 CAPTURE                          VAL R16
      367 CAPTURE                          VAL R18
      368 CAPTURE                          VAL R19
      369 CAPTURE                          VAL R30
      370 CAPTURE                          VAL R10
      371 CAPTURE                          VAL R7
      372 CAPTURE                          VAL R25
      373 CAPTURE                          VAL R21
      374 CAPTURE                          VAL R23
      375 CAPTURE                          VAL R22
      376 SETTABLEKS                       R49 R43 K87 ["render"]
      378 RETURN                           R43 1
