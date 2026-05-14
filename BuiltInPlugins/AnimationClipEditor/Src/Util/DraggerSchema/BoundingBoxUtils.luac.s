PROTO_0:
        0 NAMECALL                         R3 R0 K0 ["Inverse"]
        2 CALL                             R3 1 1
        3 LOADK                            R4 K1 [∞]
        4 LOADK                            R5 K2 [-∞]
        5 LOADK                            R6 K1 [∞]
        6 LOADK                            R7 K2 [-∞]
        7 LOADK                            R8 K1 [∞]
        8 LOADK                            R9 K2 [-∞]
        9 GETUPVAL                         R10 0
       10 GETTABLEKS                       R10 R10 K3 ["Terrain"]
       12 GETIMPORT                        R11 K5 [ipairs]
       14 MOVE                             R12 R1
       15 CALL                             R11 1 3
       16 FORGPREP_INEXT                   R11
       17 JUMPIFEQ                         R15 R10 ; [+123]
       19 GETTABLEKS                       R16 R15 K6 ["CFrame"]
       21 GETTABLEKS                       R17 R15 K7 ["Size"]
       23 GETTABLEKS                       R18 R17 K8 ["X"]
       25 GETTABLEKS                       R19 R17 K9 ["Y"]
       27 GETTABLEKS                       R20 R17 K10 ["Z"]
       29 MUL                              R21 R3 R16
       30 NAMECALL                         R22 R21 K11 ["components"]
       32 CALL                             R22 1 12
       33 MUL                              R38 R18 R25
       34 FASTCALL1                        MATH_ABS R38 ; [+2]
       35 GETIMPORT                        R37 K15 [math.abs]
       37 CALL                             R37 1 1
       38 MUL                              R39 R19 R26
       39 FASTCALL1                        MATH_ABS R39 ; [+2]
       40 GETIMPORT                        R38 K15 [math.abs]
       42 CALL                             R38 1 1
       43 ADD                              R36 R37 R38
       44 MUL                              R38 R20 R27
       45 FASTCALL1                        MATH_ABS R38 ; [+2]
       46 GETIMPORT                        R37 K15 [math.abs]
       48 CALL                             R37 1 1
       49 ADD                              R35 R36 R37
       50 MULK                             R34 R35 K12 [0.5]
       51 MUL                              R39 R18 R28
       52 FASTCALL1                        MATH_ABS R39 ; [+2]
       53 GETIMPORT                        R38 K15 [math.abs]
       55 CALL                             R38 1 1
       56 MUL                              R40 R19 R29
       57 FASTCALL1                        MATH_ABS R40 ; [+2]
       58 GETIMPORT                        R39 K15 [math.abs]
       60 CALL                             R39 1 1
       61 ADD                              R37 R38 R39
       62 MUL                              R39 R20 R30
       63 FASTCALL1                        MATH_ABS R39 ; [+2]
       64 GETIMPORT                        R38 K15 [math.abs]
       66 CALL                             R38 1 1
       67 ADD                              R36 R37 R38
       68 MULK                             R35 R36 K12 [0.5]
       69 MUL                              R40 R18 R31
       70 FASTCALL1                        MATH_ABS R40 ; [+2]
       71 GETIMPORT                        R39 K15 [math.abs]
       73 CALL                             R39 1 1
       74 MUL                              R41 R19 R32
       75 FASTCALL1                        MATH_ABS R41 ; [+2]
       76 GETIMPORT                        R40 K15 [math.abs]
       78 CALL                             R40 1 1
       79 ADD                              R38 R39 R40
       80 MUL                              R40 R20 R33
       81 FASTCALL1                        MATH_ABS R40 ; [+2]
       82 GETIMPORT                        R39 K15 [math.abs]
       84 CALL                             R39 1 1
       85 ADD                              R37 R38 R39
       86 MULK                             R36 R37 K12 [0.5]
       87 GETTABLEKS                       R37 R21 K8 ["X"]
       89 GETTABLEKS                       R38 R21 K9 ["Y"]
       91 GETTABLEKS                       R39 R21 K10 ["Z"]
       93 SUB                              R42 R37 R34
       94 FASTCALL2                        MATH_MIN R4 R42 ; [+4]
       96 MOVE                             R41 R4
       97 GETIMPORT                        R40 K17 [math.min]
       99 CALL                             R40 2 1
      100 MOVE                             R4 R40
      101 ADD                              R42 R37 R34
      102 FASTCALL2                        MATH_MAX R5 R42 ; [+4]
      104 MOVE                             R41 R5
      105 GETIMPORT                        R40 K19 [math.max]
      107 CALL                             R40 2 1
      108 MOVE                             R5 R40
      109 SUB                              R42 R38 R35
      110 FASTCALL2                        MATH_MIN R6 R42 ; [+4]
      112 MOVE                             R41 R6
      113 GETIMPORT                        R40 K17 [math.min]
      115 CALL                             R40 2 1
      116 MOVE                             R6 R40
      117 ADD                              R42 R38 R35
      118 FASTCALL2                        MATH_MAX R7 R42 ; [+4]
      120 MOVE                             R41 R7
      121 GETIMPORT                        R40 K19 [math.max]
      123 CALL                             R40 2 1
      124 MOVE                             R7 R40
      125 SUB                              R42 R39 R36
      126 FASTCALL2                        MATH_MIN R8 R42 ; [+4]
      128 MOVE                             R41 R8
      129 GETIMPORT                        R40 K17 [math.min]
      131 CALL                             R40 2 1
      132 MOVE                             R8 R40
      133 ADD                              R42 R39 R36
      134 FASTCALL2                        MATH_MAX R9 R42 ; [+4]
      136 MOVE                             R41 R9
      137 GETIMPORT                        R40 K19 [math.max]
      139 CALL                             R40 2 1
      140 MOVE                             R9 R40
      141 FORGLOOP                         R11 2 [inext] ; [-125]
      143 GETIMPORT                        R11 K5 [ipairs]
      145 MOVE                             R12 R2
      146 CALL                             R11 1 3
      147 FORGPREP_INEXT                   R11
      148 GETTABLEKS                       R18 R15 K20 ["WorldPosition"]
      150 NAMECALL                         R16 R0 K21 ["PointToObjectSpace"]
      152 CALL                             R16 2 1
      153 GETTABLEKS                       R17 R16 K8 ["X"]
      155 GETTABLEKS                       R18 R16 K9 ["Y"]
      157 GETTABLEKS                       R19 R16 K10 ["Z"]
      159 FASTCALL2                        MATH_MIN R4 R17 ; [+5]
      161 MOVE                             R21 R4
      162 MOVE                             R22 R17
      163 GETIMPORT                        R20 K17 [math.min]
      165 CALL                             R20 2 1
      166 MOVE                             R4 R20
      167 FASTCALL2                        MATH_MAX R5 R17 ; [+5]
      169 MOVE                             R21 R5
      170 MOVE                             R22 R17
      171 GETIMPORT                        R20 K19 [math.max]
      173 CALL                             R20 2 1
      174 MOVE                             R5 R20
      175 FASTCALL2                        MATH_MIN R6 R18 ; [+5]
      177 MOVE                             R21 R6
      178 MOVE                             R22 R18
      179 GETIMPORT                        R20 K17 [math.min]
      181 CALL                             R20 2 1
      182 MOVE                             R6 R20
      183 FASTCALL2                        MATH_MAX R7 R18 ; [+5]
      185 MOVE                             R21 R7
      186 MOVE                             R22 R18
      187 GETIMPORT                        R20 K19 [math.max]
      189 CALL                             R20 2 1
      190 MOVE                             R7 R20
      191 FASTCALL2                        MATH_MIN R8 R19 ; [+5]
      193 MOVE                             R21 R8
      194 MOVE                             R22 R19
      195 GETIMPORT                        R20 K17 [math.min]
      197 CALL                             R20 2 1
      198 MOVE                             R8 R20
      199 FASTCALL2                        MATH_MAX R9 R19 ; [+5]
      201 MOVE                             R21 R9
      202 MOVE                             R22 R19
      203 GETIMPORT                        R20 K19 [math.max]
      205 CALL                             R20 2 1
      206 MOVE                             R9 R20
      207 FORGLOOP                         R11 2 [inext] ; [-60]
      209 LOADK                            R13 K12 [0.5]
      210 ADD                              R14 R4 R5
      211 MUL                              R12 R13 R14
      212 LOADK                            R14 K12 [0.5]
      213 ADD                              R15 R6 R7
      214 MUL                              R13 R14 R15
      215 LOADK                            R15 K12 [0.5]
      216 ADD                              R16 R8 R9
      217 MUL                              R14 R15 R16
      218 FASTCALL                         VECTOR ; [+2]
      219 GETIMPORT                        R11 K24 [Vector3.new]
      221 CALL                             R11 3 1
      222 SUB                              R13 R5 R4
      223 SUB                              R14 R7 R6
      224 SUB                              R15 R9 R8
      225 FASTCALL                         VECTOR ; [+2]
      226 GETIMPORT                        R12 K24 [Vector3.new]
      228 CALL                             R12 3 1
      229 RETURN                           R11 2

