PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R5 R3 K0 ["width"]
        2 GETTABLEKS                       R6 R3 K1 ["bankSize"]
        4 GETTABLEKS                       R7 R3 K2 ["slopeTangent"]
        6 GETTABLEKS                       R8 R4 K3 ["amplitude"]
        8 GETTABLEKS                       R9 R4 K4 ["frequency"]
       10 GETTABLEKS                       R10 R4 K5 ["offset"]
       12 GETTABLEKS                       R12 R4 K7 ["seed"]
       14 ORK                              R11 R12 K6 [12345]
       15 MULK                             R13 R11 K9 [1.5]
       16 ADDK                             R12 R13 K8 [17]
       17 GETIMPORT                        R13 K12 [Vector2.new]
       19 GETTABLEKS                       R15 R0 K13 ["_sliceX"]
       21 DIV                              R14 R1 R15
       22 GETTABLEKS                       R16 R0 K14 ["_sliceZ"]
       24 DIV                              R15 R2 R16
       25 CALL                             R13 2 1
       26 GETUPVAL                         R16 0
       27 SUB                              R15 R13 R16
       28 GETTABLEKS                       R14 R15 K15 ["magnitude"]
       30 FASTCALL2K                       MATH_MIN R5 K16 ; [+5]
       32 MOVE                             R16 R5
       33 LOADK                            R17 K16 [0.45]
       34 GETIMPORT                        R15 K19 [math.min]
       36 CALL                             R15 2 1
       37 MOVE                             R5 R15
       38 GETTABLEKS                       R15 R0 K20 ["_getRotatedPoint"]
       40 SUBK                             R16 R1 K21 [0.5]
       41 SUBK                             R17 R2 K21 [0.5]
       42 CALL                             R15 2 2
       43 GETUPVAL                         R19 1
       44 MUL                              R18 R15 R19
       45 GETTABLEKS                       R19 R10 K22 ["X"]
       47 SUB                              R17 R18 R19
       48 GETUPVAL                         R20 1
       49 MUL                              R19 R16 R20
       50 GETTABLEKS                       R20 R10 K23 ["Y"]
       52 SUB                              R18 R19 R20
       53 GETIMPORT                        R19 K25 [math.noise]
       55 GETUPVAL                         R23 2
       56 GETTABLEKS                       R22 R23 K26 ["SHAPE_FREQUENCY"]
       58 MUL                              R21 R9 R22
       59 MUL                              R20 R21 R17
       60 GETUPVAL                         R24 2
       61 GETTABLEKS                       R23 R24 K26 ["SHAPE_FREQUENCY"]
       63 MUL                              R22 R9 R23
       64 MUL                              R21 R22 R18
       65 MOVE                             R22 R11
       66 CALL                             R19 3 1
       67 LOADN                            R23 255
       68 LOADN                            R24 1
       69 FASTCALL3                        MATH_CLAMP R19 R23 R24
       71 MOVE                             R22 R19
       72 GETIMPORT                        R21 K28 [math.clamp]
       74 CALL                             R21 3 1
       75 MUL                              R20 R21 R8
       76 GETUPVAL                         R22 2
       77 GETTABLEKS                       R21 R22 K29 ["SHAPE_AMPLITUDE"]
       79 MUL                              R19 R20 R21
       80 ADD                              R20 R14 R19
       81 GETUPVAL                         R22 3
       82 GETTABLEKS                       R21 R22 K30 ["Ground"]
       84 LOADK                            R22 K21 [0.5]
       85 JUMPIFNOTLT                      R22 R20 ; [+4]
       87 LOADN                            R22 0
       88 MOVE                             R23 R21
       89 RETURN                           R22 2
       90 MINUS                            R23 R7
       91 SUB                              R24 R20 R5
       92 MUL                              R22 R23 R24
       93 MUL                              R24 R6 R7
       94 MUL                              R23 R24 R5
       95 JUMPIFNOTLT                      R23 R22 ; [+72]
       97 DIV                              R26 R23 R7
       98 MINUS                            R25 R26
       99 ADD                              R24 R25 R5
      100 SUBK                             R27 R23 K32 [1]
      101 DIVK                             R26 R27 K31 [4]
      102 SUBK                             R28 R5 K21 [0.5]
      103 SUB                              R27 R28 R24
      104 DIV                              R25 R26 R27
      105 FASTCALL2                        MATH_MAX R7 R25 ; [+5]
      107 MOVE                             R30 R7
      108 MOVE                             R31 R25
      109 GETIMPORT                        R29 K34 [math.max]
      111 CALL                             R29 2 1
      112 MINUS                            R28 R29
      113 MULK                             R27 R28 K31 [4]
      114 SUB                              R28 R20 R24
      115 MUL                              R26 R27 R28
      116 ADD                              R22 R26 R23
      117 LOADN                            R26 1
      118 JUMPIFNOTLT                      R26 R22 ; [+25]
      120 GETIMPORT                        R28 K25 [math.noise]
      122 GETUPVAL                         R32 2
      123 GETTABLEKS                       R31 R32 K35 ["BOTTOM_FREQUENCY"]
      125 MUL                              R30 R9 R31
      126 MUL                              R29 R30 R17
      127 GETUPVAL                         R33 2
      128 GETTABLEKS                       R32 R33 K35 ["BOTTOM_FREQUENCY"]
      130 MUL                              R31 R9 R32
      131 MUL                              R30 R31 R18
      132 MOVE                             R31 R12
      133 CALL                             R28 3 1
      134 MUL                              R27 R28 R8
      135 GETUPVAL                         R29 2
      136 GETTABLEKS                       R28 R29 K36 ["BOTTOM_AMPLITUDE"]
      138 MUL                              R26 R27 R28
      139 SUBRK                            R22 R32 K26 ["SHAPE_FREQUENCY"]
      140 GETUPVAL                         R27 3
      141 GETTABLEKS                       R21 R27 K37 ["Bottom"]
      143 JUMP                             ; [+27]
      144 GETIMPORT                        R28 K25 [math.noise]
      146 GETUPVAL                         R32 2
      147 GETTABLEKS                       R31 R32 K38 ["SIDE_FREQUENCY"]
      149 MUL                              R30 R9 R31
      150 MUL                              R29 R30 R17
      151 GETUPVAL                         R33 2
      152 GETTABLEKS                       R32 R33 K38 ["SIDE_FREQUENCY"]
      154 MUL                              R31 R9 R32
      155 MUL                              R30 R31 R18
      156 MOVE                             R31 R12
      157 CALL                             R28 3 1
      158 MUL                              R27 R28 R8
      159 GETUPVAL                         R29 2
      160 GETTABLEKS                       R28 R29 K39 ["SIDE_AMPLITUDE"]
      162 MUL                              R26 R27 R28
      163 ADD                              R22 R22 R26
      164 GETUPVAL                         R27 3
      165 GETTABLEKS                       R21 R27 K40 ["Bluff"]
      167 JUMP                             ; [+3]
      168 GETUPVAL                         R24 3
      169 GETTABLEKS                       R21 R24 K41 ["Bank"]
      171 MOVE                             R24 R22
      172 MOVE                             R25 R21
      173 RETURN                           R24 2

