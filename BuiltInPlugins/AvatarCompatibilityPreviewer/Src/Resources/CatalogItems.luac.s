PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R9 R6 K0 ["id"]
        8 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       10 MOVE                             R8 R1
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-9]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["BuiltinBodyParts"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Resources"]
       29 GETTABLEKS                       R4 R4 K11 ["BuiltinItems"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Resources"]
       38 GETTABLEKS                       R5 R5 K12 ["BuiltinSkinColors"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["CatalogItemUtil"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K13 ["Util"]
       56 GETTABLEKS                       R7 R7 K15 ["Constants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K16 ["Types"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K8 ["Src"]
       70 GETTABLEKS                       R9 R9 K17 ["Flags"]
       72 GETTABLEKS                       R9 R9 K18 ["getFFlagAvatarPreviewerClassicClothingPalettes"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K8 ["Src"]
       79 GETTABLEKS                       R10 R10 K17 ["Flags"]
       81 GETTABLEKS                       R10 R10 K19 ["getFFlagAvatarPreviewerMakeup"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K8 ["Src"]
       88 GETTABLEKS                       R11 R11 K17 ["Flags"]
       90 GETTABLEKS                       R11 R11 K20 ["getFFlagAvatarPreviewerMakeupDescription"]
       92 CALL                             R10 1 1
       93 DUPCLOSURE                       R11 K21 [PROTO_0]
       94 DUPTABLE                         R12 K30 [{"accessories", "animations", "body", "clothing", "animations_face", "body_face", "accessories_face", "makeup"}]
       95 NEWTABLE                         R13 0 12
       97 GETTABLEKS                       R14 R5 K31 ["layeredClothingPalette"]
       99 LOADK                            R15 K32 ["Hair"]
      100 GETIMPORT                        R16 K36 [Enum.AssetType.HairAccessory]
      102 GETTABLEKS                       R18 R3 K37 ["hair"]
      104 NEWTABLE                         R19 0 0
      106 MOVE                             R20 R18
      107 LOADNIL                          R21
      108 LOADNIL                          R22
      109 FORGPREP                         R20
      110 GETTABLEKS                       R27 R24 K38 ["id"]
      112 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      114 MOVE                             R26 R19
      115 GETIMPORT                        R25 K41 [table.insert]
      117 CALL                             R25 2 0
      118 FORGLOOP                         R20 2 ; [-9]
      120 MOVE                             R17 R19
      121 GETTABLEKS                       R18 R6 K42 ["PREFERRED_LAYERS"]
      123 GETTABLEKS                       R18 R18 K32 ["Hair"]
      125 CALL                             R14 4 1
      126 GETTABLEKS                       R15 R5 K43 ["basicAccessoryPalette"]
      128 LOADK                            R16 K44 ["Head"]
      129 GETIMPORT                        R17 K46 [Enum.AssetType.Hat]
      131 GETTABLEKS                       R19 R3 K47 ["head"]
      133 NEWTABLE                         R20 0 0
      135 MOVE                             R21 R19
      136 LOADNIL                          R22
      137 LOADNIL                          R23
      138 FORGPREP                         R21
      139 GETTABLEKS                       R28 R25 K38 ["id"]
      141 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      143 MOVE                             R27 R20
      144 GETIMPORT                        R26 K41 [table.insert]
      146 CALL                             R26 2 0
      147 FORGLOOP                         R21 2 ; [-9]
      149 MOVE                             R18 R20
      150 CALL                             R15 3 1
      151 GETTABLEKS                       R16 R5 K31 ["layeredClothingPalette"]
      153 LOADK                            R17 K48 ["Face"]
      154 GETIMPORT                        R18 K50 [Enum.AssetType.FaceAccessory]
      156 GETTABLEKS                       R20 R3 K51 ["face"]
      158 NEWTABLE                         R21 0 0
      160 MOVE                             R22 R20
      161 LOADNIL                          R23
      162 LOADNIL                          R24
      163 FORGPREP                         R22
      164 GETTABLEKS                       R29 R26 K38 ["id"]
      166 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      168 MOVE                             R28 R21
      169 GETIMPORT                        R27 K41 [table.insert]
      171 CALL                             R27 2 0
      172 FORGLOOP                         R22 2 ; [-9]
      174 MOVE                             R19 R21
      175 GETTABLEKS                       R20 R6 K42 ["PREFERRED_LAYERS"]
      177 GETTABLEKS                       R20 R20 K48 ["Face"]
      179 CALL                             R16 4 1
      180 GETTABLEKS                       R17 R5 K31 ["layeredClothingPalette"]
      182 LOADK                            R18 K52 ["Eyebrows"]
      183 GETIMPORT                        R19 K54 [Enum.AssetType.EyebrowAccessory]
      185 GETTABLEKS                       R21 R3 K55 ["eyebrows"]
      187 NEWTABLE                         R22 0 0
      189 MOVE                             R23 R21
      190 LOADNIL                          R24
      191 LOADNIL                          R25
      192 FORGPREP                         R23
      193 GETTABLEKS                       R30 R27 K38 ["id"]
      195 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      197 MOVE                             R29 R22
      198 GETIMPORT                        R28 K41 [table.insert]
      200 CALL                             R28 2 0
      201 FORGLOOP                         R23 2 ; [-9]
      203 MOVE                             R20 R22
      204 GETTABLEKS                       R21 R6 K42 ["PREFERRED_LAYERS"]
      206 GETTABLEKS                       R21 R21 K52 ["Eyebrows"]
      208 CALL                             R17 4 1
      209 GETTABLEKS                       R18 R5 K31 ["layeredClothingPalette"]
      211 LOADK                            R19 K56 ["Eyelashes"]
      212 GETIMPORT                        R20 K58 [Enum.AssetType.EyelashAccessory]
      214 GETTABLEKS                       R22 R3 K59 ["eyelashes"]
      216 NEWTABLE                         R23 0 0
      218 MOVE                             R24 R22
      219 LOADNIL                          R25
      220 LOADNIL                          R26
      221 FORGPREP                         R24
      222 GETTABLEKS                       R31 R28 K38 ["id"]
      224 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      226 MOVE                             R30 R23
      227 GETIMPORT                        R29 K41 [table.insert]
      229 CALL                             R29 2 0
      230 FORGLOOP                         R24 2 ; [-9]
      232 MOVE                             R21 R23
      233 GETTABLEKS                       R22 R6 K42 ["PREFERRED_LAYERS"]
      235 GETTABLEKS                       R22 R22 K56 ["Eyelashes"]
      237 CALL                             R18 4 1
      238 GETTABLEKS                       R19 R5 K43 ["basicAccessoryPalette"]
      240 LOADK                            R20 K60 ["Front"]
      241 GETIMPORT                        R21 K62 [Enum.AssetType.FrontAccessory]
      243 GETTABLEKS                       R23 R3 K63 ["front"]
      245 NEWTABLE                         R24 0 0
      247 MOVE                             R25 R23
      248 LOADNIL                          R26
      249 LOADNIL                          R27
      250 FORGPREP                         R25
      251 GETTABLEKS                       R32 R29 K38 ["id"]
      253 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      255 MOVE                             R31 R24
      256 GETIMPORT                        R30 K41 [table.insert]
      258 CALL                             R30 2 0
      259 FORGLOOP                         R25 2 ; [-9]
      261 MOVE                             R22 R24
      262 CALL                             R19 3 1
      263 GETTABLEKS                       R20 R5 K43 ["basicAccessoryPalette"]
      265 LOADK                            R21 K64 ["Neck"]
      266 GETIMPORT                        R22 K66 [Enum.AssetType.NeckAccessory]
      268 GETTABLEKS                       R24 R3 K67 ["neck"]
      270 NEWTABLE                         R25 0 0
      272 MOVE                             R26 R24
      273 LOADNIL                          R27
      274 LOADNIL                          R28
      275 FORGPREP                         R26
      276 GETTABLEKS                       R33 R30 K38 ["id"]
      278 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      280 MOVE                             R32 R25
      281 GETIMPORT                        R31 K41 [table.insert]
      283 CALL                             R31 2 0
      284 FORGLOOP                         R26 2 ; [-9]
      286 MOVE                             R23 R25
      287 CALL                             R20 3 1
      288 GETTABLEKS                       R21 R5 K43 ["basicAccessoryPalette"]
      290 LOADK                            R22 K68 ["Shoulder"]
      291 GETIMPORT                        R23 K70 [Enum.AssetType.ShoulderAccessory]
      293 GETTABLEKS                       R25 R3 K71 ["shoulder"]
      295 NEWTABLE                         R26 0 0
      297 MOVE                             R27 R25
      298 LOADNIL                          R28
      299 LOADNIL                          R29
      300 FORGPREP                         R27
      301 GETTABLEKS                       R34 R31 K38 ["id"]
      303 FASTCALL2                        TABLE_INSERT R26 R34 ; [+4]
      305 MOVE                             R33 R26
      306 GETIMPORT                        R32 K41 [table.insert]
      308 CALL                             R32 2 0
      309 FORGLOOP                         R27 2 ; [-9]
      311 MOVE                             R24 R26
      312 CALL                             R21 3 1
      313 GETTABLEKS                       R22 R5 K43 ["basicAccessoryPalette"]
      315 LOADK                            R23 K72 ["Back"]
      316 GETIMPORT                        R24 K74 [Enum.AssetType.BackAccessory]
      318 GETTABLEKS                       R26 R3 K75 ["back"]
      320 NEWTABLE                         R27 0 0
      322 MOVE                             R28 R26
      323 LOADNIL                          R29
      324 LOADNIL                          R30
      325 FORGPREP                         R28
      326 GETTABLEKS                       R35 R32 K38 ["id"]
      328 FASTCALL2                        TABLE_INSERT R27 R35 ; [+4]
      330 MOVE                             R34 R27
      331 GETIMPORT                        R33 K41 [table.insert]
      333 CALL                             R33 2 0
      334 FORGLOOP                         R28 2 ; [-9]
      336 MOVE                             R25 R27
      337 CALL                             R22 3 1
      338 GETTABLEKS                       R23 R5 K43 ["basicAccessoryPalette"]
      340 LOADK                            R24 K76 ["Waist"]
      341 GETIMPORT                        R25 K78 [Enum.AssetType.WaistAccessory]
      343 GETTABLEKS                       R27 R3 K79 ["waist"]
      345 NEWTABLE                         R28 0 0
      347 MOVE                             R29 R27
      348 LOADNIL                          R30
      349 LOADNIL                          R31
      350 FORGPREP                         R29
      351 GETTABLEKS                       R36 R33 K38 ["id"]
      353 FASTCALL2                        TABLE_INSERT R28 R36 ; [+4]
      355 MOVE                             R35 R28
      356 GETIMPORT                        R34 K41 [table.insert]
      358 CALL                             R34 2 0
      359 FORGLOOP                         R29 2 ; [-9]
      361 MOVE                             R26 R28
      362 CALL                             R23 3 1
      363 GETTABLEKS                       R24 R5 K80 ["gearPalette"]
      365 GETTABLEKS                       R26 R3 K81 ["gearLeft"]
      367 NEWTABLE                         R27 0 0
      369 MOVE                             R28 R26
      370 LOADNIL                          R29
      371 LOADNIL                          R30
      372 FORGPREP                         R28
      373 GETTABLEKS                       R35 R32 K38 ["id"]
      375 FASTCALL2                        TABLE_INSERT R27 R35 ; [+4]
      377 MOVE                             R34 R27
      378 GETIMPORT                        R33 K41 [table.insert]
      380 CALL                             R33 2 0
      381 FORGLOOP                         R28 2 ; [-9]
      383 MOVE                             R25 R27
      384 LOADK                            R26 K82 ["left"]
      385 CALL                             R24 2 1
      386 GETTABLEKS                       R25 R5 K80 ["gearPalette"]
      388 GETTABLEKS                       R27 R3 K83 ["gearRight"]
      390 NEWTABLE                         R28 0 0
      392 MOVE                             R29 R27
      393 LOADNIL                          R30
      394 LOADNIL                          R31
      395 FORGPREP                         R29
      396 GETTABLEKS                       R36 R33 K38 ["id"]
      398 FASTCALL2                        TABLE_INSERT R28 R36 ; [+4]
      400 MOVE                             R35 R28
      401 GETIMPORT                        R34 K41 [table.insert]
      403 CALL                             R34 2 0
      404 FORGLOOP                         R29 2 ; [-9]
      406 MOVE                             R26 R28
      407 LOADK                            R27 K84 ["right"]
      408 CALL                             R25 2 -1
      409 SETLIST                          R13 R14 -1 [1]
      411 SETTABLEKS                       R13 R12 K22 ["accessories"]
      413 NEWTABLE                         R13 0 2
      415 GETTABLEKS                       R14 R5 K85 ["createBodyAnimationPalette"]
      417 LOADK                            R15 K86 ["Movement"]
      418 NEWTABLE                         R16 0 8
      420 LOADK                            R17 K87 [16540596584]
      421 LOADK                            R18 K88 [16562317918]
      422 LOADK                            R19 K89 [16562332340]
      423 LOADK                            R20 K90 [16562326358]
      424 LOADK                            R21 K91 [16562321958]
      425 LOADK                            R22 K92 [16562307212]
      426 LOADK                            R23 K93 [16562311455]
      427 LOADK                            R24 K94 [16562329379]
      428 SETLIST                          R16 R17 8 [1]
      430 CALL                             R14 2 1
      431 GETTABLEKS                       R15 R5 K85 ["createBodyAnimationPalette"]
      433 LOADK                            R16 K95 ["BodyEmotes"]
      434 NEWTABLE                         R17 0 10
      436 LOADK                            R18 K96 [16569676514]
      437 LOADK                            R19 K97 [16569175989]
      438 LOADK                            R20 K98 [16569548328]
      439 LOADK                            R21 K99 [16569163126]
      440 LOADK                            R22 K100 [10714358528]
      441 LOADK                            R23 K101 [10714395441]
      442 LOADK                            R24 K102 [10714383856]
      443 LOADK                            R25 K103 [4940563117]
      444 LOADK                            R26 K104 [10714347256]
      445 LOADK                            R27 K105 [10714369325]
      446 SETLIST                          R17 R18 10 [1]
      448 CALL                             R15 2 -1
      449 SETLIST                          R13 R14 -1 [1]
      451 SETTABLEKS                       R13 R12 K23 ["animations"]
      453 GETTABLEKS                       R13 R1 K106 ["List"]
      455 GETTABLEKS                       R13 R13 K107 ["join"]
      457 NEWTABLE                         R14 0 2
      459 GETTABLEKS                       R15 R5 K108 ["skinPalette"]
      461 MOVE                             R16 R4
      462 CALL                             R15 1 1
      463 GETTABLEKS                       R16 R5 K109 ["createHeadPalette"]
      465 GETTABLEKS                       R17 R2 K110 ["heads"]
      467 CALL                             R16 1 -1
      468 SETLIST                          R14 R15 -1 [1]
      470 GETTABLEKS                       R15 R5 K111 ["createBodyCategory"]
      472 GETTABLEKS                       R16 R2 K112 ["bodies"]
      474 CALL                             R15 1 -1
      475 CALL                             R13 -1 1
      476 SETTABLEKS                       R13 R12 K24 ["body"]
      478 NEWTABLE                         R13 0 11
      480 GETTABLEKS                       R14 R5 K31 ["layeredClothingPalette"]
      482 LOADK                            R15 K113 ["Shirts"]
      483 GETIMPORT                        R16 K115 [Enum.AssetType.ShirtAccessory]
      485 GETTABLEKS                       R18 R3 K116 ["shirts"]
      487 NEWTABLE                         R19 0 0
      489 MOVE                             R20 R18
      490 LOADNIL                          R21
      491 LOADNIL                          R22
      492 FORGPREP                         R20
      493 GETTABLEKS                       R27 R24 K38 ["id"]
      495 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      497 MOVE                             R26 R19
      498 GETIMPORT                        R25 K41 [table.insert]
      500 CALL                             R25 2 0
      501 FORGLOOP                         R20 2 ; [-9]
      503 MOVE                             R17 R19
      504 GETTABLEKS                       R18 R6 K42 ["PREFERRED_LAYERS"]
      506 GETTABLEKS                       R18 R18 K117 ["Tops"]
      508 CALL                             R14 4 1
      509 GETTABLEKS                       R15 R5 K31 ["layeredClothingPalette"]
      511 LOADK                            R16 K118 ["TShirts"]
      512 GETIMPORT                        R17 K120 [Enum.AssetType.TShirtAccessory]
      514 GETTABLEKS                       R19 R3 K121 ["tshirts"]
      516 NEWTABLE                         R20 0 0
      518 MOVE                             R21 R19
      519 LOADNIL                          R22
      520 LOADNIL                          R23
      521 FORGPREP                         R21
      522 GETTABLEKS                       R28 R25 K38 ["id"]
      524 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      526 MOVE                             R27 R20
      527 GETIMPORT                        R26 K41 [table.insert]
      529 CALL                             R26 2 0
      530 FORGLOOP                         R21 2 ; [-9]
      532 MOVE                             R18 R20
      533 GETTABLEKS                       R19 R6 K42 ["PREFERRED_LAYERS"]
      535 GETTABLEKS                       R19 R19 K117 ["Tops"]
      537 CALL                             R15 4 1
      538 GETTABLEKS                       R16 R5 K31 ["layeredClothingPalette"]
      540 LOADK                            R17 K122 ["Jackets"]
      541 GETIMPORT                        R18 K124 [Enum.AssetType.JacketAccessory]
      543 GETTABLEKS                       R20 R3 K125 ["jackets"]
      545 NEWTABLE                         R21 0 0
      547 MOVE                             R22 R20
      548 LOADNIL                          R23
      549 LOADNIL                          R24
      550 FORGPREP                         R22
      551 GETTABLEKS                       R29 R26 K38 ["id"]
      553 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      555 MOVE                             R28 R21
      556 GETIMPORT                        R27 K41 [table.insert]
      558 CALL                             R27 2 0
      559 FORGLOOP                         R22 2 ; [-9]
      561 MOVE                             R19 R21
      562 GETTABLEKS                       R20 R6 K42 ["PREFERRED_LAYERS"]
      564 GETTABLEKS                       R20 R20 K126 ["Outerwear"]
      566 CALL                             R16 4 1
      567 GETTABLEKS                       R17 R5 K31 ["layeredClothingPalette"]
      569 LOADK                            R18 K127 ["Sweaters"]
      570 GETIMPORT                        R19 K129 [Enum.AssetType.SweaterAccessory]
      572 GETTABLEKS                       R21 R3 K130 ["sweaters"]
      574 NEWTABLE                         R22 0 0
      576 MOVE                             R23 R21
      577 LOADNIL                          R24
      578 LOADNIL                          R25
      579 FORGPREP                         R23
      580 GETTABLEKS                       R30 R27 K38 ["id"]
      582 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      584 MOVE                             R29 R22
      585 GETIMPORT                        R28 K41 [table.insert]
      587 CALL                             R28 2 0
      588 FORGLOOP                         R23 2 ; [-9]
      590 MOVE                             R20 R22
      591 GETTABLEKS                       R21 R6 K42 ["PREFERRED_LAYERS"]
      593 GETTABLEKS                       R21 R21 K117 ["Tops"]
      595 CALL                             R17 4 1
      596 GETTABLEKS                       R18 R5 K31 ["layeredClothingPalette"]
      598 LOADK                            R19 K131 ["Pants"]
      599 GETIMPORT                        R20 K133 [Enum.AssetType.PantsAccessory]
      601 GETTABLEKS                       R22 R3 K134 ["pants"]
      603 NEWTABLE                         R23 0 0
      605 MOVE                             R24 R22
      606 LOADNIL                          R25
      607 LOADNIL                          R26
      608 FORGPREP                         R24
      609 GETTABLEKS                       R31 R28 K38 ["id"]
      611 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      613 MOVE                             R30 R23
      614 GETIMPORT                        R29 K41 [table.insert]
      616 CALL                             R29 2 0
      617 FORGLOOP                         R24 2 ; [-9]
      619 MOVE                             R21 R23
      620 GETTABLEKS                       R22 R6 K42 ["PREFERRED_LAYERS"]
      622 GETTABLEKS                       R22 R22 K135 ["Bottoms"]
      624 CALL                             R18 4 1
      625 GETTABLEKS                       R19 R5 K31 ["layeredClothingPalette"]
      627 LOADK                            R20 K136 ["Shorts"]
      628 GETIMPORT                        R21 K138 [Enum.AssetType.ShortsAccessory]
      630 GETTABLEKS                       R23 R3 K139 ["shorts"]
      632 NEWTABLE                         R24 0 0
      634 MOVE                             R25 R23
      635 LOADNIL                          R26
      636 LOADNIL                          R27
      637 FORGPREP                         R25
      638 GETTABLEKS                       R32 R29 K38 ["id"]
      640 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      642 MOVE                             R31 R24
      643 GETIMPORT                        R30 K41 [table.insert]
      645 CALL                             R30 2 0
      646 FORGLOOP                         R25 2 ; [-9]
      648 MOVE                             R22 R24
      649 GETTABLEKS                       R23 R6 K42 ["PREFERRED_LAYERS"]
      651 GETTABLEKS                       R23 R23 K135 ["Bottoms"]
      653 CALL                             R19 4 1
      654 GETTABLEKS                       R20 R5 K31 ["layeredClothingPalette"]
      656 LOADK                            R21 K140 ["Skirts"]
      657 GETIMPORT                        R22 K142 [Enum.AssetType.DressSkirtAccessory]
      659 GETTABLEKS                       R24 R3 K143 ["skirts"]
      661 NEWTABLE                         R25 0 0
      663 MOVE                             R26 R24
      664 LOADNIL                          R27
      665 LOADNIL                          R28
      666 FORGPREP                         R26
      667 GETTABLEKS                       R33 R30 K38 ["id"]
      669 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      671 MOVE                             R32 R25
      672 GETIMPORT                        R31 K41 [table.insert]
      674 CALL                             R31 2 0
      675 FORGLOOP                         R26 2 ; [-9]
      677 MOVE                             R23 R25
      678 GETTABLEKS                       R24 R6 K42 ["PREFERRED_LAYERS"]
      680 GETTABLEKS                       R24 R24 K135 ["Bottoms"]
      682 CALL                             R20 4 1
      683 GETTABLEKS                       R21 R5 K144 ["shoesPalette"]
      685 NEWTABLE                         R22 0 3
      687 DUPTABLE                         R23 K145 [{"left", "right"}]
      688 LOADK                            R24 K146 [8722031289]
      689 SETTABLEKS                       R24 R23 K82 ["left"]
      691 LOADK                            R24 K147 [8722020587]
      692 SETTABLEKS                       R24 R23 K84 ["right"]
      694 DUPTABLE                         R24 K145 [{"left", "right"}]
      695 LOADK                            R25 K148 [7193170137]
      696 SETTABLEKS                       R25 R24 K82 ["left"]
      698 LOADK                            R25 K149 [7193171232]
      699 SETTABLEKS                       R25 R24 K84 ["right"]
      701 DUPTABLE                         R25 K145 [{"left", "right"}]
      702 LOADK                            R26 K150 [7193104827]
      703 SETTABLEKS                       R26 R25 K82 ["left"]
      705 LOADK                            R26 K151 [7193106211]
      706 SETTABLEKS                       R26 R25 K84 ["right"]
      708 SETLIST                          R22 R23 3 [1]
      710 CALL                             R21 1 1
      711 MOVE                             R23 R8
      712 CALL                             R23 0 1
      713 JUMPIFNOT                        R23 ; [+26]
      714 GETTABLEKS                       R22 R5 K152 ["classicClothingPalette"]
      716 LOADK                            R23 K153 ["ClassicShirts"]
      717 GETIMPORT                        R24 K155 [Enum.AssetType.Shirt]
      719 GETTABLEKS                       R26 R3 K156 ["classicShirts"]
      721 NEWTABLE                         R27 0 0
      723 MOVE                             R28 R26
      724 LOADNIL                          R29
      725 LOADNIL                          R30
      726 FORGPREP                         R28
      727 GETTABLEKS                       R35 R32 K38 ["id"]
      729 FASTCALL2                        TABLE_INSERT R27 R35 ; [+4]
      731 MOVE                             R34 R27
      732 GETIMPORT                        R33 K41 [table.insert]
      734 CALL                             R33 2 0
      735 FORGLOOP                         R28 2 ; [-9]
      737 MOVE                             R25 R27
      738 CALL                             R22 3 1
      739 JUMP                             ; [+1]
      740 LOADNIL                          R22
      741 MOVE                             R24 R8
      742 CALL                             R24 0 1
      743 JUMPIFNOT                        R24 ; [+26]
      744 GETTABLEKS                       R23 R5 K152 ["classicClothingPalette"]
      746 LOADK                            R24 K157 ["ClassicTShirts"]
      747 GETIMPORT                        R25 K159 [Enum.AssetType.TShirt]
      749 GETTABLEKS                       R27 R3 K160 ["classicTShirts"]
      751 NEWTABLE                         R28 0 0
      753 MOVE                             R29 R27
      754 LOADNIL                          R30
      755 LOADNIL                          R31
      756 FORGPREP                         R29
      757 GETTABLEKS                       R36 R33 K38 ["id"]
      759 FASTCALL2                        TABLE_INSERT R28 R36 ; [+4]
      761 MOVE                             R35 R28
      762 GETIMPORT                        R34 K41 [table.insert]
      764 CALL                             R34 2 0
      765 FORGLOOP                         R29 2 ; [-9]
      767 MOVE                             R26 R28
      768 CALL                             R23 3 1
      769 JUMP                             ; [+1]
      770 LOADNIL                          R23
      771 MOVE                             R25 R8
      772 CALL                             R25 0 1
      773 JUMPIFNOT                        R25 ; [+26]
      774 GETTABLEKS                       R24 R5 K152 ["classicClothingPalette"]
      776 LOADK                            R25 K161 ["ClassicPants"]
      777 GETIMPORT                        R26 K162 [Enum.AssetType.Pants]
      779 GETTABLEKS                       R28 R3 K163 ["classicPants"]
      781 NEWTABLE                         R29 0 0
      783 MOVE                             R30 R28
      784 LOADNIL                          R31
      785 LOADNIL                          R32
      786 FORGPREP                         R30
      787 GETTABLEKS                       R37 R34 K38 ["id"]
      789 FASTCALL2                        TABLE_INSERT R29 R37 ; [+4]
      791 MOVE                             R36 R29
      792 GETIMPORT                        R35 K41 [table.insert]
      794 CALL                             R35 2 0
      795 FORGLOOP                         R30 2 ; [-9]
      797 MOVE                             R27 R29
      798 CALL                             R24 3 1
      799 JUMP                             ; [+1]
      800 LOADNIL                          R24
      801 SETLIST                          R13 R14 11 [1]
      803 SETTABLEKS                       R13 R12 K25 ["clothing"]
      805 NEWTABLE                         R13 0 1
      807 GETTABLEKS                       R14 R5 K164 ["emotionPalette"]
      809 NEWTABLE                         R15 0 6
      811 LOADK                            R16 K165 [13965126930]
      812 LOADK                            R17 K166 [13965139478]
      813 LOADK                            R18 K167 [13965076233]
      814 LOADK                            R19 K168 [13965039145]
      815 LOADK                            R20 K169 [13965064041]
      816 LOADK                            R21 K170 [13965162732]
      817 SETLIST                          R15 R16 6 [1]
      819 CALL                             R14 1 -1
      820 SETLIST                          R13 R14 -1 [1]
      822 SETTABLEKS                       R13 R12 K26 ["animations_face"]
      824 NEWTABLE                         R13 0 2
      826 GETTABLEKS                       R14 R5 K108 ["skinPalette"]
      828 MOVE                             R15 R4
      829 CALL                             R14 1 1
      830 GETTABLEKS                       R15 R5 K109 ["createHeadPalette"]
      832 GETTABLEKS                       R16 R2 K110 ["heads"]
      834 CALL                             R15 1 -1
      835 SETLIST                          R13 R14 -1 [1]
      837 SETTABLEKS                       R13 R12 K27 ["body_face"]
      839 NEWTABLE                         R13 0 5
      841 GETTABLEKS                       R14 R5 K31 ["layeredClothingPalette"]
      843 LOADK                            R15 K32 ["Hair"]
      844 GETIMPORT                        R16 K36 [Enum.AssetType.HairAccessory]
      846 GETTABLEKS                       R18 R3 K37 ["hair"]
      848 NEWTABLE                         R19 0 0
      850 MOVE                             R20 R18
      851 LOADNIL                          R21
      852 LOADNIL                          R22
      853 FORGPREP                         R20
      854 GETTABLEKS                       R27 R24 K38 ["id"]
      856 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      858 MOVE                             R26 R19
      859 GETIMPORT                        R25 K41 [table.insert]
      861 CALL                             R25 2 0
      862 FORGLOOP                         R20 2 ; [-9]
      864 MOVE                             R17 R19
      865 GETTABLEKS                       R18 R6 K42 ["PREFERRED_LAYERS"]
      867 GETTABLEKS                       R18 R18 K32 ["Hair"]
      869 CALL                             R14 4 1
      870 GETTABLEKS                       R15 R5 K43 ["basicAccessoryPalette"]
      872 LOADK                            R16 K44 ["Head"]
      873 GETIMPORT                        R17 K46 [Enum.AssetType.Hat]
      875 GETTABLEKS                       R19 R3 K47 ["head"]
      877 NEWTABLE                         R20 0 0
      879 MOVE                             R21 R19
      880 LOADNIL                          R22
      881 LOADNIL                          R23
      882 FORGPREP                         R21
      883 GETTABLEKS                       R28 R25 K38 ["id"]
      885 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      887 MOVE                             R27 R20
      888 GETIMPORT                        R26 K41 [table.insert]
      890 CALL                             R26 2 0
      891 FORGLOOP                         R21 2 ; [-9]
      893 MOVE                             R18 R20
      894 CALL                             R15 3 1
      895 GETTABLEKS                       R16 R5 K31 ["layeredClothingPalette"]
      897 LOADK                            R17 K48 ["Face"]
      898 GETIMPORT                        R18 K50 [Enum.AssetType.FaceAccessory]
      900 GETTABLEKS                       R20 R3 K51 ["face"]
      902 NEWTABLE                         R21 0 0
      904 MOVE                             R22 R20
      905 LOADNIL                          R23
      906 LOADNIL                          R24
      907 FORGPREP                         R22
      908 GETTABLEKS                       R29 R26 K38 ["id"]
      910 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      912 MOVE                             R28 R21
      913 GETIMPORT                        R27 K41 [table.insert]
      915 CALL                             R27 2 0
      916 FORGLOOP                         R22 2 ; [-9]
      918 MOVE                             R19 R21
      919 GETTABLEKS                       R20 R6 K42 ["PREFERRED_LAYERS"]
      921 GETTABLEKS                       R20 R20 K48 ["Face"]
      923 CALL                             R16 4 1
      924 MOVE                             R18 R9
      925 CALL                             R18 0 1
      926 JUMPIF                           R18 ; [+30]
      927 GETTABLEKS                       R17 R5 K31 ["layeredClothingPalette"]
      929 LOADK                            R18 K52 ["Eyebrows"]
      930 GETIMPORT                        R19 K54 [Enum.AssetType.EyebrowAccessory]
      932 GETTABLEKS                       R21 R3 K55 ["eyebrows"]
      934 NEWTABLE                         R22 0 0
      936 MOVE                             R23 R21
      937 LOADNIL                          R24
      938 LOADNIL                          R25
      939 FORGPREP                         R23
      940 GETTABLEKS                       R30 R27 K38 ["id"]
      942 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      944 MOVE                             R29 R22
      945 GETIMPORT                        R28 K41 [table.insert]
      947 CALL                             R28 2 0
      948 FORGLOOP                         R23 2 ; [-9]
      950 MOVE                             R20 R22
      951 GETTABLEKS                       R21 R6 K42 ["PREFERRED_LAYERS"]
      953 GETTABLEKS                       R21 R21 K52 ["Eyebrows"]
      955 CALL                             R17 4 1
      956 JUMP                             ; [+1]
      957 LOADNIL                          R17
      958 MOVE                             R19 R9
      959 CALL                             R19 0 1
      960 JUMPIF                           R19 ; [+30]
      961 GETTABLEKS                       R18 R5 K31 ["layeredClothingPalette"]
      963 LOADK                            R19 K56 ["Eyelashes"]
      964 GETIMPORT                        R20 K58 [Enum.AssetType.EyelashAccessory]
      966 GETTABLEKS                       R22 R3 K59 ["eyelashes"]
      968 NEWTABLE                         R23 0 0
      970 MOVE                             R24 R22
      971 LOADNIL                          R25
      972 LOADNIL                          R26
      973 FORGPREP                         R24
      974 GETTABLEKS                       R31 R28 K38 ["id"]
      976 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      978 MOVE                             R30 R23
      979 GETIMPORT                        R29 K41 [table.insert]
      981 CALL                             R29 2 0
      982 FORGLOOP                         R24 2 ; [-9]
      984 MOVE                             R21 R23
      985 GETTABLEKS                       R22 R6 K42 ["PREFERRED_LAYERS"]
      987 GETTABLEKS                       R22 R22 K56 ["Eyelashes"]
      989 CALL                             R18 4 1
      990 JUMP                             ; [+1]
      991 LOADNIL                          R18
      992 SETLIST                          R13 R14 5 [1]
      994 SETTABLEKS                       R13 R12 K28 ["accessories_face"]
      996 MOVE                             R14 R9
      997 CALL                             R14 0 1
      998 JUMPIFNOT                        R14 ; [+156]
      999 NEWTABLE                         R13 0 5
     1001 GETTABLEKS                       R14 R5 K171 ["createMakeupPalette"]
     1003 LOADK                            R15 K172 ["FaceMakeup"]
     1004 GETIMPORT                        R16 K173 [Enum.AssetType.FaceMakeup]
     1006 MOVE                             R18 R10
     1007 CALL                             R18 0 1
     1008 JUMPIFNOT                        R18 ; [+20]
     1009 GETTABLEKS                       R18 R3 K174 ["faceMakeup"]
     1011 NEWTABLE                         R19 0 0
     1013 MOVE                             R20 R18
     1014 LOADNIL                          R21
     1015 LOADNIL                          R22
     1016 FORGPREP                         R20
     1017 GETTABLEKS                       R27 R24 K38 ["id"]
     1019 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
     1021 MOVE                             R26 R19
     1022 GETIMPORT                        R25 K41 [table.insert]
     1024 CALL                             R25 2 0
     1025 FORGLOOP                         R20 2 ; [-9]
     1027 MOVE                             R17 R19
     1028 JUMP                             ; [+2]
     1029 NEWTABLE                         R17 0 0
     1031 CALL                             R14 3 1
     1032 GETTABLEKS                       R15 R5 K171 ["createMakeupPalette"]
     1034 LOADK                            R16 K175 ["LipMakeup"]
     1035 GETIMPORT                        R17 K176 [Enum.AssetType.LipMakeup]
     1037 MOVE                             R19 R10
     1038 CALL                             R19 0 1
     1039 JUMPIFNOT                        R19 ; [+20]
     1040 GETTABLEKS                       R19 R3 K177 ["lipMakeup"]
     1042 NEWTABLE                         R20 0 0
     1044 MOVE                             R21 R19
     1045 LOADNIL                          R22
     1046 LOADNIL                          R23
     1047 FORGPREP                         R21
     1048 GETTABLEKS                       R28 R25 K38 ["id"]
     1050 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
     1052 MOVE                             R27 R20
     1053 GETIMPORT                        R26 K41 [table.insert]
     1055 CALL                             R26 2 0
     1056 FORGLOOP                         R21 2 ; [-9]
     1058 MOVE                             R18 R20
     1059 JUMP                             ; [+2]
     1060 NEWTABLE                         R18 0 0
     1062 CALL                             R15 3 1
     1063 GETTABLEKS                       R16 R5 K171 ["createMakeupPalette"]
     1065 LOADK                            R17 K178 ["EyeMakeup"]
     1066 GETIMPORT                        R18 K179 [Enum.AssetType.EyeMakeup]
     1068 MOVE                             R20 R10
     1069 CALL                             R20 0 1
     1070 JUMPIFNOT                        R20 ; [+20]
     1071 GETTABLEKS                       R20 R3 K180 ["eyeMakeup"]
     1073 NEWTABLE                         R21 0 0
     1075 MOVE                             R22 R20
     1076 LOADNIL                          R23
     1077 LOADNIL                          R24
     1078 FORGPREP                         R22
     1079 GETTABLEKS                       R29 R26 K38 ["id"]
     1081 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
     1083 MOVE                             R28 R21
     1084 GETIMPORT                        R27 K41 [table.insert]
     1086 CALL                             R27 2 0
     1087 FORGLOOP                         R22 2 ; [-9]
     1089 MOVE                             R19 R21
     1090 JUMP                             ; [+2]
     1091 NEWTABLE                         R19 0 0
     1093 CALL                             R16 3 1
     1094 GETTABLEKS                       R17 R5 K31 ["layeredClothingPalette"]
     1096 LOADK                            R18 K52 ["Eyebrows"]
     1097 GETIMPORT                        R19 K54 [Enum.AssetType.EyebrowAccessory]
     1099 GETTABLEKS                       R21 R3 K55 ["eyebrows"]
     1101 NEWTABLE                         R22 0 0
     1103 MOVE                             R23 R21
     1104 LOADNIL                          R24
     1105 LOADNIL                          R25
     1106 FORGPREP                         R23
     1107 GETTABLEKS                       R30 R27 K38 ["id"]
     1109 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
     1111 MOVE                             R29 R22
     1112 GETIMPORT                        R28 K41 [table.insert]
     1114 CALL                             R28 2 0
     1115 FORGLOOP                         R23 2 ; [-9]
     1117 MOVE                             R20 R22
     1118 GETTABLEKS                       R21 R6 K42 ["PREFERRED_LAYERS"]
     1120 GETTABLEKS                       R21 R21 K52 ["Eyebrows"]
     1122 CALL                             R17 4 1
     1123 GETTABLEKS                       R18 R5 K31 ["layeredClothingPalette"]
     1125 LOADK                            R19 K56 ["Eyelashes"]
     1126 GETIMPORT                        R20 K58 [Enum.AssetType.EyelashAccessory]
     1128 GETTABLEKS                       R22 R3 K59 ["eyelashes"]
     1130 NEWTABLE                         R23 0 0
     1132 MOVE                             R24 R22
     1133 LOADNIL                          R25
     1134 LOADNIL                          R26
     1135 FORGPREP                         R24
     1136 GETTABLEKS                       R31 R28 K38 ["id"]
     1138 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
     1140 MOVE                             R30 R23
     1141 GETIMPORT                        R29 K41 [table.insert]
     1143 CALL                             R29 2 0
     1144 FORGLOOP                         R24 2 ; [-9]
     1146 MOVE                             R21 R23
     1147 GETTABLEKS                       R22 R6 K42 ["PREFERRED_LAYERS"]
     1149 GETTABLEKS                       R22 R22 K56 ["Eyelashes"]
     1151 CALL                             R18 4 -1
     1152 SETLIST                          R13 R14 -1 [1]
     1154 JUMP                             ; [+1]
     1155 LOADNIL                          R13
     1156 SETTABLEKS                       R13 R12 K29 ["makeup"]
     1158 RETURN                           R12 1
