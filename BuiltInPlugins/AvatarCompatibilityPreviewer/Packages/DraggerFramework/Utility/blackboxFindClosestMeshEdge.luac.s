PROTO_0:
        0 MOVE                             R7 R3
        1 NAMECALL                         R5 R1 K0 ["Cross"]
        3 CALL                             R5 2 1
        4 GETTABLEKS                       R4 R5 K1 ["Unit"]
        6 MOVE                             R8 R4
        7 NAMECALL                         R6 R1 K0 ["Cross"]
        9 CALL                             R6 2 1
       10 GETTABLEKS                       R5 R6 K1 ["Unit"]
       12 MOVE                             R9 R4
       13 NAMECALL                         R7 R3 K0 ["Cross"]
       15 CALL                             R7 2 1
       16 GETTABLEKS                       R6 R7 K1 ["Unit"]
       18 MOVE                             R9 R6
       19 NAMECALL                         R7 R5 K2 ["Dot"]
       21 CALL                             R7 2 1
       22 SUB                              R8 R0 R2
       23 MOVE                             R13 R6
       24 NAMECALL                         R11 R8 K2 ["Dot"]
       26 CALL                             R11 2 1
       27 MOVE                             R15 R5
       28 NAMECALL                         R13 R8 K2 ["Dot"]
       30 CALL                             R13 2 1
       31 MUL                              R12 R7 R13
       32 SUB                              R10 R11 R12
       33 MUL                              R12 R7 R7
       34 SUBRK                            R11 R3 K12 [NULL]
       35 DIV                              R9 R10 R11
       36 MUL                              R11 R6 R9
       37 ADD                              R10 R2 R11
       38 MOVE                             R11 R10
       39 MOVE                             R12 R4
       40 RETURN                           R11 2

