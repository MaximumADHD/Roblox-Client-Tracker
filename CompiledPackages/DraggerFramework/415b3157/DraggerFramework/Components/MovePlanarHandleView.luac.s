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
        3 LOADK                            R3 K2 [{0.7, 0.7, 0.01}]
        4 MUL                              R2 R3 R1
        5 LOADK                            R4 K3 [{1.75, -1.75, 0}]
        6 MUL                              R3 R4 R1
        7 GETTABLEKS                       R4 R0 K4 ["IsView"]
        9 JUMPIFNOT                        R4 ; [+1]
       10 LOADK                            R3 K5 [{0, 0, 0}]
       11 GETTABLEKS                       R4 R0 K6 ["Hovered"]
       13 JUMPIFNOT                        R4 ; [+1]
       14 MULK                             R2 R2 K7 [1.3]
       15 GETTABLEKS                       R5 R0 K8 ["Axis"]
       17 GETIMPORT                        R6 K11 [CFrame.new]
       19 MOVE                             R7 R3
       20 CALL                             R6 1 1
       21 MUL                              R4 R5 R6
       22 MOVE                             R5 R1
       23 MOVE                             R6 R2
       24 MOVE                             R7 R4
       25 RETURN                           R5 3

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
        5 LOADK                            R7 K3 [{0.7, 0.7, 0.01}]
        6 MUL                              R6 R7 R5
        7 LOADK                            R8 K4 [{1.75, -1.75, 0}]
        8 MUL                              R7 R8 R5
        9 GETTABLEKS                       R8 R4 K5 ["IsView"]
       11 JUMPIFNOT                        R8 ; [+1]
       12 LOADK                            R7 K6 [{0, 0, 0}]
       13 GETTABLEKS                       R8 R4 K7 ["Hovered"]
       15 JUMPIFNOT                        R8 ; [+1]
       16 MULK                             R6 R6 K8 [1.3]
       17 GETTABLEKS                       R9 R4 K9 ["Axis"]
       19 GETIMPORT                        R10 K12 [CFrame.new]
       21 MOVE                             R11 R7
       22 CALL                             R10 1 1
       23 MUL                              R8 R9 R10
       24 MOVE                             R1 R5
       25 MOVE                             R2 R6
       26 MOVE                             R3 R8
       27 GETTABLEKS                       R5 R0 K0 ["props"]
       29 GETTABLEKS                       R5 R5 K14 ["Transparency"]
       31 ORK                              R4 R5 K13 [0]
       32 GETTABLEKS                       R6 R0 K0 ["props"]
       34 GETTABLEKS                       R6 R6 K15 ["ZIndex"]
       36 ORK                              R5 R6 K13 [0]
       37 NEWTABLE                         R6 1 0
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K16 ["createElement"]
       42 LOADK                            R8 K17 ["BoxHandleAdornment"]
       43 DUPTABLE                         R9 K24 [{["Adornee"], ["ZIndex"], ["Size"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["AdornCullingMode"], ["Transparency"]}]
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R10 R10 K25 ["Terrain"]
       47 SETTABLEKS                       R10 R9 K18 ["Adornee"]
       49 SETTABLEKS                       R5 R9 K15 ["ZIndex"]
       51 SETTABLEKS                       R2 R9 K19 ["Size"]
       53 SETTABLEKS                       R3 R9 K10 ["CFrame"]
       55 GETTABLEKS                       R10 R0 K0 ["props"]
       57 GETTABLEKS                       R10 R10 K26 ["Color"]
       59 SETTABLEKS                       R10 R9 K20 ["Color3"]
       61 GETUPVAL                         R10 2
       62 SETTABLEKS                       R10 R9 K23 ["AdornCullingMode"]
       64 GETTABLEKS                       R11 R0 K0 ["props"]
       66 GETTABLEKS                       R11 R11 K7 ["Hovered"]
       68 JUMPIFNOT                        R11 ; [+2]
       69 LOADN                            R10 0
       70 JUMP                             ; [+3]
       71 SUBRK                            R12 K1 [1] R4
       72 MULK                             R11 R12 K1 [1]
       73 SUBRK                            R10 K1 [1] R11
       74 SETTABLEKS                       R10 R9 K14 ["Transparency"]
       76 CALL                             R7 2 1
       77 SETTABLEKS                       R7 R6 K27 ["Box"]
       79 NEWCLOSURE                       R7 P0
       80 CAPTURE                          VAL R6
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          VAL R5
       84 CAPTURE                          UPVAL U2
       85 GETTABLEKS                       R8 R0 K0 ["props"]
       87 GETTABLEKS                       R8 R8 K28 ["TailStart"]
       89 GETTABLEKS                       R9 R0 K0 ["props"]
       91 GETTABLEKS                       R9 R9 K29 ["TailEnd"]
       93 JUMPIFNOT                        R8 ; [+87]
       94 JUMPIFNOT                        R9 ; [+86]
       95 GETTABLEKS                       R12 R0 K0 ["props"]
       97 GETTABLEKS                       R12 R12 K30 ["TailScale"]
       99 FASTCALL2                        MATH_MIN R1 R12 ; [+4]
      101 MOVE                             R11 R1
      102 GETIMPORT                        R10 K33 [math.min]
      104 CALL                             R10 2 1
      105 MULK                             R12 R10 K35 [0.1]
      106 MULK                             R11 R12 K34 [0.65]
      107 GETTABLEKS                       R12 R0 K0 ["props"]
      109 GETTABLEKS                       R12 R12 K36 ["LocalPlaneDelta"]
      111 JUMPIFNOT                        R12 ; [+69]
      112 GETTABLEKS                       R12 R0 K0 ["props"]
      114 GETTABLEKS                       R12 R12 K37 ["PlaneCf"]
      116 JUMPIFNOT                        R12 ; [+64]
      117 GETTABLEKS                       R12 R0 K0 ["props"]
      119 GETTABLEKS                       R12 R12 K36 ["LocalPlaneDelta"]
      121 GETTABLEKS                       R12 R12 K38 ["X"]
      123 GETTABLEKS                       R13 R0 K0 ["props"]
      125 GETTABLEKS                       R13 R13 K36 ["LocalPlaneDelta"]
      127 GETTABLEKS                       R13 R13 K39 ["Y"]
      129 GETTABLEKS                       R14 R0 K0 ["props"]
      131 GETTABLEKS                       R14 R14 K37 ["PlaneCf"]
      133 LOADN                            R18 0
      134 LOADN                            R19 0
      135 FASTCALL3                        VECTOR R12 R18 R19
      137 MOVE                             R17 R12
      138 GETIMPORT                        R16 K41 [Vector3.new]
      140 CALL                             R16 3 1
      141 NAMECALL                         R14 R14 K42 ["PointToWorldSpace"]
      143 CALL                             R14 2 1
      144 GETTABLEKS                       R15 R0 K0 ["props"]
      146 GETTABLEKS                       R15 R15 K37 ["PlaneCf"]
      148 LOADN                            R18 0
      149 LOADN                            R20 0
      150 FASTCALL3                        VECTOR R18 R13 R20
      152 MOVE                             R19 R13
      153 GETIMPORT                        R17 K41 [Vector3.new]
      155 CALL                             R17 3 1
      156 NAMECALL                         R15 R15 K42 ["PointToWorldSpace"]
      158 CALL                             R15 2 1
      159 MOVE                             R16 R7
      160 LOADK                            R17 K43 ["Tail1"]
      161 MOVE                             R18 R11
      162 MOVE                             R19 R8
      163 MOVE                             R20 R14
      164 GETTABLEKS                       R22 R0 K0 ["props"]
      166 GETTABLEKS                       R22 R22 K44 ["PlaneColors"]
      168 GETTABLEN                        R21 R22 1
      169 CALL                             R16 5 0
      170 MOVE                             R16 R7
      171 LOADK                            R17 K45 ["Tail2"]
      172 MOVE                             R18 R11
      173 MOVE                             R19 R8
      174 MOVE                             R20 R15
      175 GETTABLEKS                       R22 R0 K0 ["props"]
      177 GETTABLEKS                       R22 R22 K44 ["PlaneColors"]
      179 GETTABLEN                        R21 R22 2
      180 CALL                             R16 5 0
      181 GETUPVAL                         R10 0
      182 GETTABLEKS                       R10 R10 K16 ["createElement"]
      184 LOADK                            R11 K46 ["Folder"]
      185 NEWTABLE                         R12 0 0
      187 MOVE                             R13 R6
      188 CALL                             R10 3 -1
      189 RETURN                           R10 -1

PROTO_5:
        0 GETTABLEKS                       R6 R0 K1 ["Scale"]
        2 ORK                              R5 R6 K0 [1]
        3 LOADK                            R7 K2 [{0.7, 0.7, 0.01}]
        4 MUL                              R6 R7 R5
        5 LOADK                            R8 K3 [{1.75, -1.75, 0}]
        6 MUL                              R7 R8 R5
        7 GETTABLEKS                       R8 R0 K4 ["IsView"]
        9 JUMPIFNOT                        R8 ; [+1]
       10 LOADK                            R7 K5 [{0, 0, 0}]
       11 GETTABLEKS                       R8 R0 K6 ["Hovered"]
       13 JUMPIFNOT                        R8 ; [+1]
       14 MULK                             R6 R6 K7 [1.3]
       15 GETTABLEKS                       R9 R0 K8 ["Axis"]
       17 GETIMPORT                        R10 K11 [CFrame.new]
       19 MOVE                             R11 R7
       20 CALL                             R10 1 1
       21 MUL                              R8 R9 R10
       22 MOVE                             R2 R5
       23 MOVE                             R3 R6
       24 MOVE                             R4 R8
       25 GETTABLEKS                       R5 R4 K12 ["Position"]
       27 GETTABLEKS                       R7 R3 K14 ["X"]
       29 MULK                             R6 R7 K13 [0.7071067811865476]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K15 ["intersectRaySphere"]
       33 GETTABLEKS                       R8 R1 K16 ["Origin"]
       35 GETTABLEKS                       R9 R1 K17 ["Direction"]
       37 GETTABLEKS                       R9 R9 K18 ["Unit"]
       39 MOVE                             R10 R5
       40 MOVE                             R11 R6
       41 CALL                             R7 4 2
       42 JUMPIFNOT                        R7 ; [+1]
       43 RETURN                           R8 1
       44 LOADNIL                          R9
       45 RETURN                           R9 1

PROTO_6:
        0 GETTABLEKS                       R6 R0 K1 ["Scale"]
        2 ORK                              R5 R6 K0 [1]
        3 LOADK                            R7 K2 [{0.7, 0.7, 0.01}]
        4 MUL                              R6 R7 R5
        5 LOADK                            R8 K3 [{1.75, -1.75, 0}]
        6 MUL                              R7 R8 R5
        7 GETTABLEKS                       R8 R0 K4 ["IsView"]
        9 JUMPIFNOT                        R8 ; [+1]
       10 LOADK                            R7 K5 [{0, 0, 0}]
       11 GETTABLEKS                       R8 R0 K6 ["Hovered"]
       13 JUMPIFNOT                        R8 ; [+1]
       14 MULK                             R6 R6 K7 [1.3]
       15 GETTABLEKS                       R9 R0 K8 ["Axis"]
       17 GETIMPORT                        R10 K11 [CFrame.new]
       19 MOVE                             R11 R7
       20 CALL                             R10 1 1
       21 MUL                              R8 R9 R10
       22 MOVE                             R2 R5
       23 MOVE                             R3 R6
       24 MOVE                             R4 R8
       25 GETTABLEKS                       R5 R4 K12 ["Position"]
       27 GETTABLEKS                       R7 R3 K14 ["X"]
       29 MULK                             R6 R7 K13 [0.7071067811865476]
       30 GETTABLEKS                       R7 R1 K15 ["Direction"]
       32 GETTABLEKS                       R7 R7 K16 ["Unit"]
       34 GETTABLEKS                       R9 R1 K17 ["Origin"]
       36 SUB                              R8 R5 R9
       37 MOVE                             R10 R7
       38 NAMECALL                         R8 R8 K18 ["Dot"]
       40 CALL                             R8 2 1
       41 GETTABLEKS                       R10 R1 K17 ["Origin"]
       43 MUL                              R11 R7 R8
       44 ADD                              R9 R10 R11
       45 SUB                              R10 R5 R9
       46 GETTABLEKS                       R10 R10 K19 ["Magnitude"]
       48 SUB                              R11 R10 R6
       49 RETURN                           R11 1

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
       27 GETIMPORT                        R4 K15 [Enum.AdornCullingMode.Never]
       29 GETTABLEKS                       R5 R2 K16 ["PureComponent"]
       31 LOADK                            R7 K17 ["MovePlanarHandleView"]
       32 NAMECALL                         R5 R5 K18 ["extend"]
       34 CALL                             R5 2 1
       35 DUPCLOSURE                       R6 K19 [PROTO_0]
       36 SETTABLEKS                       R6 R5 K20 ["init"]
       38 DUPCLOSURE                       R6 K21 [PROTO_1]
       39 DUPCLOSURE                       R7 K22 [PROTO_2]
       40 DUPCLOSURE                       R8 K23 [PROTO_4]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R8 R5 K24 ["render"]
       46 DUPCLOSURE                       R8 K25 [PROTO_5]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R8 R5 K26 ["hitTest"]
       50 DUPCLOSURE                       R8 K27 [PROTO_6]
       51 SETTABLEKS                       R8 R5 K28 ["distanceFromHandle"]
       53 DUPCLOSURE                       R8 K29 [PROTO_7]
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R8 R5 K30 ["_planePoint"]
       57 DUPCLOSURE                       R8 K31 [PROTO_8]
       58 SETTABLEKS                       R8 R5 K32 ["getHandleDimensionForScale"]
       60 RETURN                           R5 1
