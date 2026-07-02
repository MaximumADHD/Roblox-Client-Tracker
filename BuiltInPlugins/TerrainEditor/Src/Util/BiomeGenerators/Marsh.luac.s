PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R0 K1 ["Y"]
        4 GETTABLEKS                       R5 R0 K2 ["Z"]
        6 LOADN                            R8 0
        7 FASTCALL3                        VECTOR R3 R8 R5
        9 MOVE                             R7 R3
       10 MOVE                             R9 R5
       11 GETIMPORT                        R6 K5 [Vector3.new]
       13 CALL                             R6 3 1
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K6 ["WaterLevel"]
       17 GETUPVAL                         R12 1
       18 MOVE                             R13 R6
       19 LOADN                            R14 5
       20 LOADN                            R15 7
       21 CALL                             R12 3 1
       22 MULK                             R11 R12 K7 [10]
       23 ADD                              R10 R3 R11
       24 GETUPVAL                         R12 1
       25 MOVE                             R13 R6
       26 LOADN                            R14 6
       27 LOADN                            R15 30
       28 CALL                             R12 3 1
       29 MULK                             R11 R12 K8 [50]
       30 ADD                              R9 R10 R11
       31 LOADN                            R10 0
       32 GETUPVAL                         R14 1
       33 MOVE                             R15 R6
       34 LOADN                            R16 9
       35 LOADN                            R17 7
       36 CALL                             R14 3 1
       37 MULK                             R13 R14 K7 [10]
       38 ADD                              R12 R5 R13
       39 GETUPVAL                         R14 1
       40 MOVE                             R15 R6
       41 LOADN                            R16 10
       42 LOADN                            R17 30
       43 CALL                             R14 3 1
       44 MULK                             R13 R14 K8 [50]
       45 ADD                              R11 R12 R13
       46 FASTCALL                         VECTOR ; [+2]
       47 GETIMPORT                        R8 K5 [Vector3.new]
       49 CALL                             R8 3 1
       50 GETUPVAL                         R9 2
       51 GETUPVAL                         R10 1
       52 MOVE                             R11 R8
       53 LOADN                            R12 2
       54 LOADN                            R13 70
       55 CALL                             R10 3 -1
       56 CALL                             R9 -1 1
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R10 R10 K9 ["Threshold"]
       60 MOVE                             R11 R9
       61 LOADK                            R12 K10 [0.65]
       62 LOADN                            R13 0
       63 CALL                             R10 3 1
       64 GETUPVAL                         R11 2
       65 GETUPVAL                         R12 1
       66 MOVE                             R13 R0
       67 LOADN                            R14 4
       68 LOADN                            R15 100
       69 CALL                             R12 3 -1
       70 CALL                             R11 -1 1
       71 GETUPVAL                         R12 2
       72 GETUPVAL                         R13 1
       73 MOVE                             R14 R0
       74 LOADN                            R15 3
       75 LOADN                            R16 20
       76 CALL                             R13 3 -1
       77 CALL                             R12 -1 1
       78 SUBK                             R16 R7 K11 [0.04]
       79 MUL                              R18 R9 R10
       80 MULK                             R17 R18 K12 [0.025]
       81 ADD                              R15 R16 R17
       82 MULK                             R16 R11 K13 [0.035]
       83 ADD                              R14 R15 R16
       84 MULK                             R15 R12 K12 [0.025]
       85 ADD                              R13 R14 R15
       86 LOADN                            R15 1
       87 JUMPIFNOTLE                      R15 R10 ; [+4]
       89 GETIMPORT                        R14 K17 [Enum.Material.Grass]
       91 JUMP                             ; [+16]
       92 SUBRK                            R15 K18 [1] R1
       93 SUBK                             R16 R7 K19 [0.01]
       94 JUMPIFNOTLT                      R15 R16 ; [+4]
       96 GETIMPORT                        R14 K21 [Enum.Material.Mud]
       98 JUMP                             ; [+9]
       99 SUBRK                            R15 K18 [1] R1
      100 ADDK                             R16 R7 K19 [0.01]
      101 JUMPIFNOTLT                      R15 R16 ; [+4]
      103 GETIMPORT                        R14 K23 [Enum.Material.Ground]
      105 JUMP                             ; [+2]
      106 GETIMPORT                        R14 K17 [Enum.Material.Grass]
      108 GETIMPORT                        R15 K25 [Enum.Material.Slate]
      110 RETURN                           R13 3

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
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