PROTO_1:
        0 SUB                              R5 R2 R0
        1 MOVE                             R7 R3
        2 NAMECALL                         R5 R5 K0 ["Dot"]
        4 CALL                             R5 2 1
        5 MOVE                             R8 R3
        6 NAMECALL                         R6 R1 K0 ["Dot"]
        8 CALL                             R6 2 1
        9 DIV                              R4 R5 R6
       10 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R9 R0 K1 ["Size"]
        2 GETTABLEKS                       R8 R9 K2 ["Magnitude"]
        4 ADDK                             R7 R8 K0 [0.01]
        5 LOADK                            R8 K3 [-∞]
        6 LOADK                            R9 K4 [∞]
        7 GETIMPORT                        R10 K7 [RaycastParams.new]
        9 CALL                             R10 0 1
       10 GETIMPORT                        R11 K11 [Enum.RaycastFilterType.Whitelist]
       12 SETTABLEKS                       R11 R10 K12 ["FilterType"]
       14 LOADB                            R11 1
       15 SETTABLEKS                       R11 R10 K13 ["BruteForceAllSlow"]
       17 LOADK                            R11 K14 ["StudioSelectable"]
       18 SETTABLEKS                       R11 R10 K15 ["CollisionGroup"]
       20 NEWTABLE                         R11 0 1
       22 MOVE                             R12 R0
       23 SETLIST                          R11 R12 1 [1]
       25 SETTABLEKS                       R11 R10 K16 ["FilterDescendantsInstances"]
       27 ADD                              R12 R3 R4
       28 GETTABLEKS                       R11 R12 K17 ["Unit"]
       30 MULK                             R13 R11 K0 [0.01]
       31 ADD                              R12 R1 R13
       32 GETIMPORT                        R13 K19 [workspace]
       34 MULK                             R16 R5 K0 [0.01]
       35 ADD                              R15 R12 R16
       36 MUL                              R16 R2 R7
       37 MOVE                             R17 R10
       38 NAMECALL                         R13 R13 K20 ["Raycast"]
       40 CALL                             R13 4 1
       41 JUMPIFNOT                        R13 ; [+21]
       42 GETTABLEKS                       R17 R13 K21 ["Position"]
       44 GETTABLEKS                       R18 R13 K22 ["Normal"]
       46 SUB                              R19 R17 R1
       47 MOVE                             R21 R18
       48 NAMECALL                         R19 R19 K23 ["Dot"]
       50 CALL                             R19 2 1
       51 MOVE                             R22 R18
       52 NAMECALL                         R20 R2 K23 ["Dot"]
       54 CALL                             R20 2 1
       55 DIV                              R16 R19 R20
       56 FASTCALL2                        MATH_MIN R9 R16 ; [+4]
       58 MOVE                             R15 R9
       59 GETIMPORT                        R14 K26 [math.min]
       61 CALL                             R14 2 1
       62 MOVE                             R9 R14
       63 GETIMPORT                        R14 K19 [workspace]
       65 MULK                             R17 R6 K0 [0.01]
       66 ADD                              R16 R12 R17
       67 MUL                              R17 R2 R7
       68 MOVE                             R18 R10
       69 NAMECALL                         R14 R14 K20 ["Raycast"]
       71 CALL                             R14 4 1
       72 JUMPIFNOT                        R14 ; [+21]
       73 GETTABLEKS                       R18 R14 K21 ["Position"]
       75 GETTABLEKS                       R19 R14 K22 ["Normal"]
       77 SUB                              R20 R18 R1
       78 MOVE                             R22 R19
       79 NAMECALL                         R20 R20 K23 ["Dot"]
       81 CALL                             R20 2 1
       82 MOVE                             R23 R19
       83 NAMECALL                         R21 R2 K23 ["Dot"]
       85 CALL                             R21 2 1
       86 DIV                              R17 R20 R21
       87 FASTCALL2                        MATH_MIN R9 R17 ; [+4]
       89 MOVE                             R16 R9
       90 GETIMPORT                        R15 K26 [math.min]
       92 CALL                             R15 2 1
       93 MOVE                             R9 R15
       94 LOADK                            R15 K0 [0.01]
       95 LOADN                            R18 1
       96 LOADN                            R16 14
       97 LOADN                            R17 1
       98 FORNPREP                         R16
       99 JUMPIFLT                         R9 R15 ; [+71]
      101 GETIMPORT                        R19 K19 [workspace]
      103 MUL                              R22 R2 R15
      104 ADD                              R21 R12 R22
      105 MINUS                            R24 R11
      106 MULK                             R23 R24 K27 [2]
      107 MULK                             R22 R23 K0 [0.01]
      108 MOVE                             R23 R10
      109 NAMECALL                         R19 R19 K20 ["Raycast"]
      111 CALL                             R19 4 1
      112 JUMPIFNOT                        R19 ; [+5]
      113 GETTABLEKS                       R20 R19 K28 ["Distance"]
      115 LOADK                            R21 K29 [0.02]
      116 JUMPIFNOTLT                      R21 R20 ; [+52]
      118 MUL                              R21 R2 R15
      119 ADD                              R20 R12 R21
      120 JUMPIFNOT                        R19 ; [+5]
      121 GETTABLEKS                       R22 R19 K28 ["Distance"]
      123 MUL                              R21 R11 R22
      124 SUB                              R20 R20 R21
      125 JUMP                             ; [+3]
      126 MULK                             R22 R11 K27 [2]
      127 MULK                             R21 R22 K0 [0.01]
      128 SUB                              R20 R20 R21
      129 GETIMPORT                        R21 K19 [workspace]
      131 MOVE                             R23 R20
      132 SUB                              R24 R1 R20
      133 MOVE                             R25 R10
      134 NAMECALL                         R21 R21 K20 ["Raycast"]
      136 CALL                             R21 4 1
      137 JUMPIFNOT                        R21 ; [+33]
      138 GETTABLEKS                       R22 R21 K22 ["Normal"]
      140 MOVE                             R24 R11
      141 NAMECALL                         R22 R22 K23 ["Dot"]
      143 CALL                             R22 2 1
      144 LOADK                            R23 K30 [0.8]
      145 JUMPIFNOTLT                      R22 R23 ; [+25]
      147 GETTABLEKS                       R25 R21 K21 ["Position"]
      149 GETTABLEKS                       R26 R21 K22 ["Normal"]
      151 SUB                              R27 R25 R1
      152 MOVE                             R29 R26
      153 NAMECALL                         R27 R27 K23 ["Dot"]
      155 CALL                             R27 2 1
      156 MOVE                             R30 R26
      157 NAMECALL                         R28 R2 K23 ["Dot"]
      159 CALL                             R28 2 1
      160 DIV                              R24 R27 R28
      161 FASTCALL2                        MATH_MIN R9 R24 ; [+4]
      163 MOVE                             R23 R9
      164 GETIMPORT                        R22 K26 [math.min]
      166 CALL                             R22 2 1
      167 MOVE                             R9 R22
      168 JUMP                             ; [+2]
      169 MULK                             R15 R15 K31 [2.28]
      170 FORNLOOP                         R16
      171 GETIMPORT                        R16 K19 [workspace]
      173 MULK                             R19 R5 K0 [0.01]
      174 ADD                              R18 R12 R19
      175 MINUS                            R20 R2
      176 MUL                              R19 R20 R7
      177 MOVE                             R20 R10
      178 NAMECALL                         R16 R16 K20 ["Raycast"]
      180 CALL                             R16 4 1
      181 JUMPIFNOT                        R16 ; [+21]
      182 GETTABLEKS                       R20 R16 K21 ["Position"]
      184 GETTABLEKS                       R21 R16 K22 ["Normal"]
      186 SUB                              R22 R20 R1
      187 MOVE                             R24 R21
      188 NAMECALL                         R22 R22 K23 ["Dot"]
      190 CALL                             R22 2 1
      191 MOVE                             R25 R21
      192 NAMECALL                         R23 R2 K23 ["Dot"]
      194 CALL                             R23 2 1
      195 DIV                              R19 R22 R23
      196 FASTCALL2                        MATH_MAX R8 R19 ; [+4]
      198 MOVE                             R18 R8
      199 GETIMPORT                        R17 K33 [math.max]
      201 CALL                             R17 2 1
      202 MOVE                             R8 R17
      203 GETIMPORT                        R17 K19 [workspace]
      205 MULK                             R20 R6 K0 [0.01]
      206 ADD                              R19 R12 R20
      207 MINUS                            R21 R2
      208 MUL                              R20 R21 R7
      209 MOVE                             R21 R10
      210 NAMECALL                         R17 R17 K20 ["Raycast"]
      212 CALL                             R17 4 1
      213 JUMPIFNOT                        R17 ; [+21]
      214 GETTABLEKS                       R21 R17 K21 ["Position"]
      216 GETTABLEKS                       R22 R17 K22 ["Normal"]
      218 SUB                              R23 R21 R1
      219 MOVE                             R25 R22
      220 NAMECALL                         R23 R23 K23 ["Dot"]
      222 CALL                             R23 2 1
      223 MOVE                             R26 R22
      224 NAMECALL                         R24 R2 K23 ["Dot"]
      226 CALL                             R24 2 1
      227 DIV                              R20 R23 R24
      228 FASTCALL2                        MATH_MAX R8 R20 ; [+4]
      230 MOVE                             R19 R8
      231 GETIMPORT                        R18 K33 [math.max]
      233 CALL                             R18 2 1
      234 MOVE                             R8 R18
      235 LOADK                            R18 K0 [0.01]
      236 LOADN                            R21 1
      237 LOADN                            R19 14
      238 LOADN                            R20 1
      239 FORNPREP                         R19
      240 MINUS                            R22 R18
      241 JUMPIFLT                         R22 R8 ; [+71]
      243 GETIMPORT                        R22 K19 [workspace]
      245 MUL                              R25 R2 R18
      246 SUB                              R24 R12 R25
      247 MINUS                            R27 R11
      248 MULK                             R26 R27 K27 [2]
      249 MULK                             R25 R26 K0 [0.01]
      250 MOVE                             R26 R10
      251 NAMECALL                         R22 R22 K20 ["Raycast"]
      253 CALL                             R22 4 1
      254 JUMPIFNOT                        R22 ; [+5]
      255 GETTABLEKS                       R23 R22 K28 ["Distance"]
      257 LOADK                            R24 K29 [0.02]
      258 JUMPIFNOTLT                      R24 R23 ; [+52]
      260 MUL                              R24 R2 R18
      261 SUB                              R23 R12 R24
      262 JUMPIFNOT                        R22 ; [+5]
      263 GETTABLEKS                       R25 R22 K28 ["Distance"]
      265 MUL                              R24 R11 R25
      266 SUB                              R23 R23 R24
      267 JUMP                             ; [+3]
      268 MULK                             R25 R11 K27 [2]
      269 MULK                             R24 R25 K0 [0.01]
      270 SUB                              R23 R23 R24
      271 GETIMPORT                        R24 K19 [workspace]
      273 MOVE                             R26 R23
      274 SUB                              R27 R1 R23
      275 MOVE                             R28 R10
      276 NAMECALL                         R24 R24 K20 ["Raycast"]
      278 CALL                             R24 4 1
      279 JUMPIFNOT                        R24 ; [+33]
      280 GETTABLEKS                       R25 R24 K22 ["Normal"]
      282 MOVE                             R27 R11
      283 NAMECALL                         R25 R25 K23 ["Dot"]
      285 CALL                             R25 2 1
      286 LOADK                            R26 K30 [0.8]
      287 JUMPIFNOTLT                      R25 R26 ; [+25]
      289 GETTABLEKS                       R28 R24 K21 ["Position"]
      291 GETTABLEKS                       R29 R24 K22 ["Normal"]
      293 SUB                              R30 R28 R1
      294 MOVE                             R32 R29
      295 NAMECALL                         R30 R30 K23 ["Dot"]
      297 CALL                             R30 2 1
      298 MOVE                             R33 R29
      299 NAMECALL                         R31 R2 K23 ["Dot"]
      301 CALL                             R31 2 1
      302 DIV                              R27 R30 R31
      303 FASTCALL2                        MATH_MAX R8 R27 ; [+4]
      305 MOVE                             R26 R8
      306 GETIMPORT                        R25 K33 [math.max]
      308 CALL                             R25 2 1
      309 MOVE                             R8 R25
      310 JUMP                             ; [+2]
      311 MULK                             R18 R18 K31 [2.28]
      312 FORNLOOP                         R19
      313 JUMPIFEQKN                       R9 K4 [∞] ; [+53]
      315 JUMPIFEQKN                       R8 K3 [-∞] ; [+51]
      317 MUL                              R20 R2 R9
      318 ADD                              R19 R1 R20
      319 MUL                              R21 R2 R8
      320 ADD                              R20 R1 R21
      321 GETUPVAL                         R21 0
      322 CALL                             R21 0 1
      323 JUMPIFNOT                        R21 ; [+7]
      324 MOVE                             R23 R19
      325 NAMECALL                         R21 R20 K34 ["FuzzyEq"]
      327 CALL                             R21 2 1
      328 JUMPIFNOT                        R21 ; [+2]
      329 LOADNIL                          R21
      330 RETURN                           R21 1
      331 NEWTABLE                         R21 8 0
      333 SETTABLEKS                       R19 R21 K35 ["a"]
      335 SETTABLEKS                       R20 R21 K36 ["b"]
      337 GETTABLEKS                       R24 R21 K36 ["b"]
      339 GETTABLEKS                       R25 R21 K35 ["a"]
      341 SUB                              R23 R24 R25
      342 GETTABLEKS                       R22 R23 K17 ["Unit"]
      344 SETTABLEKS                       R22 R21 K37 ["direction"]
      346 GETTABLEKS                       R24 R21 K36 ["b"]
      348 GETTABLEKS                       R25 R21 K35 ["a"]
      350 SUB                              R23 R24 R25
      351 GETTABLEKS                       R22 R23 K2 ["Magnitude"]
      353 SETTABLEKS                       R22 R21 K38 ["length"]
      355 LOADK                            R22 K39 [0.5]
      356 SETTABLEKS                       R22 R21 K40 ["edgeMargin"]
      358 SETTABLEKS                       R0 R21 K41 ["part"]
      360 LOADK                            R22 K42 ["Edge"]
      361 SETTABLEKS                       R22 R21 K43 ["type"]
      363 LOADB                            R22 1
      364 SETTABLEKS                       R22 R21 K44 ["inferred"]
      366 RETURN                           R21 1
      367 LOADNIL                          R19
      368 RETURN                           R19 1

