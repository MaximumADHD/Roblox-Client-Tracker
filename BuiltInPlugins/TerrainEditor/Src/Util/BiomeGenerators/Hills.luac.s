PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R0 K1 ["Y"]
        4 GETTABLEKS                       R5 R0 K2 ["Z"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K3 ["WaterLevel"]
        9 GETUPVAL                         R9 1
       10 GETUPVAL                         R10 2
       11 MOVE                             R11 R0
       12 LOADN                            R12 17
       13 LOADN                            R13 20
       14 CALL                             R10 3 -1
       15 CALL                             R9 -1 1
       16 MULK                             R8 R9 K4 [20]
       17 LOADN                            R9 0
       18 GETUPVAL                         R12 1
       19 GETUPVAL                         R13 2
       20 MOVE                             R14 R0
       21 LOADN                            R15 19
       22 LOADN                            R16 20
       23 CALL                             R13 3 -1
       24 CALL                             R12 -1 1
       25 MULK                             R11 R12 K4 [20]
       26 ADD                              R10 R5 R11
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R7 K7 [Vector3.new]
       30 CALL                             R7 3 1
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K9 ["RidgeFlipped"]
       34 GETUPVAL                         R10 1
       35 GETUPVAL                         R11 2
       36 MOVE                             R12 R7
       37 LOADN                            R13 2
       38 LOADN                            R14 200
       39 CALL                             R11 3 -1
       40 CALL                             R10 -1 -1
       41 CALL                             R9 -1 1
       42 POWK                             R8 R9 K8 [0.5]
       43 GETUPVAL                         R9 1
       44 GETUPVAL                         R10 2
       45 MOVE                             R11 R0
       46 LOADN                            R12 3
       47 LOADN                            R13 60
       48 CALL                             R10 3 -1
       49 CALL                             R9 -1 1
       50 LOADK                            R12 K10 [0.48]
       51 MULK                             R13 R9 K11 [0.05]
       52 ADD                              R11 R12 R13
       53 LOADK                            R15 K11 [0.05]
       54 MULK                             R16 R9 K12 [0.1]
       55 ADD                              R14 R15 R16
       56 GETUPVAL                         R16 1
       57 GETUPVAL                         R17 2
       58 MOVE                             R18 R0
       59 LOADN                            R19 4
       60 LOADN                            R20 25
       61 CALL                             R17 3 -1
       62 CALL                             R16 -1 1
       63 MULK                             R15 R16 K13 [0.125]
       64 ADD                              R13 R14 R15
       65 MUL                              R12 R13 R8
       66 ADD                              R10 R11 R12
       67 SUBRK                            R13 K15 [1] R1
       68 MULK                             R12 R13 K14 [0.9]
       69 MULK                             R13 R8 K12 [0.1]
       70 ADD                              R11 R12 R13
       71 SUBK                             R13 R6 K16 [0.015]
       72 JUMPIFNOTLT                      R11 R13 ; [+4]
       74 GETIMPORT                        R12 K20 [Enum.Material.Mud]
       76 JUMP                             ; [+7]
       77 JUMPIFNOTLT                      R11 R6 ; [+4]
       79 GETIMPORT                        R12 K22 [Enum.Material.Ground]
       81 JUMP                             ; [+2]
       82 GETIMPORT                        R12 K24 [Enum.Material.Grass]
       84 GETIMPORT                        R13 K26 [Enum.Material.Slate]
       86 MOVE                             R14 R10
       87 MOVE                             R15 R12
       88 MOVE                             R16 R13
       89 RETURN                           R14 3

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETTABLEKS                       R1 R1 K6 ["Generation"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Filter"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Perlin"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R1 K11 ["ProcessPerlin"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K8 [require]
       30 GETTABLEKS                       R6 R0 K4 ["Src"]
       32 GETTABLEKS                       R6 R6 K12 ["Types"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K13 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 RETURN                           R6 1
