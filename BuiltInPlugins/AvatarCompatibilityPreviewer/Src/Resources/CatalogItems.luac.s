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
       86 NEWTABLE                         R17 0 0
       88 MOVE                             R18 R16
       89 LOADNIL                          R19
       90 LOADNIL                          R20
       91 FORGPREP                         R18
       92 GETTABLEKS                       R25 R22 K36 ["id"]
       94 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
       96 MOVE                             R24 R17
       97 GETIMPORT                        R23 K39 [table.insert]
       99 CALL                             R23 2 0
      100 FORGLOOP                         R18 2 ; [-9]
      102 MOVE                             R15 R17
      103 GETTABLEKS                       R16 R6 K40 ["PREFERRED_LAYERS"]
      105 GETTABLEKS                       R16 R16 K30 ["Hair"]
      107 CALL                             R12 4 1
      108 GETTABLEKS                       R13 R5 K41 ["basicAccessoryPalette"]
      110 LOADK                            R14 K42 ["Head"]
      111 GETIMPORT                        R15 K44 [Enum.AssetType.Hat]
      113 GETTABLEKS                       R17 R3 K45 ["head"]
      115 NEWTABLE                         R18 0 0
      117 MOVE                             R19 R17
      118 LOADNIL                          R20
      119 LOADNIL                          R21
      120 FORGPREP                         R19
      121 GETTABLEKS                       R26 R23 K36 ["id"]
      123 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      125 MOVE                             R25 R18
      126 GETIMPORT                        R24 K39 [table.insert]
      128 CALL                             R24 2 0
      129 FORGLOOP                         R19 2 ; [-9]
      131 MOVE                             R16 R18
      132 CALL                             R13 3 1
      133 GETTABLEKS                       R14 R5 K29 ["layeredClothingPalette"]
      135 LOADK                            R15 K46 ["Face"]
      136 GETIMPORT                        R16 K48 [Enum.AssetType.FaceAccessory]
      138 GETTABLEKS                       R18 R3 K49 ["face"]
      140 NEWTABLE                         R19 0 0
      142 MOVE                             R20 R18
      143 LOADNIL                          R21
      144 LOADNIL                          R22
      145 FORGPREP                         R20
      146 GETTABLEKS                       R27 R24 K36 ["id"]
      148 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      150 MOVE                             R26 R19
      151 GETIMPORT                        R25 K39 [table.insert]
      153 CALL                             R25 2 0
      154 FORGLOOP                         R20 2 ; [-9]
      156 MOVE                             R17 R19
      157 GETTABLEKS                       R18 R6 K40 ["PREFERRED_LAYERS"]
      159 GETTABLEKS                       R18 R18 K46 ["Face"]
      161 CALL                             R14 4 1
      162 GETTABLEKS                       R15 R5 K29 ["layeredClothingPalette"]
      164 LOADK                            R16 K50 ["Eyebrows"]
      165 GETIMPORT                        R17 K52 [Enum.AssetType.EyebrowAccessory]
      167 GETTABLEKS                       R19 R3 K53 ["eyebrows"]
      169 NEWTABLE                         R20 0 0
      171 MOVE                             R21 R19
      172 LOADNIL                          R22
      173 LOADNIL                          R23
      174 FORGPREP                         R21
      175 GETTABLEKS                       R28 R25 K36 ["id"]
      177 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      179 MOVE                             R27 R20
      180 GETIMPORT                        R26 K39 [table.insert]
      182 CALL                             R26 2 0
      183 FORGLOOP                         R21 2 ; [-9]
      185 MOVE                             R18 R20
      186 GETTABLEKS                       R19 R6 K40 ["PREFERRED_LAYERS"]
      188 GETTABLEKS                       R19 R19 K50 ["Eyebrows"]
      190 CALL                             R15 4 1
      191 GETTABLEKS                       R16 R5 K29 ["layeredClothingPalette"]
      193 LOADK                            R17 K54 ["Eyelashes"]
      194 GETIMPORT                        R18 K56 [Enum.AssetType.EyelashAccessory]
      196 GETTABLEKS                       R20 R3 K57 ["eyelashes"]
      198 NEWTABLE                         R21 0 0
      200 MOVE                             R22 R20
      201 LOADNIL                          R23
      202 LOADNIL                          R24
      203 FORGPREP                         R22
      204 GETTABLEKS                       R29 R26 K36 ["id"]
      206 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      208 MOVE                             R28 R21
      209 GETIMPORT                        R27 K39 [table.insert]
      211 CALL                             R27 2 0
      212 FORGLOOP                         R22 2 ; [-9]
      214 MOVE                             R19 R21
      215 GETTABLEKS                       R20 R6 K40 ["PREFERRED_LAYERS"]
      217 GETTABLEKS                       R20 R20 K54 ["Eyelashes"]
      219 CALL                             R16 4 1
      220 GETTABLEKS                       R17 R5 K41 ["basicAccessoryPalette"]
      222 LOADK                            R18 K58 ["Front"]
      223 GETIMPORT                        R19 K60 [Enum.AssetType.FrontAccessory]
      225 GETTABLEKS                       R21 R3 K61 ["front"]
      227 NEWTABLE                         R22 0 0
      229 MOVE                             R23 R21
      230 LOADNIL                          R24
      231 LOADNIL                          R25
      232 FORGPREP                         R23
      233 GETTABLEKS                       R30 R27 K36 ["id"]
      235 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      237 MOVE                             R29 R22
      238 GETIMPORT                        R28 K39 [table.insert]
      240 CALL                             R28 2 0
      241 FORGLOOP                         R23 2 ; [-9]
      243 MOVE                             R20 R22
      244 CALL                             R17 3 1
      245 GETTABLEKS                       R18 R5 K41 ["basicAccessoryPalette"]
      247 LOADK                            R19 K62 ["Neck"]
      248 GETIMPORT                        R20 K64 [Enum.AssetType.NeckAccessory]
      250 GETTABLEKS                       R22 R3 K65 ["neck"]
      252 NEWTABLE                         R23 0 0
      254 MOVE                             R24 R22
      255 LOADNIL                          R25
      256 LOADNIL                          R26
      257 FORGPREP                         R24
      258 GETTABLEKS                       R31 R28 K36 ["id"]
      260 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      262 MOVE                             R30 R23
      263 GETIMPORT                        R29 K39 [table.insert]
      265 CALL                             R29 2 0
      266 FORGLOOP                         R24 2 ; [-9]
      268 MOVE                             R21 R23
      269 CALL                             R18 3 1
      270 GETTABLEKS                       R19 R5 K41 ["basicAccessoryPalette"]
      272 LOADK                            R20 K66 ["Shoulder"]
      273 GETIMPORT                        R21 K68 [Enum.AssetType.ShoulderAccessory]
      275 GETTABLEKS                       R23 R3 K69 ["shoulder"]
      277 NEWTABLE                         R24 0 0
      279 MOVE                             R25 R23
      280 LOADNIL                          R26
      281 LOADNIL                          R27
      282 FORGPREP                         R25
      283 GETTABLEKS                       R32 R29 K36 ["id"]
      285 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      287 MOVE                             R31 R24
      288 GETIMPORT                        R30 K39 [table.insert]
      290 CALL                             R30 2 0
      291 FORGLOOP                         R25 2 ; [-9]
      293 MOVE                             R22 R24
      294 CALL                             R19 3 1
      295 GETTABLEKS                       R20 R5 K41 ["basicAccessoryPalette"]
      297 LOADK                            R21 K70 ["Back"]
      298 GETIMPORT                        R22 K72 [Enum.AssetType.BackAccessory]
      300 GETTABLEKS                       R24 R3 K73 ["back"]
      302 NEWTABLE                         R25 0 0
      304 MOVE                             R26 R24
      305 LOADNIL                          R27
      306 LOADNIL                          R28
      307 FORGPREP                         R26
      308 GETTABLEKS                       R33 R30 K36 ["id"]
      310 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      312 MOVE                             R32 R25
      313 GETIMPORT                        R31 K39 [table.insert]
      315 CALL                             R31 2 0
      316 FORGLOOP                         R26 2 ; [-9]
      318 MOVE                             R23 R25
      319 CALL                             R20 3 1
      320 GETTABLEKS                       R21 R5 K41 ["basicAccessoryPalette"]
      322 LOADK                            R22 K74 ["Waist"]
      323 GETIMPORT                        R23 K76 [Enum.AssetType.WaistAccessory]
      325 GETTABLEKS                       R25 R3 K77 ["waist"]
      327 NEWTABLE                         R26 0 0
      329 MOVE                             R27 R25
      330 LOADNIL                          R28
      331 LOADNIL                          R29
      332 FORGPREP                         R27
      333 GETTABLEKS                       R34 R31 K36 ["id"]
      335 FASTCALL2                        TABLE_INSERT R26 R34 ; [+4]
      337 MOVE                             R33 R26
      338 GETIMPORT                        R32 K39 [table.insert]
      340 CALL                             R32 2 0
      341 FORGLOOP                         R27 2 ; [-9]
      343 MOVE                             R24 R26
      344 CALL                             R21 3 1
      345 GETTABLEKS                       R22 R5 K78 ["gearPalette"]
      347 GETTABLEKS                       R24 R3 K79 ["gearLeft"]
      349 NEWTABLE                         R25 0 0
      351 MOVE                             R26 R24
      352 LOADNIL                          R27
      353 LOADNIL                          R28
      354 FORGPREP                         R26
      355 GETTABLEKS                       R33 R30 K36 ["id"]
      357 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      359 MOVE                             R32 R25
      360 GETIMPORT                        R31 K39 [table.insert]
      362 CALL                             R31 2 0
      363 FORGLOOP                         R26 2 ; [-9]
      365 MOVE                             R23 R25
      366 LOADK                            R24 K80 ["left"]
      367 CALL                             R22 2 1
      368 GETTABLEKS                       R23 R5 K78 ["gearPalette"]
      370 GETTABLEKS                       R25 R3 K81 ["gearRight"]
      372 NEWTABLE                         R26 0 0
      374 MOVE                             R27 R25
      375 LOADNIL                          R28
      376 LOADNIL                          R29
      377 FORGPREP                         R27
      378 GETTABLEKS                       R34 R31 K36 ["id"]
      380 FASTCALL2                        TABLE_INSERT R26 R34 ; [+4]
      382 MOVE                             R33 R26
      383 GETIMPORT                        R32 K39 [table.insert]
      385 CALL                             R32 2 0
      386 FORGLOOP                         R27 2 ; [-9]
      388 MOVE                             R24 R26
      389 LOADK                            R25 K82 ["right"]
      390 CALL                             R23 2 -1
      391 SETLIST                          R11 R12 -1 [1]
      393 SETTABLEKS                       R11 R10 K20 ["accessories"]
      395 NEWTABLE                         R11 0 2
      397 GETTABLEKS                       R12 R5 K83 ["createBodyAnimationPalette"]
      399 LOADK                            R13 K84 ["Movement"]
      400 NEWTABLE                         R14 0 8
      402 LOADK                            R15 K85 [16540596584]
      403 LOADK                            R16 K86 [16562317918]
      404 LOADK                            R17 K87 [16562332340]
      405 LOADK                            R18 K88 [16562326358]
      406 LOADK                            R19 K89 [16562321958]
      407 LOADK                            R20 K90 [16562307212]
      408 LOADK                            R21 K91 [16562311455]
      409 LOADK                            R22 K92 [16562329379]
      410 SETLIST                          R14 R15 8 [1]
      412 CALL                             R12 2 1
      413 GETTABLEKS                       R13 R5 K83 ["createBodyAnimationPalette"]
      415 LOADK                            R14 K93 ["BodyEmotes"]
      416 NEWTABLE                         R15 0 10
      418 LOADK                            R16 K94 [16569676514]
      419 LOADK                            R17 K95 [16569175989]
      420 LOADK                            R18 K96 [16569548328]
      421 LOADK                            R19 K97 [16569163126]
      422 LOADK                            R20 K98 [10714358528]
      423 LOADK                            R21 K99 [10714395441]
      424 LOADK                            R22 K100 [10714383856]
      425 LOADK                            R23 K101 [4940563117]
      426 LOADK                            R24 K102 [10714347256]
      427 LOADK                            R25 K103 [10714369325]
      428 SETLIST                          R15 R16 10 [1]
      430 CALL                             R13 2 -1
      431 SETLIST                          R11 R12 -1 [1]
      433 SETTABLEKS                       R11 R10 K21 ["animations"]
      435 GETTABLEKS                       R11 R1 K104 ["List"]
      437 GETTABLEKS                       R11 R11 K105 ["join"]
      439 NEWTABLE                         R12 0 2
      441 GETTABLEKS                       R13 R5 K106 ["skinPalette"]
      443 MOVE                             R14 R4
      444 CALL                             R13 1 1
      445 GETTABLEKS                       R14 R5 K107 ["createHeadPalette"]
      447 GETTABLEKS                       R15 R2 K108 ["heads"]
      449 CALL                             R14 1 -1
      450 SETLIST                          R12 R13 -1 [1]
      452 GETTABLEKS                       R13 R5 K109 ["createBodyCategory"]
      454 GETTABLEKS                       R14 R2 K110 ["bodies"]
      456 CALL                             R13 1 -1
      457 CALL                             R11 -1 1
      458 SETTABLEKS                       R11 R10 K22 ["body"]
      460 NEWTABLE                         R11 0 11
      462 GETTABLEKS                       R12 R5 K29 ["layeredClothingPalette"]
      464 LOADK                            R13 K111 ["Shirts"]
      465 GETIMPORT                        R14 K113 [Enum.AssetType.ShirtAccessory]
      467 GETTABLEKS                       R16 R3 K114 ["shirts"]
      469 NEWTABLE                         R17 0 0
      471 MOVE                             R18 R16
      472 LOADNIL                          R19
      473 LOADNIL                          R20
      474 FORGPREP                         R18
      475 GETTABLEKS                       R25 R22 K36 ["id"]
      477 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
      479 MOVE                             R24 R17
      480 GETIMPORT                        R23 K39 [table.insert]
      482 CALL                             R23 2 0
      483 FORGLOOP                         R18 2 ; [-9]
      485 MOVE                             R15 R17
      486 GETTABLEKS                       R16 R6 K40 ["PREFERRED_LAYERS"]
      488 GETTABLEKS                       R16 R16 K115 ["Tops"]
      490 CALL                             R12 4 1
      491 GETTABLEKS                       R13 R5 K29 ["layeredClothingPalette"]
      493 LOADK                            R14 K116 ["TShirts"]
      494 GETIMPORT                        R15 K118 [Enum.AssetType.TShirtAccessory]
      496 GETTABLEKS                       R17 R3 K119 ["tshirts"]
      498 NEWTABLE                         R18 0 0
      500 MOVE                             R19 R17
      501 LOADNIL                          R20
      502 LOADNIL                          R21
      503 FORGPREP                         R19
      504 GETTABLEKS                       R26 R23 K36 ["id"]
      506 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      508 MOVE                             R25 R18
      509 GETIMPORT                        R24 K39 [table.insert]
      511 CALL                             R24 2 0
      512 FORGLOOP                         R19 2 ; [-9]
      514 MOVE                             R16 R18
      515 GETTABLEKS                       R17 R6 K40 ["PREFERRED_LAYERS"]
      517 GETTABLEKS                       R17 R17 K115 ["Tops"]
      519 CALL                             R13 4 1
      520 GETTABLEKS                       R14 R5 K29 ["layeredClothingPalette"]
      522 LOADK                            R15 K120 ["Jackets"]
      523 GETIMPORT                        R16 K122 [Enum.AssetType.JacketAccessory]
      525 GETTABLEKS                       R18 R3 K123 ["jackets"]
      527 NEWTABLE                         R19 0 0
      529 MOVE                             R20 R18
      530 LOADNIL                          R21
      531 LOADNIL                          R22
      532 FORGPREP                         R20
      533 GETTABLEKS                       R27 R24 K36 ["id"]
      535 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      537 MOVE                             R26 R19
      538 GETIMPORT                        R25 K39 [table.insert]
      540 CALL                             R25 2 0
      541 FORGLOOP                         R20 2 ; [-9]
      543 MOVE                             R17 R19
      544 GETTABLEKS                       R18 R6 K40 ["PREFERRED_LAYERS"]
      546 GETTABLEKS                       R18 R18 K124 ["Outerwear"]
      548 CALL                             R14 4 1
      549 GETTABLEKS                       R15 R5 K29 ["layeredClothingPalette"]
      551 LOADK                            R16 K125 ["Sweaters"]
      552 GETIMPORT                        R17 K127 [Enum.AssetType.SweaterAccessory]
      554 GETTABLEKS                       R19 R3 K128 ["sweaters"]
      556 NEWTABLE                         R20 0 0
      558 MOVE                             R21 R19
      559 LOADNIL                          R22
      560 LOADNIL                          R23
      561 FORGPREP                         R21
      562 GETTABLEKS                       R28 R25 K36 ["id"]
      564 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      566 MOVE                             R27 R20
      567 GETIMPORT                        R26 K39 [table.insert]
      569 CALL                             R26 2 0
      570 FORGLOOP                         R21 2 ; [-9]
      572 MOVE                             R18 R20
      573 GETTABLEKS                       R19 R6 K40 ["PREFERRED_LAYERS"]
      575 GETTABLEKS                       R19 R19 K115 ["Tops"]
      577 CALL                             R15 4 1
      578 GETTABLEKS                       R16 R5 K29 ["layeredClothingPalette"]
      580 LOADK                            R17 K129 ["Pants"]
      581 GETIMPORT                        R18 K131 [Enum.AssetType.PantsAccessory]
      583 GETTABLEKS                       R20 R3 K132 ["pants"]
      585 NEWTABLE                         R21 0 0
      587 MOVE                             R22 R20
      588 LOADNIL                          R23
      589 LOADNIL                          R24
      590 FORGPREP                         R22
      591 GETTABLEKS                       R29 R26 K36 ["id"]
      593 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      595 MOVE                             R28 R21
      596 GETIMPORT                        R27 K39 [table.insert]
      598 CALL                             R27 2 0
      599 FORGLOOP                         R22 2 ; [-9]
      601 MOVE                             R19 R21
      602 GETTABLEKS                       R20 R6 K40 ["PREFERRED_LAYERS"]
      604 GETTABLEKS                       R20 R20 K133 ["Bottoms"]
      606 CALL                             R16 4 1
      607 GETTABLEKS                       R17 R5 K29 ["layeredClothingPalette"]
      609 LOADK                            R18 K134 ["Shorts"]
      610 GETIMPORT                        R19 K136 [Enum.AssetType.ShortsAccessory]
      612 GETTABLEKS                       R21 R3 K137 ["shorts"]
      614 NEWTABLE                         R22 0 0
      616 MOVE                             R23 R21
      617 LOADNIL                          R24
      618 LOADNIL                          R25
      619 FORGPREP                         R23
      620 GETTABLEKS                       R30 R27 K36 ["id"]
      622 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      624 MOVE                             R29 R22
      625 GETIMPORT                        R28 K39 [table.insert]
      627 CALL                             R28 2 0
      628 FORGLOOP                         R23 2 ; [-9]
      630 MOVE                             R20 R22
      631 GETTABLEKS                       R21 R6 K40 ["PREFERRED_LAYERS"]
      633 GETTABLEKS                       R21 R21 K133 ["Bottoms"]
      635 CALL                             R17 4 1
      636 GETTABLEKS                       R18 R5 K29 ["layeredClothingPalette"]
      638 LOADK                            R19 K138 ["Skirts"]
      639 GETIMPORT                        R20 K140 [Enum.AssetType.DressSkirtAccessory]
      641 GETTABLEKS                       R22 R3 K141 ["skirts"]
      643 NEWTABLE                         R23 0 0
      645 MOVE                             R24 R22
      646 LOADNIL                          R25
      647 LOADNIL                          R26
      648 FORGPREP                         R24
      649 GETTABLEKS                       R31 R28 K36 ["id"]
      651 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      653 MOVE                             R30 R23
      654 GETIMPORT                        R29 K39 [table.insert]
      656 CALL                             R29 2 0
      657 FORGLOOP                         R24 2 ; [-9]
      659 MOVE                             R21 R23
      660 GETTABLEKS                       R22 R6 K40 ["PREFERRED_LAYERS"]
      662 GETTABLEKS                       R22 R22 K133 ["Bottoms"]
      664 CALL                             R18 4 1
      665 GETTABLEKS                       R19 R5 K142 ["shoesPalette"]
      667 NEWTABLE                         R20 0 3
      669 DUPTABLE                         R21 K143 [{"left", "right"}]
      670 LOADK                            R22 K144 [8722031289]
      671 SETTABLEKS                       R22 R21 K80 ["left"]
      673 LOADK                            R22 K145 [8722020587]
      674 SETTABLEKS                       R22 R21 K82 ["right"]
      676 DUPTABLE                         R22 K143 [{"left", "right"}]
      677 LOADK                            R23 K146 [7193170137]
      678 SETTABLEKS                       R23 R22 K80 ["left"]
      680 LOADK                            R23 K147 [7193171232]
      681 SETTABLEKS                       R23 R22 K82 ["right"]
      683 DUPTABLE                         R23 K143 [{"left", "right"}]
      684 LOADK                            R24 K148 [7193104827]
      685 SETTABLEKS                       R24 R23 K80 ["left"]
      687 LOADK                            R24 K149 [7193106211]
      688 SETTABLEKS                       R24 R23 K82 ["right"]
      690 SETLIST                          R20 R21 3 [1]
      692 CALL                             R19 1 1
      693 MOVE                             R21 R8
      694 CALL                             R21 0 1
      695 JUMPIFNOT                        R21 ; [+26]
      696 GETTABLEKS                       R20 R5 K150 ["classicClothingPalette"]
      698 LOADK                            R21 K151 ["ClassicShirts"]
      699 GETIMPORT                        R22 K153 [Enum.AssetType.Shirt]
      701 GETTABLEKS                       R24 R3 K154 ["classicShirts"]
      703 NEWTABLE                         R25 0 0
      705 MOVE                             R26 R24
      706 LOADNIL                          R27
      707 LOADNIL                          R28
      708 FORGPREP                         R26
      709 GETTABLEKS                       R33 R30 K36 ["id"]
      711 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      713 MOVE                             R32 R25
      714 GETIMPORT                        R31 K39 [table.insert]
      716 CALL                             R31 2 0
      717 FORGLOOP                         R26 2 ; [-9]
      719 MOVE                             R23 R25
      720 CALL                             R20 3 1
      721 JUMP                             ; [+1]
      722 LOADNIL                          R20
      723 MOVE                             R22 R8
      724 CALL                             R22 0 1
      725 JUMPIFNOT                        R22 ; [+26]
      726 GETTABLEKS                       R21 R5 K150 ["classicClothingPalette"]
      728 LOADK                            R22 K155 ["ClassicTShirts"]
      729 GETIMPORT                        R23 K157 [Enum.AssetType.TShirt]
      731 GETTABLEKS                       R25 R3 K158 ["classicTShirts"]
      733 NEWTABLE                         R26 0 0
      735 MOVE                             R27 R25
      736 LOADNIL                          R28
      737 LOADNIL                          R29
      738 FORGPREP                         R27
      739 GETTABLEKS                       R34 R31 K36 ["id"]
      741 FASTCALL2                        TABLE_INSERT R26 R34 ; [+4]
      743 MOVE                             R33 R26
      744 GETIMPORT                        R32 K39 [table.insert]
      746 CALL                             R32 2 0
      747 FORGLOOP                         R27 2 ; [-9]
      749 MOVE                             R24 R26
      750 CALL                             R21 3 1
      751 JUMP                             ; [+1]
      752 LOADNIL                          R21
      753 MOVE                             R23 R8
      754 CALL                             R23 0 1
      755 JUMPIFNOT                        R23 ; [+26]
      756 GETTABLEKS                       R22 R5 K150 ["classicClothingPalette"]
      758 LOADK                            R23 K159 ["ClassicPants"]
      759 GETIMPORT                        R24 K160 [Enum.AssetType.Pants]
      761 GETTABLEKS                       R26 R3 K161 ["classicPants"]
      763 NEWTABLE                         R27 0 0
      765 MOVE                             R28 R26
      766 LOADNIL                          R29
      767 LOADNIL                          R30
      768 FORGPREP                         R28
      769 GETTABLEKS                       R35 R32 K36 ["id"]
      771 FASTCALL2                        TABLE_INSERT R27 R35 ; [+4]
      773 MOVE                             R34 R27
      774 GETIMPORT                        R33 K39 [table.insert]
      776 CALL                             R33 2 0
      777 FORGLOOP                         R28 2 ; [-9]
      779 MOVE                             R25 R27
      780 CALL                             R22 3 1
      781 JUMP                             ; [+1]
      782 LOADNIL                          R22
      783 SETLIST                          R11 R12 11 [1]
      785 SETTABLEKS                       R11 R10 K23 ["clothing"]
      787 NEWTABLE                         R11 0 1
      789 GETTABLEKS                       R12 R5 K162 ["emotionPalette"]
      791 NEWTABLE                         R13 0 6
      793 LOADK                            R14 K163 [13965126930]
      794 LOADK                            R15 K164 [13965139478]
      795 LOADK                            R16 K165 [13965076233]
      796 LOADK                            R17 K166 [13965039145]
      797 LOADK                            R18 K167 [13965064041]
      798 LOADK                            R19 K168 [13965162732]
      799 SETLIST                          R13 R14 6 [1]
      801 CALL                             R12 1 -1
      802 SETLIST                          R11 R12 -1 [1]
      804 SETTABLEKS                       R11 R10 K24 ["animations_face"]
      806 NEWTABLE                         R11 0 2
      808 GETTABLEKS                       R12 R5 K106 ["skinPalette"]
      810 MOVE                             R13 R4
      811 CALL                             R12 1 1
      812 GETTABLEKS                       R13 R5 K107 ["createHeadPalette"]
      814 GETTABLEKS                       R14 R2 K108 ["heads"]
      816 CALL                             R13 1 -1
      817 SETLIST                          R11 R12 -1 [1]
      819 SETTABLEKS                       R11 R10 K25 ["body_face"]
      821 NEWTABLE                         R11 0 3
      823 GETTABLEKS                       R12 R5 K29 ["layeredClothingPalette"]
      825 LOADK                            R13 K30 ["Hair"]
      826 GETIMPORT                        R14 K34 [Enum.AssetType.HairAccessory]
      828 GETTABLEKS                       R16 R3 K35 ["hair"]
      830 NEWTABLE                         R17 0 0
      832 MOVE                             R18 R16
      833 LOADNIL                          R19
      834 LOADNIL                          R20
      835 FORGPREP                         R18
      836 GETTABLEKS                       R25 R22 K36 ["id"]
      838 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
      840 MOVE                             R24 R17
      841 GETIMPORT                        R23 K39 [table.insert]
      843 CALL                             R23 2 0
      844 FORGLOOP                         R18 2 ; [-9]
      846 MOVE                             R15 R17
      847 GETTABLEKS                       R16 R6 K40 ["PREFERRED_LAYERS"]
      849 GETTABLEKS                       R16 R16 K30 ["Hair"]
      851 CALL                             R12 4 1
      852 GETTABLEKS                       R13 R5 K41 ["basicAccessoryPalette"]
      854 LOADK                            R14 K42 ["Head"]
      855 GETIMPORT                        R15 K44 [Enum.AssetType.Hat]
      857 GETTABLEKS                       R17 R3 K45 ["head"]
      859 NEWTABLE                         R18 0 0
      861 MOVE                             R19 R17
      862 LOADNIL                          R20
      863 LOADNIL                          R21
      864 FORGPREP                         R19
      865 GETTABLEKS                       R26 R23 K36 ["id"]
      867 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      869 MOVE                             R25 R18
      870 GETIMPORT                        R24 K39 [table.insert]
      872 CALL                             R24 2 0
      873 FORGLOOP                         R19 2 ; [-9]
      875 MOVE                             R16 R18
      876 CALL                             R13 3 1
      877 GETTABLEKS                       R14 R5 K29 ["layeredClothingPalette"]
      879 LOADK                            R15 K46 ["Face"]
      880 GETIMPORT                        R16 K48 [Enum.AssetType.FaceAccessory]
      882 GETTABLEKS                       R18 R3 K49 ["face"]
      884 NEWTABLE                         R19 0 0
      886 MOVE                             R20 R18
      887 LOADNIL                          R21
      888 LOADNIL                          R22
      889 FORGPREP                         R20
      890 GETTABLEKS                       R27 R24 K36 ["id"]
      892 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      894 MOVE                             R26 R19
      895 GETIMPORT                        R25 K39 [table.insert]
      897 CALL                             R25 2 0
      898 FORGLOOP                         R20 2 ; [-9]
      900 MOVE                             R17 R19
      901 GETTABLEKS                       R18 R6 K40 ["PREFERRED_LAYERS"]
      903 GETTABLEKS                       R18 R18 K46 ["Face"]
      905 CALL                             R14 4 -1
      906 SETLIST                          R11 R12 -1 [1]
      908 SETTABLEKS                       R11 R10 K26 ["accessories_face"]
      910 NEWTABLE                         R11 0 5
      912 GETTABLEKS                       R12 R5 K169 ["createMakeupPalette"]
      914 LOADK                            R13 K170 ["FaceMakeup"]
      915 GETIMPORT                        R14 K171 [Enum.AssetType.FaceMakeup]
      917 GETTABLEKS                       R16 R3 K172 ["faceMakeup"]
      919 NEWTABLE                         R17 0 0
      921 MOVE                             R18 R16
      922 LOADNIL                          R19
      923 LOADNIL                          R20
      924 FORGPREP                         R18
      925 GETTABLEKS                       R25 R22 K36 ["id"]
      927 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
      929 MOVE                             R24 R17
      930 GETIMPORT                        R23 K39 [table.insert]
      932 CALL                             R23 2 0
      933 FORGLOOP                         R18 2 ; [-9]
      935 MOVE                             R15 R17
      936 CALL                             R12 3 1
      937 GETTABLEKS                       R13 R5 K169 ["createMakeupPalette"]
      939 LOADK                            R14 K173 ["LipMakeup"]
      940 GETIMPORT                        R15 K174 [Enum.AssetType.LipMakeup]
      942 GETTABLEKS                       R17 R3 K175 ["lipMakeup"]
      944 NEWTABLE                         R18 0 0
      946 MOVE                             R19 R17
      947 LOADNIL                          R20
      948 LOADNIL                          R21
      949 FORGPREP                         R19
      950 GETTABLEKS                       R26 R23 K36 ["id"]
      952 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      954 MOVE                             R25 R18
      955 GETIMPORT                        R24 K39 [table.insert]
      957 CALL                             R24 2 0
      958 FORGLOOP                         R19 2 ; [-9]
      960 MOVE                             R16 R18
      961 CALL                             R13 3 1
      962 GETTABLEKS                       R14 R5 K169 ["createMakeupPalette"]
      964 LOADK                            R15 K176 ["EyeMakeup"]
      965 GETIMPORT                        R16 K177 [Enum.AssetType.EyeMakeup]
      967 GETTABLEKS                       R18 R3 K178 ["eyeMakeup"]
      969 NEWTABLE                         R19 0 0
      971 MOVE                             R20 R18
      972 LOADNIL                          R21
      973 LOADNIL                          R22
      974 FORGPREP                         R20
      975 GETTABLEKS                       R27 R24 K36 ["id"]
      977 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      979 MOVE                             R26 R19
      980 GETIMPORT                        R25 K39 [table.insert]
      982 CALL                             R25 2 0
      983 FORGLOOP                         R20 2 ; [-9]
      985 MOVE                             R17 R19
      986 CALL                             R14 3 1
      987 GETTABLEKS                       R15 R5 K29 ["layeredClothingPalette"]
      989 LOADK                            R16 K50 ["Eyebrows"]
      990 GETIMPORT                        R17 K52 [Enum.AssetType.EyebrowAccessory]
      992 GETTABLEKS                       R19 R3 K53 ["eyebrows"]
      994 NEWTABLE                         R20 0 0
      996 MOVE                             R21 R19
      997 LOADNIL                          R22
      998 LOADNIL                          R23
      999 FORGPREP                         R21
     1000 GETTABLEKS                       R28 R25 K36 ["id"]
     1002 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
     1004 MOVE                             R27 R20
     1005 GETIMPORT                        R26 K39 [table.insert]
     1007 CALL                             R26 2 0
     1008 FORGLOOP                         R21 2 ; [-9]
     1010 MOVE                             R18 R20
     1011 GETTABLEKS                       R19 R6 K40 ["PREFERRED_LAYERS"]
     1013 GETTABLEKS                       R19 R19 K50 ["Eyebrows"]
     1015 CALL                             R15 4 1
     1016 GETTABLEKS                       R16 R5 K29 ["layeredClothingPalette"]
     1018 LOADK                            R17 K54 ["Eyelashes"]
     1019 GETIMPORT                        R18 K56 [Enum.AssetType.EyelashAccessory]
     1021 GETTABLEKS                       R20 R3 K57 ["eyelashes"]
     1023 NEWTABLE                         R21 0 0
     1025 MOVE                             R22 R20
     1026 LOADNIL                          R23
     1027 LOADNIL                          R24
     1028 FORGPREP                         R22
     1029 GETTABLEKS                       R29 R26 K36 ["id"]
     1031 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
     1033 MOVE                             R28 R21
     1034 GETIMPORT                        R27 K39 [table.insert]
     1036 CALL                             R27 2 0
     1037 FORGLOOP                         R22 2 ; [-9]
     1039 MOVE                             R19 R21
     1040 GETTABLEKS                       R20 R6 K40 ["PREFERRED_LAYERS"]
     1042 GETTABLEKS                       R20 R20 K54 ["Eyelashes"]
     1044 CALL                             R16 4 -1
     1045 SETLIST                          R11 R12 -1 [1]
     1047 SETTABLEKS                       R11 R10 K27 ["makeup"]
     1049 RETURN                           R10 1
