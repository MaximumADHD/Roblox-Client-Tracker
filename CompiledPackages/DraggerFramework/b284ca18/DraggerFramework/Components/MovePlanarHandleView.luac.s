PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 SUBRK                            R4 K0 [1] R0
        1 SUBRK                            R5 K0 [1] R1
        2 MUL                              R3 R4 R5
        3 SUBRK                            R2 K0 [1] R3
        4 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K1 ["Scale"]
        2 ORK                              R1 R2 K0 [1]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 0
        5 LOADK                            R6 K2 [0.01]
        6 FASTCALL                         VECTOR ; [+2]
        7 GETIMPORT                        R3 K5 [Vector3.new]
        9 CALL                             R3 3 1
       10 MUL                              R2 R3 R1
       11 GETUPVAL                         R7 0
       12 DIVK                             R6 R7 K7 [2]
       13 ADDK                             R5 R6 K6 [1.4]
       14 GETUPVAL                         R9 0
       15 DIVK                             R8 R9 K7 [2]
       16 ADDK                             R7 R8 K6 [1.4]
       17 MINUS                            R6 R7
       18 LOADN                            R7 0
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R4 K5 [Vector3.new]
       22 CALL                             R4 3 1
       23 MUL                              R3 R4 R1
       24 GETTABLEKS                       R4 R0 K8 ["IsView"]
       26 JUMPIFNOT                        R4 ; [+1]
       27 LOADK                            R3 K9 [{0, 0, 0}]
       28 GETTABLEKS                       R4 R0 K10 ["Hovered"]
       30 JUMPIFNOT                        R4 ; [+1]
       31 MULK                             R2 R2 K11 [1.3]
       32 GETTABLEKS                       R5 R0 K12 ["Axis"]
       34 GETIMPORT                        R6 K14 [CFrame.new]
       36 MOVE                             R7 R3
       37 CALL                             R6 1 1
       38 MUL                              R4 R5 R6
       39 MOVE                             R5 R1
       40 MOVE                             R6 R2
       41 MOVE                             R7 R4
       42 RETURN                           R5 3

