PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["init"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 0
        7 RETURN                           R0 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["_hillOption"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R4 R2 K1 ["frequency"]
        5 LOADN                            R5 0
        6 JUMPIFNOTLT                      R5 R4 ; [+8]
        8 GETTABLEKS                       R4 R2 K2 ["amplitude"]
       10 LOADN                            R5 0
       11 JUMPIFNOTLT                      R5 R4 ; [+3]
       13 LOADB                            R3 1
       14 JUMP                             ; [+1]
       15 LOADB                            R3 0
       16 GETIMPORT                        R4 K5 [table.create]
       18 GETTABLEKS                       R5 R0 K6 ["_mapSize"]
       20 LOADN                            R6 0
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R0 K7 ["_noiseMap"]
       24 JUMPIFNOT                        R3 ; [+7]
       25 GETIMPORT                        R4 K5 [table.create]
       27 GETTABLEKS                       R5 R0 K6 ["_mapSize"]
       29 LOADN                            R6 0
       30 CALL                             R4 2 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 SETTABLEKS                       R4 R0 K8 ["_hillMacroNoiseMap"]
       35 LOADN                            R6 1
       36 GETTABLEKS                       R4 R0 K9 ["_sliceX"]
       38 LOADN                            R5 1
       39 FORNPREP                         R4
       40 LOADN                            R9 1
       41 GETTABLEKS                       R7 R0 K10 ["_sliceZ"]
       43 LOADN                            R8 1
       44 FORNPREP                         R7
       45 MOVE                             R12 R6
       46 MOVE                             R13 R9
       47 NAMECALL                         R10 R0 K11 ["getGaussianHillHeight"]
       49 CALL                             R10 3 1
       50 MOVE                             R13 R6
       51 MOVE                             R14 R9
       52 NAMECALL                         R11 R0 K12 ["getIndex"]
       54 CALL                             R11 3 1
       55 GETTABLEKS                       R12 R0 K7 ["_noiseMap"]
       57 SETTABLE                         R10 R12 R11
       58 JUMPIFNOT                        R2 ; [+10]
       59 MOVE                             R14 R6
       60 MOVE                             R15 R9
       61 MOVE                             R16 R2
       62 NAMECALL                         R12 R0 K11 ["getGaussianHillHeight"]
       64 CALL                             R12 4 1
       65 GETTABLEKS                       R13 R0 K8 ["_hillMacroNoiseMap"]
       67 SUB                              R14 R12 R10
       68 SETTABLE                         R14 R13 R11
       69 FORNLOOP                         R7
       70 FORNLOOP                         R4
       71 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R5 R0 K0 ["_hillOption"]
        2 GETTABLEKS                       R4 R5 K1 ["centerPosPercent"]
        4 JUMPIF                           R4 ; [+1]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R6 R0 K0 ["_hillOption"]
        8 GETTABLEKS                       R5 R6 K2 ["hillHeight"]
       10 GETTABLEKS                       R7 R0 K0 ["_hillOption"]
       12 GETTABLEKS                       R6 R7 K3 ["hillWidth"]
       14 GETIMPORT                        R7 K6 [Vector2.new]
       16 GETTABLEKS                       R9 R0 K7 ["_sliceX"]
       18 DIV                              R8 R1 R9
       19 GETTABLEKS                       R10 R0 K8 ["_sliceZ"]
       21 DIV                              R9 R2 R10
       22 CALL                             R7 2 1
       23 SUB                              R9 R7 R4
       24 GETTABLEKS                       R8 R9 K9 ["magnitude"]
       26 LOADN                            R9 0
       27 JUMPIFNOT                        R3 ; [+31]
       28 GETTABLEKS                       R10 R3 K10 ["frequency"]
       30 GETTABLEKS                       R11 R3 K11 ["amplitude"]
       32 GETTABLEKS                       R12 R3 K12 ["offset"]
       34 GETTABLEKS                       R14 R3 K14 ["seed"]
       36 ORK                              R13 R14 K13 [12345]
       37 GETTABLEKS                       R14 R0 K15 ["_getRotatedPoint"]
       39 SUBK                             R15 R1 K16 [0.5]
       40 SUBK                             R16 R2 K16 [0.5]
       41 CALL                             R14 2 2
       42 GETUPVAL                         R18 1
       43 MUL                              R17 R14 R18
       44 GETTABLEKS                       R18 R12 K17 ["X"]
       46 SUB                              R16 R17 R18
       47 GETUPVAL                         R19 1
       48 MUL                              R18 R15 R19
       49 GETTABLEKS                       R19 R12 K18 ["Y"]
       51 SUB                              R17 R18 R19
       52 GETIMPORT                        R18 K21 [math.noise]
       54 MUL                              R19 R10 R16
       55 MUL                              R20 R10 R17
       56 MOVE                             R21 R13
       57 CALL                             R18 3 1
       58 MUL                              R9 R11 R18
       59 ADD                              R10 R8 R9
       60 MUL                              R15 R10 R10
       61 MINUS                            R14 R15
       62 LOADN                            R17 2
       63 MUL                              R16 R17 R6
       64 MUL                              R15 R16 R6
       65 DIV                              R13 R14 R15
       66 FASTCALL1                        MATH_EXP R13 ; [+2]
       67 GETIMPORT                        R12 K23 [math.exp]
       69 CALL                             R12 1 1
       70 MUL                              R11 R5 R12
       71 RETURN                           R11 1

PROTO_3:
        0 LOADN                            R4 0
        1 LOADN                            R5 0
        2 LOADN                            R6 0
        3 JUMPIFNOT                        R3 ; [+35]
        4 SUBK                             R8 R1 K0 [1]
        5 LOADN                            R9 1
        6 GETTABLEKS                       R10 R0 K1 ["_sliceX"]
        8 FASTCALL                         MATH_CLAMP ; [+2]
        9 GETIMPORT                        R7 K4 [math.clamp]
       11 CALL                             R7 3 1
       12 SUBK                             R9 R2 K0 [1]
       13 LOADN                            R10 1
       14 GETTABLEKS                       R11 R0 K5 ["_sliceZ"]
       16 FASTCALL                         MATH_CLAMP ; [+2]
       17 GETIMPORT                        R8 K4 [math.clamp]
       19 CALL                             R8 3 1
       20 MOVE                             R11 R1
       21 MOVE                             R12 R2
       22 NAMECALL                         R9 R0 K6 ["getIndex"]
       24 CALL                             R9 3 1
       25 GETTABLE                         R4 R3 R9
       26 MOVE                             R11 R7
       27 MOVE                             R12 R2
       28 NAMECALL                         R9 R0 K6 ["getIndex"]
       30 CALL                             R9 3 1
       31 GETTABLE                         R5 R3 R9
       32 MOVE                             R11 R1
       33 MOVE                             R12 R8
       34 NAMECALL                         R9 R0 K6 ["getIndex"]
       36 CALL                             R9 3 1
       37 GETTABLE                         R6 R3 R9
       38 JUMP                             ; [+18]
       39 MOVE                             R9 R1
       40 MOVE                             R10 R2
       41 NAMECALL                         R7 R0 K7 ["getGaussianHillHeight"]
       43 CALL                             R7 3 1
       44 MOVE                             R4 R7
       45 SUBK                             R9 R1 K0 [1]
       46 MOVE                             R10 R2
       47 NAMECALL                         R7 R0 K7 ["getGaussianHillHeight"]
       49 CALL                             R7 3 1
       50 MOVE                             R5 R7
       51 MOVE                             R9 R1
       52 SUBK                             R10 R2 K0 [1]
       53 NAMECALL                         R7 R0 K7 ["getGaussianHillHeight"]
       55 CALL                             R7 3 1
       56 MOVE                             R6 R7
       57 SUB                              R8 R4 R5
       58 GETUPVAL                         R9 0
       59 DIV                              R7 R8 R9
       60 SUB                              R9 R4 R6
       61 GETUPVAL                         R10 0
       62 DIV                              R8 R9 R10
       63 RETURN                           R7 2

PROTO_4:
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
       53 NEWTABLE                         R5 0 4
       55 LOADK                            R6 K9 [0.003]
       56 LOADK                            R7 K10 [0.008]
       57 LOADK                            R8 K11 [0.016]
       58 LOADK                            R9 K12 [0.04]
       59 SETLIST                          R5 R6 4 [1]
       61 NEWTABLE                         R6 0 4
       63 LOADK                            R7 K13 [0.1]
       64 LOADK                            R8 K14 [0.05]
       65 LOADK                            R9 K15 [0.02]
       66 LOADK                            R10 K16 [0.0125]
       67 SETLIST                          R6 R7 4 [1]
       69 MULK                             R7 R1 K17 [10]
       70 GETIMPORT                        R8 K20 [Instance.new]
       72 LOADK                            R9 K21 ["Noise"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K25 [Enum.NoiseType.SimplexGabor]
       76 SETTABLEKS                       R9 R8 K23 ["NoiseType"]
       78 SETTABLEKS                       R4 R8 K8 ["Seed"]
       80 GETIMPORT                        R9 K28 [table.create]
       82 GETTABLEKS                       R11 R0 K29 ["_noiseMap"]
       84 LENGTH                           R10 R11
       85 LOADN                            R11 0
       86 CALL                             R9 2 1
       87 LOADN                            R12 1
       88 LOADN                            R10 4
       89 LOADN                            R11 1
       90 FORNPREP                         R10
       91 LOADN                            R15 1
       92 LENGTH                           R13 R9
       93 LOADN                            R14 1
       94 FORNPREP                         R13
       95 GETTABLEKS                       R17 R0 K29 ["_noiseMap"]
       97 GETTABLE                         R16 R17 R15
       98 SETTABLE                         R16 R9 R15
       99 FORNLOOP                         R13
      100 LOADN                            R15 1
      101 GETTABLEKS                       R13 R0 K30 ["_sliceX"]
      103 LOADN                            R14 1
      104 FORNPREP                         R13
      105 LOADN                            R18 1
      106 GETTABLEKS                       R16 R0 K31 ["_sliceZ"]
      108 LOADN                            R17 1
      109 FORNPREP                         R16
      110 GETTABLEKS                       R19 R0 K32 ["_getRotatedPoint"]
      112 SUBK                             R20 R15 K33 [0.5]
      113 SUBK                             R21 R18 K33 [0.5]
      114 CALL                             R19 2 2
      115 GETUPVAL                         R23 2
      116 MUL                              R22 R19 R23
      117 GETTABLEKS                       R23 R3 K34 ["X"]
      119 SUB                              R21 R22 R23
      120 GETUPVAL                         R24 2
      121 MUL                              R23 R20 R24
      122 GETTABLEKS                       R24 R3 K35 ["Y"]
      124 SUB                              R22 R23 R24
      125 LOADN                            R27 0
      126 FASTCALL3                        VECTOR R21 R27 R22
      128 MOVE                             R26 R21
      129 MOVE                             R28 R22
      130 GETIMPORT                        R25 K37 [Vector3.new]
      132 CALL                             R25 3 1
      133 GETTABLE                         R26 R5 R12
      134 MUL                              R24 R25 R26
      135 MUL                              R23 R24 R7
      136 LOADN                            R24 0
      137 LOADN                            R25 0
      138 JUMPIFNOTEQKN                    R12 K38 [1] ; [+9]
      140 MOVE                             R28 R19
      141 MOVE                             R29 R20
      142 NAMECALL                         R26 R0 K39 ["getHeightGradient"]
      144 CALL                             R26 3 2
      145 MOVE                             R24 R26
      146 MOVE                             R25 R27
      147 JUMP                             ; [+8]
      148 MOVE                             R28 R15
      149 MOVE                             R29 R18
      150 MOVE                             R30 R9
      151 NAMECALL                         R26 R0 K39 ["getHeightGradient"]
      153 CALL                             R26 4 2
      154 MOVE                             R24 R26
      155 MOVE                             R25 R27
      156 MINUS                            R28 R25
      157 LOADN                            R29 0
      158 FASTCALL3                        VECTOR R28 R29 R24
      160 MOVE                             R30 R24
      161 GETIMPORT                        R27 K37 [Vector3.new]
      163 CALL                             R27 3 1
      164 MULK                             R26 R27 K40 [2000]
      165 MOVE                             R29 R23
      166 MOVE                             R30 R26
      167 NAMECALL                         R27 R8 K41 ["SampleDirectional"]
      169 CALL                             R27 3 1
      170 GETTABLE                         R29 R6 R12
      171 MUL                              R28 R29 R2
      172 MUL                              R27 R27 R28
      173 MOVE                             R30 R15
      174 MOVE                             R31 R18
      175 NAMECALL                         R28 R0 K42 ["getIndex"]
      177 CALL                             R28 3 1
      178 GETTABLEKS                       R29 R0 K29 ["_noiseMap"]
      180 GETTABLE                         R30 R29 R28
      181 ADD                              R30 R30 R27
      182 SETTABLE                         R30 R29 R28
      183 FORNLOOP                         R16
      184 FORNLOOP                         R13
      185 FORNLOOP                         R10
      186 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_hillMacroNoiseMap"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADN                            R3 1
        5 GETTABLEKS                       R4 R0 K1 ["_noiseMap"]
        7 LENGTH                           R1 R4
        8 LOADN                            R2 1
        9 FORNPREP                         R1
       10 GETTABLEKS                       R4 R0 K1 ["_noiseMap"]
       12 GETTABLE                         R5 R4 R3
       13 GETTABLEKS                       R7 R0 K0 ["_hillMacroNoiseMap"]
       15 GETTABLE                         R6 R7 R3
       16 ADD                              R5 R5 R6
       17 SETTABLE                         R5 R4 R3
       18 FORNLOOP                         R1
       19 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.create]
        2 GETTABLEKS                       R2 R0 K3 ["_mapSize"]
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K4 ["_heightMapFromNoise"]
        8 LOADN                            R3 1
        9 GETTABLEKS                       R1 R0 K3 ["_mapSize"]
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 GETTABLEKS                       R6 R0 K5 ["_noiseMap"]
       15 GETTABLE                         R5 R6 R3
       16 LOADN                            R6 255
       17 LOADN                            R7 1
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R4 K8 [math.clamp]
       21 CALL                             R4 3 1
       22 GETTABLEKS                       R6 R0 K9 ["_sliceY"]
       24 MUL                              R5 R6 R4
       25 GETTABLEKS                       R6 R0 K4 ["_heightMapFromNoise"]
       27 LOADN                            R9 0
       28 GETTABLEKS                       R10 R0 K9 ["_sliceY"]
       30 FASTCALL3                        MATH_CLAMP R5 R9 R10
       32 MOVE                             R8 R5
       33 GETIMPORT                        R7 K8 [math.clamp]
       35 CALL                             R7 3 1
       36 SETTABLE                         R7 R6 R3
       37 FORNLOOP                         R1
       38 RETURN                           R0 0

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
       40 GETIMPORT                        R8 K18 [Vector2.new]
       42 LOADK                            R9 K19 [0.5]
       43 LOADK                            R10 K19 [0.5]
       44 CALL                             R8 2 1
       45 GETTABLEKS                       R11 R7 K20 ["None"]
       47 NAMECALL                         R9 R1 K17 ["new"]
       49 CALL                             R9 2 1
       50 DUPCLOSURE                       R10 K21 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R10 R9 K22 ["init"]
       54 DUPCLOSURE                       R10 K23 [PROTO_1]
       55 SETTABLEKS                       R10 R9 K24 ["generateHill"]
       57 DUPCLOSURE                       R10 K25 [PROTO_2]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R10 R9 K26 ["getGaussianHillHeight"]
       62 DUPCLOSURE                       R10 K27 [PROTO_3]
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R10 R9 K28 ["getHeightGradient"]
       66 DUPCLOSURE                       R10 K29 [PROTO_4]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R10 R9 K30 ["addErosion"]
       72 DUPCLOSURE                       R10 K31 [PROTO_5]
       73 SETTABLEKS                       R10 R9 K32 ["addMacroNoise"]
       75 DUPCLOSURE                       R10 K33 [PROTO_6]
       76 SETTABLEKS                       R10 R9 K34 ["generateHeightMap"]
       78 RETURN                           R9 1
