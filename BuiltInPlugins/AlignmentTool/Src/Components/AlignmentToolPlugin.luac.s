PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["toolEnabled"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["setToolEnabled"]
        9 MOVE                             R2 R0
       10 LOADB                            R3 1
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setToolEnabled"]
        3 LOADB                            R1 0
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setToolEnabled"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleState"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setToolEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["Enabled"]
        5 LOADB                            R3 1
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["setToolEnabled"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 0
        7 JUMPIFNOT                        R0 ; [+22]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETTABLEKS                       R3 R2 K2 ["Analytics"]
       11 LOADK                            R5 K3 ["alignToolOpen"]
       12 NAMECALL                         R3 R3 K4 ["report"]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["_hasOpenedThisSession"]
       18 JUMPIF                           R3 ; [+18]
       19 GETTABLEKS                       R3 R2 K2 ["Analytics"]
       21 LOADK                            R5 K6 ["alignToolImpression"]
       22 NAMECALL                         R3 R3 K4 ["report"]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R3 0
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K5 ["_hasOpenedThisSession"]
       29 RETURN                           R0 0
       30 JUMPIFNOT                        R1 ; [+6]
       31 GETTABLEKS                       R3 R2 K2 ["Analytics"]
       33 LOADK                            R5 K7 ["alignToolClose"]
       34 NAMECALL                         R3 R3 K4 ["report"]
       36 CALL                             R3 2 0
       37 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_hasOpenedThisSession"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K1 ["toggleState"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K2 ["onClose"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K3 ["onRestore"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K4 ["onDockWidgetCreated"]
       19 NEWCLOSURE                       R1 P4
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K5 ["onDockWidgetEnabledChanged"]
       23 NEWCLOSURE                       R1 P5
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K6 ["setToolEnabled"]
       27 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+16]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["createElement"]
        4 GETUPVAL                         R3 1
        5 NEWTABLE                         R4 0 0
        7 DUPTABLE                         R5 K2 [{"MainView"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K0 ["createElement"]
       11 GETUPVAL                         R7 2
       12 CALL                             R6 1 1
       13 SETTABLEKS                       R6 R5 K1 ["MainView"]
       15 CALL                             R2 3 -1
       16 RETURN                           R2 -1
       17 LOADNIL                          R2
       18 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K3 ["toolEnabled"]
       10 NAMECALL                         R1 R1 K4 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["toolEnabled"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createFragment"]
        9 DUPTABLE                         R5 K5 [{"MainWidget"}]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K6 ["createElement"]
       13 GETUPVAL                         R7 1
       14 NEWTABLE                         R8 16 0
       16 LOADK                            R9 K7 ["AlignmentTool"]
       17 SETTABLEKS                       R9 R8 K8 ["Id"]
       19 SETTABLEKS                       R3 R8 K9 ["Enabled"]
       21 GETTABLEKS                       R9 R1 K10 ["pluginLoaderContext"]
       23 GETTABLEKS                       R9 R9 K11 ["mainDockWidget"]
       25 SETTABLEKS                       R9 R8 K12 ["Widget"]
       27 LOADK                            R11 K13 ["Plugin"]
       28 LOADK                            R12 K14 ["WindowTitle"]
       29 NAMECALL                         R9 R2 K15 ["getText"]
       31 CALL                             R9 3 1
       32 SETTABLEKS                       R9 R8 K16 ["Title"]
       34 GETIMPORT                        R9 K20 [Enum.ZIndexBehavior.Sibling]
       36 SETTABLEKS                       R9 R8 K18 ["ZIndexBehavior"]
       38 GETIMPORT                        R9 K23 [Enum.InitialDockState.Left]
       40 SETTABLEKS                       R9 R8 K21 ["InitialDockState"]
       42 GETUPVAL                         R9 2
       43 SETTABLEKS                       R9 R8 K24 ["Size"]
       45 GETUPVAL                         R9 3
       46 SETTABLEKS                       R9 R8 K25 ["MinSize"]
       48 GETTABLEKS                       R9 R0 K26 ["onClose"]
       50 SETTABLEKS                       R9 R8 K27 ["OnClose"]
       52 LOADB                            R9 1
       53 SETTABLEKS                       R9 R8 K28 ["ShouldRestore"]
       55 GETTABLEKS                       R9 R0 K29 ["onRestore"]
       57 SETTABLEKS                       R9 R8 K30 ["OnWidgetRestored"]
       59 GETTABLEKS                       R9 R0 K31 ["onDockWidgetCreated"]
       61 SETTABLEKS                       R9 R8 K32 ["OnWidgetCreated"]
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K33 ["Change"]
       66 GETTABLEKS                       R9 R9 K9 ["Enabled"]
       68 GETTABLEKS                       R10 R0 K34 ["onDockWidgetEnabledChanged"]
       70 SETTABLE                         R10 R8 R9
       71 DUPTABLE                         R9 K36 [{"DockWidgetContent"}]
       72 MOVE                             R12 R3
       73 NAMECALL                         R10 R0 K37 ["_renderDockWidgetContents"]
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K35 ["DockWidgetContent"]
       78 CALL                             R6 3 1
       79 SETTABLEKS                       R6 R5 K4 ["MainWidget"]
       81 CALL                             R4 1 -1
       82 RETURN                           R4 -1

PROTO_10:
        0 DUPTABLE                         R2 K1 [{"toolEnabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["toolEnabled"]
        3 SETTABLEKS                       R3 R2 K0 ["toolEnabled"]
        5 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K1 [{"setToolEnabled"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["setToolEnabled"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R1 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["DockWidget"]
       38 GETIMPORT                        R8 K4 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Actions"]
       44 GETTABLEKS                       R9 R9 K15 ["SetToolEnabled"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R10 K16 ["Thunks"]
       53 GETTABLEKS                       R10 R10 K17 ["UpdateActiveInstanceHighlight"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K4 [require]
       58 GETTABLEKS                       R11 R0 K13 ["Src"]
       60 GETTABLEKS                       R11 R11 K18 ["Components"]
       62 GETTABLEKS                       R11 R11 K19 ["MainView"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K4 [require]
       67 GETTABLEKS                       R12 R0 K13 ["Src"]
       69 GETTABLEKS                       R12 R12 K18 ["Components"]
       71 GETTABLEKS                       R12 R12 K20 ["HoverPreviewEnabler"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K23 [Vector2.new]
       76 LOADN                            R13 44
       77 LOADN                            R14 250
       78 CALL                             R12 2 1
       79 GETIMPORT                        R13 K23 [Vector2.new]
       81 LOADN                            R14 175
       82 LOADN                            R15 250
       83 CALL                             R13 2 1
       84 GETTABLEKS                       R14 R2 K24 ["PureComponent"]
       86 LOADK                            R16 K25 ["AlignmentToolPlugin"]
       87 NAMECALL                         R14 R14 K26 ["extend"]
       89 CALL                             R14 2 1
       90 DUPCLOSURE                       R15 K27 [PROTO_6]
       91 SETTABLEKS                       R15 R14 K28 ["init"]
       93 DUPCLOSURE                       R15 K29 [PROTO_7]
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R10
       97 SETTABLEKS                       R15 R14 K30 ["_renderDockWidgetContents"]
       99 DUPCLOSURE                       R15 K31 [PROTO_8]
      100 SETTABLEKS                       R15 R14 K32 ["didUpdate"]
      102 DUPCLOSURE                       R15 K33 [PROTO_9]
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 SETTABLEKS                       R15 R14 K34 ["render"]
      109 MOVE                             R15 R5
      110 DUPTABLE                         R16 K37 [{"Localization", "Analytics"}]
      111 GETTABLEKS                       R17 R4 K35 ["Localization"]
      113 SETTABLEKS                       R17 R16 K35 ["Localization"]
      115 GETTABLEKS                       R17 R4 K36 ["Analytics"]
      117 SETTABLEKS                       R17 R16 K36 ["Analytics"]
      119 CALL                             R15 1 1
      120 MOVE                             R16 R14
      121 CALL                             R15 1 1
      122 MOVE                             R14 R15
      123 DUPCLOSURE                       R15 K38 [PROTO_10]
      124 DUPCLOSURE                       R16 K39 [PROTO_12]
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R9
      127 GETTABLEKS                       R17 R3 K40 ["connect"]
      129 MOVE                             R18 R15
      130 MOVE                             R19 R16
      131 CALL                             R17 2 1
      132 MOVE                             R18 R14
      133 CALL                             R17 1 -1
      134 RETURN                           R17 -1
