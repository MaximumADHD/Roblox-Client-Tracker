PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 LOADK                            R3 K1 ["SphereHandleAdornment"]
        6 DUPTABLE                         R4 K11 [{["Adornee"], ["CFrame"], ["Radius"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"], ["ZIndex"] = 0}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K12 ["Terrain"]
       10 SETTABLEKS                       R5 R4 K2 ["Adornee"]
       12 GETTABLEKS                       R5 R0 K13 ["props"]
       14 GETTABLEKS                       R5 R5 K14 ["HandleCFrame"]
       16 SETTABLEKS                       R5 R4 K3 ["CFrame"]
       18 GETTABLEKS                       R6 R0 K13 ["props"]
       20 GETTABLEKS                       R6 R6 K16 ["Scale"]
       22 MULK                             R5 R6 K15 [4.5]
       23 SETTABLEKS                       R5 R4 K4 ["Radius"]
       25 GETTABLEKS                       R5 R0 K13 ["props"]
       27 GETTABLEKS                       R5 R5 K17 ["Color"]
       29 SETTABLEKS                       R5 R4 K5 ["Color3"]
       31 GETTABLEKS                       R6 R0 K13 ["props"]
       33 GETTABLEKS                       R6 R6 K18 ["Hovered"]
       35 JUMPIFNOT                        R6 ; [+2]
       36 LOADK                            R5 K19 [0.9]
       37 JUMP                             ; [+1]
       38 LOADN                            R5 1
       39 SETTABLEKS                       R5 R4 K8 ["Transparency"]
       41 CALL                             R2 2 1
       42 SETTABLEKS                       R2 R1 K20 ["Ball"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K0 ["createElement"]
       47 LOADK                            R3 K21 ["Folder"]
       48 NEWTABLE                         R4 0 0
       50 MOVE                             R5 R1
       51 CALL                             R2 3 -1
       52 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["HandleCFrame"]
        2 GETTABLEKS                       R2 R2 K1 ["Position"]
        4 GETTABLEKS                       R4 R0 K3 ["Scale"]
        6 MULK                             R3 R4 K2 [4.5]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K4 ["intersectRaySphere"]
       10 GETTABLEKS                       R5 R1 K5 ["Origin"]
       12 GETTABLEKS                       R6 R1 K6 ["Direction"]
       14 GETTABLEKS                       R6 R6 K7 ["Unit"]
       16 MOVE                             R7 R2
       17 MOVE                             R8 R3
       18 CALL                             R4 4 2
       19 JUMPIFNOT                        R4 ; [+1]
       20 RETURN                           R5 1
       21 LOADNIL                          R6
       22 RETURN                           R6 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Position"]
        2 MULK                             R4 R1 K1 [4.5]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["intersectRaySphere"]
        6 GETTABLEKS                       R6 R2 K3 ["Origin"]
        8 GETTABLEKS                       R7 R2 K4 ["Direction"]
       10 GETTABLEKS                       R7 R7 K5 ["Unit"]
       12 MOVE                             R8 R3
       13 MOVE                             R9 R4
       14 CALL                             R5 4 2
       15 MOVE                             R7 R3
       16 GETTABLEKS                       R8 R0 K6 ["LookVector"]
       18 MUL                              R10 R8 R4
       19 MULK                             R9 R10 K7 [0.3]
       20 ADD                              R7 R7 R9
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K8 ["intersectRayPlane"]
       24 GETTABLEKS                       R10 R2 K3 ["Origin"]
       26 GETTABLEKS                       R11 R2 K4 ["Direction"]
       28 GETTABLEKS                       R11 R11 K5 ["Unit"]
       30 MOVE                             R12 R7
       31 MOVE                             R13 R8
       32 CALL                             R9 4 1
       33 ORK                              R11 R6 K9 [∞]
       34 ORK                              R12 R9 K9 [∞]
       35 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       37 GETIMPORT                        R10 K12 [math.min]
       39 CALL                             R10 2 1
       40 JUMPIFEQKN                       R10 K9 [∞] ; [+10]
       42 GETTABLEKS                       R12 R2 K3 ["Origin"]
       44 GETTABLEKS                       R14 R2 K4 ["Direction"]
       46 GETTABLEKS                       R14 R14 K5 ["Unit"]
       48 MUL                              R13 R14 R10
       49 ADD                              R11 R12 R13
       50 RETURN                           R11 1
       51 LOADNIL                          R11
       52 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R4 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R4 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K8 [require]
       26 GETTABLEKS                       R5 R1 K11 ["Utility"]
       28 GETTABLEKS                       R5 R5 K12 ["Math"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R3 K13 ["PureComponent"]
       33 LOADK                            R7 K14 ["RotateBallHandleView"]
       34 NAMECALL                         R5 R5 K15 ["extend"]
       36 CALL                             R5 2 1
       37 DUPCLOSURE                       R6 K16 [PROTO_0]
       38 SETTABLEKS                       R6 R5 K17 ["init"]
       40 DUPCLOSURE                       R6 K18 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R6 R5 K19 ["render"]
       45 DUPCLOSURE                       R6 K20 [PROTO_2]
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R6 R5 K21 ["hitTest"]
       49 DUPCLOSURE                       R6 K22 [PROTO_3]
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R6 R5 K23 ["_spherePoint"]
       53 RETURN                           R5 1