PROTO_3:
        0 GETTABLEKS                       R3 R2 K0 ["XVector"]
        2 MOVE                             R7 R1
        3 NAMECALL                         R5 R3 K1 ["Cross"]
        5 CALL                             R5 2 1
        6 GETTABLEKS                       R4 R5 K2 ["Magnitude"]
        8 LOADK                            R5 K3 [0.01]
        9 JUMPIFNOTLT                      R4 R5 ; [+3]
       11 GETTABLEKS                       R3 R2 K4 ["YVector"]
       13 MOVE                             R7 R1
       14 NAMECALL                         R5 R3 K1 ["Cross"]
       16 CALL                             R5 2 1
       17 GETTABLEKS                       R4 R5 K5 ["Unit"]
       19 MOVE                             R7 R4
       20 NAMECALL                         R5 R1 K1 ["Cross"]
       22 CALL                             R5 2 1
       23 MOVE                             R3 R5
       24 MOVE                             R5 R1
       25 MOVE                             R6 R3
       26 MOVE                             R7 R4
       27 RETURN                           R5 3

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Instance"]
        2 GETTABLEKS                       R4 R1 K2 ["Size"]
        4 GETTABLEKS                       R3 R4 K3 ["Magnitude"]
        6 ADDK                             R2 R3 K1 [0.01]
        7 GETTABLEKS                       R3 R1 K4 ["CFrame"]
        9 GETTABLEKS                       R4 R0 K5 ["Position"]
       11 GETTABLEKS                       R8 R0 K6 ["Normal"]
       13 GETTABLEKS                       R9 R3 K7 ["XVector"]
       15 MOVE                             R13 R8
       16 NAMECALL                         R11 R9 K8 ["Cross"]
       18 CALL                             R11 2 1
       19 GETTABLEKS                       R10 R11 K3 ["Magnitude"]
       21 LOADK                            R11 K1 [0.01]
       22 JUMPIFNOTLT                      R10 R11 ; [+3]
       24 GETTABLEKS                       R9 R3 K9 ["YVector"]
       26 MOVE                             R13 R8
       27 NAMECALL                         R11 R9 K8 ["Cross"]
       29 CALL                             R11 2 1
       30 GETTABLEKS                       R10 R11 K10 ["Unit"]
       32 MOVE                             R13 R10
       33 NAMECALL                         R11 R8 K8 ["Cross"]
       35 CALL                             R11 2 1
       36 MOVE                             R9 R11
       37 MOVE                             R5 R8
       38 MOVE                             R6 R9
       39 MOVE                             R7 R10
       40 GETIMPORT                        R8 K13 [RaycastParams.new]
       42 CALL                             R8 0 1
       43 GETIMPORT                        R9 K17 [Enum.RaycastFilterType.Whitelist]
       45 SETTABLEKS                       R9 R8 K18 ["FilterType"]
       47 LOADB                            R9 1
       48 SETTABLEKS                       R9 R8 K19 ["BruteForceAllSlow"]
       50 LOADK                            R9 K20 ["StudioSelectable"]
       51 SETTABLEKS                       R9 R8 K21 ["CollisionGroup"]
       53 NEWTABLE                         R9 0 1
       55 MOVE                             R10 R1
       56 SETLIST                          R9 R10 1 [1]
       58 SETTABLEKS                       R9 R8 K22 ["FilterDescendantsInstances"]
       60 MULK                             R10 R5 K1 [0.01]
       61 ADD                              R9 R4 R10
       62 LOADNIL                          R10
       63 LOADK                            R11 K23 [∞]
       64 GETUPVAL                         R12 0
       65 LOADNIL                          R13
       66 LOADNIL                          R14
       67 FORGPREP                         R12
       68 GETTABLEN                        R19 R16 1
       69 MUL                              R18 R6 R19
       70 GETTABLEN                        R20 R16 2
       71 MUL                              R19 R7 R20
       72 ADD                              R17 R18 R19
       73 LOADK                            R18 K23 [∞]
       74 GETIMPORT                        R19 K25 [workspace]
       76 MOVE                             R21 R9
       77 MUL                              R22 R17 R2
       78 MOVE                             R23 R8
       79 NAMECALL                         R19 R19 K26 ["Raycast"]
       81 CALL                             R19 4 1
       82 JUMPIFNOT                        R19 ; [+18]
       83 GETTABLEKS                       R18 R19 K27 ["Distance"]
       85 GETTABLEKS                       R20 R19 K6 ["Normal"]
       87 MOVE                             R22 R5
       88 NAMECALL                         R20 R20 K28 ["Dot"]
       90 CALL                             R20 2 1
       91 LOADK                            R21 K29 [0.5]
       92 JUMPIFNOTLT                      R20 R21 ; [+8]
       94 GETTABLEKS                       R20 R19 K27 ["Distance"]
       96 JUMPIFNOTLT                      R20 R11 ; [+4]
       98 MOVE                             R10 R19
       99 GETTABLEKS                       R11 R19 K27 ["Distance"]
      101 LOADK                            R20 K1 [0.01]
      102 LOADN                            R23 1
      103 LOADN                            R21 14
      104 LOADN                            R22 1
      105 FORNPREP                         R21
      106 JUMPIFLT                         R18 R20 ; [+59]
      108 GETIMPORT                        R24 K25 [workspace]
      110 MUL                              R27 R17 R20
      111 ADD                              R26 R9 R27
      112 MINUS                            R29 R5
      113 MULK                             R28 R29 K30 [2]
      114 MULK                             R27 R28 K1 [0.01]
      115 MOVE                             R28 R8
      116 NAMECALL                         R24 R24 K26 ["Raycast"]
      118 CALL                             R24 4 1
      119 JUMPIFNOT                        R24 ; [+5]
      120 GETTABLEKS                       R25 R24 K27 ["Distance"]
      122 LOADK                            R26 K31 [0.02]
      123 JUMPIFNOTLT                      R26 R25 ; [+40]
      125 MUL                              R26 R17 R20
      126 ADD                              R25 R9 R26
      127 JUMPIFNOT                        R24 ; [+5]
      128 GETTABLEKS                       R27 R24 K27 ["Distance"]
      130 MUL                              R26 R5 R27
      131 SUB                              R25 R25 R26
      132 JUMP                             ; [+3]
      133 MULK                             R27 R5 K30 [2]
      134 MULK                             R26 R27 K1 [0.01]
      135 SUB                              R25 R25 R26
      136 GETIMPORT                        R26 K25 [workspace]
      138 MOVE                             R28 R25
      139 SUB                              R29 R4 R25
      140 MOVE                             R30 R8
      141 NAMECALL                         R26 R26 K26 ["Raycast"]
      143 CALL                             R26 4 1
      144 JUMPIFNOT                        R26 ; [+21]
      145 GETTABLEKS                       R27 R26 K6 ["Normal"]
      147 MOVE                             R29 R5
      148 NAMECALL                         R27 R27 K28 ["Dot"]
      150 CALL                             R27 2 1
      151 LOADK                            R28 K29 [0.5]
      152 JUMPIFNOTLT                      R27 R28 ; [+13]
      154 GETTABLEKS                       R29 R26 K5 ["Position"]
      156 SUB                              R28 R29 R9
      157 GETTABLEKS                       R27 R28 K3 ["Magnitude"]
      159 JUMPIFNOTLT                      R27 R11 ; [+6]
      161 MOVE                             R10 R26
      162 MOVE                             R11 R27
      163 JUMP                             ; [+2]
      164 MULK                             R20 R20 K32 [2.28]
      165 FORNLOOP                         R21
      166 FORGLOOP                         R12 2 ; [-99]
      168 JUMPIFNOT                        R10 ; [+39]
      169 GETUPVAL                         R12 1
      170 MOVE                             R13 R4
      171 MOVE                             R14 R5
      172 GETTABLEKS                       R15 R10 K5 ["Position"]
      174 GETTABLEKS                       R16 R10 K6 ["Normal"]
      176 CALL                             R12 4 2
      177 SUB                              R14 R4 R12
      178 GETTABLEKS                       R16 R10 K5 ["Position"]
      180 SUB                              R15 R16 R12
      181 MOVE                             R20 R13
      182 NAMECALL                         R18 R14 K28 ["Dot"]
      184 CALL                             R18 2 1
      185 MUL                              R17 R13 R18
      186 SUB                              R16 R14 R17
      187 GETTABLEKS                       R14 R16 K10 ["Unit"]
      189 MOVE                             R20 R13
      190 NAMECALL                         R18 R15 K28 ["Dot"]
      192 CALL                             R18 2 1
      193 MUL                              R17 R13 R18
      194 SUB                              R16 R15 R17
      195 GETTABLEKS                       R15 R16 K10 ["Unit"]
      197 GETUPVAL                         R16 2
      198 MOVE                             R17 R1
      199 MOVE                             R18 R12
      200 MOVE                             R19 R13
      201 MOVE                             R20 R5
      202 GETTABLEKS                       R21 R10 K6 ["Normal"]
      204 MOVE                             R22 R14
      205 MOVE                             R23 R15
      206 CALL                             R16 7 1
      207 RETURN                           R16 1
      208 LOADNIL                          R12
      209 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DraggerFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["getFFlagDraggerAvoidDegeneratePoints"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 DUPCLOSURE                       R4 K10 [PROTO_2]
       17 CAPTURE                          VAL R1
       18 DUPCLOSURE                       R5 K11 [PROTO_3]
       19 GETIMPORT                        R6 K14 [table.freeze]
       21 NEWTABLE                         R7 0 4
       23 NEWTABLE                         R8 0 2
       25 LOADN                            R9 0
       26 LOADN                            R10 1
       27 SETLIST                          R8 R9 2 [1]
       29 NEWTABLE                         R9 0 2
       31 LOADN                            R10 1
       32 LOADN                            R11 0
       33 SETLIST                          R9 R10 2 [1]
       35 NEWTABLE                         R10 0 2
       37 LOADN                            R11 0
       38 LOADN                            R12 255
       39 SETLIST                          R10 R11 2 [1]
       41 NEWTABLE                         R11 0 2
       43 LOADN                            R12 255
       44 LOADN                            R13 0
       45 SETLIST                          R11 R12 2 [1]
       47 SETLIST                          R7 R8 4 [1]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K15 [PROTO_4]
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 RETURN                           R7 1
