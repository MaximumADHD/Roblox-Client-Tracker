PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R0 K1 ["Y"]
        4 GETTABLEKS                       R5 R0 K2 ["Z"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K3 ["WaterLevel"]
        9 GETUPVAL                         R9 1
       10 MULK                             R12 R4 K5 [0.25]
       11 FASTCALL3                        VECTOR R3 R12 R5
       13 MOVE                             R11 R3
       14 MOVE                             R13 R5
       15 GETIMPORT                        R10 K8 [Vector3.new]
       17 CALL                             R10 3 1
       18 LOADN                            R11 21
       19 LOADN                            R12 8
       20 CALL                             R9 3 1
       21 MULK                             R8 R9 K4 [5]
       22 ADD                              R7 R3 R8
       23 GETUPVAL                         R10 1
       24 MULK                             R13 R4 K5 [0.25]
       25 FASTCALL3                        VECTOR R3 R13 R5
       27 MOVE                             R12 R3
       28 MOVE                             R14 R5
       29 GETIMPORT                        R11 K8 [Vector3.new]
       31 CALL                             R11 3 1
       32 LOADN                            R12 22
       33 LOADN                            R13 8
       34 CALL                             R10 3 1
       35 MULK                             R9 R10 K4 [5]
       36 ADD                              R8 R4 R9
       37 GETUPVAL                         R11 1
       38 MULK                             R14 R4 K5 [0.25]
       39 FASTCALL3                        VECTOR R3 R14 R5
       41 MOVE                             R13 R3
       42 MOVE                             R15 R5
       43 GETIMPORT                        R12 K8 [Vector3.new]
       45 CALL                             R12 3 1
       46 LOADN                            R13 23
       47 LOADN                            R14 8
       48 CALL                             R11 3 1
       49 MULK                             R10 R11 K4 [5]
       50 ADD                              R9 R5 R10
       51 FASTCALL3                        VECTOR R7 R8 R9
       53 MOVE                             R11 R7
       54 MOVE                             R12 R8
       55 MOVE                             R13 R9
       56 GETIMPORT                        R10 K8 [Vector3.new]
       58 CALL                             R10 3 1
       59 GETUPVAL                         R14 1
       60 MOVE                             R15 R0
       61 LOADN                            R16 22
       62 LOADN                            R17 30
       63 CALL                             R14 3 1
       64 MULK                             R13 R14 K9 [30]
       65 ADD                              R12 R7 R13
       66 GETUPVAL                         R16 1
       67 MOVE                             R17 R0
       68 LOADN                            R18 24
       69 LOADN                            R19 30
       70 CALL                             R16 3 1
       71 MULK                             R15 R16 K9 [30]
       72 ADD                              R14 R9 R15
       73 FASTCALL3                        VECTOR R12 R8 R14
       75 MOVE                             R13 R8
       76 GETIMPORT                        R11 K8 [Vector3.new]
       78 CALL                             R11 3 1
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R12 R13 K10 ["Ridge"]
       82 GETUPVAL                         R13 3
       83 GETUPVAL                         R14 1
       84 MOVE                             R15 R11
       85 LOADN                            R16 2
       86 LOADN                            R17 120
       87 CALL                             R14 3 -1
       88 CALL                             R13 -1 -1
       89 CALL                             R12 -1 1
       90 GETUPVAL                         R15 2
       91 GETTABLEKS                       R14 R15 K10 ["Ridge"]
       93 GETUPVAL                         R15 3
       94 GETUPVAL                         R16 1
       95 MOVE                             R17 R10
       96 LOADN                            R18 3
       97 LOADN                            R19 40
       98 CALL                             R16 3 -1
       99 CALL                             R15 -1 -1
      100 CALL                             R14 -1 1
      101 MULK                             R16 R12 K5 [0.25]
      102 ADDK                             R15 R16 K11 [0.75]
      103 MUL                              R13 R14 R15
      104 GETUPVAL                         R16 2
      105 GETTABLEKS                       R15 R16 K10 ["Ridge"]
      107 GETUPVAL                         R16 3
      108 GETUPVAL                         R17 1
      109 MOVE                             R18 R10
      110 LOADN                            R19 4
      111 LOADN                            R20 20
      112 CALL                             R17 3 -1
      113 CALL                             R16 -1 -1
      114 CALL                             R15 -1 1
      115 MULK                             R17 R13 K5 [0.25]
      116 ADDK                             R16 R17 K11 [0.75]
      117 MUL                              R14 R15 R16
      118 GETUPVAL                         R17 2
      119 GETTABLEKS                       R16 R17 K12 ["Threshold"]
      121 GETUPVAL                         R17 3
      122 GETUPVAL                         R18 1
      123 MOVE                             R19 R0
      124 LOADN                            R20 9
      125 LOADN                            R21 40
      126 CALL                             R18 3 -1
      127 CALL                             R17 -1 1
      128 LOADK                            R18 K5 [0.25]
      129 LOADK                            R19 K13 [0.5]
      130 CALL                             R16 3 1
      131 GETUPVAL                         R17 3
      132 GETUPVAL                         R18 1
      133 MOVE                             R19 R0
      134 LOADN                            R20 10
      135 LOADN                            R21 60
      136 CALL                             R18 3 -1
      137 CALL                             R17 -1 1
      138 MUL                              R15 R16 R17
      139 LOADN                            R17 0
      140 GETUPVAL                         R22 2
      141 GETTABLEKS                       R21 R22 K12 ["Threshold"]
      143 MOVE                             R22 R12
      144 LOADK                            R23 K15 [0.975]
      145 LOADN                            R24 0
      146 CALL                             R21 3 1
      147 SUBRK                            R20 R14 K21 ["CFrame"]
      148 GETUPVAL                         R22 2
      149 GETTABLEKS                       R21 R22 K12 ["Threshold"]
      151 MOVE                             R22 R13
      152 LOADK                            R23 K16 [0.925]
      153 LOADN                            R24 0
      154 CALL                             R21 3 1
      155 SUB                              R19 R20 R21
      156 GETUPVAL                         R21 2
      157 GETTABLEKS                       R20 R21 K12 ["Threshold"]
      159 MOVE                             R21 R14
      160 LOADK                            R22 K17 [0.9]
      161 LOADN                            R23 0
      162 CALL                             R20 3 1
      163 SUB                              R18 R19 R20
      164 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      166 GETIMPORT                        R16 K20 [math.max]
      168 CALL                             R16 2 1
      169 GETIMPORT                        R18 K23 [CFrame.Angles]
      171 LOADK                            R19 K24 [0.7]
      172 LOADK                            R20 K24 [0.7]
      173 LOADN                            R21 0
      174 CALL                             R18 3 1
      175 FASTCALL3                        VECTOR R7 R8 R9
      177 MOVE                             R20 R7
      178 MOVE                             R21 R8
      179 MOVE                             R22 R9
      180 GETIMPORT                        R19 K8 [Vector3.new]
      182 CALL                             R19 3 1
      183 MUL                              R17 R18 R19
      184 GETUPVAL                         R19 2
      185 GETTABLEKS                       R18 R19 K12 ["Threshold"]
      187 GETUPVAL                         R19 3
      188 GETUPVAL                         R20 1
      189 LOADK                            R22 K25 [{40, 300, 30}]
      190 DIV                              R21 R17 R22
      191 LOADN                            R22 123
      192 LOADN                            R23 1
      193 CALL                             R20 3 -1
      194 CALL                             R19 -1 1
      195 LOADK                            R20 K26 [0.6]
      196 LOADK                            R21 K27 [0.4]
      197 CALL                             R18 3 1
      198 ADDK                             R23 R6 K28 [0.02]
      199 LOADK                            R27 K13 [0.5]
      200 MULK                             R28 R15 K13 [0.5]
      201 ADD                              R26 R27 R28
      202 MUL                              R25 R16 R26
      203 MULK                             R24 R25 K28 [0.02]
      204 ADD                              R22 R23 R24
      205 MULK                             R23 R15 K29 [0.05]
      206 ADD                              R21 R22 R23
      207 MULK                             R22 R18 K30 [0.3]
      208 ADD                              R20 R21 R22
      209 SUBRK                            R22 R14 K1 ["Y"]
      210 ADDK                             R23 R6 K31 [0.01]
      211 JUMPIFLT                         R23 R22 ; [+4]
      213 LOADN                            R22 0
      214 JUMPIFNOTLT                      R22 R18 ; [+3]
      216 LOADK                            R21 K32 [0.04]
      217 JUMP                             ; [+1]
      218 LOADN                            R21 0
      219 ADD                              R19 R20 R21
      220 LOADN                            R21 0
      221 JUMPIFNOTLT                      R21 R18 ; [+4]
      223 GETIMPORT                        R20 K36 [Enum.Material.Rock]
      225 JUMP                             ; [+8]
      226 LOADN                            R21 1
      227 JUMPIFNOTLT                      R16 R21 ; [+4]
      229 GETIMPORT                        R20 K38 [Enum.Material.CrackedLava]
      231 JUMP                             ; [+2]
      232 GETIMPORT                        R20 K40 [Enum.Material.Basalt]
      234 GETIMPORT                        R22 K38 [Enum.Material.CrackedLava]
      236 JUMPIFNOTEQ                      R20 R22 ; [+7]
      238 SUBRK                            R22 R14 K1 ["Y"]
      239 JUMPIFNOTLT                      R22 R6 ; [+4]
      241 GETIMPORT                        R21 K40 [Enum.Material.Basalt]
      243 JUMP                             ; [+1]
      244 MOVE                             R21 R20
      245 MOVE                             R22 R19
      246 MOVE                             R23 R21
      247 MOVE                             R24 R20
      248 RETURN                           R22 3

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
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 RETURN                           R6 1
