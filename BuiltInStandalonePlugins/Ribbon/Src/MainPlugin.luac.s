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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Floating"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        6 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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
      363 NEWCLOSURE                       R14 P11
      364 CAPTURE                          VAL R0
      365 CAPTURE                          VAL R2
      366 CAPTURE                          UPVAL U2
      367 SETTABLEKS                       R14 R0 K82 ["onToggleLabels"]
      369 NEWCLOSURE                       R14 P12
      370 CAPTURE                          VAL R0
      371 CAPTURE                          VAL R2
      372 CAPTURE                          UPVAL U3
      373 SETTABLEKS                       R14 R0 K83 ["onToggleCompactDensity"]
      375 NEWCLOSURE                       R14 P13
      376 CAPTURE                          VAL R0
      377 CAPTURE                          VAL R1
      378 CAPTURE                          VAL R2
      379 CAPTURE                          UPVAL U0
      380 SETTABLEKS                       R14 R0 K84 ["onToggleFloating"]
      382 LOADK                            R16 K85 ["Actions"]
      383 NAMECALL                         R14 R2 K17 ["GetPluginComponent"]
      385 CALL                             R14 2 1
      386 DUPTABLE                         R17 K94 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Checkable"] = True, ["Checked"], ["Text"]}]
      387 GETUPVAL                         R18 4
      388 GETTABLEKS                       R18 R18 K21 ["join"]
      390 GETTABLEKS                       R19 R0 K15 ["pluginUri"]
      392 DUPTABLE                         R20 K96 [{["Category"] = "Actions", ["ItemId"] = "ShowHideLabels"}]
      393 CALL                             R18 2 1
      394 SETTABLEKS                       R18 R17 K86 ["Uri"]
      396 GETTABLEKS                       R18 R0 K12 ["state"]
      398 GETTABLEKS                       R18 R18 K4 ["showLabels"]
      400 SETTABLEKS                       R18 R17 K92 ["Checked"]
      402 GETTABLEKS                       R18 R0 K40 ["localization"]
      404 LOADK                            R20 K97 ["Action"]
      405 LOADK                            R21 K98 ["Labels"]
      406 NAMECALL                         R18 R18 K99 ["getText"]
      408 CALL                             R18 3 1
      409 SETTABLEKS                       R18 R17 K93 ["Text"]
      411 LOADB                            R18 1
      412 NAMECALL                         R15 R14 K100 ["CreateAsync"]
      414 CALL                             R15 3 1
      415 GETTABLEKS                       R17 R0 K43 ["connections"]
      417 GETTABLEN                        R18 R15 1
      418 GETTABLEKS                       R20 R0 K82 ["onToggleLabels"]
      420 NAMECALL                         R18 R18 K68 ["Connect"]
      422 CALL                             R18 2 -1
      423 FASTCALL                         TABLE_INSERT ; [+2]
      424 GETIMPORT                        R16 K71 [table.insert]
      426 CALL                             R16 -1 0
      427 DUPTABLE                         R18 K94 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Checkable"] = True, ["Checked"], ["Text"]}]
      428 GETUPVAL                         R19 4
      429 GETTABLEKS                       R19 R19 K21 ["join"]
      431 GETTABLEKS                       R20 R0 K15 ["pluginUri"]
      433 DUPTABLE                         R21 K102 [{["Category"] = "Actions", ["ItemId"] = "CompactDensity"}]
      434 CALL                             R19 2 1
      435 SETTABLEKS                       R19 R18 K86 ["Uri"]
      437 GETTABLEKS                       R19 R0 K12 ["state"]
      439 GETTABLEKS                       R19 R19 K10 ["compactDensity"]
      441 SETTABLEKS                       R19 R18 K92 ["Checked"]
      443 GETTABLEKS                       R19 R0 K40 ["localization"]
      445 LOADK                            R21 K97 ["Action"]
      446 LOADK                            R22 K101 ["CompactDensity"]
      447 NAMECALL                         R19 R19 K99 ["getText"]
      449 CALL                             R19 3 1
      450 SETTABLEKS                       R19 R18 K93 ["Text"]
      452 LOADB                            R19 1
      453 NAMECALL                         R16 R14 K100 ["CreateAsync"]
      455 CALL                             R16 3 1
      456 GETTABLEKS                       R18 R0 K43 ["connections"]
      458 GETTABLEN                        R19 R16 1
      459 GETTABLEKS                       R21 R0 K83 ["onToggleCompactDensity"]
      461 NAMECALL                         R19 R19 K68 ["Connect"]
      463 CALL                             R19 2 -1
      464 FASTCALL                         TABLE_INSERT ; [+2]
      465 GETIMPORT                        R17 K71 [table.insert]
      467 CALL                             R17 -1 0
      468 GETUPVAL                         R17 4
      469 GETTABLEKS                       R17 R17 K21 ["join"]
      471 GETTABLEKS                       R18 R0 K15 ["pluginUri"]
      473 DUPTABLE                         R19 K104 [{["Category"] = "Actions", ["ItemId"] = "DockUndockRibbon"}]
      474 CALL                             R17 2 1
      475 DUPTABLE                         R20 K94 [{["Uri"], ["Enabled"] = True, ["Exists"] = True, ["Visible"] = True, ["Checkable"] = True, ["Checked"], ["Text"]}]
      476 SETTABLEKS                       R17 R20 K86 ["Uri"]
      478 GETTABLEKS                       R21 R0 K12 ["state"]
      480 GETTABLEKS                       R21 R21 K9 ["showFloating"]
      482 SETTABLEKS                       R21 R20 K92 ["Checked"]
      484 GETTABLEKS                       R21 R0 K40 ["localization"]
      486 LOADK                            R23 K97 ["Action"]
      487 LOADK                            R24 K105 ["CollapseToolbar"]
      488 NAMECALL                         R21 R21 K99 ["getText"]
      490 CALL                             R21 3 1
      491 SETTABLEKS                       R21 R20 K93 ["Text"]
      493 LOADB                            R21 1
      494 NAMECALL                         R18 R14 K100 ["CreateAsync"]
      496 CALL                             R18 3 1
      497 GETTABLEKS                       R20 R0 K43 ["connections"]
      499 GETTABLEN                        R21 R18 1
      500 GETTABLEKS                       R23 R0 K84 ["onToggleFloating"]
      502 NAMECALL                         R21 R21 K68 ["Connect"]
      504 CALL                             R21 2 -1
      505 FASTCALL                         TABLE_INSERT ; [+2]
      506 GETIMPORT                        R19 K71 [table.insert]
      508 CALL                             R19 -1 0
      509 NEWCLOSURE                       R19 P14
      510 CAPTURE                          VAL R14
      511 CAPTURE                          VAL R17
      512 SETTABLEKS                       R19 R0 K106 ["toggleFloating"]
      514 NEWTABLE                         R21 0 2
      516 GETUPVAL                         R22 4
      517 GETTABLEKS                       R22 R22 K107 ["fromAction"]
      519 LOADK                            R23 K108 ["BuilderTools"]
      520 LOADK                            R24 K109 ["SetMoveIncrement"]
      521 CALL                             R22 2 1
      522 GETUPVAL                         R23 4
      523 GETTABLEKS                       R23 R23 K107 ["fromAction"]
      525 LOADK                            R24 K108 ["BuilderTools"]
      526 LOADK                            R25 K110 ["SetRotateIncrement"]
      527 CALL                             R23 2 -1
      528 SETLIST                          R21 R22 -1 [1]
      530 NAMECALL                         R19 R14 K111 ["MultiBindToActivatedAsync"]
      532 CALL                             R19 2 1
      533 LENGTH                           R22 R19
      534 JUMPIFEQKN                       R22 K112 [2] ; [+2]
      536 LOADB                            R21 0 +1
      537 LOADB                            R21 1
      538 LOADK                            R23 K113 ["Expected 2 signals for spinbox focus actions, got %* signals instead"]
      539 LENGTH                           R25 R19
      540 NAMECALL                         R23 R23 K114 ["format"]
      542 CALL                             R23 2 1
      543 MOVE                             R22 R23
      544 FASTCALL2                        ASSERT R21 R22 ; [+3]
      546 GETIMPORT                        R20 K116 [assert]
      548 CALL                             R20 2 0
      549 GETTABLEN                        R20 R19 1
      550 GETTABLEN                        R21 R19 2
      551 GETTABLEKS                       R23 R0 K43 ["connections"]
      553 NEWCLOSURE                       R26 P15
      554 CAPTURE                          VAL R0
      555 CAPTURE                          UPVAL U4
      556 NAMECALL                         R24 R20 K68 ["Connect"]
      558 CALL                             R24 2 -1
      559 FASTCALL                         TABLE_INSERT ; [+2]
      560 GETIMPORT                        R22 K71 [table.insert]
      562 CALL                             R22 -1 0
      563 GETTABLEKS                       R23 R0 K43 ["connections"]
      565 NEWCLOSURE                       R26 P16
      566 CAPTURE                          VAL R0
      567 CAPTURE                          UPVAL U4
      568 NAMECALL                         R24 R21 K68 ["Connect"]
      570 CALL                             R24 2 -1
      571 FASTCALL                         TABLE_INSERT ; [+2]
      572 GETIMPORT                        R22 K71 [table.insert]
      574 CALL                             R22 -1 0
      575 LOADNIL                          R22
      576 SETTABLEKS                       R22 R0 K117 ["toggleTask"]
      578 NEWCLOSURE                       R22 P17
      579 CAPTURE                          VAL R0
      580 CAPTURE                          VAL R1
      581 SETTABLEKS                       R22 R0 K118 ["onDataModelSessionStarted"]
      583 GETTABLEKS                       R23 R0 K43 ["connections"]
      585 GETTABLEKS                       R24 R1 K119 ["Mdi"]
      587 GETTABLEKS                       R24 R24 K120 ["DataModelSessionStarted"]
      589 GETTABLEKS                       R26 R0 K118 ["onDataModelSessionStarted"]
      591 NAMECALL                         R24 R24 K68 ["Connect"]
      593 CALL                             R24 2 -1
      594 FASTCALL                         TABLE_INSERT ; [+2]
      595 GETIMPORT                        R22 K71 [table.insert]
      597 CALL                             R22 -1 0
      598 GETTABLEKS                       R22 R0 K118 ["onDataModelSessionStarted"]
      600 GETTABLEKS                       R23 R1 K119 ["Mdi"]
      602 GETTABLEKS                       R23 R23 K121 ["FocusedDataModelSession"]
      604 CALL                             R22 1 0
      605 NEWCLOSURE                       R22 P18
      606 CAPTURE                          VAL R0
      607 CAPTURE                          UPVAL U21
      608 CAPTURE                          UPVAL U22
      609 SETTABLEKS                       R22 R0 K122 ["openFloating"]
      611 GETUPVAL                         R22 21
      612 CALL                             R22 0 1
      613 JUMPIFNOT                        R22 ; [+4]
      614 NEWCLOSURE                       R22 P19
      615 CAPTURE                          VAL R0
      616 SETTABLEKS                       R22 R0 K123 ["cancelOpenFloating"]
      618 LOADK                            R24 K124 ["Settings"]
      619 NAMECALL                         R22 R2 K17 ["GetPluginComponent"]
      621 CALL                             R22 2 1
      622 GETUPVAL                         R23 23
      623 GETTABLEKS                       R23 R23 K30 ["new"]
      625 MOVE                             R24 R14
      626 MOVE                             R25 R22
      627 CALL                             R23 2 1
      628 SETTABLEKS                       R23 R0 K125 ["controlSignalStore"]
      630 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_29:
        0 DUPTABLE                         R1 K1 [{"customTools"}]
        1 GETUPVAL                         R2 0
        2 NEWTABLE                         R3 0 0
        4 GETTABLEKS                       R4 R0 K0 ["customTools"]
        6 GETUPVAL                         R5 1
        7 CALL                             R2 3 1
        8 SETTABLEKS                       R2 R1 K0 ["customTools"]
       10 RETURN                           R1 1

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 DUPTABLE                         R4 K6 [{"Surface", "AddTools", "ManageTabs"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K7 ["createElement"]
       10 GETUPVAL                         R6 1
       11 DUPTABLE                         R7 K21 [{"CustomTools", "Design", "Expanded", "Floating", "FloatingDesign", "OnResize", "OpenFloating", "CancelOpenFloating", "ToggleFloating", "ShowLabels", "ShowFloating", "Plugin", "PluginUri", "Scale"}]
       12 GETTABLEKS                       R8 R2 K22 ["customTools"]
       14 SETTABLEKS                       R8 R7 K8 ["CustomTools"]
       16 GETTABLEKS                       R8 R0 K23 ["design"]
       18 SETTABLEKS                       R8 R7 K9 ["Design"]
       20 GETTABLEKS                       R8 R2 K24 ["expanded"]
       22 SETTABLEKS                       R8 R7 K10 ["Expanded"]
       24 GETTABLEKS                       R8 R1 K11 ["Floating"]
       26 SETTABLEKS                       R8 R7 K11 ["Floating"]
       28 GETTABLEKS                       R8 R0 K25 ["floatingDesign"]
       30 SETTABLEKS                       R8 R7 K12 ["FloatingDesign"]
       32 GETTABLEKS                       R8 R0 K26 ["onResize"]
       34 SETTABLEKS                       R8 R7 K13 ["OnResize"]
       36 GETTABLEKS                       R8 R0 K27 ["openFloating"]
       38 SETTABLEKS                       R8 R7 K14 ["OpenFloating"]
       40 GETUPVAL                         R9 2
       41 CALL                             R9 0 1
       42 JUMPIFNOT                        R9 ; [+3]
       43 GETTABLEKS                       R8 R0 K28 ["cancelOpenFloating"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R8
       47 SETTABLEKS                       R8 R7 K15 ["CancelOpenFloating"]
       49 GETTABLEKS                       R8 R0 K29 ["toggleFloating"]
       51 SETTABLEKS                       R8 R7 K16 ["ToggleFloating"]
       53 GETTABLEKS                       R8 R2 K30 ["showLabels"]
       55 SETTABLEKS                       R8 R7 K17 ["ShowLabels"]
       57 GETTABLEKS                       R8 R2 K31 ["showFloating"]
       59 SETTABLEKS                       R8 R7 K18 ["ShowFloating"]
       61 SETTABLEKS                       R3 R7 K2 ["Plugin"]
       63 GETTABLEKS                       R8 R0 K32 ["pluginUri"]
       65 SETTABLEKS                       R8 R7 K19 ["PluginUri"]
       67 GETTABLEKS                       R8 R2 K33 ["scale"]
       69 SETTABLEKS                       R8 R7 K20 ["Scale"]
       71 CALL                             R5 2 1
       72 SETTABLEKS                       R5 R4 K3 ["Surface"]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K7 ["createElement"]
       77 GETUPVAL                         R6 3
       78 DUPTABLE                         R7 K35 [{"ActiveTabIdentifier", "CustomTools"}]
       79 GETTABLEKS                       R9 R2 K36 ["activeTab"]
       81 JUMPIFNOT                        R9 ; [+5]
       82 GETTABLEKS                       R8 R2 K36 ["activeTab"]
       84 GETTABLEKS                       R8 R8 K37 ["Identifier"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R8
       88 SETTABLEKS                       R8 R7 K34 ["ActiveTabIdentifier"]
       90 GETTABLEKS                       R8 R2 K22 ["customTools"]
       92 SETTABLEKS                       R8 R7 K8 ["CustomTools"]
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K4 ["AddTools"]
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R5 R5 K7 ["createElement"]
      100 GETUPVAL                         R6 4
      101 CALL                             R5 1 1
      102 SETTABLEKS                       R5 R4 K5 ["ManageTabs"]
      104 GETUPVAL                         R5 5
      105 GETTABLEKS                       R5 R5 K38 ["provide"]
      107 NEWTABLE                         R6 0 7
      109 GETUPVAL                         R7 6
      110 GETTABLEKS                       R7 R7 K39 ["new"]
      112 MOVE                             R8 R3
      113 CALL                             R7 1 1
      114 GETTABLEKS                       R8 R0 K40 ["mouse"]
      116 GETUPVAL                         R9 7
      117 GETTABLEKS                       R9 R9 K39 ["new"]
      119 GETTABLEKS                       R10 R1 K41 ["Widget"]
      121 CALL                             R9 1 1
      122 GETUPVAL                         R10 8
      123 GETTABLEKS                       R10 R10 K39 ["new"]
      125 GETTABLEKS                       R11 R0 K23 ["design"]
      127 CALL                             R10 1 1
      128 GETTABLEKS                       R11 R0 K42 ["theme"]
      130 GETTABLEKS                       R12 R0 K43 ["localization"]
      132 GETTABLEKS                       R13 R0 K44 ["analytics"]
      134 SETLIST                          R6 R7 7 [1]
      136 DUPTABLE                         R7 K46 [{"ContextStack"}]
      137 GETUPVAL                         R8 0
      138 GETTABLEKS                       R8 R8 K7 ["createElement"]
      140 GETUPVAL                         R9 9
      141 DUPTABLE                         R10 K48 [{"providers"}]
      142 NEWTABLE                         R11 0 5
      144 GETUPVAL                         R12 0
      145 GETTABLEKS                       R12 R12 K7 ["createElement"]
      147 GETUPVAL                         R13 10
      148 DUPTABLE                         R14 K50 [{"onStyleSheetChange"}]
      149 GETTABLEKS                       R15 R0 K51 ["onFoundationStyleSheetChange"]
      151 SETTABLEKS                       R15 R14 K49 ["onStyleSheetChange"]
      153 CALL                             R12 2 1
      154 GETUPVAL                         R13 0
      155 GETTABLEKS                       R13 R13 K7 ["createElement"]
      157 GETUPVAL                         R14 11
      158 GETTABLEKS                       R14 R14 K52 ["Provider"]
      160 DUPTABLE                         R15 K54 [{"value"}]
      161 GETTABLEKS                       R16 R0 K55 ["controlSignalStore"]
      163 SETTABLEKS                       R16 R15 K53 ["value"]
      165 CALL                             R13 2 1
      166 GETUPVAL                         R14 0
      167 GETTABLEKS                       R14 R14 K7 ["createElement"]
      169 GETUPVAL                         R15 12
      170 DUPTABLE                         R16 K56 [{"CustomTools"}]
      171 GETTABLEKS                       R17 R2 K22 ["customTools"]
      173 SETTABLEKS                       R17 R16 K8 ["CustomTools"]
      175 CALL                             R14 2 1
      176 GETUPVAL                         R15 0
      177 GETTABLEKS                       R15 R15 K7 ["createElement"]
      179 GETUPVAL                         R16 13
      180 GETTABLEKS                       R16 R16 K52 ["Provider"]
      182 DUPTABLE                         R17 K54 [{"value"}]
      183 DUPTABLE                         R18 K58 [{"mode"}]
      184 GETTABLEKS                       R20 R2 K59 ["compactDensity"]
      186 JUMPIFNOT                        R20 ; [+2]
      187 LOADK                            R19 K60 ["DensityCompact"]
      188 JUMP                             ; [+1]
      189 LOADK                            R19 K61 ["DensityDefault"]
      190 SETTABLEKS                       R19 R18 K57 ["mode"]
      192 SETTABLEKS                       R18 R17 K53 ["value"]
      194 CALL                             R15 2 1
      195 GETUPVAL                         R16 0
      196 GETTABLEKS                       R16 R16 K7 ["createElement"]
      198 GETUPVAL                         R17 14
      199 DUPTABLE                         R18 K62 [{"Plugin"}]
      200 SETTABLEKS                       R3 R18 K2 ["Plugin"]
      202 CALL                             R16 2 -1
      203 SETLIST                          R11 R12 -1 [1]
      205 SETTABLEKS                       R11 R10 K47 ["providers"]
      207 MOVE                             R11 R4
      208 CALL                             R8 3 1
      209 SETTABLEKS                       R8 R7 K45 ["ContextStack"]
      211 CALL                             R5 2 -1
      212 RETURN                           R5 -1

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
      261 GETTABLEKS                       R42 R1 K60 ["PureComponent"]
      263 LOADK                            R44 K61 ["MainPlugin"]
      264 NAMECALL                         R42 R42 K62 ["extend"]
      266 CALL                             R42 2 1
      267 NEWTABLE                         R43 0 6
      269 LOADK                            R44 K63 ["PluginStylesDarkTheme"]
      270 LOADK                            R45 K64 ["PluginStylesLightTheme"]
      271 LOADK                            R46 K65 ["ShowLabelsTokens"]
      272 LOADK                            R47 K66 ["HideLabelsTokens"]
      273 LOADK                            R48 K67 ["DensityCompact"]
      274 LOADK                            R49 K68 ["DensityDefault"]
      275 SETLIST                          R43 R44 6 [1]
      277 LOADK                            R44 K69 ["MODERN_RIBBON"]
      278 LOADN                            R45 0
      279 JUMPIFNOTLT                      R45 R5 ; [+7]
      281 LOADK                            R45 K70 ["MODERN_RIBBON_%*"]
      282 MOVE                             R47 R5
      283 NAMECALL                         R45 R45 K71 ["format"]
      285 CALL                             R45 2 1
      286 MOVE                             R44 R45
      287 LOADK                            R46 K72 ["%*:ShowFloating"]
      288 MOVE                             R48 R44
      289 NAMECALL                         R46 R46 K71 ["format"]
      291 CALL                             R46 2 1
      292 MOVE                             R45 R46
      293 LOADK                            R47 K73 ["%*:ShowLabels"]
      294 MOVE                             R49 R44
      295 NAMECALL                         R47 R47 K71 ["format"]
      297 CALL                             R47 2 1
      298 MOVE                             R46 R47
      299 LOADK                            R48 K74 ["%*:CompactDensity"]
      300 MOVE                             R50 R44
      301 NAMECALL                         R48 R48 K71 ["format"]
      303 CALL                             R48 2 1
      304 MOVE                             R47 R48
      305 DUPCLOSURE                       R48 K75 [PROTO_0]
      306 CAPTURE                          VAL R46
      307 CAPTURE                          VAL R47
      308 CAPTURE                          VAL R2
      309 CAPTURE                          VAL R4
      310 SETGLOBAL                        R48 K76 ["getRibbonDefaultSettingsFromIXP"]
      312 DUPCLOSURE                       R48 K77 [PROTO_27]
      313 CAPTURE                          VAL R45
      314 CAPTURE                          VAL R3
      315 CAPTURE                          VAL R46
      316 CAPTURE                          VAL R47
      317 CAPTURE                          VAL R31
      318 CAPTURE                          VAL R34
      319 CAPTURE                          VAL R33
      320 CAPTURE                          VAL R16
      321 CAPTURE                          VAL R28
      322 CAPTURE                          VAL R29
      323 CAPTURE                          VAL R8
      324 CAPTURE                          VAL R32
      325 CAPTURE                          VAL R6
      326 CAPTURE                          VAL R36
      327 CAPTURE                          VAL R17
      328 CAPTURE                          VAL R0
      329 CAPTURE                          VAL R43
      330 CAPTURE                          VAL R14
      331 CAPTURE                          VAL R20
      332 CAPTURE                          VAL R39
      333 CAPTURE                          VAL R37
      334 CAPTURE                          VAL R41
      335 CAPTURE                          VAL R40
      336 CAPTURE                          VAL R24
      337 SETTABLEKS                       R48 R42 K78 ["init"]
      339 DUPCLOSURE                       R48 K79 [PROTO_32]
      340 CAPTURE                          VAL R36
      341 SETTABLEKS                       R48 R42 K80 ["didMount"]
      343 DUPCLOSURE                       R48 K81 [PROTO_33]
      344 SETTABLEKS                       R48 R42 K82 ["didUpdate"]
      346 DUPCLOSURE                       R48 K83 [PROTO_34]
      347 SETTABLEKS                       R48 R42 K84 ["willUnmount"]
      349 DUPCLOSURE                       R48 K85 [PROTO_35]
      350 CAPTURE                          VAL R1
      351 CAPTURE                          VAL R38
      352 CAPTURE                          VAL R41
      353 CAPTURE                          VAL R26
      354 CAPTURE                          VAL R27
      355 CAPTURE                          VAL R16
      356 CAPTURE                          VAL R18
      357 CAPTURE                          VAL R19
      358 CAPTURE                          VAL R30
      359 CAPTURE                          VAL R10
      360 CAPTURE                          VAL R7
      361 CAPTURE                          VAL R25
      362 CAPTURE                          VAL R21
      363 CAPTURE                          VAL R23
      364 CAPTURE                          VAL R22
      365 SETTABLEKS                       R48 R42 K86 ["render"]
      367 RETURN                           R42 1
