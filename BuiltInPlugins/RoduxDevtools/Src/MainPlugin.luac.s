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
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
        0 DUPTABLE                         R4 K2 [{[1] = False}]
        1 NAMECALL                         R2 R0 K3 ["setState"]
        3 CALL                             R2 2 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K4 ["toggleEnabled"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K5 ["onClose"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K6 ["onRestore"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K8 ["Store"]
       23 GETTABLEKS                       R2 R2 K9 ["new"]
       25 GETUPVAL                         R3 1
       26 LOADNIL                          R4
       27 NEWTABLE                         R5 0 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K10 ["thunkMiddleware"]
       32 SETLIST                          R5 R6 1 [1]
       34 LOADNIL                          R6
       35 CALL                             R2 4 1
       36 SETTABLEKS                       R2 R0 K11 ["store"]
       38 GETUPVAL                         R2 2
       39 NAMECALL                         R2 R2 K12 ["IsEdit"]
       41 CALL                             R2 1 1
       42 JUMPIF                           R2 ; [+75]
       43 GETUPVAL                         R2 2
       44 NAMECALL                         R2 R2 K13 ["IsClient"]
       46 CALL                             R2 1 1
       47 JUMPIFNOT                        R2 ; [+70]
       48 GETIMPORT                        R2 K15 [workspace]
       50 GETTABLEKS                       R2 R2 K16 ["CurrentCamera"]
       52 JUMPIF                           R2 ; [+2]
       53 GETIMPORT                        R2 K15 [workspace]
       55 LOADK                            R4 K17 ["__RoduxDevtoolsPluginBridge"]
       56 NAMECALL                         R2 R2 K18 ["FindFirstChild"]
       58 CALL                             R2 2 1
       59 JUMPIFNOT                        R2 ; [+8]
       60 LOADK                            R5 K19 ["BindableEvent"]
       61 NAMECALL                         R3 R2 K20 ["IsA"]
       63 CALL                             R3 2 1
       64 JUMPIFNOT                        R3 ; [+3]
       65 SETTABLEKS                       R2 R0 K21 ["devtoolsBridge"]
       67 JUMP                             ; [+27]
       68 GETIMPORT                        R3 K23 [Instance.new]
       70 LOADK                            R4 K19 ["BindableEvent"]
       71 CALL                             R3 1 1
       72 SETTABLEKS                       R3 R0 K21 ["devtoolsBridge"]
       74 GETTABLEKS                       R3 R0 K21 ["devtoolsBridge"]
       76 LOADK                            R4 K17 ["__RoduxDevtoolsPluginBridge"]
       77 SETTABLEKS                       R4 R3 K24 ["Name"]
       79 GETTABLEKS                       R3 R0 K21 ["devtoolsBridge"]
       81 LOADB                            R4 0
       82 SETTABLEKS                       R4 R3 K25 ["Archivable"]
       84 GETTABLEKS                       R3 R0 K21 ["devtoolsBridge"]
       86 GETIMPORT                        R4 K15 [workspace]
       88 GETTABLEKS                       R4 R4 K16 ["CurrentCamera"]
       90 JUMPIF                           R4 ; [+2]
       91 GETIMPORT                        R4 K15 [workspace]
       93 SETTABLEKS                       R4 R3 K26 ["Parent"]
       95 NEWTABLE                         R3 2 0
       97 NEWCLOSURE                       R4 P4
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U3
      100 SETTABLEKS                       R4 R3 K27 ["updateEvents"]
      102 NEWCLOSURE                       R4 P5
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U3
      105 SETTABLEKS                       R4 R3 K28 ["updateEvent"]
      107 SETTABLEKS                       R3 R0 K29 ["pluginBatchHandlers"]
      109 GETTABLEKS                       R3 R0 K21 ["devtoolsBridge"]
      111 GETTABLEKS                       R3 R3 K30 ["Event"]
      113 NEWCLOSURE                       R5 P6
      114 CAPTURE                          VAL R0
      115 NAMECALL                         R3 R3 K31 ["Connect"]
      117 CALL                             R3 2 0
      118 GETUPVAL                         R2 4
      119 GETTABLEKS                       R2 R2 K32 ["Localization"]
      121 GETTABLEKS                       R2 R2 K9 ["new"]
      123 DUPTABLE                         R3 K37 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "RoduxDevtools"}]
      124 GETUPVAL                         R4 5
      125 SETTABLEKS                       R4 R3 K33 ["stringResourceTable"]
      127 GETUPVAL                         R4 6
      128 SETTABLEKS                       R4 R3 K34 ["translationResourceTable"]
      130 CALL                             R2 1 1
      131 SETTABLEKS                       R2 R0 K38 ["localization"]
      133 GETUPVAL                         R2 4
      134 GETTABLEKS                       R2 R2 K39 ["Analytics"]
      136 GETTABLEKS                       R2 R2 K9 ["new"]
      138 DUPCLOSURE                       R3 K40 [PROTO_8]
      139 NEWTABLE                         R4 0 0
      141 CALL                             R2 2 1
      142 SETTABLEKS                       R2 R0 K41 ["analytics"]
      144 RETURN                           R0 0

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
        9 DUPTABLE                         R6 K16 [{["Toolbar"], ["Active"], ["Id"] = "RoduxDevtools_ToggleButton", ["Title"], ["Tooltip"], ["Icon"] = "rbxasset://textures/RoduxDevtools/ToolbarIcon.png", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 GETTABLEKS                       R7 R0 K17 ["localization"]
       16 LOADK                            R9 K18 ["Plugin"]
       17 LOADK                            R10 K19 ["Button"]
       18 NAMECALL                         R7 R7 K20 ["getText"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K9 ["Title"]
       23 GETTABLEKS                       R7 R0 K17 ["localization"]
       25 LOADK                            R9 K18 ["Plugin"]
       26 LOADK                            R10 K21 ["Description"]
       27 NAMECALL                         R7 R7 K20 ["getText"]
       29 CALL                             R7 3 1
       30 SETTABLEKS                       R7 R6 K10 ["Tooltip"]
       32 GETTABLEKS                       R7 R0 K22 ["toggleEnabled"]
       34 SETTABLEKS                       R7 R6 K13 ["OnClick"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       39 RETURN                           R3 1

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
       91 LOADN                            R12 640
       92 LOADN                            R13 480
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K31 ["Size"]
       96 GETIMPORT                        R11 K30 [Vector2.new]
       98 LOADN                            R12 400
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
      127 DUPTABLE                         R14 K46 [{["Style"] = "Box", ["Padding"] = 5}]
      128 DUPTABLE                         R15 K49 [{"Topbar", "Sections"}]
      129 GETUPVAL                         R16 5
      130 GETTABLEKS                       R16 R16 K13 ["createElement"]
      132 GETUPVAL                         R17 10
      133 DUPTABLE                         R18 K52 [{"OnSearch", "OnClearList"}]
      134 NEWCLOSURE                       R19 P1
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U11
      137 SETTABLEKS                       R19 R18 K50 ["OnSearch"]
      139 NEWCLOSURE                       R19 P2
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U12
      142 CAPTURE                          UPVAL U13
      143 SETTABLEKS                       R19 R18 K51 ["OnClearList"]
      145 CALL                             R16 2 1
      146 SETTABLEKS                       R16 R15 K47 ["Topbar"]
      148 GETUPVAL                         R16 5
      149 GETTABLEKS                       R16 R16 K13 ["createElement"]
      151 GETUPVAL                         R17 14
      152 DUPTABLE                         R18 K62 [{["UseScale"] = False, ["ClampSize"] = True, ["UseDeficit"] = True, ["Position"], ["Size"], ["MinSizes"], ["MaxSizes"], ["InitialSizes"]}]
      153 GETIMPORT                        R19 K65 [UDim2.fromOffset]
      155 LOADN                            R20 0
      156 LOADN                            R21 37
      157 CALL                             R19 2 1
      158 SETTABLEKS                       R19 R18 K58 ["Position"]
      160 GETIMPORT                        R19 K66 [UDim2.new]
      162 LOADN                            R20 1
      163 LOADN                            R21 0
      164 LOADN                            R22 1
      165 LOADN                            R23 -37
      166 CALL                             R19 4 1
      167 SETTABLEKS                       R19 R18 K31 ["Size"]
      169 NEWTABLE                         R19 0 2
      171 GETIMPORT                        R20 K68 [UDim.new]
      173 LOADN                            R21 0
      174 LOADN                            R22 150
      175 CALL                             R20 2 1
      176 GETIMPORT                        R21 K68 [UDim.new]
      178 LOADN                            R22 0
      179 LOADN                            R23 100
      180 CALL                             R21 2 -1
      181 SETLIST                          R19 R20 -1 [1]
      183 SETTABLEKS                       R19 R18 K59 ["MinSizes"]
      185 NEWTABLE                         R19 0 2
      187 GETIMPORT                        R20 K68 [UDim.new]
      189 LOADN                            R21 0
      190 LOADN                            R22 600
      191 CALL                             R20 2 1
      192 LOADNIL                          R21
      193 SETLIST                          R19 R20 2 [1]
      195 SETTABLEKS                       R19 R18 K60 ["MaxSizes"]
      197 NEWTABLE                         R19 0 2
      199 GETIMPORT                        R20 K68 [UDim.new]
      201 LOADN                            R21 0
      202 LOADN                            R22 300
      203 CALL                             R20 2 1
      204 GETIMPORT                        R21 K68 [UDim.new]
      206 LOADN                            R22 1
      207 LOADN                            R23 -300
      208 CALL                             R21 2 -1
      209 SETLIST                          R19 R20 -1 [1]
      211 SETTABLEKS                       R19 R18 K61 ["InitialSizes"]
      213 NEWTABLE                         R19 0 2
      215 GETUPVAL                         R20 5
      216 GETTABLEKS                       R20 R20 K13 ["createElement"]
      218 GETUPVAL                         R21 9
      219 DUPTABLE                         R22 K71 [{["Style"] = "BorderBox", ["Padding"] = 1}]
      220 DUPTABLE                         R23 K73 [{"EventList"}]
      221 GETUPVAL                         R24 5
      222 GETTABLEKS                       R24 R24 K13 ["createElement"]
      224 GETUPVAL                         R25 15
      225 DUPTABLE                         R26 K75 [{"OnSelected"}]
      226 NEWCLOSURE                       R27 P3
      227 CAPTURE                          VAL R0
      228 CAPTURE                          UPVAL U12
      229 SETTABLEKS                       R27 R26 K74 ["OnSelected"]
      231 CALL                             R24 2 1
      232 SETTABLEKS                       R24 R23 K72 ["EventList"]
      234 CALL                             R20 3 1
      235 GETUPVAL                         R21 5
      236 GETTABLEKS                       R21 R21 K13 ["createElement"]
      238 GETUPVAL                         R22 9
      239 DUPTABLE                         R23 K71 [{["Style"] = "BorderBox", ["Padding"] = 1}]
      240 DUPTABLE                         R24 K77 [{"Details"}]
      241 GETUPVAL                         R25 5
      242 GETTABLEKS                       R25 R25 K13 ["createElement"]
      244 GETUPVAL                         R26 16
      245 DUPTABLE                         R27 K81 [{"OnSetState", "OnUndoAction", "OnRedoAction"}]
      246 NEWCLOSURE                       R28 P4
      247 CAPTURE                          VAL R0
      248 SETTABLEKS                       R28 R27 K78 ["OnSetState"]
      250 NEWCLOSURE                       R28 P5
      251 CAPTURE                          VAL R0
      252 SETTABLEKS                       R28 R27 K79 ["OnUndoAction"]
      254 NEWCLOSURE                       R28 P6
      255 CAPTURE                          VAL R0
      256 SETTABLEKS                       R28 R27 K80 ["OnRedoAction"]
      258 CALL                             R25 2 1
      259 SETTABLEKS                       R25 R24 K76 ["Details"]
      261 CALL                             R21 3 -1
      262 SETLIST                          R19 R20 -1 [1]
      264 CALL                             R16 3 1
      265 SETTABLEKS                       R16 R15 K48 ["Sections"]
      267 CALL                             R12 3 1
      268 SETTABLEKS                       R12 R11 K40 ["Main"]
      270 CALL                             R8 3 1
      271 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      273 CALL                             R5 2 -1
      274 RETURN                           R5 -1

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
