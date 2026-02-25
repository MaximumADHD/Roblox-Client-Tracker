PROTO_0:
        0 LOADNIL                          R3
        1 LOADK                            R4 K0 [9000000000]
        2 LOADN                            R7 1
        3 LENGTH                           R5 R2
        4 LOADN                            R6 1
        5 FORNPREP                         R5
        6 GETTABLE                         R9 R2 R7
        7 GETTABLEN                        R8 R9 2
        8 JUMPIFNOTEQ                      R8 R1 ; [+15]
       10 GETTABLE                         R11 R2 R7
       11 GETTABLEN                        R10 R11 1
       12 SUB                              R9 R0 R10
       13 FASTCALL1                        MATH_ABS R9 ; [+2]
       14 GETIMPORT                        R8 K3 [math.abs]
       16 CALL                             R8 1 1
       17 JUMPIFNOTLT                      R8 R4 ; [+7]
       19 MOVE                             R4 R8
       20 GETTABLE                         R9 R2 R7
       21 GETTABLEN                        R3 R9 1
       22 JUMP                             ; [+1]
       23 RETURN                           R3 1
       24 FORNLOOP                         R5
       25 RETURN                           R3 1

PROTO_1:
        0 GETTABLE                         R3 R2 R0
        1 JUMPIFEQKNIL                     R3 ; [+2]
        3 RETURN                           R0 0
        4 LOADB                            R3 1
        5 SETTABLE                         R3 R2 R0
        6 GETUPVAL                         R3 0
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 NAMECALL                         R3 R3 K0 ["removeItemFromTable"]
       11 CALL                             R3 3 1
       12 JUMPIFNOT                        R3 ; [+1]
       13 JUMPBACK                         ; [-8]
       14 NAMECALL                         R3 R0 K1 ["GetChildren"]
       16 CALL                             R3 1 1
       17 LOADN                            R6 1
       18 LENGTH                           R4 R3
       19 LOADN                            R5 1
       20 FORNPREP                         R4
       21 GETUPVAL                         R7 1
       22 GETTABLE                         R8 R3 R6
       23 MOVE                             R9 R1
       24 MOVE                             R10 R2
       25 CALL                             R7 3 0
       26 FORNLOOP                         R4
       27 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 SETUPVAL                         R1 0
        3 NEWTABLE                         R1 0 0
        5 SETUPVAL                         R1 1
        6 GETUPVAL                         R1 2
        7 NAMECALL                         R1 R1 K0 ["getFilteredSelection"]
        9 CALL                             R1 1 1
       10 LENGTH                           R2 R1
       11 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 3
       15 NAMECALL                         R2 R2 K2 ["getGuiObjects"]
       17 CALL                             R2 1 1
       18 LENGTH                           R3 R2
       19 LOADN                            R4 0
       20 JUMPIFNOTLT                      R4 R3 ; [+33]
       22 NEWTABLE                         R3 0 0
       24 LOADN                            R6 1
       25 LENGTH                           R4 R1
       26 LOADN                            R5 1
       27 FORNPREP                         R4
       28 GETUPVAL                         R7 4
       29 GETTABLE                         R8 R1 R6
       30 MOVE                             R9 R2
       31 MOVE                             R10 R3
       32 CALL                             R7 3 0
       33 FORNLOOP                         R4
       34 LOADN                            R6 1
       35 LENGTH                           R4 R2
       36 LOADN                            R5 1
       37 FORNPREP                         R4
       38 GETUPVAL                         R7 5
       39 GETTABLE                         R9 R2 R6
       40 NAMECALL                         R7 R7 K3 ["getExtentsFromGui"]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R9 0
       44 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       46 MOVE                             R10 R7
       47 GETIMPORT                        R8 K6 [table.insert]
       49 CALL                             R8 2 0
       50 GETUPVAL                         R8 1
       51 GETTABLE                         R9 R2 R6
       52 SETTABLE                         R9 R8 R7
       53 FORNLOOP                         R4
       54 GETUPVAL                         R4 0
       55 GETUPVAL                         R6 5
       56 GETTABLEKS                       R5 R6 K7 ["new"]
       58 GETIMPORT                        R6 K9 [Vector2.new]
       60 LOADN                            R7 0
       61 LOADN                            R8 0
       62 CALL                             R6 2 1
       63 GETUPVAL                         R7 6
       64 NAMECALL                         R7 R7 K10 ["getScreenSize"]
       66 CALL                             R7 1 -1
       67 CALL                             R5 -1 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R3 K6 [table.insert]
       71 CALL                             R3 -1 0
       72 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 1
        1 ADDK                             R0 R1 K0 [1]
        2 SETUPVAL                         R0 0
        3 LOADN                            R0 0
        4 SETUPVAL                         R0 2
        5 NEWTABLE                         R0 0 0
        7 SETUPVAL                         R0 3
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R0
        2 MOVE                             R8 R1
        3 NAMECALL                         R5 R5 K0 ["distance"]
        5 CALL                             R5 3 1
        6 SUB                              R6 R1 R0
        7 GETUPVAL                         R7 1
        8 JUMPIFNOTLT                      R5 R7 ; [+20]
       10 NEWTABLE                         R7 0 0
       12 SETUPVAL                         R7 2
       13 SETUPVAL                         R5 1
       14 SETUPVAL                         R6 3
       15 GETUPVAL                         R8 2
       16 NEWTABLE                         R9 0 3
       18 MOVE                             R10 R2
       19 MOVE                             R11 R3
       20 MOVE                             R12 R4
       21 SETLIST                          R9 R10 3 [1]
       23 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       25 GETIMPORT                        R7 K3 [table.insert]
       27 CALL                             R7 2 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R7 1
       30 JUMPIFNOTEQ                      R5 R7 ; [+17]
       32 GETUPVAL                         R7 3
       33 JUMPIFNOTEQ                      R6 R7 ; [+14]
       35 GETUPVAL                         R8 2
       36 NEWTABLE                         R9 0 3
       38 MOVE                             R10 R2
       39 MOVE                             R11 R3
       40 MOVE                             R12 R4
       41 SETLIST                          R9 R10 3 [1]
       43 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       45 GETIMPORT                        R7 K3 [table.insert]
       47 CALL                             R7 2 0
       48 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["canSeeThrough"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 LOADN                            R3 1
        9 GETUPVAL                         R4 1
       10 LENGTH                           R1 R4
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 GETUPVAL                         R5 1
       14 GETTABLE                         R4 R5 R3
       15 JUMPIFNOTEQ                      R0 R4 ; [+3]
       17 LOADB                            R4 1
       18 RETURN                           R4 1
       19 FORNLOOP                         R1
       20 LOADB                            R1 0
       21 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["cloneTable"]
        4 CALL                             R3 2 1
        5 MOVE                             R1 R3
        6 NEWTABLE                         R3 0 0
        8 LOADB                            R4 0
        9 LOADB                            R5 0
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 NEWTABLE                         R8 0 0
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          REF R6
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          REF R7
       18 CAPTURE                          REF R8
       19 NEWCLOSURE                       R10 P1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          REF R6
       22 CAPTURE                          REF R8
       23 CAPTURE                          REF R7
       24 GETUPVAL                         R12 2
       25 LENGTH                           R11 R12
       26 LOADN                            R12 0
       27 JUMPIFNOTLT                      R12 R11 ; [+30]
       29 GETUPVAL                         R11 3
       30 NAMECALL                         R11 R11 K1 ["getFilteredSelection"]
       32 CALL                             R11 1 1
       33 NEWCLOSURE                       R12 P2
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R11
       36 LOADN                            R15 1
       37 GETUPVAL                         R16 5
       38 LENGTH                           R13 R16
       39 LOADN                            R14 1
       40 FORNPREP                         R13
       41 GETUPVAL                         R17 2
       42 GETUPVAL                         R19 5
       43 GETTABLE                         R18 R19 R15
       44 GETTABLE                         R16 R17 R18
       45 JUMPIFEQKNIL                     R16 ; [+8]
       47 GETUPVAL                         R18 5
       48 GETTABLE                         R17 R18 R15
       49 MOVE                             R19 R16
       50 MOVE                             R20 R12
       51 NAMECALL                         R17 R17 K2 ["refreshVisibility"]
       53 CALL                             R17 3 0
       54 FORNLOOP                         R13
       55 NEWTABLE                         R13 0 0
       57 SETUPVAL                         R13 2
       58 GETUPVAL                         R11 6
       59 MOVE                             R13 R2
       60 GETUPVAL                         R15 6
       61 GETTABLEKS                       R14 R15 K3 ["MoveX"]
       63 NAMECALL                         R11 R11 K4 ["containsType"]
       65 CALL                             R11 3 1
       66 JUMPIFNOT                        R11 ; [+291]
       67 GETUPVAL                         R11 1
       68 ADDK                             R6 R11 K5 [1]
       69 LOADN                            R7 0
       70 NEWTABLE                         R8 0 0
       72 LOADN                            R13 1
       73 GETUPVAL                         R14 5
       74 LENGTH                           R11 R14
       75 LOADN                            R12 1
       76 FORNPREP                         R11
       77 GETUPVAL                         R16 5
       78 GETTABLE                         R15 R16 R13
       79 GETTABLEKS                       R14 R15 K6 ["LeftVisible"]
       81 JUMPIFNOT                        R14 ; [+94]
       82 MOVE                             R14 R10
       83 GETTABLEKS                       R15 R1 K7 ["Left"]
       85 GETUPVAL                         R18 5
       86 GETTABLE                         R17 R18 R13
       87 GETTABLEKS                       R16 R17 K7 ["Left"]
       89 GETIMPORT                        R17 K10 [Vector2.new]
       91 GETUPVAL                         R20 5
       92 GETTABLE                         R19 R20 R13
       93 GETTABLEKS                       R18 R19 K7 ["Left"]
       95 GETTABLEKS                       R21 R1 K12 ["Top"]
       97 GETUPVAL                         R24 5
       98 GETTABLE                         R23 R24 R13
       99 GETTABLEKS                       R22 R23 K12 ["Top"]
      101 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      103 GETIMPORT                        R20 K15 [math.min]
      105 CALL                             R20 2 1
      106 SUBK                             R19 R20 K11 [10]
      107 CALL                             R17 2 1
      108 GETIMPORT                        R18 K10 [Vector2.new]
      110 GETUPVAL                         R21 5
      111 GETTABLE                         R20 R21 R13
      112 GETTABLEKS                       R19 R20 K7 ["Left"]
      114 GETTABLEKS                       R22 R1 K16 ["Bottom"]
      116 GETUPVAL                         R25 5
      117 GETTABLE                         R24 R25 R13
      118 GETTABLEKS                       R23 R24 K16 ["Bottom"]
      120 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      122 GETIMPORT                        R21 K18 [math.max]
      124 CALL                             R21 2 1
      125 ADDK                             R20 R21 K11 [10]
      126 CALL                             R18 2 1
      127 GETUPVAL                         R19 7
      128 CALL                             R14 5 0
      129 MOVE                             R14 R10
      130 GETTABLEKS                       R15 R1 K19 ["Right"]
      132 GETUPVAL                         R18 5
      133 GETTABLE                         R17 R18 R13
      134 GETTABLEKS                       R16 R17 K7 ["Left"]
      136 GETIMPORT                        R17 K10 [Vector2.new]
      138 GETUPVAL                         R20 5
      139 GETTABLE                         R19 R20 R13
      140 GETTABLEKS                       R18 R19 K7 ["Left"]
      142 GETTABLEKS                       R21 R1 K12 ["Top"]
      144 GETUPVAL                         R24 5
      145 GETTABLE                         R23 R24 R13
      146 GETTABLEKS                       R22 R23 K12 ["Top"]
      148 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      150 GETIMPORT                        R20 K15 [math.min]
      152 CALL                             R20 2 1
      153 SUBK                             R19 R20 K11 [10]
      154 CALL                             R17 2 1
      155 GETIMPORT                        R18 K10 [Vector2.new]
      157 GETUPVAL                         R21 5
      158 GETTABLE                         R20 R21 R13
      159 GETTABLEKS                       R19 R20 K7 ["Left"]
      161 GETTABLEKS                       R22 R1 K16 ["Bottom"]
      163 GETUPVAL                         R25 5
      164 GETTABLE                         R24 R25 R13
      165 GETTABLEKS                       R23 R24 K16 ["Bottom"]
      167 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      169 GETIMPORT                        R21 K18 [math.max]
      171 CALL                             R21 2 1
      172 ADDK                             R20 R21 K11 [10]
      173 CALL                             R18 2 1
      174 GETUPVAL                         R19 7
      175 CALL                             R14 5 0
      176 GETUPVAL                         R16 5
      177 GETTABLE                         R15 R16 R13
      178 GETTABLEKS                       R14 R15 K20 ["RightVisible"]
      180 JUMPIFNOT                        R14 ; [+94]
      181 MOVE                             R14 R10
      182 GETTABLEKS                       R15 R1 K7 ["Left"]
      184 GETUPVAL                         R18 5
      185 GETTABLE                         R17 R18 R13
      186 GETTABLEKS                       R16 R17 K19 ["Right"]
      188 GETIMPORT                        R17 K10 [Vector2.new]
      190 GETUPVAL                         R20 5
      191 GETTABLE                         R19 R20 R13
      192 GETTABLEKS                       R18 R19 K19 ["Right"]
      194 GETTABLEKS                       R21 R1 K12 ["Top"]
      196 GETUPVAL                         R24 5
      197 GETTABLE                         R23 R24 R13
      198 GETTABLEKS                       R22 R23 K12 ["Top"]
      200 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      202 GETIMPORT                        R20 K15 [math.min]
      204 CALL                             R20 2 1
      205 SUBK                             R19 R20 K11 [10]
      206 CALL                             R17 2 1
      207 GETIMPORT                        R18 K10 [Vector2.new]
      209 GETUPVAL                         R21 5
      210 GETTABLE                         R20 R21 R13
      211 GETTABLEKS                       R19 R20 K19 ["Right"]
      213 GETTABLEKS                       R22 R1 K16 ["Bottom"]
      215 GETUPVAL                         R25 5
      216 GETTABLE                         R24 R25 R13
      217 GETTABLEKS                       R23 R24 K16 ["Bottom"]
      219 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      221 GETIMPORT                        R21 K18 [math.max]
      223 CALL                             R21 2 1
      224 ADDK                             R20 R21 K11 [10]
      225 CALL                             R18 2 1
      226 GETUPVAL                         R19 7
      227 CALL                             R14 5 0
      228 MOVE                             R14 R10
      229 GETTABLEKS                       R15 R1 K19 ["Right"]
      231 GETUPVAL                         R18 5
      232 GETTABLE                         R17 R18 R13
      233 GETTABLEKS                       R16 R17 K19 ["Right"]
      235 GETIMPORT                        R17 K10 [Vector2.new]
      237 GETUPVAL                         R20 5
      238 GETTABLE                         R19 R20 R13
      239 GETTABLEKS                       R18 R19 K19 ["Right"]
      241 GETTABLEKS                       R21 R1 K12 ["Top"]
      243 GETUPVAL                         R24 5
      244 GETTABLE                         R23 R24 R13
      245 GETTABLEKS                       R22 R23 K12 ["Top"]
      247 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      249 GETIMPORT                        R20 K15 [math.min]
      251 CALL                             R20 2 1
      252 SUBK                             R19 R20 K11 [10]
      253 CALL                             R17 2 1
      254 GETIMPORT                        R18 K10 [Vector2.new]
      256 GETUPVAL                         R21 5
      257 GETTABLE                         R20 R21 R13
      258 GETTABLEKS                       R19 R20 K19 ["Right"]
      260 GETTABLEKS                       R22 R1 K16 ["Bottom"]
      262 GETUPVAL                         R25 5
      263 GETTABLE                         R24 R25 R13
      264 GETTABLEKS                       R23 R24 K16 ["Bottom"]
      266 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      268 GETIMPORT                        R21 K18 [math.max]
      270 CALL                             R21 2 1
      271 ADDK                             R20 R21 K11 [10]
      272 CALL                             R18 2 1
      273 GETUPVAL                         R19 7
      274 CALL                             R14 5 0
      275 GETUPVAL                         R16 5
      276 GETTABLE                         R15 R16 R13
      277 GETTABLEKS                       R14 R15 K21 ["CenterVisible"]
      279 JUMPIFNOT                        R14 ; [+55]
      280 MOVE                             R14 R10
      281 GETTABLEKS                       R16 R1 K22 ["Center"]
      283 GETTABLEKS                       R15 R16 K23 ["X"]
      285 GETUPVAL                         R19 5
      286 GETTABLE                         R18 R19 R13
      287 GETTABLEKS                       R17 R18 K22 ["Center"]
      289 GETTABLEKS                       R16 R17 K23 ["X"]
      291 GETIMPORT                        R17 K10 [Vector2.new]
      293 GETUPVAL                         R21 5
      294 GETTABLE                         R20 R21 R13
      295 GETTABLEKS                       R19 R20 K22 ["Center"]
      297 GETTABLEKS                       R18 R19 K23 ["X"]
      299 GETTABLEKS                       R21 R1 K12 ["Top"]
      301 GETUPVAL                         R24 5
      302 GETTABLE                         R23 R24 R13
      303 GETTABLEKS                       R22 R23 K12 ["Top"]
      305 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      307 GETIMPORT                        R20 K15 [math.min]
      309 CALL                             R20 2 1
      310 SUBK                             R19 R20 K11 [10]
      311 CALL                             R17 2 1
      312 GETIMPORT                        R18 K10 [Vector2.new]
      314 GETUPVAL                         R22 5
      315 GETTABLE                         R21 R22 R13
      316 GETTABLEKS                       R20 R21 K22 ["Center"]
      318 GETTABLEKS                       R19 R20 K23 ["X"]
      320 GETTABLEKS                       R22 R1 K16 ["Bottom"]
      322 GETUPVAL                         R25 5
      323 GETTABLE                         R24 R25 R13
      324 GETTABLEKS                       R23 R24 K16 ["Bottom"]
      326 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      328 GETIMPORT                        R21 K18 [math.max]
      330 CALL                             R21 2 1
      331 ADDK                             R20 R21 K11 [10]
      332 CALL                             R18 2 1
      333 GETUPVAL                         R19 8
      334 CALL                             R14 5 0
      335 FORNLOOP                         R11
      336 JUMPIFNOTEQKN                    R7 K24 [0] ; [+2]
      338 LOADB                            R4 0 +1
      339 LOADB                            R4 1
      340 GETUPVAL                         R11 9
      341 MOVE                             R13 R1
      342 GETIMPORT                        R14 K10 [Vector2.new]
      344 MOVE                             R15 R7
      345 LOADN                            R16 0
      346 CALL                             R14 2 -1
      347 NAMECALL                         R11 R11 K25 ["translate"]
      349 CALL                             R11 -1 1
      350 MOVE                             R1 R11
      351 GETUPVAL                         R11 0
      352 MOVE                             R13 R3
      353 MOVE                             R14 R8
      354 NAMECALL                         R11 R11 K26 ["joinTables"]
      356 CALL                             R11 3 1
      357 MOVE                             R3 R11
      358 GETUPVAL                         R11 6
      359 MOVE                             R13 R2
      360 GETUPVAL                         R15 6
      361 GETTABLEKS                       R14 R15 K27 ["MoveY"]
      363 NAMECALL                         R11 R11 K4 ["containsType"]
      365 CALL                             R11 3 1
      366 JUMPIFNOT                        R11 ; [+291]
      367 GETUPVAL                         R11 1
      368 ADDK                             R6 R11 K5 [1]
      369 LOADN                            R7 0
      370 NEWTABLE                         R8 0 0
      372 LOADN                            R13 1
      373 GETUPVAL                         R14 5
      374 LENGTH                           R11 R14
      375 LOADN                            R12 1
      376 FORNPREP                         R11
      377 GETUPVAL                         R16 5
      378 GETTABLE                         R15 R16 R13
      379 GETTABLEKS                       R14 R15 K28 ["TopVisible"]
      381 JUMPIFNOT                        R14 ; [+94]
      382 MOVE                             R14 R10
      383 GETTABLEKS                       R15 R1 K12 ["Top"]
      385 GETUPVAL                         R18 5
      386 GETTABLE                         R17 R18 R13
      387 GETTABLEKS                       R16 R17 K12 ["Top"]
      389 GETIMPORT                        R17 K10 [Vector2.new]
      391 GETTABLEKS                       R20 R1 K7 ["Left"]
      393 GETUPVAL                         R23 5
      394 GETTABLE                         R22 R23 R13
      395 GETTABLEKS                       R21 R22 K7 ["Left"]
      397 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
      399 GETIMPORT                        R19 K15 [math.min]
      401 CALL                             R19 2 1
      402 SUBK                             R18 R19 K11 [10]
      403 GETUPVAL                         R21 5
      404 GETTABLE                         R20 R21 R13
      405 GETTABLEKS                       R19 R20 K12 ["Top"]
      407 CALL                             R17 2 1
      408 GETIMPORT                        R18 K10 [Vector2.new]
      410 GETTABLEKS                       R21 R1 K19 ["Right"]
      412 GETUPVAL                         R24 5
      413 GETTABLE                         R23 R24 R13
      414 GETTABLEKS                       R22 R23 K19 ["Right"]
      416 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      418 GETIMPORT                        R20 K18 [math.max]
      420 CALL                             R20 2 1
      421 ADDK                             R19 R20 K11 [10]
      422 GETUPVAL                         R22 5
      423 GETTABLE                         R21 R22 R13
      424 GETTABLEKS                       R20 R21 K12 ["Top"]
      426 CALL                             R18 2 1
      427 GETUPVAL                         R19 7
      428 CALL                             R14 5 0
      429 MOVE                             R14 R10
      430 GETTABLEKS                       R15 R1 K16 ["Bottom"]
      432 GETUPVAL                         R18 5
      433 GETTABLE                         R17 R18 R13
      434 GETTABLEKS                       R16 R17 K12 ["Top"]
      436 GETIMPORT                        R17 K10 [Vector2.new]
      438 GETTABLEKS                       R20 R1 K7 ["Left"]
      440 GETUPVAL                         R23 5
      441 GETTABLE                         R22 R23 R13
      442 GETTABLEKS                       R21 R22 K7 ["Left"]
      444 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
      446 GETIMPORT                        R19 K15 [math.min]
      448 CALL                             R19 2 1
      449 SUBK                             R18 R19 K11 [10]
      450 GETUPVAL                         R21 5
      451 GETTABLE                         R20 R21 R13
      452 GETTABLEKS                       R19 R20 K12 ["Top"]
      454 CALL                             R17 2 1
      455 GETIMPORT                        R18 K10 [Vector2.new]
      457 GETTABLEKS                       R21 R1 K19 ["Right"]
      459 GETUPVAL                         R24 5
      460 GETTABLE                         R23 R24 R13
      461 GETTABLEKS                       R22 R23 K19 ["Right"]
      463 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      465 GETIMPORT                        R20 K18 [math.max]
      467 CALL                             R20 2 1
      468 ADDK                             R19 R20 K11 [10]
      469 GETUPVAL                         R22 5
      470 GETTABLE                         R21 R22 R13
      471 GETTABLEKS                       R20 R21 K12 ["Top"]
      473 CALL                             R18 2 1
      474 GETUPVAL                         R19 7
      475 CALL                             R14 5 0
      476 GETUPVAL                         R16 5
      477 GETTABLE                         R15 R16 R13
      478 GETTABLEKS                       R14 R15 K29 ["BottomVisible"]
      480 JUMPIFNOT                        R14 ; [+94]
      481 MOVE                             R14 R10
      482 GETTABLEKS                       R15 R1 K12 ["Top"]
      484 GETUPVAL                         R18 5
      485 GETTABLE                         R17 R18 R13
      486 GETTABLEKS                       R16 R17 K16 ["Bottom"]
      488 GETIMPORT                        R17 K10 [Vector2.new]
      490 GETTABLEKS                       R20 R1 K7 ["Left"]
      492 GETUPVAL                         R23 5
      493 GETTABLE                         R22 R23 R13
      494 GETTABLEKS                       R21 R22 K7 ["Left"]
      496 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
      498 GETIMPORT                        R19 K15 [math.min]
      500 CALL                             R19 2 1
      501 SUBK                             R18 R19 K11 [10]
      502 GETUPVAL                         R21 5
      503 GETTABLE                         R20 R21 R13
      504 GETTABLEKS                       R19 R20 K16 ["Bottom"]
      506 CALL                             R17 2 1
      507 GETIMPORT                        R18 K10 [Vector2.new]
      509 GETTABLEKS                       R21 R1 K19 ["Right"]
      511 GETUPVAL                         R24 5
      512 GETTABLE                         R23 R24 R13
      513 GETTABLEKS                       R22 R23 K19 ["Right"]
      515 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      517 GETIMPORT                        R20 K18 [math.max]
      519 CALL                             R20 2 1
      520 ADDK                             R19 R20 K11 [10]
      521 GETUPVAL                         R22 5
      522 GETTABLE                         R21 R22 R13
      523 GETTABLEKS                       R20 R21 K16 ["Bottom"]
      525 CALL                             R18 2 1
      526 GETUPVAL                         R19 7
      527 CALL                             R14 5 0
      528 MOVE                             R14 R10
      529 GETTABLEKS                       R15 R1 K16 ["Bottom"]
      531 GETUPVAL                         R18 5
      532 GETTABLE                         R17 R18 R13
      533 GETTABLEKS                       R16 R17 K16 ["Bottom"]
      535 GETIMPORT                        R17 K10 [Vector2.new]
      537 GETTABLEKS                       R20 R1 K7 ["Left"]
      539 GETUPVAL                         R23 5
      540 GETTABLE                         R22 R23 R13
      541 GETTABLEKS                       R21 R22 K7 ["Left"]
      543 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
      545 GETIMPORT                        R19 K15 [math.min]
      547 CALL                             R19 2 1
      548 SUBK                             R18 R19 K11 [10]
      549 GETUPVAL                         R21 5
      550 GETTABLE                         R20 R21 R13
      551 GETTABLEKS                       R19 R20 K16 ["Bottom"]
      553 CALL                             R17 2 1
      554 GETIMPORT                        R18 K10 [Vector2.new]
      556 GETTABLEKS                       R21 R1 K19 ["Right"]
      558 GETUPVAL                         R24 5
      559 GETTABLE                         R23 R24 R13
      560 GETTABLEKS                       R22 R23 K19 ["Right"]
      562 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      564 GETIMPORT                        R20 K18 [math.max]
      566 CALL                             R20 2 1
      567 ADDK                             R19 R20 K11 [10]
      568 GETUPVAL                         R22 5
      569 GETTABLE                         R21 R22 R13
      570 GETTABLEKS                       R20 R21 K16 ["Bottom"]
      572 CALL                             R18 2 1
      573 GETUPVAL                         R19 7
      574 CALL                             R14 5 0
      575 GETUPVAL                         R16 5
      576 GETTABLE                         R15 R16 R13
      577 GETTABLEKS                       R14 R15 K21 ["CenterVisible"]
      579 JUMPIFNOT                        R14 ; [+55]
      580 MOVE                             R14 R10
      581 GETTABLEKS                       R16 R1 K22 ["Center"]
      583 GETTABLEKS                       R15 R16 K30 ["Y"]
      585 GETUPVAL                         R19 5
      586 GETTABLE                         R18 R19 R13
      587 GETTABLEKS                       R17 R18 K22 ["Center"]
      589 GETTABLEKS                       R16 R17 K30 ["Y"]
      591 GETIMPORT                        R17 K10 [Vector2.new]
      593 GETTABLEKS                       R20 R1 K7 ["Left"]
      595 GETUPVAL                         R23 5
      596 GETTABLE                         R22 R23 R13
      597 GETTABLEKS                       R21 R22 K7 ["Left"]
      599 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
      601 GETIMPORT                        R19 K15 [math.min]
      603 CALL                             R19 2 1
      604 SUBK                             R18 R19 K11 [10]
      605 GETUPVAL                         R22 5
      606 GETTABLE                         R21 R22 R13
      607 GETTABLEKS                       R20 R21 K22 ["Center"]
      609 GETTABLEKS                       R19 R20 K30 ["Y"]
      611 CALL                             R17 2 1
      612 GETIMPORT                        R18 K10 [Vector2.new]
      614 GETTABLEKS                       R21 R1 K19 ["Right"]
      616 GETUPVAL                         R24 5
      617 GETTABLE                         R23 R24 R13
      618 GETTABLEKS                       R22 R23 K19 ["Right"]
      620 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      622 GETIMPORT                        R20 K18 [math.max]
      624 CALL                             R20 2 1
      625 ADDK                             R19 R20 K11 [10]
      626 GETUPVAL                         R23 5
      627 GETTABLE                         R22 R23 R13
      628 GETTABLEKS                       R21 R22 K22 ["Center"]
      630 GETTABLEKS                       R20 R21 K30 ["Y"]
      632 CALL                             R18 2 1
      633 GETUPVAL                         R19 8
      634 CALL                             R14 5 0
      635 FORNLOOP                         R11
      636 JUMPIFNOTEQKN                    R7 K24 [0] ; [+2]
      638 LOADB                            R5 0 +1
      639 LOADB                            R5 1
      640 GETUPVAL                         R11 9
      641 MOVE                             R13 R1
      642 GETIMPORT                        R14 K10 [Vector2.new]
      644 LOADN                            R15 0
      645 MOVE                             R16 R7
      646 CALL                             R14 2 -1
      647 NAMECALL                         R11 R11 K25 ["translate"]
      649 CALL                             R11 -1 1
      650 MOVE                             R1 R11
      651 GETUPVAL                         R11 0
      652 MOVE                             R13 R3
      653 MOVE                             R14 R8
      654 NAMECALL                         R11 R11 K26 ["joinTables"]
      656 CALL                             R11 3 1
      657 MOVE                             R3 R11
      658 GETUPVAL                         R11 6
      659 MOVE                             R13 R2
      660 GETUPVAL                         R15 6
      661 GETTABLEKS                       R14 R15 K31 ["ResizeXp"]
      663 NAMECALL                         R11 R11 K4 ["containsType"]
      665 CALL                             R11 3 1
      666 JUMPIFNOT                        R11 ; [+131]
      667 GETUPVAL                         R11 1
      668 ADDK                             R6 R11 K5 [1]
      669 LOADN                            R7 0
      670 NEWTABLE                         R8 0 0
      672 LOADN                            R13 1
      673 GETUPVAL                         R14 5
      674 LENGTH                           R11 R14
      675 LOADN                            R12 1
      676 FORNPREP                         R11
      677 GETUPVAL                         R16 5
      678 GETTABLE                         R15 R16 R13
      679 GETTABLEKS                       R14 R15 K6 ["LeftVisible"]
      681 JUMPIFNOT                        R14 ; [+47]
      682 MOVE                             R14 R10
      683 GETTABLEKS                       R15 R1 K19 ["Right"]
      685 GETUPVAL                         R18 5
      686 GETTABLE                         R17 R18 R13
      687 GETTABLEKS                       R16 R17 K7 ["Left"]
      689 GETIMPORT                        R17 K10 [Vector2.new]
      691 GETUPVAL                         R20 5
      692 GETTABLE                         R19 R20 R13
      693 GETTABLEKS                       R18 R19 K7 ["Left"]
      695 GETTABLEKS                       R21 R1 K12 ["Top"]
      697 GETUPVAL                         R24 5
      698 GETTABLE                         R23 R24 R13
      699 GETTABLEKS                       R22 R23 K12 ["Top"]
      701 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      703 GETIMPORT                        R20 K15 [math.min]
      705 CALL                             R20 2 1
      706 SUBK                             R19 R20 K11 [10]
      707 CALL                             R17 2 1
      708 GETIMPORT                        R18 K10 [Vector2.new]
      710 GETUPVAL                         R21 5
      711 GETTABLE                         R20 R21 R13
      712 GETTABLEKS                       R19 R20 K7 ["Left"]
      714 GETTABLEKS                       R22 R1 K16 ["Bottom"]
      716 GETUPVAL                         R25 5
      717 GETTABLE                         R24 R25 R13
      718 GETTABLEKS                       R23 R24 K16 ["Bottom"]
      720 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      722 GETIMPORT                        R21 K18 [math.max]
      724 CALL                             R21 2 1
      725 ADDK                             R20 R21 K11 [10]
      726 CALL                             R18 2 1
      727 GETUPVAL                         R19 7
      728 CALL                             R14 5 0
      729 GETUPVAL                         R16 5
      730 GETTABLE                         R15 R16 R13
      731 GETTABLEKS                       R14 R15 K20 ["RightVisible"]
      733 JUMPIFNOT                        R14 ; [+47]
      734 MOVE                             R14 R10
      735 GETTABLEKS                       R15 R1 K19 ["Right"]
      737 GETUPVAL                         R18 5
      738 GETTABLE                         R17 R18 R13
      739 GETTABLEKS                       R16 R17 K19 ["Right"]
      741 GETIMPORT                        R17 K10 [Vector2.new]
      743 GETUPVAL                         R20 5
      744 GETTABLE                         R19 R20 R13
      745 GETTABLEKS                       R18 R19 K19 ["Right"]
      747 GETTABLEKS                       R21 R1 K12 ["Top"]
      749 GETUPVAL                         R24 5
      750 GETTABLE                         R23 R24 R13
      751 GETTABLEKS                       R22 R23 K12 ["Top"]
      753 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      755 GETIMPORT                        R20 K15 [math.min]
      757 CALL                             R20 2 1
      758 SUBK                             R19 R20 K11 [10]
      759 CALL                             R17 2 1
      760 GETIMPORT                        R18 K10 [Vector2.new]
      762 GETUPVAL                         R21 5
      763 GETTABLE                         R20 R21 R13
      764 GETTABLEKS                       R19 R20 K19 ["Right"]
      766 GETTABLEKS                       R22 R1 K16 ["Bottom"]
      768 GETUPVAL                         R25 5
      769 GETTABLE                         R24 R25 R13
      770 GETTABLEKS                       R23 R24 K16 ["Bottom"]
      772 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      774 GETIMPORT                        R21 K18 [math.max]
      776 CALL                             R21 2 1
      777 ADDK                             R20 R21 K11 [10]
      778 CALL                             R18 2 1
      779 GETUPVAL                         R19 7
      780 CALL                             R14 5 0
      781 FORNLOOP                         R11
      782 JUMPIFNOTEQKN                    R7 K24 [0] ; [+2]
      784 LOADB                            R4 0 +1
      785 LOADB                            R4 1
      786 GETTABLEKS                       R12 R1 K19 ["Right"]
      788 ADD                              R11 R12 R7
      789 SETTABLEKS                       R11 R1 K19 ["Right"]
      791 GETUPVAL                         R11 0
      792 MOVE                             R13 R3
      793 MOVE                             R14 R8
      794 NAMECALL                         R11 R11 K26 ["joinTables"]
      796 CALL                             R11 3 1
      797 MOVE                             R3 R11
      798 GETUPVAL                         R11 6
      799 MOVE                             R13 R2
      800 GETUPVAL                         R15 6
      801 GETTABLEKS                       R14 R15 K32 ["ResizeXn"]
      803 NAMECALL                         R11 R11 K4 ["containsType"]
      805 CALL                             R11 3 1
      806 JUMPIFNOT                        R11 ; [+131]
      807 GETUPVAL                         R11 1
      808 ADDK                             R6 R11 K5 [1]
      809 LOADN                            R7 0
      810 NEWTABLE                         R8 0 0
      812 LOADN                            R13 1
      813 GETUPVAL                         R14 5
      814 LENGTH                           R11 R14
      815 LOADN                            R12 1
      816 FORNPREP                         R11
      817 GETUPVAL                         R16 5
      818 GETTABLE                         R15 R16 R13
      819 GETTABLEKS                       R14 R15 K6 ["LeftVisible"]
      821 JUMPIFNOT                        R14 ; [+47]
      822 MOVE                             R14 R10
      823 GETTABLEKS                       R15 R1 K7 ["Left"]
      825 GETUPVAL                         R18 5
      826 GETTABLE                         R17 R18 R13
      827 GETTABLEKS                       R16 R17 K7 ["Left"]
      829 GETIMPORT                        R17 K10 [Vector2.new]
      831 GETUPVAL                         R20 5
      832 GETTABLE                         R19 R20 R13
      833 GETTABLEKS                       R18 R19 K7 ["Left"]
      835 GETTABLEKS                       R21 R1 K12 ["Top"]
      837 GETUPVAL                         R24 5
      838 GETTABLE                         R23 R24 R13
      839 GETTABLEKS                       R22 R23 K12 ["Top"]
      841 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      843 GETIMPORT                        R20 K15 [math.min]
      845 CALL                             R20 2 1
      846 SUBK                             R19 R20 K11 [10]
      847 CALL                             R17 2 1
      848 GETIMPORT                        R18 K10 [Vector2.new]
      850 GETUPVAL                         R21 5
      851 GETTABLE                         R20 R21 R13
      852 GETTABLEKS                       R19 R20 K7 ["Left"]
      854 GETTABLEKS                       R22 R1 K16 ["Bottom"]
      856 GETUPVAL                         R25 5
      857 GETTABLE                         R24 R25 R13
      858 GETTABLEKS                       R23 R24 K16 ["Bottom"]
      860 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      862 GETIMPORT                        R21 K18 [math.max]
      864 CALL                             R21 2 1
      865 ADDK                             R20 R21 K11 [10]
      866 CALL                             R18 2 1
      867 GETUPVAL                         R19 7
      868 CALL                             R14 5 0
      869 GETUPVAL                         R16 5
      870 GETTABLE                         R15 R16 R13
      871 GETTABLEKS                       R14 R15 K20 ["RightVisible"]
      873 JUMPIFNOT                        R14 ; [+47]
      874 MOVE                             R14 R10
      875 GETTABLEKS                       R15 R1 K7 ["Left"]
      877 GETUPVAL                         R18 5
      878 GETTABLE                         R17 R18 R13
      879 GETTABLEKS                       R16 R17 K19 ["Right"]
      881 GETIMPORT                        R17 K10 [Vector2.new]
      883 GETUPVAL                         R20 5
      884 GETTABLE                         R19 R20 R13
      885 GETTABLEKS                       R18 R19 K19 ["Right"]
      887 GETTABLEKS                       R21 R1 K12 ["Top"]
      889 GETUPVAL                         R24 5
      890 GETTABLE                         R23 R24 R13
      891 GETTABLEKS                       R22 R23 K12 ["Top"]
      893 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      895 GETIMPORT                        R20 K15 [math.min]
      897 CALL                             R20 2 1
      898 SUBK                             R19 R20 K11 [10]
      899 CALL                             R17 2 1
      900 GETIMPORT                        R18 K10 [Vector2.new]
      902 GETUPVAL                         R21 5
      903 GETTABLE                         R20 R21 R13
      904 GETTABLEKS                       R19 R20 K19 ["Right"]
      906 GETTABLEKS                       R22 R1 K16 ["Bottom"]
      908 GETUPVAL                         R25 5
      909 GETTABLE                         R24 R25 R13
      910 GETTABLEKS                       R23 R24 K16 ["Bottom"]
      912 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      914 GETIMPORT                        R21 K18 [math.max]
      916 CALL                             R21 2 1
      917 ADDK                             R20 R21 K11 [10]
      918 CALL                             R18 2 1
      919 GETUPVAL                         R19 7
      920 CALL                             R14 5 0
      921 FORNLOOP                         R11
      922 JUMPIFNOTEQKN                    R7 K24 [0] ; [+2]
      924 LOADB                            R4 0 +1
      925 LOADB                            R4 1
      926 GETTABLEKS                       R12 R1 K7 ["Left"]
      928 ADD                              R11 R12 R7
      929 SETTABLEKS                       R11 R1 K7 ["Left"]
      931 GETUPVAL                         R11 0
      932 MOVE                             R13 R3
      933 MOVE                             R14 R8
      934 NAMECALL                         R11 R11 K26 ["joinTables"]
      936 CALL                             R11 3 1
      937 MOVE                             R3 R11
      938 GETUPVAL                         R11 6
      939 MOVE                             R13 R2
      940 GETUPVAL                         R15 6
      941 GETTABLEKS                       R14 R15 K33 ["ResizeYp"]
      943 NAMECALL                         R11 R11 K4 ["containsType"]
      945 CALL                             R11 3 1
      946 JUMPIFNOT                        R11 ; [+131]
      947 GETUPVAL                         R11 1
      948 ADDK                             R6 R11 K5 [1]
      949 LOADN                            R7 0
      950 NEWTABLE                         R8 0 0
      952 LOADN                            R13 1
      953 GETUPVAL                         R14 5
      954 LENGTH                           R11 R14
      955 LOADN                            R12 1
      956 FORNPREP                         R11
      957 GETUPVAL                         R16 5
      958 GETTABLE                         R15 R16 R13
      959 GETTABLEKS                       R14 R15 K28 ["TopVisible"]
      961 JUMPIFNOT                        R14 ; [+47]
      962 MOVE                             R14 R10
      963 GETTABLEKS                       R15 R1 K16 ["Bottom"]
      965 GETUPVAL                         R18 5
      966 GETTABLE                         R17 R18 R13
      967 GETTABLEKS                       R16 R17 K12 ["Top"]
      969 GETIMPORT                        R17 K10 [Vector2.new]
      971 GETTABLEKS                       R20 R1 K7 ["Left"]
      973 GETUPVAL                         R23 5
      974 GETTABLE                         R22 R23 R13
      975 GETTABLEKS                       R21 R22 K7 ["Left"]
      977 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
      979 GETIMPORT                        R19 K15 [math.min]
      981 CALL                             R19 2 1
      982 SUBK                             R18 R19 K11 [10]
      983 GETUPVAL                         R21 5
      984 GETTABLE                         R20 R21 R13
      985 GETTABLEKS                       R19 R20 K12 ["Top"]
      987 CALL                             R17 2 1
      988 GETIMPORT                        R18 K10 [Vector2.new]
      990 GETTABLEKS                       R21 R1 K19 ["Right"]
      992 GETUPVAL                         R24 5
      993 GETTABLE                         R23 R24 R13
      994 GETTABLEKS                       R22 R23 K19 ["Right"]
      996 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      998 GETIMPORT                        R20 K18 [math.max]
     1000 CALL                             R20 2 1
     1001 ADDK                             R19 R20 K11 [10]
     1002 GETUPVAL                         R22 5
     1003 GETTABLE                         R21 R22 R13
     1004 GETTABLEKS                       R20 R21 K12 ["Top"]
     1006 CALL                             R18 2 1
     1007 GETUPVAL                         R19 7
     1008 CALL                             R14 5 0
     1009 GETUPVAL                         R16 5
     1010 GETTABLE                         R15 R16 R13
     1011 GETTABLEKS                       R14 R15 K29 ["BottomVisible"]
     1013 JUMPIFNOT                        R14 ; [+47]
     1014 MOVE                             R14 R10
     1015 GETTABLEKS                       R15 R1 K16 ["Bottom"]
     1017 GETUPVAL                         R18 5
     1018 GETTABLE                         R17 R18 R13
     1019 GETTABLEKS                       R16 R17 K16 ["Bottom"]
     1021 GETIMPORT                        R17 K10 [Vector2.new]
     1023 GETTABLEKS                       R20 R1 K7 ["Left"]
     1025 GETUPVAL                         R23 5
     1026 GETTABLE                         R22 R23 R13
     1027 GETTABLEKS                       R21 R22 K7 ["Left"]
     1029 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
     1031 GETIMPORT                        R19 K15 [math.min]
     1033 CALL                             R19 2 1
     1034 SUBK                             R18 R19 K11 [10]
     1035 GETUPVAL                         R21 5
     1036 GETTABLE                         R20 R21 R13
     1037 GETTABLEKS                       R19 R20 K16 ["Bottom"]
     1039 CALL                             R17 2 1
     1040 GETIMPORT                        R18 K10 [Vector2.new]
     1042 GETTABLEKS                       R21 R1 K19 ["Right"]
     1044 GETUPVAL                         R24 5
     1045 GETTABLE                         R23 R24 R13
     1046 GETTABLEKS                       R22 R23 K19 ["Right"]
     1048 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
     1050 GETIMPORT                        R20 K18 [math.max]
     1052 CALL                             R20 2 1
     1053 ADDK                             R19 R20 K11 [10]
     1054 GETUPVAL                         R22 5
     1055 GETTABLE                         R21 R22 R13
     1056 GETTABLEKS                       R20 R21 K16 ["Bottom"]
     1058 CALL                             R18 2 1
     1059 GETUPVAL                         R19 7
     1060 CALL                             R14 5 0
     1061 FORNLOOP                         R11
     1062 JUMPIFNOTEQKN                    R7 K24 [0] ; [+2]
     1064 LOADB                            R5 0 +1
     1065 LOADB                            R5 1
     1066 GETTABLEKS                       R12 R1 K16 ["Bottom"]
     1068 ADD                              R11 R12 R7
     1069 SETTABLEKS                       R11 R1 K16 ["Bottom"]
     1071 GETUPVAL                         R11 0
     1072 MOVE                             R13 R3
     1073 MOVE                             R14 R8
     1074 NAMECALL                         R11 R11 K26 ["joinTables"]
     1076 CALL                             R11 3 1
     1077 MOVE                             R3 R11
     1078 GETUPVAL                         R11 6
     1079 MOVE                             R13 R2
     1080 GETUPVAL                         R15 6
     1081 GETTABLEKS                       R14 R15 K34 ["ResizeYn"]
     1083 NAMECALL                         R11 R11 K4 ["containsType"]
     1085 CALL                             R11 3 1
     1086 JUMPIFNOT                        R11 ; [+131]
     1087 GETUPVAL                         R11 1
     1088 ADDK                             R6 R11 K5 [1]
     1089 LOADN                            R7 0
     1090 NEWTABLE                         R8 0 0
     1092 LOADN                            R13 1
     1093 GETUPVAL                         R14 5
     1094 LENGTH                           R11 R14
     1095 LOADN                            R12 1
     1096 FORNPREP                         R11
     1097 GETUPVAL                         R16 5
     1098 GETTABLE                         R15 R16 R13
     1099 GETTABLEKS                       R14 R15 K28 ["TopVisible"]
     1101 JUMPIFNOT                        R14 ; [+47]
     1102 MOVE                             R14 R10
     1103 GETTABLEKS                       R15 R1 K12 ["Top"]
     1105 GETUPVAL                         R18 5
     1106 GETTABLE                         R17 R18 R13
     1107 GETTABLEKS                       R16 R17 K12 ["Top"]
     1109 GETIMPORT                        R17 K10 [Vector2.new]
     1111 GETTABLEKS                       R20 R1 K7 ["Left"]
     1113 GETUPVAL                         R23 5
     1114 GETTABLE                         R22 R23 R13
     1115 GETTABLEKS                       R21 R22 K7 ["Left"]
     1117 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
     1119 GETIMPORT                        R19 K15 [math.min]
     1121 CALL                             R19 2 1
     1122 SUBK                             R18 R19 K11 [10]
     1123 GETUPVAL                         R21 5
     1124 GETTABLE                         R20 R21 R13
     1125 GETTABLEKS                       R19 R20 K12 ["Top"]
     1127 CALL                             R17 2 1
     1128 GETIMPORT                        R18 K10 [Vector2.new]
     1130 GETTABLEKS                       R21 R1 K19 ["Right"]
     1132 GETUPVAL                         R24 5
     1133 GETTABLE                         R23 R24 R13
     1134 GETTABLEKS                       R22 R23 K19 ["Right"]
     1136 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
     1138 GETIMPORT                        R20 K18 [math.max]
     1140 CALL                             R20 2 1
     1141 ADDK                             R19 R20 K11 [10]
     1142 GETUPVAL                         R22 5
     1143 GETTABLE                         R21 R22 R13
     1144 GETTABLEKS                       R20 R21 K12 ["Top"]
     1146 CALL                             R18 2 1
     1147 GETUPVAL                         R19 7
     1148 CALL                             R14 5 0
     1149 GETUPVAL                         R16 5
     1150 GETTABLE                         R15 R16 R13
     1151 GETTABLEKS                       R14 R15 K29 ["BottomVisible"]
     1153 JUMPIFNOT                        R14 ; [+47]
     1154 MOVE                             R14 R10
     1155 GETTABLEKS                       R15 R1 K12 ["Top"]
     1157 GETUPVAL                         R18 5
     1158 GETTABLE                         R17 R18 R13
     1159 GETTABLEKS                       R16 R17 K16 ["Bottom"]
     1161 GETIMPORT                        R17 K10 [Vector2.new]
     1163 GETTABLEKS                       R20 R1 K7 ["Left"]
     1165 GETUPVAL                         R23 5
     1166 GETTABLE                         R22 R23 R13
     1167 GETTABLEKS                       R21 R22 K7 ["Left"]
     1169 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
     1171 GETIMPORT                        R19 K15 [math.min]
     1173 CALL                             R19 2 1
     1174 SUBK                             R18 R19 K11 [10]
     1175 GETUPVAL                         R21 5
     1176 GETTABLE                         R20 R21 R13
     1177 GETTABLEKS                       R19 R20 K16 ["Bottom"]
     1179 CALL                             R17 2 1
     1180 GETIMPORT                        R18 K10 [Vector2.new]
     1182 GETTABLEKS                       R21 R1 K19 ["Right"]
     1184 GETUPVAL                         R24 5
     1185 GETTABLE                         R23 R24 R13
     1186 GETTABLEKS                       R22 R23 K19 ["Right"]
     1188 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
     1190 GETIMPORT                        R20 K18 [math.max]
     1192 CALL                             R20 2 1
     1193 ADDK                             R19 R20 K11 [10]
     1194 GETUPVAL                         R22 5
     1195 GETTABLE                         R21 R22 R13
     1196 GETTABLEKS                       R20 R21 K16 ["Bottom"]
     1198 CALL                             R18 2 1
     1199 GETUPVAL                         R19 7
     1200 CALL                             R14 5 0
     1201 FORNLOOP                         R11
     1202 JUMPIFNOTEQKN                    R7 K24 [0] ; [+2]
     1204 LOADB                            R5 0 +1
     1205 LOADB                            R5 1
     1206 GETTABLEKS                       R12 R1 K12 ["Top"]
     1208 ADD                              R11 R12 R7
     1209 SETTABLEKS                       R11 R1 K12 ["Top"]
     1211 GETUPVAL                         R11 0
     1212 MOVE                             R13 R3
     1213 MOVE                             R14 R8
     1214 NAMECALL                         R11 R11 K26 ["joinTables"]
     1216 CALL                             R11 3 1
     1217 MOVE                             R3 R11
     1218 MOVE                             R11 R1
     1219 MOVE                             R12 R3
     1220 MOVE                             R13 R4
     1221 MOVE                             R14 R5
     1222 CLOSEUPVALS                      R6
     1223 RETURN                           R11 4

PROTO_7:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Extents2D"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["FFlag"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["GlobalValues"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R6 K3 [script]
       32 GETTABLEKS                       R5 R6 K4 ["Parent"]
       34 GETTABLEKS                       R4 R5 K8 ["InstanceInfo"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R7 K3 [script]
       41 GETTABLEKS                       R6 R7 K4 ["Parent"]
       43 GETTABLEKS                       R5 R6 K9 ["Select"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K1 [require]
       48 GETIMPORT                        R8 K3 [script]
       50 GETTABLEKS                       R7 R8 K4 ["Parent"]
       52 GETTABLEKS                       R6 R7 K10 ["SelectionManager"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K1 [require]
       57 GETIMPORT                        R9 K3 [script]
       59 GETTABLEKS                       R8 R9 K4 ["Parent"]
       61 GETTABLEKS                       R7 R8 K11 ["Set"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K1 [require]
       66 GETIMPORT                        R10 K3 [script]
       68 GETTABLEKS                       R9 R10 K4 ["Parent"]
       70 GETTABLEKS                       R8 R9 K12 ["Utility"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K1 [require]
       75 GETIMPORT                        R12 K3 [script]
       77 GETTABLEKS                       R11 R12 K4 ["Parent"]
       79 GETTABLEKS                       R10 R11 K13 ["Enum"]
       81 GETTABLEKS                       R9 R10 K14 ["SnappingType"]
       83 CALL                             R8 1 1
       84 NEWTABLE                         R9 0 0
       86 NEWTABLE                         R10 0 0
       88 LOADN                            R11 1
       89 DUPCLOSURE                       R12 K15 [PROTO_0]
       90 DUPCLOSURE                       R13 K16 [PROTO_1]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R13
       93 NEWTABLE                         R14 4 0
       95 NEWCLOSURE                       R15 P2
       96 CAPTURE                          REF R9
       97 CAPTURE                          REF R10
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R2
      103 SETTABLEKS                       R15 R14 K17 ["generateSnappingLines"]
      105 GETIMPORT                        R15 K20 [Color3.new]
      107 LOADN                            R16 1
      108 LOADK                            R17 K21 [0.0313725490196078]
      109 LOADK                            R18 K22 [0.403921568627451]
      110 CALL                             R15 3 1
      111 GETIMPORT                        R16 K20 [Color3.new]
      113 LOADN                            R17 0
      114 LOADN                            R18 1
      115 LOADN                            R19 0
      116 CALL                             R16 3 1
      117 NEWCLOSURE                       R17 P3
      118 CAPTURE                          VAL R7
      119 CAPTURE                          REF R11
      120 CAPTURE                          REF R10
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R3
      123 CAPTURE                          REF R9
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R0
      128 SETTABLEKS                       R17 R14 K23 ["snapExtents"]
      130 NEWCLOSURE                       R17 P4
      131 CAPTURE                          REF R11
      132 SETTABLEKS                       R17 R14 K24 ["setThreshold"]
      134 CLOSEUPVALS                      R9
      135 RETURN                           R14 1
