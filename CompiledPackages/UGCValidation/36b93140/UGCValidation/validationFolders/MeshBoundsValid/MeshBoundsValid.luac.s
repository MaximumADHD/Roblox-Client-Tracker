PROTO_0:
        0 MOVE                             R5 R0
        1 NAMECALL                         R3 R1 K0 ["PointToObjectSpace"]
        3 CALL                             R3 2 1
        4 LOADB                            R4 0
        5 GETTABLEKS                       R5 R3 K1 ["X"]
        7 GETTABLEKS                       R8 R2 K1 ["X"]
        9 MINUS                            R7 R8
       10 DIVK                             R6 R7 K2 [2]
       11 JUMPIFNOTLE                      R6 R5 ; [+44]
       13 LOADB                            R4 0
       14 GETTABLEKS                       R5 R3 K1 ["X"]
       16 GETTABLEKS                       R7 R2 K1 ["X"]
       18 DIVK                             R6 R7 K2 [2]
       19 JUMPIFNOTLE                      R5 R6 ; [+36]
       21 LOADB                            R4 0
       22 GETTABLEKS                       R5 R3 K3 ["Y"]
       24 GETTABLEKS                       R8 R2 K3 ["Y"]
       26 MINUS                            R7 R8
       27 DIVK                             R6 R7 K2 [2]
       28 JUMPIFNOTLE                      R6 R5 ; [+27]
       30 LOADB                            R4 0
       31 GETTABLEKS                       R5 R3 K3 ["Y"]
       33 GETTABLEKS                       R7 R2 K3 ["Y"]
       35 DIVK                             R6 R7 K2 [2]
       36 JUMPIFNOTLE                      R5 R6 ; [+19]
       38 LOADB                            R4 0
       39 GETTABLEKS                       R5 R3 K4 ["Z"]
       41 GETTABLEKS                       R8 R2 K4 ["Z"]
       43 MINUS                            R7 R8
       44 DIVK                             R6 R7 K2 [2]
       45 JUMPIFNOTLE                      R6 R5 ; [+10]
       47 GETTABLEKS                       R5 R3 K4 ["Z"]
       49 GETTABLEKS                       R7 R2 K4 ["Z"]
       51 DIVK                             R6 R7 K2 [2]
       52 JUMPIFLE                         R5 R6 ; [+2]
       54 LOADB                            R4 0 +1
       55 LOADB                            R4 1
       56 RETURN                           R4 1