PROTO_1:
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
       21 GETUPVAL                         R19 0
       22 GETTABLEKS                       R19 R19 K6 ["Terrain"]
       24 GETIMPORT                        R20 K8 [ipairs]
       26 MOVE                             R21 R1
       27 CALL                             R20 1 3
       28 FORGPREP_INEXT                   R20
       29 JUMPIFEQ                         R24 R19 ; [+246]
       31 GETTABLEKS                       R25 R24 K9 ["CFrame"]
       33 GETTABLEKS                       R26 R24 K10 ["Size"]
       35 GETTABLEKS                       R27 R26 K0 ["X"]
       37 GETTABLEKS                       R28 R26 K1 ["Y"]
       39 GETTABLEKS                       R29 R26 K2 ["Z"]
       41 MUL                              R30 R6 R25
       42 NAMECALL                         R31 R30 K11 ["components"]
       44 CALL                             R31 1 12
       45 MUL                              R47 R27 R34
       46 FASTCALL1                        MATH_ABS R47 ; [+2]
       47 GETIMPORT                        R46 K15 [math.abs]
       49 CALL                             R46 1 1
       50 MUL                              R48 R28 R35
       51 FASTCALL1                        MATH_ABS R48 ; [+2]
       52 GETIMPORT                        R47 K15 [math.abs]
       54 CALL                             R47 1 1
       55 ADD                              R45 R46 R47
       56 MUL                              R47 R29 R36
       57 FASTCALL1                        MATH_ABS R47 ; [+2]
       58 GETIMPORT                        R46 K15 [math.abs]
       60 CALL                             R46 1 1
       61 ADD                              R44 R45 R46
       62 MULK                             R43 R44 K12 [0.5]
       63 MUL                              R48 R27 R37
       64 FASTCALL1                        MATH_ABS R48 ; [+2]
       65 GETIMPORT                        R47 K15 [math.abs]
       67 CALL                             R47 1 1
       68 MUL                              R49 R28 R38
       69 FASTCALL1                        MATH_ABS R49 ; [+2]
       70 GETIMPORT                        R48 K15 [math.abs]
       72 CALL                             R48 1 1
       73 ADD                              R46 R47 R48
       74 MUL                              R48 R29 R39
       75 FASTCALL1                        MATH_ABS R48 ; [+2]
       76 GETIMPORT                        R47 K15 [math.abs]
       78 CALL                             R47 1 1
       79 ADD                              R45 R46 R47
       80 MULK                             R44 R45 K12 [0.5]
       81 MUL                              R49 R27 R40
       82 FASTCALL1                        MATH_ABS R49 ; [+2]
       83 GETIMPORT                        R48 K15 [math.abs]
       85 CALL                             R48 1 1
       86 MUL                              R50 R28 R41
       87 FASTCALL1                        MATH_ABS R50 ; [+2]
       88 GETIMPORT                        R49 K15 [math.abs]
       90 CALL                             R49 1 1
       91 ADD                              R47 R48 R49
       92 MUL                              R49 R29 R42
       93 FASTCALL1                        MATH_ABS R49 ; [+2]
       94 GETIMPORT                        R48 K15 [math.abs]
       96 CALL                             R48 1 1
       97 ADD                              R46 R47 R48
       98 MULK                             R45 R46 K12 [0.5]
       99 GETTABLEKS                       R46 R30 K0 ["X"]
      101 GETTABLEKS                       R47 R30 K1 ["Y"]
      103 GETTABLEKS                       R48 R30 K2 ["Z"]
      105 SUB                              R51 R46 R43
      106 FASTCALL2                        MATH_MIN R7 R51 ; [+4]
      108 MOVE                             R50 R7
      109 GETIMPORT                        R49 K17 [math.min]
      111 CALL                             R49 2 1
      112 MOVE                             R7 R49
      113 ADD                              R51 R46 R43
      114 FASTCALL2                        MATH_MAX R8 R51 ; [+4]
      116 MOVE                             R50 R8
      117 GETIMPORT                        R49 K19 [math.max]
      119 CALL                             R49 2 1
      120 MOVE                             R8 R49
      121 SUB                              R51 R47 R44
      122 FASTCALL2                        MATH_MIN R9 R51 ; [+4]
      124 MOVE                             R50 R9
      125 GETIMPORT                        R49 K17 [math.min]
      127 CALL                             R49 2 1
      128 MOVE                             R9 R49
      129 ADD                              R51 R47 R44
      130 FASTCALL2                        MATH_MAX R10 R51 ; [+4]
      132 MOVE                             R50 R10
      133 GETIMPORT                        R49 K19 [math.max]
      135 CALL                             R49 2 1
      136 MOVE                             R10 R49
      137 SUB                              R51 R48 R45
      138 FASTCALL2                        MATH_MIN R11 R51 ; [+4]
      140 MOVE                             R50 R11
      141 GETIMPORT                        R49 K17 [math.min]
      143 CALL                             R49 2 1
      144 MOVE                             R11 R49
      145 ADD                              R51 R48 R45
      146 FASTCALL2                        MATH_MAX R12 R51 ; [+4]
      148 MOVE                             R50 R12
      149 GETIMPORT                        R49 K19 [math.max]
      151 CALL                             R49 2 1
      152 MOVE                             R12 R49
      153 NAMECALL                         R49 R25 K11 ["components"]
      155 CALL                             R49 1 12
      156 MOVE                             R33 R49
      157 MOVE                             R33 R50
      158 MOVE                             R33 R51
      159 MOVE                             R34 R52
      160 MOVE                             R35 R53
      161 MOVE                             R36 R54
      162 MOVE                             R37 R55
      163 MOVE                             R38 R56
      164 MOVE                             R39 R57
      165 MOVE                             R40 R58
      166 MOVE                             R41 R59
      167 MOVE                             R42 R60
      168 MUL                              R53 R27 R34
      169 FASTCALL1                        MATH_ABS R53 ; [+2]
      170 GETIMPORT                        R52 K15 [math.abs]
      172 CALL                             R52 1 1
      173 MUL                              R54 R28 R35
      174 FASTCALL1                        MATH_ABS R54 ; [+2]
      175 GETIMPORT                        R53 K15 [math.abs]
      177 CALL                             R53 1 1
      178 ADD                              R51 R52 R53
      179 MUL                              R53 R29 R36
      180 FASTCALL1                        MATH_ABS R53 ; [+2]
      181 GETIMPORT                        R52 K15 [math.abs]
      183 CALL                             R52 1 1
      184 ADD                              R50 R51 R52
      185 MULK                             R49 R50 K12 [0.5]
      186 MUL                              R54 R27 R37
      187 FASTCALL1                        MATH_ABS R54 ; [+2]
      188 GETIMPORT                        R53 K15 [math.abs]
      190 CALL                             R53 1 1
      191 MUL                              R55 R28 R38
      192 FASTCALL1                        MATH_ABS R55 ; [+2]
      193 GETIMPORT                        R54 K15 [math.abs]
      195 CALL                             R54 1 1
      196 ADD                              R52 R53 R54
      197 MUL                              R54 R29 R39
      198 FASTCALL1                        MATH_ABS R54 ; [+2]
      199 GETIMPORT                        R53 K15 [math.abs]
      201 CALL                             R53 1 1
      202 ADD                              R51 R52 R53
      203 MULK                             R50 R51 K12 [0.5]
      204 MUL                              R55 R27 R40
      205 FASTCALL1                        MATH_ABS R55 ; [+2]
      206 GETIMPORT                        R54 K15 [math.abs]
      208 CALL                             R54 1 1
      209 MUL                              R56 R28 R41
      210 FASTCALL1                        MATH_ABS R56 ; [+2]
      211 GETIMPORT                        R55 K15 [math.abs]
      213 CALL                             R55 1 1
      214 ADD                              R53 R54 R55
      215 MUL                              R55 R29 R42
      216 FASTCALL1                        MATH_ABS R55 ; [+2]
      217 GETIMPORT                        R54 K15 [math.abs]
      219 CALL                             R54 1 1
      220 ADD                              R52 R53 R54
      221 MULK                             R51 R52 K12 [0.5]
      222 GETTABLEKS                       R52 R25 K0 ["X"]
      224 GETTABLEKS                       R53 R25 K1 ["Y"]
      226 GETTABLEKS                       R54 R25 K2 ["Z"]
      228 SUB                              R57 R52 R49
      229 FASTCALL2                        MATH_MIN R13 R57 ; [+4]
      231 MOVE                             R56 R13
      232 GETIMPORT                        R55 K17 [math.min]
      234 CALL                             R55 2 1
      235 MOVE                             R13 R55
      236 ADD                              R57 R52 R49
      237 FASTCALL2                        MATH_MAX R14 R57 ; [+4]
      239 MOVE                             R56 R14
      240 GETIMPORT                        R55 K19 [math.max]
      242 CALL                             R55 2 1
      243 MOVE                             R14 R55
      244 SUB                              R57 R53 R50
      245 FASTCALL2                        MATH_MIN R15 R57 ; [+4]
      247 MOVE                             R56 R15
      248 GETIMPORT                        R55 K17 [math.min]
      250 CALL                             R55 2 1
      251 MOVE                             R15 R55
      252 ADD                              R57 R53 R50
      253 FASTCALL2                        MATH_MAX R16 R57 ; [+4]
      255 MOVE                             R56 R16
      256 GETIMPORT                        R55 K19 [math.max]
      258 CALL                             R55 2 1
      259 MOVE                             R16 R55
      260 SUB                              R57 R54 R51
      261 FASTCALL2                        MATH_MIN R17 R57 ; [+4]
      263 MOVE                             R56 R17
      264 GETIMPORT                        R55 K17 [math.min]
      266 CALL                             R55 2 1
      267 MOVE                             R17 R55
      268 ADD                              R57 R54 R51
      269 FASTCALL2                        MATH_MAX R18 R57 ; [+4]
      271 MOVE                             R56 R18
      272 GETIMPORT                        R55 K19 [math.max]
      274 CALL                             R55 2 1
      275 MOVE                             R18 R55
      276 FORGLOOP                         R20 2 [inext] ; [-248]
      278 GETIMPORT                        R20 K8 [ipairs]
      280 MOVE                             R21 R2
      281 CALL                             R20 1 3
      282 FORGPREP_INEXT                   R20
      283 GETTABLEKS                       R25 R24 K20 ["WorldPosition"]
      285 MUL                              R26 R6 R25
      286 GETTABLEKS                       R27 R26 K0 ["X"]
      288 GETTABLEKS                       R28 R26 K1 ["Y"]
      290 GETTABLEKS                       R29 R26 K2 ["Z"]
      292 FASTCALL2                        MATH_MIN R7 R27 ; [+5]
      294 MOVE                             R31 R7
      295 MOVE                             R32 R27
      296 GETIMPORT                        R30 K17 [math.min]
      298 CALL                             R30 2 1
      299 MOVE                             R7 R30
      300 FASTCALL2                        MATH_MAX R8 R27 ; [+5]
      302 MOVE                             R31 R8
      303 MOVE                             R32 R27
      304 GETIMPORT                        R30 K19 [math.max]
      306 CALL                             R30 2 1
      307 MOVE                             R8 R30
      308 FASTCALL2                        MATH_MIN R9 R28 ; [+5]
      310 MOVE                             R31 R9
      311 MOVE                             R32 R28
      312 GETIMPORT                        R30 K17 [math.min]
      314 CALL                             R30 2 1
      315 MOVE                             R9 R30
      316 FASTCALL2                        MATH_MAX R10 R28 ; [+5]
      318 MOVE                             R31 R10
      319 MOVE                             R32 R28
      320 GETIMPORT                        R30 K19 [math.max]
      322 CALL                             R30 2 1
      323 MOVE                             R10 R30
      324 FASTCALL2                        MATH_MIN R11 R29 ; [+5]
      326 MOVE                             R31 R11
      327 MOVE                             R32 R29
      328 GETIMPORT                        R30 K17 [math.min]
      330 CALL                             R30 2 1
      331 MOVE                             R11 R30
      332 FASTCALL2                        MATH_MAX R12 R29 ; [+5]
      334 MOVE                             R31 R12
      335 MOVE                             R32 R29
      336 GETIMPORT                        R30 K19 [math.max]
      338 CALL                             R30 2 1
      339 MOVE                             R12 R30
      340 GETTABLEKS                       R30 R25 K0 ["X"]
      342 GETTABLEKS                       R31 R25 K1 ["Y"]
      344 GETTABLEKS                       R32 R25 K2 ["Z"]
      346 FASTCALL2                        MATH_MIN R13 R30 ; [+5]
      348 MOVE                             R34 R13
      349 MOVE                             R35 R30
      350 GETIMPORT                        R33 K17 [math.min]
      352 CALL                             R33 2 1
      353 MOVE                             R13 R33
      354 FASTCALL2                        MATH_MAX R14 R30 ; [+5]
      356 MOVE                             R34 R14
      357 MOVE                             R35 R30
      358 GETIMPORT                        R33 K19 [math.max]
      360 CALL                             R33 2 1
      361 MOVE                             R14 R33
      362 FASTCALL2                        MATH_MIN R15 R31 ; [+5]
      364 MOVE                             R34 R15
      365 MOVE                             R35 R31
      366 GETIMPORT                        R33 K17 [math.min]
      368 CALL                             R33 2 1
      369 MOVE                             R15 R33
      370 FASTCALL2                        MATH_MAX R16 R31 ; [+5]
      372 MOVE                             R34 R16
      373 MOVE                             R35 R31
      374 GETIMPORT                        R33 K19 [math.max]
      376 CALL                             R33 2 1
      377 MOVE                             R16 R33
      378 FASTCALL2                        MATH_MIN R17 R32 ; [+5]
      380 MOVE                             R34 R17
      381 MOVE                             R35 R32
      382 GETIMPORT                        R33 K17 [math.min]
      384 CALL                             R33 2 1
      385 MOVE                             R17 R33
      386 FASTCALL2                        MATH_MAX R18 R32 ; [+5]
      388 MOVE                             R34 R18
      389 MOVE                             R35 R32
      390 GETIMPORT                        R33 K19 [math.max]
      392 CALL                             R33 2 1
      393 MOVE                             R18 R33
      394 FORGLOOP                         R20 2 [inext] ; [-112]
      396 LOADK                            R22 K12 [0.5]
      397 ADD                              R23 R7 R8
      398 MUL                              R21 R22 R23
      399 LOADK                            R23 K12 [0.5]
      400 ADD                              R24 R9 R10
      401 MUL                              R22 R23 R24
      402 LOADK                            R24 K12 [0.5]
      403 ADD                              R25 R11 R12
      404 MUL                              R23 R24 R25
      405 FASTCALL                         VECTOR ; [+2]
      406 GETIMPORT                        R20 K23 [Vector3.new]
      408 CALL                             R20 3 1
      409 SUB                              R22 R8 R7
      410 SUB                              R23 R10 R9
      411 SUB                              R24 R12 R11
      412 FASTCALL                         VECTOR ; [+2]
      413 GETIMPORT                        R21 K23 [Vector3.new]
      415 CALL                             R21 3 1
      416 LOADK                            R25 K12 [0.5]
      417 ADD                              R26 R13 R14
      418 MUL                              R24 R25 R26
      419 SUB                              R23 R24 R3
      420 LOADK                            R26 K12 [0.5]
      421 ADD                              R27 R15 R16
      422 MUL                              R25 R26 R27
      423 SUB                              R24 R25 R4
      424 LOADK                            R27 K12 [0.5]
      425 ADD                              R28 R17 R18
      426 MUL                              R26 R27 R28
      427 SUB                              R25 R26 R5
      428 FASTCALL                         VECTOR ; [+2]
      429 GETIMPORT                        R22 K23 [Vector3.new]
      431 CALL                             R22 3 1
      432 SUB                              R24 R14 R13
      433 SUB                              R25 R16 R15
      434 SUB                              R26 R18 R17
      435 FASTCALL                         VECTOR ; [+2]
      436 GETIMPORT                        R23 K23 [Vector3.new]
      438 CALL                             R23 3 1
      439 RETURN                           R20 4

