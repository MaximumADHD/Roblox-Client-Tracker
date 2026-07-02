PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 2
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["createElement"]
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K8 [{["Image"] = "icons/status/loading_large", ["imageStyle"], ["Rotation"], ["tag"] = "anchor-center-center position-center-center size-full-full", ["testId"]}]
        8 GETTABLEKS                       R5 R0 K9 ["style"]
       10 SETTABLEKS                       R5 R4 K3 ["imageStyle"]
       12 SETTABLEKS                       R1 R4 K4 ["Rotation"]
       14 GETTABLEKS                       R5 R0 K7 ["testId"]
       16 SETTABLEKS                       R5 R4 K7 ["testId"]
       18 DUPTABLE                         R5 K11 [{"UIScale"}]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K0 ["createElement"]
       22 LOADK                            R7 K10 ["UIScale"]
       23 DUPTABLE                         R8 K13 [{"Scale"}]
       24 GETTABLEKS                       R9 R0 K14 ["scale"]
       26 SETTABLEKS                       R9 R8 K12 ["Scale"]
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K10 ["UIScale"]
       31 CALL                             R2 3 -1
       32 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 LOADN                            R3 2
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R5 0 0
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K2 ["createElement"]
       20 GETUPVAL                         R4 3
       21 DUPTABLE                         R5 K7 [{["tag"] = "anchor-center-center position-center-center size-full", ["Rotation"], ["testId"]}]
       22 SETTABLEKS                       R2 R5 K5 ["Rotation"]
       24 GETTABLEKS                       R6 R0 K6 ["testId"]
       26 SETTABLEKS                       R6 R5 K6 ["testId"]
       28 DUPTABLE                         R6 K10 [{"Circle", "UIScale"}]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K2 ["createElement"]
       32 LOADK                            R8 K11 ["Path2D"]
       33 DUPTABLE                         R9 K18 [{["ref"], ["Closed"] = False, ["Color3"], ["Transparency"], ["Thickness"]}]
       34 SETTABLEKS                       R1 R9 K12 ["ref"]
       36 GETTABLEKS                       R10 R0 K19 ["style"]
       38 DUPCLOSURE                       R12 K20 [PROTO_2]
       39 NAMECALL                         R10 R10 K21 ["map"]
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K15 ["Color3"]
       44 GETTABLEKS                       R10 R0 K19 ["style"]
       46 DUPCLOSURE                       R12 K22 [PROTO_3]
       47 NAMECALL                         R10 R10 K21 ["map"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K16 ["Transparency"]
       52 GETTABLEKS                       R10 R0 K17 ["Thickness"]
       54 SETTABLEKS                       R10 R9 K17 ["Thickness"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K8 ["Circle"]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K2 ["createElement"]
       62 LOADK                            R8 K9 ["UIScale"]
       63 DUPTABLE                         R9 K24 [{"Scale"}]
       64 GETTABLEKS                       R10 R0 K25 ["scale"]
       66 SETTABLEKS                       R10 R9 K23 ["Scale"]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K9 ["UIScale"]
       71 CALL                             R3 3 -1
       72 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPresent"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Loading"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["Default"]
       14 DUPTABLE                         R2 K4 [{"onAnimationComplete"}]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["onExitComplete"]
       18 SETTABLEKS                       R3 R2 K3 ["onAnimationComplete"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETTABLEKS                       R2 R0 K3 ["style"]
        3 GETTABLEKS                       R2 R2 K0 ["Color3"]
        5 SETTABLEKS                       R2 R1 K0 ["Color3"]
        7 GETTABLEKS                       R3 R0 K3 ["style"]
        9 GETTABLEKS                       R3 R3 K1 ["Transparency"]
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
       12 GETUPVAL                         R7 5
       13 GETTABLEKS                       R7 R7 K1 ["useEffect"]
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          VAL R6
       17 CAPTURE                          VAL R5
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R9 0 1
       21 GETTABLEKS                       R10 R6 K2 ["isPresent"]
       23 SETLIST                          R9 R10 1 [1]
       25 CALL                             R7 2 0
       26 GETUPVAL                         R7 5
       27 GETTABLEKS                       R7 R7 K3 ["createElement"]
       29 GETUPVAL                         R8 6
       30 DUPTABLE                         R9 K8 [{["tag"] = "position-center-center anchor-center-center", ["Size"], ["ref"]}]
       31 GETTABLEKS                       R10 R2 K6 ["Size"]
       33 SETTABLEKS                       R10 R9 K6 ["Size"]
       35 SETTABLEKS                       R1 R9 K7 ["ref"]
       37 DUPTABLE                         R10 K10 [{"Spinner"}]
       38 GETUPVAL                         R11 5
       39 GETTABLEKS                       R11 R11 K3 ["createElement"]
       41 GETUPVAL                         R13 7
       42 GETTABLEKS                       R13 R13 K11 ["FoundationUsePath2DSpinner"]
       44 JUMPIFNOT                        R13 ; [+2]
       45 GETUPVAL                         R12 8
       46 JUMP                             ; [+1]
       47 GETUPVAL                         R12 9
       48 DUPTABLE                         R13 K16 [{"scale", "style", "Thickness", "testId"}]
       49 GETTABLEKS                       R14 R4 K12 ["scale"]
       51 SETTABLEKS                       R14 R13 K12 ["scale"]
       53 GETUPVAL                         R14 5
       54 GETTABLEKS                       R14 R14 K17 ["joinBindings"]
       56 DUPTABLE                         R15 K19 [{"style", "transparency"}]
       57 GETTABLEKS                       R16 R2 K13 ["style"]
       59 SETTABLEKS                       R16 R15 K13 ["style"]
       61 GETTABLEKS                       R16 R4 K18 ["transparency"]
       63 SETTABLEKS                       R16 R15 K18 ["transparency"]
       65 CALL                             R14 1 1
       66 DUPCLOSURE                       R16 K20 [PROTO_6]
       67 NAMECALL                         R14 R14 K21 ["map"]
       69 CALL                             R14 2 1
       70 SETTABLEKS                       R14 R13 K13 ["style"]
       72 GETTABLEKS                       R17 R2 K6 ["Size"]
       74 GETTABLEKS                       R17 R17 K23 ["X"]
       76 GETTABLEKS                       R17 R17 K24 ["Offset"]
       78 DIVK                             R16 R17 K22 [8]
       79 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       80 GETIMPORT                        R15 K27 [math.floor]
       82 CALL                             R15 1 1
       83 FASTCALL2K                       MATH_MAX R15 K28 ; [+4]
       85 LOADK                            R16 K28 [1]
       86 GETIMPORT                        R14 K30 [math.max]
       88 CALL                             R14 2 1
       89 SETTABLEKS                       R14 R13 K14 ["Thickness"]
       91 GETTABLEKS                       R14 R2 K15 ["testId"]
       93 SETTABLEKS                       R14 R13 K15 ["testId"]
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K9 ["Spinner"]
       98 CALL                             R7 3 -1
       99 RETURN                           R7 -1

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
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R7 R7 K4 ["Parent"]
       29 GETTABLEKS                       R7 R7 K11 ["useSpinnerMotionStates"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K6 [require]
       34 GETTABLEKS                       R8 R0 K12 ["Utility"]
       36 GETTABLEKS                       R8 R8 K13 ["Flags"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETTABLEKS                       R9 R0 K14 ["Components"]
       43 GETTABLEKS                       R9 R9 K15 ["Image"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K6 [require]
       48 GETTABLEKS                       R10 R0 K14 ["Components"]
       50 GETTABLEKS                       R10 R10 K16 ["Types"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K6 [require]
       55 GETTABLEKS                       R11 R0 K14 ["Components"]
       57 GETTABLEKS                       R11 R11 K17 ["View"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETTABLEKS                       R12 R0 K12 ["Utility"]
       64 GETTABLEKS                       R12 R12 K18 ["useRotation"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K6 [require]
       69 GETTABLEKS                       R13 R0 K12 ["Utility"]
       71 GETTABLEKS                       R13 R13 K19 ["withDefaults"]
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
