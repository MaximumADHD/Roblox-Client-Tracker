PROTO_0:
        0 LOADNIL                          R2
        1 LOADK                            R3 K0 [∞]
        2 GETTABLEKS                       R4 R0 K1 ["faces"]
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETTABLEKS                       R11 R8 K2 ["point"]
        9 SUB                              R10 R1 R11
       10 GETTABLEKS                       R10 R10 K3 ["Unit"]
       12 GETTABLEKS                       R12 R8 K4 ["normal"]
       14 NAMECALL                         R10 R10 K5 ["Dot"]
       16 CALL                             R10 2 1
       17 FASTCALL1                        MATH_ABS R10 ; [+2]
       18 GETIMPORT                        R9 K8 [math.abs]
       20 CALL                             R9 1 1
       21 JUMPIFNOTLT                      R9 R3 ; [+3]
       23 MOVE                             R3 R9
       24 MOVE                             R2 R8
       25 FORGLOOP                         R4 2 ; [-19]
       27 LOADNIL                          R4
       28 LOADK                            R5 K0 [∞]
       29 GETTABLEKS                       R6 R0 K9 ["edges"]
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 FORGPREP                         R6
       34 GETTABLEKS                       R12 R10 K10 ["direction"]
       36 GETTABLEKS                       R14 R2 K4 ["normal"]
       38 NAMECALL                         R12 R12 K5 ["Dot"]
       40 CALL                             R12 2 1
       41 FASTCALL1                        MATH_ABS R12 ; [+2]
       42 GETIMPORT                        R11 K8 [math.abs]
       44 CALL                             R11 1 1
       45 LOADK                            R12 K11 [0.001]
       46 JUMPIFNOTLT                      R11 R12 ; [+22]
       48 GETTABLEKS                       R12 R10 K12 ["a"]
       50 SUB                              R11 R1 R12
       51 GETTABLEKS                       R13 R10 K10 ["direction"]
       53 NAMECALL                         R11 R11 K5 ["Dot"]
       55 CALL                             R11 2 1
       56 GETTABLEKS                       R14 R10 K12 ["a"]
       58 GETTABLEKS                       R16 R10 K10 ["direction"]
       60 MUL                              R15 R16 R11
       61 ADD                              R13 R14 R15
       62 SUB                              R12 R13 R1
       63 GETTABLEKS                       R12 R12 K13 ["Magnitude"]
       65 JUMPIFNOTLT                      R12 R5 ; [+3]
       67 MOVE                             R5 R12
       68 MOVE                             R4 R10
       69 FORGLOOP                         R6 2 ; [-36]
       71 RETURN                           R4 1

