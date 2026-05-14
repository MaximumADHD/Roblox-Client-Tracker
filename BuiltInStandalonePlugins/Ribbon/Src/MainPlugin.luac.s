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
        1 DUPTABLE                         R2 K1 [{"expanded"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["expanded"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"expanded"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["expanded"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["Floating"]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K4 ["Enabled"]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K5 ["closeTooltips"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

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
        9 DUPTABLE                         R4 K5 [{"Category", "ItemId"}]
       10 LOADK                            R5 K0 ["Widgets"]
       11 SETTABLEKS                       R5 R4 K3 ["Category"]
       13 LOADK                            R5 K6 ["Tabs/*/MoveGridSize"]
       14 SETTABLEKS                       R5 R4 K4 ["ItemId"]
       16 CALL                             R2 2 -1
       17 NAMECALL                         R0 R0 K7 ["FocusAsync"]
       19 CALL                             R0 -1 0
       20 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Widgets"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["join"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["pluginUri"]
        9 DUPTABLE                         R4 K5 [{"Category", "ItemId"}]
       10 LOADK                            R5 K0 ["Widgets"]
       11 SETTABLEKS                       R5 R4 K3 ["Category"]
       13 LOADK                            R5 K6 ["Tabs/*/RotateGridSize"]
       14 SETTABLEKS                       R5 R4 K4 ["ItemId"]
       16 CALL                             R2 2 -1
       17 NAMECALL                         R0 R0 K7 ["FocusAsync"]
       19 CALL                             R0 -1 0
       20 RETURN                           R0 0

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
       43 DUPTABLE                         R6 K10 [{"expanded", "customTools", "showFloating", "showLabels", "compactDensity"}]
       44 LOADB                            R7 0
       45 SETTABLEKS                       R7 R6 K6 ["expanded"]
       47 NEWTABLE                         R7 0 0
       49 SETTABLEKS                       R7 R6 K7 ["customTools"]
       51 SETTABLEKS                       R3 R6 K8 ["showFloating"]
       53 SETTABLEKS                       R4 R6 K4 ["showLabels"]
       55 SETTABLEKS                       R5 R6 K9 ["compactDensity"]
       57 SETTABLEKS                       R6 R0 K11 ["state"]
       59 GETUPVAL                         R6 4
       60 GETTABLEKS                       R6 R6 K12 ["wrap"]
       62 GETTABLEKS                       R7 R1 K0 ["Plugin"]
       64 NAMECALL                         R7 R7 K13 ["GetUri"]
       66 CALL                             R7 1 -1
       67 CALL                             R6 -1 1
       68 SETTABLEKS                       R6 R0 K14 ["pluginUri"]
       70 GETTABLEKS                       R6 R1 K0 ["Plugin"]
       72 LOADK                            R8 K15 ["Tools"]
       73 NAMECALL                         R6 R6 K16 ["GetPluginComponent"]
       75 CALL                             R6 2 1
       76 SETTABLEKS                       R6 R0 K15 ["Tools"]
       78 GETTABLEKS                       R6 R1 K0 ["Plugin"]
       80 LOADK                            R8 K17 ["Panels"]
       81 NAMECALL                         R6 R6 K16 ["GetPluginComponent"]
       83 CALL                             R6 2 1
       84 SETTABLEKS                       R6 R0 K17 ["Panels"]
       86 GETTABLEKS                       R6 R1 K0 ["Plugin"]
       88 LOADK                            R8 K18 ["Widgets"]
       89 NAMECALL                         R6 R6 K16 ["GetPluginComponent"]
       91 CALL                             R6 2 1
       92 SETTABLEKS                       R6 R0 K18 ["Widgets"]
       94 GETTABLEKS                       R6 R1 K0 ["Plugin"]
       96 LOADK                            R8 K19 ["InteractionTelemetry"]
       97 NAMECALL                         R6 R6 K16 ["GetPluginComponent"]
       99 CALL                             R6 2 1
      100 SETTABLEKS                       R6 R0 K19 ["InteractionTelemetry"]
      102 GETUPVAL                         R6 4
      103 GETTABLEKS                       R6 R6 K20 ["join"]
      105 GETTABLEKS                       R7 R0 K14 ["pluginUri"]
      107 DUPTABLE                         R8 K23 [{"Category", "ItemId"}]
      108 LOADK                            R9 K17 ["Panels"]
      109 SETTABLEKS                       R9 R8 K21 ["Category"]
      111 LOADK                            R9 K24 ["Floating"]
      112 SETTABLEKS                       R9 R8 K22 ["ItemId"]
      114 CALL                             R6 2 1
      115 SETTABLEKS                       R6 R0 K25 ["floatingUri"]
      117 GETUPVAL                         R6 4
      118 GETTABLEKS                       R6 R6 K20 ["join"]
      120 GETTABLEKS                       R7 R0 K14 ["pluginUri"]
      122 DUPTABLE                         R8 K23 [{"Category", "ItemId"}]
      123 LOADK                            R9 K18 ["Widgets"]
      124 SETTABLEKS                       R9 R8 K21 ["Category"]
      126 LOADK                            R9 K26 ["Ribbon"]
      127 SETTABLEKS                       R9 R8 K22 ["ItemId"]
      129 CALL                             R6 2 1
      130 SETTABLEKS                       R6 R0 K27 ["widgetUri"]
      132 GETUPVAL                         R6 5
      133 GETTABLEKS                       R6 R6 K28 ["new"]
      135 MOVE                             R7 R2
      136 CALL                             R6 1 1
      137 SETTABLEKS                       R6 R0 K29 ["resizer"]
      139 GETTABLEKS                       R6 R0 K29 ["resizer"]
      141 LOADB                            R8 0
      142 MOVE                             R9 R3
      143 MOVE                             R10 R4
      144 MOVE                             R11 R5
      145 NAMECALL                         R6 R6 K30 ["update"]
      147 CALL                             R6 5 0
      148 GETUPVAL                         R6 6
      149 GETTABLEKS                       R6 R6 K28 ["new"]
      151 MOVE                             R7 R2
      152 GETTABLEKS                       R8 R1 K24 ["Floating"]
      154 CALL                             R6 2 1
      155 SETTABLEKS                       R6 R0 K31 ["hider"]
      157 GETTABLEKS                       R6 R0 K31 ["hider"]
      159 NAMECALL                         R6 R6 K32 ["start"]
      161 CALL                             R6 1 0
      162 GETUPVAL                         R6 7
      163 GETTABLEKS                       R6 R6 K33 ["Localization"]
      165 GETTABLEKS                       R6 R6 K28 ["new"]
      167 DUPTABLE                         R7 K37 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      168 GETUPVAL                         R8 8
      169 SETTABLEKS                       R8 R7 K34 ["stringResourceTable"]
      171 GETUPVAL                         R8 9
      172 SETTABLEKS                       R8 R7 K35 ["translationResourceTable"]
      174 LOADK                            R8 K26 ["Ribbon"]
      175 SETTABLEKS                       R8 R7 K36 ["pluginName"]
      177 CALL                             R6 1 1
      178 SETTABLEKS                       R6 R0 K38 ["localization"]
      180 GETUPVAL                         R6 7
      181 GETTABLEKS                       R6 R6 K39 ["Analytics"]
      183 GETTABLEKS                       R6 R6 K28 ["new"]
      185 GETUPVAL                         R7 10
      186 CALL                             R6 1 1
      187 SETTABLEKS                       R6 R0 K40 ["analytics"]
      189 NEWTABLE                         R6 0 0
      191 SETTABLEKS                       R6 R0 K41 ["connections"]
      193 GETUPVAL                         R6 11
      194 GETTABLEKS                       R6 R6 K28 ["new"]
      196 CALL                             R6 0 1
      197 SETTABLEKS                       R6 R0 K42 ["labelsChangedSignal"]
      199 GETUPVAL                         R6 11
      200 GETTABLEKS                       R6 R6 K28 ["new"]
      202 CALL                             R6 0 1
      203 SETTABLEKS                       R6 R0 K43 ["compactDensitySignal"]
      205 DUPTABLE                         R6 K47 [{"GetCurrentName", "GetNames", "Changed"}]
      206 NEWCLOSURE                       R7 P0
      207 CAPTURE                          VAL R0
      208 SETTABLEKS                       R7 R6 K44 ["GetCurrentName"]
      210 DUPCLOSURE                       R7 K48 [PROTO_2]
      211 SETTABLEKS                       R7 R6 K45 ["GetNames"]
      213 GETTABLEKS                       R7 R0 K42 ["labelsChangedSignal"]
      215 SETTABLEKS                       R7 R6 K46 ["Changed"]
      217 DUPTABLE                         R7 K47 [{"GetCurrentName", "GetNames", "Changed"}]
      218 NEWCLOSURE                       R8 P2
      219 CAPTURE                          VAL R0
      220 SETTABLEKS                       R8 R7 K44 ["GetCurrentName"]
      222 DUPCLOSURE                       R8 K49 [PROTO_4]
      223 SETTABLEKS                       R8 R7 K45 ["GetNames"]
      225 GETTABLEKS                       R8 R0 K43 ["compactDensitySignal"]
      227 SETTABLEKS                       R8 R7 K46 ["Changed"]
      229 NEWTABLE                         R8 0 3
      231 DUPTABLE                         R9 K50 [{"GetCurrentName", "GetNames"}]
      232 DUPCLOSURE                       R10 K51 [PROTO_5]
      233 SETTABLEKS                       R10 R9 K44 ["GetCurrentName"]
      235 DUPCLOSURE                       R10 K52 [PROTO_6]
      236 SETTABLEKS                       R10 R9 K45 ["GetNames"]
      238 MOVE                             R10 R6
      239 MOVE                             R11 R7
      240 SETLIST                          R8 R9 3 [1]
      242 GETUPVAL                         R9 12
      243 GETTABLEKS                       R9 R9 K53 ["Util"]
      245 GETTABLEKS                       R9 R9 K54 ["createFoundationDesignBinding"]
      247 CALL                             R9 0 2
      248 SETTABLEKS                       R10 R0 K55 ["onFoundationStyleSheetChange"]
      250 GETUPVAL                         R11 13
      251 NEWTABLE                         R12 0 0
      253 MOVE                             R13 R8
      254 DUPTABLE                         R14 K57 [{"FoundationBinding"}]
      255 SETTABLEKS                       R9 R14 K56 ["FoundationBinding"]
      257 CALL                             R11 3 1
      258 GETUPVAL                         R12 14
      259 GETTABLEKS                       R13 R1 K0 ["Plugin"]
      261 LOADNIL                          R14
      262 LOADNIL                          R15
      263 MOVE                             R16 R11
      264 CALL                             R12 4 1
      265 SETTABLEKS                       R12 R0 K58 ["design"]
      267 GETIMPORT                        R12 K60 [require]
      269 GETUPVAL                         R13 15
      270 GETTABLEKS                       R13 R13 K61 ["Src"]
      272 GETTABLEKS                       R13 R13 K62 ["Resources"]
      274 GETTABLEKS                       R13 R13 K63 ["GeneralTokens"]
      276 CALL                             R12 1 1
      277 GETUPVAL                         R13 16
      278 LOADNIL                          R14
      279 LOADNIL                          R15
      280 FORGPREP                         R13
      281 GETIMPORT                        R18 K60 [require]
      283 GETUPVAL                         R19 15
      284 GETTABLEKS                       R19 R19 K61 ["Src"]
      286 GETTABLEKS                       R19 R19 K62 ["Resources"]
      288 MOVE                             R21 R17
      289 NAMECALL                         R19 R19 K64 ["FindFirstChild"]
      291 CALL                             R19 2 -1
      292 CALL                             R18 -1 1
      293 NEWTABLE                         R21 0 1
      295 MOVE                             R22 R12
      296 SETLIST                          R21 R22 1 [1]
      298 NAMECALL                         R19 R18 K65 ["SetDerives"]
      300 CALL                             R19 2 0
      301 FORGLOOP                         R13 2 ; [-21]
      303 NEWCLOSURE                       R13 P6
      304 CAPTURE                          UPVAL U15
      305 CAPTURE                          VAL R6
      306 CAPTURE                          VAL R7
      307 MOVE                             R14 R13
      308 CALL                             R14 0 0
      309 GETTABLEKS                       R15 R0 K41 ["connections"]
      311 GETTABLEKS                       R16 R7 K46 ["Changed"]
      313 MOVE                             R18 R13
      314 NAMECALL                         R16 R16 K66 ["Connect"]
      316 CALL                             R16 2 -1
      317 FASTCALL                         TABLE_INSERT ; [+2]
      318 GETIMPORT                        R14 K69 [table.insert]
      320 CALL                             R14 -1 0
      321 GETTABLEKS                       R15 R0 K41 ["connections"]
      323 GETTABLEKS                       R16 R6 K46 ["Changed"]
      325 MOVE                             R18 R13
      326 NAMECALL                         R16 R16 K66 ["Connect"]
      328 CALL                             R16 2 -1
      329 FASTCALL                         TABLE_INSERT ; [+2]
      330 GETIMPORT                        R14 K69 [table.insert]
      332 CALL                             R14 -1 0
      333 GETUPVAL                         R14 17
      334 GETUPVAL                         R15 15
      335 GETTABLEKS                       R15 R15 K61 ["Src"]
      337 GETTABLEKS                       R15 R15 K70 ["Components"]
      339 CALL                             R14 1 1
      340 CALL                             R14 0 1
      341 SETTABLEKS                       R14 R0 K71 ["theme"]
      343 GETUPVAL                         R14 18
      344 GETTABLEKS                       R14 R14 K28 ["new"]
      346 GETTABLEKS                       R15 R1 K0 ["Plugin"]
      348 NAMECALL                         R15 R15 K72 ["GetMouse"]
      350 CALL                             R15 1 -1
      351 CALL                             R14 -1 1
      352 SETTABLEKS                       R14 R0 K73 ["mouse"]
      354 GETTABLEKS                       R14 R0 K73 ["mouse"]
      356 LOADK                            R16 K74 ["Arrow"]
      357 LOADN                            R17 0
      358 NAMECALL                         R14 R14 K75 ["__pushCursor"]
      360 CALL                             R14 3 0
      361 NEWCLOSURE                       R14 P7
      362 CAPTURE                          VAL R0
      363 SETTABLEKS                       R14 R0 K76 ["expand"]
      365 NEWCLOSURE                       R14 P8
      366 CAPTURE                          VAL R0
      367 CAPTURE                          VAL R1
      368 CAPTURE                          UPVAL U19
      369 SETTABLEKS                       R14 R0 K77 ["compact"]
      371 NEWCLOSURE                       R14 P9
      372 CAPTURE                          VAL R0
      373 CAPTURE                          UPVAL U20
      374 CAPTURE                          UPVAL U4
      375 SETTABLEKS                       R14 R0 K78 ["onToolChanged"]
      377 NEWCLOSURE                       R14 P10
      378 CAPTURE                          VAL R0
      379 SETTABLEKS                       R14 R0 K79 ["onResize"]
      381 NEWCLOSURE                       R14 P11
      382 CAPTURE                          VAL R0
      383 CAPTURE                          VAL R2
      384 CAPTURE                          UPVAL U2
      385 SETTABLEKS                       R14 R0 K80 ["onToggleLabels"]
      387 NEWCLOSURE                       R14 P12
      388 CAPTURE                          VAL R0
      389 CAPTURE                          VAL R2
      390 CAPTURE                          UPVAL U3
      391 SETTABLEKS                       R14 R0 K81 ["onToggleCompactDensity"]
      393 NEWCLOSURE                       R14 P13
      394 CAPTURE                          VAL R0
      395 CAPTURE                          VAL R1
      396 CAPTURE                          VAL R2
      397 CAPTURE                          UPVAL U0
      398 SETTABLEKS                       R14 R0 K82 ["onToggleFloating"]
      400 LOADK                            R16 K83 ["Actions"]
      401 NAMECALL                         R14 R2 K16 ["GetPluginComponent"]
      403 CALL                             R14 2 1
      404 DUPTABLE                         R17 K91 [{"Uri", "Enabled", "Exists", "Visible", "Checkable", "Checked", "Text"}]
      405 GETUPVAL                         R18 4
      406 GETTABLEKS                       R18 R18 K20 ["join"]
      408 GETTABLEKS                       R19 R0 K14 ["pluginUri"]
      410 DUPTABLE                         R20 K23 [{"Category", "ItemId"}]
      411 LOADK                            R21 K83 ["Actions"]
      412 SETTABLEKS                       R21 R20 K21 ["Category"]
      414 LOADK                            R21 K92 ["ShowHideLabels"]
      415 SETTABLEKS                       R21 R20 K22 ["ItemId"]
      417 CALL                             R18 2 1
      418 SETTABLEKS                       R18 R17 K84 ["Uri"]
      420 LOADB                            R18 1
      421 SETTABLEKS                       R18 R17 K85 ["Enabled"]
      423 LOADB                            R18 1
      424 SETTABLEKS                       R18 R17 K86 ["Exists"]
      426 LOADB                            R18 1
      427 SETTABLEKS                       R18 R17 K87 ["Visible"]
      429 LOADB                            R18 1
      430 SETTABLEKS                       R18 R17 K88 ["Checkable"]
      432 GETTABLEKS                       R18 R0 K11 ["state"]
      434 GETTABLEKS                       R18 R18 K4 ["showLabels"]
      436 SETTABLEKS                       R18 R17 K89 ["Checked"]
      438 GETTABLEKS                       R18 R0 K38 ["localization"]
      440 LOADK                            R20 K93 ["Action"]
      441 LOADK                            R21 K94 ["Labels"]
      442 NAMECALL                         R18 R18 K95 ["getText"]
      444 CALL                             R18 3 1
      445 SETTABLEKS                       R18 R17 K90 ["Text"]
      447 LOADB                            R18 1
      448 NAMECALL                         R15 R14 K96 ["CreateAsync"]
      450 CALL                             R15 3 1
      451 GETTABLEKS                       R17 R0 K41 ["connections"]
      453 GETTABLEN                        R18 R15 1
      454 GETTABLEKS                       R20 R0 K80 ["onToggleLabels"]
      456 NAMECALL                         R18 R18 K66 ["Connect"]
      458 CALL                             R18 2 -1
      459 FASTCALL                         TABLE_INSERT ; [+2]
      460 GETIMPORT                        R16 K69 [table.insert]
      462 CALL                             R16 -1 0
      463 DUPTABLE                         R18 K91 [{"Uri", "Enabled", "Exists", "Visible", "Checkable", "Checked", "Text"}]
      464 GETUPVAL                         R19 4
      465 GETTABLEKS                       R19 R19 K20 ["join"]
      467 GETTABLEKS                       R20 R0 K14 ["pluginUri"]
      469 DUPTABLE                         R21 K23 [{"Category", "ItemId"}]
      470 LOADK                            R22 K83 ["Actions"]
      471 SETTABLEKS                       R22 R21 K21 ["Category"]
      473 LOADK                            R22 K97 ["CompactDensity"]
      474 SETTABLEKS                       R22 R21 K22 ["ItemId"]
      476 CALL                             R19 2 1
      477 SETTABLEKS                       R19 R18 K84 ["Uri"]
      479 LOADB                            R19 1
      480 SETTABLEKS                       R19 R18 K85 ["Enabled"]
      482 LOADB                            R19 1
      483 SETTABLEKS                       R19 R18 K86 ["Exists"]
      485 LOADB                            R19 1
      486 SETTABLEKS                       R19 R18 K87 ["Visible"]
      488 LOADB                            R19 1
      489 SETTABLEKS                       R19 R18 K88 ["Checkable"]
      491 GETTABLEKS                       R19 R0 K11 ["state"]
      493 GETTABLEKS                       R19 R19 K9 ["compactDensity"]
      495 SETTABLEKS                       R19 R18 K89 ["Checked"]
      497 GETTABLEKS                       R19 R0 K38 ["localization"]
      499 LOADK                            R21 K93 ["Action"]
      500 LOADK                            R22 K97 ["CompactDensity"]
      501 NAMECALL                         R19 R19 K95 ["getText"]
      503 CALL                             R19 3 1
      504 SETTABLEKS                       R19 R18 K90 ["Text"]
      506 LOADB                            R19 1
      507 NAMECALL                         R16 R14 K96 ["CreateAsync"]
      509 CALL                             R16 3 1
      510 GETTABLEKS                       R18 R0 K41 ["connections"]
      512 GETTABLEN                        R19 R16 1
      513 GETTABLEKS                       R21 R0 K81 ["onToggleCompactDensity"]
      515 NAMECALL                         R19 R19 K66 ["Connect"]
      517 CALL                             R19 2 -1
      518 FASTCALL                         TABLE_INSERT ; [+2]
      519 GETIMPORT                        R17 K69 [table.insert]
      521 CALL                             R17 -1 0
      522 GETUPVAL                         R17 4
      523 GETTABLEKS                       R17 R17 K20 ["join"]
      525 GETTABLEKS                       R18 R0 K14 ["pluginUri"]
      527 DUPTABLE                         R19 K23 [{"Category", "ItemId"}]
      528 LOADK                            R20 K83 ["Actions"]
      529 SETTABLEKS                       R20 R19 K21 ["Category"]
      531 LOADK                            R20 K98 ["DockUndockRibbon"]
      532 SETTABLEKS                       R20 R19 K22 ["ItemId"]
      534 CALL                             R17 2 1
      535 DUPTABLE                         R20 K91 [{"Uri", "Enabled", "Exists", "Visible", "Checkable", "Checked", "Text"}]
      536 SETTABLEKS                       R17 R20 K84 ["Uri"]
      538 LOADB                            R21 1
      539 SETTABLEKS                       R21 R20 K85 ["Enabled"]
      541 LOADB                            R21 1
      542 SETTABLEKS                       R21 R20 K86 ["Exists"]
      544 LOADB                            R21 1
      545 SETTABLEKS                       R21 R20 K87 ["Visible"]
      547 LOADB                            R21 1
      548 SETTABLEKS                       R21 R20 K88 ["Checkable"]
      550 GETTABLEKS                       R21 R0 K11 ["state"]
      552 GETTABLEKS                       R21 R21 K8 ["showFloating"]
      554 SETTABLEKS                       R21 R20 K89 ["Checked"]
      556 GETTABLEKS                       R21 R0 K38 ["localization"]
      558 LOADK                            R23 K93 ["Action"]
      559 LOADK                            R24 K99 ["CollapseToolbar"]
      560 NAMECALL                         R21 R21 K95 ["getText"]
      562 CALL                             R21 3 1
      563 SETTABLEKS                       R21 R20 K90 ["Text"]
      565 LOADB                            R21 1
      566 NAMECALL                         R18 R14 K96 ["CreateAsync"]
      568 CALL                             R18 3 1
      569 GETTABLEKS                       R20 R0 K41 ["connections"]
      571 GETTABLEN                        R21 R18 1
      572 GETTABLEKS                       R23 R0 K82 ["onToggleFloating"]
      574 NAMECALL                         R21 R21 K66 ["Connect"]
      576 CALL                             R21 2 -1
      577 FASTCALL                         TABLE_INSERT ; [+2]
      578 GETIMPORT                        R19 K69 [table.insert]
      580 CALL                             R19 -1 0
      581 NEWCLOSURE                       R19 P14
      582 CAPTURE                          VAL R14
      583 CAPTURE                          VAL R17
      584 SETTABLEKS                       R19 R0 K100 ["toggleFloating"]
      586 NEWTABLE                         R21 0 2
      588 GETUPVAL                         R22 4
      589 GETTABLEKS                       R22 R22 K101 ["fromAction"]
      591 LOADK                            R23 K102 ["BuilderTools"]
      592 LOADK                            R24 K103 ["SetMoveIncrement"]
      593 CALL                             R22 2 1
      594 GETUPVAL                         R23 4
      595 GETTABLEKS                       R23 R23 K101 ["fromAction"]
      597 LOADK                            R24 K102 ["BuilderTools"]
      598 LOADK                            R25 K104 ["SetRotateIncrement"]
      599 CALL                             R23 2 -1
      600 SETLIST                          R21 R22 -1 [1]
      602 NAMECALL                         R19 R14 K105 ["MultiBindToActivatedAsync"]
      604 CALL                             R19 2 1
      605 LENGTH                           R22 R19
      606 JUMPIFEQKN                       R22 K106 [2] ; [+2]
      608 LOADB                            R21 0 +1
      609 LOADB                            R21 1
      610 LOADK                            R23 K107 ["Expected 2 signals for spinbox focus actions, got %* signals instead"]
      611 LENGTH                           R25 R19
      612 NAMECALL                         R23 R23 K108 ["format"]
      614 CALL                             R23 2 1
      615 MOVE                             R22 R23
      616 FASTCALL2                        ASSERT R21 R22 ; [+3]
      618 GETIMPORT                        R20 K110 [assert]
      620 CALL                             R20 2 0
      621 GETTABLEN                        R20 R19 1
      622 GETTABLEN                        R21 R19 2
      623 GETTABLEKS                       R23 R0 K41 ["connections"]
      625 NEWCLOSURE                       R26 P15
      626 CAPTURE                          VAL R0
      627 CAPTURE                          UPVAL U4
      628 NAMECALL                         R24 R20 K66 ["Connect"]
      630 CALL                             R24 2 -1
      631 FASTCALL                         TABLE_INSERT ; [+2]
      632 GETIMPORT                        R22 K69 [table.insert]
      634 CALL                             R22 -1 0
      635 GETTABLEKS                       R23 R0 K41 ["connections"]
      637 NEWCLOSURE                       R26 P16
      638 CAPTURE                          VAL R0
      639 CAPTURE                          UPVAL U4
      640 NAMECALL                         R24 R21 K66 ["Connect"]
      642 CALL                             R24 2 -1
      643 FASTCALL                         TABLE_INSERT ; [+2]
      644 GETIMPORT                        R22 K69 [table.insert]
      646 CALL                             R22 -1 0
      647 LOADNIL                          R22
      648 SETTABLEKS                       R22 R0 K111 ["toggleTask"]
      650 NEWCLOSURE                       R22 P17
      651 CAPTURE                          VAL R0
      652 CAPTURE                          VAL R1
      653 SETTABLEKS                       R22 R0 K112 ["onDataModelSessionStarted"]
      655 GETTABLEKS                       R23 R0 K41 ["connections"]
      657 GETTABLEKS                       R24 R1 K113 ["Mdi"]
      659 GETTABLEKS                       R24 R24 K114 ["DataModelSessionStarted"]
      661 GETTABLEKS                       R26 R0 K112 ["onDataModelSessionStarted"]
      663 NAMECALL                         R24 R24 K66 ["Connect"]
      665 CALL                             R24 2 -1
      666 FASTCALL                         TABLE_INSERT ; [+2]
      667 GETIMPORT                        R22 K69 [table.insert]
      669 CALL                             R22 -1 0
      670 GETTABLEKS                       R22 R0 K112 ["onDataModelSessionStarted"]
      672 GETTABLEKS                       R23 R1 K113 ["Mdi"]
      674 GETTABLEKS                       R23 R23 K115 ["FocusedDataModelSession"]
      676 CALL                             R22 1 0
      677 NEWCLOSURE                       R22 P18
      678 CAPTURE                          VAL R0
      679 CAPTURE                          UPVAL U21
      680 CAPTURE                          UPVAL U22
      681 SETTABLEKS                       R22 R0 K116 ["openFloating"]
      683 GETUPVAL                         R22 21
      684 CALL                             R22 0 1
      685 JUMPIFNOT                        R22 ; [+4]
      686 NEWCLOSURE                       R22 P19
      687 CAPTURE                          VAL R0
      688 SETTABLEKS                       R22 R0 K117 ["cancelOpenFloating"]
      690 LOADK                            R24 K118 ["Settings"]
      691 NAMECALL                         R22 R2 K16 ["GetPluginComponent"]
      693 CALL                             R22 2 1
      694 GETUPVAL                         R23 23
      695 GETTABLEKS                       R23 R23 K28 ["new"]
      697 MOVE                             R24 R14
      698 MOVE                             R25 R22
      699 CALL                             R23 2 1
      700 SETTABLEKS                       R23 R0 K119 ["controlSignalStore"]
      702 RETURN                           R0 0

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
       90 DUPTABLE                         R9 K31 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset", "AllowScreenOverflow"}]
       91 GETTABLEKS                       R10 R0 K32 ["widgetUri"]
       93 SETTABLEKS                       R10 R9 K26 ["TargetWidgetUri"]
       95 GETIMPORT                        R10 K35 [Vector2.new]
       97 LOADN                            R11 0
       98 LOADN                            R12 1
       99 CALL                             R10 2 1
      100 SETTABLEKS                       R10 R9 K27 ["TargetAnchorPoint"]
      102 GETIMPORT                        R10 K35 [Vector2.new]
      104 LOADN                            R11 0
      105 LOADN                            R12 0
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K28 ["SubjectAnchorPoint"]
      109 GETIMPORT                        R10 K35 [Vector2.new]
      111 LOADN                            R11 0
      112 LOADN                            R12 0
      113 CALL                             R10 2 1
      114 SETTABLEKS                       R10 R9 K29 ["Offset"]
      116 LOADB                            R10 1
      117 SETTABLEKS                       R10 R9 K30 ["AllowScreenOverflow"]
      119 NAMECALL                         R6 R6 K36 ["SetAttachmentAsync"]
      121 CALL                             R6 3 0
      122 GETIMPORT                        R6 K39 [task.defer]
      124 NEWCLOSURE                       R7 P2
      125 CAPTURE                          VAL R0
      126 CALL                             R6 1 0
      127 RETURN                           R0 0

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
      248 LOADN                            R43 44
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
