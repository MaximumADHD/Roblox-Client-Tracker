PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R0 K1 ["Y"]
        4 GETTABLEKS                       R5 R0 K2 ["Z"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K3 ["WaterLevel"]
        9 GETUPVAL                         R10 1
       10 GETUPVAL                         R11 2
       11 MOVE                             R12 R0
       12 LOADN                            R13 17
       13 LOADN                            R14 40
       14 CALL                             R11 3 -1
       15 CALL                             R10 -1 1
       16 MULK                             R9 R10 K4 [25]
       17 ADD                              R8 R3 R9
       18 LOADN                            R9 0
       19 GETUPVAL                         R12 1
       20 GETUPVAL                         R13 2
       21 MOVE                             R14 R0
       22 LOADN                            R15 19
       23 LOADN                            R16 40
       24 CALL                             R13 3 -1
       25 CALL                             R12 -1 1
       26 MULK                             R11 R12 K4 [25]
       27 ADD                              R10 R5 R11
       28 FASTCALL                         VECTOR ; [+2]
       29 GETIMPORT                        R7 K7 [Vector3.new]
       31 CALL                             R7 3 1
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R8 R9 K8 ["RidgeFlipped"]
       35 GETUPVAL                         R9 1
       36 GETUPVAL                         R10 2
       37 MOVE                             R11 R7
       38 LOADN                            R12 2
       39 LOADN                            R13 200
       40 CALL                             R10 3 -1
       41 CALL                             R9 -1 -1
       42 CALL                             R8 -1 1
       43 GETUPVAL                         R10 3
       44 GETTABLEKS                       R9 R10 K9 ["Threshold"]
       46 MOVE                             R10 R8
       47 LOADK                            R11 K10 [0.01]
       48 LOADN                            R12 0
       49 CALL                             R9 3 1
       50 GETUPVAL                         R12 3
       51 GETTABLEKS                       R11 R12 K9 ["Threshold"]
       53 GETUPVAL                         R13 3
       54 GETTABLEKS                       R12 R13 K8 ["RidgeFlipped"]
       56 GETUPVAL                         R13 1
       57 GETUPVAL                         R14 2
       58 LOADN                            R17 0
       59 FASTCALL3                        VECTOR R3 R17 R5
       61 MOVE                             R16 R3
       62 MOVE                             R18 R5
       63 GETIMPORT                        R15 K7 [Vector3.new]
       65 CALL                             R15 3 1
       66 LOADN                            R16 101
       67 LOADN                            R17 7
       68 CALL                             R14 3 -1
       69 CALL                             R13 -1 -1
       70 CALL                             R12 -1 1
       71 LOADK                            R13 K11 [0.3]
       72 LOADK                            R14 K12 [0.7]
       73 CALL                             R11 3 1
       74 GETUPVAL                         R13 3
       75 GETTABLEKS                       R12 R13 K9 ["Threshold"]
       77 GETUPVAL                         R13 1
       78 GETUPVAL                         R14 2
       79 LOADN                            R17 0
       80 FASTCALL3                        VECTOR R3 R17 R5
       82 MOVE                             R16 R3
       83 MOVE                             R18 R5
       84 GETIMPORT                        R15 K7 [Vector3.new]
       86 CALL                             R15 3 1
       87 LOADN                            R16 102
       88 LOADN                            R17 50
       89 CALL                             R14 3 -1
       90 CALL                             R13 -1 1
       91 LOADK                            R14 K13 [0.6]
       92 LOADK                            R15 K14 [0.05]
       93 CALL                             R12 3 1
       94 MUL                              R10 R11 R12
       95 LOADK                            R15 K15 [0.5]
       96 GETUPVAL                         R17 1
       97 GETUPVAL                         R18 2
       98 MOVE                             R19 R0
       99 LOADN                            R20 2
      100 LOADN                            R21 100
      101 CALL                             R18 3 -1
      102 CALL                             R17 -1 1
      103 MULK                             R16 R17 K16 [0.02]
      104 ADD                              R14 R15 R16
      105 MULK                             R15 R8 K14 [0.05]
      106 ADD                              R13 R14 R15
      107 MULK                             R14 R10 K14 [0.05]
      108 ADD                              R12 R13 R14
      109 MULK                             R13 R9 K17 [0.005]
      110 ADD                              R11 R12 R13
      111 SUBK                             R14 R4 K18 [1]
      112 GETUPVAL                         R17 0
      113 GETTABLEKS                       R16 R17 K19 ["MapHeight"]
      115 SUBK                             R15 R16 K18 [1]
      116 DIV                              R13 R14 R15
      117 SUBRK                            R12 R18 K13 [0.6]
      118 MULK                             R14 R12 K15 [0.5]
      119 MULK                             R15 R11 K15 [0.5]
      120 ADD                              R13 R14 R15
      121 LOADB                            R14 0
      122 GETUPVAL                         R18 0
      123 GETTABLEKS                       R17 R18 K21 ["SurfaceThickness"]
      125 MULK                             R16 R17 K20 [0.4]
      126 SUBRK                            R15 R15 K16 [0.02]
      127 JUMPIFNOTLT                      R15 R13 ; [+11]
      129 LOADK                            R16 K15 [0.5]
      130 GETUPVAL                         R19 0
      131 GETTABLEKS                       R18 R19 K21 ["SurfaceThickness"]
      133 MULK                             R17 R18 K20 [0.4]
      134 ADD                              R15 R16 R17
      135 JUMPIFLT                         R13 R15 ; [+2]
      137 LOADB                            R14 0 +1
      138 LOADB                            R14 1
      139 LOADN                            R16 0
      140 JUMPIFNOTLT                      R16 R10 ; [+4]
      142 GETIMPORT                        R15 K25 [Enum.Material.Rock]
      144 JUMP                             ; [+20]
      145 JUMPIF                           R14 ; [+3]
      146 GETIMPORT                        R15 K27 [Enum.Material.Mud]
      148 JUMP                             ; [+16]
      149 JUMPIFNOT                        R14 ; [+6]
      150 LOADN                            R16 0
      151 JUMPIFNOTLE                      R9 R16 ; [+4]
      153 GETIMPORT                        R15 K29 [Enum.Material.Water]
      155 JUMP                             ; [+9]
      156 SUBRK                            R16 R18 K1 ["Y"]
      157 SUBK                             R17 R6 K10 [0.01]
      158 JUMPIFNOTLT                      R16 R17 ; [+4]
      160 GETIMPORT                        R15 K31 [Enum.Material.Sand]
      162 JUMP                             ; [+2]
      163 GETIMPORT                        R15 K33 [Enum.Material.Grass]
      165 LOADN                            R17 0
      166 JUMPIFNOTLT                      R17 R10 ; [+4]
      168 GETIMPORT                        R16 K25 [Enum.Material.Rock]
      170 JUMPIF                           R16 ; [+2]
      171 GETIMPORT                        R16 K35 [Enum.Material.Sandstone]
      173 MOVE                             R17 R11
      174 MOVE                             R18 R15
      175 MOVE                             R19 R16
      176 RETURN                           R17 3

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
        7 GETTABLEKS                       R3 R0 K4 ["Src"]
        9 GETTABLEKS                       R2 R3 K5 ["Util"]
       11 GETTABLEKS                       R1 R2 K6 ["Generation"]
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
       30 GETTABLEKS                       R7 R0 K4 ["Src"]
       32 GETTABLEKS                       R6 R7 K12 ["Types"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K13 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 RETURN                           R6 1
