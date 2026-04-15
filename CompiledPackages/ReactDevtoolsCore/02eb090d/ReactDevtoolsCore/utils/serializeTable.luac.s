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
       33 JUMP                             ; [+489]
       34 FASTCALL1                        TYPEOF R6 ; [+3]
       35 MOVE                             R8 R6
       36 GETIMPORT                        R7 K4 [typeof]
       38 CALL                             R7 1 1
       39 JUMPIFNOTEQKS                    R7 K5 ["UDim"] ; [+12]
       41 LOADK                            R8 K6 ["UDim(%*, %*)"]
       42 GETTABLEKS                       R10 R6 K7 ["Scale"]
       44 GETTABLEKS                       R11 R6 K8 ["Offset"]
       46 NAMECALL                         R8 R8 K9 ["format"]
       48 CALL                             R8 3 1
       49 MOVE                             R7 R8
       50 SETTABLE                         R7 R1 R5
       51 JUMP                             ; [+471]
       52 FASTCALL1                        TYPEOF R6 ; [+3]
       53 MOVE                             R8 R6
       54 GETIMPORT                        R7 K4 [typeof]
       56 CALL                             R7 1 1
       57 JUMPIFNOTEQKS                    R7 K10 ["UDim2"] ; [+24]
       59 LOADK                            R8 K11 ["UDim2(%*, %*, %*, %*)"]
       60 GETTABLEKS                       R11 R6 K12 ["X"]
       62 GETTABLEKS                       R10 R11 K7 ["Scale"]
       64 GETTABLEKS                       R12 R6 K12 ["X"]
       66 GETTABLEKS                       R11 R12 K8 ["Offset"]
       68 GETTABLEKS                       R13 R6 K13 ["Y"]
       70 GETTABLEKS                       R12 R13 K7 ["Scale"]
       72 GETTABLEKS                       R14 R6 K13 ["Y"]
       74 GETTABLEKS                       R13 R14 K8 ["Offset"]
       76 NAMECALL                         R8 R8 K9 ["format"]
       78 CALL                             R8 5 1
       79 MOVE                             R7 R8
       80 SETTABLE                         R7 R1 R5
       81 JUMP                             ; [+441]
       82 FASTCALL1                        TYPEOF R6 ; [+3]
       83 MOVE                             R8 R6
       84 GETIMPORT                        R7 K4 [typeof]
       86 CALL                             R7 1 1
       87 JUMPIFNOTEQKS                    R7 K14 ["Vector2"] ; [+12]
       89 LOADK                            R8 K15 ["Vector2(%*, %*)"]
       90 GETTABLEKS                       R10 R6 K12 ["X"]
       92 GETTABLEKS                       R11 R6 K13 ["Y"]
       94 NAMECALL                         R8 R8 K9 ["format"]
       96 CALL                             R8 3 1
       97 MOVE                             R7 R8
       98 SETTABLE                         R7 R1 R5
       99 JUMP                             ; [+423]
      100 FASTCALL1                        TYPEOF R6 ; [+3]
      101 MOVE                             R8 R6
      102 GETIMPORT                        R7 K4 [typeof]
      104 CALL                             R7 1 1
      105 JUMPIFNOTEQKS                    R7 K16 ["Vector3"] ; [+14]
      107 LOADK                            R8 K17 ["Vector3(%*, %*, %*)"]
      108 GETTABLEKS                       R10 R6 K12 ["X"]
      110 GETTABLEKS                       R11 R6 K13 ["Y"]
      112 GETTABLEKS                       R12 R6 K18 ["Z"]
      114 NAMECALL                         R8 R8 K9 ["format"]
      116 CALL                             R8 4 1
      117 MOVE                             R7 R8
      118 SETTABLE                         R7 R1 R5
      119 JUMP                             ; [+403]
      120 FASTCALL1                        TYPEOF R6 ; [+3]
      121 MOVE                             R8 R6
      122 GETIMPORT                        R7 K4 [typeof]
      124 CALL                             R7 1 1
      125 JUMPIFNOTEQKS                    R7 K19 ["CFrame"] ; [+13]
      127 LOADK                            R8 K20 ["CFrame(%*)"]
      128 FASTCALL1                        TOSTRING R6 ; [+3]
      129 MOVE                             R11 R6
      130 GETIMPORT                        R10 K22 [tostring]
      132 CALL                             R10 1 1
      133 NAMECALL                         R8 R8 K9 ["format"]
      135 CALL                             R8 2 1
      136 MOVE                             R7 R8
      137 SETTABLE                         R7 R1 R5
      138 JUMP                             ; [+384]
      139 FASTCALL1                        TYPEOF R6 ; [+3]
      140 MOVE                             R8 R6
      141 GETIMPORT                        R7 K4 [typeof]
      143 CALL                             R7 1 1
      144 JUMPIFNOTEQKS                    R7 K23 ["Color3"] ; [+14]
      146 LOADK                            R8 K24 ["Color3(%*, %*, %*)"]
      147 GETTABLEKS                       R10 R6 K25 ["R"]
      149 GETTABLEKS                       R11 R6 K26 ["G"]
      151 GETTABLEKS                       R12 R6 K27 ["B"]
      153 NAMECALL                         R8 R8 K9 ["format"]
      155 CALL                             R8 4 1
      156 MOVE                             R7 R8
      157 SETTABLE                         R7 R1 R5
      158 JUMP                             ; [+364]
      159 FASTCALL1                        TYPEOF R6 ; [+3]
      160 MOVE                             R8 R6
      161 GETIMPORT                        R7 K4 [typeof]
      163 CALL                             R7 1 1
      164 JUMPIFNOTEQKS                    R7 K28 ["Rect"] ; [+24]
      166 LOADK                            R8 K29 ["Rect(%*, %*, %*, %*)"]
      167 GETTABLEKS                       R11 R6 K30 ["Min"]
      169 GETTABLEKS                       R10 R11 K12 ["X"]
      171 GETTABLEKS                       R12 R6 K30 ["Min"]
      173 GETTABLEKS                       R11 R12 K13 ["Y"]
      175 GETTABLEKS                       R13 R6 K31 ["Max"]
      177 GETTABLEKS                       R12 R13 K12 ["X"]
      179 GETTABLEKS                       R14 R6 K31 ["Max"]
      181 GETTABLEKS                       R13 R14 K13 ["Y"]
      183 NAMECALL                         R8 R8 K9 ["format"]
      185 CALL                             R8 5 1
      186 MOVE                             R7 R8
      187 SETTABLE                         R7 R1 R5
      188 JUMP                             ; [+334]
      189 FASTCALL1                        TYPEOF R6 ; [+3]
      190 MOVE                             R8 R6
      191 GETIMPORT                        R7 K4 [typeof]
      193 CALL                             R7 1 1
      194 JUMPIFNOTEQKS                    R7 K32 ["EnumItem"] ; [+12]
      196 LOADK                            R8 K33 ["EnumItem(%*, %*)"]
      197 GETTABLEKS                       R10 R6 K34 ["EnumType"]
      199 GETTABLEKS                       R11 R6 K35 ["Name"]
      201 NAMECALL                         R8 R8 K9 ["format"]
      203 CALL                             R8 3 1
      204 MOVE                             R7 R8
      205 SETTABLE                         R7 R1 R5
      206 JUMP                             ; [+316]
      207 FASTCALL1                        TYPEOF R6 ; [+3]
      208 MOVE                             R8 R6
      209 GETIMPORT                        R7 K4 [typeof]
      211 CALL                             R7 1 1
      212 JUMPIFNOTEQKS                    R7 K36 ["Instance"] ; [+11]
      214 LOADK                            R8 K37 ["Instance(%*)"]
      215 NAMECALL                         R10 R6 K38 ["GetFullName"]
      217 CALL                             R10 1 1
      218 NAMECALL                         R8 R8 K9 ["format"]
      220 CALL                             R8 2 1
      221 MOVE                             R7 R8
      222 SETTABLE                         R7 R1 R5
      223 JUMP                             ; [+299]
      224 FASTCALL1                        TYPEOF R6 ; [+3]
      225 MOVE                             R8 R6
      226 GETIMPORT                        R7 K4 [typeof]
      228 CALL                             R7 1 1
      229 JUMPIFNOTEQKS                    R7 K39 ["BrickColor"] ; [+10]
      231 LOADK                            R8 K40 ["BrickColor(%*)"]
      232 GETTABLEKS                       R10 R6 K35 ["Name"]
      234 NAMECALL                         R8 R8 K9 ["format"]
      236 CALL                             R8 2 1
      237 MOVE                             R7 R8
      238 SETTABLE                         R7 R1 R5
      239 JUMP                             ; [+283]
      240 FASTCALL1                        TYPEOF R6 ; [+3]
      241 MOVE                             R8 R6
      242 GETIMPORT                        R7 K4 [typeof]
      244 CALL                             R7 1 1
      245 JUMPIFNOTEQKS                    R7 K41 ["NumberRange"] ; [+12]
      247 LOADK                            R8 K42 ["NumberRange(%*, %*)"]
      248 GETTABLEKS                       R10 R6 K30 ["Min"]
      250 GETTABLEKS                       R11 R6 K31 ["Max"]
      252 NAMECALL                         R8 R8 K9 ["format"]
      254 CALL                             R8 3 1
      255 MOVE                             R7 R8
      256 SETTABLE                         R7 R1 R5
      257 JUMP                             ; [+265]
      258 FASTCALL1                        TYPEOF R6 ; [+3]
      259 MOVE                             R8 R6
      260 GETIMPORT                        R7 K4 [typeof]
      262 CALL                             R7 1 1
      263 JUMPIFNOTEQKS                    R7 K43 ["NumberSequence"] ; [+39]
      265 NEWTABLE                         R7 0 0
      267 GETTABLEKS                       R8 R6 K44 ["Keypoints"]
      269 LOADNIL                          R9
      270 LOADNIL                          R10
      271 FORGPREP                         R8
      272 LOADK                            R16 K45 ["NumberSequenceKeypoint(%*, %*, %*)"]
      273 GETTABLEKS                       R18 R12 K46 ["Time"]
      275 GETTABLEKS                       R19 R12 K47 ["Value"]
      277 GETTABLEKS                       R20 R12 K48 ["Envelope"]
      279 NAMECALL                         R16 R16 K9 ["format"]
      281 CALL                             R16 4 1
      282 MOVE                             R15 R16
      283 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      285 MOVE                             R14 R7
      286 GETIMPORT                        R13 K50 [table.insert]
      288 CALL                             R13 2 0
      289 FORGLOOP                         R8 2 ; [-18]
      291 LOADK                            R9 K51 ["NumberSequence(%*)"]
      292 GETIMPORT                        R11 K53 [table.concat]
      294 MOVE                             R12 R7
      295 LOADK                            R13 K54 [", "]
      296 CALL                             R11 2 1
      297 NAMECALL                         R9 R9 K9 ["format"]
      299 CALL                             R9 2 1
      300 MOVE                             R8 R9
      301 SETTABLE                         R8 R1 R5
      302 JUMP                             ; [+220]
      303 FASTCALL1                        TYPEOF R6 ; [+3]
      304 MOVE                             R8 R6
      305 GETIMPORT                        R7 K4 [typeof]
      307 CALL                             R7 1 1
      308 JUMPIFNOTEQKS                    R7 K55 ["ColorSequence"] ; [+48]
      310 NEWTABLE                         R7 0 0
      312 GETIMPORT                        R8 K57 [ipairs]
      314 GETTABLEKS                       R9 R6 K44 ["Keypoints"]
      316 CALL                             R8 1 3
      317 FORGPREP_INEXT                   R8
      318 LOADK                            R16 K58 ["ColorSequenceKeypoint(%*, %*, %*, %*)"]
      319 GETTABLEKS                       R18 R12 K46 ["Time"]
      321 GETTABLEKS                       R20 R12 K47 ["Value"]
      323 GETTABLEKS                       R19 R20 K25 ["R"]
      325 GETTABLEKS                       R21 R12 K47 ["Value"]
      327 GETTABLEKS                       R20 R21 K26 ["G"]
      329 GETTABLEKS                       R22 R12 K47 ["Value"]
      331 GETTABLEKS                       R21 R22 K27 ["B"]
      333 NAMECALL                         R16 R16 K9 ["format"]
      335 CALL                             R16 5 1
      336 MOVE                             R15 R16
      337 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      339 MOVE                             R14 R7
      340 GETIMPORT                        R13 K50 [table.insert]
      342 CALL                             R13 2 0
      343 FORGLOOP                         R8 2 [inext] ; [-26]
      345 LOADK                            R9 K59 ["ColorSequence(%*)"]
      346 GETIMPORT                        R11 K53 [table.concat]
      348 MOVE                             R12 R7
      349 LOADK                            R13 K54 [", "]
      350 CALL                             R11 2 1
      351 NAMECALL                         R9 R9 K9 ["format"]
      353 CALL                             R9 2 1
      354 MOVE                             R8 R9
      355 SETTABLE                         R8 R1 R5
      356 JUMP                             ; [+166]
      357 FASTCALL1                        TYPEOF R6 ; [+3]
      358 MOVE                             R8 R6
      359 GETIMPORT                        R7 K4 [typeof]
      361 CALL                             R7 1 1
      362 JUMPIFNOTEQKS                    R7 K60 ["PhysicalProperties"] ; [+18]
      364 LOADK                            R8 K61 ["PhysicalProperties(%*, %*, %*, %*, %*)"]
      365 GETTABLEKS                       R10 R6 K62 ["Density"]
      367 GETTABLEKS                       R11 R6 K63 ["Friction"]
      369 GETTABLEKS                       R12 R6 K64 ["Elasticity"]
      371 GETTABLEKS                       R13 R6 K65 ["FrictionWeight"]
      373 GETTABLEKS                       R14 R6 K66 ["ElasticityWeight"]
      375 NAMECALL                         R8 R8 K9 ["format"]
      377 CALL                             R8 6 1
      378 MOVE                             R7 R8
      379 SETTABLE                         R7 R1 R5
      380 JUMP                             ; [+142]
      381 FASTCALL1                        TYPEOF R6 ; [+3]
      382 MOVE                             R8 R6
      383 GETIMPORT                        R7 K4 [typeof]
      385 CALL                             R7 1 1
      386 JUMPIFNOTEQKS                    R7 K67 ["Vector2int16"] ; [+12]
      388 LOADK                            R8 K68 ["Vector2int16(%*, %*)"]
      389 GETTABLEKS                       R10 R6 K12 ["X"]
      391 GETTABLEKS                       R11 R6 K13 ["Y"]
      393 NAMECALL                         R8 R8 K9 ["format"]
      395 CALL                             R8 3 1
      396 MOVE                             R7 R8
      397 SETTABLE                         R7 R1 R5
      398 JUMP                             ; [+124]
      399 FASTCALL1                        TYPEOF R6 ; [+3]
      400 MOVE                             R8 R6
      401 GETIMPORT                        R7 K4 [typeof]
      403 CALL                             R7 1 1
      404 JUMPIFNOTEQKS                    R7 K69 ["Vector3int16"] ; [+14]
      406 LOADK                            R8 K70 ["Vector3int16(%*, %*, %*)"]
      407 GETTABLEKS                       R10 R6 K12 ["X"]
      409 GETTABLEKS                       R11 R6 K13 ["Y"]
      411 GETTABLEKS                       R12 R6 K18 ["Z"]
      413 NAMECALL                         R8 R8 K9 ["format"]
      415 CALL                             R8 4 1
      416 MOVE                             R7 R8
      417 SETTABLE                         R7 R1 R5
      418 JUMP                             ; [+104]
      419 FASTCALL1                        TYPEOF R6 ; [+3]
      420 MOVE                             R8 R6
      421 GETIMPORT                        R7 K4 [typeof]
      423 CALL                             R7 1 1
      424 JUMPIFNOTEQKS                    R7 K71 ["PathWaypoint"] ; [+22]
      426 LOADK                            R8 K72 ["PathWaypoint(%*, %*, %*, %*)"]
      427 GETTABLEKS                       R11 R6 K73 ["Position"]
      429 GETTABLEKS                       R10 R11 K12 ["X"]
      431 GETTABLEKS                       R12 R6 K73 ["Position"]
      433 GETTABLEKS                       R11 R12 K13 ["Y"]
      435 GETTABLEKS                       R13 R6 K73 ["Position"]
      437 GETTABLEKS                       R12 R13 K18 ["Z"]
      439 GETTABLEKS                       R13 R6 K74 ["Action"]
      441 NAMECALL                         R8 R8 K9 ["format"]
      443 CALL                             R8 5 1
      444 MOVE                             R7 R8
      445 SETTABLE                         R7 R1 R5
      446 JUMP                             ; [+76]
      447 FASTCALL1                        TYPEOF R6 ; [+3]
      448 MOVE                             R8 R6
      449 GETIMPORT                        R7 K4 [typeof]
      451 CALL                             R7 1 1
      452 JUMPIFNOTEQKS                    R7 K75 ["OverlapParams"] ; [+16]
      454 LOADK                            R8 K76 ["OverlapParams(%*, %*, %*, %*)"]
      455 GETTABLEKS                       R10 R6 K77 ["FilterDescendantsInstances"]
      457 GETTABLEKS                       R11 R6 K78 ["FilterType"]
      459 GETTABLEKS                       R12 R6 K79 ["MaxParts"]
      461 GETTABLEKS                       R13 R6 K80 ["CollisionGroup"]
      463 NAMECALL                         R8 R8 K9 ["format"]
      465 CALL                             R8 5 1
      466 MOVE                             R7 R8
      467 SETTABLE                         R7 R1 R5
      468 JUMP                             ; [+54]
      469 FASTCALL1                        TYPEOF R6 ; [+3]
      470 MOVE                             R8 R6
      471 GETIMPORT                        R7 K4 [typeof]
      473 CALL                             R7 1 1
      474 JUMPIFNOTEQKS                    R7 K81 ["RaycastParams"] ; [+16]
      476 LOADK                            R8 K82 ["RaycastParams(%*, %*, %*, %*)"]
      477 GETTABLEKS                       R10 R6 K77 ["FilterDescendantsInstances"]
      479 GETTABLEKS                       R11 R6 K78 ["FilterType"]
      481 GETTABLEKS                       R12 R6 K83 ["IgnoreWater"]
      483 GETTABLEKS                       R13 R6 K80 ["CollisionGroup"]
      485 NAMECALL                         R8 R8 K9 ["format"]
      487 CALL                             R8 5 1
      488 MOVE                             R7 R8
      489 SETTABLE                         R7 R1 R5
      490 JUMP                             ; [+32]
      491 GETIMPORT                        R7 K85 [pcall]
      493 GETUPVAL                         R9 2
      494 GETTABLEKS                       R8 R9 K86 ["JSONEncode"]
      496 GETUPVAL                         R9 2
      497 NEWTABLE                         R10 0 1
      499 MOVE                             R11 R6
      500 SETLIST                          R10 R11 1 [1]
      502 CALL                             R7 3 1
      503 JUMPIFNOT                        R7 ; [+2]
      504 SETTABLE                         R6 R1 R5
      505 JUMP                             ; [+17]
      506 GETIMPORT                        R8 K88 [warn]
      508 LOADK                            R10 K89 ["[React DevTools] Could not serialize value for key \"%*\" (type '%*'):"]
      509 MOVE                             R12 R5
      510 FASTCALL1                        TYPEOF R6 ; [+3]
      511 MOVE                             R14 R6
      512 GETIMPORT                        R13 K4 [typeof]
      514 CALL                             R13 1 1
      515 NAMECALL                         R10 R10 K9 ["format"]
      517 CALL                             R10 3 1
      518 MOVE                             R9 R10
      519 MOVE                             R10 R6
      520 CALL                             R8 2 0
      521 GETUPVAL                         R8 3
      522 SETTABLE                         R8 R1 R5
      523 FORGLOOP                         R2 2 ; [-502]
      525 RETURN                           R1 1

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
