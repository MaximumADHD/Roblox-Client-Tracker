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
       17 GETUPVAL                         R11 1
       18 MOVE                             R12 R6
       19 LOADN                            R13 5
       20 LOADN                            R14 8
       21 CALL                             R11 3 1
       22 MULK                             R10 R11 K7 [5]
       23 ADD                              R9 R3 R10
       24 DIVK                             R10 R4 K8 [8]
       25 GETUPVAL                         R13 1
       26 MOVE                             R14 R6
       27 LOADN                            R15 9
       28 LOADN                            R16 8
       29 CALL                             R13 3 1
       30 MULK                             R12 R13 K7 [5]
       31 ADD                              R11 R5 R12
       32 FASTCALL                         VECTOR ; [+2]
       33 GETIMPORT                        R8 K5 [Vector3.new]
       35 CALL                             R8 3 1
       36 GETUPVAL                         R9 2
       37 GETUPVAL                         R10 1
       38 MOVE                             R11 R8
       39 LOADN                            R12 2
       40 LOADN                            R13 20
       41 CALL                             R10 3 -1
       42 CALL                             R9 -1 1
       43 GETUPVAL                         R10 3
       44 GETTABLEKS                       R10 R10 K9 ["Ridge"]
       46 MOVE                             R11 R9
       47 CALL                             R10 1 1
       48 GETUPVAL                         R11 2
       49 GETUPVAL                         R12 1
       50 DIVK                             R15 R4 K10 [4]
       51 FASTCALL3                        VECTOR R3 R15 R5
       53 MOVE                             R14 R3
       54 MOVE                             R16 R5
       55 GETIMPORT                        R13 K5 [Vector3.new]
       57 CALL                             R13 3 1
       58 LOADN                            R14 436
       59 LOADN                            R15 2
       60 CALL                             R12 3 -1
       61 CALL                             R11 -1 1
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R12 R12 K11 ["Threshold"]
       65 MOVE                             R13 R10
       66 LOADK                            R14 K12 [0.8]
       67 LOADK                            R15 K13 [0.1]
       68 CALL                             R12 3 1
       69 GETUPVAL                         R14 2
       70 GETUPVAL                         R15 1
       71 MOVE                             R16 R6
       72 LOADN                            R17 6
       73 LOADN                            R18 74
       74 CALL                             R15 3 -1
       75 CALL                             R14 -1 1
       76 SUBK                             R13 R14 K14 [0.5]
       77 LOADNIL                          R14
       78 LOADN                            R15 0
       79 JUMPIFNOTLT                      R13 R15 ; [+11]
       81 LOADN                            R17 1
       82 MULK                             R18 R13 K14 [0.5]
       83 ADD                              R16 R17 R18
       84 JUMPIFNOTLT                      R16 R10 ; [+3]
       86 LOADK                            R15 K15 [-0.17]
       87 JUMP                             ; [+1]
       88 LOADN                            R15 0
       89 MOVE                             R14 R15
       90 JUMP                             ; [+3]
       91 MULK                             R16 R12 K13 [0.1]
       92 MUL                              R15 R16 R11
       93 MUL                              R14 R15 R13
       94 LOADK                            R18 K16 [0.55]
       95 MULK                             R20 R10 K17 [0.05]
       96 MUL                              R19 R20 R13
       97 ADD                              R17 R18 R19
       98 ADD                              R16 R17 R14
       99 GETUPVAL                         R18 2
      100 GETUPVAL                         R19 1
      101 MOVE                             R20 R6
      102 LOADN                            R21 123
      103 LOADN                            R22 25
      104 CALL                             R19 3 -1
      105 CALL                             R18 -1 1
      106 MULK                             R17 R18 K18 [0.025]
      107 ADD                              R15 R16 R17
      108 SUBRK                            R17 K19 [1] R1
      109 SUBK                             R18 R7 K13 [0.1]
      110 JUMPIFNOTLT                      R17 R18 ; [+4]
      112 GETIMPORT                        R16 K23 [Enum.Material.Glacier]
      114 JUMP                             ; [+14]
      115 LOADK                            R17 K24 [0.6]
      116 JUMPIFNOTLT                      R17 R12 ; [+10]
      118 LOADK                            R17 K13 [0.1]
      119 JUMPIFNOTLT                      R17 R13 ; [+7]
      121 LOADK                            R17 K14 [0.5]
      122 JUMPIFNOTLT                      R17 R11 ; [+4]
      124 GETIMPORT                        R16 K23 [Enum.Material.Glacier]
      126 JUMP                             ; [+2]
      127 GETIMPORT                        R16 K26 [Enum.Material.Snow]
      129 GETIMPORT                        R17 K23 [Enum.Material.Glacier]
      131 RETURN                           R15 3

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
