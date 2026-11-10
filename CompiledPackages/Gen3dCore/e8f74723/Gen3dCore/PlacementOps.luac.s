PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["Y"]
        2 FASTCALL1                        MATH_ABS R4 ; [+2]
        3 GETIMPORT                        R3 K3 [math.abs]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K4 [1E-05]
        7 JUMPIFNOTLT                      R3 R4 ; [+3]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 GETTABLEKS                       R5 R0 K0 ["Y"]
       13 SUB                              R4 R2 R5
       14 GETTABLEKS                       R5 R1 K0 ["Y"]
       16 DIV                              R3 R4 R5
       17 LOADN                            R4 0
       18 JUMPIFNOTLT                      R3 R4 ; [+3]
       20 LOADNIL                          R4
       21 RETURN                           R4 1
       22 MUL                              R5 R1 R3
       23 ADD                              R4 R0 R5
       24 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [RaycastParams.new]
        2 CALL                             R2 0 1
        3 NEWTABLE                         R3 0 1
        5 GETIMPORT                        R4 K4 [workspace]
        7 GETTABLEKS                       R4 R4 K5 ["Terrain"]
        9 SETLIST                          R3 R4 1 [1]
       11 SETTABLEKS                       R3 R2 K6 ["FilterDescendantsInstances"]
       13 GETIMPORT                        R3 K10 [Enum.RaycastFilterType.Include]
       15 SETTABLEKS                       R3 R2 K11 ["FilterType"]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K12 ["IgnoreWater"]
       20 GETIMPORT                        R3 K4 [workspace]
       22 MOVE                             R5 R0
       23 MULK                             R6 R1 K13 [15000]
       24 MOVE                             R7 R2
       25 NAMECALL                         R3 R3 K14 ["Raycast"]
       27 CALL                             R3 4 1
       28 JUMPIFNOT                        R3 ; [+3]
       29 GETTABLEKS                       R4 R3 K15 ["Position"]
       31 RETURN                           R4 1
       32 GETTABLEKS                       R6 R1 K16 ["Y"]
       34 FASTCALL1                        MATH_ABS R6 ; [+2]
       35 GETIMPORT                        R5 K19 [math.abs]
       37 CALL                             R5 1 1
       38 LOADK                            R6 K20 [1E-05]
       39 JUMPIFNOTLT                      R5 R6 ; [+3]
       41 LOADNIL                          R4
       42 JUMP                             ; [+13]
       43 GETTABLEKS                       R7 R0 K16 ["Y"]
       45 SUBRK                            R6 K21 [0] R7
       46 GETTABLEKS                       R7 R1 K16 ["Y"]
       48 DIV                              R5 R6 R7
       49 LOADN                            R6 0
       50 JUMPIFNOTLT                      R5 R6 ; [+3]
       52 LOADNIL                          R4
       53 JUMP                             ; [+2]
       54 MUL                              R6 R1 R5
       55 ADD                              R4 R0 R6
       56 JUMPIFNOT                        R4 ; [+7]
       57 SUB                              R5 R4 R0
       58 GETTABLEKS                       R5 R5 K22 ["Magnitude"]
       60 LOADN                            R6 15000
       61 JUMPIFNOTLE                      R5 R6 ; [+2]
       63 RETURN                           R4 1
       64 MULK                             R6 R1 K23 [512]
       65 ADD                              R5 R0 R6
       66 GETTABLEKS                       R7 R5 K24 ["X"]
       68 GETTABLEKS                       R9 R5 K16 ["Y"]
       70 FASTCALL2K                       MATH_MAX R9 K21 ; [+4]
       72 LOADK                            R10 K21 [0]
       73 GETIMPORT                        R8 K26 [math.max]
       75 CALL                             R8 2 1
       76 GETTABLEKS                       R9 R5 K27 ["Z"]
       78 FASTCALL                         VECTOR ; [+2]
       79 GETIMPORT                        R6 K29 [Vector3.new]
       81 CALL                             R6 3 1
       82 GETIMPORT                        R7 K4 [workspace]
       84 MOVE                             R9 R6
       85 LOADK                            R10 K30 [{0, -15000, 0}]
       86 MOVE                             R11 R2
       87 NAMECALL                         R7 R7 K14 ["Raycast"]
       89 CALL                             R7 4 1
       90 JUMPIFNOT                        R7 ; [+3]
       91 GETTABLEKS                       R8 R7 K15 ["Position"]
       93 RETURN                           R8 1
       94 GETTABLEKS                       R9 R5 K24 ["X"]
       96 LOADN                            R10 0
       97 GETTABLEKS                       R11 R5 K27 ["Z"]
       99 FASTCALL                         VECTOR ; [+2]
      100 GETIMPORT                        R8 K29 [Vector3.new]
      102 CALL                             R8 3 1
      103 RETURN                           R8 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["CFrame"]
        2 GETTABLEKS                       R3 R2 K1 ["Position"]
        4 GETTABLEKS                       R4 R2 K2 ["LookVector"]
        6 JUMPIFNOTEQKS                    R1 K3 ["TerrainOnly"] ; [+6]
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R3
       10 MOVE                             R7 R4
       11 CALL                             R5 2 1
       12 RETURN                           R5 1
       13 GETIMPORT                        R5 K6 [RaycastParams.new]
       15 CALL                             R5 0 1
       16 LOADB                            R6 1
       17 SETTABLEKS                       R6 R5 K7 ["IgnoreWater"]
       19 GETIMPORT                        R6 K9 [workspace]
       21 MOVE                             R8 R3
       22 MULK                             R9 R4 K10 [512]
       23 MOVE                             R10 R5
       24 NAMECALL                         R6 R6 K11 ["Raycast"]
       26 CALL                             R6 4 1
       27 JUMPIFNOT                        R6 ; [+3]
       28 GETTABLEKS                       R7 R6 K1 ["Position"]
       30 RETURN                           R7 1
       31 GETTABLEKS                       R7 R0 K12 ["Focus"]
       33 GETTABLEKS                       R7 R7 K1 ["Position"]
       35 GETTABLEKS                       R7 R7 K13 ["Y"]
       37 GETTABLEKS                       R10 R4 K13 ["Y"]
       39 FASTCALL1                        MATH_ABS R10 ; [+2]
       40 GETIMPORT                        R9 K16 [math.abs]
       42 CALL                             R9 1 1
       43 LOADK                            R10 K17 [1E-05]
       44 JUMPIFNOTLT                      R9 R10 ; [+3]
       46 LOADNIL                          R8
       47 JUMP                             ; [+13]
       48 GETTABLEKS                       R11 R3 K13 ["Y"]
       50 SUB                              R10 R7 R11
       51 GETTABLEKS                       R11 R4 K13 ["Y"]
       53 DIV                              R9 R10 R11
       54 LOADN                            R10 0
       55 JUMPIFNOTLT                      R9 R10 ; [+3]
       57 LOADNIL                          R8
       58 JUMP                             ; [+2]
       59 MUL                              R10 R4 R9
       60 ADD                              R8 R3 R10
       61 JUMPIFNOT                        R8 ; [+7]
       62 SUB                              R9 R8 R3
       63 GETTABLEKS                       R9 R9 K18 ["Magnitude"]
       65 LOADN                            R10 512
       66 JUMPIFNOTLT                      R9 R10 ; [+2]
       68 RETURN                           R8 1
       69 MULK                             R10 R4 K10 [512]
       70 ADD                              R9 R3 R10
       71 RETURN                           R9 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["computeInsertLocation"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K3 [CFrame.new]
        8 LOADN                            R7 0
        9 GETTABLEKS                       R9 R1 K5 ["Y"]
       11 DIVK                             R8 R9 K4 [2]
       12 LOADN                            R9 0
       13 FASTCALL                         VECTOR ; [+2]
       14 GETIMPORT                        R6 K7 [Vector3.new]
       16 CALL                             R6 3 1
       17 ADD                              R5 R3 R6
       18 CALL                             R4 1 -1
       19 RETURN                           R4 -1

PROTO_4:
        0 LOADK                            R3 K0 ["Terrain"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["Workspace"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETIMPORT                        R1 K5 [CFrame.new]
       12 CALL                             R1 0 1
       13 LOADK                            R2 K6 [{0, 0, 0}]
       14 RETURN                           R1 2
       15 LOADK                            R3 K7 ["Model"]
       16 NAMECALL                         R1 R0 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+4]
       20 NAMECALL                         R1 R0 K8 ["GetBoundingBox"]
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1
       24 LOADK                            R3 K9 ["BasePart"]
       25 NAMECALL                         R1 R0 K1 ["IsA"]
       27 CALL                             R1 2 1
       28 JUMPIFNOT                        R1 ; [+5]
       29 GETTABLEKS                       R1 R0 K3 ["CFrame"]
       31 GETTABLEKS                       R2 R0 K10 ["Size"]
       33 RETURN                           R1 2
       34 GETIMPORT                        R1 K5 [CFrame.new]
       36 CALL                             R1 0 1
       37 LOADK                            R2 K6 [{0, 0, 0}]
       38 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_2]
        6 CAPTURE                          VAL R2
        7 SETTABLEKS                       R3 R0 K3 ["computeInsertLocation"]
        9 DUPCLOSURE                       R3 K4 [PROTO_3]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R3 R0 K5 ["computeDropCFrame"]
       13 DUPCLOSURE                       R3 K6 [PROTO_4]
       14 SETTABLEKS                       R3 R0 K7 ["computeBoundsFromInstance"]
       16 RETURN                           R0 1
