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
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K7 ["RidgeFlipped"]
       20 GETUPVAL                         R9 2
       21 GETUPVAL                         R10 3
       22 MOVE                             R11 R6
       23 LOADN                            R12 2
       24 LOADN                            R13 200
       25 CALL                             R10 3 -1
       26 CALL                             R9 -1 -1
       27 CALL                             R8 -1 1
       28 GETUPVAL                         R12 3
       29 MOVE                             R13 R6
       30 LOADN                            R14 5
       31 LOADN                            R15 20
       32 CALL                             R12 3 1
       33 MULK                             R11 R12 K8 [20]
       34 ADD                              R10 R3 R11
       35 LOADN                            R11 0
       36 GETUPVAL                         R14 3
       37 MOVE                             R15 R6
       38 LOADN                            R16 9
       39 LOADN                            R17 20
       40 CALL                             R14 3 1
       41 MULK                             R13 R14 K8 [20]
       42 ADD                              R12 R5 R13
       43 FASTCALL                         VECTOR ; [+2]
       44 GETIMPORT                        R9 K5 [Vector3.new]
       46 CALL                             R9 3 1
       47 GETUPVAL                         R10 1
       48 GETTABLEKS                       R10 R10 K7 ["RidgeFlipped"]
       50 GETUPVAL                         R11 2
       51 GETUPVAL                         R12 3
       52 MOVE                             R13 R9
       53 LOADN                            R14 2
       54 LOADN                            R15 200
       55 CALL                             R12 3 -1
       56 CALL                             R11 -1 -1
       57 CALL                             R10 -1 1
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K9 ["Threshold"]
       61 MOVE                             R12 R10
       62 LOADN                            R13 0
       63 LOADK                            R14 K10 [0.05]
       64 CALL                             R11 3 1
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R12 R12 K9 ["Threshold"]
       68 MOVE                             R13 R10
       69 LOADK                            R14 K11 [0.125]
       70 LOADN                            R15 0
       71 CALL                             R12 3 1
       72 GETUPVAL                         R13 1
       73 GETTABLEKS                       R13 R13 K9 ["Threshold"]
       75 MOVE                             R14 R8
       76 LOADK                            R15 K12 [0.33]
       77 LOADK                            R16 K13 [0.12]
       78 CALL                             R13 3 1
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R14 R14 K9 ["Threshold"]
       82 MOVE                             R15 R10
       83 LOADK                            R16 K14 [0.49]
       84 LOADN                            R17 0
       85 CALL                             R14 3 1
       86 LOADK                            R26 K15 [0.42]
       87 GETUPVAL                         R28 2
       88 GETUPVAL                         R29 3
       89 MOVE                             R30 R0
       90 LOADN                            R31 2
       91 LOADN                            R32 70
       92 CALL                             R29 3 -1
       93 CALL                             R28 -1 1
       94 MULK                             R27 R28 K10 [0.05]
       95 ADD                              R25 R26 R27
       96 MULK                             R26 R8 K10 [0.05]
       97 ADD                              R24 R25 R26
       98 MULK                             R25 R11 K16 [0.04]
       99 ADD                              R23 R24 R25
      100 GETUPVAL                         R25 1
      101 GETTABLEKS                       R25 R25 K9 ["Threshold"]
      103 MOVE                             R26 R10
      104 LOADK                            R27 K10 [0.05]
      105 LOADN                            R28 0
      106 CALL                             R25 3 1
      107 MULK                             R24 R25 K17 [0.08]
      108 ADD                              R22 R23 R24
      109 GETUPVAL                         R24 1
      110 GETTABLEKS                       R24 R24 K9 ["Threshold"]
      112 MOVE                             R25 R10
      113 LOADK                            R26 K10 [0.05]
      114 LOADK                            R27 K18 [0.075]
      115 CALL                             R24 3 1
      116 MULK                             R23 R24 K16 [0.04]
      117 ADD                              R21 R22 R23
      118 MULK                             R22 R12 K19 [0.01]
      119 ADD                              R20 R21 R22
      120 GETUPVAL                         R22 1
      121 GETTABLEKS                       R22 R22 K9 ["Threshold"]
      123 MOVE                             R23 R10
      124 LOADK                            R24 K20 [0.0575]
      125 LOADK                            R25 K21 [0.2725]
      126 CALL                             R22 3 1
      127 MULK                             R21 R22 K19 [0.01]
      128 ADD                              R19 R20 R21
      129 MULK                             R20 R13 K22 [0.06]
      130 ADD                              R18 R19 R20
      131 GETUPVAL                         R20 1
      132 GETTABLEKS                       R20 R20 K9 ["Threshold"]
      134 MOVE                             R21 R10
      135 LOADK                            R22 K24 [0.45]
      136 LOADN                            R23 0
      137 CALL                             R20 3 1
      138 MULK                             R19 R20 K23 [0.14]
      139 ADD                              R17 R18 R19
      140 GETUPVAL                         R19 1
      141 GETTABLEKS                       R19 R19 K9 ["Threshold"]
      143 MOVE                             R20 R10
      144 LOADK                            R21 K24 [0.45]
      145 LOADK                            R22 K16 [0.04]
      146 CALL                             R19 3 1
      147 MULK                             R18 R19 K25 [0.025]
      148 ADD                              R16 R17 R18
      149 MULK                             R17 R14 K26 [0.02]
      150 ADD                              R15 R16 R17
      151 SUBRK                            R17 R27 K1 ["Y"]
      152 ADDK                             R18 R7 K28 [0.015]
      153 JUMPIFNOTLT                      R17 R18 ; [+4]
      155 GETIMPORT                        R16 K32 [Enum.Material.Sand]
      157 JUMP                             ; [+11]
      158 LOADN                            R17 0
      159 JUMPIFNOTLT                      R17 R11 ; [+7]
      161 LOADN                            R17 1
      162 JUMPIFNOTLT                      R11 R17 ; [+4]
      164 GETIMPORT                        R16 K32 [Enum.Material.Sand]
      166 JUMP                             ; [+2]
      167 GETIMPORT                        R16 K34 [Enum.Material.Sandstone]
      169 GETUPVAL                         R18 4
      170 GETUPVAL                         R22 5
      171 LOADN                            R24 1
      172 LOADN                            R26 2
      173 FASTCALL3                        VECTOR R24 R4 R26
      175 MOVE                             R25 R4
      176 GETIMPORT                        R23 K5 [Vector3.new]
      178 CALL                             R23 3 1
      179 CALL                             R22 1 1
      180 SUBRK                            R21 R27 K22 [0.06]
      181 MULK                             R20 R21 K35 [10]
      182 FASTCALL1                        MATH_CEIL R20 ; [+2]
      183 GETIMPORT                        R19 K38 [math.ceil]
      185 CALL                             R19 1 1
      186 GETTABLE                         R17 R18 R19
      187 RETURN                           R15 3

PROTO_1:
        0 NEWTABLE                         R3 0 10
        2 GETIMPORT                        R4 K3 [Enum.Material.Rock]
        4 GETIMPORT                        R5 K5 [Enum.Material.Mud]
        6 GETIMPORT                        R6 K7 [Enum.Material.Sand]
        8 GETIMPORT                        R7 K7 [Enum.Material.Sand]
       10 GETIMPORT                        R8 K9 [Enum.Material.Sandstone]
       12 GETIMPORT                        R9 K9 [Enum.Material.Sandstone]
       14 GETIMPORT                        R10 K9 [Enum.Material.Sandstone]
       16 GETIMPORT                        R11 K9 [Enum.Material.Sandstone]
       18 GETIMPORT                        R12 K9 [Enum.Material.Sandstone]
       20 GETIMPORT                        R13 K9 [Enum.Material.Sandstone]
       22 SETLIST                          R3 R4 10 [1]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 RETURN                           R4 1

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
       20 GETTABLEKS                       R4 R1 K10 ["NoisySeed"]
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
       40 DUPCLOSURE                       R7 K14 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 RETURN                           R7 1
