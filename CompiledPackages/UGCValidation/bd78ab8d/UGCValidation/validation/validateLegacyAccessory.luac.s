PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["instances"]
        2 GETTABLEKS                       R2 R0 K1 ["assetTypeEnum"]
        4 GETTABLEKS                       R3 R0 K2 ["isServer"]
        6 GETTABLEKS                       R4 R0 K3 ["allowUnreviewedAssets"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["isRigidAccessoryAllowed"]
       11 MOVE                             R6 R2
       12 CALL                             R5 1 1
       13 JUMPIF                           R5 ; [+23]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K5 ["reportFailure"]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K6 ["ErrorType"]
       20 GETTABLEKS                       R6 R7 K7 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
       22 LOADNIL                          R7
       23 MOVE                             R8 R0
       24 CALL                             R5 3 0
       25 LOADB                            R5 0
       26 NEWTABLE                         R6 0 1
       28 GETIMPORT                        R7 K10 [string.format]
       30 LOADK                            R8 K11 ["Asset type '%s' is not a rigid accessory category. It can only be used with layered clothing."]
       31 GETTABLEKS                       R9 R2 K12 ["Name"]
       33 CALL                             R7 2 -1
       34 SETLIST                          R6 R7 -1 [1]
       36 RETURN                           R5 2
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R6 R7 K13 ["ASSET_TYPE_INFO"]
       40 GETTABLE                         R5 R6 R2
       41 LOADNIL                          R6
       42 LOADNIL                          R7
       43 GETUPVAL                         R8 3
       44 MOVE                             R9 R1
       45 MOVE                             R10 R0
       46 CALL                             R8 2 2
       47 MOVE                             R6 R8
       48 MOVE                             R7 R9
       49 JUMPIF                           R6 ; [+3]
       50 LOADB                            R8 0
       51 MOVE                             R9 R7
       52 RETURN                           R8 2
       53 GETTABLEN                        R8 R1 1
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R10 R5 K14 ["attachmentNames"]
       57 CALL                             R9 1 1
       58 GETUPVAL                         R10 5
       59 MOVE                             R11 R9
       60 MOVE                             R12 R8
       61 MOVE                             R13 R0
       62 CALL                             R10 3 2
       63 MOVE                             R6 R10
       64 MOVE                             R7 R11
       65 JUMPIF                           R6 ; [+3]
       66 LOADB                            R10 0
       67 MOVE                             R11 R7
       68 RETURN                           R10 2
       69 GETUPVAL                         R10 6
       70 CALL                             R10 0 1
       71 JUMPIFNOT                        R10 ; [+12]
       72 GETUPVAL                         R11 7
       73 GETTABLEKS                       R10 R11 K15 ["validate"]
       75 MOVE                             R11 R8
       76 MOVE                             R12 R0
       77 CALL                             R10 2 2
       78 MOVE                             R6 R10
       79 MOVE                             R7 R11
       80 JUMPIF                           R6 ; [+3]
       81 LOADB                            R10 0
       82 MOVE                             R11 R7
       83 RETURN                           R10 2
       84 GETUPVAL                         R10 8
       85 MOVE                             R11 R8
       86 MOVE                             R12 R0
       87 CALL                             R10 2 2
       88 MOVE                             R6 R10
       89 MOVE                             R7 R11
       90 JUMPIF                           R6 ; [+3]
       91 LOADB                            R10 0
       92 MOVE                             R11 R7
       93 RETURN                           R10 2
       94 LOADK                            R12 K16 ["Handle"]
       95 NAMECALL                         R10 R8 K17 ["FindFirstChild"]
       97 CALL                             R10 2 1
       98 LOADK                            R13 K18 ["SpecialMesh"]
       99 NAMECALL                         R11 R10 K19 ["FindFirstChildOfClass"]
      101 CALL                             R11 2 1
      102 DUPTABLE                         R12 K24 [{"fullName", "fieldName", "contentId", "context"}]
      103 NAMECALL                         R13 R11 K25 ["GetFullName"]
      105 CALL                             R13 1 1
      106 SETTABLEKS                       R13 R12 K20 ["fullName"]
      108 LOADK                            R13 K26 ["MeshId"]
      109 SETTABLEKS                       R13 R12 K21 ["fieldName"]
      111 GETTABLEKS                       R13 R11 K26 ["MeshId"]
      113 SETTABLEKS                       R13 R12 K22 ["contentId"]
      115 GETTABLEKS                       R13 R8 K12 ["Name"]
      117 SETTABLEKS                       R13 R12 K23 ["context"]
      119 GETTABLEKS                       R13 R11 K27 ["Scale"]
      121 GETUPVAL                         R14 9
      122 MOVE                             R15 R10
      123 GETTABLEKS                       R16 R5 K14 ["attachmentNames"]
      125 CALL                             R14 2 1
      126 GETTABLEKS                       R17 R5 K28 ["bounds"]
      128 GETTABLEKS                       R18 R14 K12 ["Name"]
      130 GETTABLE                         R16 R17 R18
      131 LOADK                            R18 K29 ["Could not find bounds for "]
      132 GETTABLEKS                       R19 R14 K12 ["Name"]
      134 CONCAT                           R17 R18 R19
      135 FASTCALL2                        ASSERT R16 R17 ; [+3]
      137 GETIMPORT                        R15 K31 [assert]
      139 CALL                             R15 2 1
      140 LOADB                            R16 1
      141 NEWTABLE                         R7 0 0
      143 LOADB                            R17 0
      144 GETTABLEKS                       R18 R12 K22 ["contentId"]
      146 JUMPIFEQKNIL                     R18 ; [+7]
      148 GETTABLEKS                       R18 R12 K22 ["contentId"]
      150 JUMPIFNOTEQKS                    R18 K32 [""] ; [+2]
      152 LOADB                            R17 0 +1
      153 LOADB                            R17 1
      154 GETUPVAL                         R18 10
      155 MOVE                             R19 R11
      156 LOADK                            R20 K26 ["MeshId"]
      157 MOVE                             R21 R0
      158 CALL                             R18 3 2
      159 JUMPIF                           R18 ; [+34]
      160 GETTABLEKS                       R20 R12 K22 ["contentId"]
      162 JUMPIF                           R20 ; [+19]
      163 LOADB                            R17 0
      164 LOADB                            R16 0
      165 NEWTABLE                         R22 0 1
      167 GETIMPORT                        R23 K10 [string.format]
      169 LOADK                            R24 K33 ["Missing meshId on legacy accessory '%s'. Make sure you are using a valid meshId and try again.\n"]
      170 GETTABLEKS                       R25 R8 K12 ["Name"]
      172 CALL                             R23 2 -1
      173 SETLIST                          R22 R23 -1 [1]
      175 FASTCALL2                        TABLE_INSERT R7 R22 ; [+4]
      177 MOVE                             R21 R7
      178 GETIMPORT                        R20 K36 [table.insert]
      180 CALL                             R20 2 0
      181 JUMP                             ; [+12]
      182 LOADB                            R20 0
      183 NEWTABLE                         R21 0 1
      185 GETIMPORT                        R22 K10 [string.format]
      187 LOADK                            R23 K37 ["Failed to load mesh for legacy accessory '%s'. Make sure mesh exists and try again."]
      188 GETTABLEKS                       R24 R8 K12 ["Name"]
      190 CALL                             R22 2 -1
      191 SETLIST                          R21 R22 -1 [1]
      193 RETURN                           R20 2
      194 SETTABLEKS                       R19 R12 K38 ["editableMesh"]
      196 LOADB                            R17 1
      197 DUPTABLE                         R20 K39 [{"fullName", "fieldName", "contentId"}]
      198 NAMECALL                         R21 R11 K25 ["GetFullName"]
      200 CALL                             R21 1 1
      201 SETTABLEKS                       R21 R20 K20 ["fullName"]
      203 LOADK                            R21 K40 ["TextureId"]
      204 SETTABLEKS                       R21 R20 K21 ["fieldName"]
      206 GETTABLEKS                       R21 R11 K40 ["TextureId"]
      208 SETTABLEKS                       R21 R20 K22 ["contentId"]
      210 GETUPVAL                         R21 11
      211 MOVE                             R22 R11
      212 LOADK                            R23 K40 ["TextureId"]
      213 MOVE                             R24 R0
      214 CALL                             R21 3 2
      215 JUMPIF                           R21 ; [+12]
      216 LOADB                            R23 0
      217 NEWTABLE                         R24 0 1
      219 GETIMPORT                        R25 K10 [string.format]
      221 LOADK                            R26 K41 ["Failed to load texture for legacy accessory '%s'. Make sure texture exists and try again."]
      222 GETTABLEKS                       R27 R8 K12 ["Name"]
      224 CALL                             R25 2 -1
      225 SETLIST                          R24 R25 -1 [1]
      227 RETURN                           R23 2
      228 SETTABLEKS                       R22 R20 K42 ["editableImage"]
      230 NEWTABLE                         R23 0 0
      232 GETUPVAL                         R24 12
      233 MOVE                             R25 R8
      234 MOVE                             R26 R0
      235 CALL                             R24 2 2
      236 MOVE                             R6 R24
      237 MOVE                             R23 R25
      238 JUMPIF                           R6 ; [+11]
      239 MOVE                             R25 R7
      240 GETIMPORT                        R26 K44 [table.concat]
      242 MOVE                             R27 R23
      243 LOADK                            R28 K45 ["\n"]
      244 CALL                             R26 2 -1
      245 FASTCALL                         TABLE_INSERT ; [+2]
      246 GETIMPORT                        R24 K36 [table.insert]
      248 CALL                             R24 -1 0
      249 LOADB                            R16 0
      250 GETUPVAL                         R24 13
      251 MOVE                             R25 R8
      252 LOADNIL                          R26
      253 MOVE                             R27 R0
      254 CALL                             R24 3 2
      255 MOVE                             R6 R24
      256 MOVE                             R23 R25
      257 JUMPIF                           R6 ; [+11]
      258 MOVE                             R25 R7
      259 GETIMPORT                        R26 K44 [table.concat]
      261 MOVE                             R27 R23
      262 LOADK                            R28 K45 ["\n"]
      263 CALL                             R26 2 -1
      264 FASTCALL                         TABLE_INSERT ; [+2]
      265 GETIMPORT                        R24 K36 [table.insert]
      267 CALL                             R24 -1 0
      268 LOADB                            R16 0
      269 GETUPVAL                         R24 14
      270 MOVE                             R25 R8
      271 MOVE                             R26 R0
      272 CALL                             R24 2 2
      273 MOVE                             R6 R24
      274 MOVE                             R23 R25
      275 JUMPIF                           R6 ; [+11]
      276 MOVE                             R25 R7
      277 GETIMPORT                        R26 K44 [table.concat]
      279 MOVE                             R27 R23
      280 LOADK                            R28 K45 ["\n"]
      281 CALL                             R26 2 -1
      282 FASTCALL                         TABLE_INSERT ; [+2]
      283 GETIMPORT                        R24 K36 [table.insert]
      285 CALL                             R24 -1 0
      286 LOADB                            R16 0
      287 GETUPVAL                         R24 15
      288 MOVE                             R25 R8
      289 MOVE                             R26 R0
      290 CALL                             R24 2 2
      291 MOVE                             R6 R24
      292 MOVE                             R23 R25
      293 JUMPIF                           R6 ; [+11]
      294 MOVE                             R25 R7
      295 GETIMPORT                        R26 K44 [table.concat]
      297 MOVE                             R27 R23
      298 LOADK                            R28 K45 ["\n"]
      299 CALL                             R26 2 -1
      300 FASTCALL                         TABLE_INSERT ; [+2]
      301 GETIMPORT                        R24 K36 [table.insert]
      303 CALL                             R24 -1 0
      304 LOADB                            R16 0
      305 LOADNIL                          R24
      306 GETUPVAL                         R25 16
      307 CALL                             R25 0 1
      308 JUMPIFNOT                        R25 ; [+9]
      309 GETUPVAL                         R26 17
      310 GETTABLEKS                       R25 R26 K46 ["getTextureLimit"]
      312 MOVE                             R26 R2
      313 MOVE                             R27 R11
      314 GETTABLEKS                       R28 R20 K21 ["fieldName"]
      316 CALL                             R25 3 1
      317 MOVE                             R24 R25
      318 GETUPVAL                         R25 18
      319 MOVE                             R26 R20
      320 LOADNIL                          R27
      321 MOVE                             R28 R0
      322 MOVE                             R29 R24
      323 CALL                             R25 4 2
      324 MOVE                             R6 R25
      325 MOVE                             R23 R26
      326 JUMPIF                           R6 ; [+11]
      327 MOVE                             R26 R7
      328 GETIMPORT                        R27 K44 [table.concat]
      330 MOVE                             R28 R23
      331 LOADK                            R29 K45 ["\n"]
      332 CALL                             R27 2 -1
      333 FASTCALL                         TABLE_INSERT ; [+2]
      334 GETIMPORT                        R25 K36 [table.insert]
      336 CALL                             R25 -1 0
      337 LOADB                            R16 0
      338 LOADK                            R27 K47 ["AvatarPartScaleType"]
      339 NAMECALL                         R25 R10 K17 ["FindFirstChild"]
      341 CALL                             R25 2 1
      342 JUMPIFNOT                        R25 ; [+23]
      343 LOADK                            R28 K48 ["StringValue"]
      344 NAMECALL                         R26 R25 K49 ["IsA"]
      346 CALL                             R26 2 1
      347 JUMPIFNOT                        R26 ; [+18]
      348 GETUPVAL                         R26 19
      349 MOVE                             R27 R25
      350 MOVE                             R28 R0
      351 CALL                             R26 2 2
      352 MOVE                             R6 R26
      353 MOVE                             R23 R27
      354 JUMPIF                           R6 ; [+11]
      355 MOVE                             R27 R7
      356 GETIMPORT                        R28 K44 [table.concat]
      358 MOVE                             R29 R23
      359 LOADK                            R30 K45 ["\n"]
      360 CALL                             R28 2 -1
      361 FASTCALL                         TABLE_INSERT ; [+2]
      362 GETIMPORT                        R26 K36 [table.insert]
      364 CALL                             R26 -1 0
      365 LOADB                            R16 0
      366 GETUPVAL                         R26 20
      367 MOVE                             R27 R8
      368 MOVE                             R28 R10
      369 MOVE                             R29 R12
      370 MOVE                             R30 R13
      371 MOVE                             R31 R0
      372 CALL                             R26 5 2
      373 MOVE                             R6 R26
      374 MOVE                             R23 R27
      375 JUMPIF                           R6 ; [+11]
      376 MOVE                             R27 R7
      377 GETIMPORT                        R28 K44 [table.concat]
      379 MOVE                             R29 R23
      380 LOADK                            R30 K45 ["\n"]
      381 CALL                             R28 2 -1
      382 FASTCALL                         TABLE_INSERT ; [+2]
      383 GETIMPORT                        R26 K36 [table.insert]
      385 CALL                             R26 -1 0
      386 LOADB                            R16 0
      387 NOT                              R26 R3
      388 JUMPIFNOT                        R4 ; [+1]
      389 LOADB                            R26 0
      390 JUMPIFNOT                        R26 ; [+20]
      391 GETUPVAL                         R27 21
      392 MOVE                             R28 R8
      393 NEWTABLE                         R29 0 0
      395 MOVE                             R30 R0
      396 CALL                             R27 3 2
      397 MOVE                             R6 R27
      398 MOVE                             R23 R28
      399 JUMPIF                           R6 ; [+11]
      400 MOVE                             R28 R7
      401 GETIMPORT                        R29 K44 [table.concat]
      403 MOVE                             R30 R23
      404 LOADK                            R31 K45 ["\n"]
      405 CALL                             R29 2 -1
      406 FASTCALL                         TABLE_INSERT ; [+2]
      407 GETIMPORT                        R27 K36 [table.insert]
      409 CALL                             R27 -1 0
      410 LOADB                            R16 0
      411 JUMPIFNOT                        R17 ; [+150]
      412 GETUPVAL                         R27 22
      413 MOVE                             R28 R12
      414 MOVE                             R29 R13
      415 MOVE                             R30 R0
      416 CALL                             R27 3 2
      417 MOVE                             R6 R27
      418 MOVE                             R23 R28
      419 JUMPIF                           R6 ; [+11]
      420 MOVE                             R28 R7
      421 GETIMPORT                        R29 K44 [table.concat]
      423 MOVE                             R30 R23
      424 LOADK                            R31 K45 ["\n"]
      425 CALL                             R29 2 -1
      426 FASTCALL                         TABLE_INSERT ; [+2]
      427 GETIMPORT                        R27 K36 [table.insert]
      429 CALL                             R27 -1 0
      430 LOADB                            R16 0
      431 GETUPVAL                         R27 23
      432 JUMPIFNOT                        R27 ; [+26]
      433 LOADK                            R29 K47 ["AvatarPartScaleType"]
      434 NAMECALL                         R27 R10 K17 ["FindFirstChild"]
      436 CALL                             R27 2 1
      437 JUMPIFNOT                        R27 ; [+21]
      438 GETUPVAL                         R27 24
      439 MOVE                             R28 R10
      440 MOVE                             R29 R14
      441 CALL                             R27 2 1
      442 DUPTABLE                         R28 K52 [{"size", "offset"}]
      443 GETTABLEKS                       R30 R15 K50 ["size"]
      445 DIV                              R29 R30 R27
      446 SETTABLEKS                       R29 R28 K50 ["size"]
      448 GETTABLEKS                       R30 R15 K51 ["offset"]
      450 JUMPIFNOT                        R30 ; [+4]
      451 GETTABLEKS                       R30 R15 K51 ["offset"]
      453 DIV                              R29 R30 R27
      454 JUMP                             ; [+1]
      455 LOADNIL                          R29
      456 SETTABLEKS                       R29 R28 K51 ["offset"]
      458 MOVE                             R15 R28
      459 GETUPVAL                         R27 25
      460 MOVE                             R28 R10
      461 MOVE                             R29 R14
      462 MOVE                             R30 R12
      463 MOVE                             R31 R13
      464 MOVE                             R32 R15
      465 GETTABLEKS                       R33 R2 K12 ["Name"]
      467 MOVE                             R34 R0
      468 CALL                             R27 7 2
      469 MOVE                             R6 R27
      470 MOVE                             R23 R28
      471 JUMPIF                           R6 ; [+11]
      472 MOVE                             R28 R7
      473 GETIMPORT                        R29 K44 [table.concat]
      475 MOVE                             R30 R23
      476 LOADK                            R31 K45 ["\n"]
      477 CALL                             R29 2 -1
      478 FASTCALL                         TABLE_INSERT ; [+2]
      479 GETIMPORT                        R27 K36 [table.insert]
      481 CALL                             R27 -1 0
      482 LOADB                            R16 0
      483 GETUPVAL                         R27 26
      484 MOVE                             R28 R12
      485 LOADNIL                          R29
      486 MOVE                             R30 R0
      487 CALL                             R27 3 2
      488 MOVE                             R6 R27
      489 MOVE                             R23 R28
      490 JUMPIF                           R6 ; [+11]
      491 MOVE                             R28 R7
      492 GETIMPORT                        R29 K44 [table.concat]
      494 MOVE                             R30 R23
      495 LOADK                            R31 K45 ["\n"]
      496 CALL                             R29 2 -1
      497 FASTCALL                         TABLE_INSERT ; [+2]
      498 GETIMPORT                        R27 K36 [table.insert]
      500 CALL                             R27 -1 0
      501 LOADB                            R16 0
      502 GETUPVAL                         R27 27
      503 MOVE                             R28 R12
      504 LOADB                            R29 0
      505 MOVE                             R30 R0
      506 CALL                             R27 3 2
      507 MOVE                             R6 R27
      508 MOVE                             R23 R28
      509 JUMPIF                           R6 ; [+11]
      510 MOVE                             R28 R7
      511 GETIMPORT                        R29 K44 [table.concat]
      513 MOVE                             R30 R23
      514 LOADK                            R31 K45 ["\n"]
      515 CALL                             R29 2 -1
      516 FASTCALL                         TABLE_INSERT ; [+2]
      517 GETIMPORT                        R27 K36 [table.insert]
      519 CALL                             R27 -1 0
      520 LOADB                            R16 0
      521 GETUPVAL                         R27 28
      522 MOVE                             R28 R12
      523 MOVE                             R29 R13
      524 MOVE                             R30 R0
      525 CALL                             R27 3 2
      526 MOVE                             R6 R27
      527 MOVE                             R23 R28
      528 JUMPIF                           R6 ; [+11]
      529 MOVE                             R28 R7
      530 GETIMPORT                        R29 K44 [table.concat]
      532 MOVE                             R30 R23
      533 LOADK                            R31 K45 ["\n"]
      534 CALL                             R29 2 -1
      535 FASTCALL                         TABLE_INSERT ; [+2]
      536 GETIMPORT                        R27 K36 [table.insert]
      538 CALL                             R27 -1 0
      539 LOADB                            R16 0
      540 GETUPVAL                         R27 29
      541 CALL                             R27 0 1
      542 JUMPIFNOT                        R27 ; [+19]
      543 GETUPVAL                         R27 30
      544 GETTABLEKS                       R28 R12 K22 ["contentId"]
      546 MOVE                             R29 R0
      547 CALL                             R27 2 2
      548 MOVE                             R6 R27
      549 MOVE                             R23 R28
      550 JUMPIF                           R6 ; [+11]
      551 MOVE                             R28 R7
      552 GETIMPORT                        R29 K44 [table.concat]
      554 MOVE                             R30 R23
      555 LOADK                            R31 K45 ["\n"]
      556 CALL                             R29 2 -1
      557 FASTCALL                         TABLE_INSERT ; [+2]
      558 GETIMPORT                        R27 K36 [table.insert]
      560 CALL                             R27 -1 0
      561 LOADB                            R16 0
      562 MOVE                             R27 R16
      563 MOVE                             R28 R7
      564 RETURN                           R27 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Analytics"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Constants"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K9 ["ConstantsInterface"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R7 R0 K10 ["validation"]
       33 GETTABLEKS                       R6 R7 K11 ["validateCoplanarIntersection"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R8 R0 K10 ["validation"]
       40 GETTABLEKS                       R7 R8 K12 ["validateInstanceTree"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R9 R0 K10 ["validation"]
       47 GETTABLEKS                       R8 R9 K13 ["validateMeshTriangles"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K4 [require]
       52 GETTABLEKS                       R10 R0 K10 ["validation"]
       54 GETTABLEKS                       R9 R10 K14 ["validateModeration"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K4 [require]
       59 GETTABLEKS                       R11 R0 K10 ["validation"]
       61 GETTABLEKS                       R10 R11 K15 ["validateMaterials"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K4 [require]
       66 GETTABLEKS                       R12 R0 K10 ["validation"]
       68 GETTABLEKS                       R11 R12 K16 ["validateTags"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K4 [require]
       73 GETTABLEKS                       R13 R0 K10 ["validation"]
       75 GETTABLEKS                       R12 R13 K17 ["validateMeshBounds"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R14 R0 K10 ["validation"]
       82 GETTABLEKS                       R13 R14 K18 ["validateTextureSize"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K4 [require]
       87 GETTABLEKS                       R15 R0 K10 ["validation"]
       89 GETTABLEKS                       R14 R15 K19 ["validatePropertyRequirements"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R16 R0 K10 ["validation"]
       96 GETTABLEKS                       R15 R16 K20 ["validateAttributes"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K4 [require]
      101 GETTABLEKS                       R17 R0 K10 ["validation"]
      103 GETTABLEKS                       R16 R17 K21 ["validateMeshVertColors"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K4 [require]
      108 GETTABLEKS                       R18 R0 K10 ["validation"]
      110 GETTABLEKS                       R17 R18 K22 ["validateSingleInstance"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K4 [require]
      115 GETTABLEKS                       R19 R0 K10 ["validation"]
      117 GETTABLEKS                       R18 R19 K23 ["validateThumbnailConfiguration"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K4 [require]
      122 GETTABLEKS                       R20 R0 K10 ["validation"]
      124 GETTABLEKS                       R19 R20 K24 ["validateScaleType"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K4 [require]
      129 GETTABLEKS                       R21 R0 K10 ["validation"]
      131 GETTABLEKS                       R20 R21 K25 ["validateTotalSurfaceArea"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K4 [require]
      136 GETTABLEKS                       R22 R0 K10 ["validation"]
      138 GETTABLEKS                       R21 R22 K26 ["validateRigidMeshNotSkinned"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K4 [require]
      143 GETTABLEKS                       R23 R0 K10 ["validation"]
      145 GETTABLEKS                       R22 R23 K27 ["validateDependencies"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K4 [require]
      150 GETTABLEKS                       R24 R0 K10 ["validation"]
      152 GETTABLEKS                       R23 R24 K28 ["ValidatePropertiesSensible"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K4 [require]
      157 GETTABLEKS                       R25 R0 K5 ["util"]
      159 GETTABLEKS                       R24 R25 K29 ["RigidOrLayeredAllowed"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K4 [require]
      164 GETTABLEKS                       R26 R0 K5 ["util"]
      166 GETTABLEKS                       R25 R26 K30 ["createAccessorySchema"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K4 [require]
      171 GETTABLEKS                       R27 R0 K5 ["util"]
      173 GETTABLEKS                       R26 R27 K31 ["getAttachment"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K4 [require]
      178 GETTABLEKS                       R28 R0 K5 ["util"]
      180 GETTABLEKS                       R27 R28 K32 ["getAccessoryScale"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K4 [require]
      185 GETTABLEKS                       R29 R0 K5 ["util"]
      187 GETTABLEKS                       R28 R29 K33 ["getEditableMeshFromContext"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K4 [require]
      192 GETTABLEKS                       R30 R0 K5 ["util"]
      194 GETTABLEKS                       R29 R30 K34 ["getEditableImageFromContext"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K4 [require]
      199 GETTABLEKS                       R31 R0 K35 ["flags"]
      201 GETTABLEKS                       R30 R31 K36 ["getEngineFeatureEngineUGCValidateRigidNonSkinned"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K4 [require]
      206 GETTABLEKS                       R32 R0 K35 ["flags"]
      208 GETTABLEKS                       R31 R32 K37 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K4 [require]
      213 GETTABLEKS                       R33 R0 K35 ["flags"]
      215 GETTABLEKS                       R32 R33 K38 ["getFFlagUGCValidateAccessoryAssetTextureLimit"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K40 [game]
      220 LOADK                            R34 K41 ["LegacyAccessoryCheckAvatarPartScaleType"]
      221 LOADB                            R35 0
      222 NAMECALL                         R32 R32 K42 ["DefineFastFlag"]
      224 CALL                             R32 3 1
      225 DUPCLOSURE                       R33 K43 [PROTO_0]
      226 CAPTURE                          VAL R23
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R16
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R30
      233 CAPTURE                          VAL R22
      234 CAPTURE                          VAL R21
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R27
      237 CAPTURE                          VAL R28
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R13
      240 CAPTURE                          VAL R10
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R31
      243 CAPTURE                          VAL R4
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R18
      246 CAPTURE                          VAL R17
      247 CAPTURE                          VAL R8
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R32
      250 CAPTURE                          VAL R26
      251 CAPTURE                          VAL R11
      252 CAPTURE                          VAL R7
      253 CAPTURE                          VAL R15
      254 CAPTURE                          VAL R5
      255 CAPTURE                          VAL R29
      256 CAPTURE                          VAL R20
      257 RETURN                           R33 1
