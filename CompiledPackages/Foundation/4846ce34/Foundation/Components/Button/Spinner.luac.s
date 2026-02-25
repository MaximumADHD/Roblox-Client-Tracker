PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 2
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["createElement"]
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K6 [{"Image", "imageStyle", "Rotation", "tag", "testId"}]
        8 LOADK                            R5 K7 ["icons/status/loading_large"]
        9 SETTABLEKS                       R5 R4 K1 ["Image"]
       11 GETTABLEKS                       R5 R0 K8 ["style"]
       13 SETTABLEKS                       R5 R4 K2 ["imageStyle"]
       15 SETTABLEKS                       R1 R4 K3 ["Rotation"]
       17 LOADK                            R5 K9 ["anchor-center-center position-center-center size-full-full"]
       18 SETTABLEKS                       R5 R4 K4 ["tag"]
       20 GETTABLEKS                       R5 R0 K5 ["testId"]
       22 SETTABLEKS                       R5 R4 K5 ["testId"]
       24 DUPTABLE                         R5 K11 [{"UIScale"}]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K0 ["createElement"]
       28 LOADK                            R7 K10 ["UIScale"]
       29 DUPTABLE                         R8 K13 [{"Scale"}]
       30 GETTABLEKS                       R9 R0 K14 ["scale"]
       32 SETTABLEKS                       R9 R8 K12 ["Scale"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K10 ["UIScale"]
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R1 R0 K1 ["SetControlPoints"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Color3"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Transparency"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 LOADN                            R3 2
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K1 ["useEffect"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R5 0 0
       16 CALL                             R3 2 0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K2 ["createElement"]
       20 GETUPVAL                         R4 3
       21 DUPTABLE                         R5 K6 [{"tag", "Rotation", "testId"}]
       22 LOADK                            R6 K7 ["anchor-center-center position-center-center size-full"]
       23 SETTABLEKS                       R6 R5 K3 ["tag"]
       25 SETTABLEKS                       R2 R5 K4 ["Rotation"]
       27 GETTABLEKS                       R6 R0 K5 ["testId"]
       29 SETTABLEKS                       R6 R5 K5 ["testId"]
       31 DUPTABLE                         R6 K10 [{"Circle", "UIScale"}]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K2 ["createElement"]
       35 LOADK                            R8 K11 ["Path2D"]
       36 DUPTABLE                         R9 K17 [{"ref", "Closed", "Color3", "Transparency", "Thickness"}]
       37 SETTABLEKS                       R1 R9 K12 ["ref"]
       39 LOADB                            R10 0
       40 SETTABLEKS                       R10 R9 K13 ["Closed"]
       42 GETTABLEKS                       R10 R0 K18 ["style"]
       44 DUPCLOSURE                       R12 K19 [PROTO_2]
       45 NAMECALL                         R10 R10 K20 ["map"]
       47 CALL                             R10 2 1
       48 SETTABLEKS                       R10 R9 K14 ["Color3"]
       50 GETTABLEKS                       R10 R0 K18 ["style"]
       52 DUPCLOSURE                       R12 K21 [PROTO_3]
       53 NAMECALL                         R10 R10 K20 ["map"]
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K15 ["Transparency"]
       58 GETTABLEKS                       R10 R0 K16 ["Thickness"]
       60 SETTABLEKS                       R10 R9 K16 ["Thickness"]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K8 ["Circle"]
       65 GETUPVAL                         R8 0
       66 GETTABLEKS                       R7 R8 K2 ["createElement"]
       68 LOADK                            R8 K9 ["UIScale"]
       69 DUPTABLE                         R9 K23 [{"Scale"}]
       70 GETTABLEKS                       R10 R0 K24 ["scale"]
       72 SETTABLEKS                       R10 R9 K22 ["Scale"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K9 ["UIScale"]
       77 CALL                             R3 3 -1
       78 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isPresent"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["Loading"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["Default"]
       14 DUPTABLE                         R2 K4 [{"onAnimationComplete"}]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K5 ["onExitComplete"]
       18 SETTABLEKS                       R3 R2 K3 ["onAnimationComplete"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETTABLEKS                       R3 R0 K3 ["style"]
        3 GETTABLEKS                       R2 R3 K0 ["Color3"]
        5 SETTABLEKS                       R2 R1 K0 ["Color3"]
        7 GETTABLEKS                       R4 R0 K3 ["style"]
        9 GETTABLEKS                       R3 R4 K1 ["Transparency"]
       11 GETTABLEKS                       R5 R0 K5 ["transparency"]
       13 DIVK                             R4 R5 K4 [2]
       14 ADD                              R2 R3 R4
       15 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       17 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R5 R3 K0 ["Default"]
        9 CALL                             R4 1 2
       10 GETUPVAL                         R6 4
       11 CALL                             R6 0 1
       12 GETUPVAL                         R8 5
       13 GETTABLEKS                       R7 R8 K1 ["useEffect"]
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          VAL R6
       17 CAPTURE                          VAL R5
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R9 0 1
       21 GETTABLEKS                       R10 R6 K2 ["isPresent"]
       23 SETLIST                          R9 R10 1 [1]
       25 CALL                             R7 2 0
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R7 R8 K3 ["createElement"]
       29 GETUPVAL                         R8 6
       30 DUPTABLE                         R9 K7 [{"tag", "Size", "ref"}]
       31 LOADK                            R10 K8 ["position-center-center anchor-center-center"]
       32 SETTABLEKS                       R10 R9 K4 ["tag"]
       34 GETTABLEKS                       R10 R2 K5 ["Size"]
       36 SETTABLEKS                       R10 R9 K5 ["Size"]
       38 SETTABLEKS                       R1 R9 K6 ["ref"]
       40 DUPTABLE                         R10 K10 [{"Spinner"}]
       41 GETUPVAL                         R12 5
       42 GETTABLEKS                       R11 R12 K3 ["createElement"]
       44 GETUPVAL                         R14 7
       45 GETTABLEKS                       R13 R14 K11 ["FoundationUsePath2DSpinner"]
       47 JUMPIFNOT                        R13 ; [+2]
       48 GETUPVAL                         R12 8
       49 JUMP                             ; [+1]
       50 GETUPVAL                         R12 9
       51 DUPTABLE                         R13 K16 [{"scale", "style", "Thickness", "testId"}]
       52 GETTABLEKS                       R14 R4 K12 ["scale"]
       54 SETTABLEKS                       R14 R13 K12 ["scale"]
       56 GETUPVAL                         R15 5
       57 GETTABLEKS                       R14 R15 K17 ["joinBindings"]
       59 DUPTABLE                         R15 K19 [{"style", "transparency"}]
       60 GETTABLEKS                       R16 R2 K13 ["style"]
       62 SETTABLEKS                       R16 R15 K13 ["style"]
       64 GETTABLEKS                       R16 R4 K18 ["transparency"]
       66 SETTABLEKS                       R16 R15 K18 ["transparency"]
       68 CALL                             R14 1 1
       69 DUPCLOSURE                       R16 K20 [PROTO_6]
       70 NAMECALL                         R14 R14 K21 ["map"]
       72 CALL                             R14 2 1
       73 SETTABLEKS                       R14 R13 K13 ["style"]
       75 GETTABLEKS                       R19 R2 K5 ["Size"]
       77 GETTABLEKS                       R18 R19 K23 ["X"]
       79 GETTABLEKS                       R17 R18 K24 ["Offset"]
       81 DIVK                             R16 R17 K22 [8]
       82 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       83 GETIMPORT                        R15 K27 [math.floor]
       85 CALL                             R15 1 1
       86 FASTCALL2K                       MATH_MAX R15 K28 ; [+4]
       88 LOADK                            R16 K28 [1]
       89 GETIMPORT                        R14 K30 [math.max]
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K14 ["Thickness"]
       94 GETTABLEKS                       R14 R2 K15 ["testId"]
       96 SETTABLEKS                       R14 R13 K15 ["testId"]
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K9 ["Spinner"]
      101 CALL                             R7 3 -1
      102 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Motion"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["useMotion"]
       21 GETTABLEKS                       R5 R3 K10 ["usePresence"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETIMPORT                        R9 K1 [script]
       27 GETTABLEKS                       R8 R9 K4 ["Parent"]
       29 GETTABLEKS                       R7 R8 K11 ["useSpinnerMotionStates"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K6 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Utility"]
       36 GETTABLEKS                       R8 R9 K13 ["Flags"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R10 R0 K14 ["Components"]
       43 GETTABLEKS                       R9 R10 K15 ["Image"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K6 [require]
       48 GETTABLEKS                       R11 R0 K14 ["Components"]
       50 GETTABLEKS                       R10 R11 K16 ["Types"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K6 [require]
       55 GETTABLEKS                       R12 R0 K14 ["Components"]
       57 GETTABLEKS                       R11 R12 K17 ["View"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETTABLEKS                       R13 R0 K12 ["Utility"]
       64 GETTABLEKS                       R12 R13 K18 ["useRotation"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K6 [require]
       69 GETTABLEKS                       R14 R0 K12 ["Utility"]
       71 GETTABLEKS                       R13 R14 K19 ["withDefaults"]
       73 CALL                             R12 1 1
       74 DUPCLOSURE                       R13 K20 [PROTO_0]
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 NEWTABLE                         R14 0 4
       80 GETIMPORT                        R15 K23 [Path2DControlPoint.new]
       82 GETIMPORT                        R16 K26 [UDim2.fromScale]
       84 LOADN                            R17 1
       85 LOADK                            R18 K27 [0.5]
       86 CALL                             R16 2 1
       87 GETIMPORT                        R17 K26 [UDim2.fromScale]
       89 LOADN                            R18 0
       90 LOADK                            R19 K28 [0.25]
       91 CALL                             R17 2 1
       92 GETIMPORT                        R18 K26 [UDim2.fromScale]
       94 LOADN                            R19 0
       95 LOADK                            R20 K29 [-0.25]
       96 CALL                             R18 2 -1
       97 CALL                             R15 -1 1
       98 GETIMPORT                        R16 K23 [Path2DControlPoint.new]
      100 GETIMPORT                        R17 K26 [UDim2.fromScale]
      102 LOADK                            R18 K27 [0.5]
      103 LOADN                            R19 0
      104 CALL                             R17 2 1
      105 GETIMPORT                        R18 K26 [UDim2.fromScale]
      107 LOADK                            R19 K28 [0.25]
      108 LOADN                            R20 0
      109 CALL                             R18 2 1
      110 GETIMPORT                        R19 K26 [UDim2.fromScale]
      112 LOADK                            R20 K29 [-0.25]
      113 LOADN                            R21 0
      114 CALL                             R19 2 -1
      115 CALL                             R16 -1 1
      116 GETIMPORT                        R17 K23 [Path2DControlPoint.new]
      118 GETIMPORT                        R18 K26 [UDim2.fromScale]
      120 LOADN                            R19 0
      121 LOADK                            R20 K27 [0.5]
      122 CALL                             R18 2 1
      123 GETIMPORT                        R19 K26 [UDim2.fromScale]
      125 LOADN                            R20 0
      126 LOADK                            R21 K30 [-0.33]
      127 CALL                             R19 2 1
      128 GETIMPORT                        R20 K26 [UDim2.fromScale]
      130 LOADN                            R21 0
      131 LOADK                            R22 K31 [0.33]
      132 CALL                             R20 2 -1
      133 CALL                             R17 -1 1
      134 GETIMPORT                        R18 K23 [Path2DControlPoint.new]
      136 GETIMPORT                        R19 K26 [UDim2.fromScale]
      138 LOADK                            R20 K27 [0.5]
      139 LOADN                            R21 1
      140 CALL                             R19 2 1
      141 GETIMPORT                        R20 K26 [UDim2.fromScale]
      143 LOADK                            R21 K29 [-0.25]
      144 LOADN                            R22 0
      145 CALL                             R20 2 1
      146 GETIMPORT                        R21 K26 [UDim2.fromScale]
      148 LOADK                            R22 K28 [0.25]
      149 LOADN                            R23 0
      150 CALL                             R21 2 -1
      151 CALL                             R18 -1 -1
      152 SETLIST                          R14 R15 -1 [1]
      154 DUPCLOSURE                       R15 K32 [PROTO_4]
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R10
      159 DUPTABLE                         R16 K34 [{"style"}]
      160 NEWTABLE                         R17 0 0
      162 SETTABLEKS                       R17 R16 K33 ["style"]
      164 DUPCLOSURE                       R17 K35 [PROTO_7]
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R13
      175 GETTABLEKS                       R18 R2 K36 ["memo"]
      177 GETTABLEKS                       R19 R2 K37 ["forwardRef"]
      179 MOVE                             R20 R17
      180 CALL                             R19 1 -1
      181 CALL                             R18 -1 -1
      182 RETURN                           R18 -1