PROTO_3:
        0 SUB                              R5 R3 R2
        1 GETTABLEKS                       R5 R5 K0 ["Magnitude"]
        3 GETIMPORT                        R6 K3 [CFrame.new]
        5 ADD                              R8 R2 R3
        6 DIVK                             R7 R8 K4 [2]
        7 MOVE                             R8 R3
        8 CALL                             R6 2 1
        9 GETUPVAL                         R7 0
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R8 R8 K5 ["createElement"]
       13 LOADK                            R9 K6 ["CylinderHandleAdornment"]
       14 DUPTABLE                         R10 K17 [{["Adornee"], ["ZIndex"], ["Radius"], ["Height"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"] = 0.5, ["AdornCullingMode"]}]
       15 GETUPVAL                         R11 2
       16 GETTABLEKS                       R11 R11 K18 ["Terrain"]
       18 SETTABLEKS                       R11 R10 K7 ["Adornee"]
       20 GETUPVAL                         R11 3
       21 SETTABLEKS                       R11 R10 K8 ["ZIndex"]
       23 SETTABLEKS                       R1 R10 K9 ["Radius"]
       25 SETTABLEKS                       R5 R10 K10 ["Height"]
       27 SETTABLEKS                       R6 R10 K1 ["CFrame"]
       29 SETTABLEKS                       R4 R10 K11 ["Color3"]
       31 GETUPVAL                         R11 4
       32 SETTABLEKS                       R11 R10 K16 ["AdornCullingMode"]
       34 CALL                             R8 2 1
       35 SETTABLE                         R8 R7 R0
       36 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R6 R4 K2 ["Scale"]
        4 ORK                              R5 R6 K1 [1]
        5 GETUPVAL                         R8 0
        6 GETUPVAL                         R9 0
        7 LOADK                            R10 K3 [0.01]
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R7 K6 [Vector3.new]
       11 CALL                             R7 3 1
       12 MUL                              R6 R7 R5
       13 GETUPVAL                         R11 0
       14 DIVK                             R10 R11 K8 [2]
       15 ADDK                             R9 R10 K7 [1.4]
       16 GETUPVAL                         R13 0
       17 DIVK                             R12 R13 K8 [2]
       18 ADDK                             R11 R12 K7 [1.4]
       19 MINUS                            R10 R11
       20 LOADN                            R11 0
       21 FASTCALL                         VECTOR ; [+2]
       22 GETIMPORT                        R8 K6 [Vector3.new]
       24 CALL                             R8 3 1
       25 MUL                              R7 R8 R5
       26 GETTABLEKS                       R8 R4 K9 ["IsView"]
       28 JUMPIFNOT                        R8 ; [+1]
       29 LOADK                            R7 K10 [{0, 0, 0}]
       30 GETTABLEKS                       R8 R4 K11 ["Hovered"]
       32 JUMPIFNOT                        R8 ; [+1]
       33 MULK                             R6 R6 K12 [1.3]
       34 GETTABLEKS                       R9 R4 K13 ["Axis"]
       36 GETIMPORT                        R10 K15 [CFrame.new]
       38 MOVE                             R11 R7
       39 CALL                             R10 1 1
       40 MUL                              R8 R9 R10
       41 MOVE                             R1 R5
       42 MOVE                             R2 R6
       43 MOVE                             R3 R8
       44 GETTABLEKS                       R5 R0 K0 ["props"]
       46 GETTABLEKS                       R5 R5 K17 ["Transparency"]
       48 ORK                              R4 R5 K16 [0]
       49 GETTABLEKS                       R6 R0 K0 ["props"]
       51 GETTABLEKS                       R6 R6 K18 ["ZIndex"]
       53 ORK                              R5 R6 K16 [0]
       54 NEWTABLE                         R6 1 0
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K19 ["createElement"]
       59 LOADK                            R8 K20 ["BoxHandleAdornment"]
       60 DUPTABLE                         R9 K27 [{["Adornee"], ["ZIndex"], ["Size"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["AdornCullingMode"], ["Transparency"]}]
       61 GETUPVAL                         R10 2
       62 GETTABLEKS                       R10 R10 K28 ["Terrain"]
       64 SETTABLEKS                       R10 R9 K21 ["Adornee"]
       66 SETTABLEKS                       R5 R9 K18 ["ZIndex"]
       68 SETTABLEKS                       R2 R9 K22 ["Size"]
       70 SETTABLEKS                       R3 R9 K14 ["CFrame"]
       72 GETTABLEKS                       R10 R0 K0 ["props"]
       74 GETTABLEKS                       R10 R10 K29 ["Color"]
       76 SETTABLEKS                       R10 R9 K23 ["Color3"]
       78 GETUPVAL                         R10 3
       79 SETTABLEKS                       R10 R9 K26 ["AdornCullingMode"]
       81 GETTABLEKS                       R11 R0 K0 ["props"]
       83 GETTABLEKS                       R11 R11 K11 ["Hovered"]
       85 JUMPIFNOT                        R11 ; [+2]
       86 LOADN                            R10 0
       87 JUMP                             ; [+3]
       88 SUBRK                            R12 K1 [1] R4
       89 MULK                             R11 R12 K1 [1]
       90 SUBRK                            R10 K1 [1] R11
       91 SETTABLEKS                       R10 R9 K17 ["Transparency"]
       93 CALL                             R7 2 1
       94 SETTABLEKS                       R7 R6 K30 ["Box"]
       96 NEWCLOSURE                       R7 P0
       97 CAPTURE                          VAL R6
       98 CAPTURE                          UPVAL U1
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          VAL R5
      101 CAPTURE                          UPVAL U3
      102 GETTABLEKS                       R8 R0 K0 ["props"]
      104 GETTABLEKS                       R8 R8 K31 ["TailStart"]
      106 GETTABLEKS                       R9 R0 K0 ["props"]
      108 GETTABLEKS                       R9 R9 K32 ["TailEnd"]
      110 JUMPIFNOT                        R8 ; [+87]
      111 JUMPIFNOT                        R9 ; [+86]
      112 GETTABLEKS                       R12 R0 K0 ["props"]
      114 GETTABLEKS                       R12 R12 K33 ["TailScale"]
      116 FASTCALL2                        MATH_MIN R1 R12 ; [+4]
      118 MOVE                             R11 R1
      119 GETIMPORT                        R10 K36 [math.min]
      121 CALL                             R10 2 1
      122 MULK                             R12 R10 K38 [0.1]
      123 MULK                             R11 R12 K37 [0.65]
      124 GETTABLEKS                       R12 R0 K0 ["props"]
      126 GETTABLEKS                       R12 R12 K39 ["LocalPlaneDelta"]
      128 JUMPIFNOT                        R12 ; [+69]
      129 GETTABLEKS                       R12 R0 K0 ["props"]
      131 GETTABLEKS                       R12 R12 K40 ["PlaneCf"]
      133 JUMPIFNOT                        R12 ; [+64]
      134 GETTABLEKS                       R12 R0 K0 ["props"]
      136 GETTABLEKS                       R12 R12 K39 ["LocalPlaneDelta"]
      138 GETTABLEKS                       R12 R12 K41 ["X"]
      140 GETTABLEKS                       R13 R0 K0 ["props"]
      142 GETTABLEKS                       R13 R13 K39 ["LocalPlaneDelta"]
      144 GETTABLEKS                       R13 R13 K42 ["Y"]
      146 GETTABLEKS                       R14 R0 K0 ["props"]
      148 GETTABLEKS                       R14 R14 K40 ["PlaneCf"]
      150 LOADN                            R18 0
      151 LOADN                            R19 0
      152 FASTCALL3                        VECTOR R12 R18 R19
      154 MOVE                             R17 R12
      155 GETIMPORT                        R16 K6 [Vector3.new]
      157 CALL                             R16 3 1
      158 NAMECALL                         R14 R14 K43 ["PointToWorldSpace"]
      160 CALL                             R14 2 1
      161 GETTABLEKS                       R15 R0 K0 ["props"]
      163 GETTABLEKS                       R15 R15 K40 ["PlaneCf"]
      165 LOADN                            R18 0
      166 LOADN                            R20 0
      167 FASTCALL3                        VECTOR R18 R13 R20
      169 MOVE                             R19 R13
      170 GETIMPORT                        R17 K6 [Vector3.new]
      172 CALL                             R17 3 1
      173 NAMECALL                         R15 R15 K43 ["PointToWorldSpace"]
      175 CALL                             R15 2 1
      176 MOVE                             R16 R7
      177 LOADK                            R17 K44 ["Tail1"]
      178 MOVE                             R18 R11
      179 MOVE                             R19 R8
      180 MOVE                             R20 R14
      181 GETTABLEKS                       R22 R0 K0 ["props"]
      183 GETTABLEKS                       R22 R22 K45 ["PlaneColors"]
      185 GETTABLEN                        R21 R22 1
      186 CALL                             R16 5 0
      187 MOVE                             R16 R7
      188 LOADK                            R17 K46 ["Tail2"]
      189 MOVE                             R18 R11
      190 MOVE                             R19 R8
      191 MOVE                             R20 R15
      192 GETTABLEKS                       R22 R0 K0 ["props"]
      194 GETTABLEKS                       R22 R22 K45 ["PlaneColors"]
      196 GETTABLEN                        R21 R22 2
      197 CALL                             R16 5 0
      198 GETUPVAL                         R10 1
      199 GETTABLEKS                       R10 R10 K19 ["createElement"]
      201 LOADK                            R11 K47 ["Folder"]
      202 NEWTABLE                         R12 0 0
      204 MOVE                             R13 R6
      205 CALL                             R10 3 -1
      206 RETURN                           R10 -1

PROTO_5:
        0 GETTABLEKS                       R6 R0 K1 ["Scale"]
        2 ORK                              R5 R6 K0 [1]
        3 GETUPVAL                         R8 0
        4 GETUPVAL                         R9 0
        5 LOADK                            R10 K2 [0.01]
        6 FASTCALL                         VECTOR ; [+2]
        7 GETIMPORT                        R7 K5 [Vector3.new]
        9 CALL                             R7 3 1
       10 MUL                              R6 R7 R5
       11 GETUPVAL                         R11 0
       12 DIVK                             R10 R11 K7 [2]
       13 ADDK                             R9 R10 K6 [1.4]
       14 GETUPVAL                         R13 0
       15 DIVK                             R12 R13 K7 [2]
       16 ADDK                             R11 R12 K6 [1.4]
       17 MINUS                            R10 R11
       18 LOADN                            R11 0
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R8 K5 [Vector3.new]
       22 CALL                             R8 3 1
       23 MUL                              R7 R8 R5
       24 GETTABLEKS                       R8 R0 K8 ["IsView"]
       26 JUMPIFNOT                        R8 ; [+1]
       27 LOADK                            R7 K9 [{0, 0, 0}]
       28 GETTABLEKS                       R8 R0 K10 ["Hovered"]
       30 JUMPIFNOT                        R8 ; [+1]
       31 MULK                             R6 R6 K11 [1.3]
       32 GETTABLEKS                       R9 R0 K12 ["Axis"]
       34 GETIMPORT                        R10 K14 [CFrame.new]
       36 MOVE                             R11 R7
       37 CALL                             R10 1 1
       38 MUL                              R8 R9 R10
       39 MOVE                             R2 R5
       40 MOVE                             R3 R6
       41 MOVE                             R4 R8
       42 GETTABLEKS                       R5 R4 K15 ["Position"]
       44 GETTABLEKS                       R7 R3 K17 ["X"]
       46 MULK                             R6 R7 K16 [0.7071067811865476]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K18 ["intersectRaySphere"]
       50 GETTABLEKS                       R8 R1 K19 ["Origin"]
       52 GETTABLEKS                       R9 R1 K20 ["Direction"]
       54 GETTABLEKS                       R9 R9 K21 ["Unit"]
       56 MOVE                             R10 R5
       57 MOVE                             R11 R6
       58 CALL                             R7 4 2
       59 JUMPIFNOT                        R7 ; [+1]
       60 RETURN                           R8 1
       61 LOADNIL                          R9
       62 RETURN                           R9 1

PROTO_6:
        0 GETTABLEKS                       R6 R0 K1 ["Scale"]
        2 ORK                              R5 R6 K0 [1]
        3 GETUPVAL                         R8 0
        4 GETUPVAL                         R9 0
        5 LOADK                            R10 K2 [0.01]
        6 FASTCALL                         VECTOR ; [+2]
        7 GETIMPORT                        R7 K5 [Vector3.new]
        9 CALL                             R7 3 1
       10 MUL                              R6 R7 R5
       11 GETUPVAL                         R11 0
       12 DIVK                             R10 R11 K7 [2]
       13 ADDK                             R9 R10 K6 [1.4]
       14 GETUPVAL                         R13 0
       15 DIVK                             R12 R13 K7 [2]
       16 ADDK                             R11 R12 K6 [1.4]
       17 MINUS                            R10 R11
       18 LOADN                            R11 0
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R8 K5 [Vector3.new]
       22 CALL                             R8 3 1
       23 MUL                              R7 R8 R5
       24 GETTABLEKS                       R8 R0 K8 ["IsView"]
       26 JUMPIFNOT                        R8 ; [+1]
       27 LOADK                            R7 K9 [{0, 0, 0}]
       28 GETTABLEKS                       R8 R0 K10 ["Hovered"]
       30 JUMPIFNOT                        R8 ; [+1]
       31 MULK                             R6 R6 K11 [1.3]
       32 GETTABLEKS                       R9 R0 K12 ["Axis"]
       34 GETIMPORT                        R10 K14 [CFrame.new]
       36 MOVE                             R11 R7
       37 CALL                             R10 1 1
       38 MUL                              R8 R9 R10
       39 MOVE                             R2 R5
       40 MOVE                             R3 R6
       41 MOVE                             R4 R8
       42 GETTABLEKS                       R5 R4 K15 ["Position"]
       44 GETTABLEKS                       R7 R3 K17 ["X"]
       46 MULK                             R6 R7 K16 [0.7071067811865476]
       47 GETTABLEKS                       R7 R1 K18 ["Direction"]
       49 GETTABLEKS                       R7 R7 K19 ["Unit"]
       51 GETTABLEKS                       R9 R1 K20 ["Origin"]
       53 SUB                              R8 R5 R9
       54 MOVE                             R10 R7
       55 NAMECALL                         R8 R8 K21 ["Dot"]
       57 CALL                             R8 2 1
       58 GETTABLEKS                       R10 R1 K20 ["Origin"]
       60 MUL                              R11 R7 R8
       61 ADD                              R9 R10 R11
       62 SUB                              R10 R5 R9
       63 GETTABLEKS                       R10 R10 K22 ["Magnitude"]
       65 SUB                              R11 R10 R6
       66 RETURN                           R11 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["Position"]
        2 GETTABLEKS                       R3 R0 K1 ["LookVector"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["intersectRayPlane"]
        7 GETTABLEKS                       R5 R1 K3 ["Origin"]
        9 GETTABLEKS                       R6 R1 K4 ["Direction"]
       11 GETTABLEKS                       R6 R6 K5 ["Unit"]
       13 MOVE                             R7 R2
       14 MOVE                             R8 R3
       15 CALL                             R4 4 1
       16 JUMPIFNOT                        R4 ; [+9]
       17 GETTABLEKS                       R6 R1 K3 ["Origin"]
       19 GETTABLEKS                       R8 R1 K4 ["Direction"]
       21 GETTABLEKS                       R8 R8 K5 ["Unit"]
       23 MUL                              R7 R8 R4
       24 ADD                              R5 R6 R7
       25 RETURN                           R5 1
       26 LOADNIL                          R5
       27 RETURN                           R5 1

PROTO_8:
        0 LOADNIL                          R2
        1 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Parent"]
       17 GETTABLEKS                       R3 R3 K9 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Utility"]
       24 GETTABLEKS                       R4 R4 K11 ["Math"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Flags"]
       31 GETTABLEKS                       R5 R5 K13 ["getFFlagDraggerHandlePickability"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K17 [Enum.AdornCullingMode.Never]
       36 GETTABLEKS                       R6 R2 K18 ["PureComponent"]
       38 LOADK                            R8 K19 ["MovePlanarHandleView"]
       39 NAMECALL                         R6 R6 K20 ["extend"]
       41 CALL                             R6 2 1
       42 MOVE                             R8 R4
       43 CALL                             R8 0 1
       44 JUMPIFNOT                        R8 ; [+2]
       45 LOADK                            R7 K21 [0.8]
       46 JUMP                             ; [+1]
       47 LOADK                            R7 K22 [0.7]
       48 DUPCLOSURE                       R8 K23 [PROTO_0]
       49 SETTABLEKS                       R8 R6 K24 ["init"]
       51 DUPCLOSURE                       R8 K25 [PROTO_1]
       52 DUPCLOSURE                       R9 K26 [PROTO_2]
       53 CAPTURE                          VAL R7
       54 DUPCLOSURE                       R10 K27 [PROTO_4]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R10 R6 K28 ["render"]
       61 DUPCLOSURE                       R10 K29 [PROTO_5]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R10 R6 K30 ["hitTest"]
       66 DUPCLOSURE                       R10 K31 [PROTO_6]
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R10 R6 K32 ["distanceFromHandle"]
       70 DUPCLOSURE                       R10 K33 [PROTO_7]
       71 CAPTURE                          VAL R3
       72 SETTABLEKS                       R10 R6 K34 ["_planePoint"]
       74 DUPCLOSURE                       R10 K35 [PROTO_8]
       75 SETTABLEKS                       R10 R6 K36 ["getHandleDimensionForScale"]
       77 RETURN                           R6 1
