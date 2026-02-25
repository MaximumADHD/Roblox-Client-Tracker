PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 NAMECALL                         R3 R0 K0 ["Inverse"]
        2 CALL                             R3 1 1
        3 LOADK                            R4 K1 [∞]
        4 LOADK                            R5 K2 [-∞]
        5 LOADK                            R6 K1 [∞]
        6 LOADK                            R7 K2 [-∞]
        7 LOADK                            R8 K1 [∞]
        8 LOADK                            R9 K2 [-∞]
        9 GETUPVAL                         R11 0
       10 GETTABLEKS                       R10 R11 K3 ["Terrain"]
       12 GETIMPORT                        R11 K5 [ipairs]
       14 MOVE                             R12 R1
       15 CALL                             R11 1 3
       16 FORGPREP_INEXT                   R11
       17 JUMPIFEQ                         R15 R10 ; [+135]
       19 LOADNIL                          R16
       20 LOADNIL                          R17
       21 LOADK                            R20 K6 ["FormFactorPart"]
       22 NAMECALL                         R18 R15 K7 ["IsA"]
       24 CALL                             R18 2 1
       25 JUMPIFNOT                        R18 ; [+5]
       26 GETTABLEKS                       R16 R15 K8 ["CFrame"]
       28 GETTABLEKS                       R17 R15 K9 ["Size"]
       30 JUMP                             ; [+4]
       31 GETTABLEKS                       R16 R15 K10 ["ExtentsCFrame"]
       33 GETTABLEKS                       R17 R15 K11 ["ExtentsSize"]
       35 GETTABLEKS                       R18 R17 K12 ["X"]
       37 GETTABLEKS                       R19 R17 K13 ["Y"]
       39 GETTABLEKS                       R20 R17 K14 ["Z"]
       41 MUL                              R21 R3 R16
       42 NAMECALL                         R22 R21 K15 ["components"]
       44 CALL                             R22 1 12
       45 MUL                              R38 R18 R25
       46 FASTCALL1                        MATH_ABS R38 ; [+2]
       47 GETIMPORT                        R37 K19 [math.abs]
       49 CALL                             R37 1 1
       50 MUL                              R39 R19 R26
       51 FASTCALL1                        MATH_ABS R39 ; [+2]
       52 GETIMPORT                        R38 K19 [math.abs]
       54 CALL                             R38 1 1
       55 ADD                              R36 R37 R38
       56 MUL                              R38 R20 R27
       57 FASTCALL1                        MATH_ABS R38 ; [+2]
       58 GETIMPORT                        R37 K19 [math.abs]
       60 CALL                             R37 1 1
       61 ADD                              R35 R36 R37
       62 MULK                             R34 R35 K16 [0.5]
       63 MUL                              R39 R18 R28
       64 FASTCALL1                        MATH_ABS R39 ; [+2]
       65 GETIMPORT                        R38 K19 [math.abs]
       67 CALL                             R38 1 1
       68 MUL                              R40 R19 R29
       69 FASTCALL1                        MATH_ABS R40 ; [+2]
       70 GETIMPORT                        R39 K19 [math.abs]
       72 CALL                             R39 1 1
       73 ADD                              R37 R38 R39
       74 MUL                              R39 R20 R30
       75 FASTCALL1                        MATH_ABS R39 ; [+2]
       76 GETIMPORT                        R38 K19 [math.abs]
       78 CALL                             R38 1 1
       79 ADD                              R36 R37 R38
       80 MULK                             R35 R36 K16 [0.5]
       81 MUL                              R40 R18 R31
       82 FASTCALL1                        MATH_ABS R40 ; [+2]
       83 GETIMPORT                        R39 K19 [math.abs]
       85 CALL                             R39 1 1
       86 MUL                              R41 R19 R32
       87 FASTCALL1                        MATH_ABS R41 ; [+2]
       88 GETIMPORT                        R40 K19 [math.abs]
       90 CALL                             R40 1 1
       91 ADD                              R38 R39 R40
       92 MUL                              R40 R20 R33
       93 FASTCALL1                        MATH_ABS R40 ; [+2]
       94 GETIMPORT                        R39 K19 [math.abs]
       96 CALL                             R39 1 1
       97 ADD                              R37 R38 R39
       98 MULK                             R36 R37 K16 [0.5]
       99 GETTABLEKS                       R37 R21 K12 ["X"]
      101 GETTABLEKS                       R38 R21 K13 ["Y"]
      103 GETTABLEKS                       R39 R21 K14 ["Z"]
      105 SUB                              R42 R37 R34
      106 FASTCALL2                        MATH_MIN R4 R42 ; [+4]
      108 MOVE                             R41 R4
      109 GETIMPORT                        R40 K21 [math.min]
      111 CALL                             R40 2 1
      112 MOVE                             R4 R40
      113 ADD                              R42 R37 R34
      114 FASTCALL2                        MATH_MAX R5 R42 ; [+4]
      116 MOVE                             R41 R5
      117 GETIMPORT                        R40 K23 [math.max]
      119 CALL                             R40 2 1
      120 MOVE                             R5 R40
      121 SUB                              R42 R38 R35
      122 FASTCALL2                        MATH_MIN R6 R42 ; [+4]
      124 MOVE                             R41 R6
      125 GETIMPORT                        R40 K21 [math.min]
      127 CALL                             R40 2 1
      128 MOVE                             R6 R40
      129 ADD                              R42 R38 R35
      130 FASTCALL2                        MATH_MAX R7 R42 ; [+4]
      132 MOVE                             R41 R7
      133 GETIMPORT                        R40 K23 [math.max]
      135 CALL                             R40 2 1
      136 MOVE                             R7 R40
      137 SUB                              R42 R39 R36
      138 FASTCALL2                        MATH_MIN R8 R42 ; [+4]
      140 MOVE                             R41 R8
      141 GETIMPORT                        R40 K21 [math.min]
      143 CALL                             R40 2 1
      144 MOVE                             R8 R40
      145 ADD                              R42 R39 R36
      146 FASTCALL2                        MATH_MAX R9 R42 ; [+4]
      148 MOVE                             R41 R9
      149 GETIMPORT                        R40 K23 [math.max]
      151 CALL                             R40 2 1
      152 MOVE                             R9 R40
      153 FORGLOOP                         R11 2 [inext] ; [-137]
      155 GETIMPORT                        R11 K5 [ipairs]
      157 MOVE                             R12 R2
      158 CALL                             R11 1 3
      159 FORGPREP_INEXT                   R11
      160 GETTABLEKS                       R18 R15 K24 ["WorldPosition"]
      162 NAMECALL                         R16 R0 K25 ["PointToObjectSpace"]
      164 CALL                             R16 2 1
      165 GETTABLEKS                       R17 R16 K12 ["X"]
      167 GETTABLEKS                       R18 R16 K13 ["Y"]
      169 GETTABLEKS                       R19 R16 K14 ["Z"]
      171 FASTCALL2                        MATH_MIN R4 R17 ; [+5]
      173 MOVE                             R21 R4
      174 MOVE                             R22 R17
      175 GETIMPORT                        R20 K21 [math.min]
      177 CALL                             R20 2 1
      178 MOVE                             R4 R20
      179 FASTCALL2                        MATH_MAX R5 R17 ; [+5]
      181 MOVE                             R21 R5
      182 MOVE                             R22 R17
      183 GETIMPORT                        R20 K23 [math.max]
      185 CALL                             R20 2 1
      186 MOVE                             R5 R20
      187 FASTCALL2                        MATH_MIN R6 R18 ; [+5]
      189 MOVE                             R21 R6
      190 MOVE                             R22 R18
      191 GETIMPORT                        R20 K21 [math.min]
      193 CALL                             R20 2 1
      194 MOVE                             R6 R20
      195 FASTCALL2                        MATH_MAX R7 R18 ; [+5]
      197 MOVE                             R21 R7
      198 MOVE                             R22 R18
      199 GETIMPORT                        R20 K23 [math.max]
      201 CALL                             R20 2 1
      202 MOVE                             R7 R20
      203 FASTCALL2                        MATH_MIN R8 R19 ; [+5]
      205 MOVE                             R21 R8
      206 MOVE                             R22 R19
      207 GETIMPORT                        R20 K21 [math.min]
      209 CALL                             R20 2 1
      210 MOVE                             R8 R20
      211 FASTCALL2                        MATH_MAX R9 R19 ; [+5]
      213 MOVE                             R21 R9
      214 MOVE                             R22 R19
      215 GETIMPORT                        R20 K23 [math.max]
      217 CALL                             R20 2 1
      218 MOVE                             R9 R20
      219 FORGLOOP                         R11 2 [inext] ; [-60]
      221 LOADK                            R13 K16 [0.5]
      222 ADD                              R14 R4 R5
      223 MUL                              R12 R13 R14
      224 LOADK                            R14 K16 [0.5]
      225 ADD                              R15 R6 R7
      226 MUL                              R13 R14 R15
      227 LOADK                            R15 K16 [0.5]
      228 ADD                              R16 R8 R9
      229 MUL                              R14 R15 R16
      230 FASTCALL                         VECTOR ; [+2]
      231 GETIMPORT                        R11 K28 [Vector3.new]
      233 CALL                             R11 3 1
      234 SUB                              R13 R5 R4
      235 SUB                              R14 R7 R6
      236 SUB                              R15 R9 R8
      237 FASTCALL                         VECTOR ; [+2]
      238 GETIMPORT                        R12 K28 [Vector3.new]
      240 CALL                             R12 3 1
      241 RETURN                           R11 2

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R0 K1 ["Y"]
        4 GETTABLEKS                       R5 R0 K2 ["Z"]
        6 NAMECALL                         R6 R0 K3 ["Inverse"]
        8 CALL                             R6 1 1
        9 LOADK                            R7 K4 [∞]
       10 LOADK                            R8 K5 [-∞]
       11 LOADK                            R9 K4 [∞]
       12 LOADK                            R10 K5 [-∞]
       13 LOADK                            R11 K4 [∞]
       14 LOADK                            R12 K5 [-∞]
       15 LOADK                            R13 K4 [∞]
       16 LOADK                            R14 K5 [-∞]
       17 LOADK                            R15 K4 [∞]
       18 LOADK                            R16 K5 [-∞]
       19 LOADK                            R17 K4 [∞]
       20 LOADK                            R18 K5 [-∞]
       21 GETUPVAL                         R20 0
       22 GETTABLEKS                       R19 R20 K6 ["Terrain"]
       24 GETIMPORT                        R20 K8 [ipairs]
       26 MOVE                             R21 R1
       27 CALL                             R20 1 3
       28 FORGPREP_INEXT                   R20
       29 JUMPIFEQ                         R24 R19 ; [+258]
       31 LOADNIL                          R25
       32 LOADNIL                          R26
       33 LOADK                            R29 K9 ["FormFactorPart"]
       34 NAMECALL                         R27 R24 K10 ["IsA"]
       36 CALL                             R27 2 1
       37 JUMPIFNOT                        R27 ; [+5]
       38 GETTABLEKS                       R25 R24 K11 ["CFrame"]
       40 GETTABLEKS                       R26 R24 K12 ["Size"]
       42 JUMP                             ; [+4]
       43 GETTABLEKS                       R25 R24 K13 ["ExtentsCFrame"]
       45 GETTABLEKS                       R26 R24 K14 ["ExtentsSize"]
       47 GETTABLEKS                       R27 R26 K0 ["X"]
       49 GETTABLEKS                       R28 R26 K1 ["Y"]
       51 GETTABLEKS                       R29 R26 K2 ["Z"]
       53 MUL                              R30 R6 R25
       54 NAMECALL                         R31 R30 K15 ["components"]
       56 CALL                             R31 1 12
       57 MUL                              R47 R27 R34
       58 FASTCALL1                        MATH_ABS R47 ; [+2]
       59 GETIMPORT                        R46 K19 [math.abs]
       61 CALL                             R46 1 1
       62 MUL                              R48 R28 R35
       63 FASTCALL1                        MATH_ABS R48 ; [+2]
       64 GETIMPORT                        R47 K19 [math.abs]
       66 CALL                             R47 1 1
       67 ADD                              R45 R46 R47
       68 MUL                              R47 R29 R36
       69 FASTCALL1                        MATH_ABS R47 ; [+2]
       70 GETIMPORT                        R46 K19 [math.abs]
       72 CALL                             R46 1 1
       73 ADD                              R44 R45 R46
       74 MULK                             R43 R44 K16 [0.5]
       75 MUL                              R48 R27 R37
       76 FASTCALL1                        MATH_ABS R48 ; [+2]
       77 GETIMPORT                        R47 K19 [math.abs]
       79 CALL                             R47 1 1
       80 MUL                              R49 R28 R38
       81 FASTCALL1                        MATH_ABS R49 ; [+2]
       82 GETIMPORT                        R48 K19 [math.abs]
       84 CALL                             R48 1 1
       85 ADD                              R46 R47 R48
       86 MUL                              R48 R29 R39
       87 FASTCALL1                        MATH_ABS R48 ; [+2]
       88 GETIMPORT                        R47 K19 [math.abs]
       90 CALL                             R47 1 1
       91 ADD                              R45 R46 R47
       92 MULK                             R44 R45 K16 [0.5]
       93 MUL                              R49 R27 R40
       94 FASTCALL1                        MATH_ABS R49 ; [+2]
       95 GETIMPORT                        R48 K19 [math.abs]
       97 CALL                             R48 1 1
       98 MUL                              R50 R28 R41
       99 FASTCALL1                        MATH_ABS R50 ; [+2]
      100 GETIMPORT                        R49 K19 [math.abs]
      102 CALL                             R49 1 1
      103 ADD                              R47 R48 R49
      104 MUL                              R49 R29 R42
      105 FASTCALL1                        MATH_ABS R49 ; [+2]
      106 GETIMPORT                        R48 K19 [math.abs]
      108 CALL                             R48 1 1
      109 ADD                              R46 R47 R48
      110 MULK                             R45 R46 K16 [0.5]
      111 GETTABLEKS                       R46 R30 K0 ["X"]
      113 GETTABLEKS                       R47 R30 K1 ["Y"]
      115 GETTABLEKS                       R48 R30 K2 ["Z"]
      117 SUB                              R51 R46 R43
      118 FASTCALL2                        MATH_MIN R7 R51 ; [+4]
      120 MOVE                             R50 R7
      121 GETIMPORT                        R49 K21 [math.min]
      123 CALL                             R49 2 1
      124 MOVE                             R7 R49
      125 ADD                              R51 R46 R43
      126 FASTCALL2                        MATH_MAX R8 R51 ; [+4]
      128 MOVE                             R50 R8
      129 GETIMPORT                        R49 K23 [math.max]
      131 CALL                             R49 2 1
      132 MOVE                             R8 R49
      133 SUB                              R51 R47 R44
      134 FASTCALL2                        MATH_MIN R9 R51 ; [+4]
      136 MOVE                             R50 R9
      137 GETIMPORT                        R49 K21 [math.min]
      139 CALL                             R49 2 1
      140 MOVE                             R9 R49
      141 ADD                              R51 R47 R44
      142 FASTCALL2                        MATH_MAX R10 R51 ; [+4]
      144 MOVE                             R50 R10
      145 GETIMPORT                        R49 K23 [math.max]
      147 CALL                             R49 2 1
      148 MOVE                             R10 R49
      149 SUB                              R51 R48 R45
      150 FASTCALL2                        MATH_MIN R11 R51 ; [+4]
      152 MOVE                             R50 R11
      153 GETIMPORT                        R49 K21 [math.min]
      155 CALL                             R49 2 1
      156 MOVE                             R11 R49
      157 ADD                              R51 R48 R45
      158 FASTCALL2                        MATH_MAX R12 R51 ; [+4]
      160 MOVE                             R50 R12
      161 GETIMPORT                        R49 K23 [math.max]
      163 CALL                             R49 2 1
      164 MOVE                             R12 R49
      165 NAMECALL                         R49 R25 K15 ["components"]
      167 CALL                             R49 1 12
      168 MOVE                             R33 R49
      169 MOVE                             R33 R50
      170 MOVE                             R33 R51
      171 MOVE                             R34 R52
      172 MOVE                             R35 R53
      173 MOVE                             R36 R54
      174 MOVE                             R37 R55
      175 MOVE                             R38 R56
      176 MOVE                             R39 R57
      177 MOVE                             R40 R58
      178 MOVE                             R41 R59
      179 MOVE                             R42 R60
      180 MUL                              R53 R27 R34
      181 FASTCALL1                        MATH_ABS R53 ; [+2]
      182 GETIMPORT                        R52 K19 [math.abs]
      184 CALL                             R52 1 1
      185 MUL                              R54 R28 R35
      186 FASTCALL1                        MATH_ABS R54 ; [+2]
      187 GETIMPORT                        R53 K19 [math.abs]
      189 CALL                             R53 1 1
      190 ADD                              R51 R52 R53
      191 MUL                              R53 R29 R36
      192 FASTCALL1                        MATH_ABS R53 ; [+2]
      193 GETIMPORT                        R52 K19 [math.abs]
      195 CALL                             R52 1 1
      196 ADD                              R50 R51 R52
      197 MULK                             R49 R50 K16 [0.5]
      198 MUL                              R54 R27 R37
      199 FASTCALL1                        MATH_ABS R54 ; [+2]
      200 GETIMPORT                        R53 K19 [math.abs]
      202 CALL                             R53 1 1
      203 MUL                              R55 R28 R38
      204 FASTCALL1                        MATH_ABS R55 ; [+2]
      205 GETIMPORT                        R54 K19 [math.abs]
      207 CALL                             R54 1 1
      208 ADD                              R52 R53 R54
      209 MUL                              R54 R29 R39
      210 FASTCALL1                        MATH_ABS R54 ; [+2]
      211 GETIMPORT                        R53 K19 [math.abs]
      213 CALL                             R53 1 1
      214 ADD                              R51 R52 R53
      215 MULK                             R50 R51 K16 [0.5]
      216 MUL                              R55 R27 R40
      217 FASTCALL1                        MATH_ABS R55 ; [+2]
      218 GETIMPORT                        R54 K19 [math.abs]
      220 CALL                             R54 1 1
      221 MUL                              R56 R28 R41
      222 FASTCALL1                        MATH_ABS R56 ; [+2]
      223 GETIMPORT                        R55 K19 [math.abs]
      225 CALL                             R55 1 1
      226 ADD                              R53 R54 R55
      227 MUL                              R55 R29 R42
      228 FASTCALL1                        MATH_ABS R55 ; [+2]
      229 GETIMPORT                        R54 K19 [math.abs]
      231 CALL                             R54 1 1
      232 ADD                              R52 R53 R54
      233 MULK                             R51 R52 K16 [0.5]
      234 GETTABLEKS                       R52 R25 K0 ["X"]
      236 GETTABLEKS                       R53 R25 K1 ["Y"]
      238 GETTABLEKS                       R54 R25 K2 ["Z"]
      240 SUB                              R57 R52 R49
      241 FASTCALL2                        MATH_MIN R13 R57 ; [+4]
      243 MOVE                             R56 R13
      244 GETIMPORT                        R55 K21 [math.min]
      246 CALL                             R55 2 1
      247 MOVE                             R13 R55
      248 ADD                              R57 R52 R49
      249 FASTCALL2                        MATH_MAX R14 R57 ; [+4]
      251 MOVE                             R56 R14
      252 GETIMPORT                        R55 K23 [math.max]
      254 CALL                             R55 2 1
      255 MOVE                             R14 R55
      256 SUB                              R57 R53 R50
      257 FASTCALL2                        MATH_MIN R15 R57 ; [+4]
      259 MOVE                             R56 R15
      260 GETIMPORT                        R55 K21 [math.min]
      262 CALL                             R55 2 1
      263 MOVE                             R15 R55
      264 ADD                              R57 R53 R50
      265 FASTCALL2                        MATH_MAX R16 R57 ; [+4]
      267 MOVE                             R56 R16
      268 GETIMPORT                        R55 K23 [math.max]
      270 CALL                             R55 2 1
      271 MOVE                             R16 R55
      272 SUB                              R57 R54 R51
      273 FASTCALL2                        MATH_MIN R17 R57 ; [+4]
      275 MOVE                             R56 R17
      276 GETIMPORT                        R55 K21 [math.min]
      278 CALL                             R55 2 1
      279 MOVE                             R17 R55
      280 ADD                              R57 R54 R51
      281 FASTCALL2                        MATH_MAX R18 R57 ; [+4]
      283 MOVE                             R56 R18
      284 GETIMPORT                        R55 K23 [math.max]
      286 CALL                             R55 2 1
      287 MOVE                             R18 R55
      288 FORGLOOP                         R20 2 [inext] ; [-260]
      290 GETIMPORT                        R20 K8 [ipairs]
      292 MOVE                             R21 R2
      293 CALL                             R20 1 3
      294 FORGPREP_INEXT                   R20
      295 GETTABLEKS                       R25 R24 K24 ["WorldPosition"]
      297 MUL                              R26 R6 R25
      298 GETTABLEKS                       R27 R26 K0 ["X"]
      300 GETTABLEKS                       R28 R26 K1 ["Y"]
      302 GETTABLEKS                       R29 R26 K2 ["Z"]
      304 FASTCALL2                        MATH_MIN R7 R27 ; [+5]
      306 MOVE                             R31 R7
      307 MOVE                             R32 R27
      308 GETIMPORT                        R30 K21 [math.min]
      310 CALL                             R30 2 1
      311 MOVE                             R7 R30
      312 FASTCALL2                        MATH_MAX R8 R27 ; [+5]
      314 MOVE                             R31 R8
      315 MOVE                             R32 R27
      316 GETIMPORT                        R30 K23 [math.max]
      318 CALL                             R30 2 1
      319 MOVE                             R8 R30
      320 FASTCALL2                        MATH_MIN R9 R28 ; [+5]
      322 MOVE                             R31 R9
      323 MOVE                             R32 R28
      324 GETIMPORT                        R30 K21 [math.min]
      326 CALL                             R30 2 1
      327 MOVE                             R9 R30
      328 FASTCALL2                        MATH_MAX R10 R28 ; [+5]
      330 MOVE                             R31 R10
      331 MOVE                             R32 R28
      332 GETIMPORT                        R30 K23 [math.max]
      334 CALL                             R30 2 1
      335 MOVE                             R10 R30
      336 FASTCALL2                        MATH_MIN R11 R29 ; [+5]
      338 MOVE                             R31 R11
      339 MOVE                             R32 R29
      340 GETIMPORT                        R30 K21 [math.min]
      342 CALL                             R30 2 1
      343 MOVE                             R11 R30
      344 FASTCALL2                        MATH_MAX R12 R29 ; [+5]
      346 MOVE                             R31 R12
      347 MOVE                             R32 R29
      348 GETIMPORT                        R30 K23 [math.max]
      350 CALL                             R30 2 1
      351 MOVE                             R12 R30
      352 GETTABLEKS                       R30 R25 K0 ["X"]
      354 GETTABLEKS                       R31 R25 K1 ["Y"]
      356 GETTABLEKS                       R32 R25 K2 ["Z"]
      358 FASTCALL2                        MATH_MIN R13 R30 ; [+5]
      360 MOVE                             R34 R13
      361 MOVE                             R35 R30
      362 GETIMPORT                        R33 K21 [math.min]
      364 CALL                             R33 2 1
      365 MOVE                             R13 R33
      366 FASTCALL2                        MATH_MAX R14 R30 ; [+5]
      368 MOVE                             R34 R14
      369 MOVE                             R35 R30
      370 GETIMPORT                        R33 K23 [math.max]
      372 CALL                             R33 2 1
      373 MOVE                             R14 R33
      374 FASTCALL2                        MATH_MIN R15 R31 ; [+5]
      376 MOVE                             R34 R15
      377 MOVE                             R35 R31
      378 GETIMPORT                        R33 K21 [math.min]
      380 CALL                             R33 2 1
      381 MOVE                             R15 R33
      382 FASTCALL2                        MATH_MAX R16 R31 ; [+5]
      384 MOVE                             R34 R16
      385 MOVE                             R35 R31
      386 GETIMPORT                        R33 K23 [math.max]
      388 CALL                             R33 2 1
      389 MOVE                             R16 R33
      390 FASTCALL2                        MATH_MIN R17 R32 ; [+5]
      392 MOVE                             R34 R17
      393 MOVE                             R35 R32
      394 GETIMPORT                        R33 K21 [math.min]
      396 CALL                             R33 2 1
      397 MOVE                             R17 R33
      398 FASTCALL2                        MATH_MAX R18 R32 ; [+5]
      400 MOVE                             R34 R18
      401 MOVE                             R35 R32
      402 GETIMPORT                        R33 K23 [math.max]
      404 CALL                             R33 2 1
      405 MOVE                             R18 R33
      406 FORGLOOP                         R20 2 [inext] ; [-112]
      408 LOADK                            R22 K16 [0.5]
      409 ADD                              R23 R7 R8
      410 MUL                              R21 R22 R23
      411 LOADK                            R23 K16 [0.5]
      412 ADD                              R24 R9 R10
      413 MUL                              R22 R23 R24
      414 LOADK                            R24 K16 [0.5]
      415 ADD                              R25 R11 R12
      416 MUL                              R23 R24 R25
      417 FASTCALL                         VECTOR ; [+2]
      418 GETIMPORT                        R20 K27 [Vector3.new]
      420 CALL                             R20 3 1
      421 SUB                              R22 R8 R7
      422 SUB                              R23 R10 R9
      423 SUB                              R24 R12 R11
      424 FASTCALL                         VECTOR ; [+2]
      425 GETIMPORT                        R21 K27 [Vector3.new]
      427 CALL                             R21 3 1
      428 LOADK                            R25 K16 [0.5]
      429 ADD                              R26 R13 R14
      430 MUL                              R24 R25 R26
      431 SUB                              R23 R24 R3
      432 LOADK                            R26 K16 [0.5]
      433 ADD                              R27 R15 R16
      434 MUL                              R25 R26 R27
      435 SUB                              R24 R25 R4
      436 LOADK                            R27 K16 [0.5]
      437 ADD                              R28 R17 R18
      438 MUL                              R26 R27 R28
      439 SUB                              R25 R26 R5
      440 FASTCALL                         VECTOR ; [+2]
      441 GETIMPORT                        R22 K27 [Vector3.new]
      443 CALL                             R22 3 1
      444 SUB                              R24 R14 R13
      445 SUB                              R25 R16 R15
      446 SUB                              R26 R18 R17
      447 FASTCALL                         VECTOR ; [+2]
      448 GETIMPORT                        R23 K27 [Vector3.new]
      450 CALL                             R23 3 1
      451 RETURN                           R20 4