PROTO_1:
        0 MULK                             R3 R0 K0 [100]
        1 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        2 GETIMPORT                        R2 K3 [math.floor]
        4 CALL                             R2 1 1
        5 DIVK                             R1 R2 K0 [100]
        6 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        4 GETTABLEKS                       R3 R3 K2 ["assetType"]
        6 GETTABLEKS                       R5 R1 K3 ["consumerConfig"]
        8 GETTABLEKS                       R5 R5 K4 ["consumerEnv"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["ConsumerEnv"]
       13 GETTABLEKS                       R6 R6 K6 ["Backend"]
       15 JUMPIFEQ                         R5 R6 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K7 ["ASSET_TYPE_INFO"]
       22 GETTABLE                         R5 R6 R3
       23 JUMPIF                           R5 ; [+1]
       24 RETURN                           R0 0
       25 LOADK                            R8 K8 ["Handle"]
       26 NAMECALL                         R6 R2 K9 ["FindFirstChild"]
       28 CALL                             R6 2 1
       29 JUMPIF                           R6 ; [+1]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R8 R1 K10 ["renderMeshesData"]
       33 GETTABLEKS                       R7 R8 K8 ["Handle"]
       35 JUMPIF                           R7 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R8 2
       38 MOVE                             R9 R6
       39 GETTABLEKS                       R10 R5 K11 ["attachmentNames"]
       41 CALL                             R8 2 1
       42 JUMPIF                           R8 ; [+1]
       43 RETURN                           R0 0
       44 GETTABLEKS                       R10 R5 K12 ["bounds"]
       46 GETTABLEKS                       R11 R8 K13 ["Name"]
       48 GETTABLE                         R9 R10 R11
       49 JUMPIF                           R9 ; [+1]
       50 RETURN                           R0 0
       51 GETTABLEKS                       R10 R7 K14 ["scale"]
       53 GETTABLEKS                       R11 R9 K15 ["size"]
       55 GETTABLEKS                       R13 R9 K17 ["offset"]
       57 ORK                              R12 R13 K16 [{0, 0, 0}]
       58 GETTABLEKS                       R13 R1 K18 ["uploadCategory"]
       60 GETUPVAL                         R14 0
       61 GETTABLEKS                       R14 R14 K19 ["UploadCategory"]
       63 GETTABLEKS                       R14 R14 K20 ["RIGID_ACCESSORY"]
       65 JUMPIFNOTEQ                      R13 R14 ; [+27]
       67 GETUPVAL                         R14 3
       68 MOVE                             R15 R2
       69 CALL                             R14 1 1
       70 JUMPIFNOT                        R14 ; [+2]
       71 GETUPVAL                         R13 4
       72 JUMP                             ; [+1]
       73 GETUPVAL                         R13 5
       74 JUMPIFNOT                        R13 ; [+18]
       75 LOADK                            R16 K21 ["AvatarPartScaleType"]
       76 NAMECALL                         R14 R6 K9 ["FindFirstChild"]
       78 CALL                             R14 2 1
       79 JUMPIFNOT                        R14 ; [+13]
       80 GETUPVAL                         R14 6
       81 MOVE                             R15 R6
       82 MOVE                             R16 R8
       83 CALL                             R14 2 1
       84 DIV                              R11 R11 R14
       85 GETTABLEKS                       R15 R9 K17 ["offset"]
       87 JUMPIFNOT                        R15 ; [+4]
       88 GETTABLEKS                       R15 R9 K17 ["offset"]
       90 DIV                              R12 R15 R14
       91 JUMP                             ; [+1]
       92 LOADK                            R12 K16 [{0, 0, 0}]
       93 GETTABLEKS                       R15 R6 K22 ["CFrame"]
       95 GETTABLEKS                       R16 R8 K22 ["CFrame"]
       97 MUL                              R14 R15 R16
       98 GETIMPORT                        R15 K24 [CFrame.new]
      100 MOVE                             R16 R12
      101 CALL                             R15 1 1
      102 MUL                              R13 R14 R15
      103 GETTABLEKS                       R14 R6 K25 ["Position"]
      105 GETTABLEKS                       R14 R14 K26 ["X"]
      107 LOADN                            R15 10000
      108 JUMPIFLT                         R15 R14 ; [+36]
      110 GETTABLEKS                       R14 R6 K25 ["Position"]
      112 GETTABLEKS                       R14 R14 K26 ["X"]
      114 LOADN                            R15 -10000
      115 JUMPIFLT                         R14 R15 ; [+29]
      117 GETTABLEKS                       R14 R6 K25 ["Position"]
      119 GETTABLEKS                       R14 R14 K27 ["Y"]
      121 LOADN                            R15 10000
      122 JUMPIFLT                         R15 R14 ; [+22]
      124 GETTABLEKS                       R14 R6 K25 ["Position"]
      126 GETTABLEKS                       R14 R14 K27 ["Y"]
      128 LOADN                            R15 -10000
      129 JUMPIFLT                         R14 R15 ; [+15]
      131 GETTABLEKS                       R14 R6 K25 ["Position"]
      133 GETTABLEKS                       R14 R14 K28 ["Z"]
      135 LOADN                            R15 10000
      136 JUMPIFLT                         R15 R14 ; [+8]
      138 GETTABLEKS                       R14 R6 K25 ["Position"]
      140 GETTABLEKS                       R14 R14 K28 ["Z"]
      142 LOADN                            R15 -10000
      143 JUMPIFNOTLT                      R14 R15 ; [+12]
      145 GETUPVAL                         R16 7
      146 GETTABLEKS                       R16 R16 K29 ["Keys"]
      148 GETTABLEKS                       R16 R16 K30 ["MeshGeometry_PositionOutOfBounds"]
      150 NEWTABLE                         R17 0 0
      152 NAMECALL                         R14 R0 K31 ["fail"]
      154 CALL                             R14 3 0
      155 RETURN                           R0 0
      156 GETTABLEKS                       R14 R13 K25 ["Position"]
      158 GETTABLEKS                       R14 R14 K26 ["X"]
      160 LOADN                            R15 10000
      161 JUMPIFLT                         R15 R14 ; [+36]
      163 GETTABLEKS                       R14 R13 K25 ["Position"]
      165 GETTABLEKS                       R14 R14 K26 ["X"]
      167 LOADN                            R15 -10000
      168 JUMPIFLT                         R14 R15 ; [+29]
      170 GETTABLEKS                       R14 R13 K25 ["Position"]
      172 GETTABLEKS                       R14 R14 K27 ["Y"]
      174 LOADN                            R15 10000
      175 JUMPIFLT                         R15 R14 ; [+22]
      177 GETTABLEKS                       R14 R13 K25 ["Position"]
      179 GETTABLEKS                       R14 R14 K27 ["Y"]
      181 LOADN                            R15 -10000
      182 JUMPIFLT                         R14 R15 ; [+15]
      184 GETTABLEKS                       R14 R13 K25 ["Position"]
      186 GETTABLEKS                       R14 R14 K28 ["Z"]
      188 LOADN                            R15 10000
      189 JUMPIFLT                         R15 R14 ; [+8]
      191 GETTABLEKS                       R14 R13 K25 ["Position"]
      193 GETTABLEKS                       R14 R14 K28 ["Z"]
      195 LOADN                            R15 -10000
      196 JUMPIFNOTLT                      R14 R15 ; [+12]
      198 GETUPVAL                         R16 7
      199 GETTABLEKS                       R16 R16 K29 ["Keys"]
      201 GETTABLEKS                       R16 R16 K30 ["MeshGeometry_PositionOutOfBounds"]
      203 NEWTABLE                         R17 0 0
      205 NAMECALL                         R14 R0 K31 ["fail"]
      207 CALL                             R14 3 0
      208 RETURN                           R0 0
      209 GETTABLEKS                       R14 R10 K26 ["X"]
      211 GETUPVAL                         R16 8
      212 DIVK                             R15 R16 K32 [1000]
      213 JUMPIFLT                         R14 R15 ; [+13]
      215 GETTABLEKS                       R14 R10 K27 ["Y"]
      217 GETUPVAL                         R16 8
      218 DIVK                             R15 R16 K32 [1000]
      219 JUMPIFLT                         R14 R15 ; [+7]
      221 GETTABLEKS                       R14 R10 K28 ["Z"]
      223 GETUPVAL                         R16 8
      224 DIVK                             R15 R16 K32 [1000]
      225 JUMPIFNOTLT                      R14 R15 ; [+12]
      227 GETUPVAL                         R16 7
      228 GETTABLEKS                       R16 R16 K29 ["Keys"]
      230 GETTABLEKS                       R16 R16 K33 ["MeshGeometry_ScaleTooSmall"]
      232 NEWTABLE                         R17 0 0
      234 NAMECALL                         R14 R0 K31 ["fail"]
      236 CALL                             R14 3 0
      237 RETURN                           R0 0
      238 GETUPVAL                         R14 9
      239 CALL                             R14 0 1
      240 JUMPIFNOT                        R14 ; [+32]
      241 GETTABLEKS                       R14 R10 K26 ["X"]
      243 GETUPVAL                         R16 10
      244 DIVK                             R15 R16 K32 [1000]
      245 JUMPIFLT                         R15 R14 ; [+13]
      247 GETTABLEKS                       R14 R10 K27 ["Y"]
      249 GETUPVAL                         R16 10
      250 DIVK                             R15 R16 K32 [1000]
      251 JUMPIFLT                         R15 R14 ; [+7]
      253 GETTABLEKS                       R14 R10 K28 ["Z"]
      255 GETUPVAL                         R16 10
      256 DIVK                             R15 R16 K32 [1000]
      257 JUMPIFNOTLT                      R15 R14 ; [+15]
      259 GETUPVAL                         R16 7
      260 GETTABLEKS                       R16 R16 K29 ["Keys"]
      262 GETTABLEKS                       R16 R16 K34 ["MeshGeometry_ScaleTooLarge"]
      264 DUPTABLE                         R17 K36 [{"meshName"}]
      265 GETTABLEKS                       R18 R6 K13 ["Name"]
      267 SETTABLEKS                       R18 R17 K35 ["meshName"]
      269 NAMECALL                         R14 R0 K31 ["fail"]
      271 CALL                             R14 3 0
      272 RETURN                           R0 0
      273 GETUPVAL                         R14 11
      274 GETTABLEKS                       R16 R7 K37 ["editable"]
      276 NAMECALL                         R14 R14 K38 ["GetEditableMeshVerts"]
      278 CALL                             R14 2 1
      279 GETIMPORT                        R15 K40 [pairs]
      281 MOVE                             R16 R14
      282 CALL                             R15 1 3
      283 FORGPREP_NEXT                    R15
      284 GETTABLEKS                       R20 R6 K22 ["CFrame"]
      286 MUL                              R22 R19 R10
      287 NAMECALL                         R20 R20 K41 ["PointToWorldSpace"]
      289 CALL                             R20 2 1
      290 GETUPVAL                         R21 12
      291 MOVE                             R22 R20
      292 MOVE                             R23 R13
      293 MOVE                             R24 R11
      294 CALL                             R21 3 1
      295 JUMPIF                           R21 ; [+60]
      296 GETUPVAL                         R23 7
      297 GETTABLEKS                       R23 R23 K29 ["Keys"]
      299 GETTABLEKS                       R23 R23 K42 ["MeshGeometry_ExceedsBounds"]
      301 DUPTABLE                         R24 K47 [{"meshName", "assetTypeName", "maxSizeX", "maxSizeY", "maxSizeZ"}]
      302 GETTABLEKS                       R25 R2 K13 ["Name"]
      304 SETTABLEKS                       R25 R24 K35 ["meshName"]
      306 GETTABLEKS                       R25 R3 K13 ["Name"]
      308 SETTABLEKS                       R25 R24 K43 ["assetTypeName"]
      310 GETIMPORT                        R25 K50 [string.format]
      312 LOADK                            R26 K51 ["%.2f"]
      313 GETTABLEKS                       R28 R11 K26 ["X"]
      315 MULK                             R30 R28 K52 [100]
      316 FASTCALL1                        MATH_FLOOR R30 ; [+2]
      317 GETIMPORT                        R29 K55 [math.floor]
      319 CALL                             R29 1 1
      320 DIVK                             R27 R29 K52 [100]
      321 CALL                             R25 2 1
      322 SETTABLEKS                       R25 R24 K44 ["maxSizeX"]
      324 GETIMPORT                        R25 K50 [string.format]
      326 LOADK                            R26 K51 ["%.2f"]
      327 GETTABLEKS                       R28 R11 K27 ["Y"]
      329 MULK                             R30 R28 K52 [100]
      330 FASTCALL1                        MATH_FLOOR R30 ; [+2]
      331 GETIMPORT                        R29 K55 [math.floor]
      333 CALL                             R29 1 1
      334 DIVK                             R27 R29 K52 [100]
      335 CALL                             R25 2 1
      336 SETTABLEKS                       R25 R24 K45 ["maxSizeY"]
      338 GETIMPORT                        R25 K50 [string.format]
      340 LOADK                            R26 K51 ["%.2f"]
      341 GETTABLEKS                       R28 R11 K28 ["Z"]
      343 MULK                             R30 R28 K52 [100]
      344 FASTCALL1                        MATH_FLOOR R30 ; [+2]
      345 GETIMPORT                        R29 K55 [math.floor]
      347 CALL                             R29 1 1
      348 DIVK                             R27 R29 K52 [100]
      349 CALL                             R25 2 1
      350 SETTABLEKS                       R25 R24 K46 ["maxSizeZ"]
      352 NAMECALL                         R21 R0 K31 ["fail"]
      354 CALL                             R21 3 0
      355 RETURN                           R0 0
      356 FORGLOOP                         R15 2 ; [-73]
      358 GETUPVAL                         R15 13
      359 JUMPIFNOT                        R15 ; [+90]
      360 GETTABLEKS                       R15 R8 K22 ["CFrame"]
      362 GETTABLEKS                       R15 R15 K56 ["Rotation"]
      364 GETTABLEKS                       R17 R6 K57 ["Size"]
      366 MUL                              R16 R15 R17
      367 NAMECALL                         R16 R16 K58 ["Abs"]
      369 CALL                             R16 1 1
      370 GETTABLEKS                       R17 R16 K26 ["X"]
      372 GETTABLEKS                       R18 R11 K26 ["X"]
      374 JUMPIFNOTLE                      R17 R18 ; [+13]
      376 GETTABLEKS                       R17 R16 K27 ["Y"]
      378 GETTABLEKS                       R18 R11 K27 ["Y"]
      380 JUMPIFNOTLE                      R17 R18 ; [+7]
      382 GETTABLEKS                       R17 R16 K28 ["Z"]
      384 GETTABLEKS                       R18 R11 K28 ["Z"]
      386 JUMPIFLE                         R17 R18 ; [+148]
      388 GETUPVAL                         R19 7
      389 GETTABLEKS                       R19 R19 K29 ["Keys"]
      391 GETTABLEKS                       R19 R19 K42 ["MeshGeometry_ExceedsBounds"]
      393 DUPTABLE                         R20 K47 [{"meshName", "assetTypeName", "maxSizeX", "maxSizeY", "maxSizeZ"}]
      394 NAMECALL                         R21 R6 K59 ["GetFullName"]
      396 CALL                             R21 1 1
      397 SETTABLEKS                       R21 R20 K35 ["meshName"]
      399 GETTABLEKS                       R21 R3 K13 ["Name"]
      401 SETTABLEKS                       R21 R20 K43 ["assetTypeName"]
      403 GETIMPORT                        R21 K50 [string.format]
      405 LOADK                            R22 K51 ["%.2f"]
      406 GETTABLEKS                       R24 R11 K26 ["X"]
      408 MULK                             R26 R24 K52 [100]
      409 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      410 GETIMPORT                        R25 K55 [math.floor]
      412 CALL                             R25 1 1
      413 DIVK                             R23 R25 K52 [100]
      414 CALL                             R21 2 1
      415 SETTABLEKS                       R21 R20 K44 ["maxSizeX"]
      417 GETIMPORT                        R21 K50 [string.format]
      419 LOADK                            R22 K51 ["%.2f"]
      420 GETTABLEKS                       R24 R11 K27 ["Y"]
      422 MULK                             R26 R24 K52 [100]
      423 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      424 GETIMPORT                        R25 K55 [math.floor]
      426 CALL                             R25 1 1
      427 DIVK                             R23 R25 K52 [100]
      428 CALL                             R21 2 1
      429 SETTABLEKS                       R21 R20 K45 ["maxSizeY"]
      431 GETIMPORT                        R21 K50 [string.format]
      433 LOADK                            R22 K51 ["%.2f"]
      434 GETTABLEKS                       R24 R11 K28 ["Z"]
      436 MULK                             R26 R24 K52 [100]
      437 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      438 GETIMPORT                        R25 K55 [math.floor]
      440 CALL                             R25 1 1
      441 DIVK                             R23 R25 K52 [100]
      442 CALL                             R21 2 1
      443 SETTABLEKS                       R21 R20 K46 ["maxSizeZ"]
      445 NAMECALL                         R17 R0 K31 ["fail"]
      447 CALL                             R17 3 0
      448 RETURN                           R0 0
      449 JUMP                             ; [+85]
      450 GETTABLEKS                       R15 R6 K57 ["Size"]
      452 GETTABLEKS                       R15 R15 K26 ["X"]
      454 GETTABLEKS                       R16 R11 K26 ["X"]
      456 JUMPIFNOTLE                      R15 R16 ; [+17]
      458 GETTABLEKS                       R15 R6 K57 ["Size"]
      460 GETTABLEKS                       R15 R15 K27 ["Y"]
      462 GETTABLEKS                       R16 R11 K27 ["Y"]
      464 JUMPIFNOTLE                      R15 R16 ; [+9]
      466 GETTABLEKS                       R15 R6 K57 ["Size"]
      468 GETTABLEKS                       R15 R15 K28 ["Z"]
      470 GETTABLEKS                       R16 R11 K28 ["Z"]
      472 JUMPIFLE                         R15 R16 ; [+62]
      474 GETUPVAL                         R17 7
      475 GETTABLEKS                       R17 R17 K29 ["Keys"]
      477 GETTABLEKS                       R17 R17 K42 ["MeshGeometry_ExceedsBounds"]
      479 DUPTABLE                         R18 K47 [{"meshName", "assetTypeName", "maxSizeX", "maxSizeY", "maxSizeZ"}]
      480 NAMECALL                         R19 R6 K59 ["GetFullName"]
      482 CALL                             R19 1 1
      483 SETTABLEKS                       R19 R18 K35 ["meshName"]
      485 GETTABLEKS                       R19 R3 K13 ["Name"]
      487 SETTABLEKS                       R19 R18 K43 ["assetTypeName"]
      489 GETIMPORT                        R19 K50 [string.format]
      491 LOADK                            R20 K51 ["%.2f"]
      492 GETTABLEKS                       R22 R11 K26 ["X"]
      494 MULK                             R24 R22 K52 [100]
      495 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      496 GETIMPORT                        R23 K55 [math.floor]
      498 CALL                             R23 1 1
      499 DIVK                             R21 R23 K52 [100]
      500 CALL                             R19 2 1
      501 SETTABLEKS                       R19 R18 K44 ["maxSizeX"]
      503 GETIMPORT                        R19 K50 [string.format]
      505 LOADK                            R20 K51 ["%.2f"]
      506 GETTABLEKS                       R22 R11 K27 ["Y"]
      508 MULK                             R24 R22 K52 [100]
      509 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      510 GETIMPORT                        R23 K55 [math.floor]
      512 CALL                             R23 1 1
      513 DIVK                             R21 R23 K52 [100]
      514 CALL                             R19 2 1
      515 SETTABLEKS                       R19 R18 K45 ["maxSizeY"]
      517 GETIMPORT                        R19 K50 [string.format]
      519 LOADK                            R20 K51 ["%.2f"]
      520 GETTABLEKS                       R22 R11 K28 ["Z"]
      522 MULK                             R24 R22 K52 [100]
      523 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      524 GETIMPORT                        R23 K55 [math.floor]
      526 CALL                             R23 1 1
      527 DIVK                             R21 R23 K52 [100]
      528 CALL                             R19 2 1
      529 SETTABLEKS                       R19 R18 K46 ["maxSizeZ"]
      531 NAMECALL                         R15 R0 K31 ["fail"]
      533 CALL                             R15 3 0
      534 RETURN                           R0 0
      535 GETTABLEKS                       R16 R1 K3 ["consumerConfig"]
      537 GETTABLEKS                       R16 R16 K4 ["consumerEnv"]
      539 GETUPVAL                         R17 0
      540 GETTABLEKS                       R17 R17 K5 ["ConsumerEnv"]
      542 GETTABLEKS                       R17 R17 K60 ["IEC"]
      544 JUMPIFEQ                         R16 R17 ; [+2]
      546 LOADB                            R15 0 +1
      547 LOADB                            R15 1
      548 JUMPIF                           R15 ; [+59]
      549 DUPTABLE                         R16 K66 [{["fullName"], ["fieldName"] = "MeshId", ["editableMesh"], ["scale"], ["context"]}]
      550 NAMECALL                         R17 R6 K59 ["GetFullName"]
      552 CALL                             R17 1 1
      553 SETTABLEKS                       R17 R16 K61 ["fullName"]
      555 GETTABLEKS                       R17 R7 K37 ["editable"]
      557 SETTABLEKS                       R17 R16 K64 ["editableMesh"]
      559 SETTABLEKS                       R10 R16 K14 ["scale"]
      561 GETTABLEKS                       R17 R2 K13 ["Name"]
      563 SETTABLEKS                       R17 R16 K65 ["context"]
      565 DUPTABLE                         R17 K70 [{["isServer"], ["shouldYield"] = False}]
      566 SETTABLEKS                       R4 R17 K67 ["isServer"]
      568 GETUPVAL                         R18 14
      569 MOVE                             R19 R16
      570 MOVE                             R20 R17
      571 CALL                             R18 2 4
      572 JUMPIF                           R18 ; [+10]
      573 GETIMPORT                        R24 K50 [string.format]
      575 LOADK                            R25 K71 ["Failed to compute mesh min/max for %s"]
      576 NAMECALL                         R26 R6 K59 ["GetFullName"]
      578 CALL                             R26 1 -1
      579 CALL                             R24 -1 -1
      580 NAMECALL                         R22 R0 K72 ["fetchError"]
      582 CALL                             R22 -1 0
      583 JUMPIFNOT                        R20 ; [+24]
      584 JUMPIFNOT                        R21 ; [+23]
      585 ADD                              R23 R20 R21
      586 DIVK                             R22 R23 K73 [2]
      587 GETUPVAL                         R24 15
      588 CALL                             R24 0 1
      589 DIVK                             R23 R24 K52 [100]
      590 GETTABLEKS                       R24 R22 K74 ["Magnitude"]
      592 JUMPIFNOTLT                      R23 R24 ; [+15]
      594 GETUPVAL                         R26 7
      595 GETTABLEKS                       R26 R26 K29 ["Keys"]
      597 GETTABLEKS                       R26 R26 K75 ["MeshGeometry_NotCentered"]
      599 DUPTABLE                         R27 K76 [{["meshName"], ["fieldName"] = "MeshId"}]
      600 NAMECALL                         R28 R6 K59 ["GetFullName"]
      602 CALL                             R28 1 1
      603 SETTABLEKS                       R28 R27 K35 ["meshName"]
      605 NAMECALL                         R24 R0 K31 ["fail"]
      607 CALL                             R24 3 0
      608 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K10 ["util"]
       24 GETTABLEKS                       R4 R4 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["validationSystem"]
       31 GETTABLEKS                       R5 R5 K13 ["ValidationEnums"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K12 ["validationSystem"]
       38 GETTABLEKS                       R6 R6 K14 ["ErrorSourceStrings"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R1 K10 ["util"]
       45 GETTABLEKS                       R7 R7 K15 ["getAccessoryScale"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K8 [require]
       50 GETTABLEKS                       R8 R1 K10 ["util"]
       52 GETTABLEKS                       R8 R8 K16 ["getAttachment"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K8 [require]
       57 GETTABLEKS                       R9 R1 K10 ["util"]
       59 GETTABLEKS                       R9 R9 K17 ["getMeshMinMax"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K8 [require]
       64 GETTABLEKS                       R10 R1 K10 ["util"]
       66 GETTABLEKS                       R10 R10 K18 ["isMeshPartAccessory"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K8 [require]
       71 GETTABLEKS                       R11 R1 K19 ["flags"]
       73 GETTABLEKS                       R11 R11 K20 ["getFFlagUGCValidateMeshMaxScale"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K8 [require]
       78 GETTABLEKS                       R12 R1 K19 ["flags"]
       80 GETTABLEKS                       R12 R12 K21 ["getFIntUGCValidateMeshCenteringHundredsThreshold"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K8 [require]
       85 GETTABLEKS                       R13 R1 K19 ["flags"]
       87 GETTABLEKS                       R13 R13 K22 ["getFFlagUGCValidateMigrateMeshGeometry"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K1 [game]
       92 LOADK                            R15 K23 ["LegacyAccessoryCheckAvatarPartScaleType"]
       93 LOADB                            R16 0
       94 NAMECALL                         R13 R13 K24 ["DefineFastFlag"]
       96 CALL                             R13 3 1
       97 GETIMPORT                        R14 K1 [game]
       99 LOADK                            R16 K25 ["MeshpartAccessoryCheckAvatarPartScaleType"]
      100 LOADB                            R17 0
      101 NAMECALL                         R14 R14 K24 ["DefineFastFlag"]
      103 CALL                             R14 3 1
      104 GETIMPORT                        R15 K1 [game]
      106 LOADK                            R17 K26 ["UGCValidationScaleMinimumThousandths"]
      107 LOADN                            R18 10
      108 NAMECALL                         R15 R15 K27 ["DefineFastInt"]
      110 CALL                             R15 3 1
      111 GETIMPORT                        R16 K1 [game]
      113 LOADK                            R18 K28 ["FIntUGCValidationScaleMaximumThousandths"]
      114 LOADN                            R19 10000
      115 NAMECALL                         R16 R16 K27 ["DefineFastInt"]
      117 CALL                             R16 3 1
      118 GETIMPORT                        R17 K1 [game]
      120 LOADK                            R19 K29 ["RenderBoundsCheckAttachmentOrientation"]
      121 LOADB                            R20 0
      122 NAMECALL                         R17 R17 K24 ["DefineFastFlag"]
      124 CALL                             R17 3 1
      125 NEWTABLE                         R18 8 0
      127 SETTABLEKS                       R12 R18 K30 ["fflag"]
      129 NEWTABLE                         R19 0 2
      131 GETTABLEKS                       R20 R4 K31 ["UploadCategory"]
      133 GETTABLEKS                       R20 R20 K32 ["LAYERED_CLOTHING"]
      135 GETTABLEKS                       R21 R4 K31 ["UploadCategory"]
      137 GETTABLEKS                       R21 R21 K33 ["RIGID_ACCESSORY"]
      139 SETLIST                          R19 R20 2 [1]
      141 SETTABLEKS                       R19 R18 K34 ["categories"]
      143 NEWTABLE                         R19 0 1
      145 GETTABLEKS                       R20 R4 K35 ["SharedDataMember"]
      147 GETTABLEKS                       R20 R20 K36 ["renderMeshesData"]
      149 SETLIST                          R19 R20 1 [1]
      151 SETTABLEKS                       R19 R18 K37 ["requiredData"]
      153 NEWTABLE                         R19 0 0
      155 SETTABLEKS                       R19 R18 K38 ["expectedFailures"]
      157 DUPCLOSURE                       R19 K39 [PROTO_0]
      158 DUPCLOSURE                       R20 K40 [PROTO_1]
      159 DUPCLOSURE                       R21 K41 [PROTO_2]
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R11
      176 SETTABLEKS                       R21 R18 K42 ["run"]
      178 RETURN                           R18 1
