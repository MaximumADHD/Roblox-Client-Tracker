PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["gradientRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gradientRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K4 [os.clock]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 1
       11 SUB                              R1 R2 R3
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K6 ["Time"]
       15 DIV                              R3 R1 R4
       16 MODK                             R2 R3 K5 [1]
       17 GETUPVAL                         R3 0
       18 MOVE                             R5 R2
       19 NAMECALL                         R3 R3 K7 ["_getGradientColor"]
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R0 K8 ["Color"]
       24 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETIMPORT                        R3 K4 [os.clock]
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K5 ["RenderStepped"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R2
       14 NAMECALL                         R4 R4 K6 ["Connect"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R0 K7 ["animateConnection"]
       19 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["animateConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["animateConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R3 0
        1 LOADN                            R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 MOVE                             R0 R1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["ColorStart"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["ColorEnd"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K5 ["ColorEndTintPercent"]
       18 NAMECALL                         R1 R1 K6 ["Lerp"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["ColorStart"]
       24 MOVE                             R4 R1
       25 MOVE                             R5 R0
       26 NAMECALL                         R2 R2 K6 ["Lerp"]
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Stylizer"]
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["BackgroundColor"]
        7 GETTABLEKS                       R5 R2 K2 ["BackgroundColor"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R5 R1 K3 ["CornerRadius"]
       13 GETTABLEKS                       R6 R2 K3 ["CornerRadius"]
       15 CALL                             R4 2 1
       16 FASTCALL1                        TYPEOF R4 ; [+3]
       17 MOVE                             R6 R4
       18 GETIMPORT                        R5 K5 [typeof]
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKS                    R5 K6 ["number"] ; [+7]
       23 GETIMPORT                        R5 K9 [UDim.new]
       25 LOADN                            R6 0
       26 MOVE                             R7 R4
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 GETTABLEKS                       R5 R1 K10 ["Size"]
       31 JUMPIF                           R5 ; [+5]
       32 GETIMPORT                        R5 K13 [UDim2.fromScale]
       34 LOADN                            R6 1
       35 LOADN                            R7 1
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K14 ["createElement"]
       40 GETUPVAL                         R7 2
       41 DUPTABLE                         R8 K18 [{"AnchorPoint", "BackgroundColor", "LayoutOrder", "Position", "Size"}]
       42 GETTABLEKS                       R9 R1 K15 ["AnchorPoint"]
       44 SETTABLEKS                       R9 R8 K15 ["AnchorPoint"]
       46 SETTABLEKS                       R3 R8 K2 ["BackgroundColor"]
       48 GETTABLEKS                       R9 R1 K16 ["LayoutOrder"]
       50 SETTABLEKS                       R9 R8 K16 ["LayoutOrder"]
       52 GETTABLEKS                       R9 R1 K17 ["Position"]
       54 SETTABLEKS                       R9 R8 K17 ["Position"]
       56 SETTABLEKS                       R5 R8 K10 ["Size"]
       58 DUPTABLE                         R9 K21 [{"UIGradient", "UICorner"}]
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K14 ["createElement"]
       62 LOADK                            R11 K19 ["UIGradient"]
       63 NEWTABLE                         R12 4 0
       65 LOADN                            R15 0
       66 NAMECALL                         R13 R0 K22 ["_getGradientColor"]
       68 CALL                             R13 2 1
       69 SETTABLEKS                       R13 R12 K23 ["Color"]
       71 GETTABLEKS                       R13 R2 K24 ["Rotation"]
       73 SETTABLEKS                       R13 R12 K24 ["Rotation"]
       75 GETUPVAL                         R13 1
       76 GETTABLEKS                       R13 R13 K25 ["Ref"]
       78 GETTABLEKS                       R14 R0 K26 ["gradientRef"]
       80 SETTABLE                         R14 R12 R13
       81 CALL                             R10 2 1
       82 SETTABLEKS                       R10 R9 K19 ["UIGradient"]
       84 JUMPIFNOT                        R4 ; [+9]
       85 GETUPVAL                         R10 1
       86 GETTABLEKS                       R10 R10 K14 ["createElement"]
       88 LOADK                            R11 K20 ["UICorner"]
       89 DUPTABLE                         R12 K27 [{"CornerRadius"}]
       90 SETTABLEKS                       R4 R12 K3 ["CornerRadius"]
       92 CALL                             R10 2 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R10
       95 SETTABLEKS                       R10 R9 K20 ["UICorner"]
       97 GETUPVAL                         R11 1
       98 GETTABLEKS                       R11 R11 K28 ["Children"]
      100 GETTABLE                         R10 R1 R11
      101 CALL                             R6 4 -1
      102 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R4 K12 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K13 ["withContext"]
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R1 K14 ["Util"]
       35 GETTABLEKS                       R6 R6 K15 ["Typecheck"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R1 K6 ["UI"]
       40 GETIMPORT                        R7 K10 [require]
       42 GETTABLEKS                       R8 R6 K16 ["Components"]
       44 GETTABLEKS                       R8 R8 K17 ["Pane"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K10 [require]
       49 GETTABLEKS                       R9 R1 K14 ["Util"]
       51 GETTABLEKS                       R9 R9 K18 ["prioritize"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R2 K19 ["PureComponent"]
       56 LOADK                            R11 K20 ["Shimmer"]
       57 NAMECALL                         R9 R9 K21 ["extend"]
       59 CALL                             R9 2 1
       60 GETTABLEKS                       R10 R5 K22 ["wrap"]
       62 MOVE                             R11 R9
       63 GETIMPORT                        R12 K5 [script]
       65 CALL                             R10 2 0
       66 DUPCLOSURE                       R10 K23 [PROTO_0]
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R10 R9 K24 ["init"]
       70 DUPCLOSURE                       R10 K25 [PROTO_2]
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R10 R9 K26 ["didMount"]
       74 DUPCLOSURE                       R10 K27 [PROTO_3]
       75 SETTABLEKS                       R10 R9 K28 ["willUnmount"]
       77 DUPCLOSURE                       R10 K29 [PROTO_6]
       78 SETTABLEKS                       R10 R9 K30 ["_getGradientColor"]
       80 DUPCLOSURE                       R10 K31 [PROTO_7]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 SETTABLEKS                       R10 R9 K32 ["render"]
       86 MOVE                             R10 R4
       87 DUPTABLE                         R11 K34 [{"Stylizer"}]
       88 GETTABLEKS                       R12 R3 K33 ["Stylizer"]
       90 SETTABLEKS                       R12 R11 K33 ["Stylizer"]
       92 CALL                             R10 1 1
       93 MOVE                             R11 R9
       94 CALL                             R10 1 1
       95 MOVE                             R9 R10
       96 RETURN                           R9 1
