PROTO_0:
        0 MOVE                             R6 R3
        1 NAMECALL                         R4 R1 K0 ["Cross"]
        3 CALL                             R4 2 1
        4 GETTABLEKS                       R4 R4 K1 ["Unit"]
        6 MOVE                             R7 R4
        7 NAMECALL                         R5 R1 K0 ["Cross"]
        9 CALL                             R5 2 1
       10 GETTABLEKS                       R5 R5 K1 ["Unit"]
       12 MOVE                             R8 R4
       13 NAMECALL                         R6 R3 K0 ["Cross"]
       15 CALL                             R6 2 1
       16 GETTABLEKS                       R6 R6 K1 ["Unit"]
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
       34 SUBRK                            R11 K3 [1] R12
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
        0 GETTABLEKS                       R8 R0 K1 ["Size"]
        2 GETTABLEKS                       R8 R8 K2 ["Magnitude"]
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
       27 ADD                              R11 R3 R4
       28 GETTABLEKS                       R11 R11 K17 ["Unit"]
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
       72 MOVE                             R13 R14
       73 JUMPIFNOT                        R13 ; [+21]
       74 GETTABLEKS                       R17 R13 K21 ["Position"]
       76 GETTABLEKS                       R18 R13 K22 ["Normal"]
       78 SUB                              R19 R17 R1
       79 MOVE                             R21 R18
       80 NAMECALL                         R19 R19 K23 ["Dot"]
       82 CALL                             R19 2 1
       83 MOVE                             R22 R18
       84 NAMECALL                         R20 R2 K23 ["Dot"]
       86 CALL                             R20 2 1
       87 DIV                              R16 R19 R20
       88 FASTCALL2                        MATH_MIN R9 R16 ; [+4]
       90 MOVE                             R15 R9
       91 GETIMPORT                        R14 K26 [math.min]
       93 CALL                             R14 2 1
       94 MOVE                             R9 R14
       95 LOADK                            R14 K0 [0.01]
       96 LOADN                            R17 1
       97 LOADN                            R15 14
       98 LOADN                            R16 1
       99 FORNPREP                         R15
      100 JUMPIFLT                         R9 R14 ; [+71]
      102 GETIMPORT                        R18 K19 [workspace]
      104 MUL                              R21 R2 R14
      105 ADD                              R20 R12 R21
      106 MINUS                            R23 R11
      107 MULK                             R22 R23 K27 [2]
      108 MULK                             R21 R22 K0 [0.01]
      109 MOVE                             R22 R10
      110 NAMECALL                         R18 R18 K20 ["Raycast"]
      112 CALL                             R18 4 1
      113 JUMPIFNOT                        R18 ; [+5]
      114 GETTABLEKS                       R19 R18 K28 ["Distance"]
      116 LOADK                            R20 K29 [0.02]
      117 JUMPIFNOTLT                      R20 R19 ; [+52]
      119 MUL                              R20 R2 R14
      120 ADD                              R19 R12 R20
      121 JUMPIFNOT                        R18 ; [+5]
      122 GETTABLEKS                       R21 R18 K28 ["Distance"]
      124 MUL                              R20 R11 R21
      125 SUB                              R19 R19 R20
      126 JUMP                             ; [+3]
      127 MULK                             R21 R11 K27 [2]
      128 MULK                             R20 R21 K0 [0.01]
      129 SUB                              R19 R19 R20
      130 GETIMPORT                        R20 K19 [workspace]
      132 MOVE                             R22 R19
      133 SUB                              R23 R1 R19
      134 MOVE                             R24 R10
      135 NAMECALL                         R20 R20 K20 ["Raycast"]
      137 CALL                             R20 4 1
      138 JUMPIFNOT                        R20 ; [+33]
      139 GETTABLEKS                       R21 R20 K22 ["Normal"]
      141 MOVE                             R23 R11
      142 NAMECALL                         R21 R21 K23 ["Dot"]
      144 CALL                             R21 2 1
      145 LOADK                            R22 K30 [0.8]
      146 JUMPIFNOTLT                      R21 R22 ; [+25]
      148 GETTABLEKS                       R24 R20 K21 ["Position"]
      150 GETTABLEKS                       R25 R20 K22 ["Normal"]
      152 SUB                              R26 R24 R1
      153 MOVE                             R28 R25
      154 NAMECALL                         R26 R26 K23 ["Dot"]
      156 CALL                             R26 2 1
      157 MOVE                             R29 R25
      158 NAMECALL                         R27 R2 K23 ["Dot"]
      160 CALL                             R27 2 1
      161 DIV                              R23 R26 R27
      162 FASTCALL2                        MATH_MIN R9 R23 ; [+4]
      164 MOVE                             R22 R9
      165 GETIMPORT                        R21 K26 [math.min]
      167 CALL                             R21 2 1
      168 MOVE                             R9 R21
      169 JUMP                             ; [+2]
      170 MULK                             R14 R14 K31 [2.28]
      171 FORNLOOP                         R15
      172 GETIMPORT                        R15 K19 [workspace]
      174 MULK                             R18 R5 K0 [0.01]
      175 ADD                              R17 R12 R18
      176 MINUS                            R19 R2
      177 MUL                              R18 R19 R7
      178 MOVE                             R19 R10
      179 NAMECALL                         R15 R15 K20 ["Raycast"]
      181 CALL                             R15 4 1
      182 JUMPIFNOT                        R15 ; [+21]
      183 GETTABLEKS                       R19 R15 K21 ["Position"]
      185 GETTABLEKS                       R20 R15 K22 ["Normal"]
      187 SUB                              R21 R19 R1
      188 MOVE                             R23 R20
      189 NAMECALL                         R21 R21 K23 ["Dot"]
      191 CALL                             R21 2 1
      192 MOVE                             R24 R20
      193 NAMECALL                         R22 R2 K23 ["Dot"]
      195 CALL                             R22 2 1
      196 DIV                              R18 R21 R22
      197 FASTCALL2                        MATH_MAX R8 R18 ; [+4]
      199 MOVE                             R17 R8
      200 GETIMPORT                        R16 K33 [math.max]
      202 CALL                             R16 2 1
      203 MOVE                             R8 R16
      204 GETIMPORT                        R16 K19 [workspace]
      206 MULK                             R19 R6 K0 [0.01]
      207 ADD                              R18 R12 R19
      208 MINUS                            R20 R2
      209 MUL                              R19 R20 R7
      210 MOVE                             R20 R10
      211 NAMECALL                         R16 R16 K20 ["Raycast"]
      213 CALL                             R16 4 1
      214 MOVE                             R15 R16
      215 JUMPIFNOT                        R15 ; [+21]
      216 GETTABLEKS                       R19 R15 K21 ["Position"]
      218 GETTABLEKS                       R20 R15 K22 ["Normal"]
      220 SUB                              R21 R19 R1
      221 MOVE                             R23 R20
      222 NAMECALL                         R21 R21 K23 ["Dot"]
      224 CALL                             R21 2 1
      225 MOVE                             R24 R20
      226 NAMECALL                         R22 R2 K23 ["Dot"]
      228 CALL                             R22 2 1
      229 DIV                              R18 R21 R22
      230 FASTCALL2                        MATH_MAX R8 R18 ; [+4]
      232 MOVE                             R17 R8
      233 GETIMPORT                        R16 K33 [math.max]
      235 CALL                             R16 2 1
      236 MOVE                             R8 R16
      237 LOADK                            R14 K0 [0.01]
      238 LOADN                            R18 1
      239 LOADN                            R16 14
      240 LOADN                            R17 1
      241 FORNPREP                         R16
      242 MINUS                            R19 R14
      243 JUMPIFLT                         R19 R8 ; [+71]
      245 GETIMPORT                        R19 K19 [workspace]
      247 MUL                              R22 R2 R14
      248 SUB                              R21 R12 R22
      249 MINUS                            R24 R11
      250 MULK                             R23 R24 K27 [2]
      251 MULK                             R22 R23 K0 [0.01]
      252 MOVE                             R23 R10
      253 NAMECALL                         R19 R19 K20 ["Raycast"]
      255 CALL                             R19 4 1
      256 JUMPIFNOT                        R19 ; [+5]
      257 GETTABLEKS                       R20 R19 K28 ["Distance"]
      259 LOADK                            R21 K29 [0.02]
      260 JUMPIFNOTLT                      R21 R20 ; [+52]
      262 MUL                              R21 R2 R14
      263 SUB                              R20 R12 R21
      264 JUMPIFNOT                        R19 ; [+5]
      265 GETTABLEKS                       R22 R19 K28 ["Distance"]
      267 MUL                              R21 R11 R22
      268 SUB                              R20 R20 R21
      269 JUMP                             ; [+3]
      270 MULK                             R22 R11 K27 [2]
      271 MULK                             R21 R22 K0 [0.01]
      272 SUB                              R20 R20 R21
      273 GETIMPORT                        R21 K19 [workspace]
      275 MOVE                             R23 R20
      276 SUB                              R24 R1 R20
      277 MOVE                             R25 R10
      278 NAMECALL                         R21 R21 K20 ["Raycast"]
      280 CALL                             R21 4 1
      281 JUMPIFNOT                        R21 ; [+33]
      282 GETTABLEKS                       R22 R21 K22 ["Normal"]
      284 MOVE                             R24 R11
      285 NAMECALL                         R22 R22 K23 ["Dot"]
      287 CALL                             R22 2 1
      288 LOADK                            R23 K30 [0.8]
      289 JUMPIFNOTLT                      R22 R23 ; [+25]
      291 GETTABLEKS                       R25 R21 K21 ["Position"]
      293 GETTABLEKS                       R26 R21 K22 ["Normal"]
      295 SUB                              R27 R25 R1
      296 MOVE                             R29 R26
      297 NAMECALL                         R27 R27 K23 ["Dot"]
      299 CALL                             R27 2 1
      300 MOVE                             R30 R26
      301 NAMECALL                         R28 R2 K23 ["Dot"]
      303 CALL                             R28 2 1
      304 DIV                              R24 R27 R28
      305 FASTCALL2                        MATH_MAX R8 R24 ; [+4]
      307 MOVE                             R23 R8
      308 GETIMPORT                        R22 K33 [math.max]
      310 CALL                             R22 2 1
      311 MOVE                             R8 R22
      312 JUMP                             ; [+2]
      313 MULK                             R14 R14 K31 [2.28]
      314 FORNLOOP                         R16
      315 JUMPIFEQKN                       R9 K4 [∞] ; [+32]
      317 JUMPIFEQKN                       R8 K3 [-∞] ; [+30]
      319 MUL                              R17 R2 R9
      320 ADD                              R16 R1 R17
      321 MUL                              R18 R2 R8
      322 ADD                              R17 R1 R18
      323 MOVE                             R20 R16
      324 NAMECALL                         R18 R17 K34 ["FuzzyEq"]
      326 CALL                             R18 2 1
      327 JUMPIFNOT                        R18 ; [+2]
      328 LOADNIL                          R18
      329 RETURN                           R18 1
      330 DUPTABLE                         R18 K46 [{["a"], ["b"], ["direction"], ["length"], ["edgeMargin"] = 0.5, ["part"], ["type"] = "Edge", ["inferred"] = True}]
      331 SETTABLEKS                       R16 R18 K35 ["a"]
      333 SETTABLEKS                       R17 R18 K36 ["b"]
      335 SUB                              R19 R17 R16
      336 GETTABLEKS                       R19 R19 K17 ["Unit"]
      338 SETTABLEKS                       R19 R18 K37 ["direction"]
      340 SUB                              R19 R17 R16
      341 GETTABLEKS                       R19 R19 K2 ["Magnitude"]
      343 SETTABLEKS                       R19 R18 K38 ["length"]
      345 SETTABLEKS                       R0 R18 K41 ["part"]
      347 RETURN                           R18 1
      348 LOADNIL                          R16
      349 RETURN                           R16 1