PROTO_1:
        0 LOADNIL                          R3
        1 LOADK                            R5 K0 [0.5]
        2 GETTABLEKS                       R7 R0 K1 ["a"]
        4 GETTABLEKS                       R8 R0 K2 ["b"]
        6 ADD                              R6 R7 R8
        7 MUL                              R4 R5 R6
        8 GETTABLEKS                       R6 R0 K1 ["a"]
       10 SUB                              R5 R6 R2
       11 GETTABLEKS                       R5 R5 K3 ["Magnitude"]
       13 GETTABLEKS                       R7 R0 K2 ["b"]
       15 SUB                              R6 R7 R2
       16 GETTABLEKS                       R6 R6 K3 ["Magnitude"]
       18 SUB                              R7 R4 R2
       19 GETTABLEKS                       R7 R7 K3 ["Magnitude"]
       21 JUMPIFNOTLT                      R7 R5 ; [+5]
       23 JUMPIFNOTLT                      R7 R6 ; [+3]
       25 MOVE                             R3 R4
       26 JUMP                             ; [+7]
       27 JUMPIFNOTLT                      R5 R6 ; [+4]
       29 GETTABLEKS                       R3 R0 K1 ["a"]
       31 JUMP                             ; [+2]
       32 GETTABLEKS                       R3 R0 K2 ["b"]
       34 GETTABLEKS                       R8 R1 K4 ["CFrame"]
       36 GETTABLEKS                       R9 R8 K5 ["XVector"]
       38 GETTABLEKS                       R13 R0 K6 ["direction"]
       40 NAMECALL                         R11 R9 K7 ["Dot"]
       42 CALL                             R11 2 1
       43 FASTCALL1                        MATH_ABS R11 ; [+2]
       44 GETIMPORT                        R10 K10 [math.abs]
       46 CALL                             R10 1 1
       47 LOADK                            R11 K11 [0.9]
       48 JUMPIFNOTLT                      R11 R10 ; [+3]
       50 GETTABLEKS                       R9 R8 K12 ["ZVector"]
       52 GETIMPORT                        R10 K14 [CFrame.fromMatrix]
       54 LOADK                            R11 K15 [{0, 0, 0}]
       55 GETTABLEKS                       R12 R0 K6 ["direction"]
       57 GETTABLEKS                       R13 R0 K6 ["direction"]
       59 MOVE                             R15 R9
       60 NAMECALL                         R13 R13 K16 ["Cross"]
       62 CALL                             R13 2 1
       63 GETTABLEKS                       R13 R13 K17 ["Unit"]
       65 CALL                             R10 3 1
       66 GETTABLEKS                       R11 R8 K18 ["Rotation"]
       68 MOVE                             R13 R10
       69 NAMECALL                         R11 R11 K19 ["ToObjectSpace"]
       71 CALL                             R11 2 1
       72 GETUPVAL                         R12 0
       73 MOVE                             R13 R11
       74 CALL                             R12 1 1
       75 MOVE                             R15 R11
       76 NAMECALL                         R13 R12 K19 ["ToObjectSpace"]
       78 CALL                             R13 2 1
       79 MUL                              R15 R12 R13
       80 NAMECALL                         R16 R12 K20 ["Inverse"]
       82 CALL                             R16 1 1
       83 MUL                              R14 R15 R16
       84 GETTABLEKS                       R17 R8 K18 ["Rotation"]
       86 MUL                              R16 R17 R14
       87 ADD                              R15 R16 R3
       88 RETURN                           R15 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Instance"]
        2 GETTABLEKS                       R2 R0 K1 ["Position"]
        4 LOADK                            R5 K2 ["TriangleMeshPart"]
        5 NAMECALL                         R3 R1 K3 ["IsA"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+17]
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+6]
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R3
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 CALL                             R4 3 1
       18 RETURN                           R4 1
       19 NAMECALL                         R5 R1 K4 ["GetPivot"]
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R5 R5 K5 ["Rotation"]
       24 ADD                              R4 R5 R2
       25 RETURN                           R4 1
       26 LOADK                            R5 K6 ["Terrain"]
       27 NAMECALL                         R3 R1 K3 ["IsA"]
       29 CALL                             R3 2 1
       30 JUMPIFNOT                        R3 ; [+5]
       31 GETIMPORT                        R3 K9 [CFrame.new]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 -1
       35 RETURN                           R3 -1
       36 GETUPVAL                         R3 2
       37 MOVE                             R4 R1
       38 CALL                             R3 1 1
       39 GETTABLEKS                       R4 R3 K10 ["shape"]
       41 JUMPIFNOTEQKS                    R4 K11 ["Mesh"] ; [+10]
       43 GETUPVAL                         R4 1
       44 GETUPVAL                         R5 3
       45 MOVE                             R6 R3
       46 MOVE                             R7 R2
       47 CALL                             R5 2 1
       48 MOVE                             R6 R1
       49 MOVE                             R7 R2
       50 CALL                             R4 3 1
       51 RETURN                           R4 1
       52 NAMECALL                         R5 R1 K4 ["GetPivot"]
       54 CALL                             R5 1 1
       55 GETTABLEKS                       R5 R5 K5 ["Rotation"]
       57 ADD                              R4 R5 R2
       58 RETURN                           R4 1

PROTO_3:
        0 GETIMPORT                        R3 K2 [RaycastParams.new]
        2 CALL                             R3 0 1
        3 SETTABLEKS                       R1 R3 K3 ["FilterDescendantsInstances"]
        5 LOADB                            R4 1
        6 SETTABLEKS                       R4 R3 K4 ["BruteForceAllSlow"]
        8 GETUPVAL                         R4 0
        9 SETTABLEKS                       R4 R3 K5 ["CollisionGroup"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R6 R2 K6 ["Origin"]
       14 GETTABLEKS                       R7 R2 K7 ["Direction"]
       16 MOVE                             R8 R3
       17 NAMECALL                         R4 R4 K8 ["Raycast"]
       19 CALL                             R4 4 1
       20 JUMPIFNOT                        R4 ; [+4]
       21 GETUPVAL                         R5 2
       22 MOVE                             R6 R4
       23 CALL                             R5 1 -1
       24 RETURN                           R5 -1
       25 LOADNIL                          R5
       26 RETURN                           R5 1

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
       15 GETTABLEKS                       R3 R1 K9 ["Utility"]
       17 GETTABLEKS                       R3 R3 K10 ["getGeometry"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K9 ["Utility"]
       24 GETTABLEKS                       R4 R4 K11 ["blackboxFindClosestMeshEdge"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K9 ["Utility"]
       31 GETTABLEKS                       R5 R5 K12 ["snapRotationToPrimaryDirection"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K9 ["Utility"]
       38 GETTABLEKS                       R6 R6 K13 ["CursorGroupName"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K14 [PROTO_0]
       42 DUPCLOSURE                       R7 K15 [PROTO_1]
       43 CAPTURE                          VAL R4
       44 DUPCLOSURE                       R8 K16 [PROTO_2]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R9 K17 [PROTO_3]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R8
       53 RETURN                           R9 1
