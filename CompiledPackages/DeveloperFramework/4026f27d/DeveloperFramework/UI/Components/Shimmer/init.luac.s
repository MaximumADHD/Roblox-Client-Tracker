PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K1 ["gradientRef"]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K2 ["createBinding"]
       13 GETIMPORT                        R2 K5 [os.clock]
       15 CALL                             R2 0 -1
       16 CALL                             R1 -1 2
       17 SETTABLEKS                       R1 R0 K6 ["clockBinding"]
       19 SETTABLEKS                       R2 R0 K7 ["updateClockBinding"]
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["gradientRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K4 [os.clock]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 1
       11 SUB                              R1 R2 R3
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K6 ["Time"]
       15 DIV                              R3 R1 R4
       16 MODK                             R2 R3 K5 [1]
       17 GETUPVAL                         R3 0
       18 MOVE                             R5 R2
       19 NAMECALL                         R3 R3 K7 ["_getGradientColor"]
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R0 K8 ["Color"]
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["updateClockBinding"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 0
        7 GETIMPORT                        R0 K6 [task.wait]
        9 CALL                             R0 0 0
       10 JUMPBACK                         ; [-11]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+20]
        3 GETTABLEKS                       R1 R0 K0 ["props"]
        5 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        7 GETIMPORT                        R3 K4 [os.clock]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K5 ["RenderStepped"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R2
       17 NAMECALL                         R4 R4 K6 ["Connect"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R0 K7 ["animateConnection"]
       22 RETURN                           R0 0
       23 GETIMPORT                        R1 K10 [task.spawn]
       25 NEWCLOSURE                       R2 P1
       26 CAPTURE                          VAL R0
       27 CALL                             R1 1 1
       28 SETTABLEKS                       R1 R0 K11 ["clockTask"]
       30 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K0 ["animateConnection"]
        5 JUMPIFNOT                        R1 ; [+11]
        6 GETTABLEKS                       R1 R0 K0 ["animateConnection"]
        8 NAMECALL                         R1 R1 K1 ["Disconnect"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K4 [task.cancel]
       14 GETTABLEKS                       R2 R0 K5 ["clockTask"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R3 0
        1 LOADN                            R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 MOVE                             R0 R1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K3 ["ColorStart"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K4 ["ColorEnd"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K5 ["ColorEndTintPercent"]
       18 NAMECALL                         R1 R1 K6 ["Lerp"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K3 ["ColorStart"]
       24 MOVE                             R4 R1
       25 MOVE                             R5 R0
       26 NAMECALL                         R2 R2 K6 ["Lerp"]
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 ADD                              R2 R3 R0
        2 LOADN                            R3 0
        3 JUMPIFLT                         R2 R3 ; [+4]
        5 LOADN                            R3 1
        6 JUMPIFNOTLT                      R3 R2 ; [+13]
        8 JUMPIFNOT                        R1 ; [+10]
        9 LOADN                            R5 0
       10 LOADN                            R6 1
       11 FASTCALL3                        MATH_CLAMP R2 R5 R6
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K2 [math.clamp]
       16 CALL                             R3 3 1
       17 MOVE                             R2 R3
       18 JUMP                             ; [+1]
       19 RETURN                           R0 0
       20 MODK                             R3 R0 K3 [1]
       21 GETUPVAL                         R5 1
       22 GETIMPORT                        R6 K6 [ColorSequenceKeypoint.new]
       24 MOVE                             R7 R2
       25 GETUPVAL                         R8 2
       26 MOVE                             R9 R3
       27 CALL                             R8 1 -1
       28 CALL                             R6 -1 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R4 K9 [table.insert]
       32 CALL                             R4 -1 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Stylizer"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R2
        6 NEWTABLE                         R4 0 0
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R3
       12 ADDK                             R6 R1 K2 [-1]
       13 LOADN                            R7 0
       14 JUMPIFLT                         R6 R7 ; [+4]
       16 LOADN                            R7 1
       17 JUMPIFNOTLT                      R7 R6 ; [+10]
       19 LOADN                            R9 0
       20 LOADN                            R10 1
       21 FASTCALL3                        MATH_CLAMP R6 R9 R10
       23 MOVE                             R8 R6
       24 GETIMPORT                        R7 K5 [math.clamp]
       26 CALL                             R7 3 1
       27 MOVE                             R6 R7
       28 MOVE                             R8 R4
       29 GETIMPORT                        R9 K8 [ColorSequenceKeypoint.new]
       31 MOVE                             R10 R6
       32 MOVE                             R11 R3
       33 LOADN                            R12 0
       34 CALL                             R11 1 -1
       35 CALL                             R9 -1 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R7 K11 [table.insert]
       39 CALL                             R7 -1 0
       40 ADDK                             R6 R1 K12 [-0.5]
       41 LOADN                            R7 0
       42 JUMPIFLT                         R6 R7 ; [+17]
       44 LOADN                            R7 1
       45 JUMPIFNOTLT                      R7 R6 ; [+2]
       47 JUMP                             ; [+12]
       48 MOVE                             R8 R4
       49 GETIMPORT                        R9 K8 [ColorSequenceKeypoint.new]
       51 MOVE                             R10 R6
       52 MOVE                             R11 R3
       53 LOADK                            R12 K13 [0.5]
       54 CALL                             R11 1 -1
       55 CALL                             R9 -1 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R7 K11 [table.insert]
       59 CALL                             R7 -1 0
       60 ADDK                             R6 R1 K14 [0]
       61 LOADN                            R7 0
       62 JUMPIFLT                         R6 R7 ; [+17]
       64 LOADN                            R7 1
       65 JUMPIFNOTLT                      R7 R6 ; [+2]
       67 JUMP                             ; [+12]
       68 MOVE                             R8 R4
       69 GETIMPORT                        R9 K8 [ColorSequenceKeypoint.new]
       71 MOVE                             R10 R6
       72 MOVE                             R11 R3
       73 LOADN                            R12 0
       74 CALL                             R11 1 -1
       75 CALL                             R9 -1 -1
       76 FASTCALL                         TABLE_INSERT ; [+2]
       77 GETIMPORT                        R7 K11 [table.insert]
       79 CALL                             R7 -1 0
       80 ADDK                             R6 R1 K13 [0.5]
       81 LOADN                            R7 0
       82 JUMPIFLT                         R6 R7 ; [+17]
       84 LOADN                            R7 1
       85 JUMPIFNOTLT                      R7 R6 ; [+2]
       87 JUMP                             ; [+12]
       88 MOVE                             R8 R4
       89 GETIMPORT                        R9 K8 [ColorSequenceKeypoint.new]
       91 MOVE                             R10 R6
       92 MOVE                             R11 R3
       93 LOADK                            R12 K13 [0.5]
       94 CALL                             R11 1 -1
       95 CALL                             R9 -1 -1
       96 FASTCALL                         TABLE_INSERT ; [+2]
       97 GETIMPORT                        R7 K11 [table.insert]
       99 CALL                             R7 -1 0
      100 ADDK                             R6 R1 K15 [1]
      101 LOADN                            R7 0
      102 JUMPIFLT                         R6 R7 ; [+4]
      104 LOADN                            R7 1
      105 JUMPIFNOTLT                      R7 R6 ; [+10]
      107 LOADN                            R9 0
      108 LOADN                            R10 1
      109 FASTCALL3                        MATH_CLAMP R6 R9 R10
      111 MOVE                             R8 R6
      112 GETIMPORT                        R7 K5 [math.clamp]
      114 CALL                             R7 3 1
      115 MOVE                             R6 R7
      116 MOVE                             R8 R4
      117 GETIMPORT                        R9 K8 [ColorSequenceKeypoint.new]
      119 MOVE                             R10 R6
      120 MOVE                             R11 R3
      121 LOADN                            R12 0
      122 CALL                             R11 1 -1
      123 CALL                             R9 -1 -1
      124 FASTCALL                         TABLE_INSERT ; [+2]
      125 GETIMPORT                        R7 K11 [table.insert]
      127 CALL                             R7 -1 0
      128 GETIMPORT                        R6 K17 [ColorSequence.new]
      130 MOVE                             R7 R4
      131 CALL                             R6 1 -1
      132 RETURN                           R6 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ColorStart"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["ColorEnd"]
        6 LOADK                            R9 K4 [6.28318530717959]
        7 GETUPVAL                         R12 0
        8 GETTABLEKS                       R11 R12 K5 ["TransitionPeriod"]
       10 DIVRK                            R10 R3 K11 [NULL]
       11 MUL                              R8 R9 R10
       12 MUL                              R7 R8 R0
       13 FASTCALL1                        MATH_SIN R7 ; [+2]
       14 GETIMPORT                        R6 K8 [math.sin]
       16 CALL                             R6 1 1
       17 ADDK                             R5 R6 K3 [1]
       18 DIVK                             R4 R5 K2 [2]
       19 NAMECALL                         R1 R1 K9 ["Lerp"]
       21 CALL                             R1 3 -1
       22 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+99]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R4 R1 K2 ["BackgroundColor"]
       10 GETTABLEKS                       R5 R2 K2 ["BackgroundColor"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R5 R1 K3 ["CornerRadius"]
       16 GETTABLEKS                       R6 R2 K3 ["CornerRadius"]
       18 CALL                             R4 2 1
       19 FASTCALL1                        TYPEOF R4 ; [+3]
       20 MOVE                             R6 R4
       21 GETIMPORT                        R5 K5 [typeof]
       23 CALL                             R5 1 1
       24 JUMPIFNOTEQKS                    R5 K6 ["number"] ; [+7]
       26 GETIMPORT                        R5 K9 [UDim.new]
       28 LOADN                            R6 0
       29 MOVE                             R7 R4
       30 CALL                             R5 2 1
       31 MOVE                             R4 R5
       32 GETTABLEKS                       R5 R1 K10 ["Size"]
       34 JUMPIF                           R5 ; [+5]
       35 GETIMPORT                        R5 K13 [UDim2.fromScale]
       37 LOADN                            R6 1
       38 LOADN                            R7 1
       39 CALL                             R5 2 1
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R6 R7 K14 ["createElement"]
       43 GETUPVAL                         R7 3
       44 DUPTABLE                         R8 K18 [{"AnchorPoint", "BackgroundColor", "LayoutOrder", "Position", "Size"}]
       45 GETTABLEKS                       R9 R1 K15 ["AnchorPoint"]
       47 SETTABLEKS                       R9 R8 K15 ["AnchorPoint"]
       49 SETTABLEKS                       R3 R8 K2 ["BackgroundColor"]
       51 GETTABLEKS                       R9 R1 K16 ["LayoutOrder"]
       53 SETTABLEKS                       R9 R8 K16 ["LayoutOrder"]
       55 GETTABLEKS                       R9 R1 K17 ["Position"]
       57 SETTABLEKS                       R9 R8 K17 ["Position"]
       59 SETTABLEKS                       R5 R8 K10 ["Size"]
       61 DUPTABLE                         R9 K21 [{"UIGradient", "UICorner"}]
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R10 R11 K14 ["createElement"]
       65 LOADK                            R11 K19 ["UIGradient"]
       66 NEWTABLE                         R12 4 0
       68 LOADN                            R15 0
       69 NAMECALL                         R13 R0 K22 ["_getGradientColor"]
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K23 ["Color"]
       74 GETTABLEKS                       R13 R2 K24 ["Rotation"]
       76 SETTABLEKS                       R13 R12 K24 ["Rotation"]
       78 GETUPVAL                         R14 2
       79 GETTABLEKS                       R13 R14 K25 ["Ref"]
       81 GETTABLEKS                       R14 R0 K26 ["gradientRef"]
       83 SETTABLE                         R14 R12 R13
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K19 ["UIGradient"]
       87 JUMPIFNOT                        R4 ; [+9]
       88 GETUPVAL                         R11 2
       89 GETTABLEKS                       R10 R11 K14 ["createElement"]
       91 LOADK                            R11 K20 ["UICorner"]
       92 DUPTABLE                         R12 K27 [{"CornerRadius"}]
       93 SETTABLEKS                       R4 R12 K3 ["CornerRadius"]
       95 CALL                             R10 2 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R10
       98 SETTABLEKS                       R10 R9 K20 ["UICorner"]
      100 GETUPVAL                         R12 2
      101 GETTABLEKS                       R11 R12 K28 ["Children"]
      103 GETTABLE                         R10 R1 R11
      104 CALL                             R6 4 -1
      105 RETURN                           R6 -1
      106 GETUPVAL                         R4 2
      107 GETTABLEKS                       R3 R4 K14 ["createElement"]
      109 GETUPVAL                         R4 3
      110 DUPTABLE                         R5 K30 [{"BackgroundColor", "LayoutOrder", "Size", "Style"}]
      111 GETTABLEKS                       R6 R0 K31 ["clockBinding"]
      113 NEWCLOSURE                       R8 P0
      114 CAPTURE                          VAL R2
      115 NAMECALL                         R6 R6 K32 ["map"]
      117 CALL                             R6 2 1
      118 SETTABLEKS                       R6 R5 K2 ["BackgroundColor"]
      120 GETTABLEKS                       R6 R1 K16 ["LayoutOrder"]
      122 SETTABLEKS                       R6 R5 K16 ["LayoutOrder"]
      124 GETTABLEKS                       R6 R1 K10 ["Size"]
      126 SETTABLEKS                       R6 R5 K10 ["Size"]
      128 DUPTABLE                         R6 K27 [{"CornerRadius"}]
      129 GETTABLEKS                       R7 R2 K3 ["CornerRadius"]
      131 SETTABLEKS                       R7 R6 K3 ["CornerRadius"]
      133 SETTABLEKS                       R6 R5 K29 ["Style"]
      135 CALL                             R3 2 -1
      136 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R5 R1 K12 ["SharedFlags"]
       26 GETTABLEKS                       R4 R5 K13 ["getFFlagDevFrameworkShimmerImprovements"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K10 [require]
       31 GETTABLEKS                       R6 R1 K6 ["UI"]
       33 GETTABLEKS                       R5 R6 K14 ["ContextServices"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K15 ["withContext"]
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R8 R1 K16 ["Util"]
       42 GETTABLEKS                       R7 R8 K17 ["Typecheck"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R1 K6 ["UI"]
       47 GETIMPORT                        R8 K10 [require]
       49 GETTABLEKS                       R10 R7 K18 ["Components"]
       51 GETTABLEKS                       R9 R10 K19 ["Pane"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K10 [require]
       56 GETTABLEKS                       R11 R1 K16 ["Util"]
       58 GETTABLEKS                       R10 R11 K20 ["prioritize"]
       60 CALL                             R9 1 1
       61 GETTABLEKS                       R10 R2 K21 ["PureComponent"]
       63 LOADK                            R12 K22 ["Shimmer"]
       64 NAMECALL                         R10 R10 K23 ["extend"]
       66 CALL                             R10 2 1
       67 GETTABLEKS                       R11 R6 K24 ["wrap"]
       69 MOVE                             R12 R10
       70 GETIMPORT                        R13 K5 [script]
       72 CALL                             R11 2 0
       73 DUPCLOSURE                       R11 K25 [PROTO_0]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R11 R10 K26 ["init"]
       78 DUPCLOSURE                       R11 K27 [PROTO_3]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R11 R10 K28 ["didMount"]
       83 DUPCLOSURE                       R11 K29 [PROTO_4]
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R11 R10 K30 ["willUnmount"]
       87 DUPCLOSURE                       R11 K31 [PROTO_7]
       88 SETTABLEKS                       R11 R10 K32 ["_getGradientColor"]
       90 DUPCLOSURE                       R11 K33 [PROTO_9]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R8
       95 SETTABLEKS                       R11 R10 K34 ["render"]
       97 MOVE                             R11 R5
       98 DUPTABLE                         R12 K36 [{"Stylizer"}]
       99 GETTABLEKS                       R13 R4 K35 ["Stylizer"]
      101 SETTABLEKS                       R13 R12 K35 ["Stylizer"]
      103 CALL                             R11 1 1
      104 MOVE                             R12 R10
      105 CALL                             R11 1 1
      106 MOVE                             R10 R11
      107 RETURN                           R10 1
