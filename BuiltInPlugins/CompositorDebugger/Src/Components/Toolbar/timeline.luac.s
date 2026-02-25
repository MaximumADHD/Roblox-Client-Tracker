PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"absoluteSize"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        4 SETTABLEKS                       R4 R3 K0 ["absoluteSize"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K1 ["props"]
        3 GETTABLEKS                       R4 R5 K2 ["MouseOffset"]
        5 SUB                              R3 R0 R4
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K3 ["state"]
        9 GETTABLEKS                       R5 R6 K4 ["absoluteSize"]
       11 GETTABLEKS                       R4 R5 K5 ["X"]
       13 DIV                              R2 R3 R4
       14 SUBK                             R1 R2 K0 [1]
       15 LOADN                            R5 255
       16 LOADN                            R6 0
       17 FASTCALL3                        MATH_CLAMP R1 R5 R6
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K8 [math.clamp]
       22 CALL                             R3 3 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K1 ["props"]
       26 GETTABLEKS                       R4 R5 K9 ["Timespan"]
       28 MUL                              R2 R3 R4
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K1 ["props"]
       32 GETTABLEKS                       R3 R4 K10 ["SetScrubberOffset"]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+17]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["setScrubberPosition"]
        9 GETTABLEKS                       R4 R1 K5 ["Position"]
       11 GETTABLEKS                       R3 R4 K6 ["X"]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 0
       15 DUPTABLE                         R4 K8 [{"dragging"}]
       16 LOADB                            R5 1
       17 SETTABLEKS                       R5 R4 K7 ["dragging"]
       19 NAMECALL                         R2 R2 K9 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["dragging"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["setScrubberPosition"]
        9 GETTABLEKS                       R3 R0 K3 ["Position"]
       11 GETTABLEKS                       R2 R3 K4 ["X"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"dragging"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["dragging"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["props"]
       11 GETTABLEKS                       R0 R1 K4 ["Analytics"]
       13 LOADK                            R2 K5 ["onScrubbing"]
       14 NAMECALL                         R0 R0 K6 ["report"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"dragging"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["dragging"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onAbsoluteSizeChanged"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["setScrubberPosition"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onDragStarted"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["onDragMoved"]
       22 NEWCLOSURE                       R1 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K7 ["onDragEnded"]
       26 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Timespan"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["TIMECONTROLS_INVERVALS"]
        7 GETTABLE                         R4 R5 R3
        8 JUMPIF                           R4 ; [+7]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K2 ["TIMECONTROLS_INVERVALS"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K3 ["DEFAULT_TIMECONTROLS_INTERVAL"]
       15 GETTABLE                         R4 R5 R6
       16 GETTABLEKS                       R5 R4 K4 ["Minor"]
       18 GETTABLEKS                       R6 R4 K5 ["Medium"]
       20 GETTABLEKS                       R7 R4 K6 ["Major"]
       22 LOADNIL                          R8
       23 LOADN                            R11 0
       24 MOVE                             R9 R3
       25 MOVE                             R10 R5
       26 FORNPREP                         R9
       27 JUMPIFNOTEQKN                    R11 K7 [0] ; [+3]
       29 LOADK                            R8 K8 ["RBorder"]
       30 JUMP                             ; [+16]
       31 JUMPIFNOTEQ                      R11 R3 ; [+3]
       33 LOADK                            R8 K9 ["LBorder"]
       34 JUMP                             ; [+12]
       35 MOD                              R12 R11 R7
       36 JUMPIFNOTEQKN                    R12 K7 [0] ; [+3]
       38 LOADK                            R8 K6 ["Major"]
       39 JUMP                             ; [+7]
       40 JUMPIFNOT                        R6 ; [+5]
       41 MOD                              R12 R11 R6
       42 JUMPIFNOTEQKN                    R12 K7 [0] ; [+3]
       44 LOADK                            R8 K5 ["Medium"]
       45 JUMP                             ; [+1]
       46 LOADK                            R8 K4 ["Minor"]
       47 DIV                              R13 R11 R3
       48 SUBRK                            R12 R10 K13 [tostring]
       49 LOADK                            R14 K11 ["Tick_"]
       50 FASTCALL1                        TOSTRING R11 ; [+3]
       51 MOVE                             R16 R11
       52 GETIMPORT                        R15 K13 [tostring]
       54 CALL                             R15 1 1
       55 CONCAT                           R13 R14 R15
       56 GETUPVAL                         R15 1
       57 GETTABLEKS                       R14 R15 K14 ["createElement"]
       59 GETUPVAL                         R15 2
       60 NEWTABLE                         R16 4 0
       62 LOADN                            R17 1
       63 SETTABLEKS                       R17 R16 K15 ["ZIndex"]
       65 GETIMPORT                        R17 K18 [UDim2.fromScale]
       67 MOVE                             R18 R12
       68 LOADN                            R19 0
       69 CALL                             R17 2 1
       70 SETTABLEKS                       R17 R16 K19 ["Position"]
       72 SETTABLEKS                       R11 R16 K20 ["Tick"]
       74 GETUPVAL                         R18 1
       75 GETTABLEKS                       R17 R18 K21 ["Tag"]
       77 SETTABLE                         R8 R16 R17
       78 CALL                             R14 2 1
       79 SETTABLE                         R14 R1 R13
       80 FORNLOOP                         R9
       81 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R2 K2 ["children"]
        7 DUPTABLE                         R5 K4 [{"DragListener"}]
        8 GETTABLEKS                       R7 R1 K5 ["dragging"]
       10 JUMPIFNOT                        R7 ; [+15]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K6 ["createElement"]
       14 GETUPVAL                         R7 2
       15 DUPTABLE                         R8 K9 [{"OnDragMoved", "OnDragEnded"}]
       16 GETTABLEKS                       R9 R0 K10 ["onDragMoved"]
       18 SETTABLEKS                       R9 R8 K7 ["OnDragMoved"]
       20 GETTABLEKS                       R9 R0 K11 ["onDragEnded"]
       22 SETTABLEKS                       R9 R8 K8 ["OnDragEnded"]
       24 CALL                             R6 2 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R6
       27 SETTABLEKS                       R6 R5 K3 ["DragListener"]
       29 CALL                             R3 2 1
       30 MOVE                             R6 R3
       31 NAMECALL                         R4 R0 K12 ["renderTicks"]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K6 ["createElement"]
       37 GETUPVAL                         R5 3
       38 NEWTABLE                         R6 8 0
       40 GETTABLEKS                       R7 R2 K13 ["LayoutOrder"]
       42 SETTABLEKS                       R7 R6 K13 ["LayoutOrder"]
       44 GETTABLEKS                       R7 R2 K14 ["Size"]
       46 SETTABLEKS                       R7 R6 K14 ["Size"]
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R8 R9 K15 ["Change"]
       51 GETTABLEKS                       R7 R8 K16 ["AbsoluteSize"]
       53 GETTABLEKS                       R8 R0 K17 ["onAbsoluteSizeChanged"]
       55 SETTABLE                         R8 R6 R7
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R8 R9 K18 ["Event"]
       59 GETTABLEKS                       R7 R8 K19 ["InputBegan"]
       61 GETTABLEKS                       R8 R0 K20 ["onDragStarted"]
       63 SETTABLE                         R8 R6 R7
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R7 R8 K21 ["Tag"]
       67 GETUPVAL                         R10 1
       68 GETTABLEKS                       R9 R10 K21 ["Tag"]
       70 GETTABLE                         R8 R2 R9
       71 SETTABLE                         R8 R6 R7
       72 MOVE                             R7 R3
       73 CALL                             R4 3 -1
       74 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"SetScrubberOffset"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetScrubberOffset"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["RoactRodux"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K12 ["join"]
       44 GETTABLEKS                       R7 R3 K13 ["ContextServices"]
       46 GETTABLEKS                       R8 R7 K14 ["withContext"]
       48 GETTABLEKS                       R9 R3 K15 ["UI"]
       50 GETTABLEKS                       R10 R9 K16 ["DragListener"]
       52 GETTABLEKS                       R11 R9 K17 ["Pane"]
       54 GETIMPORT                        R12 K5 [require]
       56 GETIMPORT                        R15 K1 [script]
       58 GETTABLEKS                       R14 R15 K18 ["Parent"]
       60 GETTABLEKS                       R13 R14 K19 ["timelineTick"]
       62 CALL                             R12 1 1
       63 GETTABLEKS                       R14 R0 K20 ["Src"]
       65 GETTABLEKS                       R13 R14 K21 ["Thunks"]
       67 GETIMPORT                        R14 K5 [require]
       69 GETTABLEKS                       R15 R13 K22 ["SetScrubberOffset"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K5 [require]
       74 GETTABLEKS                       R17 R0 K20 ["Src"]
       76 GETTABLEKS                       R16 R17 K23 ["Types"]
       78 CALL                             R15 1 1
       79 GETTABLEKS                       R16 R1 K24 ["Constants"]
       81 GETTABLEKS                       R17 R4 K25 ["PureComponent"]
       83 LOADK                            R19 K26 ["Timeline"]
       84 NAMECALL                         R17 R17 K27 ["extend"]
       86 CALL                             R17 2 1
       87 DUPCLOSURE                       R18 K28 [PROTO_5]
       88 SETTABLEKS                       R18 R17 K29 ["init"]
       90 DUPCLOSURE                       R18 K30 [PROTO_6]
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R12
       94 SETTABLEKS                       R18 R17 K31 ["renderTicks"]
       96 DUPCLOSURE                       R18 K32 [PROTO_7]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R11
      101 SETTABLEKS                       R18 R17 K33 ["render"]
      103 MOVE                             R18 R8
      104 DUPTABLE                         R19 K36 [{"Analytics", "Localization"}]
      105 GETTABLEKS                       R20 R7 K34 ["Analytics"]
      107 SETTABLEKS                       R20 R19 K34 ["Analytics"]
      109 GETTABLEKS                       R20 R7 K35 ["Localization"]
      111 SETTABLEKS                       R20 R19 K35 ["Localization"]
      113 CALL                             R18 1 1
      114 MOVE                             R19 R17
      115 CALL                             R18 1 1
      116 MOVE                             R17 R18
      117 DUPCLOSURE                       R18 K37 [PROTO_9]
      118 CAPTURE                          VAL R14
      119 GETTABLEKS                       R19 R5 K38 ["connect"]
      121 LOADNIL                          R20
      122 MOVE                             R21 R18
      123 CALL                             R19 2 1
      124 MOVE                             R20 R17
      125 CALL                             R19 1 1
      126 MOVE                             R17 R19
      127 RETURN                           R17 1
