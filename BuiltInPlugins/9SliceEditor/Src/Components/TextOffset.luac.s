PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Left"]
        3 GETTABLEKS                       R2 R2 K1 ["rawValue"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["Right"]
        9 GETTABLEKS                       R3 R3 K1 ["rawValue"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["Top"]
       15 GETTABLEKS                       R4 R4 K1 ["rawValue"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K4 ["Bottom"]
       21 GETTABLEKS                       R5 R5 K1 ["rawValue"]
       23 CALL                             R5 0 1
       24 GETTABLE                         R6 R0 R2
       25 GETTABLEKS                       R8 R1 K5 ["X"]
       27 GETTABLE                         R9 R0 R3
       28 SUB                              R7 R8 R9
       29 GETTABLE                         R8 R0 R4
       30 GETTABLEKS                       R10 R1 K6 ["Y"]
       32 GETTABLE                         R11 R0 R5
       33 SUB                              R9 R10 R11
       34 NEWTABLE                         R10 0 4
       36 MOVE                             R11 R6
       37 MOVE                             R12 R7
       38 MOVE                             R13 R8
       39 MOVE                             R14 R9
       40 SETLIST                          R10 R11 4 [1]
       42 RETURN                           R10 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["sliceRect"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["setSliceRect"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["props"]
       13 GETTABLEKS                       R4 R4 K3 ["pixelDimensions"]
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R2
       17 MOVE                             R7 R4
       18 CALL                             R5 2 1
       19 GETUPVAL                         R7 2
       20 GETTABLE                         R6 R5 R7
       21 GETTABLEKS                       R8 R1 K4 ["Text"]
       23 FASTCALL1                        TONUMBER R8 ; [+2]
       24 GETIMPORT                        R7 K6 [tonumber]
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+38]
       28 LOADN                            R10 0
       29 GETUPVAL                         R12 3
       30 GETTABLE                         R11 R2 R12
       31 FASTCALL3                        MATH_CLAMP R7 R10 R11
       33 MOVE                             R9 R7
       34 GETIMPORT                        R8 K9 [math.clamp]
       36 CALL                             R8 3 1
       37 FASTCALL1                        MATH_ROUND R8 ; [+3]
       38 MOVE                             R10 R8
       39 GETIMPORT                        R9 K11 [math.round]
       41 CALL                             R9 1 1
       42 MOVE                             R8 R9
       43 NEWTABLE                         R9 0 4
       45 MOVE                             R10 R8
       46 GETUPVAL                         R12 3
       47 GETTABLE                         R11 R2 R12
       48 GETUPVAL                         R13 4
       49 GETTABLE                         R12 R2 R13
       50 GETUPVAL                         R14 5
       51 GETTABLE                         R13 R2 R14
       52 SETLIST                          R9 R10 4 [1]
       54 MOVE                             R10 R3
       55 MOVE                             R11 R9
       56 LOADB                            R12 1
       57 CALL                             R10 2 0
       58 LOADK                            R10 K12 ["%d"]
       59 MOVE                             R12 R8
       60 NAMECALL                         R10 R10 K13 ["format"]
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R1 K4 ["Text"]
       65 RETURN                           R0 0
       66 LOADK                            R8 K12 ["%d"]
       67 MOVE                             R10 R6
       68 NAMECALL                         R8 R8 K13 ["format"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R1 K4 ["Text"]
       73 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["sliceRect"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["setSliceRect"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["props"]
       13 GETTABLEKS                       R4 R4 K3 ["pixelDimensions"]
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R2
       17 MOVE                             R7 R4
       18 CALL                             R5 2 1
       19 GETUPVAL                         R7 2
       20 GETTABLE                         R6 R5 R7
       21 GETTABLEKS                       R8 R1 K4 ["Text"]
       23 FASTCALL1                        TONUMBER R8 ; [+2]
       24 GETIMPORT                        R7 K6 [tonumber]
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+44]
       28 LOADN                            R10 0
       29 GETTABLEKS                       R12 R4 K7 ["X"]
       31 GETUPVAL                         R14 3
       32 GETTABLE                         R13 R2 R14
       33 SUB                              R11 R12 R13
       34 FASTCALL3                        MATH_CLAMP R7 R10 R11
       36 MOVE                             R9 R7
       37 GETIMPORT                        R8 K10 [math.clamp]
       39 CALL                             R8 3 1
       40 FASTCALL1                        MATH_ROUND R8 ; [+3]
       41 MOVE                             R10 R8
       42 GETIMPORT                        R9 K12 [math.round]
       44 CALL                             R9 1 1
       45 MOVE                             R8 R9
       46 GETTABLEKS                       R10 R4 K7 ["X"]
       48 SUB                              R9 R10 R8
       49 NEWTABLE                         R10 0 4
       51 GETUPVAL                         R12 3
       52 GETTABLE                         R11 R2 R12
       53 MOVE                             R12 R9
       54 GETUPVAL                         R14 4
       55 GETTABLE                         R13 R2 R14
       56 GETUPVAL                         R15 5
       57 GETTABLE                         R14 R2 R15
       58 SETLIST                          R10 R11 4 [1]
       60 MOVE                             R11 R3
       61 MOVE                             R12 R10
       62 LOADB                            R13 1
       63 CALL                             R11 2 0
       64 LOADK                            R11 K13 ["%d"]
       65 MOVE                             R13 R8
       66 NAMECALL                         R11 R11 K14 ["format"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R1 K4 ["Text"]
       71 RETURN                           R0 0
       72 LOADK                            R8 K13 ["%d"]
       73 MOVE                             R10 R6
       74 NAMECALL                         R8 R8 K14 ["format"]
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R1 K4 ["Text"]
       79 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["sliceRect"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["setSliceRect"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["props"]
       13 GETTABLEKS                       R4 R4 K3 ["pixelDimensions"]
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R2
       17 MOVE                             R7 R4
       18 CALL                             R5 2 1
       19 GETUPVAL                         R7 2
       20 GETTABLE                         R6 R5 R7
       21 GETTABLEKS                       R8 R1 K4 ["Text"]
       23 FASTCALL1                        TONUMBER R8 ; [+2]
       24 GETIMPORT                        R7 K6 [tonumber]
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+38]
       28 LOADN                            R10 0
       29 GETUPVAL                         R12 3
       30 GETTABLE                         R11 R2 R12
       31 FASTCALL3                        MATH_CLAMP R7 R10 R11
       33 MOVE                             R9 R7
       34 GETIMPORT                        R8 K9 [math.clamp]
       36 CALL                             R8 3 1
       37 FASTCALL1                        MATH_ROUND R8 ; [+3]
       38 MOVE                             R10 R8
       39 GETIMPORT                        R9 K11 [math.round]
       41 CALL                             R9 1 1
       42 MOVE                             R8 R9
       43 NEWTABLE                         R9 0 4
       45 GETUPVAL                         R11 4
       46 GETTABLE                         R10 R2 R11
       47 GETUPVAL                         R12 5
       48 GETTABLE                         R11 R2 R12
       49 MOVE                             R12 R8
       50 GETUPVAL                         R14 3
       51 GETTABLE                         R13 R2 R14
       52 SETLIST                          R9 R10 4 [1]
       54 MOVE                             R10 R3
       55 MOVE                             R11 R9
       56 LOADB                            R12 1
       57 CALL                             R10 2 0
       58 LOADK                            R10 K12 ["%d"]
       59 MOVE                             R12 R8
       60 NAMECALL                         R10 R10 K13 ["format"]
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R1 K4 ["Text"]
       65 RETURN                           R0 0
       66 LOADK                            R8 K12 ["%d"]
       67 MOVE                             R10 R6
       68 NAMECALL                         R8 R8 K13 ["format"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R1 K4 ["Text"]
       73 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["sliceRect"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["setSliceRect"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["props"]
       13 GETTABLEKS                       R4 R4 K3 ["pixelDimensions"]
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R2
       17 MOVE                             R7 R4
       18 CALL                             R5 2 1
       19 GETUPVAL                         R7 2
       20 GETTABLE                         R6 R5 R7
       21 GETTABLEKS                       R8 R1 K4 ["Text"]
       23 FASTCALL1                        TONUMBER R8 ; [+2]
       24 GETIMPORT                        R7 K6 [tonumber]
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+44]
       28 LOADN                            R10 0
       29 GETTABLEKS                       R12 R4 K7 ["Y"]
       31 GETUPVAL                         R14 3
       32 GETTABLE                         R13 R2 R14
       33 SUB                              R11 R12 R13
       34 FASTCALL3                        MATH_CLAMP R7 R10 R11
       36 MOVE                             R9 R7
       37 GETIMPORT                        R8 K10 [math.clamp]
       39 CALL                             R8 3 1
       40 FASTCALL1                        MATH_ROUND R8 ; [+3]
       41 MOVE                             R10 R8
       42 GETIMPORT                        R9 K12 [math.round]
       44 CALL                             R9 1 1
       45 MOVE                             R8 R9
       46 GETTABLEKS                       R10 R4 K7 ["Y"]
       48 SUB                              R9 R10 R8
       49 NEWTABLE                         R10 0 4
       51 GETUPVAL                         R12 4
       52 GETTABLE                         R11 R2 R12
       53 GETUPVAL                         R13 5
       54 GETTABLE                         R12 R2 R13
       55 GETUPVAL                         R14 3
       56 GETTABLE                         R13 R2 R14
       57 MOVE                             R14 R9
       58 SETLIST                          R10 R11 4 [1]
       60 MOVE                             R11 R3
       61 MOVE                             R12 R10
       62 LOADB                            R13 1
       63 CALL                             R11 2 0
       64 LOADK                            R11 K13 ["%d"]
       65 MOVE                             R13 R8
       66 NAMECALL                         R11 R11 K14 ["format"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R1 K4 ["Text"]
       71 RETURN                           R0 0
       72 LOADK                            R8 K13 ["%d"]
       73 MOVE                             R10 R6
       74 NAMECALL                         R8 R8 K14 ["format"]
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R1 K4 ["Text"]
       79 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 SETTABLEKS                       R2 R0 K0 ["onLeftFocusLost"]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 SETTABLEKS                       R2 R0 K1 ["onRightFocusLost"]
       18 NEWCLOSURE                       R2 P2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 SETTABLEKS                       R2 R0 K2 ["onTopFocusLost"]
       27 NEWCLOSURE                       R2 P3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 SETTABLEKS                       R2 R0 K3 ["onBottomFocusLost"]
       36 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["pixelDimensions"]
        6 GETTABLEKS                       R4 R1 K3 ["sliceRect"]
        8 GETTABLEKS                       R5 R1 K4 ["orientation"]
       10 GETTABLEKS                       R6 R2 K5 ["TextOffsetItem"]
       12 LOADNIL                          R7
       13 GETUPVAL                         R8 0
       14 MOVE                             R9 R4
       15 MOVE                             R10 R3
       16 CALL                             R8 2 1
       17 GETTABLE                         R9 R8 R5
       18 GETUPVAL                         R10 1
       19 JUMPIFNOTEQ                      R5 R10 ; [+4]
       21 GETTABLEKS                       R7 R0 K6 ["onLeftFocusLost"]
       23 JUMP                             ; [+17]
       24 GETUPVAL                         R10 2
       25 JUMPIFNOTEQ                      R5 R10 ; [+4]
       27 GETTABLEKS                       R7 R0 K7 ["onRightFocusLost"]
       29 JUMP                             ; [+11]
       30 GETUPVAL                         R10 3
       31 JUMPIFNOTEQ                      R5 R10 ; [+4]
       33 GETTABLEKS                       R7 R0 K8 ["onTopFocusLost"]
       35 JUMP                             ; [+5]
       36 GETUPVAL                         R10 4
       37 JUMPIFNOTEQ                      R5 R10 ; [+3]
       39 GETTABLEKS                       R7 R0 K9 ["onBottomFocusLost"]
       41 GETUPVAL                         R10 5
       42 GETTABLEKS                       R10 R10 K10 ["createElement"]
       44 GETUPVAL                         R11 6
       45 DUPTABLE                         R12 K13 [{"Size", "LayoutOrder"}]
       46 GETTABLEKS                       R13 R6 K14 ["PaneSize"]
       48 SETTABLEKS                       R13 R12 K11 ["Size"]
       50 GETTABLEKS                       R14 R1 K16 ["layoutOrder"]
       52 ORK                              R13 R14 K15 [0]
       53 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       55 DUPTABLE                         R13 K19 [{"Label", "TextInput"}]
       56 GETUPVAL                         R14 5
       57 GETTABLEKS                       R14 R14 K10 ["createElement"]
       59 GETUPVAL                         R15 7
       60 DUPTABLE                         R16 K25 [{"Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment"}]
       61 GETIMPORT                        R17 K28 [UDim2.fromOffset]
       63 LOADN                            R18 0
       64 LOADN                            R19 0
       65 CALL                             R17 2 1
       66 SETTABLEKS                       R17 R16 K20 ["Position"]
       68 GETIMPORT                        R17 K30 [UDim2.new]
       70 LOADN                            R18 0
       71 GETTABLEKS                       R19 R6 K31 ["LabelXWidth"]
       73 LOADN                            R20 1
       74 LOADN                            R21 0
       75 CALL                             R17 4 1
       76 SETTABLEKS                       R17 R16 K11 ["Size"]
       78 GETTABLEKS                       R18 R1 K33 ["labelText"]
       80 ORK                              R17 R18 K32 [""]
       81 SETTABLEKS                       R17 R16 K21 ["Text"]
       83 GETUPVAL                         R17 8
       84 GETTABLEKS                       R17 R17 K34 ["TEXTSIZE"]
       86 SETTABLEKS                       R17 R16 K22 ["TextSize"]
       88 GETIMPORT                        R17 K37 [Enum.TextXAlignment.Right]
       90 SETTABLEKS                       R17 R16 K23 ["TextXAlignment"]
       92 GETIMPORT                        R17 K39 [Enum.TextYAlignment.Center]
       94 SETTABLEKS                       R17 R16 K24 ["TextYAlignment"]
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K17 ["Label"]
       99 GETUPVAL                         R14 5
      100 GETTABLEKS                       R14 R14 K10 ["createElement"]
      102 GETUPVAL                         R15 9
      103 DUPTABLE                         R16 K43 [{"Enabled", "Size", "Position", "Style", "Text", "TextXAlignment", "OnFocusLost"}]
      104 LOADB                            R17 1
      105 SETTABLEKS                       R17 R16 K40 ["Enabled"]
      107 GETTABLEKS                       R17 R6 K44 ["TextBoxSize"]
      109 SETTABLEKS                       R17 R16 K11 ["Size"]
      111 GETIMPORT                        R17 K28 [UDim2.fromOffset]
      113 GETTABLEKS                       R19 R6 K31 ["LabelXWidth"]
      115 GETTABLEKS                       R20 R6 K45 ["LabelTextBoxSpacing"]
      117 ADD                              R18 R19 R20
      118 LOADN                            R19 0
      119 CALL                             R17 2 1
      120 SETTABLEKS                       R17 R16 K20 ["Position"]
      122 GETTABLEKS                       R17 R6 K41 ["Style"]
      124 SETTABLEKS                       R17 R16 K41 ["Style"]
      126 LOADK                            R17 K46 ["%d"]
      127 MOVE                             R19 R9
      128 NAMECALL                         R17 R17 K47 ["format"]
      130 CALL                             R17 2 1
      131 SETTABLEKS                       R17 R16 K21 ["Text"]
      133 GETIMPORT                        R17 K49 [Enum.TextXAlignment.Left]
      135 SETTABLEKS                       R17 R16 K23 ["TextXAlignment"]
      137 SETTABLEKS                       R7 R16 K42 ["OnFocusLost"]
      139 CALL                             R14 2 1
      140 SETTABLEKS                       R14 R13 K18 ["TextInput"]
      142 CALL                             R10 3 -1
      143 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["Orientation"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K12 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K13 ["withContext"]
       45 GETTABLEKS                       R7 R5 K14 ["Analytics"]
       47 GETTABLEKS                       R8 R5 K15 ["Localization"]
       49 GETTABLEKS                       R9 R2 K16 ["UI"]
       51 GETTABLEKS                       R10 R9 K17 ["DEPRECATED_TextInput"]
       53 GETTABLEKS                       R11 R9 K18 ["TextLabel"]
       55 GETTABLEKS                       R12 R9 K19 ["Pane"]
       57 GETTABLEKS                       R13 R1 K20 ["PureComponent"]
       59 LOADK                            R15 K21 ["TextOffset"]
       60 NAMECALL                         R13 R13 K22 ["extend"]
       62 CALL                             R13 2 1
       63 GETTABLEKS                       R14 R4 K23 ["Left"]
       65 GETTABLEKS                       R14 R14 K24 ["rawValue"]
       67 CALL                             R14 0 1
       68 GETTABLEKS                       R15 R4 K25 ["Right"]
       70 GETTABLEKS                       R15 R15 K24 ["rawValue"]
       72 CALL                             R15 0 1
       73 GETTABLEKS                       R16 R4 K26 ["Top"]
       75 GETTABLEKS                       R16 R16 K24 ["rawValue"]
       77 CALL                             R16 0 1
       78 GETTABLEKS                       R17 R4 K27 ["Bottom"]
       80 GETTABLEKS                       R17 R17 K24 ["rawValue"]
       82 CALL                             R17 0 1
       83 DUPCLOSURE                       R18 K28 [PROTO_0]
       84 CAPTURE                          VAL R4
       85 DUPCLOSURE                       R19 K29 [PROTO_5]
       86 CAPTURE                          VAL R18
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R17
       91 SETTABLEKS                       R19 R13 K30 ["init"]
       93 DUPCLOSURE                       R19 K31 [PROTO_6]
       94 CAPTURE                          VAL R18
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R17
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R10
      104 SETTABLEKS                       R19 R13 K32 ["render"]
      106 MOVE                             R19 R6
      107 DUPTABLE                         R20 K34 [{"Analytics", "Localization", "Stylizer"}]
      108 SETTABLEKS                       R7 R20 K14 ["Analytics"]
      110 SETTABLEKS                       R8 R20 K15 ["Localization"]
      112 GETTABLEKS                       R21 R5 K33 ["Stylizer"]
      114 SETTABLEKS                       R21 R20 K33 ["Stylizer"]
      116 CALL                             R19 1 1
      117 MOVE                             R20 R13
      118 CALL                             R19 1 1
      119 MOVE                             R13 R19
      120 RETURN                           R13 1