PROTO_3:
        0 GETTABLE                         R3 R1 R0
        1 JUMPIFNOT                        R3 ; [+3]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R0
        4 RETURN                           R0 0
        5 LOADB                            R3 1
        6 SETTABLE                         R3 R1 R0
        7 GETIMPORT                        R3 K1 [ipairs]
        9 NAMECALL                         R4 R0 K2 ["GetChildren"]
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 3
       13 FORGPREP_INEXT                   R3
       14 GETUPVAL                         R8 0
       15 MOVE                             R9 R7
       16 MOVE                             R10 R1
       17 MOVE                             R11 R2
       18 CALL                             R8 3 0
       19 FORGLOOP                         R3 2 [inext] ; [-6]
       21 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [ipairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_INEXT                   R3
        9 GETTABLE                         R8 R2 R7
       10 JUMPIF                           R8 ; [+18]
       11 GETUPVAL                         R8 0
       12 JUMPIFNOT                        R8 ; [+6]
       13 LOADK                            R10 K2 ["PVInstance"]
       14 NAMECALL                         R8 R7 K3 ["FindFirstAncestorWhichIsA"]
       16 CALL                             R8 2 1
       17 SETTABLE                         R8 R1 R7
       18 JUMP                             ; [+5]
       19 LOADK                            R10 K4 ["BasePart"]
       20 NAMECALL                         R8 R7 K3 ["FindFirstAncestorWhichIsA"]
       22 CALL                             R8 2 1
       23 SETTABLE                         R8 R1 R7
       24 GETUPVAL                         R8 1
       25 MOVE                             R9 R7
       26 MOVE                             R10 R2
       27 MOVE                             R11 R1
       28 CALL                             R8 3 0
       29 FORGLOOP                         R3 2 [inext] ; [-21]
       31 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOT                        R5 ; [+10]
        5 MOVE                             R8 R4
        6 NAMECALL                         R6 R0 K0 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+5]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R7 R0 K1 ["ClassName"]
       13 SETTABLE                         R5 R6 R7
       14 RETURN                           R5 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R2 R0 K1 ["ClassName"]
       20 LOADB                            R3 0
       21 SETTABLE                         R3 R1 R2
       22 LOADB                            R1 0
       23 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["ClassName"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOTEQKNIL                  R3 ; [+5]
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 MOVE                             R3 R4
       10 LOADNIL                          R4
       11 JUMPIFNOTEQKS                    R3 K1 ["BasePart"] ; [+16]
       13 LOADB                            R4 1
       14 GETTABLEKS                       R5 R1 K2 ["PartSet"]
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETTABLE                         R6 R5 R0
       18 JUMPIFNOT                        R6 ; [+1]
       19 RETURN                           R0 0
       20 LOADB                            R6 1
       21 SETTABLE                         R6 R5 R0
       22 GETTABLEKS                       R6 R1 K3 ["PartToRootMap"]
       24 SETTABLE                         R0 R6 R0
       25 SETTABLEKS                       R0 R1 K4 ["BasisObject"]
       27 JUMP                             ; [+35]
       28 JUMPIFNOTEQKS                    R3 K5 ["Model"] ; [+13]
       30 LOADB                            R4 1
       31 GETTABLEKS                       R5 R1 K6 ["ModelSet"]
       33 JUMPIFNOT                        R2 ; [+3]
       34 GETTABLE                         R6 R5 R0
       35 JUMPIFNOT                        R6 ; [+1]
       36 RETURN                           R0 0
       37 LOADB                            R6 1
       38 SETTABLE                         R6 R5 R0
       39 SETTABLEKS                       R0 R1 K4 ["BasisObject"]
       41 JUMP                             ; [+21]
       42 JUMPIFNOTEQKS                    R3 K7 ["Attachment"] ; [+6]
       44 GETTABLEKS                       R5 R1 K8 ["AttachmentSet"]
       46 LOADB                            R6 1
       47 SETTABLE                         R6 R5 R0
       48 JUMP                             ; [+14]
       49 JUMPIFNOTEQKS                    R3 K9 ["Bone"] ; [+6]
       51 GETTABLEKS                       R5 R1 K10 ["BoneSet"]
       53 LOADB                            R6 1
       54 SETTABLE                         R6 R5 R0
       55 JUMP                             ; [+7]
       56 JUMPIFNOTEQKS                    R3 K11 ["FaceInstance"] ; [+6]
       58 GETTABLEKS                       R5 R1 K12 ["FaceInstanceSet"]
       60 LOADB                            R6 1
       61 SETTABLE                         R6 R5 R0
       62 JUMP                             ; [0]
       63 JUMPIFNOT                        R4 ; [+67]
       64 GETTABLEKS                       R5 R1 K6 ["ModelSet"]
       66 GETTABLEKS                       R6 R1 K2 ["PartSet"]
       68 GETTABLEKS                       R7 R1 K3 ["PartToRootMap"]
       70 LOADN                            R8 0
       71 GETTABLEKS                       R9 R1 K13 ["RootToDescendantCountMap"]
       73 NAMECALL                         R10 R0 K14 ["GetDescendants"]
       75 CALL                             R10 1 3
       76 FORGPREP                         R10
       77 GETUPVAL                         R16 0
       78 GETTABLEKS                       R17 R14 K0 ["ClassName"]
       80 GETTABLE                         R15 R16 R17
       81 JUMPIFNOTEQKNIL                  R15 ; [+5]
       83 GETUPVAL                         R16 1
       84 MOVE                             R17 R14
       85 CALL                             R16 1 1
       86 MOVE                             R15 R16
       87 JUMPIFNOTEQKS                    R15 K1 ["BasePart"] ; [+9]
       89 LOADB                            R16 1
       90 SETTABLE                         R16 R6 R14
       91 ADDK                             R8 R8 K15 [1]
       92 SETTABLE                         R0 R7 R14
       93 JUMPIFNOT                        R2 ; [+33]
       94 LOADNIL                          R16
       95 SETTABLE                         R16 R9 R14
       96 JUMP                             ; [+30]
       97 JUMPIFNOTEQKS                    R15 K5 ["Model"] ; [+8]
       99 LOADB                            R16 1
      100 SETTABLE                         R16 R5 R14
      101 ADDK                             R8 R8 K15 [1]
      102 JUMPIFNOT                        R2 ; [+24]
      103 LOADNIL                          R16
      104 SETTABLE                         R16 R9 R14
      105 JUMP                             ; [+21]
      106 JUMPIFNOTEQKS                    R15 K7 ["Attachment"] ; [+6]
      108 GETTABLEKS                       R16 R1 K8 ["AttachmentSet"]
      110 LOADB                            R17 1
      111 SETTABLE                         R17 R16 R14
      112 JUMP                             ; [+14]
      113 JUMPIFNOTEQKS                    R15 K9 ["Bone"] ; [+6]
      115 GETTABLEKS                       R16 R1 K10 ["BoneSet"]
      117 LOADB                            R17 1
      118 SETTABLE                         R17 R16 R14
      119 JUMP                             ; [+7]
      120 JUMPIFNOTEQKS                    R15 K11 ["FaceInstance"] ; [+6]
      122 GETTABLEKS                       R16 R1 K12 ["FaceInstanceSet"]
      124 LOADB                            R17 1
      125 SETTABLE                         R17 R16 R14
      126 JUMP                             ; [0]
      127 FORGLOOP                         R10 2 ; [-51]
      129 SETTABLE                         R8 R9 R0
      130 RETURN                           R0 0
      131 NAMECALL                         R5 R0 K16 ["GetChildren"]
      133 CALL                             R5 1 3
      134 FORGPREP                         R5
      135 GETUPVAL                         R10 2
      136 MOVE                             R11 R9
      137 MOVE                             R12 R1
      138 MOVE                             R13 R2
      139 CALL                             R10 3 0
      140 FORGLOOP                         R5 2 ; [-6]
      142 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K8 [{"RootToDescendantCountMap", "PartToRootMap", "PartSet", "ModelSet", "AttachmentSet", "BoneSet", "FaceInstanceSet", "BasisObject"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["RootToDescendantCountMap"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["PartToRootMap"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["PartSet"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["ModelSet"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K4 ["AttachmentSet"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K5 ["BoneSet"]
       25 NEWTABLE                         R2 0 0
       27 SETTABLEKS                       R2 R1 K6 ["FaceInstanceSet"]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K7 ["BasisObject"]
       32 MOVE                             R2 R0
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 FORGPREP                         R2
       36 JUMPIFNOTEQKN                    R5 K9 [1] ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 GETUPVAL                         R8 0
       41 MOVE                             R9 R6
       42 MOVE                             R10 R1
       43 MOVE                             R11 R7
       44 CALL                             R8 3 0
       45 FORGLOOP                         R2 2 ; [-10]
       47 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 1 ; [-8]
       15 RETURN                           R1 1

PROTO_9:
        0 NAMECALL                         R2 R0 K0 ["isSimulating"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R0 K1 ["shouldUseLocalSpace"]
        5 CALL                             R3 1 1
        6 GETIMPORT                        R4 K4 [table.create]
        8 LOADN                            R5 64
        9 CALL                             R4 1 1
       10 NEWTABLE                         R5 0 0
       12 NEWTABLE                         R6 0 0
       14 NEWTABLE                         R7 0 0
       16 NEWTABLE                         R8 0 0
       18 NEWTABLE                         R9 0 0
       20 LOADNIL                          R10
       21 LOADN                            R11 0
       22 LOADNIL                          R12
       23 LOADNIL                          R13
       24 GETUPVAL                         R14 0
       25 MOVE                             R15 R1
       26 CALL                             R14 1 1
       27 GETTABLEKS                       R5 R14 K5 ["PartSet"]
       29 MOVE                             R15 R5
       30 NEWTABLE                         R16 0 0
       32 MOVE                             R17 R15
       33 LOADNIL                          R18
       34 LOADNIL                          R19
       35 FORGPREP                         R17
       36 FASTCALL2                        TABLE_INSERT R16 R20 ; [+5]
       38 MOVE                             R23 R16
       39 MOVE                             R24 R20
       40 GETIMPORT                        R22 K7 [table.insert]
       42 CALL                             R22 2 0
       43 FORGLOOP                         R17 1 ; [-8]
       45 MOVE                             R4 R16
       46 GETTABLEKS                       R15 R14 K8 ["ModelSet"]
       48 NEWTABLE                         R16 0 0
       50 MOVE                             R17 R15
       51 LOADNIL                          R18
       52 LOADNIL                          R19
       53 FORGPREP                         R17
       54 FASTCALL2                        TABLE_INSERT R16 R20 ; [+5]
       56 MOVE                             R23 R16
       57 MOVE                             R24 R20
       58 GETIMPORT                        R22 K7 [table.insert]
       60 CALL                             R22 2 0
       61 FORGLOOP                         R17 1 ; [-8]
       63 MOVE                             R8 R16
       64 GETTABLEKS                       R16 R14 K9 ["AttachmentSet"]
       66 NEWTABLE                         R17 0 0
       68 MOVE                             R18 R16
       69 LOADNIL                          R19
       70 LOADNIL                          R20
       71 FORGPREP                         R18
       72 FASTCALL2                        TABLE_INSERT R17 R21 ; [+5]
       74 MOVE                             R24 R17
       75 MOVE                             R25 R21
       76 GETIMPORT                        R23 K7 [table.insert]
       78 CALL                             R23 2 0
       79 FORGLOOP                         R18 1 ; [-8]
       81 MOVE                             R6 R17
       82 GETTABLEKS                       R16 R14 K10 ["BoneSet"]
       84 NEWTABLE                         R17 0 0
       86 MOVE                             R18 R16
       87 LOADNIL                          R19
       88 LOADNIL                          R20
       89 FORGPREP                         R18
       90 FASTCALL2                        TABLE_INSERT R17 R21 ; [+5]
       92 MOVE                             R24 R17
       93 MOVE                             R25 R21
       94 GETIMPORT                        R23 K7 [table.insert]
       96 CALL                             R23 2 0
       97 FORGLOOP                         R18 1 ; [-8]
       99 MOVE                             R7 R17
      100 GETTABLEKS                       R16 R14 K11 ["FaceInstanceSet"]
      102 NEWTABLE                         R17 0 0
      104 MOVE                             R18 R16
      105 LOADNIL                          R19
      106 LOADNIL                          R20
      107 FORGPREP                         R18
      108 FASTCALL2                        TABLE_INSERT R17 R21 ; [+5]
      110 MOVE                             R24 R17
      111 MOVE                             R25 R21
      112 GETIMPORT                        R23 K7 [table.insert]
      114 CALL                             R23 2 0
      115 FORGLOOP                         R18 1 ; [-8]
      117 MOVE                             R9 R17
      118 GETTABLEKS                       R12 R14 K12 ["RootToDescendantCountMap"]
      120 GETTABLEKS                       R13 R14 K13 ["PartToRootMap"]
      122 GETTABLEKS                       R16 R14 K12 ["RootToDescendantCountMap"]
      124 LOADNIL                          R17
      125 LOADNIL                          R18
      126 FORGPREP                         R16
      127 ADDK                             R11 R11 K14 [1]
      128 FORGLOOP                         R16 1 ; [-2]
      130 GETTABLEKS                       R10 R14 K15 ["BasisObject"]
      132 NEWTABLE                         R16 0 0
      134 GETUPVAL                         R17 1
      135 MOVE                             R18 R6
      136 CALL                             R17 1 1
      137 GETUPVAL                         R18 2
      138 JUMPIFNOT                        R18 ; [+18]
      139 MOVE                             R18 R17
      140 LOADNIL                          R19
      141 LOADNIL                          R20
      142 FORGPREP                         R18
      143 GETTABLE                         R23 R5 R22
      144 JUMPIF                           R23 ; [+9]
      145 GETTABLE                         R23 R15 R22
      146 JUMPIF                           R23 ; [+7]
      147 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      149 MOVE                             R24 R16
      150 MOVE                             R25 R21
      151 GETIMPORT                        R23 K7 [table.insert]
      153 CALL                             R23 2 0
      154 FORGLOOP                         R18 2 ; [-12]
      156 JUMP                             ; [+16]
      157 GETIMPORT                        R18 K17 [pairs]
      159 MOVE                             R19 R17
      160 CALL                             R18 1 3
      161 FORGPREP_NEXT                    R18
      162 GETTABLE                         R23 R5 R22
      163 JUMPIF                           R23 ; [+7]
      164 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      166 MOVE                             R24 R16
      167 MOVE                             R25 R21
      168 GETIMPORT                        R23 K7 [table.insert]
      170 CALL                             R23 2 0
      171 FORGLOOP                         R18 2 ; [-10]
      173 GETUPVAL                         R18 1
      174 MOVE                             R19 R7
      175 CALL                             R18 1 1
      176 GETIMPORT                        R19 K17 [pairs]
      178 MOVE                             R20 R18
      179 CALL                             R19 1 3
      180 FORGPREP_NEXT                    R19
      181 GETTABLE                         R24 R5 R23
      182 JUMPIF                           R24 ; [+7]
      183 FASTCALL2                        TABLE_INSERT R16 R22 ; [+5]
      185 MOVE                             R25 R16
      186 MOVE                             R26 R22
      187 GETIMPORT                        R24 K7 [table.insert]
      189 CALL                             R24 2 0
      190 FORGLOOP                         R19 2 ; [-10]
      192 LOADNIL                          R19
      193 LOADNIL                          R20
      194 JUMPIFNOT                        R10 ; [+9]
      195 NAMECALL                         R21 R10 K18 ["GetPivot"]
      197 CALL                             R21 1 1
      198 MOVE                             R20 R21
      199 JUMPIFNOTEQKN                    R11 K14 [1] ; [+2]
      201 LOADB                            R19 0 +1
      202 LOADB                            R19 1
      203 JUMP                             ; [+18]
      204 LENGTH                           R21 R16
      205 LOADN                            R22 0
      206 JUMPIFNOTLT                      R22 R21 ; [+10]
      208 GETTABLEN                        R21 R16 1
      209 GETTABLEKS                       R20 R21 K19 ["WorldCFrame"]
      211 LENGTH                           R21 R16
      212 LOADN                            R22 1
      213 JUMPIFNOTLT                      R22 R21 ; [+8]
      215 LOADB                            R19 1
      216 JUMP                             ; [+5]
      217 GETIMPORT                        R21 K22 [CFrame.new]
      219 CALL                             R21 0 1
      220 MOVE                             R20 R21
      221 LOADB                            R19 0
      222 NEWTABLE                         R21 0 0
      224 GETIMPORT                        R22 K24 [ipairs]
      226 MOVE                             R23 R4
      227 CALL                             R22 1 3
      228 FORGPREP_INEXT                   R22
      229 GETTABLEKS                       R27 R26 K20 ["CFrame"]
      231 SETTABLE                         R27 R21 R26
      232 FORGLOOP                         R22 2 [inext] ; [-4]
      234 LOADB                            R22 0
      235 JUMPIFNOT                        R2 ; [+48]
      236 GETIMPORT                        R23 K24 [ipairs]
      238 MOVE                             R24 R4
      239 CALL                             R23 1 3
      240 FORGPREP_INEXT                   R23
      241 NAMECALL                         R28 R27 K25 ["IsGrounded"]
      243 CALL                             R28 1 1
      244 JUMPIF                           R28 ; [+2]
      245 LOADB                            R22 1
      246 JUMP                             ; [+2]
      247 FORGLOOP                         R23 2 [inext] ; [-7]
      249 JUMPIF                           R22 ; [+34]
      250 GETIMPORT                        R23 K17 [pairs]
      252 MOVE                             R24 R17
      253 CALL                             R23 1 3
      254 FORGPREP_NEXT                    R23
      255 LOADK                            R30 K26 ["BasePart"]
      256 NAMECALL                         R28 R27 K27 ["IsA"]
      258 CALL                             R28 2 1
      259 JUMPIFNOT                        R28 ; [+5]
      260 NAMECALL                         R28 R27 K25 ["IsGrounded"]
      262 CALL                             R28 1 1
      263 JUMPIF                           R28 ; [+1]
      264 LOADB                            R22 1
      265 FORGLOOP                         R23 2 ; [-11]
      267 GETIMPORT                        R23 K17 [pairs]
      269 MOVE                             R24 R18
      270 CALL                             R23 1 3
      271 FORGPREP_NEXT                    R23
      272 LOADK                            R30 K26 ["BasePart"]
      273 NAMECALL                         R28 R27 K27 ["IsA"]
      275 CALL                             R28 2 1
      276 JUMPIFNOT                        R28 ; [+5]
      277 NAMECALL                         R28 R27 K25 ["IsGrounded"]
      279 CALL                             R28 1 1
      280 JUMPIF                           R28 ; [+1]
      281 LOADB                            R22 1
      282 FORGLOOP                         R23 2 ; [-11]
      284 GETIMPORT                        R23 K24 [ipairs]
      286 MOVE                             R24 R7
      287 CALL                             R23 1 3
      288 FORGPREP_INEXT                   R23
      289 FASTCALL2                        TABLE_INSERT R6 R27 ; [+5]
      291 MOVE                             R29 R6
      292 MOVE                             R30 R27
      293 GETIMPORT                        R28 K7 [table.insert]
      295 CALL                             R28 2 0
      296 FORGLOOP                         R23 2 [inext] ; [-8]
      298 MOVE                             R23 R20
      299 LOADNIL                          R24
      300 LOADNIL                          R25
      301 LOADNIL                          R26
      302 LOADNIL                          R27
      303 LOADNIL                          R28
      304 JUMPIFNOT                        R3 ; [+11]
      305 GETUPVAL                         R29 3
      306 MOVE                             R30 R23
      307 MOVE                             R31 R4
      308 MOVE                             R32 R6
      309 CALL                             R29 3 2
      310 MOVE                             R24 R29
      311 MOVE                             R25 R30
      312 MOVE                             R26 R23
      313 MOVE                             R27 R24
      314 MOVE                             R28 R25
      315 JUMP                             ; [+15]
      316 GETUPVAL                         R29 4
      317 MOVE                             R30 R23
      318 MOVE                             R31 R4
      319 MOVE                             R32 R6
      320 CALL                             R29 3 4
      321 MOVE                             R24 R29
      322 MOVE                             R25 R30
      323 MOVE                             R27 R31
      324 MOVE                             R28 R32
      325 GETIMPORT                        R29 K22 [CFrame.new]
      327 GETTABLEKS                       R30 R20 K28 ["Position"]
      329 CALL                             R29 1 1
      330 MOVE                             R26 R29
      331 JUMPIFNOT                        R19 ; [+20]
      332 GETIMPORT                        R29 K22 [CFrame.new]
      334 MOVE                             R30 R24
      335 CALL                             R29 1 1
      336 MUL                              R23 R23 R29
      337 FASTCALL                         VECTOR ; [+2]
      338 GETIMPORT                        R29 K30 [Vector3.new]
      340 CALL                             R29 0 1
      341 MOVE                             R24 R29
      342 GETIMPORT                        R29 K22 [CFrame.new]
      344 MOVE                             R30 R27
      345 CALL                             R29 1 1
      346 MUL                              R26 R26 R29
      347 FASTCALL                         VECTOR ; [+2]
      348 GETIMPORT                        R29 K30 [Vector3.new]
      350 CALL                             R29 0 1
      351 MOVE                             R27 R29
      352 DUPTABLE                         R29 K48 [{"basisCFrame", "basisObject", "boundingBoxSize", "boundingBoxOffset", "localBasisCFrame", "localBoundingBoxSize", "localBoundingBoxOffset", "rootToDescendantCountMap", "partToRootMap", "parts", "partSet", "attachments", "models", "allAttachments", "originalCFrameMap", "hasPhysics", "instancesWithConfigurableFace"}]
      353 SETTABLEKS                       R26 R29 K31 ["basisCFrame"]
      355 SETTABLEKS                       R10 R29 K32 ["basisObject"]
      357 SETTABLEKS                       R28 R29 K33 ["boundingBoxSize"]
      359 SETTABLEKS                       R27 R29 K34 ["boundingBoxOffset"]
      361 SETTABLEKS                       R23 R29 K35 ["localBasisCFrame"]
      363 SETTABLEKS                       R25 R29 K36 ["localBoundingBoxSize"]
      365 SETTABLEKS                       R24 R29 K37 ["localBoundingBoxOffset"]
      367 SETTABLEKS                       R12 R29 K38 ["rootToDescendantCountMap"]
      369 SETTABLEKS                       R13 R29 K39 ["partToRootMap"]
      371 SETTABLEKS                       R4 R29 K40 ["parts"]
      373 SETTABLEKS                       R5 R29 K41 ["partSet"]
      375 SETTABLEKS                       R16 R29 K42 ["attachments"]
      377 SETTABLEKS                       R8 R29 K43 ["models"]
      379 SETTABLEKS                       R6 R29 K44 ["allAttachments"]
      381 SETTABLEKS                       R21 R29 K45 ["originalCFrameMap"]
      383 SETTABLEKS                       R22 R29 K46 ["hasPhysics"]
      385 SETTABLEKS                       R9 R29 K47 ["instancesWithConfigurableFace"]
      387 RETURN                           R29 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        7 GETIMPORT                        R2 K1 [setmetatable]
        9 CALL                             R2 2 1
       10 RETURN                           R2 1

PROTO_11:
        0 NEWTABLE                         R2 4 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 SETTABLE                         R7 R2 R6
        8 FORGLOOP                         R3 2 ; [-2]
       10 GETTABLEKS                       R4 R2 K2 ["basisCFrame"]
       12 MUL                              R3 R1 R4
       13 NAMECALL                         R3 R3 K3 ["Orthonormalize"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K2 ["basisCFrame"]
       18 GETTABLEKS                       R4 R2 K4 ["localBasisCFrame"]
       20 MUL                              R3 R1 R4
       21 NAMECALL                         R3 R3 K3 ["Orthonormalize"]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K4 ["localBasisCFrame"]
       26 NEWTABLE                         R3 0 0
       28 GETIMPORT                        R4 K1 [pairs]
       30 GETTABLEKS                       R5 R2 K5 ["originalCFrameMap"]
       32 CALL                             R4 1 3
       33 FORGPREP_NEXT                    R4
       34 MUL                              R9 R1 R8
       35 NAMECALL                         R9 R9 K3 ["Orthonormalize"]
       37 CALL                             R9 1 1
       38 SETTABLE                         R9 R3 R7
       39 FORGLOOP                         R4 2 ; [-6]
       41 SETTABLEKS                       R3 R2 K5 ["originalCFrameMap"]
       43 GETTABLEKS                       R4 R0 K6 ["_rootModelMapping"]
       45 JUMPIFNOT                        R4 ; [+52]
       46 GETIMPORT                        R4 K9 [table.clone]
       48 GETTABLEKS                       R6 R0 K6 ["_rootModelMapping"]
       50 GETTABLEKS                       R5 R6 K10 ["LoosePartMap"]
       52 CALL                             R4 1 1
       53 GETIMPORT                        R5 K9 [table.clone]
       55 GETTABLEKS                       R7 R0 K6 ["_rootModelMapping"]
       57 GETTABLEKS                       R6 R7 K11 ["RootModelMap"]
       59 CALL                             R5 1 1
       60 MOVE                             R6 R4
       61 LOADNIL                          R7
       62 LOADNIL                          R8
       63 FORGPREP                         R6
       64 MUL                              R11 R1 R10
       65 NAMECALL                         R11 R11 K3 ["Orthonormalize"]
       67 CALL                             R11 1 1
       68 SETTABLE                         R11 R4 R9
       69 FORGLOOP                         R6 2 ; [-6]
       71 MOVE                             R6 R5
       72 LOADNIL                          R7
       73 LOADNIL                          R8
       74 FORGPREP                         R6
       75 MUL                              R11 R1 R10
       76 NAMECALL                         R11 R11 K3 ["Orthonormalize"]
       78 CALL                             R11 1 1
       79 SETTABLE                         R11 R5 R9
       80 FORGLOOP                         R6 2 ; [-6]
       82 GETIMPORT                        R6 K13 [table.freeze]
       84 DUPTABLE                         R7 K15 [{"PartToRootMap", "LoosePartMap", "RootModelMap"}]
       85 GETTABLEKS                       R9 R0 K6 ["_rootModelMapping"]
       87 GETTABLEKS                       R8 R9 K14 ["PartToRootMap"]
       89 SETTABLEKS                       R8 R7 K14 ["PartToRootMap"]
       91 SETTABLEKS                       R4 R7 K10 ["LoosePartMap"]
       93 SETTABLEKS                       R5 R7 K11 ["RootModelMap"]
       95 CALL                             R6 1 1
       96 SETTABLEKS                       R6 R2 K6 ["_rootModelMapping"]
       98 GETUPVAL                         R6 0
       99 FASTCALL2                        SETMETATABLE R2 R6 ; [+4]
      101 MOVE                             R5 R2
      102 GETIMPORT                        R4 K17 [setmetatable]
      104 CALL                             R4 2 1
      105 RETURN                           R4 1

PROTO_12:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["parts"]
        3 LENGTH                           R2 R3
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+8]
        6 GETTABLEKS                       R3 R0 K2 ["attachments"]
        8 LENGTH                           R2 R3
        9 JUMPIFEQKN                       R2 K1 [0] ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["basisCFrame"]
        2 GETTABLEKS                       R2 R0 K1 ["boundingBoxOffset"]
        4 GETTABLEKS                       R3 R0 K2 ["boundingBoxSize"]
        6 RETURN                           R1 3

PROTO_14:
        0 GETTABLEKS                       R4 R0 K0 ["partSet"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["hasPhysics"]
        2 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["originalCFrameMap"]
        2 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["localBasisCFrame"]
        2 GETTABLEKS                       R2 R0 K1 ["localBoundingBoxOffset"]
        4 GETTABLEKS                       R3 R0 K2 ["localBoundingBoxSize"]
        6 RETURN                           R1 3

PROTO_18:
        0 GETTABLEKS                       R4 R0 K0 ["parts"]
        2 LENGTH                           R3 R4
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R4 R3 ; [+143]
        6 GETTABLEKS                       R4 R0 K0 ["parts"]
        8 GETTABLEN                        R3 R4 1
        9 GETTABLEKS                       R4 R3 K1 ["CFrame"]
       11 GETTABLEKS                       R6 R0 K2 ["originalCFrameMap"]
       13 GETTABLE                         R5 R6 R3
       14 NAMECALL                         R7 R5 K3 ["Inverse"]
       16 CALL                             R7 1 1
       17 MUL                              R6 R4 R7
       18 NAMECALL                         R7 R0 K4 ["getLocalBoundingBox"]
       20 CALL                             R7 1 3
       21 GETTABLEKS                       R10 R9 K5 ["Magnitude"]
       23 GETTABLEKS                       R12 R6 K6 ["Rotation"]
       25 MUL                              R11 R12 R2
       26 MUL                              R14 R6 R7
       27 MUL                              R13 R14 R1
       28 GETTABLEKS                       R12 R13 K7 ["Position"]
       30 LOADK                            R17 K9 [0.5]
       31 MUL                              R16 R17 R10
       32 ADDK                             R15 R16 K8 [1]
       33 MUL                              R14 R15 R11
       34 SUB                              R13 R12 R14
       35 GETIMPORT                        R14 K11 [CFrame.lookAlong]
       37 MOVE                             R15 R13
       38 MOVE                             R16 R11
       39 CALL                             R14 2 1
       40 LOADN                            R18 2
       41 MUL                              R17 R18 R10
       42 ADDK                             R16 R17 K8 [1]
       43 FASTCALL2K                       MATH_MIN R16 K12 ; [+4]
       45 LOADK                            R17 K12 [1023]
       46 GETIMPORT                        R15 K15 [math.min]
       48 CALL                             R15 2 1
       49 GETIMPORT                        R16 K18 [RaycastParams.new]
       51 CALL                             R16 0 1
       52 GETIMPORT                        R17 K22 [Enum.RaycastFilterType.Include]
       54 SETTABLEKS                       R17 R16 K23 ["FilterType"]
       56 GETTABLEKS                       R17 R0 K0 ["parts"]
       58 SETTABLEKS                       R17 R16 K24 ["FilterDescendantsInstances"]
       60 LOADK                            R19 K25 [0.1]
       61 MUL                              R18 R19 R10
       62 FASTCALL2K                       MATH_MIN R18 K26 ; [+4]
       64 LOADK                            R19 K26 [512]
       65 GETIMPORT                        R17 K15 [math.min]
       67 CALL                             R17 2 1
       68 JUMPIFEQ                         R17 R17 ; [+2]
       70 LOADN                            R17 1
       71 GETIMPORT                        R18 K28 [workspace]
       73 MOVE                             R20 R14
       74 LOADN                            R24 0
       75 FASTCALL3                        VECTOR R17 R17 R24
       77 MOVE                             R22 R17
       78 MOVE                             R23 R17
       79 GETIMPORT                        R21 K30 [Vector3.new]
       81 CALL                             R21 3 1
       82 MUL                              R22 R11 R15
       83 MOVE                             R23 R16
       84 NAMECALL                         R18 R18 K31 ["Blockcast"]
       86 CALL                             R18 5 1
       87 JUMPIFNOT                        R18 ; [+58]
       88 NAMECALL                         R20 R6 K3 ["Inverse"]
       90 CALL                             R20 1 1
       91 GETTABLEKS                       R21 R18 K7 ["Position"]
       93 MUL                              R19 R20 R21
       94 GETIMPORT                        R22 K32 [CFrame.new]
       96 MOVE                             R23 R8
       97 CALL                             R22 1 1
       98 MUL                              R21 R7 R22
       99 GETTABLEKS                       R20 R21 K7 ["Position"]
      101 SUB                              R22 R19 R20
      102 MOVE                             R24 R2
      103 NAMECALL                         R22 R22 K33 ["Dot"]
      105 CALL                             R22 2 1
      106 FASTCALL1                        MATH_ABS R22 ; [+2]
      107 GETIMPORT                        R21 K35 [math.abs]
      109 CALL                             R21 1 1
      110 MOVE                             R24 R2
      111 NAMECALL                         R22 R7 K36 ["VectorToObjectSpace"]
      113 CALL                             R22 2 1
      114 GETTABLEKS                       R27 R9 K37 ["X"]
      116 GETTABLEKS                       R28 R22 K37 ["X"]
      118 MUL                              R26 R27 R28
      119 FASTCALL1                        MATH_ABS R26 ; [+2]
      120 GETIMPORT                        R25 K35 [math.abs]
      122 CALL                             R25 1 1
      123 GETTABLEKS                       R28 R9 K38 ["Y"]
      125 GETTABLEKS                       R29 R22 K38 ["Y"]
      127 MUL                              R27 R28 R29
      128 FASTCALL1                        MATH_ABS R27 ; [+2]
      129 GETIMPORT                        R26 K35 [math.abs]
      131 CALL                             R26 1 1
      132 ADD                              R24 R25 R26
      133 GETTABLEKS                       R27 R9 K39 ["Z"]
      135 GETTABLEKS                       R28 R22 K39 ["Z"]
      137 MUL                              R26 R27 R28
      138 FASTCALL1                        MATH_ABS R26 ; [+2]
      139 GETIMPORT                        R25 K35 [math.abs]
      141 CALL                             R25 1 1
      142 ADD                              R23 R24 R25
      143 MULK                             R25 R23 K9 [0.5]
      144 SUB                              R24 R25 R21
      145 RETURN                           R24 1
      146 LOADN                            R19 0
      147 RETURN                           R19 1
      148 GETTABLEKS                       R4 R0 K40 ["attachments"]
      150 LENGTH                           R3 R4
      151 LOADN                            R4 0
      152 JUMPIFNOTLT                      R4 R3 ; [+3]
      154 LOADN                            R3 0
      155 RETURN                           R3 1
      156 LOADN                            R3 0
      157 RETURN                           R3 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["parts"]
        2 GETTABLEKS                       R2 R0 K1 ["attachments"]
        4 GETTABLEKS                       R3 R0 K2 ["models"]
        6 RETURN                           R1 3

PROTO_20:
        0 DUPTABLE                         R1 K2 [{"RootToDescendantCountMap", "PartToRootMap"}]
        1 GETTABLEKS                       R2 R0 K3 ["rootToDescendantCountMap"]
        3 SETTABLEKS                       R2 R1 K0 ["RootToDescendantCountMap"]
        5 GETTABLEKS                       R2 R0 K4 ["partToRootMap"]
        7 SETTABLEKS                       R2 R1 K1 ["PartToRootMap"]
        9 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["basisObject"]
        2 RETURN                           R1 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["allAttachments"]
        2 RETURN                           R1 1

PROTO_23:
        0 NAMECALL                         R4 R0 K0 ["GetChildren"]
        2 CALL                             R4 1 3
        3 FORGPREP                         R4
        4 LOADK                            R11 K1 ["BasePart"]
        5 NAMECALL                         R9 R8 K2 ["IsA"]
        7 CALL                             R9 2 1
        8 JUMPIFNOT                        R9 ; [+11]
        9 GETTABLEKS                       R9 R8 K3 ["CFrame"]
       11 SETTABLE                         R9 R2 R8
       12 SETTABLE                         R8 R1 R8
       13 GETUPVAL                         R9 0
       14 MOVE                             R10 R8
       15 MOVE                             R11 R1
       16 MOVE                             R12 R2
       17 MOVE                             R13 R3
       18 CALL                             R9 4 0
       19 JUMP                             ; [+28]
       20 LOADK                            R11 K4 ["Model"]
       21 NAMECALL                         R9 R8 K2 ["IsA"]
       23 CALL                             R9 2 1
       24 JUMPIFNOT                        R9 ; [+17]
       25 NAMECALL                         R9 R8 K5 ["GetPivot"]
       27 CALL                             R9 1 1
       28 SETTABLE                         R9 R3 R8
       29 NAMECALL                         R9 R8 K6 ["GetDescendants"]
       31 CALL                             R9 1 3
       32 FORGPREP                         R9
       33 LOADK                            R16 K1 ["BasePart"]
       34 NAMECALL                         R14 R13 K2 ["IsA"]
       36 CALL                             R14 2 1
       37 JUMPIFNOT                        R14 ; [+1]
       38 SETTABLE                         R8 R1 R13
       39 FORGLOOP                         R9 2 ; [-7]
       41 JUMP                             ; [+6]
       42 GETUPVAL                         R9 0
       43 MOVE                             R10 R8
       44 MOVE                             R11 R1
       45 MOVE                             R12 R2
       46 MOVE                             R13 R3
       47 CALL                             R9 4 0
       48 FORGLOOP                         R4 2 ; [-45]
       50 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["PartToRootMap"]
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 GETTABLEKS                       R4 R0 K4 ["RootToDescendantCountMap"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 LOADK                            R11 K5 ["BasePart"]
       15 NAMECALL                         R9 R7 K6 ["IsA"]
       17 CALL                             R9 2 1
       18 JUMPIFNOT                        R9 ; [+10]
       19 GETTABLEKS                       R9 R7 K7 ["CFrame"]
       21 SETTABLE                         R9 R3 R7
       22 GETUPVAL                         R9 0
       23 MOVE                             R10 R7
       24 MOVE                             R11 R1
       25 MOVE                             R12 R3
       26 MOVE                             R13 R2
       27 CALL                             R9 4 0
       28 JUMP                             ; [+4]
       29 NAMECALL                         R9 R7 K8 ["GetPivot"]
       31 CALL                             R9 1 1
       32 SETTABLE                         R9 R2 R7
       33 FORGLOOP                         R4 2 ; [-20]
       35 MOVE                             R4 R1
       36 MOVE                             R5 R3
       37 MOVE                             R6 R2
       38 RETURN                           R4 3

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_rootModelMapping"]
        2 JUMPIF                           R1 ; [+17]
        3 GETUPVAL                         R1 0
        4 NAMECALL                         R2 R0 K1 ["getRootMapping"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 3
        8 GETIMPORT                        R4 K4 [table.freeze]
       10 DUPTABLE                         R5 K8 [{"PartToRootMap", "LoosePartMap", "RootModelMap"}]
       11 SETTABLEKS                       R1 R5 K5 ["PartToRootMap"]
       13 SETTABLEKS                       R2 R5 K6 ["LoosePartMap"]
       15 SETTABLEKS                       R3 R5 K7 ["RootModelMap"]
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R0 K0 ["_rootModelMapping"]
       20 GETTABLEKS                       R1 R0 K0 ["_rootModelMapping"]
       22 RETURN                           R1 1

PROTO_26:
        0 LOADN                            R1 0
        1 LOADN                            R2 0
        2 GETTABLEKS                       R3 R0 K0 ["LoosePartMap"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 ADDK                             R1 R1 K1 [1]
        8 FORGLOOP                         R3 1 ; [-2]
       10 GETTABLEKS                       R3 R0 K2 ["RootModelMap"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 ADDK                             R2 R2 K1 [1]
       16 FORGLOOP                         R3 1 ; [-2]
       18 LOADB                            R3 0
       19 JUMPIFNOTEQKN                    R1 K1 [1] ; [+5]
       21 JUMPIFEQKN                       R2 K3 [0] ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 RETURN                           R3 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_isSinglePart"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+31]
        4 NAMECALL                         R2 R0 K1 ["getRootModelMapping"]
        6 CALL                             R2 1 1
        7 LOADN                            R3 0
        8 LOADN                            R4 0
        9 GETTABLEKS                       R5 R2 K2 ["LoosePartMap"]
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 ADDK                             R3 R3 K3 [1]
       15 FORGLOOP                         R5 1 ; [-2]
       17 GETTABLEKS                       R5 R2 K4 ["RootModelMap"]
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 ADDK                             R4 R4 K3 [1]
       23 FORGLOOP                         R5 1 ; [-2]
       25 LOADB                            R1 0
       26 JUMPIFNOTEQKN                    R3 K3 [1] ; [+5]
       28 JUMPIFEQKN                       R4 K5 [0] ; [+2]
       30 LOADB                            R1 0 +1
       31 LOADB                            R1 1
       32 SETTABLEKS                       R1 R0 K0 ["_isSinglePart"]
       34 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["DetachedAttachments"]
       10 NAMECALL                         R1 R1 K5 ["GetEngineFeature"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K6 [PROTO_0]
       14 CAPTURE                          VAL R1
       15 DUPCLOSURE                       R3 K7 [PROTO_1]
       16 CAPTURE                          VAL R0
       17 DUPCLOSURE                       R4 K8 [PROTO_2]
       18 CAPTURE                          VAL R0
       19 DUPCLOSURE                       R5 K9 [PROTO_3]
       20 CAPTURE                          VAL R5
       21 DUPCLOSURE                       R6 K10 [PROTO_4]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R5
       24 DUPTABLE                         R7 K18 [{"BasePart", "Model", "Attachment", "Bone", "FaceInstance", "SurfaceGui", "Terrain"}]
       25 LOADK                            R8 K11 ["BasePart"]
       26 SETTABLEKS                       R8 R7 K11 ["BasePart"]
       28 LOADK                            R8 K12 ["Model"]
       29 SETTABLEKS                       R8 R7 K12 ["Model"]
       31 LOADK                            R8 K13 ["Attachment"]
       32 SETTABLEKS                       R8 R7 K13 ["Attachment"]
       34 LOADK                            R8 K14 ["Bone"]
       35 SETTABLEKS                       R8 R7 K14 ["Bone"]
       37 LOADK                            R8 K15 ["FaceInstance"]
       38 SETTABLEKS                       R8 R7 K15 ["FaceInstance"]
       40 LOADK                            R8 K15 ["FaceInstance"]
       41 SETTABLEKS                       R8 R7 K16 ["SurfaceGui"]
       43 LOADK                            R8 K17 ["Terrain"]
       44 SETTABLEKS                       R8 R7 K17 ["Terrain"]
       46 DUPCLOSURE                       R8 K19 [PROTO_5]
       47 CAPTURE                          VAL R7
       48 DUPCLOSURE                       R9 K20 [PROTO_6]
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R9
       52 DUPCLOSURE                       R10 K21 [PROTO_7]
       53 CAPTURE                          VAL R9
       54 DUPCLOSURE                       R11 K22 [PROTO_8]
       55 DUPCLOSURE                       R12 K23 [PROTO_9]
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 NEWTABLE                         R13 16 0
       63 SETTABLEKS                       R13 R13 K24 ["__index"]
       65 DUPCLOSURE                       R14 K25 [PROTO_10]
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R13
       68 SETTABLEKS                       R14 R13 K26 ["new"]
       70 DUPCLOSURE                       R14 K27 [PROTO_11]
       71 CAPTURE                          VAL R13
       72 SETTABLEKS                       R14 R13 K28 ["getTransformedCopy"]
       74 DUPCLOSURE                       R14 K29 [PROTO_12]
       75 SETTABLEKS                       R14 R13 K30 ["isEmpty"]
       77 DUPCLOSURE                       R14 K31 [PROTO_13]
       78 SETTABLEKS                       R14 R13 K32 ["getBoundingBox"]
       80 DUPCLOSURE                       R14 K33 [PROTO_14]
       81 SETTABLEKS                       R14 R13 K34 ["doesContainItem"]
       83 DUPCLOSURE                       R14 K35 [PROTO_15]
       84 SETTABLEKS                       R14 R13 K36 ["isDynamic"]
       86 DUPCLOSURE                       R14 K37 [PROTO_16]
       87 SETTABLEKS                       R14 R13 K38 ["getOriginalCFrameMap"]
       89 DUPCLOSURE                       R14 K39 [PROTO_17]
       90 SETTABLEKS                       R14 R13 K40 ["getLocalBoundingBox"]
       92 DUPCLOSURE                       R14 K41 [PROTO_18]
       93 SETTABLEKS                       R14 R13 K42 ["getBoundingBoxDiscrepancy"]
       95 DUPCLOSURE                       R14 K43 [PROTO_19]
       96 SETTABLEKS                       R14 R13 K44 ["getObjectsToTransform"]
       98 DUPCLOSURE                       R14 K45 [PROTO_20]
       99 SETTABLEKS                       R14 R13 K46 ["getRootMapping"]
      101 DUPCLOSURE                       R14 K47 [PROTO_21]
      102 SETTABLEKS                       R14 R13 K48 ["getBasisObject"]
      104 DUPCLOSURE                       R14 K49 [PROTO_22]
      105 SETTABLEKS                       R14 R13 K50 ["getAllAttachments"]
      107 DUPCLOSURE                       R14 K51 [PROTO_23]
      108 CAPTURE                          VAL R14
      109 DUPCLOSURE                       R15 K52 [PROTO_24]
      110 CAPTURE                          VAL R14
      111 DUPCLOSURE                       R16 K53 [PROTO_25]
      112 CAPTURE                          VAL R15
      113 SETTABLEKS                       R16 R13 K54 ["getRootModelMapping"]
      115 DUPCLOSURE                       R16 K55 [PROTO_26]
      116 DUPCLOSURE                       R17 K56 [PROTO_27]
      117 SETTABLEKS                       R17 R13 K57 ["isSelectionSinglePart"]
      119 RETURN                           R13 1