PROTO_2:
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
       60 GETTABLEKS                       R7 R8 K9 ["BankSize"]
       62 GETTABLE                         R5 R6 R7
       63 GETIMPORT                        R6 K12 [table.create]
       65 GETTABLEKS                       R7 R0 K13 ["_mapSize"]
       67 LOADN                            R8 0
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R0 K14 ["_noiseMap"]
       71 GETIMPORT                        R6 K12 [table.create]
       73 GETTABLEKS                       R7 R0 K13 ["_mapSize"]
       75 LOADB                            R8 0
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R0 K15 ["_fillBottomPositions"]
       79 GETIMPORT                        R6 K12 [table.create]
       81 GETTABLEKS                       R7 R0 K13 ["_mapSize"]
       83 LOADN                            R8 0
       84 CALL                             R6 2 1
       85 SETTABLEKS                       R6 R0 K16 ["_lakeAreaPositions"]
       87 GETIMPORT                        R6 K12 [table.create]
       89 GETTABLEKS                       R7 R0 K13 ["_mapSize"]
       91 LOADN                            R8 0
       92 CALL                             R6 2 1
       93 SETTABLEKS                       R6 R0 K14 ["_noiseMap"]
       95 GETTABLEKS                       R15 R0 K19 ["_region"]
       97 GETTABLEKS                       R14 R15 K20 ["Size"]
       99 GETTABLEKS                       R13 R14 K21 ["X"]
      101 GETTABLEKS                       R16 R0 K19 ["_region"]
      103 GETTABLEKS                       R15 R16 K20 ["Size"]
      105 GETTABLEKS                       R14 R15 K22 ["Z"]
      107 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      109 GETIMPORT                        R12 K25 [math.min]
      111 CALL                             R12 2 1
      112 GETTABLEKS                       R15 R0 K19 ["_region"]
      114 GETTABLEKS                       R14 R15 K20 ["Size"]
      116 GETTABLEKS                       R13 R14 K26 ["Y"]
      118 DIV                              R11 R12 R13
      119 FASTCALL1                        MATH_SQRT R11 ; [+2]
      120 GETIMPORT                        R10 K28 [math.sqrt]
      122 CALL                             R10 1 1
      123 MULK                             R9 R10 K18 [22]
      124 MULK                             R8 R9 K7 [3.14159265358979]
      125 DIVK                             R7 R8 K17 [180]
      126 FASTCALL1                        MATH_TAN R7 ; [+2]
      127 GETIMPORT                        R6 K30 [math.tan]
      129 CALL                             R6 1 1
      130 LOADN                            R9 1
      131 GETTABLEKS                       R7 R0 K31 ["_sliceX"]
      133 LOADN                            R8 1
      134 FORNPREP                         R7
      135 LOADN                            R12 1
      136 GETTABLEKS                       R10 R0 K32 ["_sliceZ"]
      138 LOADN                            R11 1
      139 FORNPREP                         R10
      140 MOVE                             R15 R9
      141 MOVE                             R16 R12
      142 NAMECALL                         R13 R0 K33 ["getIndex"]
      144 CALL                             R13 3 1
      145 JUMPIFEQKN                       R9 K34 [1] ; [+11]
      147 GETTABLEKS                       R14 R0 K31 ["_sliceX"]
      149 JUMPIFEQ                         R9 R14 ; [+7]
      151 JUMPIFEQKN                       R12 K34 [1] ; [+5]
      153 GETTABLEKS                       R14 R0 K32 ["_sliceZ"]
      155 JUMPIFNOTEQ                      R12 R14 ; [+6]
      157 GETTABLEKS                       R14 R0 K14 ["_noiseMap"]
      159 LOADN                            R15 0
      160 SETTABLE                         R15 R14 R13
      161 JUMP                             ; [+41]
      162 GETTABLEKS                       R14 R0 K14 ["_noiseMap"]
      164 GETTABLEKS                       R15 R0 K16 ["_lakeAreaPositions"]
      166 MOVE                             R18 R9
      167 MOVE                             R19 R12
      168 DUPTABLE                         R20 K38 [{"bankSize", "slopeTangent", "width"}]
      169 SETTABLEKS                       R5 R20 K35 ["bankSize"]
      171 SETTABLEKS                       R6 R20 K36 ["slopeTangent"]
      173 LOADK                            R21 K39 [0.45]
      174 SETTABLEKS                       R21 R20 K37 ["width"]
      176 DUPTABLE                         R21 K44 [{"frequency", "amplitude", "offset", "seed"}]
      177 SETTABLEKS                       R1 R21 K40 ["frequency"]
      179 SETTABLEKS                       R2 R21 K41 ["amplitude"]
      181 SETTABLEKS                       R3 R21 K42 ["offset"]
      183 SETTABLEKS                       R4 R21 K43 ["seed"]
      185 NAMECALL                         R16 R0 K45 ["getLakeHeight"]
      187 CALL                             R16 5 2
      188 SETTABLE                         R16 R14 R13
      189 SETTABLE                         R17 R15 R13
      190 GETTABLEKS                       R14 R0 K15 ["_fillBottomPositions"]
      192 GETTABLEKS                       R17 R0 K16 ["_lakeAreaPositions"]
      194 GETTABLE                         R16 R17 R13
      195 GETUPVAL                         R18 2
      196 GETTABLEKS                       R17 R18 K46 ["Ground"]
      198 JUMPIFNOTEQ                      R16 R17 ; [+2]
      200 LOADB                            R15 0 +1
      201 LOADB                            R15 1
      202 SETTABLE                         R15 R14 R13
      203 FORNLOOP                         R10
      204 FORNLOOP                         R7
      205 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R2 R0 K3 ["_mapSize"]
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K4 ["_heightMapFromNoise"]
        8 GETTABLEKS                       R4 R0 K5 ["_medianHeightCache"]
       10 GETTABLEKS                       R5 R0 K6 ["_meanHeightCache"]
       12 SUB                              R3 R4 R5
       13 FASTCALL1                        MATH_ABS R3 ; [+2]
       14 GETIMPORT                        R2 K9 [math.abs]
       16 CALL                             R2 1 1
       17 LOADN                            R3 5
       18 JUMPIFLT                         R2 R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 MOVE                             R2 R1
       23 JUMPIFNOT                        R2 ; [+10]
       24 GETTABLEKS                       R4 R0 K10 ["_sliceY"]
       26 GETTABLEKS                       R5 R0 K5 ["_medianHeightCache"]
       28 SUB                              R3 R4 R5
       29 LOADN                            R4 5
       30 JUMPIFLT                         R3 R4 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 LOADN                            R5 1
       35 GETTABLEKS                       R3 R0 K3 ["_mapSize"]
       37 LOADN                            R4 1
       38 FORNPREP                         R3
       39 GETTABLEKS                       R7 R0 K11 ["_lakeAreaPositions"]
       41 GETTABLE                         R6 R7 R5
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R7 R8 K12 ["Ground"]
       45 JUMPIFEQ                         R6 R7 ; [+29]
       47 JUMPIFNOT                        R2 ; [+4]
       48 GETTABLEKS                       R7 R0 K13 ["_heightmapCache"]
       50 GETTABLE                         R6 R7 R5
       51 JUMP                             ; [+2]
       52 GETTABLEKS                       R6 R0 K10 ["_sliceY"]
       54 GETTABLEKS                       R9 R0 K14 ["_noiseMap"]
       56 GETTABLE                         R8 R9 R5
       57 LOADN                            R9 0
       58 LOADN                            R10 1
       59 FASTCALL                         MATH_CLAMP ; [+2]
       60 GETIMPORT                        R7 K16 [math.clamp]
       62 CALL                             R7 3 1
       63 SUBRK                            R9 R17 K7 ["math"]
       64 MUL                              R8 R6 R9
       65 GETTABLEKS                       R9 R0 K4 ["_heightMapFromNoise"]
       67 FASTCALL2K                       MATH_MAX R8 K17 ; [+5]
       69 MOVE                             R11 R8
       70 LOADK                            R12 K17 [1]
       71 GETIMPORT                        R10 K19 [math.max]
       73 CALL                             R10 2 1
       74 SETTABLE                         R10 R9 R5
       75 FORNLOOP                         R3
       76 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.create]
        2 GETTABLEKS                       R3 R0 K3 ["_mapSize"]
        4 LOADN                            R4 0
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K4 ["_blendingFactorMap"]
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+22]
       11 DUPTABLE                         R2 K8 [{"PreserveDistance", "PreserveRatio", "BlendingStrength"}]
       12 LOADN                            R3 0
       13 SETTABLEKS                       R3 R2 K5 ["PreserveDistance"]
       15 LOADK                            R3 K9 [0.2]
       16 SETTABLEKS                       R3 R2 K6 ["PreserveRatio"]
       18 SETTABLEKS                       R1 R2 K7 ["BlendingStrength"]
       20 GETUPVAL                         R3 0
       21 GETIMPORT                        R4 K12 [Vector2.new]
       23 GETTABLEKS                       R5 R0 K13 ["_sliceX"]
       25 GETTABLEKS                       R6 R0 K14 ["_sliceZ"]
       27 CALL                             R4 2 1
       28 MOVE                             R5 R2
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K4 ["_blendingFactorMap"]
       32 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_heightMapFromNoise"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K4 ["_heightMap"]
        7 GETTABLEKS                       R1 R0 K5 ["_sliceY"]
        9 SETTABLEKS                       R1 R0 K6 ["_minWaterPoint"]
       11 GETTABLEKS                       R1 R0 K5 ["_sliceY"]
       13 SETTABLEKS                       R1 R0 K7 ["_maxWaterPoint"]
       15 LOADN                            R3 1
       16 GETTABLEKS                       R1 R0 K8 ["_mapSize"]
       18 LOADN                            R2 1
       19 FORNPREP                         R1
       20 GETTABLEKS                       R5 R0 K3 ["_heightMapFromNoise"]
       22 GETTABLE                         R4 R5 R3
       23 GETTABLEKS                       R6 R0 K9 ["_heightmapCache"]
       25 GETTABLE                         R5 R6 R3
       26 GETTABLEKS                       R6 R0 K10 ["_addBlending"]
       28 JUMPIFNOT                        R6 ; [+18]
       29 GETTABLEKS                       R7 R0 K11 ["_lakeAreaPositions"]
       31 GETTABLE                         R6 R7 R3
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K12 ["Bank"]
       35 JUMPIFNOTEQ                      R6 R7 ; [+11]
       37 GETTABLEKS                       R7 R0 K13 ["_blendingFactorMap"]
       39 GETTABLE                         R6 R7 R3
       40 GETTABLEKS                       R7 R0 K4 ["_heightMap"]
       42 SUBRK                            R10 R14 K6 ["_minWaterPoint"]
       43 MUL                              R9 R10 R4
       44 MUL                              R10 R6 R5
       45 ADD                              R8 R9 R10
       46 SETTABLE                         R8 R7 R3
       47 GETTABLEKS                       R7 R0 K11 ["_lakeAreaPositions"]
       49 GETTABLE                         R6 R7 R3
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R7 R8 K12 ["Bank"]
       53 JUMPIFNOTEQ                      R6 R7 ; [+14]
       55 GETTABLEKS                       R7 R0 K7 ["_maxWaterPoint"]
       57 GETTABLEKS                       R9 R0 K4 ["_heightMap"]
       59 GETTABLE                         R8 R9 R3
       60 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       62 GETIMPORT                        R6 K17 [math.min]
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R0 K7 ["_maxWaterPoint"]
       67 JUMP                             ; [+20]
       68 GETTABLEKS                       R7 R0 K11 ["_lakeAreaPositions"]
       70 GETTABLE                         R6 R7 R3
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R7 R8 K18 ["Ground"]
       74 JUMPIFEQ                         R6 R7 ; [+13]
       76 GETTABLEKS                       R7 R0 K6 ["_minWaterPoint"]
       78 GETTABLEKS                       R9 R0 K4 ["_heightMap"]
       80 GETTABLE                         R8 R9 R3
       81 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       83 GETIMPORT                        R6 K17 [math.min]
       85 CALL                             R6 2 1
       86 SETTABLEKS                       R6 R0 K6 ["_minWaterPoint"]
       88 FORNLOOP                         R1
       89 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R2 R0 K3 ["_sliceX"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K4 ["_waterMap"]
        7 LOADN                            R3 1
        8 GETTABLEKS                       R1 R0 K3 ["_sliceX"]
       10 LOADN                            R2 1
       11 FORNPREP                         R1
       12 GETTABLEKS                       R4 R0 K4 ["_waterMap"]
       14 GETIMPORT                        R5 K2 [table.create]
       16 GETTABLEKS                       R6 R0 K5 ["_sliceY"]
       18 CALL                             R5 1 1
       19 SETTABLE                         R5 R4 R3
       20 LOADN                            R6 1
       21 GETTABLEKS                       R4 R0 K5 ["_sliceY"]
       23 LOADN                            R5 1
       24 FORNPREP                         R4
       25 GETTABLEKS                       R8 R0 K4 ["_waterMap"]
       27 GETTABLE                         R7 R8 R3
       28 GETIMPORT                        R8 K7 [table.clone]
       30 GETTABLEKS                       R11 R0 K8 ["_waterCache"]
       32 GETTABLE                         R10 R11 R3
       33 GETTABLE                         R9 R10 R6
       34 CALL                             R8 1 1
       35 SETTABLE                         R8 R7 R6
       36 FORNLOOP                         R4
       37 FORNLOOP                         R1
       38 GETTABLEKS                       R3 R0 K9 ["_payload"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K10 ["BuildSettings"]
       43 GETTABLE                         R2 R3 R4
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R3 R4 K11 ["WaterLevel"]
       47 GETTABLE                         R1 R2 R3
       48 JUMPIFNOT                        R1 ; [+69]
       49 LOADN                            R2 0
       50 JUMPIFNOTLT                      R2 R1 ; [+67]
       52 GETTABLEKS                       R5 R0 K12 ["_minWaterPoint"]
       54 SUBRK                            R6 R13 K1 ["create"]
       55 MUL                              R4 R5 R6
       56 GETTABLEKS                       R6 R0 K14 ["_maxWaterPoint"]
       58 MUL                              R5 R6 R1
       59 ADD                              R3 R4 R5
       60 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       61 GETIMPORT                        R2 K17 [math.floor]
       63 CALL                             R2 1 1
       64 LOADN                            R3 1
       65 JUMPIFNOTLT                      R2 R3 ; [+2]
       67 RETURN                           R0 0
       68 LOADN                            R5 1
       69 GETTABLEKS                       R3 R0 K3 ["_sliceX"]
       71 LOADN                            R4 1
       72 FORNPREP                         R3
       73 LOADN                            R8 1
       74 GETTABLEKS                       R6 R0 K18 ["_sliceZ"]
       76 LOADN                            R7 1
       77 FORNPREP                         R6
       78 MOVE                             R11 R5
       79 MOVE                             R12 R8
       80 NAMECALL                         R9 R0 K19 ["getIndex"]
       82 CALL                             R9 3 1
       83 GETTABLEKS                       R11 R0 K20 ["_lakeAreaPositions"]
       85 GETTABLE                         R10 R11 R9
       86 GETUPVAL                         R12 2
       87 GETTABLEKS                       R11 R12 K21 ["Ground"]
       89 JUMPIFEQ                         R10 R11 ; [+26]
       91 GETTABLEKS                       R11 R0 K20 ["_lakeAreaPositions"]
       93 GETTABLE                         R10 R11 R9
       94 GETUPVAL                         R12 2
       95 GETTABLEKS                       R11 R12 K22 ["Bank"]
       97 JUMPIFEQ                         R10 R11 ; [+18]
       99 GETTABLEKS                       R14 R0 K23 ["_heightMap"]
      101 GETTABLE                         R13 R14 R9
      102 FASTCALL1                        MATH_CEIL R13 ; [+2]
      103 GETIMPORT                        R12 K25 [math.ceil]
      105 CALL                             R12 1 1
      106 MOVE                             R10 R2
      107 LOADN                            R11 1
      108 FORNPREP                         R10
      109 GETTABLEKS                       R15 R0 K4 ["_waterMap"]
      111 GETTABLE                         R14 R15 R5
      112 GETTABLE                         R13 R14 R12
      113 LOADN                            R14 1
      114 SETTABLE                         R14 R13 R8
      115 FORNLOOP                         R10
      116 FORNLOOP                         R6
      117 FORNLOOP                         R3
      118 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["_getHeightMapCacheTopDown"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETTABLEKS                       R2 R1 K0 ["heightMap"]
        3 JUMPIF                           R2 ; [+2]
        4 GETTABLEKS                       R2 R1 K1 ["noiseMap"]
        6 SETTABLEKS                       R2 R1 K1 ["noiseMap"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["generateStamp"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["BaseStamp"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K8 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Resources"]
       22 GETTABLEKS                       R3 R4 K10 ["Constants"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K11 ["VoxelResolution"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R6 R0 K8 ["Src"]
       31 GETTABLEKS                       R5 R6 K12 ["Types"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["BuildSettings"]
       36 GETTABLEKS                       R6 R4 K14 ["Category"]
       38 GETTABLEKS                       R7 R4 K15 ["TerrainType"]
       40 GETTABLEKS                       R10 R0 K8 ["Src"]
       42 GETTABLEKS                       R9 R10 K16 ["Util"]
       44 GETTABLEKS                       R8 R9 K17 ["Generation"]
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R8 K18 ["GetBlendingFactorMap"]
       50 CALL                             R9 1 1
       51 DUPTABLE                         R10 K25 [{"BOTTOM_AMPLITUDE", "BOTTOM_FREQUENCY", "SHAPE_AMPLITUDE", "SHAPE_FREQUENCY", "SIDE_AMPLITUDE", "SIDE_FREQUENCY"}]
       52 LOADK                            R11 K26 [0.2]
       53 SETTABLEKS                       R11 R10 K19 ["BOTTOM_AMPLITUDE"]
       55 LOADK                            R11 K27 [0.125]
       56 SETTABLEKS                       R11 R10 K20 ["BOTTOM_FREQUENCY"]
       58 LOADK                            R11 K28 [0.15]
       59 SETTABLEKS                       R11 R10 K21 ["SHAPE_AMPLITUDE"]
       61 LOADK                            R11 K29 [0.025]
       62 SETTABLEKS                       R11 R10 K22 ["SHAPE_FREQUENCY"]
       64 LOADK                            R11 K30 [0.03]
       65 SETTABLEKS                       R11 R10 K23 ["SIDE_AMPLITUDE"]
       67 LOADK                            R11 K31 [0.25]
       68 SETTABLEKS                       R11 R10 K24 ["SIDE_FREQUENCY"]
       70 GETIMPORT                        R11 K34 [Vector2.new]
       72 LOADK                            R12 K35 [0.5]
       73 LOADK                            R13 K35 [0.5]
       74 CALL                             R11 2 1
       75 DUPTABLE                         R12 K40 [{"Ground", "Bank", "Bluff", "Bottom"}]
       76 LOADN                            R13 0
       77 SETTABLEKS                       R13 R12 K36 ["Ground"]
       79 LOADN                            R13 1
       80 SETTABLEKS                       R13 R12 K37 ["Bank"]
       82 LOADN                            R13 2
       83 SETTABLEKS                       R13 R12 K38 ["Bluff"]
       85 LOADN                            R13 3
       86 SETTABLEKS                       R13 R12 K39 ["Bottom"]
       88 GETTABLEKS                       R15 R7 K41 ["Lake"]
       90 NAMECALL                         R13 R1 K33 ["new"]
       92 CALL                             R13 2 1
       93 DUPCLOSURE                       R14 K42 [PROTO_0]
       94 CAPTURE                          VAL R1
       95 SETTABLEKS                       R14 R13 K43 ["init"]
       97 DUPCLOSURE                       R14 K44 [PROTO_1]
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R12
      102 SETTABLEKS                       R14 R13 K45 ["getLakeHeight"]
      104 DUPCLOSURE                       R14 K46 [PROTO_2]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R12
      108 SETTABLEKS                       R14 R13 K47 ["generateNoiseMap"]
      110 DUPCLOSURE                       R14 K48 [PROTO_3]
      111 CAPTURE                          VAL R12
      112 SETTABLEKS                       R14 R13 K49 ["generateHeightMap"]
      114 DUPCLOSURE                       R14 K50 [PROTO_4]
      115 CAPTURE                          VAL R9
      116 SETTABLEKS                       R14 R13 K51 ["updateBlendingFactorMap"]
      118 DUPCLOSURE                       R14 K52 [PROTO_5]
      119 CAPTURE                          VAL R12
      120 SETTABLEKS                       R14 R13 K53 ["blendHeightMap"]
      122 DUPCLOSURE                       R14 K54 [PROTO_6]
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R12
      126 SETTABLEKS                       R14 R13 K55 ["postProcessing"]
      128 DUPCLOSURE                       R14 K56 [PROTO_7]
      129 SETTABLEKS                       R14 R13 K57 ["generateHeightMapCacheTopDown"]
      131 DUPCLOSURE                       R14 K58 [PROTO_8]
      132 SETTABLEKS                       R14 R13 K59 ["generateHeightMapCacheBottomUp"]
      134 DUPCLOSURE                       R14 K60 [PROTO_9]
      135 CAPTURE                          VAL R1
      136 SETTABLEKS                       R14 R13 K61 ["generateStamp"]
      138 RETURN                           R13 1