PROTO_3:
        0 GETTABLEKS                       R3 R2 K0 ["XVector"]
        2 MOVE                             R6 R1
        3 NAMECALL                         R4 R3 K1 ["Cross"]
        5 CALL                             R4 2 1
        6 GETTABLEKS                       R4 R4 K2 ["Magnitude"]
        8 LOADK                            R5 K3 [0.01]
        9 JUMPIFNOTLT                      R4 R5 ; [+3]
       11 GETTABLEKS                       R3 R2 K4 ["YVector"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R3 K1 ["Cross"]
       16 CALL                             R4 2 1
       17 GETTABLEKS                       R4 R4 K5 ["Unit"]
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
        2 GETTABLEKS                       R3 R1 K2 ["Size"]
        4 GETTABLEKS                       R3 R3 K3 ["Magnitude"]
        6 ADDK                             R2 R3 K1 [0.01]
        7 GETTABLEKS                       R3 R1 K4 ["CFrame"]
        9 GETTABLEKS                       R4 R0 K5 ["Position"]
       11 GETTABLEKS                       R8 R0 K6 ["Normal"]
       13 GETTABLEKS                       R9 R3 K7 ["XVector"]
       15 MOVE                             R12 R8
       16 NAMECALL                         R10 R9 K8 ["Cross"]
       18 CALL                             R10 2 1
       19 GETTABLEKS                       R10 R10 K3 ["Magnitude"]
       21 LOADK                            R11 K1 [0.01]
       22 JUMPIFNOTLT                      R10 R11 ; [+3]
       24 GETTABLEKS                       R9 R3 K9 ["YVector"]
       26 MOVE                             R12 R8
       27 NAMECALL                         R10 R9 K8 ["Cross"]
       29 CALL                             R10 2 1
       30 GETTABLEKS                       R10 R10 K10 ["Unit"]
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
      154 GETTABLEKS                       R28 R26 K5 ["Position"]
      156 SUB                              R27 R28 R9
      157 GETTABLEKS                       R27 R27 K3 ["Magnitude"]
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
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 GETIMPORT                        R4 K6 [table.freeze]
        7 NEWTABLE                         R5 0 4
        9 NEWTABLE                         R6 0 2
       11 LOADN                            R7 0
       12 LOADN                            R8 1
       13 SETLIST                          R6 R7 2 [1]
       15 NEWTABLE                         R7 0 2
       17 LOADN                            R8 1
       18 LOADN                            R9 0
       19 SETLIST                          R7 R8 2 [1]
       21 NEWTABLE                         R8 0 2
       23 LOADN                            R9 0
       24 LOADN                            R10 -1
       25 SETLIST                          R8 R9 2 [1]
       27 NEWTABLE                         R9 0 2
       29 LOADN                            R10 -1
       30 LOADN                            R11 0
       31 SETLIST                          R9 R10 2 [1]
       33 SETLIST                          R5 R6 4 [1]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K7 [PROTO_4]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
