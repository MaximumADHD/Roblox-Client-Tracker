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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Resources"]
       20 GETTABLEKS                       R3 R4 K10 ["BuiltinBodyParts"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Resources"]
       29 GETTABLEKS                       R4 R5 K11 ["BuiltinItems"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Resources"]
       38 GETTABLEKS                       R5 R6 K12 ["BuiltinSkinColors"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Util"]
       47 GETTABLEKS                       R6 R7 K14 ["CatalogItemUtil"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R9 K13 ["Util"]
       56 GETTABLEKS                       R7 R8 K15 ["Constants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R9 K16 ["Types"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K8 ["Src"]
       70 GETTABLEKS                       R10 R11 K17 ["Flags"]
       72 GETTABLEKS                       R9 R10 K18 ["getFFlagAvatarPreviewerMakeup"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K8 ["Src"]
       79 GETTABLEKS                       R11 R12 K17 ["Flags"]
       81 GETTABLEKS                       R10 R11 K19 ["getFFlagAvatarPreviewerMakeupDescription"]
       83 CALL                             R9 1 1
       84 DUPCLOSURE                       R10 K20 [PROTO_0]
       85 DUPTABLE                         R11 K29 [{"accessories", "animations", "body", "clothing", "animations_face", "body_face", "accessories_face", "makeup"}]
       86 NEWTABLE                         R12 0 12
       88 GETTABLEKS                       R13 R5 K30 ["layeredClothingPalette"]
       90 LOADK                            R14 K31 ["Hair"]
       91 GETIMPORT                        R15 K35 [Enum.AssetType.HairAccessory]
       93 GETTABLEKS                       R17 R3 K36 ["hair"]
       95 NEWTABLE                         R18 0 0
       97 MOVE                             R19 R17
       98 LOADNIL                          R20
       99 LOADNIL                          R21
      100 FORGPREP                         R19
      101 GETTABLEKS                       R26 R23 K37 ["id"]
      103 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      105 MOVE                             R25 R18
      106 GETIMPORT                        R24 K40 [table.insert]
      108 CALL                             R24 2 0
      109 FORGLOOP                         R19 2 ; [-9]
      111 MOVE                             R16 R18
      112 GETTABLEKS                       R18 R6 K41 ["PREFERRED_LAYERS"]
      114 GETTABLEKS                       R17 R18 K31 ["Hair"]
      116 CALL                             R13 4 1
      117 GETTABLEKS                       R14 R5 K42 ["basicAccessoryPalette"]
      119 LOADK                            R15 K43 ["Head"]
      120 GETIMPORT                        R16 K45 [Enum.AssetType.Hat]
      122 GETTABLEKS                       R18 R3 K46 ["head"]
      124 NEWTABLE                         R19 0 0
      126 MOVE                             R20 R18
      127 LOADNIL                          R21
      128 LOADNIL                          R22
      129 FORGPREP                         R20
      130 GETTABLEKS                       R27 R24 K37 ["id"]
      132 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      134 MOVE                             R26 R19
      135 GETIMPORT                        R25 K40 [table.insert]
      137 CALL                             R25 2 0
      138 FORGLOOP                         R20 2 ; [-9]
      140 MOVE                             R17 R19
      141 CALL                             R14 3 1
      142 GETTABLEKS                       R15 R5 K30 ["layeredClothingPalette"]
      144 LOADK                            R16 K47 ["Face"]
      145 GETIMPORT                        R17 K49 [Enum.AssetType.FaceAccessory]
      147 GETTABLEKS                       R19 R3 K50 ["face"]
      149 NEWTABLE                         R20 0 0
      151 MOVE                             R21 R19
      152 LOADNIL                          R22
      153 LOADNIL                          R23
      154 FORGPREP                         R21
      155 GETTABLEKS                       R28 R25 K37 ["id"]
      157 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      159 MOVE                             R27 R20
      160 GETIMPORT                        R26 K40 [table.insert]
      162 CALL                             R26 2 0
      163 FORGLOOP                         R21 2 ; [-9]
      165 MOVE                             R18 R20
      166 GETTABLEKS                       R20 R6 K41 ["PREFERRED_LAYERS"]
      168 GETTABLEKS                       R19 R20 K47 ["Face"]
      170 CALL                             R15 4 1
      171 GETTABLEKS                       R16 R5 K30 ["layeredClothingPalette"]
      173 LOADK                            R17 K51 ["Eyebrows"]
      174 GETIMPORT                        R18 K53 [Enum.AssetType.EyebrowAccessory]
      176 GETTABLEKS                       R20 R3 K54 ["eyebrows"]
      178 NEWTABLE                         R21 0 0
      180 MOVE                             R22 R20
      181 LOADNIL                          R23
      182 LOADNIL                          R24
      183 FORGPREP                         R22
      184 GETTABLEKS                       R29 R26 K37 ["id"]
      186 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      188 MOVE                             R28 R21
      189 GETIMPORT                        R27 K40 [table.insert]
      191 CALL                             R27 2 0
      192 FORGLOOP                         R22 2 ; [-9]
      194 MOVE                             R19 R21
      195 GETTABLEKS                       R21 R6 K41 ["PREFERRED_LAYERS"]
      197 GETTABLEKS                       R20 R21 K51 ["Eyebrows"]
      199 CALL                             R16 4 1
      200 GETTABLEKS                       R17 R5 K30 ["layeredClothingPalette"]
      202 LOADK                            R18 K55 ["Eyelashes"]
      203 GETIMPORT                        R19 K57 [Enum.AssetType.EyelashAccessory]
      205 GETTABLEKS                       R21 R3 K58 ["eyelashes"]
      207 NEWTABLE                         R22 0 0
      209 MOVE                             R23 R21
      210 LOADNIL                          R24
      211 LOADNIL                          R25
      212 FORGPREP                         R23
      213 GETTABLEKS                       R30 R27 K37 ["id"]
      215 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      217 MOVE                             R29 R22
      218 GETIMPORT                        R28 K40 [table.insert]
      220 CALL                             R28 2 0
      221 FORGLOOP                         R23 2 ; [-9]
      223 MOVE                             R20 R22
      224 GETTABLEKS                       R22 R6 K41 ["PREFERRED_LAYERS"]
      226 GETTABLEKS                       R21 R22 K55 ["Eyelashes"]
      228 CALL                             R17 4 1
      229 GETTABLEKS                       R18 R5 K42 ["basicAccessoryPalette"]
      231 LOADK                            R19 K59 ["Front"]
      232 GETIMPORT                        R20 K61 [Enum.AssetType.FrontAccessory]
      234 GETTABLEKS                       R22 R3 K62 ["front"]
      236 NEWTABLE                         R23 0 0
      238 MOVE                             R24 R22
      239 LOADNIL                          R25
      240 LOADNIL                          R26
      241 FORGPREP                         R24
      242 GETTABLEKS                       R31 R28 K37 ["id"]
      244 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      246 MOVE                             R30 R23
      247 GETIMPORT                        R29 K40 [table.insert]
      249 CALL                             R29 2 0
      250 FORGLOOP                         R24 2 ; [-9]
      252 MOVE                             R21 R23
      253 CALL                             R18 3 1
      254 GETTABLEKS                       R19 R5 K42 ["basicAccessoryPalette"]
      256 LOADK                            R20 K63 ["Neck"]
      257 GETIMPORT                        R21 K65 [Enum.AssetType.NeckAccessory]
      259 GETTABLEKS                       R23 R3 K66 ["neck"]
      261 NEWTABLE                         R24 0 0
      263 MOVE                             R25 R23
      264 LOADNIL                          R26
      265 LOADNIL                          R27
      266 FORGPREP                         R25
      267 GETTABLEKS                       R32 R29 K37 ["id"]
      269 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      271 MOVE                             R31 R24
      272 GETIMPORT                        R30 K40 [table.insert]
      274 CALL                             R30 2 0
      275 FORGLOOP                         R25 2 ; [-9]
      277 MOVE                             R22 R24
      278 CALL                             R19 3 1
      279 GETTABLEKS                       R20 R5 K42 ["basicAccessoryPalette"]
      281 LOADK                            R21 K67 ["Shoulder"]
      282 GETIMPORT                        R22 K69 [Enum.AssetType.ShoulderAccessory]
      284 GETTABLEKS                       R24 R3 K70 ["shoulder"]
      286 NEWTABLE                         R25 0 0
      288 MOVE                             R26 R24
      289 LOADNIL                          R27
      290 LOADNIL                          R28
      291 FORGPREP                         R26
      292 GETTABLEKS                       R33 R30 K37 ["id"]
      294 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      296 MOVE                             R32 R25
      297 GETIMPORT                        R31 K40 [table.insert]
      299 CALL                             R31 2 0
      300 FORGLOOP                         R26 2 ; [-9]
      302 MOVE                             R23 R25
      303 CALL                             R20 3 1
      304 GETTABLEKS                       R21 R5 K42 ["basicAccessoryPalette"]
      306 LOADK                            R22 K71 ["Back"]
      307 GETIMPORT                        R23 K73 [Enum.AssetType.BackAccessory]
      309 GETTABLEKS                       R25 R3 K74 ["back"]
      311 NEWTABLE                         R26 0 0
      313 MOVE                             R27 R25
      314 LOADNIL                          R28
      315 LOADNIL                          R29
      316 FORGPREP                         R27
      317 GETTABLEKS                       R34 R31 K37 ["id"]
      319 FASTCALL2                        TABLE_INSERT R26 R34 ; [+4]
      321 MOVE                             R33 R26
      322 GETIMPORT                        R32 K40 [table.insert]
      324 CALL                             R32 2 0
      325 FORGLOOP                         R27 2 ; [-9]
      327 MOVE                             R24 R26
      328 CALL                             R21 3 1
      329 GETTABLEKS                       R22 R5 K42 ["basicAccessoryPalette"]
      331 LOADK                            R23 K75 ["Waist"]
      332 GETIMPORT                        R24 K77 [Enum.AssetType.WaistAccessory]
      334 GETTABLEKS                       R26 R3 K78 ["waist"]
      336 NEWTABLE                         R27 0 0
      338 MOVE                             R28 R26
      339 LOADNIL                          R29
      340 LOADNIL                          R30
      341 FORGPREP                         R28
      342 GETTABLEKS                       R35 R32 K37 ["id"]
      344 FASTCALL2                        TABLE_INSERT R27 R35 ; [+4]
      346 MOVE                             R34 R27
      347 GETIMPORT                        R33 K40 [table.insert]
      349 CALL                             R33 2 0
      350 FORGLOOP                         R28 2 ; [-9]
      352 MOVE                             R25 R27
      353 CALL                             R22 3 1
      354 GETTABLEKS                       R23 R5 K79 ["gearPalette"]
      356 GETTABLEKS                       R25 R3 K80 ["gearLeft"]
      358 NEWTABLE                         R26 0 0
      360 MOVE                             R27 R25
      361 LOADNIL                          R28
      362 LOADNIL                          R29
      363 FORGPREP                         R27
      364 GETTABLEKS                       R34 R31 K37 ["id"]
      366 FASTCALL2                        TABLE_INSERT R26 R34 ; [+4]
      368 MOVE                             R33 R26
      369 GETIMPORT                        R32 K40 [table.insert]
      371 CALL                             R32 2 0
      372 FORGLOOP                         R27 2 ; [-9]
      374 MOVE                             R24 R26
      375 LOADK                            R25 K81 ["left"]
      376 CALL                             R23 2 1
      377 GETTABLEKS                       R24 R5 K79 ["gearPalette"]
      379 GETTABLEKS                       R26 R3 K82 ["gearRight"]
      381 NEWTABLE                         R27 0 0
      383 MOVE                             R28 R26
      384 LOADNIL                          R29
      385 LOADNIL                          R30
      386 FORGPREP                         R28
      387 GETTABLEKS                       R35 R32 K37 ["id"]
      389 FASTCALL2                        TABLE_INSERT R27 R35 ; [+4]
      391 MOVE                             R34 R27
      392 GETIMPORT                        R33 K40 [table.insert]
      394 CALL                             R33 2 0
      395 FORGLOOP                         R28 2 ; [-9]
      397 MOVE                             R25 R27
      398 LOADK                            R26 K83 ["right"]
      399 CALL                             R24 2 -1
      400 SETLIST                          R12 R13 -1 [1]
      402 SETTABLEKS                       R12 R11 K21 ["accessories"]
      404 NEWTABLE                         R12 0 2
      406 GETTABLEKS                       R13 R5 K84 ["createBodyAnimationPalette"]
      408 LOADK                            R14 K85 ["Movement"]
      409 NEWTABLE                         R15 0 8
      411 LOADK                            R16 K86 [16540596584]
      412 LOADK                            R17 K87 [16562317918]
      413 LOADK                            R18 K88 [16562332340]
      414 LOADK                            R19 K89 [16562326358]
      415 LOADK                            R20 K90 [16562321958]
      416 LOADK                            R21 K91 [16562307212]
      417 LOADK                            R22 K92 [16562311455]
      418 LOADK                            R23 K93 [16562329379]
      419 SETLIST                          R15 R16 8 [1]
      421 CALL                             R13 2 1
      422 GETTABLEKS                       R14 R5 K84 ["createBodyAnimationPalette"]
      424 LOADK                            R15 K94 ["BodyEmotes"]
      425 NEWTABLE                         R16 0 10
      427 LOADK                            R17 K95 [16569676514]
      428 LOADK                            R18 K96 [16569175989]
      429 LOADK                            R19 K97 [16569548328]
      430 LOADK                            R20 K98 [16569163126]
      431 LOADK                            R21 K99 [10714358528]
      432 LOADK                            R22 K100 [10714395441]
      433 LOADK                            R23 K101 [10714383856]
      434 LOADK                            R24 K102 [4940563117]
      435 LOADK                            R25 K103 [10714347256]
      436 LOADK                            R26 K104 [10714369325]
      437 SETLIST                          R16 R17 10 [1]
      439 CALL                             R14 2 -1
      440 SETLIST                          R12 R13 -1 [1]
      442 SETTABLEKS                       R12 R11 K22 ["animations"]
      444 GETTABLEKS                       R13 R1 K105 ["List"]
      446 GETTABLEKS                       R12 R13 K106 ["join"]
      448 NEWTABLE                         R13 0 2
      450 GETTABLEKS                       R14 R5 K107 ["skinPalette"]
      452 MOVE                             R15 R4
      453 CALL                             R14 1 1
      454 GETTABLEKS                       R15 R5 K108 ["createHeadPalette"]
      456 GETTABLEKS                       R16 R2 K109 ["heads"]
      458 CALL                             R15 1 -1
      459 SETLIST                          R13 R14 -1 [1]
      461 GETTABLEKS                       R14 R5 K110 ["createBodyCategory"]
      463 GETTABLEKS                       R15 R2 K111 ["bodies"]
      465 CALL                             R14 1 -1
      466 CALL                             R12 -1 1
      467 SETTABLEKS                       R12 R11 K23 ["body"]
      469 NEWTABLE                         R12 0 8
      471 GETTABLEKS                       R13 R5 K30 ["layeredClothingPalette"]
      473 LOADK                            R14 K112 ["Shirts"]
      474 GETIMPORT                        R15 K114 [Enum.AssetType.ShirtAccessory]
      476 GETTABLEKS                       R17 R3 K115 ["shirts"]
      478 NEWTABLE                         R18 0 0
      480 MOVE                             R19 R17
      481 LOADNIL                          R20
      482 LOADNIL                          R21
      483 FORGPREP                         R19
      484 GETTABLEKS                       R26 R23 K37 ["id"]
      486 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      488 MOVE                             R25 R18
      489 GETIMPORT                        R24 K40 [table.insert]
      491 CALL                             R24 2 0
      492 FORGLOOP                         R19 2 ; [-9]
      494 MOVE                             R16 R18
      495 GETTABLEKS                       R18 R6 K41 ["PREFERRED_LAYERS"]
      497 GETTABLEKS                       R17 R18 K116 ["Tops"]
      499 CALL                             R13 4 1
      500 GETTABLEKS                       R14 R5 K30 ["layeredClothingPalette"]
      502 LOADK                            R15 K117 ["TShirts"]
      503 GETIMPORT                        R16 K119 [Enum.AssetType.TShirtAccessory]
      505 GETTABLEKS                       R18 R3 K120 ["tshirts"]
      507 NEWTABLE                         R19 0 0
      509 MOVE                             R20 R18
      510 LOADNIL                          R21
      511 LOADNIL                          R22
      512 FORGPREP                         R20
      513 GETTABLEKS                       R27 R24 K37 ["id"]
      515 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      517 MOVE                             R26 R19
      518 GETIMPORT                        R25 K40 [table.insert]
      520 CALL                             R25 2 0
      521 FORGLOOP                         R20 2 ; [-9]
      523 MOVE                             R17 R19
      524 GETTABLEKS                       R19 R6 K41 ["PREFERRED_LAYERS"]
      526 GETTABLEKS                       R18 R19 K116 ["Tops"]
      528 CALL                             R14 4 1
      529 GETTABLEKS                       R15 R5 K30 ["layeredClothingPalette"]
      531 LOADK                            R16 K121 ["Jackets"]
      532 GETIMPORT                        R17 K123 [Enum.AssetType.JacketAccessory]
      534 GETTABLEKS                       R19 R3 K124 ["jackets"]
      536 NEWTABLE                         R20 0 0
      538 MOVE                             R21 R19
      539 LOADNIL                          R22
      540 LOADNIL                          R23
      541 FORGPREP                         R21
      542 GETTABLEKS                       R28 R25 K37 ["id"]
      544 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      546 MOVE                             R27 R20
      547 GETIMPORT                        R26 K40 [table.insert]
      549 CALL                             R26 2 0
      550 FORGLOOP                         R21 2 ; [-9]
      552 MOVE                             R18 R20
      553 GETTABLEKS                       R20 R6 K41 ["PREFERRED_LAYERS"]
      555 GETTABLEKS                       R19 R20 K125 ["Outerwear"]
      557 CALL                             R15 4 1
      558 GETTABLEKS                       R16 R5 K30 ["layeredClothingPalette"]
      560 LOADK                            R17 K126 ["Sweaters"]
      561 GETIMPORT                        R18 K128 [Enum.AssetType.SweaterAccessory]
      563 GETTABLEKS                       R20 R3 K129 ["sweaters"]
      565 NEWTABLE                         R21 0 0
      567 MOVE                             R22 R20
      568 LOADNIL                          R23
      569 LOADNIL                          R24
      570 FORGPREP                         R22
      571 GETTABLEKS                       R29 R26 K37 ["id"]
      573 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      575 MOVE                             R28 R21
      576 GETIMPORT                        R27 K40 [table.insert]
      578 CALL                             R27 2 0
      579 FORGLOOP                         R22 2 ; [-9]
      581 MOVE                             R19 R21
      582 GETTABLEKS                       R21 R6 K41 ["PREFERRED_LAYERS"]
      584 GETTABLEKS                       R20 R21 K116 ["Tops"]
      586 CALL                             R16 4 1
      587 GETTABLEKS                       R17 R5 K30 ["layeredClothingPalette"]
      589 LOADK                            R18 K130 ["Pants"]
      590 GETIMPORT                        R19 K132 [Enum.AssetType.PantsAccessory]
      592 GETTABLEKS                       R21 R3 K133 ["pants"]
      594 NEWTABLE                         R22 0 0
      596 MOVE                             R23 R21
      597 LOADNIL                          R24
      598 LOADNIL                          R25
      599 FORGPREP                         R23
      600 GETTABLEKS                       R30 R27 K37 ["id"]
      602 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      604 MOVE                             R29 R22
      605 GETIMPORT                        R28 K40 [table.insert]
      607 CALL                             R28 2 0
      608 FORGLOOP                         R23 2 ; [-9]
      610 MOVE                             R20 R22
      611 GETTABLEKS                       R22 R6 K41 ["PREFERRED_LAYERS"]
      613 GETTABLEKS                       R21 R22 K134 ["Bottoms"]
      615 CALL                             R17 4 1
      616 GETTABLEKS                       R18 R5 K30 ["layeredClothingPalette"]
      618 LOADK                            R19 K135 ["Shorts"]
      619 GETIMPORT                        R20 K137 [Enum.AssetType.ShortsAccessory]
      621 GETTABLEKS                       R22 R3 K138 ["shorts"]
      623 NEWTABLE                         R23 0 0
      625 MOVE                             R24 R22
      626 LOADNIL                          R25
      627 LOADNIL                          R26
      628 FORGPREP                         R24
      629 GETTABLEKS                       R31 R28 K37 ["id"]
      631 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      633 MOVE                             R30 R23
      634 GETIMPORT                        R29 K40 [table.insert]
      636 CALL                             R29 2 0
      637 FORGLOOP                         R24 2 ; [-9]
      639 MOVE                             R21 R23
      640 GETTABLEKS                       R23 R6 K41 ["PREFERRED_LAYERS"]
      642 GETTABLEKS                       R22 R23 K134 ["Bottoms"]
      644 CALL                             R18 4 1
      645 GETTABLEKS                       R19 R5 K30 ["layeredClothingPalette"]
      647 LOADK                            R20 K139 ["Skirts"]
      648 GETIMPORT                        R21 K141 [Enum.AssetType.DressSkirtAccessory]
      650 GETTABLEKS                       R23 R3 K142 ["skirts"]
      652 NEWTABLE                         R24 0 0
      654 MOVE                             R25 R23
      655 LOADNIL                          R26
      656 LOADNIL                          R27
      657 FORGPREP                         R25
      658 GETTABLEKS                       R32 R29 K37 ["id"]
      660 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      662 MOVE                             R31 R24
      663 GETIMPORT                        R30 K40 [table.insert]
      665 CALL                             R30 2 0
      666 FORGLOOP                         R25 2 ; [-9]
      668 MOVE                             R22 R24
      669 GETTABLEKS                       R24 R6 K41 ["PREFERRED_LAYERS"]
      671 GETTABLEKS                       R23 R24 K134 ["Bottoms"]
      673 CALL                             R19 4 1
      674 GETTABLEKS                       R20 R5 K143 ["shoesPalette"]
      676 NEWTABLE                         R21 0 3
      678 DUPTABLE                         R22 K144 [{"left", "right"}]
      679 LOADK                            R23 K145 [8722031289]
      680 SETTABLEKS                       R23 R22 K81 ["left"]
      682 LOADK                            R23 K146 [8722020587]
      683 SETTABLEKS                       R23 R22 K83 ["right"]
      685 DUPTABLE                         R23 K144 [{"left", "right"}]
      686 LOADK                            R24 K147 [7193170137]
      687 SETTABLEKS                       R24 R23 K81 ["left"]
      689 LOADK                            R24 K148 [7193171232]
      690 SETTABLEKS                       R24 R23 K83 ["right"]
      692 DUPTABLE                         R24 K144 [{"left", "right"}]
      693 LOADK                            R25 K149 [7193104827]
      694 SETTABLEKS                       R25 R24 K81 ["left"]
      696 LOADK                            R25 K150 [7193106211]
      697 SETTABLEKS                       R25 R24 K83 ["right"]
      699 SETLIST                          R21 R22 3 [1]
      701 CALL                             R20 1 1
      702 SETLIST                          R12 R13 8 [1]
      704 SETTABLEKS                       R12 R11 K24 ["clothing"]
      706 NEWTABLE                         R12 0 1
      708 GETTABLEKS                       R13 R5 K151 ["emotionPalette"]
      710 NEWTABLE                         R14 0 6
      712 LOADK                            R15 K152 [13965126930]
      713 LOADK                            R16 K153 [13965139478]
      714 LOADK                            R17 K154 [13965076233]
      715 LOADK                            R18 K155 [13965039145]
      716 LOADK                            R19 K156 [13965064041]
      717 LOADK                            R20 K157 [13965162732]
      718 SETLIST                          R14 R15 6 [1]
      720 CALL                             R13 1 -1
      721 SETLIST                          R12 R13 -1 [1]
      723 SETTABLEKS                       R12 R11 K25 ["animations_face"]
      725 NEWTABLE                         R12 0 2
      727 GETTABLEKS                       R13 R5 K107 ["skinPalette"]
      729 MOVE                             R14 R4
      730 CALL                             R13 1 1
      731 GETTABLEKS                       R14 R5 K108 ["createHeadPalette"]
      733 GETTABLEKS                       R15 R2 K109 ["heads"]
      735 CALL                             R14 1 -1
      736 SETLIST                          R12 R13 -1 [1]
      738 SETTABLEKS                       R12 R11 K26 ["body_face"]
      740 NEWTABLE                         R12 0 5
      742 GETTABLEKS                       R13 R5 K30 ["layeredClothingPalette"]
      744 LOADK                            R14 K31 ["Hair"]
      745 GETIMPORT                        R15 K35 [Enum.AssetType.HairAccessory]
      747 GETTABLEKS                       R17 R3 K36 ["hair"]
      749 NEWTABLE                         R18 0 0
      751 MOVE                             R19 R17
      752 LOADNIL                          R20
      753 LOADNIL                          R21
      754 FORGPREP                         R19
      755 GETTABLEKS                       R26 R23 K37 ["id"]
      757 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      759 MOVE                             R25 R18
      760 GETIMPORT                        R24 K40 [table.insert]
      762 CALL                             R24 2 0
      763 FORGLOOP                         R19 2 ; [-9]
      765 MOVE                             R16 R18
      766 GETTABLEKS                       R18 R6 K41 ["PREFERRED_LAYERS"]
      768 GETTABLEKS                       R17 R18 K31 ["Hair"]
      770 CALL                             R13 4 1
      771 GETTABLEKS                       R14 R5 K42 ["basicAccessoryPalette"]
      773 LOADK                            R15 K43 ["Head"]
      774 GETIMPORT                        R16 K45 [Enum.AssetType.Hat]
      776 GETTABLEKS                       R18 R3 K46 ["head"]
      778 NEWTABLE                         R19 0 0
      780 MOVE                             R20 R18
      781 LOADNIL                          R21
      782 LOADNIL                          R22
      783 FORGPREP                         R20
      784 GETTABLEKS                       R27 R24 K37 ["id"]
      786 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      788 MOVE                             R26 R19
      789 GETIMPORT                        R25 K40 [table.insert]
      791 CALL                             R25 2 0
      792 FORGLOOP                         R20 2 ; [-9]
      794 MOVE                             R17 R19
      795 CALL                             R14 3 1
      796 GETTABLEKS                       R15 R5 K30 ["layeredClothingPalette"]
      798 LOADK                            R16 K47 ["Face"]
      799 GETIMPORT                        R17 K49 [Enum.AssetType.FaceAccessory]
      801 GETTABLEKS                       R19 R3 K50 ["face"]
      803 NEWTABLE                         R20 0 0
      805 MOVE                             R21 R19
      806 LOADNIL                          R22
      807 LOADNIL                          R23
      808 FORGPREP                         R21
      809 GETTABLEKS                       R28 R25 K37 ["id"]
      811 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      813 MOVE                             R27 R20
      814 GETIMPORT                        R26 K40 [table.insert]
      816 CALL                             R26 2 0
      817 FORGLOOP                         R21 2 ; [-9]
      819 MOVE                             R18 R20
      820 GETTABLEKS                       R20 R6 K41 ["PREFERRED_LAYERS"]
      822 GETTABLEKS                       R19 R20 K47 ["Face"]
      824 CALL                             R15 4 1
      825 MOVE                             R17 R8
      826 CALL                             R17 0 1
      827 JUMPIF                           R17 ; [+30]
      828 GETTABLEKS                       R16 R5 K30 ["layeredClothingPalette"]
      830 LOADK                            R17 K51 ["Eyebrows"]
      831 GETIMPORT                        R18 K53 [Enum.AssetType.EyebrowAccessory]
      833 GETTABLEKS                       R20 R3 K54 ["eyebrows"]
      835 NEWTABLE                         R21 0 0
      837 MOVE                             R22 R20
      838 LOADNIL                          R23
      839 LOADNIL                          R24
      840 FORGPREP                         R22
      841 GETTABLEKS                       R29 R26 K37 ["id"]
      843 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      845 MOVE                             R28 R21
      846 GETIMPORT                        R27 K40 [table.insert]
      848 CALL                             R27 2 0
      849 FORGLOOP                         R22 2 ; [-9]
      851 MOVE                             R19 R21
      852 GETTABLEKS                       R21 R6 K41 ["PREFERRED_LAYERS"]
      854 GETTABLEKS                       R20 R21 K51 ["Eyebrows"]
      856 CALL                             R16 4 1
      857 JUMP                             ; [+1]
      858 LOADNIL                          R16
      859 MOVE                             R18 R8
      860 CALL                             R18 0 1
      861 JUMPIF                           R18 ; [+30]
      862 GETTABLEKS                       R17 R5 K30 ["layeredClothingPalette"]
      864 LOADK                            R18 K55 ["Eyelashes"]
      865 GETIMPORT                        R19 K57 [Enum.AssetType.EyelashAccessory]
      867 GETTABLEKS                       R21 R3 K58 ["eyelashes"]
      869 NEWTABLE                         R22 0 0
      871 MOVE                             R23 R21
      872 LOADNIL                          R24
      873 LOADNIL                          R25
      874 FORGPREP                         R23
      875 GETTABLEKS                       R30 R27 K37 ["id"]
      877 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      879 MOVE                             R29 R22
      880 GETIMPORT                        R28 K40 [table.insert]
      882 CALL                             R28 2 0
      883 FORGLOOP                         R23 2 ; [-9]
      885 MOVE                             R20 R22
      886 GETTABLEKS                       R22 R6 K41 ["PREFERRED_LAYERS"]
      888 GETTABLEKS                       R21 R22 K55 ["Eyelashes"]
      890 CALL                             R17 4 1
      891 JUMP                             ; [+1]
      892 LOADNIL                          R17
      893 SETLIST                          R12 R13 5 [1]
      895 SETTABLEKS                       R12 R11 K27 ["accessories_face"]
      897 MOVE                             R13 R8
      898 CALL                             R13 0 1
      899 JUMPIFNOT                        R13 ; [+156]
      900 NEWTABLE                         R12 0 5
      902 GETTABLEKS                       R13 R5 K158 ["createMakeupPalette"]
      904 LOADK                            R14 K159 ["FaceMakeup"]
      905 GETIMPORT                        R15 K160 [Enum.AssetType.FaceMakeup]
      907 MOVE                             R17 R9
      908 CALL                             R17 0 1
      909 JUMPIFNOT                        R17 ; [+20]
      910 GETTABLEKS                       R17 R3 K161 ["faceMakeup"]
      912 NEWTABLE                         R18 0 0
      914 MOVE                             R19 R17
      915 LOADNIL                          R20
      916 LOADNIL                          R21
      917 FORGPREP                         R19
      918 GETTABLEKS                       R26 R23 K37 ["id"]
      920 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      922 MOVE                             R25 R18
      923 GETIMPORT                        R24 K40 [table.insert]
      925 CALL                             R24 2 0
      926 FORGLOOP                         R19 2 ; [-9]
      928 MOVE                             R16 R18
      929 JUMP                             ; [+2]
      930 NEWTABLE                         R16 0 0
      932 CALL                             R13 3 1
      933 GETTABLEKS                       R14 R5 K158 ["createMakeupPalette"]
      935 LOADK                            R15 K162 ["LipMakeup"]
      936 GETIMPORT                        R16 K163 [Enum.AssetType.LipMakeup]
      938 MOVE                             R18 R9
      939 CALL                             R18 0 1
      940 JUMPIFNOT                        R18 ; [+20]
      941 GETTABLEKS                       R18 R3 K164 ["lipMakeup"]
      943 NEWTABLE                         R19 0 0
      945 MOVE                             R20 R18
      946 LOADNIL                          R21
      947 LOADNIL                          R22
      948 FORGPREP                         R20
      949 GETTABLEKS                       R27 R24 K37 ["id"]
      951 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      953 MOVE                             R26 R19
      954 GETIMPORT                        R25 K40 [table.insert]
      956 CALL                             R25 2 0
      957 FORGLOOP                         R20 2 ; [-9]
      959 MOVE                             R17 R19
      960 JUMP                             ; [+2]
      961 NEWTABLE                         R17 0 0
      963 CALL                             R14 3 1
      964 GETTABLEKS                       R15 R5 K158 ["createMakeupPalette"]
      966 LOADK                            R16 K165 ["EyeMakeup"]
      967 GETIMPORT                        R17 K166 [Enum.AssetType.EyeMakeup]
      969 MOVE                             R19 R9
      970 CALL                             R19 0 1
      971 JUMPIFNOT                        R19 ; [+20]
      972 GETTABLEKS                       R19 R3 K167 ["eyeMakeup"]
      974 NEWTABLE                         R20 0 0
      976 MOVE                             R21 R19
      977 LOADNIL                          R22
      978 LOADNIL                          R23
      979 FORGPREP                         R21
      980 GETTABLEKS                       R28 R25 K37 ["id"]
      982 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      984 MOVE                             R27 R20
      985 GETIMPORT                        R26 K40 [table.insert]
      987 CALL                             R26 2 0
      988 FORGLOOP                         R21 2 ; [-9]
      990 MOVE                             R18 R20
      991 JUMP                             ; [+2]
      992 NEWTABLE                         R18 0 0
      994 CALL                             R15 3 1
      995 GETTABLEKS                       R16 R5 K30 ["layeredClothingPalette"]
      997 LOADK                            R17 K51 ["Eyebrows"]
      998 GETIMPORT                        R18 K53 [Enum.AssetType.EyebrowAccessory]
     1000 GETTABLEKS                       R20 R3 K54 ["eyebrows"]
     1002 NEWTABLE                         R21 0 0
     1004 MOVE                             R22 R20
     1005 LOADNIL                          R23
     1006 LOADNIL                          R24
     1007 FORGPREP                         R22
     1008 GETTABLEKS                       R29 R26 K37 ["id"]
     1010 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
     1012 MOVE                             R28 R21
     1013 GETIMPORT                        R27 K40 [table.insert]
     1015 CALL                             R27 2 0
     1016 FORGLOOP                         R22 2 ; [-9]
     1018 MOVE                             R19 R21
     1019 GETTABLEKS                       R21 R6 K41 ["PREFERRED_LAYERS"]
     1021 GETTABLEKS                       R20 R21 K51 ["Eyebrows"]
     1023 CALL                             R16 4 1
     1024 GETTABLEKS                       R17 R5 K30 ["layeredClothingPalette"]
     1026 LOADK                            R18 K55 ["Eyelashes"]
     1027 GETIMPORT                        R19 K57 [Enum.AssetType.EyelashAccessory]
     1029 GETTABLEKS                       R21 R3 K58 ["eyelashes"]
     1031 NEWTABLE                         R22 0 0
     1033 MOVE                             R23 R21
     1034 LOADNIL                          R24
     1035 LOADNIL                          R25
     1036 FORGPREP                         R23
     1037 GETTABLEKS                       R30 R27 K37 ["id"]
     1039 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
     1041 MOVE                             R29 R22
     1042 GETIMPORT                        R28 K40 [table.insert]
     1044 CALL                             R28 2 0
     1045 FORGLOOP                         R23 2 ; [-9]
     1047 MOVE                             R20 R22
     1048 GETTABLEKS                       R22 R6 K41 ["PREFERRED_LAYERS"]
     1050 GETTABLEKS                       R21 R22 K55 ["Eyelashes"]
     1052 CALL                             R17 4 -1
     1053 SETLIST                          R12 R13 -1 [1]
     1055 JUMP                             ; [+1]
     1056 LOADNIL                          R12
     1057 SETTABLEKS                       R12 R11 K28 ["makeup"]
     1059 RETURN                           R11 1
