PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_payload"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["BuildSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["NoiseScale"]
        9 GETTABLE                         R1 R2 R3
       10 GETTABLEKS                       R4 R0 K0 ["_payload"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K1 ["BuildSettings"]
       15 GETTABLE                         R3 R4 R5
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K3 ["NoiseStrength"]
       19 GETTABLE                         R2 R3 R4
       20 GETTABLEKS                       R7 R0 K0 ["_payload"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K1 ["BuildSettings"]
       25 GETTABLE                         R6 R7 R8
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R7 R8 K5 ["AdvancedNoise"]
       29 GETTABLE                         R5 R6 R7
       30 GETTABLEKS                       R4 R5 K4 ["Children"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K6 ["Offset"]
       35 GETTABLE                         R3 R4 R5
       36 GETTABLEKS                       R9 R0 K0 ["_payload"]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R10 R11 K1 ["BuildSettings"]
       41 GETTABLE                         R8 R9 R10
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R9 R10 K5 ["AdvancedNoise"]
       45 GETTABLE                         R7 R8 R9
       46 GETTABLEKS                       R6 R7 K4 ["Children"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R7 R8 K8 ["Seed"]
       51 GETTABLE                         R5 R6 R7
       52 MULK                             R4 R5 K7 [3.14159265358979]
       53 GETTABLEKS                       R7 R0 K0 ["_payload"]
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R8 R9 K1 ["BuildSettings"]
       58 GETTABLE                         R6 R7 R8
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R7 R8 K9 ["CliffSlope"]
       62 GETTABLE                         R5 R6 R7
       63 GETTABLEKS                       R8 R0 K0 ["_payload"]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R9 R10 K1 ["BuildSettings"]
       68 GETTABLE                         R7 R8 R9
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R8 R9 K10 ["TopRadius"]
       72 GETTABLE                         R6 R7 R8
       73 GETTABLEKS                       R10 R0 K0 ["_payload"]
       75 GETUPVAL                         R12 0
       76 GETTABLEKS                       R11 R12 K1 ["BuildSettings"]
       78 GETTABLE                         R9 R10 R11
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R10 R11 K12 ["TalusHeight"]
       82 GETTABLE                         R8 R9 R10
       83 SUBRK                            R7 R11 K8 ["Seed"]
       84 DUPTABLE                         R8 K16 [{"center2d", "hillWidth", "hillHeight"}]
       85 GETIMPORT                        R9 K19 [Vector2.new]
       87 LOADK                            R10 K20 [0.5]
       88 LOADK                            R11 K20 [0.5]
       89 CALL                             R9 2 1
       90 SETTABLEKS                       R9 R8 K13 ["center2d"]
       92 LOADK                            R9 K21 [0.2]
       93 SETTABLEKS                       R9 R8 K14 ["hillWidth"]
       95 LOADN                            R10 1
       96 MULK                             R11 R6 K22 [1.2]
       97 ADD                              R9 R10 R11
       98 SETTABLEKS                       R9 R8 K15 ["hillHeight"]
      100 LOADN                            R10 0
      101 JUMPIFNOTLT                      R10 R1 ; [+6]
      103 LOADN                            R10 0
      104 JUMPIFNOTLT                      R10 R2 ; [+3]
      106 LOADB                            R9 1
      107 JUMP                             ; [+1]
      108 LOADB                            R9 0
      109 JUMPIFNOT                        R9 ; [+13]
      110 DUPTABLE                         R10 K27 [{"frequency", "amplitude", "offset", "seed"}]
      111 MULK                             R11 R1 K28 [0.05]
      112 SETTABLEKS                       R11 R10 K23 ["frequency"]
      114 MULK                             R12 R2 K30 [0.16]
      115 MULK                             R11 R12 K29 [3]
      116 SETTABLEKS                       R11 R10 K24 ["amplitude"]
      118 SETTABLEKS                       R3 R10 K25 ["offset"]
      120 SETTABLEKS                       R4 R10 K26 ["seed"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R10
      124 MOVE                             R13 R8
      125 MOVE                             R14 R10
      126 NAMECALL                         R11 R0 K31 ["generateHill"]
      128 CALL                             R11 3 0
      129 JUMPIFNOT                        R9 ; [+6]
      130 NAMECALL                         R11 R0 K32 ["addErosion"]
      132 CALL                             R11 1 0
      133 NAMECALL                         R11 R0 K33 ["addMacroNoise"]
      135 CALL                             R11 1 0
      136 MULK                             R14 R5 K7 [3.14159265358979]
      137 DIVK                             R13 R14 K34 [180]
      138 FASTCALL1                        MATH_TAN R13 ; [+2]
      139 GETIMPORT                        R12 K37 [math.tan]
      141 CALL                             R12 1 1
      142 LOADK                            R13 K38 [0.001]
      143 LOADN                            R14 232
      144 FASTCALL                         MATH_CLAMP ; [+2]
      145 GETIMPORT                        R11 K40 [math.clamp]
      147 CALL                             R11 3 1
      148 SUBRK                            R13 R11 K11 [1]
      149 FASTCALL2K                       MATH_MAX R13 K41 ; [+4]
      151 LOADK                            R14 K41 [0]
      152 GETIMPORT                        R12 K43 [math.max]
      154 CALL                             R12 2 1
      155 SUBRK                            R15 R11 K12 ["TalusHeight"]
      156 MUL                              R14 R7 R15
      157 SUBRK                            R13 R11 K14 ["hillWidth"]
      158 SUBK                             R16 R13 K11 [1]
      159 DIV                              R15 R16 R11
      160 ADDK                             R14 R15 K11 [1]
      161 LOADN                            R17 1
      162 GETTABLEKS                       R15 R0 K44 ["_mapSize"]
      164 LOADN                            R16 1
      165 FORNPREP                         R15
      166 GETTABLEKS                       R19 R0 K45 ["_noiseMap"]
      168 GETTABLE                         R18 R19 R17
      169 LOADN                            R19 1
      170 JUMPIFNOTLT                      R18 R19 ; [+21]
      172 GETTABLEKS                       R22 R0 K45 ["_noiseMap"]
      174 GETTABLE                         R21 R22 R17
      175 SUBK                             R20 R21 K11 [1]
      176 MUL                              R19 R11 R20
      177 ADDK                             R18 R19 K11 [1]
      178 JUMPIFNOTLE                      R13 R18 ; [+5]
      180 GETTABLEKS                       R19 R0 K45 ["_noiseMap"]
      182 SETTABLE                         R18 R19 R17
      183 JUMP                             ; [+8]
      184 DIV                              R20 R13 R14
      185 GETTABLEKS                       R22 R0 K45 ["_noiseMap"]
      187 GETTABLE                         R21 R22 R17
      188 MUL                              R19 R20 R21
      189 GETTABLEKS                       R20 R0 K45 ["_noiseMap"]
      191 SETTABLE                         R19 R20 R17
      192 FORNLOOP                         R15
      193 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R3 1
        1 GETTABLEKS                       R4 R0 K0 ["_noiseMap"]
        3 LENGTH                           R1 R4
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 GETTABLEKS                       R4 R0 K0 ["_noiseMap"]
        8 GETTABLE                         R5 R4 R3
        9 GETTABLEKS                       R8 R0 K1 ["_hillMacroNoiseMap"]
       11 GETTABLE                         R7 R8 R3
       12 GETTABLEKS                       R9 R0 K0 ["_noiseMap"]
       14 GETTABLE                         R8 R9 R3
       15 MUL                              R6 R7 R8
       16 ADD                              R5 R5 R6
       17 SETTABLE                         R5 R4 R3
       18 FORNLOOP                         R1
       19 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.create]
        2 GETTABLEKS                       R3 R0 K3 ["_mapSize"]
        4 LOADN                            R4 0
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K4 ["_blendingFactorMap"]
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+22]
       11 DUPTABLE                         R2 K8 [{"PreserveDistance", "PreserveRatio", "BlendingStrength"}]
       12 LOADK                            R3 K9 [1.15]
       13 SETTABLEKS                       R3 R2 K5 ["PreserveDistance"]
       15 LOADK                            R3 K10 [0.5]
       16 SETTABLEKS                       R3 R2 K6 ["PreserveRatio"]
       18 SETTABLEKS                       R1 R2 K7 ["BlendingStrength"]
       20 GETUPVAL                         R3 0
       21 GETIMPORT                        R4 K13 [Vector2.new]
       23 GETTABLEKS                       R5 R0 K14 ["_sliceX"]
       25 GETTABLEKS                       R6 R0 K15 ["_sliceZ"]
       27 CALL                             R4 2 1
       28 MOVE                             R5 R2
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K4 ["_blendingFactorMap"]
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["MountainBaseStamp"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["BuildSettings"]
       25 GETTABLEKS                       R4 R2 K11 ["Category"]
       27 GETTABLEKS                       R5 R2 K12 ["TerrainType"]
       29 GETTABLEKS                       R8 R0 K8 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Util"]
       33 GETTABLEKS                       R6 R7 K14 ["Generation"]
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R6 K15 ["GetBlendingFactorMap"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R10 R5 K16 ["Mesa"]
       42 NAMECALL                         R8 R1 K17 ["new"]
       44 CALL                             R8 2 1
       45 DUPCLOSURE                       R9 K18 [PROTO_0]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R9 R8 K19 ["init"]
       49 DUPCLOSURE                       R9 K20 [PROTO_1]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R9 R8 K21 ["generateNoiseMap"]
       54 DUPCLOSURE                       R9 K22 [PROTO_2]
       55 SETTABLEKS                       R9 R8 K23 ["addMacroNoise"]
       57 DUPCLOSURE                       R9 K24 [PROTO_3]
       58 CAPTURE                          VAL R7
       59 SETTABLEKS                       R9 R8 K25 ["updateBlendingFactorMap"]
       61 RETURN                           R8 1
