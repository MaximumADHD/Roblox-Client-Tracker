PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Ridge"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R0
        6 ADDK                             R6 R1 K1 [100]
        7 DIVRK                            R8 K3 [1] R1
        8 MULK                             R7 R8 K2 [160]
        9 CALL                             R4 3 -1
       10 CALL                             R3 -1 -1
       11 CALL                             R2 -1 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R0 K1 ["Y"]
        4 GETTABLEKS                       R5 R0 K2 ["Z"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K3 ["WaterLevel"]
        9 GETUPVAL                         R10 1
       10 GETUPVAL                         R11 2
       11 MOVE                             R12 R0
       12 LOADN                            R13 17
       13 LOADN                            R14 20
       14 CALL                             R11 3 -1
       15 CALL                             R10 -1 1
       16 MULK                             R9 R10 K4 [20]
       17 ADD                              R8 R3 R9
       18 LOADN                            R9 0
       19 GETUPVAL                         R12 1
       20 GETUPVAL                         R13 2
       21 MOVE                             R14 R0
       22 LOADN                            R15 19
       23 LOADN                            R16 20
       24 CALL                             R13 3 -1
       25 CALL                             R12 -1 1
       26 MULK                             R11 R12 K4 [20]
       27 ADD                              R10 R5 R11
       28 FASTCALL                         VECTOR ; [+2]
       29 GETIMPORT                        R7 K7 [Vector3.new]
       31 CALL                             R7 3 1
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K8 ["RidgeFlipped"]
       35 GETUPVAL                         R9 1
       36 GETUPVAL                         R10 2
       37 MOVE                             R11 R7
       38 LOADN                            R12 2
       39 LOADN                            R13 200
       40 CALL                             R10 3 -1
       41 CALL                             R9 -1 -1
       42 CALL                             R8 -1 1
       43 GETUPVAL                         R10 4
       44 GETUPVAL                         R11 5
       45 DIVK                             R14 R4 K4 [20]
       46 FASTCALL3                        VECTOR R3 R14 R5
       48 MOVE                             R13 R3
       49 MOVE                             R15 R5
       50 GETIMPORT                        R12 K7 [Vector3.new]
       52 CALL                             R12 3 1
       53 DUPTABLE                         R13 K14 [{["Samples"] = 8, ["Scale"] = 0.65}]
       54 CALL                             R10 3 1
       55 MULK                             R9 R10 K9 [1.2]
       56 LOADK                            R12 K15 [-0.4]
       57 ADD                              R11 R12 R9
       58 MULK                             R12 R8 K16 [0.2]
       59 ADD                              R10 R11 R12
       60 LOADK                            R12 K17 [0.275]
       61 JUMPIFNOTLT                      R1 R12 ; [+4]
       63 GETIMPORT                        R11 K21 [Enum.Material.Snow]
       65 JUMP                             ; [+34]
       66 LOADK                            R12 K22 [0.35]
       67 JUMPIFNOTLT                      R1 R12 ; [+4]
       69 GETIMPORT                        R11 K24 [Enum.Material.Rock]
       71 JUMP                             ; [+28]
       72 LOADK                            R12 K25 [0.4]
       73 JUMPIFNOTLT                      R1 R12 ; [+4]
       75 GETIMPORT                        R11 K27 [Enum.Material.Ground]
       77 JUMP                             ; [+22]
       78 SUBRK                            R12 K28 [1] R1
       79 JUMPIFNOTLT                      R12 R6 ; [+4]
       81 GETIMPORT                        R11 K24 [Enum.Material.Rock]
       83 JUMP                             ; [+16]
       84 SUBRK                            R12 K28 [1] R1
       85 ADDK                             R13 R6 K29 [0.01]
       86 JUMPIFNOTLT                      R12 R13 ; [+4]
       88 GETIMPORT                        R11 K31 [Enum.Material.Mud]
       90 JUMP                             ; [+9]
       91 SUBRK                            R12 K28 [1] R1
       92 ADDK                             R13 R6 K32 [0.015]
       93 JUMPIFNOTLT                      R12 R13 ; [+4]
       95 GETIMPORT                        R11 K27 [Enum.Material.Ground]
       97 JUMP                             ; [+2]
       98 GETIMPORT                        R11 K34 [Enum.Material.Grass]
      100 GETIMPORT                        R12 K24 [Enum.Material.Rock]
      102 RETURN                           R10 3

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R2
       11 RETURN                           R3 1

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
       20 GETTABLEKS                       R4 R1 K10 ["Fractalize"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R1 K11 ["Perlin"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K8 [require]
       30 GETTABLEKS                       R6 R1 K12 ["ProcessPerlin"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R7 R0 K4 ["Src"]
       37 GETTABLEKS                       R7 R7 K13 ["Types"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K14 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R3
       44 RETURN                           R7 1
