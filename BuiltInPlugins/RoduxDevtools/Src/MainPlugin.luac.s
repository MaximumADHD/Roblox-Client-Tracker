PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["store"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 -1
        6 NAMECALL                         R1 R1 K1 ["dispatch"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["store"]
        3 GETUPVAL                         R3 1
        4 NEWTABLE                         R4 1 0
        6 GETTABLEKS                       R5 R0 K1 ["index"]
        8 GETTABLEKS                       R6 R0 K2 ["event"]
       10 SETTABLE                         R6 R4 R5
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R1 K3 ["dispatch"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_7:
        0 JUMPIFEQKS                       R0 K0 ["PluginBatchPackets"] ; [+2]
        2 RETURN                           R0 0
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K1 ["pluginBatchHandlers"]
       10 GETTABLEKS                       R9 R6 K2 ["type"]
       12 GETTABLE                         R7 R8 R9
       13 JUMPIF                           R7 ; [+12]
       14 GETIMPORT                        R8 K4 [warn]
       16 LOADK                            R10 K5 ["RoduxDevtools plugin received an unknown packet type '%*'"]
       17 GETTABLEKS                       R12 R6 K2 ["type"]
       19 NAMECALL                         R10 R10 K6 ["format"]
       21 CALL                             R10 2 1
       22 MOVE                             R9 R10
       23 MOVE                             R10 R6
       24 CALL                             R8 2 0
       25 JUMP                             ; [+18]
       26 GETIMPORT                        R8 K8 [pcall]
       28 MOVE                             R9 R7
       29 GETTABLEKS                       R10 R6 K9 ["props"]
       31 CALL                             R8 2 2
       32 JUMPIF                           R8 ; [+11]
       33 GETIMPORT                        R10 K4 [warn]
       35 LOADK                            R12 K10 ["RoduxDevtools plugin encountered an error while processing packet '%*': %*"]
       36 GETTABLEKS                       R14 R6 K2 ["type"]
       38 MOVE                             R15 R9
       39 NAMECALL                         R12 R12 K6 ["format"]
       41 CALL                             R12 3 1
       42 MOVE                             R11 R12
       43 CALL                             R10 1 0
       44 FORGLOOP                         R2 2 ; [-38]
       46 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_9:
        0 DUPTABLE                         R4 K1 [{"enabled"}]
        1 LOADB                            R5 0
        2 SETTABLEKS                       R5 R4 K0 ["enabled"]
        4 NAMECALL                         R2 R0 K2 ["setState"]
        6 CALL                             R2 2 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K4 ["onClose"]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K5 ["onRestore"]
       19 NEWCLOSURE                       R2 P3
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K6 ["onWidgetEnabledChanged"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K7 ["Store"]
       26 GETTABLEKS                       R2 R2 K8 ["new"]
       28 GETUPVAL                         R3 1
       29 LOADNIL                          R4
       30 NEWTABLE                         R5 0 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K9 ["thunkMiddleware"]
       35 SETLIST                          R5 R6 1 [1]
       37 LOADNIL                          R6
       38 CALL                             R2 4 1
       39 SETTABLEKS                       R2 R0 K10 ["store"]
       41 GETUPVAL                         R2 2
       42 NAMECALL                         R2 R2 K11 ["IsEdit"]
       44 CALL                             R2 1 1
       45 JUMPIF                           R2 ; [+75]
       46 GETUPVAL                         R2 2
       47 NAMECALL                         R2 R2 K12 ["IsClient"]
       49 CALL                             R2 1 1
       50 JUMPIFNOT                        R2 ; [+70]
       51 GETIMPORT                        R2 K14 [workspace]
       53 GETTABLEKS                       R2 R2 K15 ["CurrentCamera"]
       55 JUMPIF                           R2 ; [+2]
       56 GETIMPORT                        R2 K14 [workspace]
       58 LOADK                            R4 K16 ["__RoduxDevtoolsPluginBridge"]
       59 NAMECALL                         R2 R2 K17 ["FindFirstChild"]
       61 CALL                             R2 2 1
       62 JUMPIFNOT                        R2 ; [+8]
       63 LOADK                            R5 K18 ["BindableEvent"]
       64 NAMECALL                         R3 R2 K19 ["IsA"]
       66 CALL                             R3 2 1
       67 JUMPIFNOT                        R3 ; [+3]
       68 SETTABLEKS                       R2 R0 K20 ["devtoolsBridge"]
       70 JUMP                             ; [+27]
       71 GETIMPORT                        R3 K22 [Instance.new]
       73 LOADK                            R4 K18 ["BindableEvent"]
       74 CALL                             R3 1 1
       75 SETTABLEKS                       R3 R0 K20 ["devtoolsBridge"]
       77 GETTABLEKS                       R3 R0 K20 ["devtoolsBridge"]
       79 LOADK                            R4 K16 ["__RoduxDevtoolsPluginBridge"]
       80 SETTABLEKS                       R4 R3 K23 ["Name"]
       82 GETTABLEKS                       R3 R0 K20 ["devtoolsBridge"]
       84 LOADB                            R4 0
       85 SETTABLEKS                       R4 R3 K24 ["Archivable"]
       87 GETTABLEKS                       R3 R0 K20 ["devtoolsBridge"]
       89 GETIMPORT                        R4 K14 [workspace]
       91 GETTABLEKS                       R4 R4 K15 ["CurrentCamera"]
       93 JUMPIF                           R4 ; [+2]
       94 GETIMPORT                        R4 K14 [workspace]
       96 SETTABLEKS                       R4 R3 K25 ["Parent"]
       98 NEWTABLE                         R3 2 0
      100 NEWCLOSURE                       R4 P4
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U3
      103 SETTABLEKS                       R4 R3 K26 ["updateEvents"]
      105 NEWCLOSURE                       R4 P5
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U3
      108 SETTABLEKS                       R4 R3 K27 ["updateEvent"]
      110 SETTABLEKS                       R3 R0 K28 ["pluginBatchHandlers"]
      112 GETTABLEKS                       R3 R0 K20 ["devtoolsBridge"]
      114 GETTABLEKS                       R3 R3 K29 ["Event"]
      116 NEWCLOSURE                       R5 P6
      117 CAPTURE                          VAL R0
      118 NAMECALL                         R3 R3 K30 ["Connect"]
      120 CALL                             R3 2 0
      121 GETUPVAL                         R2 4
      122 GETTABLEKS                       R2 R2 K31 ["Localization"]
      124 GETTABLEKS                       R2 R2 K8 ["new"]
      126 DUPTABLE                         R3 K35 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      127 GETUPVAL                         R4 5
      128 SETTABLEKS                       R4 R3 K32 ["stringResourceTable"]
      130 GETUPVAL                         R4 6
      131 SETTABLEKS                       R4 R3 K33 ["translationResourceTable"]
      133 LOADK                            R4 K36 ["RoduxDevtools"]
      134 SETTABLEKS                       R4 R3 K34 ["pluginName"]
      136 CALL                             R2 1 1
      137 SETTABLEKS                       R2 R0 K37 ["localization"]
      139 GETUPVAL                         R2 4
      140 GETTABLEKS                       R2 R2 K38 ["Analytics"]
      142 GETTABLEKS                       R2 R2 K8 ["new"]
      144 DUPCLOSURE                       R3 K39 [PROTO_8]
      145 NEWTABLE                         R4 0 0
      147 CALL                             R2 2 1
      148 SETTABLEKS                       R2 R0 K40 ["analytics"]
      150 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["devtoolsBridge"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["devtoolsBridge"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K13 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 LOADK                            R7 K14 ["RoduxDevtools_ToggleButton"]
       15 SETTABLEKS                       R7 R6 K7 ["Id"]
       17 GETTABLEKS                       R7 R0 K15 ["localization"]
       19 LOADK                            R9 K16 ["Plugin"]
       20 LOADK                            R10 K17 ["Button"]
       21 NAMECALL                         R7 R7 K18 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K8 ["Title"]
       26 GETTABLEKS                       R7 R0 K15 ["localization"]
       28 LOADK                            R9 K16 ["Plugin"]
       29 LOADK                            R10 K19 ["Description"]
       30 NAMECALL                         R7 R7 K18 ["getText"]
       32 CALL                             R7 3 1
       33 SETTABLEKS                       R7 R6 K9 ["Tooltip"]
       35 LOADK                            R7 K20 ["rbxasset://textures/RoduxDevtools/ToolbarIcon.png"]
       36 SETTABLEKS                       R7 R6 K10 ["Icon"]
       38 GETTABLEKS                       R7 R0 K21 ["toggleEnabled"]
       40 SETTABLEKS                       R7 R6 K11 ["OnClick"]
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R6 K12 ["ClickableWhenViewportHidden"]
       45 CALL                             R4 2 1
       46 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       48 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["store"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 -1
        6 NAMECALL                         R1 R1 K1 ["dispatch"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["devtoolsBridge"]
        3 LOADK                            R2 K1 ["DevtoolsCall"]
        4 LOADK                            R3 K2 ["Clear"]
        5 NAMECALL                         R0 R0 K3 ["Fire"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K4 ["store"]
       11 GETUPVAL                         R2 1
       12 LOADN                            R3 0
       13 CALL                             R2 1 -1
       14 NAMECALL                         R0 R0 K5 ["dispatch"]
       16 CALL                             R0 -1 0
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K4 ["store"]
       20 GETUPVAL                         R2 2
       21 CALL                             R2 0 -1
       22 NAMECALL                         R0 R0 K5 ["dispatch"]
       24 CALL                             R0 -1 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["store"]
        3 NAMECALL                         R2 R2 K1 ["getState"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R2 R2 K2 ["events"]
        8 GETTABLE                         R1 R2 R0
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R1 K3 ["isStub"]
       13 JUMPIFNOT                        R2 ; [+9]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["devtoolsBridge"]
       17 LOADK                            R4 K5 ["DevtoolsCall"]
       18 LOADK                            R5 K6 ["_fillPluginStubAtIndex"]
       19 MOVE                             R6 R0
       20 NAMECALL                         R2 R2 K7 ["Fire"]
       22 CALL                             R2 4 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K0 ["store"]
       26 GETUPVAL                         R4 1
       27 MOVE                             R5 R0
       28 CALL                             R4 1 -1
       29 NAMECALL                         R2 R2 K8 ["dispatch"]
       31 CALL                             R2 -1 0
       32 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["devtoolsBridge"]
        3 LOADK                            R3 K1 ["DevtoolsCall"]
        4 LOADK                            R4 K2 ["RevertToStateAtIndex"]
        5 MOVE                             R5 R0
        6 NAMECALL                         R1 R1 K3 ["Fire"]
        8 CALL                             R1 4 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["devtoolsBridge"]
        3 LOADK                            R3 K1 ["DevtoolsCall"]
        4 LOADK                            R4 K2 ["UndoActionAtIndex"]
        5 MOVE                             R5 R0
        6 NAMECALL                         R1 R1 K3 ["Fire"]
        8 CALL                             R1 4 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["devtoolsBridge"]
        3 LOADK                            R3 K1 ["DevtoolsCall"]
        4 LOADK                            R4 K2 ["RedoActionAtIndex"]
        5 MOVE                             R5 R0
        6 NAMECALL                         R1 R1 K3 ["Fire"]
        8 CALL                             R1 4 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 6
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 GETTABLEKS                       R9 R0 K6 ["store"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K5 ["new"]
       27 NAMECALL                         R10 R3 K7 ["getMouse"]
       29 CALL                             R10 1 -1
       30 CALL                             R9 -1 1
       31 GETUPVAL                         R10 4
       32 CALL                             R10 0 1
       33 GETTABLEKS                       R11 R0 K8 ["localization"]
       35 GETTABLEKS                       R12 R0 K9 ["analytics"]
       37 SETLIST                          R6 R7 6 [1]
       39 DUPTABLE                         R7 K12 [{"Toolbar", "MainWidget"}]
       40 GETUPVAL                         R8 5
       41 GETTABLEKS                       R8 R8 K13 ["createElement"]
       43 GETUPVAL                         R9 6
       44 DUPTABLE                         R10 K16 [{"Title", "RenderButtons"}]
       45 GETTABLEKS                       R11 R0 K8 ["localization"]
       47 LOADK                            R13 K2 ["Plugin"]
       48 LOADK                            R14 K10 ["Toolbar"]
       49 NAMECALL                         R11 R11 K17 ["getText"]
       51 CALL                             R11 3 1
       52 SETTABLEKS                       R11 R10 K14 ["Title"]
       54 NEWCLOSURE                       R11 P0
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R11 R10 K15 ["RenderButtons"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K10 ["Toolbar"]
       61 GETUPVAL                         R8 5
       62 GETTABLEKS                       R8 R8 K13 ["createElement"]
       64 GETUPVAL                         R9 7
       65 NEWTABLE                         R10 16 0
       67 LOADK                            R11 K18 ["RoduxDevtools"]
       68 SETTABLEKS                       R11 R10 K19 ["Id"]
       70 SETTABLEKS                       R4 R10 K20 ["Enabled"]
       72 GETTABLEKS                       R11 R0 K8 ["localization"]
       74 LOADK                            R13 K2 ["Plugin"]
       75 LOADK                            R14 K21 ["Name"]
       76 NAMECALL                         R11 R11 K17 ["getText"]
       78 CALL                             R11 3 1
       79 SETTABLEKS                       R11 R10 K14 ["Title"]
       81 GETIMPORT                        R11 K25 [Enum.ZIndexBehavior.Sibling]
       83 SETTABLEKS                       R11 R10 K23 ["ZIndexBehavior"]
       85 GETIMPORT                        R11 K28 [Enum.InitialDockState.Bottom]
       87 SETTABLEKS                       R11 R10 K26 ["InitialDockState"]
       89 GETIMPORT                        R11 K30 [Vector2.new]
       91 LOADN                            R12 128
       92 LOADN                            R13 224
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K31 ["Size"]
       96 GETIMPORT                        R11 K30 [Vector2.new]
       98 LOADN                            R12 144
       99 LOADN                            R13 250
      100 CALL                             R11 2 1
      101 SETTABLEKS                       R11 R10 K32 ["MinSize"]
      103 GETTABLEKS                       R11 R0 K33 ["onClose"]
      105 SETTABLEKS                       R11 R10 K34 ["OnClose"]
      107 LOADB                            R11 1
      108 SETTABLEKS                       R11 R10 K35 ["ShouldRestore"]
      110 GETTABLEKS                       R11 R0 K36 ["onRestore"]
      112 SETTABLEKS                       R11 R10 K37 ["OnWidgetRestored"]
      114 GETUPVAL                         R11 8
      115 GETTABLEKS                       R11 R11 K38 ["Change"]
      117 GETTABLEKS                       R11 R11 K20 ["Enabled"]
      119 GETTABLEKS                       R12 R0 K39 ["onWidgetEnabledChanged"]
      121 SETTABLE                         R12 R10 R11
      122 DUPTABLE                         R11 K41 [{"Main"}]
      123 GETUPVAL                         R12 5
      124 GETTABLEKS                       R12 R12 K13 ["createElement"]
      126 GETUPVAL                         R13 9
      127 DUPTABLE                         R14 K44 [{"Style", "Padding"}]
      128 LOADK                            R15 K45 ["Box"]
      129 SETTABLEKS                       R15 R14 K42 ["Style"]
      131 LOADN                            R15 5
      132 SETTABLEKS                       R15 R14 K43 ["Padding"]
      134 DUPTABLE                         R15 K48 [{"Topbar", "Sections"}]
      135 GETUPVAL                         R16 5
      136 GETTABLEKS                       R16 R16 K13 ["createElement"]
      138 GETUPVAL                         R17 10
      139 DUPTABLE                         R18 K51 [{"OnSearch", "OnClearList"}]
      140 NEWCLOSURE                       R19 P1
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U11
      143 SETTABLEKS                       R19 R18 K49 ["OnSearch"]
      145 NEWCLOSURE                       R19 P2
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U12
      148 CAPTURE                          UPVAL U13
      149 SETTABLEKS                       R19 R18 K50 ["OnClearList"]
      151 CALL                             R16 2 1
      152 SETTABLEKS                       R16 R15 K46 ["Topbar"]
      154 GETUPVAL                         R16 5
      155 GETTABLEKS                       R16 R16 K13 ["createElement"]
      157 GETUPVAL                         R17 14
      158 DUPTABLE                         R18 K59 [{"UseScale", "ClampSize", "UseDeficit", "Position", "Size", "MinSizes", "MaxSizes", "InitialSizes"}]
      159 LOADB                            R19 0
      160 SETTABLEKS                       R19 R18 K52 ["UseScale"]
      162 LOADB                            R19 1
      163 SETTABLEKS                       R19 R18 K53 ["ClampSize"]
      165 LOADB                            R19 1
      166 SETTABLEKS                       R19 R18 K54 ["UseDeficit"]
      168 GETIMPORT                        R19 K62 [UDim2.fromOffset]
      170 LOADN                            R20 0
      171 LOADN                            R21 37
      172 CALL                             R19 2 1
      173 SETTABLEKS                       R19 R18 K55 ["Position"]
      175 GETIMPORT                        R19 K63 [UDim2.new]
      177 LOADN                            R20 1
      178 LOADN                            R21 0
      179 LOADN                            R22 1
      180 LOADN                            R23 219
      181 CALL                             R19 4 1
      182 SETTABLEKS                       R19 R18 K31 ["Size"]
      184 NEWTABLE                         R19 0 2
      186 GETIMPORT                        R20 K65 [UDim.new]
      188 LOADN                            R21 0
      189 LOADN                            R22 150
      190 CALL                             R20 2 1
      191 GETIMPORT                        R21 K65 [UDim.new]
      193 LOADN                            R22 0
      194 LOADN                            R23 100
      195 CALL                             R21 2 -1
      196 SETLIST                          R19 R20 -1 [1]
      198 SETTABLEKS                       R19 R18 K56 ["MinSizes"]
      200 NEWTABLE                         R19 0 2
      202 GETIMPORT                        R20 K65 [UDim.new]
      204 LOADN                            R21 0
      205 LOADN                            R22 88
      206 CALL                             R20 2 1
      207 LOADNIL                          R21
      208 SETLIST                          R19 R20 2 [1]
      210 SETTABLEKS                       R19 R18 K57 ["MaxSizes"]
      212 NEWTABLE                         R19 0 2
      214 GETIMPORT                        R20 K65 [UDim.new]
      216 LOADN                            R21 0
      217 LOADN                            R22 44
      218 CALL                             R20 2 1
      219 GETIMPORT                        R21 K65 [UDim.new]
      221 LOADN                            R22 1
      222 LOADN                            R23 212
      223 CALL                             R21 2 -1
      224 SETLIST                          R19 R20 -1 [1]
      226 SETTABLEKS                       R19 R18 K58 ["InitialSizes"]
      228 NEWTABLE                         R19 0 2
      230 GETUPVAL                         R20 5
      231 GETTABLEKS                       R20 R20 K13 ["createElement"]
      233 GETUPVAL                         R21 9
      234 DUPTABLE                         R22 K44 [{"Style", "Padding"}]
      235 LOADK                            R23 K66 ["BorderBox"]
      236 SETTABLEKS                       R23 R22 K42 ["Style"]
      238 LOADN                            R23 1
      239 SETTABLEKS                       R23 R22 K43 ["Padding"]
      241 DUPTABLE                         R23 K68 [{"EventList"}]
      242 GETUPVAL                         R24 5
      243 GETTABLEKS                       R24 R24 K13 ["createElement"]
      245 GETUPVAL                         R25 15
      246 DUPTABLE                         R26 K70 [{"OnSelected"}]
      247 NEWCLOSURE                       R27 P3
      248 CAPTURE                          VAL R0
      249 CAPTURE                          UPVAL U12
      250 SETTABLEKS                       R27 R26 K69 ["OnSelected"]
      252 CALL                             R24 2 1
      253 SETTABLEKS                       R24 R23 K67 ["EventList"]
      255 CALL                             R20 3 1
      256 GETUPVAL                         R21 5
      257 GETTABLEKS                       R21 R21 K13 ["createElement"]
      259 GETUPVAL                         R22 9
      260 DUPTABLE                         R23 K44 [{"Style", "Padding"}]
      261 LOADK                            R24 K66 ["BorderBox"]
      262 SETTABLEKS                       R24 R23 K42 ["Style"]
      264 LOADN                            R24 1
      265 SETTABLEKS                       R24 R23 K43 ["Padding"]
      267 DUPTABLE                         R24 K72 [{"Details"}]
      268 GETUPVAL                         R25 5
      269 GETTABLEKS                       R25 R25 K13 ["createElement"]
      271 GETUPVAL                         R26 16
      272 DUPTABLE                         R27 K76 [{"OnSetState", "OnUndoAction", "OnRedoAction"}]
      273 NEWCLOSURE                       R28 P4
      274 CAPTURE                          VAL R0
      275 SETTABLEKS                       R28 R27 K73 ["OnSetState"]
      277 NEWCLOSURE                       R28 P5
      278 CAPTURE                          VAL R0
      279 SETTABLEKS                       R28 R27 K74 ["OnUndoAction"]
      281 NEWCLOSURE                       R28 P6
      282 CAPTURE                          VAL R0
      283 SETTABLEKS                       R28 R27 K75 ["OnRedoAction"]
      285 CALL                             R25 2 1
      286 SETTABLEKS                       R25 R24 K71 ["Details"]
      288 CALL                             R21 3 -1
      289 SETLIST                          R19 R20 -1 [1]
      291 CALL                             R16 3 1
      292 SETTABLEKS                       R16 R15 K47 ["Sections"]
      294 CALL                             R12 3 1
      295 SETTABLEKS                       R12 R11 K40 ["Main"]
      297 CALL                             R8 3 1
      298 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      300 CALL                             R5 2 -1
      301 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Packages"]
       17 GETTABLEKS                       R3 R3 K10 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K9 ["Packages"]
       24 GETTABLEKS                       R4 R4 K11 ["ReactRoblox"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K9 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Rodux"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K9 ["Packages"]
       38 GETTABLEKS                       R6 R6 K13 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K14 ["UI"]
       43 GETTABLEKS                       R7 R6 K15 ["DockWidget"]
       45 GETTABLEKS                       R8 R6 K16 ["PluginButton"]
       47 GETTABLEKS                       R9 R6 K17 ["PluginToolbar"]
       49 GETTABLEKS                       R10 R6 K18 ["Pane"]
       51 GETTABLEKS                       R11 R5 K19 ["ContextServices"]
       53 GETTABLEKS                       R12 R11 K20 ["Plugin"]
       55 GETTABLEKS                       R13 R11 K21 ["Mouse"]
       57 GETTABLEKS                       R14 R11 K22 ["Store"]
       59 GETIMPORT                        R15 K8 [require]
       61 GETTABLEKS                       R16 R1 K23 ["Src"]
       63 GETTABLEKS                       R16 R16 K24 ["Reducers"]
       65 GETTABLEKS                       R16 R16 K25 ["MainReducer"]
       67 CALL                             R15 1 1
       68 GETIMPORT                        R16 K8 [require]
       70 GETTABLEKS                       R17 R1 K23 ["Src"]
       72 GETTABLEKS                       R17 R17 K26 ["Resources"]
       74 GETTABLEKS                       R17 R17 K27 ["MakeTheme"]
       76 CALL                             R16 1 1
       77 GETTABLEKS                       R17 R1 K23 ["Src"]
       79 GETTABLEKS                       R17 R17 K28 ["Actions"]
       81 GETIMPORT                        R18 K8 [require]
       83 GETTABLEKS                       R19 R17 K29 ["UpdateSelectedIndex"]
       85 CALL                             R18 1 1
       86 GETIMPORT                        R19 K8 [require]
       88 GETTABLEKS                       R20 R17 K30 ["UpdateSearchTerm"]
       90 CALL                             R19 1 1
       91 GETIMPORT                        R20 K8 [require]
       93 GETTABLEKS                       R21 R17 K31 ["UpdateEvents"]
       95 CALL                             R20 1 1
       96 GETIMPORT                        R21 K8 [require]
       98 GETTABLEKS                       R22 R17 K32 ["ClearEvents"]
      100 CALL                             R21 1 1
      101 GETTABLEKS                       R22 R1 K23 ["Src"]
      103 GETTABLEKS                       R22 R22 K26 ["Resources"]
      105 GETTABLEKS                       R22 R22 K33 ["Localization"]
      107 GETTABLEKS                       R22 R22 K34 ["SourceStrings"]
      109 GETTABLEKS                       R23 R1 K23 ["Src"]
      111 GETTABLEKS                       R23 R23 K26 ["Resources"]
      113 GETTABLEKS                       R23 R23 K33 ["Localization"]
      115 GETTABLEKS                       R23 R23 K35 ["LocalizedStrings"]
      117 GETTABLEKS                       R24 R1 K23 ["Src"]
      119 GETTABLEKS                       R24 R24 K36 ["Components"]
      121 GETIMPORT                        R25 K8 [require]
      123 GETTABLEKS                       R26 R24 K37 ["ControlledSplitPane"]
      125 CALL                             R25 1 1
      126 GETIMPORT                        R26 K8 [require]
      128 GETTABLEKS                       R27 R24 K38 ["Topbar"]
      130 CALL                             R26 1 1
      131 GETIMPORT                        R27 K8 [require]
      133 GETTABLEKS                       R28 R24 K39 ["EventList"]
      135 CALL                             R27 1 1
      136 GETIMPORT                        R28 K8 [require]
      138 GETTABLEKS                       R29 R24 K40 ["Details"]
      140 CALL                             R28 1 1
      141 GETTABLEKS                       R29 R2 K41 ["PureComponent"]
      143 LOADK                            R31 K42 ["MainPlugin"]
      144 NAMECALL                         R29 R29 K43 ["extend"]
      146 CALL                             R29 2 1
      147 DUPCLOSURE                       R30 K44 [PROTO_9]
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R0
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R22
      154 CAPTURE                          VAL R23
      155 SETTABLEKS                       R30 R29 K45 ["init"]
      157 DUPCLOSURE                       R30 K46 [PROTO_10]
      158 SETTABLEKS                       R30 R29 K47 ["willUnmount"]
      160 DUPCLOSURE                       R30 K48 [PROTO_11]
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R8
      163 SETTABLEKS                       R30 R29 K49 ["renderButtons"]
      165 DUPCLOSURE                       R30 K50 [PROTO_19]
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R26
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R18
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R25
      181 CAPTURE                          VAL R27
      182 CAPTURE                          VAL R28
      183 SETTABLEKS                       R30 R29 K51 ["render"]
      185 RETURN                           R29 1
