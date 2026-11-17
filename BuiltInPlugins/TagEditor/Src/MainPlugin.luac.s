PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["enabled"]
        2 NOT                              R1 R2
        3 GETUPVAL                         R2 0
        4 MOVE                             R4 R1
        5 LOADB                            R5 1
        6 NAMECALL                         R2 R2 K1 ["setEnabled"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K0 ["setEnabled"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 LOADB                            R4 0
        3 NAMECALL                         R1 R1 K0 ["setEnabled"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["props"]
        5 GETTABLEKS                       R0 R0 K1 ["pluginLoaderContext"]
        7 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       12 NAMECALL                         R0 R0 K4 ["Connect"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Enabled"]
        3 LOADB                            R4 1
        4 NAMECALL                         R1 R1 K1 ["setEnabled"]
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K2 [{[1] = False}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["Store"]
        6 GETTABLEKS                       R2 R2 K5 ["new"]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 NEWTABLE                         R5 0 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K6 ["thunkMiddleware"]
       15 SETLIST                          R5 R6 1 [1]
       17 LOADNIL                          R6
       18 CALL                             R2 4 1
       19 SETTABLEKS                       R2 R0 K7 ["store"]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R0 K8 ["toggleEnabled"]
       25 NEWCLOSURE                       R2 P1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R0 K9 ["onClose"]
       29 NEWCLOSURE                       R2 P2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R0 K10 ["onRestore"]
       33 NEWCLOSURE                       R2 P3
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R0 K11 ["onDockWidgetCreated"]
       38 NEWCLOSURE                       R2 P4
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K12 ["onWidgetEnabledChanged"]
       42 GETUPVAL                         R2 4
       43 GETTABLEKS                       R2 R2 K13 ["Localization"]
       45 GETTABLEKS                       R2 R2 K5 ["new"]
       47 DUPTABLE                         R3 K18 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TagEditor"}]
       48 GETUPVAL                         R4 5
       49 SETTABLEKS                       R4 R3 K14 ["stringResourceTable"]
       51 GETUPVAL                         R4 6
       52 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       54 CALL                             R2 1 1
       55 SETTABLEKS                       R2 R0 K19 ["localization"]
       57 GETUPVAL                         R2 4
       58 GETTABLEKS                       R2 R2 K20 ["Analytics"]
       60 GETTABLEKS                       R2 R2 K5 ["new"]
       62 GETUPVAL                         R3 7
       63 CALL                             R2 1 1
       64 SETTABLEKS                       R2 R0 K21 ["analytics"]
       66 GETUPVAL                         R2 8
       67 GETTABLEKS                       R2 R2 K5 ["new"]
       69 GETTABLEKS                       R3 R0 K7 ["store"]
       71 GETTABLEKS                       R4 R0 K21 ["analytics"]
       73 CALL                             R2 2 1
       74 SETTABLEKS                       R2 R0 K22 ["manager"]
       76 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["analytics"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K0 ["analytics"]
        6 LOADK                            R4 K1 ["toggleWidget"]
        7 NAMECALL                         R2 R2 K2 ["report"]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R2 R0 K0 ["analytics"]
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADK                            R4 K3 ["openWidget"]
       14 JUMP                             ; [+1]
       15 LOADK                            R4 K4 ["closeWidget"]
       16 NAMECALL                         R2 R2 K2 ["report"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["analytics"]
       10 LOADK                            R3 K2 ["opened"]
       11 NAMECALL                         R1 R1 K3 ["report"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 2
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 0
       18 NAMECALL                         R1 R1 K4 ["sendWindowEnabledAnalytics"]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K5 ["manager"]
       24 GETUPVAL                         R3 0
       25 NAMECALL                         R1 R1 K6 ["SetEnabled"]
       27 CALL                             R1 2 0
       28 DUPTABLE                         R1 K7 [{"enabled"}]
       29 GETUPVAL                         R2 0
       30 SETTABLEKS                       R2 R1 K0 ["enabled"]
       32 RETURN                           R1 1

PROTO_9:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 NAMECALL                         R3 R0 K0 ["setState"]
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"ToggleEditor"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K15 [{["Toolbar"], ["Active"], ["Title"] = "TagEditor", ["Tooltip"] = "", ["Icon"] = "", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 GETTABLEKS                       R7 R0 K16 ["toggleEnabled"]
       16 SETTABLEKS                       R7 R6 K12 ["OnClick"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K2 ["ToggleEditor"]
       21 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
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
       39 DUPTABLE                         R7 K13 [{"Toolbar", "MainWidget", "WorldView"}]
       40 GETUPVAL                         R9 5
       41 JUMPIF                           R9 ; [+11]
       42 GETUPVAL                         R8 6
       43 GETTABLEKS                       R8 R8 K14 ["createElement"]
       45 GETUPVAL                         R9 7
       46 DUPTABLE                         R10 K18 [{["Title"] = "tagEditorToolbar", ["RenderButtons"]}]
       47 NEWCLOSURE                       R11 P0
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R11 R10 K17 ["RenderButtons"]
       51 CALL                             R8 2 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R8
       54 SETTABLEKS                       R8 R7 K10 ["Toolbar"]
       56 GETUPVAL                         R8 6
       57 GETTABLEKS                       R8 R8 K14 ["createElement"]
       59 GETUPVAL                         R9 8
       60 NEWTABLE                         R10 16 0
       62 LOADK                            R11 K19 ["TagEditor"]
       63 SETTABLEKS                       R11 R10 K20 ["Id"]
       65 SETTABLEKS                       R4 R10 K21 ["Enabled"]
       67 GETUPVAL                         R12 5
       68 JUMPIFNOT                        R12 ; [+5]
       69 GETTABLEKS                       R11 R1 K22 ["pluginLoaderContext"]
       71 GETTABLEKS                       R11 R11 K23 ["mainDockWidget"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R11
       75 SETTABLEKS                       R11 R10 K24 ["Widget"]
       77 GETTABLEKS                       R11 R0 K8 ["localization"]
       79 LOADK                            R13 K2 ["Plugin"]
       80 LOADK                            R14 K25 ["Name"]
       81 NAMECALL                         R11 R11 K26 ["getText"]
       83 CALL                             R11 3 1
       84 SETTABLEKS                       R11 R10 K15 ["Title"]
       86 GETIMPORT                        R11 K30 [Enum.ZIndexBehavior.Sibling]
       88 SETTABLEKS                       R11 R10 K28 ["ZIndexBehavior"]
       90 GETIMPORT                        R11 K33 [Enum.InitialDockState.Right]
       92 SETTABLEKS                       R11 R10 K31 ["InitialDockState"]
       94 GETIMPORT                        R11 K35 [Vector2.new]
       96 LOADN                            R12 300
       97 LOADN                            R13 200
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K36 ["Size"]
      101 GETIMPORT                        R11 K35 [Vector2.new]
      103 LOADN                            R12 200
      104 LOADN                            R13 250
      105 CALL                             R11 2 1
      106 SETTABLEKS                       R11 R10 K37 ["MinSize"]
      108 GETTABLEKS                       R11 R0 K38 ["onClose"]
      110 SETTABLEKS                       R11 R10 K39 ["OnClose"]
      112 LOADB                            R11 1
      113 SETTABLEKS                       R11 R10 K40 ["ShouldRestore"]
      115 GETTABLEKS                       R11 R0 K41 ["onRestore"]
      117 SETTABLEKS                       R11 R10 K42 ["OnWidgetRestored"]
      119 GETUPVAL                         R12 5
      120 JUMPIFNOT                        R12 ; [+3]
      121 GETTABLEKS                       R11 R0 K43 ["onDockWidgetCreated"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R11
      125 SETTABLEKS                       R11 R10 K44 ["OnWidgetCreated"]
      127 GETUPVAL                         R11 6
      128 GETTABLEKS                       R11 R11 K45 ["Change"]
      130 GETTABLEKS                       R11 R11 K21 ["Enabled"]
      132 GETTABLEKS                       R12 R0 K46 ["onWidgetEnabledChanged"]
      134 SETTABLE                         R12 R10 R11
      135 DUPTABLE                         R11 K48 [{"MainGui"}]
      136 GETUPVAL                         R12 6
      137 GETTABLEKS                       R12 R12 K14 ["createElement"]
      139 GETUPVAL                         R13 9
      140 CALL                             R12 1 1
      141 SETTABLEKS                       R12 R11 K47 ["MainGui"]
      143 CALL                             R8 3 1
      144 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      146 GETUPVAL                         R8 6
      147 GETTABLEKS                       R8 R8 K14 ["createElement"]
      149 GETUPVAL                         R9 10
      150 CALL                             R8 1 1
      151 SETTABLEKS                       R8 R7 K12 ["WorldView"]
      153 CALL                             R5 2 -1
      154 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K9 ["UI"]
       30 GETTABLEKS                       R5 R4 K10 ["DockWidget"]
       32 GETTABLEKS                       R6 R4 K11 ["PluginButton"]
       34 GETTABLEKS                       R7 R4 K12 ["PluginToolbar"]
       36 GETTABLEKS                       R8 R3 K13 ["ContextServices"]
       38 GETTABLEKS                       R9 R8 K14 ["Plugin"]
       40 GETTABLEKS                       R10 R8 K15 ["Mouse"]
       42 GETTABLEKS                       R11 R8 K16 ["Store"]
       44 GETIMPORT                        R12 K4 [require]
       46 GETTABLEKS                       R13 R0 K17 ["Src"]
       48 GETTABLEKS                       R13 R13 K18 ["Reducers"]
       50 CALL                             R12 1 1
       51 GETIMPORT                        R13 K4 [require]
       53 GETTABLEKS                       R14 R0 K17 ["Src"]
       55 GETTABLEKS                       R14 R14 K19 ["Resources"]
       57 GETTABLEKS                       R14 R14 K20 ["MakeTheme"]
       59 CALL                             R13 1 1
       60 GETIMPORT                        R14 K4 [require]
       62 GETTABLEKS                       R15 R0 K17 ["Src"]
       64 GETTABLEKS                       R15 R15 K21 ["InitialStoreState"]
       66 CALL                             R14 1 1
       67 GETTABLEKS                       R15 R0 K17 ["Src"]
       69 GETTABLEKS                       R15 R15 K19 ["Resources"]
       71 GETTABLEKS                       R15 R15 K22 ["Localization"]
       73 GETTABLEKS                       R15 R15 K23 ["SourceStrings"]
       75 GETTABLEKS                       R16 R0 K17 ["Src"]
       77 GETTABLEKS                       R16 R16 K19 ["Resources"]
       79 GETTABLEKS                       R16 R16 K22 ["Localization"]
       81 GETTABLEKS                       R16 R16 K24 ["LocalizedStrings"]
       83 GETIMPORT                        R17 K4 [require]
       85 GETIMPORT                        R18 K1 [script]
       87 GETTABLEKS                       R18 R18 K2 ["Parent"]
       89 GETTABLEKS                       R18 R18 K25 ["TagManager"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K4 [require]
       94 GETTABLEKS                       R19 R0 K17 ["Src"]
       96 GETTABLEKS                       R19 R19 K26 ["Util"]
       98 GETTABLEKS                       R19 R19 K27 ["createAnalyticsHandlers"]
      100 CALL                             R18 1 1
      101 GETTABLEKS                       R19 R0 K17 ["Src"]
      103 GETTABLEKS                       R19 R19 K28 ["Components"]
      105 GETIMPORT                        R20 K4 [require]
      107 GETTABLEKS                       R21 R19 K29 ["MainGui"]
      109 CALL                             R20 1 1
      110 GETIMPORT                        R21 K4 [require]
      112 GETTABLEKS                       R22 R19 K30 ["WorldView"]
      114 CALL                             R21 1 1
      115 GETIMPORT                        R22 K32 [game]
      117 LOADK                            R24 K33 ["ImprovePluginSpeed_TagEditor"]
      118 NAMECALL                         R22 R22 K34 ["GetFastFlag"]
      120 CALL                             R22 2 1
      121 GETTABLEKS                       R23 R1 K35 ["PureComponent"]
      123 LOADK                            R25 K36 ["MainPlugin"]
      124 NAMECALL                         R23 R23 K37 ["extend"]
      126 CALL                             R23 2 1
      127 DUPCLOSURE                       R24 K38 [PROTO_6]
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R22
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R17
      137 SETTABLEKS                       R24 R23 K39 ["init"]
      139 DUPCLOSURE                       R24 K40 [PROTO_7]
      140 SETTABLEKS                       R24 R23 K41 ["sendWindowEnabledAnalytics"]
      142 DUPCLOSURE                       R24 K42 [PROTO_9]
      143 SETTABLEKS                       R24 R23 K43 ["setEnabled"]
      145 JUMPIF                           R22 ; [+5]
      146 DUPCLOSURE                       R24 K44 [PROTO_10]
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R6
      149 SETTABLEKS                       R24 R23 K45 ["renderButtons"]
      151 DUPCLOSURE                       R24 K46 [PROTO_12]
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R21
      163 SETTABLEKS                       R24 R23 K47 ["render"]
      165 RETURN                           R23 1