PROTO_2:
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
       15 GETTABLEKS                       R8 R8 K3 ["markBoneRecursive"]
       17 MOVE                             R9 R7
       18 MOVE                             R10 R1
       19 MOVE                             R11 R2
       20 CALL                             R8 3 0
       21 FORGLOOP                         R3 2 [inext] ; [-8]
       23 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [ipairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_INEXT                   R3
        9 GETTABLE                         R8 R2 R7
       10 JUMPIF                           R8 ; [+12]
       11 LOADK                            R10 K2 ["BasePart"]
       12 NAMECALL                         R8 R7 K3 ["FindFirstAncestorWhichIsA"]
       14 CALL                             R8 2 1
       15 SETTABLE                         R8 R1 R7
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K4 ["markBoneRecursive"]
       19 MOVE                             R9 R7
       20 MOVE                             R10 R2
       21 MOVE                             R11 R1
       22 CALL                             R8 3 0
       23 FORGLOOP                         R3 2 [inext] ; [-15]
       25 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R2 R0 K0 ["shouldUseLocalSpace"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K3 [table.create]
        5 LOADN                            R4 64
        6 CALL                             R3 1 1
        7 NEWTABLE                         R4 0 0
        9 NEWTABLE                         R5 0 0
       11 NEWTABLE                         R6 0 0
       13 NEWTABLE                         R7 0 0
       15 LOADNIL                          R8
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K4 ["Terrain"]
       19 GETIMPORT                        R10 K6 [ipairs]
       21 MOVE                             R11 R1
       22 CALL                             R10 1 3
       23 FORGPREP_INEXT                   R10
       24 LOADK                            R17 K7 ["Model"]
       25 NAMECALL                         R15 R14 K8 ["IsA"]
       27 CALL                             R15 2 1
       28 JUMPIFNOT                        R15 ; [+11]
       29 NAMECALL                         R15 R14 K9 ["GetBoundingBox"]
       31 CALL                             R15 1 2
       32 FASTCALL                         VECTOR ; [+2]
       33 GETIMPORT                        R17 K12 [Vector3.new]
       35 CALL                             R17 0 1
       36 JUMPIFEQ                         R16 R17 ; [+77]
       38 MOVE                             R8 R15
       39 JUMP                             ; [+74]
       40 LOADK                            R17 K13 ["BasePart"]
       41 NAMECALL                         R15 R14 K8 ["IsA"]
       43 CALL                             R15 2 1
       44 JUMPIFNOT                        R15 ; [+32]
       45 GETTABLE                         R15 R4 R14
       46 JUMPIF                           R15 ; [+67]
       47 JUMPIFEQ                         R14 R9 ; [+66]
       49 FASTCALL2                        TABLE_INSERT R3 R14 ; [+5]
       51 MOVE                             R16 R3
       52 MOVE                             R17 R14
       53 GETIMPORT                        R15 K15 [table.insert]
       55 CALL                             R15 2 0
       56 LOADB                            R15 1
       57 SETTABLE                         R15 R4 R14
       58 GETTABLEKS                       R8 R14 K16 ["CFrame"]
       60 LOADK                            R17 K17 ["BoneRef"]
       61 NAMECALL                         R15 R14 K18 ["FindFirstChild"]
       63 CALL                             R15 2 1
       64 JUMPIFNOT                        R15 ; [+49]
       65 GETTABLEKS                       R16 R15 K19 ["Value"]
       67 JUMPIFNOT                        R16 ; [+46]
       68 GETTABLEKS                       R18 R15 K19 ["Value"]
       70 FASTCALL2                        TABLE_INSERT R6 R18 ; [+4]
       72 MOVE                             R17 R6
       73 GETIMPORT                        R16 K15 [table.insert]
       75 CALL                             R16 2 0
       76 JUMP                             ; [+37]
       77 GETUPVAL                         R15 1
       78 MOVE                             R16 R14
       79 CALL                             R15 1 1
       80 JUMPIFNOT                        R15 ; [+8]
       81 FASTCALL2                        TABLE_INSERT R7 R14 ; [+5]
       83 MOVE                             R16 R7
       84 MOVE                             R17 R14
       85 GETIMPORT                        R15 K15 [table.insert]
       87 CALL                             R15 2 0
       88 JUMP                             ; [+25]
       89 LOADK                            R17 K20 ["Attachment"]
       90 NAMECALL                         R15 R14 K8 ["IsA"]
       92 CALL                             R15 2 1
       93 JUMPIFNOT                        R15 ; [+20]
       94 LOADK                            R17 K21 ["Bone"]
       95 NAMECALL                         R15 R14 K8 ["IsA"]
       97 CALL                             R15 2 1
       98 JUMPIFNOT                        R15 ; [+8]
       99 FASTCALL2                        TABLE_INSERT R6 R14 ; [+5]
      101 MOVE                             R16 R6
      102 MOVE                             R17 R14
      103 GETIMPORT                        R15 K15 [table.insert]
      105 CALL                             R15 2 0
      106 JUMP                             ; [+7]
      107 FASTCALL2                        TABLE_INSERT R5 R14 ; [+5]
      109 MOVE                             R16 R5
      110 MOVE                             R17 R14
      111 GETIMPORT                        R15 K15 [table.insert]
      113 CALL                             R15 2 0
      114 FORGLOOP                         R10 2 [inext] ; [-91]
      116 JUMPIF                           R8 ; [+20]
      117 LENGTH                           R10 R5
      118 LOADN                            R11 0
      119 JUMPIFNOTLT                      R11 R10 ; [+5]
      121 GETTABLEN                        R10 R5 1
      122 GETTABLEKS                       R8 R10 K22 ["WorldCFrame"]
      124 JUMP                             ; [+12]
      125 LENGTH                           R10 R6
      126 LOADN                            R11 0
      127 JUMPIFNOTLT                      R11 R10 ; [+5]
      129 GETTABLEN                        R10 R6 1
      130 GETTABLEKS                       R8 R10 K22 ["WorldCFrame"]
      132 JUMP                             ; [+4]
      133 GETIMPORT                        R10 K23 [CFrame.new]
      135 CALL                             R10 0 1
      136 MOVE                             R8 R10
      137 LENGTH                           R10 R1
      138 JUMPIFNOTEQKN                    R10 K24 [1] ; [+19]
      140 GETTABLEN                        R10 R1 1
      141 LOADK                            R12 K13 ["BasePart"]
      142 NAMECALL                         R10 R10 K8 ["IsA"]
      144 CALL                             R10 2 1
      145 JUMPIF                           R10 ; [+6]
      146 GETTABLEN                        R10 R1 1
      147 LOADK                            R12 K7 ["Model"]
      148 NAMECALL                         R10 R10 K8 ["IsA"]
      150 CALL                             R10 2 1
      151 JUMPIFNOT                        R10 ; [+6]
      152 GETTABLEN                        R10 R1 1
      153 NAMECALL                         R10 R10 K25 ["GetPivot"]
      155 CALL                             R10 1 1
      156 JUMPIFNOT                        R10 ; [+1]
      157 MOVE                             R8 R10
      158 NEWTABLE                         R10 0 0
      160 GETIMPORT                        R11 K6 [ipairs]
      162 MOVE                             R12 R5
      163 CALL                             R11 1 3
      164 FORGPREP_INEXT                   R11
      165 GETTABLEKS                       R17 R15 K26 ["Parent"]
      167 GETTABLE                         R16 R4 R17
      168 JUMPIF                           R16 ; [+7]
      169 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
      171 MOVE                             R17 R10
      172 MOVE                             R18 R15
      173 GETIMPORT                        R16 K15 [table.insert]
      175 CALL                             R16 2 0
      176 FORGLOOP                         R11 2 [inext] ; [-12]
      178 GETUPVAL                         R11 2
      179 GETTABLEKS                       R11 R11 K27 ["findRootBoneMap"]
      181 MOVE                             R12 R6
      182 CALL                             R11 1 1
      183 GETIMPORT                        R12 K29 [pairs]
      185 MOVE                             R13 R11
      186 CALL                             R12 1 3
      187 FORGPREP_NEXT                    R12
      188 GETTABLE                         R17 R4 R16
      189 JUMPIF                           R17 ; [+7]
      190 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
      192 MOVE                             R18 R10
      193 MOVE                             R19 R15
      194 GETIMPORT                        R17 K15 [table.insert]
      196 CALL                             R17 2 0
      197 FORGLOOP                         R12 2 ; [-10]
      199 GETIMPORT                        R12 K6 [ipairs]
      201 MOVE                             R13 R6
      202 CALL                             R12 1 3
      203 FORGPREP_INEXT                   R12
      204 FASTCALL2                        TABLE_INSERT R5 R16 ; [+5]
      206 MOVE                             R18 R5
      207 MOVE                             R19 R16
      208 GETIMPORT                        R17 K15 [table.insert]
      210 CALL                             R17 2 0
      211 FORGLOOP                         R12 2 [inext] ; [-8]
      213 MOVE                             R12 R8
      214 LOADNIL                          R13
      215 LOADNIL                          R14
      216 LOADNIL                          R15
      217 LOADNIL                          R16
      218 LOADNIL                          R17
      219 JUMPIFNOT                        R2 ; [+13]
      220 GETUPVAL                         R18 2
      221 GETTABLEKS                       R18 R18 K30 ["computeBoundingBox"]
      223 MOVE                             R19 R12
      224 MOVE                             R20 R3
      225 MOVE                             R21 R5
      226 CALL                             R18 3 2
      227 MOVE                             R13 R18
      228 MOVE                             R14 R19
      229 MOVE                             R15 R12
      230 MOVE                             R16 R13
      231 MOVE                             R17 R14
      232 JUMP                             ; [+17]
      233 GETUPVAL                         R18 2
      234 GETTABLEKS                       R18 R18 K31 ["computeTwoBoundingBoxes"]
      236 MOVE                             R19 R12
      237 MOVE                             R20 R3
      238 MOVE                             R21 R5
      239 CALL                             R18 3 4
      240 MOVE                             R13 R18
      241 MOVE                             R14 R19
      242 MOVE                             R16 R20
      243 MOVE                             R17 R21
      244 GETIMPORT                        R18 K23 [CFrame.new]
      246 GETTABLEKS                       R19 R8 K32 ["Position"]
      248 CALL                             R18 1 1
      249 MOVE                             R15 R18
      250 DUPTABLE                         R18 K46 [{"basisCFrame", "boundingBoxSize", "boundingBoxOffset", "localBasisCFrame", "localBoundingBoxSize", "localBoundingBoxOffset", "parts", "partSet", "attachments", "allAttachments", "bones", "instancesWithConfigurableFace", "draggerContext"}]
      251 SETTABLEKS                       R15 R18 K33 ["basisCFrame"]
      253 SETTABLEKS                       R17 R18 K34 ["boundingBoxSize"]
      255 SETTABLEKS                       R16 R18 K35 ["boundingBoxOffset"]
      257 SETTABLEKS                       R12 R18 K36 ["localBasisCFrame"]
      259 SETTABLEKS                       R14 R18 K37 ["localBoundingBoxSize"]
      261 SETTABLEKS                       R13 R18 K38 ["localBoundingBoxOffset"]
      263 SETTABLEKS                       R3 R18 K39 ["parts"]
      265 SETTABLEKS                       R4 R18 K40 ["partSet"]
      267 SETTABLEKS                       R10 R18 K41 ["attachments"]
      269 SETTABLEKS                       R5 R18 K42 ["allAttachments"]
      271 SETTABLEKS                       R6 R18 K43 ["bones"]
      273 SETTABLEKS                       R7 R18 K44 ["instancesWithConfigurableFace"]
      275 SETTABLEKS                       R0 R18 K45 ["draggerContext"]
      277 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["DraggerFramework"]
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R2 K12 ["Utility"]
       21 GETTABLEKS                       R4 R4 K13 ["shouldDragAsFace"]
       23 CALL                             R3 1 1
       24 NEWTABLE                         R4 8 0
       26 DUPCLOSURE                       R5 K14 [PROTO_0]
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R5 R4 K15 ["computeBoundingBox"]
       30 DUPCLOSURE                       R5 K16 [PROTO_1]
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R5 R4 K17 ["computeTwoBoundingBoxes"]
       34 DUPCLOSURE                       R5 K18 [PROTO_2]
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R5 R4 K19 ["markBoneRecursive"]
       38 DUPCLOSURE                       R5 K20 [PROTO_3]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R5 R4 K21 ["findRootBoneMap"]
       42 DUPCLOSURE                       R5 K22 [PROTO_4]
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R5 R4 K23 ["computeInfo"]
       48 RETURN                           R4 1
