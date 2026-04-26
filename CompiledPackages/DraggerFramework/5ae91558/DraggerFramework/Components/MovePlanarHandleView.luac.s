PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 SUBRK                            R4 R0 K0 [1]
        1 SUBRK                            R5 R0 K1 [NULL]
        2 MUL                              R3 R4 R5
        3 SUBRK                            R2 R0 K3 [NULL]
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
        0 SUB                              R6 R3 R2
        1 GETTABLEKS                       R5 R6 K0 ["Magnitude"]
        3 GETIMPORT                        R6 K3 [CFrame.new]
        5 ADD                              R8 R2 R3
        6 DIVK                             R7 R8 K4 [2]
        7 MOVE                             R8 R3
        8 CALL                             R6 2 1
        9 GETUPVAL                         R7 0
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R8 R9 K5 ["createElement"]
       13 LOADK                            R9 K6 ["CylinderHandleAdornment"]
       14 DUPTABLE                         R10 K15 [{"Adornee", "ZIndex", "Radius", "Height", "CFrame", "Color3", "AlwaysOnTop", "Transparency", "AdornCullingMode"}]
       15 GETUPVAL                         R12 2
       16 GETTABLEKS                       R11 R12 K16 ["Terrain"]
       18 SETTABLEKS                       R11 R10 K7 ["Adornee"]
       20 LOADN                            R11 0
       21 SETTABLEKS                       R11 R10 K8 ["ZIndex"]
       23 SETTABLEKS                       R1 R10 K9 ["Radius"]
       25 SETTABLEKS                       R5 R10 K10 ["Height"]
       27 SETTABLEKS                       R6 R10 K1 ["CFrame"]
       29 SETTABLEKS                       R4 R10 K11 ["Color3"]
       31 LOADB                            R11 1
       32 SETTABLEKS                       R11 R10 K12 ["AlwaysOnTop"]
       34 LOADK                            R11 K17 [0.5]
       35 SETTABLEKS                       R11 R10 K13 ["Transparency"]
       37 GETUPVAL                         R11 3
       38 SETTABLEKS                       R11 R10 K14 ["AdornCullingMode"]
       40 CALL                             R8 2 1
       41 SETTABLE                         R8 R7 R0
       42 RETURN                           R0 0

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
       27 GETTABLEKS                       R6 R0 K0 ["props"]
       29 GETTABLEKS                       R5 R6 K14 ["Transparency"]
       31 ORK                              R4 R5 K13 [0]
       32 NEWTABLE                         R5 1 0
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K15 ["createElement"]
       37 LOADK                            R7 K16 ["BoxHandleAdornment"]
       38 DUPTABLE                         R8 K23 [{"Adornee", "ZIndex", "Size", "CFrame", "Color3", "AlwaysOnTop", "AdornCullingMode", "Transparency"}]
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K24 ["Terrain"]
       42 SETTABLEKS                       R9 R8 K17 ["Adornee"]
       44 LOADN                            R9 0
       45 SETTABLEKS                       R9 R8 K18 ["ZIndex"]
       47 SETTABLEKS                       R2 R8 K19 ["Size"]
       49 SETTABLEKS                       R3 R8 K10 ["CFrame"]
       51 GETTABLEKS                       R10 R0 K0 ["props"]
       53 GETTABLEKS                       R9 R10 K25 ["Color"]
       55 SETTABLEKS                       R9 R8 K20 ["Color3"]
       57 LOADB                            R9 1
       58 SETTABLEKS                       R9 R8 K21 ["AlwaysOnTop"]
       60 GETUPVAL                         R9 2
       61 SETTABLEKS                       R9 R8 K22 ["AdornCullingMode"]
       63 GETTABLEKS                       R11 R0 K0 ["props"]
       65 GETTABLEKS                       R10 R11 K7 ["Hovered"]
       67 JUMPIFNOT                        R10 ; [+2]
       68 LOADN                            R9 0
       69 JUMP                             ; [+4]
       70 LOADK                            R11 K26 [0.65]
       71 SUBRK                            R12 R1 K4 [{1.75, -1.75, 0}]
       72 MUL                              R10 R11 R12
       73 SUBRK                            R9 R1 K10 ["CFrame"]
       74 SETTABLEKS                       R9 R8 K14 ["Transparency"]
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R5 K27 ["Box"]
       79 NEWCLOSURE                       R6 P0
       80 CAPTURE                          VAL R5
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          UPVAL U2
       84 GETTABLEKS                       R9 R0 K0 ["props"]
       86 GETTABLEKS                       R7 R9 K28 ["TailStart"]
       88 GETTABLEKS                       R9 R0 K0 ["props"]
       90 GETTABLEKS                       R8 R9 K29 ["TailEnd"]
       92 JUMPIFNOT                        R7 ; [+87]
       93 JUMPIFNOT                        R8 ; [+86]
       94 GETTABLEKS                       R12 R0 K0 ["props"]
       96 GETTABLEKS                       R11 R12 K30 ["TailScale"]
       98 FASTCALL2                        MATH_MIN R1 R11 ; [+4]
      100 MOVE                             R10 R1
      101 GETIMPORT                        R9 K33 [math.min]
      103 CALL                             R9 2 1
      104 MULK                             R11 R9 K34 [0.1]
      105 MULK                             R10 R11 K26 [0.65]
      106 GETTABLEKS                       R12 R0 K0 ["props"]
      108 GETTABLEKS                       R11 R12 K35 ["LocalPlaneDelta"]
      110 JUMPIFNOT                        R11 ; [+69]
      111 GETTABLEKS                       R12 R0 K0 ["props"]
      113 GETTABLEKS                       R11 R12 K36 ["PlaneCf"]
      115 JUMPIFNOT                        R11 ; [+64]
      116 GETTABLEKS                       R13 R0 K0 ["props"]
      118 GETTABLEKS                       R12 R13 K35 ["LocalPlaneDelta"]
      120 GETTABLEKS                       R11 R12 K37 ["X"]
      122 GETTABLEKS                       R14 R0 K0 ["props"]
      124 GETTABLEKS                       R13 R14 K35 ["LocalPlaneDelta"]
      126 GETTABLEKS                       R12 R13 K38 ["Y"]
      128 GETTABLEKS                       R14 R0 K0 ["props"]
      130 GETTABLEKS                       R13 R14 K36 ["PlaneCf"]
      132 LOADN                            R17 0
      133 LOADN                            R18 0
      134 FASTCALL3                        VECTOR R11 R17 R18
      136 MOVE                             R16 R11
      137 GETIMPORT                        R15 K40 [Vector3.new]
      139 CALL                             R15 3 1
      140 NAMECALL                         R13 R13 K41 ["PointToWorldSpace"]
      142 CALL                             R13 2 1
      143 GETTABLEKS                       R15 R0 K0 ["props"]
      145 GETTABLEKS                       R14 R15 K36 ["PlaneCf"]
      147 LOADN                            R17 0
      148 LOADN                            R19 0
      149 FASTCALL3                        VECTOR R17 R12 R19
      151 MOVE                             R18 R12
      152 GETIMPORT                        R16 K40 [Vector3.new]
      154 CALL                             R16 3 1
      155 NAMECALL                         R14 R14 K41 ["PointToWorldSpace"]
      157 CALL                             R14 2 1
      158 MOVE                             R15 R6
      159 LOADK                            R16 K42 ["Tail1"]
      160 MOVE                             R17 R10
      161 MOVE                             R18 R7
      162 MOVE                             R19 R13
      163 GETTABLEKS                       R22 R0 K0 ["props"]
      165 GETTABLEKS                       R21 R22 K43 ["PlaneColors"]
      167 GETTABLEN                        R20 R21 1
      168 CALL                             R15 5 0
      169 MOVE                             R15 R6
      170 LOADK                            R16 K44 ["Tail2"]
      171 MOVE                             R17 R10
      172 MOVE                             R18 R7
      173 MOVE                             R19 R14
      174 GETTABLEKS                       R22 R0 K0 ["props"]
      176 GETTABLEKS                       R21 R22 K43 ["PlaneColors"]
      178 GETTABLEN                        R20 R21 2
      179 CALL                             R15 5 0
      180 GETUPVAL                         R10 0
      181 GETTABLEKS                       R9 R10 K15 ["createElement"]
      183 LOADK                            R10 K45 ["Folder"]
      184 NEWTABLE                         R11 0 0
      186 MOVE                             R12 R5
      187 CALL                             R9 3 -1
      188 RETURN                           R9 -1

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
       29 MULK                             R6 R7 K13 [0.707106781186548]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K15 ["intersectRaySphere"]
       33 GETTABLEKS                       R8 R1 K16 ["Origin"]
       35 GETTABLEKS                       R10 R1 K17 ["Direction"]
       37 GETTABLEKS                       R9 R10 K18 ["Unit"]
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
       29 MULK                             R6 R7 K13 [0.707106781186548]
       30 GETTABLEKS                       R8 R1 K15 ["Direction"]
       32 GETTABLEKS                       R7 R8 K16 ["Unit"]
       34 GETTABLEKS                       R9 R1 K17 ["Origin"]
       36 SUB                              R8 R5 R9
       37 MOVE                             R10 R7
       38 NAMECALL                         R8 R8 K18 ["Dot"]
       40 CALL                             R8 2 1
       41 GETTABLEKS                       R10 R1 K17 ["Origin"]
       43 MUL                              R11 R7 R8
       44 ADD                              R9 R10 R11
       45 SUB                              R11 R5 R9
       46 GETTABLEKS                       R10 R11 K19 ["Magnitude"]
       48 SUB                              R11 R10 R6
       49 RETURN                           R11 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["Position"]
        2 GETTABLEKS                       R3 R0 K1 ["LookVector"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["intersectRayPlane"]
        7 GETTABLEKS                       R5 R1 K3 ["Origin"]
        9 GETTABLEKS                       R7 R1 K4 ["Direction"]
       11 GETTABLEKS                       R6 R7 K5 ["Unit"]
       13 MOVE                             R7 R2
       14 MOVE                             R8 R3
       15 CALL                             R4 4 1
       16 JUMPIFNOT                        R4 ; [+9]
       17 GETTABLEKS                       R6 R1 K3 ["Origin"]
       19 GETTABLEKS                       R9 R1 K4 ["Direction"]
       21 GETTABLEKS                       R8 R9 K5 ["Unit"]
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
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["CoreGui"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R4 K6 [script]
       15 GETTABLEKS                       R3 R4 K7 ["Parent"]
       17 GETTABLEKS                       R2 R3 K7 ["Parent"]
       19 GETTABLEKS                       R4 R2 K7 ["Parent"]
       21 GETTABLEKS                       R3 R4 K7 ["Parent"]
       23 GETIMPORT                        R4 K9 [require]
       25 GETTABLEKS                       R6 R3 K10 ["Packages"]
       27 GETTABLEKS                       R5 R6 K11 ["Roact"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K9 [require]
       32 GETTABLEKS                       R7 R2 K12 ["Utility"]
       34 GETTABLEKS                       R6 R7 K13 ["Math"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K17 [Enum.AdornCullingMode.Never]
       39 GETTABLEKS                       R7 R4 K18 ["PureComponent"]
       41 LOADK                            R9 K19 ["MovePlanarHandleView"]
       42 NAMECALL                         R7 R7 K20 ["extend"]
       44 CALL                             R7 2 1
       45 DUPCLOSURE                       R8 K21 [PROTO_0]
       46 SETTABLEKS                       R8 R7 K22 ["init"]
       48 DUPCLOSURE                       R8 K23 [PROTO_1]
       49 DUPCLOSURE                       R9 K24 [PROTO_2]
       50 DUPCLOSURE                       R10 K25 [PROTO_4]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R6
       54 SETTABLEKS                       R10 R7 K26 ["render"]
       56 DUPCLOSURE                       R10 K27 [PROTO_5]
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R10 R7 K28 ["hitTest"]
       60 DUPCLOSURE                       R10 K29 [PROTO_6]
       61 SETTABLEKS                       R10 R7 K30 ["distanceFromHandle"]
       63 DUPCLOSURE                       R10 K31 [PROTO_7]
       64 CAPTURE                          VAL R5
       65 SETTABLEKS                       R10 R7 K32 ["_planePoint"]
       67 DUPCLOSURE                       R10 K33 [PROTO_8]
       68 SETTABLEKS                       R10 R7 K34 ["getHandleDimensionForScale"]
       70 RETURN                           R7 1
