PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLE                         R1 R2 R0
       10 JUMPIFNOT                        R1 ; [+2]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 0
       14 LOADB                            R2 1
       15 SETTABLE                         R2 R1 R0
       16 NEWTABLE                         R1 0 0
       18 MOVE                             R2 R0
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 FASTCALL1                        TYPE R6 ; [+3]
       23 MOVE                             R8 R6
       24 GETIMPORT                        R7 K1 [type]
       26 CALL                             R7 1 1
       27 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+6]
       29 GETUPVAL                         R7 1
       30 MOVE                             R8 R6
       31 CALL                             R7 1 1
       32 SETTABLE                         R7 R1 R5
       33 JUMP                             ; [+467]
       34 FASTCALL1                        TYPEOF R6 ; [+3]
       35 MOVE                             R8 R6
       36 GETIMPORT                        R7 K4 [typeof]
       38 CALL                             R7 1 1
       39 JUMPIFNOTEQKS                    R7 K5 ["UDim"] ; [+11]
       41 LOADK                            R7 K6 ["UDim(%*, %*)"]
       42 GETTABLEKS                       R9 R6 K7 ["Scale"]
       44 GETTABLEKS                       R10 R6 K8 ["Offset"]
       46 NAMECALL                         R7 R7 K9 ["format"]
       48 CALL                             R7 3 1
       49 SETTABLE                         R7 R1 R5
       50 JUMP                             ; [+450]
       51 FASTCALL1                        TYPEOF R6 ; [+3]
       52 MOVE                             R8 R6
       53 GETIMPORT                        R7 K4 [typeof]
       55 CALL                             R7 1 1
       56 JUMPIFNOTEQKS                    R7 K10 ["UDim2"] ; [+23]
       58 LOADK                            R7 K11 ["UDim2(%*, %*, %*, %*)"]
       59 GETTABLEKS                       R9 R6 K12 ["X"]
       61 GETTABLEKS                       R9 R9 K7 ["Scale"]
       63 GETTABLEKS                       R10 R6 K12 ["X"]
       65 GETTABLEKS                       R10 R10 K8 ["Offset"]
       67 GETTABLEKS                       R11 R6 K13 ["Y"]
       69 GETTABLEKS                       R11 R11 K7 ["Scale"]
       71 GETTABLEKS                       R12 R6 K13 ["Y"]
       73 GETTABLEKS                       R12 R12 K8 ["Offset"]
       75 NAMECALL                         R7 R7 K9 ["format"]
       77 CALL                             R7 5 1
       78 SETTABLE                         R7 R1 R5
       79 JUMP                             ; [+421]
       80 FASTCALL1                        TYPEOF R6 ; [+3]
       81 MOVE                             R8 R6
       82 GETIMPORT                        R7 K4 [typeof]
       84 CALL                             R7 1 1
       85 JUMPIFNOTEQKS                    R7 K14 ["Vector2"] ; [+11]
       87 LOADK                            R7 K15 ["Vector2(%*, %*)"]
       88 GETTABLEKS                       R9 R6 K12 ["X"]
       90 GETTABLEKS                       R10 R6 K13 ["Y"]
       92 NAMECALL                         R7 R7 K9 ["format"]
       94 CALL                             R7 3 1
       95 SETTABLE                         R7 R1 R5
       96 JUMP                             ; [+404]
       97 FASTCALL1                        TYPEOF R6 ; [+3]
       98 MOVE                             R8 R6
       99 GETIMPORT                        R7 K4 [typeof]
      101 CALL                             R7 1 1
      102 JUMPIFNOTEQKS                    R7 K16 ["Vector3"] ; [+13]
      104 LOADK                            R7 K17 ["Vector3(%*, %*, %*)"]
      105 GETTABLEKS                       R9 R6 K12 ["X"]
      107 GETTABLEKS                       R10 R6 K13 ["Y"]
      109 GETTABLEKS                       R11 R6 K18 ["Z"]
      111 NAMECALL                         R7 R7 K9 ["format"]
      113 CALL                             R7 4 1
      114 SETTABLE                         R7 R1 R5
      115 JUMP                             ; [+385]
      116 FASTCALL1                        TYPEOF R6 ; [+3]
      117 MOVE                             R8 R6
      118 GETIMPORT                        R7 K4 [typeof]
      120 CALL                             R7 1 1
      121 JUMPIFNOTEQKS                    R7 K19 ["CFrame"] ; [+12]
      123 LOADK                            R7 K20 ["CFrame(%*)"]
      124 FASTCALL1                        TOSTRING R6 ; [+3]
      125 MOVE                             R10 R6
      126 GETIMPORT                        R9 K22 [tostring]
      128 CALL                             R9 1 1
      129 NAMECALL                         R7 R7 K9 ["format"]
      131 CALL                             R7 2 1
      132 SETTABLE                         R7 R1 R5
      133 JUMP                             ; [+367]
      134 FASTCALL1                        TYPEOF R6 ; [+3]
      135 MOVE                             R8 R6
      136 GETIMPORT                        R7 K4 [typeof]
      138 CALL                             R7 1 1
      139 JUMPIFNOTEQKS                    R7 K23 ["Color3"] ; [+13]
      141 LOADK                            R7 K24 ["Color3(%*, %*, %*)"]
      142 GETTABLEKS                       R9 R6 K25 ["R"]
      144 GETTABLEKS                       R10 R6 K26 ["G"]
      146 GETTABLEKS                       R11 R6 K27 ["B"]
      148 NAMECALL                         R7 R7 K9 ["format"]
      150 CALL                             R7 4 1
      151 SETTABLE                         R7 R1 R5
      152 JUMP                             ; [+348]
      153 FASTCALL1                        TYPEOF R6 ; [+3]
      154 MOVE                             R8 R6
      155 GETIMPORT                        R7 K4 [typeof]
      157 CALL                             R7 1 1
      158 JUMPIFNOTEQKS                    R7 K28 ["Rect"] ; [+23]
      160 LOADK                            R7 K29 ["Rect(%*, %*, %*, %*)"]
      161 GETTABLEKS                       R9 R6 K30 ["Min"]
      163 GETTABLEKS                       R9 R9 K12 ["X"]
      165 GETTABLEKS                       R10 R6 K30 ["Min"]
      167 GETTABLEKS                       R10 R10 K13 ["Y"]
      169 GETTABLEKS                       R11 R6 K31 ["Max"]
      171 GETTABLEKS                       R11 R11 K12 ["X"]
      173 GETTABLEKS                       R12 R6 K31 ["Max"]
      175 GETTABLEKS                       R12 R12 K13 ["Y"]
      177 NAMECALL                         R7 R7 K9 ["format"]
      179 CALL                             R7 5 1
      180 SETTABLE                         R7 R1 R5
      181 JUMP                             ; [+319]
      182 FASTCALL1                        TYPEOF R6 ; [+3]
      183 MOVE                             R8 R6
      184 GETIMPORT                        R7 K4 [typeof]
      186 CALL                             R7 1 1
      187 JUMPIFNOTEQKS                    R7 K32 ["EnumItem"] ; [+11]
      189 LOADK                            R7 K33 ["EnumItem(%*, %*)"]
      190 GETTABLEKS                       R9 R6 K34 ["EnumType"]
      192 GETTABLEKS                       R10 R6 K35 ["Name"]
      194 NAMECALL                         R7 R7 K9 ["format"]
      196 CALL                             R7 3 1
      197 SETTABLE                         R7 R1 R5
      198 JUMP                             ; [+302]
      199 FASTCALL1                        TYPEOF R6 ; [+3]
      200 MOVE                             R8 R6
      201 GETIMPORT                        R7 K4 [typeof]
      203 CALL                             R7 1 1
      204 JUMPIFNOTEQKS                    R7 K36 ["Instance"] ; [+10]
      206 LOADK                            R7 K37 ["Instance(%*)"]
      207 NAMECALL                         R9 R6 K38 ["GetFullName"]
      209 CALL                             R9 1 1
      210 NAMECALL                         R7 R7 K9 ["format"]
      212 CALL                             R7 2 1
      213 SETTABLE                         R7 R1 R5
      214 JUMP                             ; [+286]
      215 FASTCALL1                        TYPEOF R6 ; [+3]
      216 MOVE                             R8 R6
      217 GETIMPORT                        R7 K4 [typeof]
      219 CALL                             R7 1 1
      220 JUMPIFNOTEQKS                    R7 K39 ["BrickColor"] ; [+9]
      222 LOADK                            R7 K40 ["BrickColor(%*)"]
      223 GETTABLEKS                       R9 R6 K35 ["Name"]
      225 NAMECALL                         R7 R7 K9 ["format"]
      227 CALL                             R7 2 1
      228 SETTABLE                         R7 R1 R5
      229 JUMP                             ; [+271]
      230 FASTCALL1                        TYPEOF R6 ; [+3]
      231 MOVE                             R8 R6
      232 GETIMPORT                        R7 K4 [typeof]
      234 CALL                             R7 1 1
      235 JUMPIFNOTEQKS                    R7 K41 ["NumberRange"] ; [+11]
      237 LOADK                            R7 K42 ["NumberRange(%*, %*)"]
      238 GETTABLEKS                       R9 R6 K30 ["Min"]
      240 GETTABLEKS                       R10 R6 K31 ["Max"]
      242 NAMECALL                         R7 R7 K9 ["format"]
      244 CALL                             R7 3 1
      245 SETTABLE                         R7 R1 R5
      246 JUMP                             ; [+254]
      247 FASTCALL1                        TYPEOF R6 ; [+3]
      248 MOVE                             R8 R6
      249 GETIMPORT                        R7 K4 [typeof]
      251 CALL                             R7 1 1
      252 JUMPIFNOTEQKS                    R7 K43 ["NumberSequence"] ; [+37]
      254 NEWTABLE                         R7 0 0
      256 GETTABLEKS                       R8 R6 K44 ["Keypoints"]
      258 LOADNIL                          R9
      259 LOADNIL                          R10
      260 FORGPREP                         R8
      261 LOADK                            R15 K45 ["NumberSequenceKeypoint(%*, %*, %*)"]
      262 GETTABLEKS                       R17 R12 K46 ["Time"]
      264 GETTABLEKS                       R18 R12 K47 ["Value"]
      266 GETTABLEKS                       R19 R12 K48 ["Envelope"]
      268 NAMECALL                         R15 R15 K9 ["format"]
      270 CALL                             R15 4 1
      271 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      273 MOVE                             R14 R7
      274 GETIMPORT                        R13 K50 [table.insert]
      276 CALL                             R13 2 0
      277 FORGLOOP                         R8 2 ; [-17]
      279 LOADK                            R8 K51 ["NumberSequence(%*)"]
      280 GETIMPORT                        R10 K53 [table.concat]
      282 MOVE                             R11 R7
      283 LOADK                            R12 K54 [", "]
      284 CALL                             R10 2 1
      285 NAMECALL                         R8 R8 K9 ["format"]
      287 CALL                             R8 2 1
      288 SETTABLE                         R8 R1 R5
      289 JUMP                             ; [+211]
      290 FASTCALL1                        TYPEOF R6 ; [+3]
      291 MOVE                             R8 R6
      292 GETIMPORT                        R7 K4 [typeof]
      294 CALL                             R7 1 1
      295 JUMPIFNOTEQKS                    R7 K55 ["ColorSequence"] ; [+46]
      297 NEWTABLE                         R7 0 0
      299 GETIMPORT                        R8 K57 [ipairs]
      301 GETTABLEKS                       R9 R6 K44 ["Keypoints"]
      303 CALL                             R8 1 3
      304 FORGPREP_INEXT                   R8
      305 LOADK                            R15 K58 ["ColorSequenceKeypoint(%*, %*, %*, %*)"]
      306 GETTABLEKS                       R17 R12 K46 ["Time"]
      308 GETTABLEKS                       R18 R12 K47 ["Value"]
      310 GETTABLEKS                       R18 R18 K25 ["R"]
      312 GETTABLEKS                       R19 R12 K47 ["Value"]
      314 GETTABLEKS                       R19 R19 K26 ["G"]
      316 GETTABLEKS                       R20 R12 K47 ["Value"]
      318 GETTABLEKS                       R20 R20 K27 ["B"]
      320 NAMECALL                         R15 R15 K9 ["format"]
      322 CALL                             R15 5 1
      323 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      325 MOVE                             R14 R7
      326 GETIMPORT                        R13 K50 [table.insert]
      328 CALL                             R13 2 0
      329 FORGLOOP                         R8 2 [inext] ; [-25]
      331 LOADK                            R8 K59 ["ColorSequence(%*)"]
      332 GETIMPORT                        R10 K53 [table.concat]
      334 MOVE                             R11 R7
      335 LOADK                            R12 K54 [", "]
      336 CALL                             R10 2 1
      337 NAMECALL                         R8 R8 K9 ["format"]
      339 CALL                             R8 2 1
      340 SETTABLE                         R8 R1 R5
      341 JUMP                             ; [+159]
      342 FASTCALL1                        TYPEOF R6 ; [+3]
      343 MOVE                             R8 R6
      344 GETIMPORT                        R7 K4 [typeof]
      346 CALL                             R7 1 1
      347 JUMPIFNOTEQKS                    R7 K60 ["PhysicalProperties"] ; [+17]
      349 LOADK                            R7 K61 ["PhysicalProperties(%*, %*, %*, %*, %*)"]
      350 GETTABLEKS                       R9 R6 K62 ["Density"]
      352 GETTABLEKS                       R10 R6 K63 ["Friction"]
      354 GETTABLEKS                       R11 R6 K64 ["Elasticity"]
      356 GETTABLEKS                       R12 R6 K65 ["FrictionWeight"]
      358 GETTABLEKS                       R13 R6 K66 ["ElasticityWeight"]
      360 NAMECALL                         R7 R7 K9 ["format"]
      362 CALL                             R7 6 1
      363 SETTABLE                         R7 R1 R5
      364 JUMP                             ; [+136]
      365 FASTCALL1                        TYPEOF R6 ; [+3]
      366 MOVE                             R8 R6
      367 GETIMPORT                        R7 K4 [typeof]
      369 CALL                             R7 1 1
      370 JUMPIFNOTEQKS                    R7 K67 ["Vector2int16"] ; [+11]
      372 LOADK                            R7 K68 ["Vector2int16(%*, %*)"]
      373 GETTABLEKS                       R9 R6 K12 ["X"]
      375 GETTABLEKS                       R10 R6 K13 ["Y"]
      377 NAMECALL                         R7 R7 K9 ["format"]
      379 CALL                             R7 3 1
      380 SETTABLE                         R7 R1 R5
      381 JUMP                             ; [+119]
      382 FASTCALL1                        TYPEOF R6 ; [+3]
      383 MOVE                             R8 R6
      384 GETIMPORT                        R7 K4 [typeof]
      386 CALL                             R7 1 1
      387 JUMPIFNOTEQKS                    R7 K69 ["Vector3int16"] ; [+13]
      389 LOADK                            R7 K70 ["Vector3int16(%*, %*, %*)"]
      390 GETTABLEKS                       R9 R6 K12 ["X"]
      392 GETTABLEKS                       R10 R6 K13 ["Y"]
      394 GETTABLEKS                       R11 R6 K18 ["Z"]
      396 NAMECALL                         R7 R7 K9 ["format"]
      398 CALL                             R7 4 1
      399 SETTABLE                         R7 R1 R5
      400 JUMP                             ; [+100]
      401 FASTCALL1                        TYPEOF R6 ; [+3]
      402 MOVE                             R8 R6
      403 GETIMPORT                        R7 K4 [typeof]
      405 CALL                             R7 1 1
      406 JUMPIFNOTEQKS                    R7 K71 ["PathWaypoint"] ; [+21]
      408 LOADK                            R7 K72 ["PathWaypoint(%*, %*, %*, %*)"]
      409 GETTABLEKS                       R9 R6 K73 ["Position"]
      411 GETTABLEKS                       R9 R9 K12 ["X"]
      413 GETTABLEKS                       R10 R6 K73 ["Position"]
      415 GETTABLEKS                       R10 R10 K13 ["Y"]
      417 GETTABLEKS                       R11 R6 K73 ["Position"]
      419 GETTABLEKS                       R11 R11 K18 ["Z"]
      421 GETTABLEKS                       R12 R6 K74 ["Action"]
      423 NAMECALL                         R7 R7 K9 ["format"]
      425 CALL                             R7 5 1
      426 SETTABLE                         R7 R1 R5
      427 JUMP                             ; [+73]
      428 FASTCALL1                        TYPEOF R6 ; [+3]
      429 MOVE                             R8 R6
      430 GETIMPORT                        R7 K4 [typeof]
      432 CALL                             R7 1 1
      433 JUMPIFNOTEQKS                    R7 K75 ["OverlapParams"] ; [+15]
      435 LOADK                            R7 K76 ["OverlapParams(%*, %*, %*, %*)"]
      436 GETTABLEKS                       R9 R6 K77 ["FilterDescendantsInstances"]
      438 GETTABLEKS                       R10 R6 K78 ["FilterType"]
      440 GETTABLEKS                       R11 R6 K79 ["MaxParts"]
      442 GETTABLEKS                       R12 R6 K80 ["CollisionGroup"]
      444 NAMECALL                         R7 R7 K9 ["format"]
      446 CALL                             R7 5 1
      447 SETTABLE                         R7 R1 R5
      448 JUMP                             ; [+52]
      449 FASTCALL1                        TYPEOF R6 ; [+3]
      450 MOVE                             R8 R6
      451 GETIMPORT                        R7 K4 [typeof]
      453 CALL                             R7 1 1
      454 JUMPIFNOTEQKS                    R7 K81 ["RaycastParams"] ; [+15]
      456 LOADK                            R7 K82 ["RaycastParams(%*, %*, %*, %*)"]
      457 GETTABLEKS                       R9 R6 K77 ["FilterDescendantsInstances"]
      459 GETTABLEKS                       R10 R6 K78 ["FilterType"]
      461 GETTABLEKS                       R11 R6 K83 ["IgnoreWater"]
      463 GETTABLEKS                       R12 R6 K80 ["CollisionGroup"]
      465 NAMECALL                         R7 R7 K9 ["format"]
      467 CALL                             R7 5 1
      468 SETTABLE                         R7 R1 R5
      469 JUMP                             ; [+31]
      470 GETIMPORT                        R7 K85 [pcall]
      472 GETUPVAL                         R8 2
      473 GETTABLEKS                       R8 R8 K86 ["JSONEncode"]
      475 GETUPVAL                         R9 2
      476 NEWTABLE                         R10 0 1
      478 MOVE                             R11 R6
      479 SETLIST                          R10 R11 1 [1]
      481 CALL                             R7 3 1
      482 JUMPIFNOT                        R7 ; [+2]
      483 SETTABLE                         R6 R1 R5
      484 JUMP                             ; [+16]
      485 GETIMPORT                        R8 K88 [warn]
      487 LOADK                            R9 K89 ["[React DevTools] Could not serialize value for key \"%*\" (type '%*'):"]
      488 MOVE                             R11 R5
      489 FASTCALL1                        TYPEOF R6 ; [+3]
      490 MOVE                             R13 R6
      491 GETIMPORT                        R12 K4 [typeof]
      493 CALL                             R12 1 1
      494 NAMECALL                         R9 R9 K9 ["format"]
      496 CALL                             R9 3 1
      497 MOVE                             R10 R6
      498 CALL                             R8 2 0
      499 GETUPVAL                         R8 3
      500 SETTABLE                         R8 R1 R5
      501 FORGLOOP                         R2 2 ; [-480]
      503 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 MOVE                             R3 R2
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [newproxy]
        9 CALL                             R1 0 1
       10 DUPCLOSURE                       R2 K6 [PROTO_1]
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 RETURN                           R2 1
