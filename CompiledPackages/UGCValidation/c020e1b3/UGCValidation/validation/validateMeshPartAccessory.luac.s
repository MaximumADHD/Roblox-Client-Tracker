PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["assetTypeEnum"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["assetTypeEnum required in validationContext for validateMeshPartAccessory"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K4 ["instances"]
       14 GETTABLEKS                       R2 R0 K0 ["assetTypeEnum"]
       16 GETTABLEKS                       R3 R0 K5 ["isServer"]
       18 GETTABLEKS                       R4 R0 K6 ["allowUnreviewedAssets"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K7 ["isRigidAccessoryAllowed"]
       23 MOVE                             R6 R2
       24 CALL                             R5 1 1
       25 JUMPIF                           R5 ; [+23]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K8 ["reportFailure"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K9 ["ErrorType"]
       32 GETTABLEKS                       R6 R6 K10 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
       34 LOADNIL                          R7
       35 MOVE                             R8 R0
       36 CALL                             R5 3 0
       37 LOADB                            R5 0
       38 NEWTABLE                         R6 0 1
       40 GETIMPORT                        R7 K13 [string.format]
       42 LOADK                            R8 K14 ["Asset type '%s' is not a rigid accessory category. It can only be used with layered clothing."]
       43 GETTABLEKS                       R9 R2 K15 ["Name"]
       45 CALL                             R7 2 -1
       46 SETLIST                          R6 R7 -1 [1]
       48 RETURN                           R5 2
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K16 ["ASSET_TYPE_INFO"]
       52 GETTABLE                         R5 R6 R2
       53 LOADNIL                          R6
       54 LOADNIL                          R7
       55 GETUPVAL                         R8 3
       56 MOVE                             R9 R1
       57 MOVE                             R10 R0
       58 CALL                             R8 2 2
       59 MOVE                             R6 R8
       60 MOVE                             R7 R9
       61 JUMPIF                           R6 ; [+3]
       62 LOADB                            R8 0
       63 MOVE                             R9 R7
       64 RETURN                           R8 2
       65 GETTABLEN                        R8 R1 1
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R10 R5 K17 ["attachmentNames"]
       69 CALL                             R9 1 1
       70 GETUPVAL                         R10 5
       71 MOVE                             R11 R9
       72 MOVE                             R12 R8
       73 MOVE                             R13 R0
       74 CALL                             R10 3 2
       75 MOVE                             R6 R10
       76 MOVE                             R7 R11
       77 JUMPIF                           R6 ; [+3]
       78 LOADB                            R10 0
       79 MOVE                             R11 R7
       80 RETURN                           R10 2
       81 GETUPVAL                         R10 6
       82 CALL                             R10 0 1
       83 JUMPIFNOT                        R10 ; [+12]
       84 GETUPVAL                         R10 7
       85 GETTABLEKS                       R10 R10 K18 ["validate"]
       87 MOVE                             R11 R8
       88 MOVE                             R12 R0
       89 CALL                             R10 2 2
       90 MOVE                             R6 R10
       91 MOVE                             R7 R11
       92 JUMPIF                           R6 ; [+3]
       93 LOADB                            R10 0
       94 MOVE                             R11 R7
       95 RETURN                           R10 2
       96 GETUPVAL                         R10 8
       97 MOVE                             R11 R8
       98 MOVE                             R12 R0
       99 CALL                             R10 2 2
      100 MOVE                             R6 R10
      101 MOVE                             R7 R11
      102 JUMPIF                           R6 ; [+3]
      103 LOADB                            R10 0
      104 MOVE                             R11 R7
      105 RETURN                           R10 2
      106 LOADK                            R12 K19 ["Handle"]
      107 NAMECALL                         R10 R8 K20 ["FindFirstChild"]
      109 CALL                             R10 2 1
      110 DUPTABLE                         R11 K25 [{"fullName", "fieldName", "contentId", "context"}]
      111 NAMECALL                         R12 R10 K26 ["GetFullName"]
      113 CALL                             R12 1 1
      114 SETTABLEKS                       R12 R11 K21 ["fullName"]
      116 LOADK                            R12 K27 ["MeshId"]
      117 SETTABLEKS                       R12 R11 K22 ["fieldName"]
      119 GETTABLEKS                       R12 R10 K27 ["MeshId"]
      121 SETTABLEKS                       R12 R11 K23 ["contentId"]
      123 GETTABLEKS                       R12 R8 K15 ["Name"]
      125 SETTABLEKS                       R12 R11 K24 ["context"]
      127 GETUPVAL                         R12 9
      128 GETTABLEKS                       R12 R12 K28 ["new"]
      130 CALL                             R12 0 1
      131 GETTABLEKS                       R13 R10 K29 ["DoubleSided"]
      133 JUMPIFNOT                        R13 ; [+26]
      134 LOADB                            R15 0
      135 NEWTABLE                         R16 0 1
      137 GETIMPORT                        R17 K13 [string.format]
      139 LOADK                            R18 K30 ["MeshPart '%s' is double-sided. Double-sided meshes are not allowed in rigid accessories."]
      140 NAMECALL                         R19 R10 K26 ["GetFullName"]
      142 CALL                             R19 1 -1
      143 CALL                             R17 -1 -1
      144 SETLIST                          R16 R17 -1 [1]
      146 NAMECALL                         R13 R12 K31 ["updateReasons"]
      148 CALL                             R13 3 0
      149 GETUPVAL                         R13 1
      150 GETTABLEKS                       R13 R13 K8 ["reportFailure"]
      152 GETUPVAL                         R14 1
      153 GETTABLEKS                       R14 R14 K9 ["ErrorType"]
      155 GETTABLEKS                       R14 R14 K32 ["validateMeshPartAccessory_DoubleSided"]
      157 LOADNIL                          R15
      158 MOVE                             R16 R0
      159 CALL                             R13 3 0
      160 LOADB                            R13 0
      161 GETTABLEKS                       R14 R11 K23 ["contentId"]
      163 JUMPIFEQKNIL                     R14 ; [+7]
      165 GETTABLEKS                       R14 R11 K23 ["contentId"]
      167 JUMPIFNOTEQKS                    R14 K33 [""] ; [+2]
      169 LOADB                            R13 0 +1
      170 LOADB                            R13 1
      171 GETUPVAL                         R14 10
      172 MOVE                             R15 R10
      173 LOADK                            R16 K27 ["MeshId"]
      174 MOVE                             R17 R0
      175 CALL                             R14 3 2
      176 JUMPIF                           R14 ; [+54]
      177 GETTABLEKS                       R16 R11 K23 ["contentId"]
      179 JUMPIF                           R16 ; [+28]
      180 LOADB                            R13 0
      181 GETUPVAL                         R16 1
      182 GETTABLEKS                       R16 R16 K8 ["reportFailure"]
      184 GETUPVAL                         R17 1
      185 GETTABLEKS                       R17 R17 K9 ["ErrorType"]
      187 GETTABLEKS                       R17 R17 K34 ["validateMeshPartAccessory_NoMeshId"]
      189 LOADNIL                          R18
      190 MOVE                             R19 R0
      191 CALL                             R16 3 0
      192 LOADB                            R18 0
      193 NEWTABLE                         R19 0 1
      195 GETIMPORT                        R20 K13 [string.format]
      197 LOADK                            R21 K35 ["Accessory MeshPart '%s' must contain a valid meshId. Make sure the mesh referred to by the meshId exists and try again."]
      198 NAMECALL                         R22 R10 K26 ["GetFullName"]
      200 CALL                             R22 1 -1
      201 CALL                             R20 -1 -1
      202 SETLIST                          R19 R20 -1 [1]
      204 NAMECALL                         R16 R12 K31 ["updateReasons"]
      206 CALL                             R16 3 0
      207 JUMP                             ; [+23]
      208 GETUPVAL                         R16 1
      209 GETTABLEKS                       R16 R16 K8 ["reportFailure"]
      211 GETUPVAL                         R17 1
      212 GETTABLEKS                       R17 R17 K9 ["ErrorType"]
      214 GETTABLEKS                       R17 R17 K36 ["validateMeshPartAccessory_FailedToLoadMesh"]
      216 LOADNIL                          R18
      217 MOVE                             R19 R0
      218 CALL                             R16 3 0
      219 LOADB                            R16 0
      220 NEWTABLE                         R17 0 1
      222 GETIMPORT                        R18 K13 [string.format]
      224 LOADK                            R19 K37 ["Failed to load mesh for accessory '%s'. Make sure mesh exists and try again."]
      225 GETTABLEKS                       R20 R8 K15 ["Name"]
      227 CALL                             R18 2 -1
      228 SETLIST                          R17 R18 -1 [1]
      230 RETURN                           R16 2
      231 SETTABLEKS                       R15 R11 K38 ["editableMesh"]
      233 LOADB                            R13 1
      234 GETTABLEKS                       R16 R10 K39 ["TextureID"]
      236 DUPTABLE                         R17 K40 [{"fullName", "fieldName", "contentId"}]
      237 NAMECALL                         R18 R10 K26 ["GetFullName"]
      239 CALL                             R18 1 1
      240 SETTABLEKS                       R18 R17 K21 ["fullName"]
      242 LOADK                            R18 K39 ["TextureID"]
      243 SETTABLEKS                       R18 R17 K22 ["fieldName"]
      245 SETTABLEKS                       R16 R17 K23 ["contentId"]
      247 GETUPVAL                         R18 11
      248 MOVE                             R19 R10
      249 LOADK                            R20 K39 ["TextureID"]
      250 MOVE                             R21 R0
      251 CALL                             R18 3 2
      252 SETTABLEKS                       R19 R17 K41 ["editableImage"]
      254 GETUPVAL                         R20 12
      255 NEWCLOSURE                       R21 P0
      256 CAPTURE                          UPVAL U13
      257 CAPTURE                          VAL R11
      258 MOVE                             R22 R0
      259 CALL                             R20 2 2
      260 JUMPIF                           R20 ; [+23]
      261 GETUPVAL                         R22 1
      262 GETTABLEKS                       R22 R22 K8 ["reportFailure"]
      264 GETUPVAL                         R23 1
      265 GETTABLEKS                       R23 R23 K9 ["ErrorType"]
      267 GETTABLEKS                       R23 R23 K36 ["validateMeshPartAccessory_FailedToLoadMesh"]
      269 LOADNIL                          R24
      270 MOVE                             R25 R0
      271 CALL                             R22 3 0
      272 LOADB                            R22 0
      273 NEWTABLE                         R23 0 1
      275 GETIMPORT                        R24 K13 [string.format]
      277 LOADK                            R25 K37 ["Failed to load mesh for accessory '%s'. Make sure mesh exists and try again."]
      278 GETTABLEKS                       R26 R8 K15 ["Name"]
      280 CALL                             R24 2 -1
      281 SETLIST                          R23 R24 -1 [1]
      283 RETURN                           R22 2
      284 GETUPVAL                         R23 14
      285 MOVE                             R24 R10
      286 MOVE                             R25 R0
      287 CALL                             R23 2 1
      288 DIV                              R22 R23 R21
      289 GETUPVAL                         R23 15
      290 MOVE                             R24 R10
      291 GETTABLEKS                       R25 R5 K17 ["attachmentNames"]
      293 CALL                             R23 2 1
      294 FASTCALL1                        ASSERT R23 ; [+3]
      295 MOVE                             R25 R23
      296 GETIMPORT                        R24 K3 [assert]
      298 CALL                             R24 1 0
      299 GETTABLEKS                       R26 R5 K42 ["bounds"]
      301 GETTABLEKS                       R27 R23 K15 ["Name"]
      303 GETTABLE                         R25 R26 R27
      304 LOADK                            R27 K43 ["Could not find bounds for "]
      305 GETTABLEKS                       R28 R23 K15 ["Name"]
      307 CONCAT                           R26 R27 R28
      308 FASTCALL2                        ASSERT R25 R26 ; [+3]
      310 GETIMPORT                        R24 K3 [assert]
      312 CALL                             R24 2 1
      313 GETUPVAL                         R27 16
      314 MOVE                             R28 R8
      315 MOVE                             R29 R0
      316 CALL                             R27 2 -1
      317 NAMECALL                         R25 R12 K31 ["updateReasons"]
      319 CALL                             R25 -1 0
      320 GETUPVAL                         R27 17
      321 MOVE                             R28 R8
      322 LOADNIL                          R29
      323 MOVE                             R30 R0
      324 CALL                             R27 3 -1
      325 NAMECALL                         R25 R12 K31 ["updateReasons"]
      327 CALL                             R25 -1 0
      328 GETUPVAL                         R27 18
      329 MOVE                             R28 R8
      330 MOVE                             R29 R0
      331 CALL                             R27 2 -1
      332 NAMECALL                         R25 R12 K31 ["updateReasons"]
      334 CALL                             R25 -1 0
      335 GETUPVAL                         R27 19
      336 MOVE                             R28 R8
      337 MOVE                             R29 R0
      338 CALL                             R27 2 -1
      339 NAMECALL                         R25 R12 K31 ["updateReasons"]
      341 CALL                             R25 -1 0
      342 LOADNIL                          R25
      343 GETUPVAL                         R26 20
      344 CALL                             R26 0 1
      345 JUMPIFNOT                        R26 ; [+9]
      346 GETUPVAL                         R26 21
      347 GETTABLEKS                       R26 R26 K44 ["getTextureLimit"]
      349 MOVE                             R27 R2
      350 MOVE                             R28 R10
      351 GETTABLEKS                       R29 R17 K22 ["fieldName"]
      353 CALL                             R26 3 1
      354 MOVE                             R25 R26
      355 GETUPVAL                         R28 22
      356 MOVE                             R29 R17
      357 LOADB                            R30 1
      358 MOVE                             R31 R0
      359 MOVE                             R32 R25
      360 CALL                             R28 4 -1
      361 NAMECALL                         R26 R12 K31 ["updateReasons"]
      363 CALL                             R26 -1 0
      364 GETUPVAL                         R28 23
      365 MOVE                             R29 R8
      366 MOVE                             R30 R10
      367 MOVE                             R31 R11
      368 MOVE                             R32 R22
      369 MOVE                             R33 R0
      370 CALL                             R28 5 -1
      371 NAMECALL                         R26 R12 K31 ["updateReasons"]
      373 CALL                             R26 -1 0
      374 NOT                              R26 R3
      375 JUMPIFNOT                        R4 ; [+1]
      376 LOADB                            R26 0
      377 JUMPIFNOT                        R26 ; [+9]
      378 GETUPVAL                         R29 24
      379 MOVE                             R30 R8
      380 NEWTABLE                         R31 0 0
      382 MOVE                             R32 R0
      383 CALL                             R29 3 -1
      384 NAMECALL                         R27 R12 K31 ["updateReasons"]
      386 CALL                             R27 -1 0
      387 GETUPVAL                         R27 25
      388 JUMPIFNOT                        R27 ; [+26]
      389 LOADK                            R29 K45 ["AvatarPartScaleType"]
      390 NAMECALL                         R27 R10 K20 ["FindFirstChild"]
      392 CALL                             R27 2 1
      393 JUMPIFNOT                        R27 ; [+21]
      394 GETUPVAL                         R27 26
      395 MOVE                             R28 R10
      396 MOVE                             R29 R23
      397 CALL                             R27 2 1
      398 DUPTABLE                         R28 K48 [{"size", "offset"}]
      399 GETTABLEKS                       R30 R24 K46 ["size"]
      401 DIV                              R29 R30 R27
      402 SETTABLEKS                       R29 R28 K46 ["size"]
      404 GETTABLEKS                       R30 R24 K47 ["offset"]
      406 JUMPIFNOT                        R30 ; [+4]
      407 GETTABLEKS                       R30 R24 K47 ["offset"]
      409 DIV                              R29 R30 R27
      410 JUMP                             ; [+1]
      411 LOADNIL                          R29
      412 SETTABLEKS                       R29 R28 K47 ["offset"]
      414 MOVE                             R24 R28
      415 JUMPIFNOT                        R13 ; [+54]
      416 GETUPVAL                         R29 27
      417 MOVE                             R30 R11
      418 MOVE                             R31 R22
      419 MOVE                             R32 R0
      420 CALL                             R29 3 -1
      421 NAMECALL                         R27 R12 K31 ["updateReasons"]
      423 CALL                             R27 -1 0
      424 GETUPVAL                         R29 28
      425 GETTABLEKS                       R29 R29 K49 ["validateSingleMeshPart"]
      427 MOVE                             R30 R10
      428 MOVE                             R31 R0
      429 CALL                             R29 2 -1
      430 NAMECALL                         R27 R12 K31 ["updateReasons"]
      432 CALL                             R27 -1 0
      433 GETUPVAL                         R29 29
      434 MOVE                             R30 R10
      435 MOVE                             R31 R23
      436 MOVE                             R32 R11
      437 MOVE                             R33 R22
      438 MOVE                             R34 R24
      439 GETTABLEKS                       R35 R2 K15 ["Name"]
      441 MOVE                             R36 R0
      442 CALL                             R29 7 -1
      443 NAMECALL                         R27 R12 K31 ["updateReasons"]
      445 CALL                             R27 -1 0
      446 GETUPVAL                         R29 30
      447 MOVE                             R30 R11
      448 LOADNIL                          R31
      449 MOVE                             R32 R0
      450 CALL                             R29 3 -1
      451 NAMECALL                         R27 R12 K31 ["updateReasons"]
      453 CALL                             R27 -1 0
      454 GETUPVAL                         R29 31
      455 MOVE                             R30 R11
      456 LOADB                            R31 0
      457 MOVE                             R32 R0
      458 CALL                             R29 3 -1
      459 NAMECALL                         R27 R12 K31 ["updateReasons"]
      461 CALL                             R27 -1 0
      462 GETUPVAL                         R29 32
      463 MOVE                             R30 R11
      464 MOVE                             R31 R22
      465 MOVE                             R32 R0
      466 CALL                             R29 3 -1
      467 NAMECALL                         R27 R12 K31 ["updateReasons"]
      469 CALL                             R27 -1 0
      470 GETUPVAL                         R29 33
      471 MOVE                             R30 R8
      472 MOVE                             R31 R0
      473 CALL                             R29 2 -1
      474 NAMECALL                         R27 R12 K31 ["updateReasons"]
      476 CALL                             R27 -1 0
      477 GETUPVAL                         R29 34
      478 MOVE                             R30 R8
      479 MOVE                             R31 R0
      480 CALL                             R29 2 -1
      481 NAMECALL                         R27 R12 K31 ["updateReasons"]
      483 CALL                             R27 -1 0
      484 GETUPVAL                         R29 35
      485 MOVE                             R30 R8
      486 MOVE                             R31 R0
      487 CALL                             R29 2 -1
      488 NAMECALL                         R27 R12 K31 ["updateReasons"]
      490 CALL                             R27 -1 0
      491 GETUPVAL                         R27 36
      492 CALL                             R27 0 1
      493 JUMPIFNOT                        R27 ; [+10]
      494 GETUPVAL                         R29 37
      495 GETTABLEKS                       R29 R29 K18 ["validate"]
      497 MOVE                             R30 R8
      498 LOADB                            R31 0
      499 MOVE                             R32 R0
      500 CALL                             R29 3 -1
      501 NAMECALL                         R27 R12 K31 ["updateReasons"]
      503 CALL                             R27 -1 0
      504 GETUPVAL                         R27 38
      505 CALL                             R27 0 1
      506 JUMPIFNOT                        R27 ; [+11]
      507 GETTABLEKS                       R27 R0 K50 ["allowEditableInstances"]
      509 JUMPIF                           R27 ; [+8]
      510 GETUPVAL                         R29 39
      511 GETTABLEKS                       R30 R11 K23 ["contentId"]
      513 MOVE                             R31 R0
      514 CALL                             R29 2 -1
      515 NAMECALL                         R27 R12 K31 ["updateReasons"]
      517 CALL                             R27 -1 0
      518 LOADK                            R29 K45 ["AvatarPartScaleType"]
      519 NAMECALL                         R27 R10 K20 ["FindFirstChild"]
      521 CALL                             R27 2 1
      522 JUMPIFNOT                        R27 ; [+12]
      523 LOADK                            R30 K51 ["StringValue"]
      524 NAMECALL                         R28 R27 K52 ["IsA"]
      526 CALL                             R28 2 1
      527 JUMPIFNOT                        R28 ; [+7]
      528 GETUPVAL                         R30 40
      529 MOVE                             R31 R27
      530 MOVE                             R32 R0
      531 CALL                             R30 2 -1
      532 NAMECALL                         R28 R12 K31 ["updateReasons"]
      534 CALL                             R28 -1 0
      535 NAMECALL                         R28 R12 K53 ["getFinalResults"]
      537 CALL                             R28 1 -1
      538 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
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
       31 GETTABLEKS                       R6 R0 K10 ["validation"]
       33 GETTABLEKS                       R6 R6 K11 ["validateCoplanarIntersection"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K10 ["validation"]
       40 GETTABLEKS                       R7 R7 K12 ["validateInstanceTree"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R0 K10 ["validation"]
       47 GETTABLEKS                       R8 R8 K13 ["validateMeshTriangles"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K4 [require]
       52 GETTABLEKS                       R9 R0 K10 ["validation"]
       54 GETTABLEKS                       R9 R9 K14 ["validateModeration"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K4 [require]
       59 GETTABLEKS                       R10 R0 K10 ["validation"]
       61 GETTABLEKS                       R10 R10 K15 ["validateMaterials"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K4 [require]
       66 GETTABLEKS                       R11 R0 K10 ["validation"]
       68 GETTABLEKS                       R11 R11 K16 ["validateTags"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K4 [require]
       73 GETTABLEKS                       R12 R0 K10 ["validation"]
       75 GETTABLEKS                       R12 R12 K17 ["validateMeshBounds"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R13 R0 K10 ["validation"]
       82 GETTABLEKS                       R13 R13 K18 ["validateTextureSize"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K4 [require]
       87 GETTABLEKS                       R14 R0 K10 ["validation"]
       89 GETTABLEKS                       R14 R14 K19 ["validatePropertyRequirements"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R15 R0 K10 ["validation"]
       96 GETTABLEKS                       R15 R15 K20 ["validateAttributes"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K4 [require]
      101 GETTABLEKS                       R16 R0 K10 ["validation"]
      103 GETTABLEKS                       R16 R16 K21 ["validateMeshVertColors"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K4 [require]
      108 GETTABLEKS                       R17 R0 K10 ["validation"]
      110 GETTABLEKS                       R17 R17 K22 ["validateSingleInstance"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K4 [require]
      115 GETTABLEKS                       R18 R0 K10 ["validation"]
      117 GETTABLEKS                       R18 R18 K23 ["validateThumbnailConfiguration"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K4 [require]
      122 GETTABLEKS                       R19 R0 K10 ["validation"]
      124 GETTABLEKS                       R19 R19 K24 ["validateSurfaceAppearances"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K4 [require]
      129 GETTABLEKS                       R20 R0 K10 ["validation"]
      131 GETTABLEKS                       R20 R20 K25 ["validateSurfaceAppearanceTextureSize"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K4 [require]
      136 GETTABLEKS                       R21 R0 K10 ["validation"]
      138 GETTABLEKS                       R21 R21 K26 ["ValidateTexturePack"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K4 [require]
      143 GETTABLEKS                       R22 R0 K10 ["validation"]
      145 GETTABLEKS                       R22 R22 K27 ["validateSurfaceAppearanceTransparency"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K4 [require]
      150 GETTABLEKS                       R23 R0 K10 ["validation"]
      152 GETTABLEKS                       R23 R23 K28 ["validateScaleType"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K4 [require]
      157 GETTABLEKS                       R24 R0 K10 ["validation"]
      159 GETTABLEKS                       R24 R24 K29 ["validateTotalSurfaceArea"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K4 [require]
      164 GETTABLEKS                       R25 R0 K10 ["validation"]
      166 GETTABLEKS                       R25 R25 K30 ["validateRigidMeshNotSkinned"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K4 [require]
      171 GETTABLEKS                       R26 R0 K10 ["validation"]
      173 GETTABLEKS                       R26 R26 K31 ["ValidateMeshSizeProperty"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K4 [require]
      178 GETTABLEKS                       R27 R0 K10 ["validation"]
      180 GETTABLEKS                       R27 R27 K32 ["ValidatePropertiesSensible"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K4 [require]
      185 GETTABLEKS                       R28 R0 K10 ["validation"]
      187 GETTABLEKS                       R28 R28 K33 ["validateDependencies"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K4 [require]
      192 GETTABLEKS                       R29 R0 K5 ["util"]
      194 GETTABLEKS                       R29 R29 K34 ["createMeshPartAccessorySchema"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K4 [require]
      199 GETTABLEKS                       R30 R0 K5 ["util"]
      201 GETTABLEKS                       R30 R30 K35 ["getAttachment"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K4 [require]
      206 GETTABLEKS                       R31 R0 K5 ["util"]
      208 GETTABLEKS                       R31 R31 K36 ["getMeshSize"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K4 [require]
      213 GETTABLEKS                       R32 R0 K5 ["util"]
      215 GETTABLEKS                       R32 R32 K37 ["FailureReasonsAccumulator"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K4 [require]
      220 GETTABLEKS                       R33 R0 K5 ["util"]
      222 GETTABLEKS                       R33 R33 K38 ["getEditableMeshFromContext"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K4 [require]
      227 GETTABLEKS                       R34 R0 K5 ["util"]
      229 GETTABLEKS                       R34 R34 K39 ["getEditableImageFromContext"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K4 [require]
      234 GETTABLEKS                       R35 R0 K5 ["util"]
      236 GETTABLEKS                       R35 R35 K40 ["getExpectedPartSize"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K4 [require]
      241 GETTABLEKS                       R36 R0 K5 ["util"]
      243 GETTABLEKS                       R36 R36 K41 ["pcallDeferred"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K4 [require]
      248 GETTABLEKS                       R37 R0 K5 ["util"]
      250 GETTABLEKS                       R37 R37 K42 ["getAccessoryScale"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K4 [require]
      255 GETTABLEKS                       R38 R0 K5 ["util"]
      257 GETTABLEKS                       R38 R38 K43 ["RigidOrLayeredAllowed"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K4 [require]
      262 GETTABLEKS                       R39 R0 K44 ["flags"]
      264 GETTABLEKS                       R39 R39 K45 ["getEngineFeatureEngineUGCValidateRigidNonSkinned"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K4 [require]
      269 GETTABLEKS                       R40 R0 K44 ["flags"]
      271 GETTABLEKS                       R40 R40 K46 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K4 [require]
      276 GETTABLEKS                       R41 R0 K44 ["flags"]
      278 GETTABLEKS                       R41 R41 K47 ["getFFlagUGCValidateAccessoryAssetTextureLimit"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K4 [require]
      283 GETTABLEKS                       R42 R0 K44 ["flags"]
      285 GETTABLEKS                       R42 R42 K48 ["getFFlagUGCValidateTexturePack"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K50 [game]
      290 LOADK                            R44 K51 ["MeshpartAccessoryCheckAvatarPartScaleType"]
      291 LOADB                            R45 0
      292 NAMECALL                         R42 R42 K52 ["DefineFastFlag"]
      294 CALL                             R42 3 1
      295 DUPCLOSURE                       R43 K53 [PROTO_1]
      296 CAPTURE                          VAL R37
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R3
      299 CAPTURE                          VAL R16
      300 CAPTURE                          VAL R28
      301 CAPTURE                          VAL R6
      302 CAPTURE                          VAL R39
      303 CAPTURE                          VAL R26
      304 CAPTURE                          VAL R27
      305 CAPTURE                          VAL R31
      306 CAPTURE                          VAL R32
      307 CAPTURE                          VAL R33
      308 CAPTURE                          VAL R35
      309 CAPTURE                          VAL R30
      310 CAPTURE                          VAL R34
      311 CAPTURE                          VAL R29
      312 CAPTURE                          VAL R9
      313 CAPTURE                          VAL R13
      314 CAPTURE                          VAL R10
      315 CAPTURE                          VAL R14
      316 CAPTURE                          VAL R40
      317 CAPTURE                          VAL R4
      318 CAPTURE                          VAL R12
      319 CAPTURE                          VAL R17
      320 CAPTURE                          VAL R8
      321 CAPTURE                          VAL R42
      322 CAPTURE                          VAL R36
      323 CAPTURE                          VAL R23
      324 CAPTURE                          VAL R25
      325 CAPTURE                          VAL R11
      326 CAPTURE                          VAL R7
      327 CAPTURE                          VAL R15
      328 CAPTURE                          VAL R5
      329 CAPTURE                          VAL R18
      330 CAPTURE                          VAL R19
      331 CAPTURE                          VAL R21
      332 CAPTURE                          VAL R41
      333 CAPTURE                          VAL R20
      334 CAPTURE                          VAL R38
      335 CAPTURE                          VAL R24
      336 CAPTURE                          VAL R22
      337 RETURN                           R43 1
