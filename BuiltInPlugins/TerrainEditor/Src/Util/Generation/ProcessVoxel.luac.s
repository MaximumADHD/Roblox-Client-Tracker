PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Y"]
        2 GETTABLEKS                       R4 R1 K1 ["X"]
        4 GETTABLEKS                       R5 R1 K0 ["Y"]
        6 GETTABLEKS                       R6 R1 K2 ["Z"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K3 ["Biomes"]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K4 ["DefaultBiomeFill"]
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R9 R10 K5 ["DefaultBiomeSurface"]
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R10 R11 K6 ["DefaultBiomeValue"]
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R11 R12 K7 ["HasCaves"]
       23 GETUPVAL                         R13 0
       24 GETTABLEKS                       R12 R13 K8 ["MapHeight"]
       26 GETUPVAL                         R14 0
       27 GETTABLEKS                       R13 R14 K9 ["SurfaceThickness"]
       29 GETUPVAL                         R15 0
       30 GETTABLEKS                       R14 R15 K10 ["WaterLevel"]
       32 FASTCALL3                        VECTOR R4 R3 R6
       34 MOVE                             R16 R4
       35 MOVE                             R17 R3
       36 MOVE                             R18 R6
       37 GETIMPORT                        R15 K13 [Vector3.new]
       39 CALL                             R15 3 1
       40 SUBK                             R18 R3 K14 [1]
       41 SUBK                             R19 R5 K14 [1]
       42 DIV                              R17 R18 R19
       43 SUBRK                            R16 R14 K17 ["Enum"]
       44 MULK                             R18 R16 K15 [0.9]
       45 LOADK                            R20 K16 [0.1]
       46 GETUPVAL                         R21 1
       47 GETUPVAL                         R22 2
       48 MOVE                             R23 R15
       49 LOADN                            R24 107
       50 LOADN                            R25 15
       51 CALL                             R22 3 -1
       52 CALL                             R21 -1 1
       53 MUL                              R19 R20 R21
       54 ADD                              R17 R18 R19
       55 LOADN                            R18 0
       56 GETIMPORT                        R19 K20 [Enum.Material.CrackedLava]
       58 GETIMPORT                        R20 K22 [Enum.Material.Rock]
       60 LOADK                            R21 K23 [0.65]
       61 JUMPIFLT                         R21 R16 ; [+4]
       63 LOADK                            R21 K16 [0.1]
       64 JUMPIFNOTLT                      R16 R21 ; [+3]
       66 LOADK                            R18 K24 [0.5]
       67 JUMP                             ; [+75]
       68 LENGTH                           R21 R7
       69 JUMPIFNOTEQKN                    R21 K14 [1] ; [+17]
       71 GETUPVAL                         R22 3
       72 GETTABLEN                        R23 R7 1
       73 GETTABLE                         R21 R22 R23
       74 JUMPIFNOT                        R21 ; [+8]
       75 MOVE                             R22 R21
       76 MOVE                             R23 R15
       77 MOVE                             R24 R17
       78 CALL                             R22 2 3
       79 MOVE                             R18 R22
       80 MOVE                             R19 R23
       81 MOVE                             R20 R24
       82 JUMP                             ; [+60]
       83 MOVE                             R18 R10
       84 MOVE                             R19 R9
       85 MOVE                             R20 R8
       86 JUMP                             ; [+56]
       87 LOADN                            R21 0
       88 GETTABLEKS                       R22 R2 K25 ["WeightPoints"]
       90 LOADNIL                          R23
       91 LOADNIL                          R24
       92 FORGPREP                         R22
       93 GETUPVAL                         R28 3
       94 GETTABLE                         R27 R28 R25
       95 JUMPIFNOT                        R27 ; [+11]
       96 MOVE                             R28 R27
       97 MOVE                             R29 R15
       98 MOVE                             R30 R17
       99 CALL                             R28 2 3
      100 SETTABLEKS                       R28 R26 K26 ["BiomeValue"]
      102 SETTABLEKS                       R29 R26 K27 ["BiomeSurface"]
      104 SETTABLEKS                       R30 R26 K28 ["BiomeFill"]
      106 JUMP                             ; [+6]
      107 SETTABLEKS                       R10 R26 K26 ["BiomeValue"]
      109 SETTABLEKS                       R9 R26 K27 ["BiomeSurface"]
      111 SETTABLEKS                       R8 R26 K28 ["BiomeFill"]
      113 GETTABLEKS                       R29 R26 K26 ["BiomeValue"]
      115 GETTABLEKS                       R30 R26 K29 ["Weight"]
      117 MUL                              R28 R29 R30
      118 ADD                              R21 R21 R28
      119 FORGLOOP                         R22 2 ; [-27]
      121 GETTABLEKS                       R22 R2 K25 ["WeightPoints"]
      123 LOADNIL                          R23
      124 LOADNIL                          R24
      125 FORGPREP                         R22
      126 GETUPVAL                         R27 4
      127 MOVE                             R28 R25
      128 GETTABLEKS                       R29 R26 K29 ["Weight"]
      130 GETTABLEKS                       R30 R26 K26 ["BiomeValue"]
      132 MOVE                             R31 R21
      133 CALL                             R27 4 1
      134 JUMPIFNOTLT                      R18 R27 ; [+6]
      136 MOVE                             R18 R27
      137 GETTABLEKS                       R19 R26 K27 ["BiomeSurface"]
      139 GETTABLEKS                       R20 R26 K28 ["BiomeFill"]
      141 FORGLOOP                         R22 2 ; [-16]
      143 MULK                             R22 R16 K24 [0.5]
      144 MULK                             R23 R18 K24 [0.5]
      145 ADD                              R21 R22 R23
      146 LOADB                            R22 0
      147 SUBRK                            R23 R24 K13 [Vector3.new]
      148 JUMPIFNOTLT                      R23 R21 ; [+7]
      150 LOADK                            R24 K24 [0.5]
      151 ADD                              R23 R24 R13
      152 JUMPIFLT                         R21 R23 ; [+2]
      154 LOADB                            R22 0 +1
      155 LOADB                            R22 1
      156 LOADN                            R23 0
      157 GETTABLEKS                       R24 R2 K7 ["HasCaves"]
      159 JUMPIF                           R24 ; [+5]
      160 LOADK                            R25 K23 [0.65]
      161 JUMPIFLT                         R25 R16 ; [+2]
      163 LOADB                            R24 0 +1
      164 LOADB                            R24 1
      165 MOVE                             R26 R22
      166 JUMPIFNOT                        R26 ; [+6]
      167 SUBRK                            R27 R14 K16 [0.1]
      168 ADDK                             R28 R14 K30 [0.005]
      169 JUMPIFLT                         R27 R28 ; [+2]
      171 LOADB                            R26 0 +1
      172 LOADB                            R26 1
      173 NOT                              R25 R26
      174 MOVE                             R27 R22
      175 JUMPIFNOT                        R27 ; [+6]
      176 SUBRK                            R28 R14 K16 [0.1]
      177 ADDK                             R29 R14 K31 [0.58]
      178 JUMPIFLT                         R29 R28 ; [+2]
      180 LOADB                            R27 0 +1
      181 LOADB                            R27 1
      182 NOT                              R26 R27
      183 JUMPIFNOT                        R11 ; [+86]
      184 JUMPIFNOT                        R24 ; [+85]
      185 JUMPIFNOT                        R25 ; [+84]
      186 JUMPIFNOT                        R26 ; [+83]
      187 GETUPVAL                         R28 5
      188 GETTABLEKS                       R27 R28 K32 ["Ridge"]
      190 GETUPVAL                         R28 1
      191 GETUPVAL                         R29 2
      192 MOVE                             R30 R15
      193 LOADN                            R31 4
      194 LOADN                            R32 30
      195 CALL                             R29 3 -1
      196 CALL                             R28 -1 -1
      197 CALL                             R27 -1 1
      198 GETUPVAL                         R29 5
      199 GETTABLEKS                       R28 R29 K33 ["Threshold"]
      201 MOVE                             R29 R27
      202 LOADK                            R30 K34 [0.84]
      203 LOADK                            R31 K35 [0.01]
      204 CALL                             R28 3 1
      205 GETUPVAL                         R30 5
      206 GETTABLEKS                       R29 R30 K32 ["Ridge"]
      208 GETUPVAL                         R30 1
      209 GETUPVAL                         R31 2
      210 MOVE                             R32 R15
      211 LOADN                            R33 5
      212 LOADN                            R34 30
      213 CALL                             R31 3 -1
      214 CALL                             R30 -1 -1
      215 CALL                             R29 -1 1
      216 GETUPVAL                         R31 5
      217 GETTABLEKS                       R30 R31 K33 ["Threshold"]
      219 MOVE                             R31 R29
      220 LOADK                            R32 K34 [0.84]
      221 LOADK                            R33 K35 [0.01]
      222 CALL                             R30 3 1
      223 GETUPVAL                         R32 5
      224 GETTABLEKS                       R31 R32 K32 ["Ridge"]
      226 GETUPVAL                         R32 1
      227 GETUPVAL                         R33 2
      228 MOVE                             R34 R15
      229 LOADN                            R35 6
      230 LOADN                            R36 30
      231 CALL                             R33 3 -1
      232 CALL                             R32 -1 -1
      233 CALL                             R31 -1 1
      234 GETUPVAL                         R33 5
      235 GETTABLEKS                       R32 R33 K33 ["Threshold"]
      237 MOVE                             R33 R31
      238 LOADK                            R34 K34 [0.84]
      239 LOADK                            R35 K35 [0.01]
      240 CALL                             R32 3 1
      241 JUMPIF                           R22 ; [+2]
      242 LOADN                            R33 0
      243 JUMP                             ; [+14]
      244 GETUPVAL                         R34 5
      245 GETTABLEKS                       R33 R34 K33 ["Threshold"]
      247 GETUPVAL                         R34 1
      248 GETUPVAL                         R35 2
      249 LOADK                            R37 K36 [{1, 0, 1}]
      250 MUL                              R36 R15 R37
      251 LOADN                            R37 143
      252 LOADN                            R38 62
      253 CALL                             R35 3 -1
      254 CALL                             R34 -1 1
      255 LOADK                            R35 K37 [0.35]
      256 LOADN                            R36 0
      257 CALL                             R33 3 1
      258 MUL                              R35 R28 R30
      259 MUL                              R34 R35 R32
      260 SUB                              R23 R34 R33
      261 LOADN                            R36 0
      262 LOADN                            R37 1
      263 FASTCALL3                        MATH_CLAMP R23 R36 R37
      265 MOVE                             R35 R23
      266 GETIMPORT                        R34 K40 [math.clamp]
      268 CALL                             R34 3 1
      269 MOVE                             R23 R34
      270 SUB                              R27 R21 R23
      271 GETUPVAL                         R29 5
      272 GETTABLEKS                       R28 R29 K33 ["Threshold"]
      274 MOVE                             R29 R27
      275 LOADK                            R30 K24 [0.5]
      276 MOVE                             R31 R12
      277 CALL                             R28 3 1
      278 SUBRK                            R30 R14 K16 [0.1]
      279 JUMPIFLT                         R30 R14 ; [+2]
      281 LOADB                            R29 0 +1
      282 LOADB                            R29 1
      283 LOADK                            R31 K24 [0.5]
      284 JUMPIFLE                         R21 R31 ; [+2]
      286 LOADB                            R30 0 +1
      287 LOADB                            R30 1
      288 LOADN                            R32 0
      289 JUMPIFLE                         R28 R32 ; [+2]
      291 LOADB                            R31 0 +1
      292 LOADB                            R31 1
      293 JUMPIFNOT                        R29 ; [+8]
      294 JUMPIFNOT                        R30 ; [+7]
      295 JUMPIFNOT                        R31 ; [+6]
      296 LOADN                            R28 1
      297 GETIMPORT                        R19 K42 [Enum.Material.Water]
      299 GETIMPORT                        R20 K42 [Enum.Material.Water]
      301 LOADB                            R22 1
      302 JUMPIFNOTEQKN                    R3 K14 [1] ; [+3]
      304 LOADN                            R32 1
      305 JUMP                             ; [+1]
      306 MOVE                             R32 R28
      307 JUMPIFNOTEQKN                    R3 K14 [1] ; [+4]
      309 GETIMPORT                        R33 K20 [Enum.Material.CrackedLava]
      311 JUMP                             ; [+10]
      312 LOADN                            R34 0
      313 JUMPIFNOTLE                      R28 R34 ; [+4]
      315 GETIMPORT                        R33 K44 [Enum.Material.Air]
      317 JUMP                             ; [+4]
      318 JUMPIFNOT                        R22 ; [+2]
      319 MOVE                             R33 R19
      320 JUMP                             ; [+1]
      321 MOVE                             R33 R20
      322 MOVE                             R34 R22
      323 JUMPIFNOT                        R34 ; [+10]
      324 LOADB                            R34 1
      325 LOADN                            R35 0
      326 JUMPIFLE                         R32 R35 ; [+7]
      328 GETIMPORT                        R35 K44 [Enum.Material.Air]
      330 JUMPIFEQ                         R33 R35 ; [+2]
      332 LOADB                            R34 0 +1
      333 LOADB                            R34 1
      334 MOVE                             R35 R33
      335 MOVE                             R36 R32
      336 MOVE                             R37 R34
      337 RETURN                           R35 3

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R3
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["BiomeGenerators"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K7 ["Util"]
       22 GETTABLEKS                       R4 R5 K9 ["Generation"]
       24 GETTABLEKS                       R3 R4 K10 ["FindBiomeTransitionValue"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R5 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R5 K7 ["Util"]
       31 GETTABLEKS                       R3 R4 K9 ["Generation"]
       33 GETIMPORT                        R4 K5 [require]
       35 GETTABLEKS                       R5 R3 K11 ["Filter"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R3 K12 ["NoisySeed"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R3 K13 ["Perlin"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R3 K14 ["ProcessPerlin"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Src"]
       57 GETTABLEKS                       R9 R10 K15 ["Types"]
       59 CALL                             R8 1 1
       60 DUPCLOSURE                       R9 K16 [PROTO_1]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 RETURN                           R9 1
