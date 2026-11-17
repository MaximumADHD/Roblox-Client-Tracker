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
       75 DUPCLOSURE                       R9 K19 [PROTO_0]
       76 DUPTABLE                         R10 K28 [{"accessories", "animations", "body", "clothing", "animations_face", "body_face", "accessories_face", "makeup"}]
       77 NEWTABLE                         R11 0 12
       79 GETTABLEKS                       R12 R5 K29 ["layeredClothingPalette"]
       81 LOADK                            R13 K30 ["Hair"]
       82 GETIMPORT                        R14 K34 [Enum.AssetType.HairAccessory]
       84 GETTABLEKS                       R16 R3 K35 ["hair"]
       86 NEWTABLE                         R15 0 0
       88 MOVE                             R17 R16
       89 LOADNIL                          R18
       90 LOADNIL                          R19
       91 FORGPREP                         R17
       92 GETTABLEKS                       R24 R21 K36 ["id"]
       94 FASTCALL2                        TABLE_INSERT R15 R24 ; [+4]
       96 MOVE                             R23 R15
       97 GETIMPORT                        R22 K39 [table.insert]
       99 CALL                             R22 2 0
      100 FORGLOOP                         R17 2 ; [-9]
      102 GETTABLEKS                       R16 R6 K40 ["PREFERRED_LAYERS"]
      104 GETTABLEKS                       R16 R16 K30 ["Hair"]
      106 CALL                             R12 4 1
      107 GETTABLEKS                       R13 R5 K41 ["basicAccessoryPalette"]
      109 LOADK                            R14 K42 ["Head"]
      110 GETIMPORT                        R15 K44 [Enum.AssetType.Hat]
      112 GETTABLEKS                       R17 R3 K45 ["head"]
      114 NEWTABLE                         R16 0 0
      116 MOVE                             R18 R17
      117 LOADNIL                          R19
      118 LOADNIL                          R20
      119 FORGPREP                         R18
      120 GETTABLEKS                       R25 R22 K36 ["id"]
      122 FASTCALL2                        TABLE_INSERT R16 R25 ; [+4]
      124 MOVE                             R24 R16
      125 GETIMPORT                        R23 K39 [table.insert]
      127 CALL                             R23 2 0
      128 FORGLOOP                         R18 2 ; [-9]
      130 CALL                             R13 3 1
      131 GETTABLEKS                       R14 R5 K29 ["layeredClothingPalette"]
      133 LOADK                            R15 K46 ["Face"]
      134 GETIMPORT                        R16 K48 [Enum.AssetType.FaceAccessory]
      136 GETTABLEKS                       R18 R3 K49 ["face"]
      138 NEWTABLE                         R17 0 0
      140 MOVE                             R19 R18
      141 LOADNIL                          R20
      142 LOADNIL                          R21
      143 FORGPREP                         R19
      144 GETTABLEKS                       R26 R23 K36 ["id"]
      146 FASTCALL2                        TABLE_INSERT R17 R26 ; [+4]
      148 MOVE                             R25 R17
      149 GETIMPORT                        R24 K39 [table.insert]
      151 CALL                             R24 2 0
      152 FORGLOOP                         R19 2 ; [-9]
      154 GETTABLEKS                       R18 R6 K40 ["PREFERRED_LAYERS"]
      156 GETTABLEKS                       R18 R18 K46 ["Face"]
      158 CALL                             R14 4 1
      159 GETTABLEKS                       R15 R5 K29 ["layeredClothingPalette"]
      161 LOADK                            R16 K50 ["Eyebrows"]
      162 GETIMPORT                        R17 K52 [Enum.AssetType.EyebrowAccessory]
      164 GETTABLEKS                       R19 R3 K53 ["eyebrows"]
      166 NEWTABLE                         R18 0 0
      168 MOVE                             R20 R19
      169 LOADNIL                          R21
      170 LOADNIL                          R22
      171 FORGPREP                         R20
      172 GETTABLEKS                       R27 R24 K36 ["id"]
      174 FASTCALL2                        TABLE_INSERT R18 R27 ; [+4]
      176 MOVE                             R26 R18
      177 GETIMPORT                        R25 K39 [table.insert]
      179 CALL                             R25 2 0
      180 FORGLOOP                         R20 2 ; [-9]
      182 GETTABLEKS                       R19 R6 K40 ["PREFERRED_LAYERS"]
      184 GETTABLEKS                       R19 R19 K50 ["Eyebrows"]
      186 CALL                             R15 4 1
      187 GETTABLEKS                       R16 R5 K29 ["layeredClothingPalette"]
      189 LOADK                            R17 K54 ["Eyelashes"]
      190 GETIMPORT                        R18 K56 [Enum.AssetType.EyelashAccessory]
      192 GETTABLEKS                       R20 R3 K57 ["eyelashes"]
      194 NEWTABLE                         R19 0 0
      196 MOVE                             R21 R20
      197 LOADNIL                          R22
      198 LOADNIL                          R23
      199 FORGPREP                         R21
      200 GETTABLEKS                       R28 R25 K36 ["id"]
      202 FASTCALL2                        TABLE_INSERT R19 R28 ; [+4]
      204 MOVE                             R27 R19
      205 GETIMPORT                        R26 K39 [table.insert]
      207 CALL                             R26 2 0
      208 FORGLOOP                         R21 2 ; [-9]
      210 GETTABLEKS                       R20 R6 K40 ["PREFERRED_LAYERS"]
      212 GETTABLEKS                       R20 R20 K54 ["Eyelashes"]
      214 CALL                             R16 4 1
      215 GETTABLEKS                       R17 R5 K41 ["basicAccessoryPalette"]
      217 LOADK                            R18 K58 ["Front"]
      218 GETIMPORT                        R19 K60 [Enum.AssetType.FrontAccessory]
      220 GETTABLEKS                       R21 R3 K61 ["front"]
      222 NEWTABLE                         R20 0 0
      224 MOVE                             R22 R21
      225 LOADNIL                          R23
      226 LOADNIL                          R24
      227 FORGPREP                         R22
      228 GETTABLEKS                       R29 R26 K36 ["id"]
      230 FASTCALL2                        TABLE_INSERT R20 R29 ; [+4]
      232 MOVE                             R28 R20
      233 GETIMPORT                        R27 K39 [table.insert]
      235 CALL                             R27 2 0
      236 FORGLOOP                         R22 2 ; [-9]
      238 CALL                             R17 3 1
      239 GETTABLEKS                       R18 R5 K41 ["basicAccessoryPalette"]
      241 LOADK                            R19 K62 ["Neck"]
      242 GETIMPORT                        R20 K64 [Enum.AssetType.NeckAccessory]
      244 GETTABLEKS                       R22 R3 K65 ["neck"]
      246 NEWTABLE                         R21 0 0
      248 MOVE                             R23 R22
      249 LOADNIL                          R24
      250 LOADNIL                          R25
      251 FORGPREP                         R23
      252 GETTABLEKS                       R30 R27 K36 ["id"]
      254 FASTCALL2                        TABLE_INSERT R21 R30 ; [+4]
      256 MOVE                             R29 R21
      257 GETIMPORT                        R28 K39 [table.insert]
      259 CALL                             R28 2 0
      260 FORGLOOP                         R23 2 ; [-9]
      262 CALL                             R18 3 1
      263 GETTABLEKS                       R19 R5 K41 ["basicAccessoryPalette"]
      265 LOADK                            R20 K66 ["Shoulder"]
      266 GETIMPORT                        R21 K68 [Enum.AssetType.ShoulderAccessory]
      268 GETTABLEKS                       R23 R3 K69 ["shoulder"]
      270 NEWTABLE                         R22 0 0
      272 MOVE                             R24 R23
      273 LOADNIL                          R25
      274 LOADNIL                          R26
      275 FORGPREP                         R24
      276 GETTABLEKS                       R31 R28 K36 ["id"]
      278 FASTCALL2                        TABLE_INSERT R22 R31 ; [+4]
      280 MOVE                             R30 R22
      281 GETIMPORT                        R29 K39 [table.insert]
      283 CALL                             R29 2 0
      284 FORGLOOP                         R24 2 ; [-9]
      286 CALL                             R19 3 1
      287 GETTABLEKS                       R20 R5 K41 ["basicAccessoryPalette"]
      289 LOADK                            R21 K70 ["Back"]
      290 GETIMPORT                        R22 K72 [Enum.AssetType.BackAccessory]
      292 GETTABLEKS                       R24 R3 K73 ["back"]
      294 NEWTABLE                         R23 0 0
      296 MOVE                             R25 R24
      297 LOADNIL                          R26
      298 LOADNIL                          R27
      299 FORGPREP                         R25
      300 GETTABLEKS                       R32 R29 K36 ["id"]
      302 FASTCALL2                        TABLE_INSERT R23 R32 ; [+4]
      304 MOVE                             R31 R23
      305 GETIMPORT                        R30 K39 [table.insert]
      307 CALL                             R30 2 0
      308 FORGLOOP                         R25 2 ; [-9]
      310 CALL                             R20 3 1
      311 GETTABLEKS                       R21 R5 K41 ["basicAccessoryPalette"]
      313 LOADK                            R22 K74 ["Waist"]
      314 GETIMPORT                        R23 K76 [Enum.AssetType.WaistAccessory]
      316 GETTABLEKS                       R25 R3 K77 ["waist"]
      318 NEWTABLE                         R24 0 0
      320 MOVE                             R26 R25
      321 LOADNIL                          R27
      322 LOADNIL                          R28
      323 FORGPREP                         R26
      324 GETTABLEKS                       R33 R30 K36 ["id"]
      326 FASTCALL2                        TABLE_INSERT R24 R33 ; [+4]
      328 MOVE                             R32 R24
      329 GETIMPORT                        R31 K39 [table.insert]
      331 CALL                             R31 2 0
      332 FORGLOOP                         R26 2 ; [-9]
      334 CALL                             R21 3 1
      335 GETTABLEKS                       R22 R5 K78 ["gearPalette"]
      337 GETTABLEKS                       R24 R3 K79 ["gearLeft"]
      339 NEWTABLE                         R23 0 0
      341 MOVE                             R25 R24
      342 LOADNIL                          R26
      343 LOADNIL                          R27
      344 FORGPREP                         R25
      345 GETTABLEKS                       R32 R29 K36 ["id"]
      347 FASTCALL2                        TABLE_INSERT R23 R32 ; [+4]
      349 MOVE                             R31 R23
      350 GETIMPORT                        R30 K39 [table.insert]
      352 CALL                             R30 2 0
      353 FORGLOOP                         R25 2 ; [-9]
      355 LOADK                            R24 K80 ["left"]
      356 CALL                             R22 2 1
      357 GETTABLEKS                       R23 R5 K78 ["gearPalette"]
      359 GETTABLEKS                       R25 R3 K81 ["gearRight"]
      361 NEWTABLE                         R24 0 0
      363 MOVE                             R26 R25
      364 LOADNIL                          R27
      365 LOADNIL                          R28
      366 FORGPREP                         R26
      367 GETTABLEKS                       R33 R30 K36 ["id"]
      369 FASTCALL2                        TABLE_INSERT R24 R33 ; [+4]
      371 MOVE                             R32 R24
      372 GETIMPORT                        R31 K39 [table.insert]
      374 CALL                             R31 2 0
      375 FORGLOOP                         R26 2 ; [-9]
      377 LOADK                            R25 K82 ["right"]
      378 CALL                             R23 2 -1
      379 SETLIST                          R11 R12 -1 [1]
      381 SETTABLEKS                       R11 R10 K20 ["accessories"]
      383 NEWTABLE                         R11 0 2
      385 GETTABLEKS                       R12 R5 K83 ["createBodyAnimationPalette"]
      387 LOADK                            R13 K84 ["Movement"]
      388 NEWTABLE                         R14 0 8
      390 LOADK                            R15 K85 [16540596584]
      391 LOADK                            R16 K86 [16562317918]
      392 LOADK                            R17 K87 [16562332340]
      393 LOADK                            R18 K88 [16562326358]
      394 LOADK                            R19 K89 [16562321958]
      395 LOADK                            R20 K90 [16562307212]
      396 LOADK                            R21 K91 [16562311455]
      397 LOADK                            R22 K92 [16562329379]
      398 SETLIST                          R14 R15 8 [1]
      400 CALL                             R12 2 1
      401 GETTABLEKS                       R13 R5 K83 ["createBodyAnimationPalette"]
      403 LOADK                            R14 K93 ["BodyEmotes"]
      404 NEWTABLE                         R15 0 10
      406 LOADK                            R16 K94 [16569676514]
      407 LOADK                            R17 K95 [16569175989]
      408 LOADK                            R18 K96 [16569548328]
      409 LOADK                            R19 K97 [16569163126]
      410 LOADK                            R20 K98 [10714358528]
      411 LOADK                            R21 K99 [10714395441]
      412 LOADK                            R22 K100 [10714383856]
      413 LOADK                            R23 K101 [4940563117]
      414 LOADK                            R24 K102 [10714347256]
      415 LOADK                            R25 K103 [10714369325]
      416 SETLIST                          R15 R16 10 [1]
      418 CALL                             R13 2 -1
      419 SETLIST                          R11 R12 -1 [1]
      421 SETTABLEKS                       R11 R10 K21 ["animations"]
      423 GETTABLEKS                       R11 R1 K104 ["List"]
      425 GETTABLEKS                       R11 R11 K105 ["join"]
      427 NEWTABLE                         R12 0 2
      429 GETTABLEKS                       R13 R5 K106 ["skinPalette"]
      431 MOVE                             R14 R4
      432 CALL                             R13 1 1
      433 GETTABLEKS                       R14 R5 K107 ["createHeadPalette"]
      435 GETTABLEKS                       R15 R2 K108 ["heads"]
      437 CALL                             R14 1 -1
      438 SETLIST                          R12 R13 -1 [1]
      440 GETTABLEKS                       R13 R5 K109 ["createBodyCategory"]
      442 GETTABLEKS                       R14 R2 K110 ["bodies"]
      444 CALL                             R13 1 -1
      445 CALL                             R11 -1 1
      446 SETTABLEKS                       R11 R10 K22 ["body"]
      448 NEWTABLE                         R11 0 11
      450 GETTABLEKS                       R12 R5 K29 ["layeredClothingPalette"]
      452 LOADK                            R13 K111 ["Shirts"]
      453 GETIMPORT                        R14 K113 [Enum.AssetType.ShirtAccessory]
      455 GETTABLEKS                       R16 R3 K114 ["shirts"]
      457 NEWTABLE                         R15 0 0
      459 MOVE                             R17 R16
      460 LOADNIL                          R18
      461 LOADNIL                          R19
      462 FORGPREP                         R17
      463 GETTABLEKS                       R24 R21 K36 ["id"]
      465 FASTCALL2                        TABLE_INSERT R15 R24 ; [+4]
      467 MOVE                             R23 R15
      468 GETIMPORT                        R22 K39 [table.insert]
      470 CALL                             R22 2 0
      471 FORGLOOP                         R17 2 ; [-9]
      473 GETTABLEKS                       R16 R6 K40 ["PREFERRED_LAYERS"]
      475 GETTABLEKS                       R16 R16 K115 ["Tops"]
      477 CALL                             R12 4 1
      478 GETTABLEKS                       R13 R5 K29 ["layeredClothingPalette"]
      480 LOADK                            R14 K116 ["TShirts"]
      481 GETIMPORT                        R15 K118 [Enum.AssetType.TShirtAccessory]
      483 GETTABLEKS                       R17 R3 K119 ["tshirts"]
      485 NEWTABLE                         R16 0 0
      487 MOVE                             R18 R17
      488 LOADNIL                          R19
      489 LOADNIL                          R20
      490 FORGPREP                         R18
      491 GETTABLEKS                       R25 R22 K36 ["id"]
      493 FASTCALL2                        TABLE_INSERT R16 R25 ; [+4]
      495 MOVE                             R24 R16
      496 GETIMPORT                        R23 K39 [table.insert]
      498 CALL                             R23 2 0
      499 FORGLOOP                         R18 2 ; [-9]
      501 GETTABLEKS                       R17 R6 K40 ["PREFERRED_LAYERS"]
      503 GETTABLEKS                       R17 R17 K115 ["Tops"]
      505 CALL                             R13 4 1
      506 GETTABLEKS                       R14 R5 K29 ["layeredClothingPalette"]
      508 LOADK                            R15 K120 ["Jackets"]
      509 GETIMPORT                        R16 K122 [Enum.AssetType.JacketAccessory]
      511 GETTABLEKS                       R18 R3 K123 ["jackets"]
      513 NEWTABLE                         R17 0 0
      515 MOVE                             R19 R18
      516 LOADNIL                          R20
      517 LOADNIL                          R21
      518 FORGPREP                         R19
      519 GETTABLEKS                       R26 R23 K36 ["id"]
      521 FASTCALL2                        TABLE_INSERT R17 R26 ; [+4]
      523 MOVE                             R25 R17
      524 GETIMPORT                        R24 K39 [table.insert]
      526 CALL                             R24 2 0
      527 FORGLOOP                         R19 2 ; [-9]
      529 GETTABLEKS                       R18 R6 K40 ["PREFERRED_LAYERS"]
      531 GETTABLEKS                       R18 R18 K124 ["Outerwear"]
      533 CALL                             R14 4 1
      534 GETTABLEKS                       R15 R5 K29 ["layeredClothingPalette"]
      536 LOADK                            R16 K125 ["Sweaters"]
      537 GETIMPORT                        R17 K127 [Enum.AssetType.SweaterAccessory]
      539 GETTABLEKS                       R19 R3 K128 ["sweaters"]
      541 NEWTABLE                         R18 0 0
      543 MOVE                             R20 R19
      544 LOADNIL                          R21
      545 LOADNIL                          R22
      546 FORGPREP                         R20
      547 GETTABLEKS                       R27 R24 K36 ["id"]
      549 FASTCALL2                        TABLE_INSERT R18 R27 ; [+4]
      551 MOVE                             R26 R18
      552 GETIMPORT                        R25 K39 [table.insert]
      554 CALL                             R25 2 0
      555 FORGLOOP                         R20 2 ; [-9]
      557 GETTABLEKS                       R19 R6 K40 ["PREFERRED_LAYERS"]
      559 GETTABLEKS                       R19 R19 K115 ["Tops"]
      561 CALL                             R15 4 1
      562 GETTABLEKS                       R16 R5 K29 ["layeredClothingPalette"]
      564 LOADK                            R17 K129 ["Pants"]
      565 GETIMPORT                        R18 K131 [Enum.AssetType.PantsAccessory]
      567 GETTABLEKS                       R20 R3 K132 ["pants"]
      569 NEWTABLE                         R19 0 0
      571 MOVE                             R21 R20
      572 LOADNIL                          R22
      573 LOADNIL                          R23
      574 FORGPREP                         R21
      575 GETTABLEKS                       R28 R25 K36 ["id"]
      577 FASTCALL2                        TABLE_INSERT R19 R28 ; [+4]
      579 MOVE                             R27 R19
      580 GETIMPORT                        R26 K39 [table.insert]
      582 CALL                             R26 2 0
      583 FORGLOOP                         R21 2 ; [-9]
      585 GETTABLEKS                       R20 R6 K40 ["PREFERRED_LAYERS"]
      587 GETTABLEKS                       R20 R20 K133 ["Bottoms"]
      589 CALL                             R16 4 1
      590 GETTABLEKS                       R17 R5 K29 ["layeredClothingPalette"]
      592 LOADK                            R18 K134 ["Shorts"]
      593 GETIMPORT                        R19 K136 [Enum.AssetType.ShortsAccessory]
      595 GETTABLEKS                       R21 R3 K137 ["shorts"]
      597 NEWTABLE                         R20 0 0
      599 MOVE                             R22 R21
      600 LOADNIL                          R23
      601 LOADNIL                          R24
      602 FORGPREP                         R22
      603 GETTABLEKS                       R29 R26 K36 ["id"]
      605 FASTCALL2                        TABLE_INSERT R20 R29 ; [+4]
      607 MOVE                             R28 R20
      608 GETIMPORT                        R27 K39 [table.insert]
      610 CALL                             R27 2 0
      611 FORGLOOP                         R22 2 ; [-9]
      613 GETTABLEKS                       R21 R6 K40 ["PREFERRED_LAYERS"]
      615 GETTABLEKS                       R21 R21 K133 ["Bottoms"]
      617 CALL                             R17 4 1
      618 GETTABLEKS                       R18 R5 K29 ["layeredClothingPalette"]
      620 LOADK                            R19 K138 ["Skirts"]
      621 GETIMPORT                        R20 K140 [Enum.AssetType.DressSkirtAccessory]
      623 GETTABLEKS                       R22 R3 K141 ["skirts"]
      625 NEWTABLE                         R21 0 0
      627 MOVE                             R23 R22
      628 LOADNIL                          R24
      629 LOADNIL                          R25
      630 FORGPREP                         R23
      631 GETTABLEKS                       R30 R27 K36 ["id"]
      633 FASTCALL2                        TABLE_INSERT R21 R30 ; [+4]
      635 MOVE                             R29 R21
      636 GETIMPORT                        R28 K39 [table.insert]
      638 CALL                             R28 2 0
      639 FORGLOOP                         R23 2 ; [-9]
      641 GETTABLEKS                       R22 R6 K40 ["PREFERRED_LAYERS"]
      643 GETTABLEKS                       R22 R22 K133 ["Bottoms"]
      645 CALL                             R18 4 1
      646 GETTABLEKS                       R19 R5 K142 ["shoesPalette"]
      648 NEWTABLE                         R20 0 3
      650 DUPTABLE                         R21 K145 [{["left"] = 8722031289, ["right"] = 8722020587}]
      651 DUPTABLE                         R22 K148 [{["left"] = 7193170137, ["right"] = 7193171232}]
      652 DUPTABLE                         R23 K151 [{["left"] = 7193104827, ["right"] = 7193106211}]
      653 SETLIST                          R20 R21 3 [1]
      655 CALL                             R19 1 1
      656 MOVE                             R21 R8
      657 CALL                             R21 0 1
      658 JUMPIFNOT                        R21 ; [+25]
      659 GETTABLEKS                       R20 R5 K152 ["classicClothingPalette"]
      661 LOADK                            R21 K153 ["ClassicShirts"]
      662 GETIMPORT                        R22 K155 [Enum.AssetType.Shirt]
      664 GETTABLEKS                       R24 R3 K156 ["classicShirts"]
      666 NEWTABLE                         R23 0 0
      668 MOVE                             R25 R24
      669 LOADNIL                          R26
      670 LOADNIL                          R27
      671 FORGPREP                         R25
      672 GETTABLEKS                       R32 R29 K36 ["id"]
      674 FASTCALL2                        TABLE_INSERT R23 R32 ; [+4]
      676 MOVE                             R31 R23
      677 GETIMPORT                        R30 K39 [table.insert]
      679 CALL                             R30 2 0
      680 FORGLOOP                         R25 2 ; [-9]
      682 CALL                             R20 3 1
      683 JUMP                             ; [+1]
      684 LOADNIL                          R20
      685 MOVE                             R22 R8
      686 CALL                             R22 0 1
      687 JUMPIFNOT                        R22 ; [+25]
      688 GETTABLEKS                       R21 R5 K152 ["classicClothingPalette"]
      690 LOADK                            R22 K157 ["ClassicTShirts"]
      691 GETIMPORT                        R23 K159 [Enum.AssetType.TShirt]
      693 GETTABLEKS                       R25 R3 K160 ["classicTShirts"]
      695 NEWTABLE                         R24 0 0
      697 MOVE                             R26 R25
      698 LOADNIL                          R27
      699 LOADNIL                          R28
      700 FORGPREP                         R26
      701 GETTABLEKS                       R33 R30 K36 ["id"]
      703 FASTCALL2                        TABLE_INSERT R24 R33 ; [+4]
      705 MOVE                             R32 R24
      706 GETIMPORT                        R31 K39 [table.insert]
      708 CALL                             R31 2 0
      709 FORGLOOP                         R26 2 ; [-9]
      711 CALL                             R21 3 1
      712 JUMP                             ; [+1]
      713 LOADNIL                          R21
      714 MOVE                             R23 R8
      715 CALL                             R23 0 1
      716 JUMPIFNOT                        R23 ; [+25]
      717 GETTABLEKS                       R22 R5 K152 ["classicClothingPalette"]
      719 LOADK                            R23 K161 ["ClassicPants"]
      720 GETIMPORT                        R24 K162 [Enum.AssetType.Pants]
      722 GETTABLEKS                       R26 R3 K163 ["classicPants"]
      724 NEWTABLE                         R25 0 0
      726 MOVE                             R27 R26
      727 LOADNIL                          R28
      728 LOADNIL                          R29
      729 FORGPREP                         R27
      730 GETTABLEKS                       R34 R31 K36 ["id"]
      732 FASTCALL2                        TABLE_INSERT R25 R34 ; [+4]
      734 MOVE                             R33 R25
      735 GETIMPORT                        R32 K39 [table.insert]
      737 CALL                             R32 2 0
      738 FORGLOOP                         R27 2 ; [-9]
      740 CALL                             R22 3 1
      741 JUMP                             ; [+1]
      742 LOADNIL                          R22
      743 SETLIST                          R11 R12 11 [1]
      745 SETTABLEKS                       R11 R10 K23 ["clothing"]
      747 NEWTABLE                         R11 0 1
      749 GETTABLEKS                       R12 R5 K164 ["emotionPalette"]
      751 NEWTABLE                         R13 0 6
      753 LOADK                            R14 K165 [13965126930]
      754 LOADK                            R15 K166 [13965139478]
      755 LOADK                            R16 K167 [13965076233]
      756 LOADK                            R17 K168 [13965039145]
      757 LOADK                            R18 K169 [13965064041]
      758 LOADK                            R19 K170 [13965162732]
      759 SETLIST                          R13 R14 6 [1]
      761 CALL                             R12 1 -1
      762 SETLIST                          R11 R12 -1 [1]
      764 SETTABLEKS                       R11 R10 K24 ["animations_face"]
      766 NEWTABLE                         R11 0 2
      768 GETTABLEKS                       R12 R5 K106 ["skinPalette"]
      770 MOVE                             R13 R4
      771 CALL                             R12 1 1
      772 GETTABLEKS                       R13 R5 K107 ["createHeadPalette"]
      774 GETTABLEKS                       R14 R2 K108 ["heads"]
      776 CALL                             R13 1 -1
      777 SETLIST                          R11 R12 -1 [1]
      779 SETTABLEKS                       R11 R10 K25 ["body_face"]
      781 NEWTABLE                         R11 0 3
      783 GETTABLEKS                       R12 R5 K29 ["layeredClothingPalette"]
      785 LOADK                            R13 K30 ["Hair"]
      786 GETIMPORT                        R14 K34 [Enum.AssetType.HairAccessory]
      788 GETTABLEKS                       R16 R3 K35 ["hair"]
      790 NEWTABLE                         R15 0 0
      792 MOVE                             R17 R16
      793 LOADNIL                          R18
      794 LOADNIL                          R19
      795 FORGPREP                         R17
      796 GETTABLEKS                       R24 R21 K36 ["id"]
      798 FASTCALL2                        TABLE_INSERT R15 R24 ; [+4]
      800 MOVE                             R23 R15
      801 GETIMPORT                        R22 K39 [table.insert]
      803 CALL                             R22 2 0
      804 FORGLOOP                         R17 2 ; [-9]
      806 GETTABLEKS                       R16 R6 K40 ["PREFERRED_LAYERS"]
      808 GETTABLEKS                       R16 R16 K30 ["Hair"]
      810 CALL                             R12 4 1
      811 GETTABLEKS                       R13 R5 K41 ["basicAccessoryPalette"]
      813 LOADK                            R14 K42 ["Head"]
      814 GETIMPORT                        R15 K44 [Enum.AssetType.Hat]
      816 GETTABLEKS                       R17 R3 K45 ["head"]
      818 NEWTABLE                         R16 0 0
      820 MOVE                             R18 R17
      821 LOADNIL                          R19
      822 LOADNIL                          R20
      823 FORGPREP                         R18
      824 GETTABLEKS                       R25 R22 K36 ["id"]
      826 FASTCALL2                        TABLE_INSERT R16 R25 ; [+4]
      828 MOVE                             R24 R16
      829 GETIMPORT                        R23 K39 [table.insert]
      831 CALL                             R23 2 0
      832 FORGLOOP                         R18 2 ; [-9]
      834 CALL                             R13 3 1
      835 GETTABLEKS                       R14 R5 K29 ["layeredClothingPalette"]
      837 LOADK                            R15 K46 ["Face"]
      838 GETIMPORT                        R16 K48 [Enum.AssetType.FaceAccessory]
      840 GETTABLEKS                       R18 R3 K49 ["face"]
      842 NEWTABLE                         R17 0 0
      844 MOVE                             R19 R18
      845 LOADNIL                          R20
      846 LOADNIL                          R21
      847 FORGPREP                         R19
      848 GETTABLEKS                       R26 R23 K36 ["id"]
      850 FASTCALL2                        TABLE_INSERT R17 R26 ; [+4]
      852 MOVE                             R25 R17
      853 GETIMPORT                        R24 K39 [table.insert]
      855 CALL                             R24 2 0
      856 FORGLOOP                         R19 2 ; [-9]
      858 GETTABLEKS                       R18 R6 K40 ["PREFERRED_LAYERS"]
      860 GETTABLEKS                       R18 R18 K46 ["Face"]
      862 CALL                             R14 4 -1
      863 SETLIST                          R11 R12 -1 [1]
      865 SETTABLEKS                       R11 R10 K26 ["accessories_face"]
      867 NEWTABLE                         R11 0 5
      869 GETTABLEKS                       R12 R5 K171 ["createMakeupPalette"]
      871 LOADK                            R13 K172 ["FaceMakeup"]
      872 GETIMPORT                        R14 K173 [Enum.AssetType.FaceMakeup]
      874 GETTABLEKS                       R16 R3 K174 ["faceMakeup"]
      876 NEWTABLE                         R15 0 0
      878 MOVE                             R17 R16
      879 LOADNIL                          R18
      880 LOADNIL                          R19
      881 FORGPREP                         R17
      882 GETTABLEKS                       R24 R21 K36 ["id"]
      884 FASTCALL2                        TABLE_INSERT R15 R24 ; [+4]
      886 MOVE                             R23 R15
      887 GETIMPORT                        R22 K39 [table.insert]
      889 CALL                             R22 2 0
      890 FORGLOOP                         R17 2 ; [-9]
      892 CALL                             R12 3 1
      893 GETTABLEKS                       R13 R5 K171 ["createMakeupPalette"]
      895 LOADK                            R14 K175 ["LipMakeup"]
      896 GETIMPORT                        R15 K176 [Enum.AssetType.LipMakeup]
      898 GETTABLEKS                       R17 R3 K177 ["lipMakeup"]
      900 NEWTABLE                         R16 0 0
      902 MOVE                             R18 R17
      903 LOADNIL                          R19
      904 LOADNIL                          R20
      905 FORGPREP                         R18
      906 GETTABLEKS                       R25 R22 K36 ["id"]
      908 FASTCALL2                        TABLE_INSERT R16 R25 ; [+4]
      910 MOVE                             R24 R16
      911 GETIMPORT                        R23 K39 [table.insert]
      913 CALL                             R23 2 0
      914 FORGLOOP                         R18 2 ; [-9]
      916 CALL                             R13 3 1
      917 GETTABLEKS                       R14 R5 K171 ["createMakeupPalette"]
      919 LOADK                            R15 K178 ["EyeMakeup"]
      920 GETIMPORT                        R16 K179 [Enum.AssetType.EyeMakeup]
      922 GETTABLEKS                       R18 R3 K180 ["eyeMakeup"]
      924 NEWTABLE                         R17 0 0
      926 MOVE                             R19 R18
      927 LOADNIL                          R20
      928 LOADNIL                          R21
      929 FORGPREP                         R19
      930 GETTABLEKS                       R26 R23 K36 ["id"]
      932 FASTCALL2                        TABLE_INSERT R17 R26 ; [+4]
      934 MOVE                             R25 R17
      935 GETIMPORT                        R24 K39 [table.insert]
      937 CALL                             R24 2 0
      938 FORGLOOP                         R19 2 ; [-9]
      940 CALL                             R14 3 1
      941 GETTABLEKS                       R15 R5 K29 ["layeredClothingPalette"]
      943 LOADK                            R16 K50 ["Eyebrows"]
      944 GETIMPORT                        R17 K52 [Enum.AssetType.EyebrowAccessory]
      946 GETTABLEKS                       R19 R3 K53 ["eyebrows"]
      948 NEWTABLE                         R18 0 0
      950 MOVE                             R20 R19
      951 LOADNIL                          R21
      952 LOADNIL                          R22
      953 FORGPREP                         R20
      954 GETTABLEKS                       R27 R24 K36 ["id"]
      956 FASTCALL2                        TABLE_INSERT R18 R27 ; [+4]
      958 MOVE                             R26 R18
      959 GETIMPORT                        R25 K39 [table.insert]
      961 CALL                             R25 2 0
      962 FORGLOOP                         R20 2 ; [-9]
      964 GETTABLEKS                       R19 R6 K40 ["PREFERRED_LAYERS"]
      966 GETTABLEKS                       R19 R19 K50 ["Eyebrows"]
      968 CALL                             R15 4 1
      969 GETTABLEKS                       R16 R5 K29 ["layeredClothingPalette"]
      971 LOADK                            R17 K54 ["Eyelashes"]
      972 GETIMPORT                        R18 K56 [Enum.AssetType.EyelashAccessory]
      974 GETTABLEKS                       R20 R3 K57 ["eyelashes"]
      976 NEWTABLE                         R19 0 0
      978 MOVE                             R21 R20
      979 LOADNIL                          R22
      980 LOADNIL                          R23
      981 FORGPREP                         R21
      982 GETTABLEKS                       R28 R25 K36 ["id"]
      984 FASTCALL2                        TABLE_INSERT R19 R28 ; [+4]
      986 MOVE                             R27 R19
      987 GETIMPORT                        R26 K39 [table.insert]
      989 CALL                             R26 2 0
      990 FORGLOOP                         R21 2 ; [-9]
      992 GETTABLEKS                       R20 R6 K40 ["PREFERRED_LAYERS"]
      994 GETTABLEKS                       R20 R20 K54 ["Eyelashes"]
      996 CALL                             R16 4 -1
      997 SETLIST                          R11 R12 -1 [1]
      999 SETTABLEKS                       R11 R10 K27 ["makeup"]
     1001 RETURN                           R10 1
