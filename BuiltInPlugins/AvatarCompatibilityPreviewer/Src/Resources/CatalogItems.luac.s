PROTO_0:
        0 GETIMPORT                        R2 K2 [BrickColor.new]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R1 R2 K3 ["Color"]
        6 RETURN                           R1 1

PROTO_1:
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
       20 GETTABLEKS                       R3 R4 K10 ["BuiltinItems"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["CatalogItemUtil"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Util"]
       38 GETTABLEKS                       R5 R6 K13 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R7 K14 ["Types"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K8 ["Src"]
       52 GETTABLEKS                       R8 R9 K15 ["Flags"]
       54 GETTABLEKS                       R7 R8 K16 ["getFFlagAvatarPreviewerMakeup"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K8 ["Src"]
       61 GETTABLEKS                       R9 R10 K15 ["Flags"]
       63 GETTABLEKS                       R8 R9 K17 ["getFFlagAvatarPreviewerMakeupDescription"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K18 [PROTO_0]
       67 DUPCLOSURE                       R9 K19 [PROTO_1]
       68 DUPTABLE                         R10 K27 [{"accessories", "animations", "body", "clothing", "animations_face", "accessories_face", "makeup"}]
       69 NEWTABLE                         R11 0 12
       71 GETTABLEKS                       R12 R3 K28 ["layeredClothingPalette"]
       73 LOADK                            R13 K29 ["Hair"]
       74 GETIMPORT                        R14 K33 [Enum.AssetType.HairAccessory]
       76 GETTABLEKS                       R16 R2 K34 ["hair"]
       78 NEWTABLE                         R17 0 0
       80 MOVE                             R18 R16
       81 LOADNIL                          R19
       82 LOADNIL                          R20
       83 FORGPREP                         R18
       84 GETTABLEKS                       R25 R22 K35 ["id"]
       86 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
       88 MOVE                             R24 R17
       89 GETIMPORT                        R23 K38 [table.insert]
       91 CALL                             R23 2 0
       92 FORGLOOP                         R18 2 ; [-9]
       94 MOVE                             R15 R17
       95 GETTABLEKS                       R17 R4 K39 ["PREFERRED_LAYERS"]
       97 GETTABLEKS                       R16 R17 K29 ["Hair"]
       99 CALL                             R12 4 1
      100 GETTABLEKS                       R13 R3 K40 ["basicAccessoryPalette"]
      102 LOADK                            R14 K41 ["Head"]
      103 GETIMPORT                        R15 K43 [Enum.AssetType.Hat]
      105 GETTABLEKS                       R17 R2 K44 ["head"]
      107 NEWTABLE                         R18 0 0
      109 MOVE                             R19 R17
      110 LOADNIL                          R20
      111 LOADNIL                          R21
      112 FORGPREP                         R19
      113 GETTABLEKS                       R26 R23 K35 ["id"]
      115 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      117 MOVE                             R25 R18
      118 GETIMPORT                        R24 K38 [table.insert]
      120 CALL                             R24 2 0
      121 FORGLOOP                         R19 2 ; [-9]
      123 MOVE                             R16 R18
      124 CALL                             R13 3 1
      125 GETTABLEKS                       R14 R3 K28 ["layeredClothingPalette"]
      127 LOADK                            R15 K45 ["Face"]
      128 GETIMPORT                        R16 K47 [Enum.AssetType.FaceAccessory]
      130 GETTABLEKS                       R18 R2 K48 ["face"]
      132 NEWTABLE                         R19 0 0
      134 MOVE                             R20 R18
      135 LOADNIL                          R21
      136 LOADNIL                          R22
      137 FORGPREP                         R20
      138 GETTABLEKS                       R27 R24 K35 ["id"]
      140 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      142 MOVE                             R26 R19
      143 GETIMPORT                        R25 K38 [table.insert]
      145 CALL                             R25 2 0
      146 FORGLOOP                         R20 2 ; [-9]
      148 MOVE                             R17 R19
      149 GETTABLEKS                       R19 R4 K39 ["PREFERRED_LAYERS"]
      151 GETTABLEKS                       R18 R19 K45 ["Face"]
      153 CALL                             R14 4 1
      154 GETTABLEKS                       R15 R3 K28 ["layeredClothingPalette"]
      156 LOADK                            R16 K49 ["Eyebrows"]
      157 GETIMPORT                        R17 K51 [Enum.AssetType.EyebrowAccessory]
      159 GETTABLEKS                       R19 R2 K52 ["eyebrows"]
      161 NEWTABLE                         R20 0 0
      163 MOVE                             R21 R19
      164 LOADNIL                          R22
      165 LOADNIL                          R23
      166 FORGPREP                         R21
      167 GETTABLEKS                       R28 R25 K35 ["id"]
      169 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      171 MOVE                             R27 R20
      172 GETIMPORT                        R26 K38 [table.insert]
      174 CALL                             R26 2 0
      175 FORGLOOP                         R21 2 ; [-9]
      177 MOVE                             R18 R20
      178 GETTABLEKS                       R20 R4 K39 ["PREFERRED_LAYERS"]
      180 GETTABLEKS                       R19 R20 K49 ["Eyebrows"]
      182 CALL                             R15 4 1
      183 GETTABLEKS                       R16 R3 K28 ["layeredClothingPalette"]
      185 LOADK                            R17 K53 ["Eyelashes"]
      186 GETIMPORT                        R18 K55 [Enum.AssetType.EyelashAccessory]
      188 GETTABLEKS                       R20 R2 K56 ["eyelashes"]
      190 NEWTABLE                         R21 0 0
      192 MOVE                             R22 R20
      193 LOADNIL                          R23
      194 LOADNIL                          R24
      195 FORGPREP                         R22
      196 GETTABLEKS                       R29 R26 K35 ["id"]
      198 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      200 MOVE                             R28 R21
      201 GETIMPORT                        R27 K38 [table.insert]
      203 CALL                             R27 2 0
      204 FORGLOOP                         R22 2 ; [-9]
      206 MOVE                             R19 R21
      207 GETTABLEKS                       R21 R4 K39 ["PREFERRED_LAYERS"]
      209 GETTABLEKS                       R20 R21 K53 ["Eyelashes"]
      211 CALL                             R16 4 1
      212 GETTABLEKS                       R17 R3 K40 ["basicAccessoryPalette"]
      214 LOADK                            R18 K57 ["Front"]
      215 GETIMPORT                        R19 K59 [Enum.AssetType.FrontAccessory]
      217 GETTABLEKS                       R21 R2 K60 ["front"]
      219 NEWTABLE                         R22 0 0
      221 MOVE                             R23 R21
      222 LOADNIL                          R24
      223 LOADNIL                          R25
      224 FORGPREP                         R23
      225 GETTABLEKS                       R30 R27 K35 ["id"]
      227 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      229 MOVE                             R29 R22
      230 GETIMPORT                        R28 K38 [table.insert]
      232 CALL                             R28 2 0
      233 FORGLOOP                         R23 2 ; [-9]
      235 MOVE                             R20 R22
      236 CALL                             R17 3 1
      237 GETTABLEKS                       R18 R3 K40 ["basicAccessoryPalette"]
      239 LOADK                            R19 K61 ["Neck"]
      240 GETIMPORT                        R20 K63 [Enum.AssetType.NeckAccessory]
      242 GETTABLEKS                       R22 R2 K64 ["neck"]
      244 NEWTABLE                         R23 0 0
      246 MOVE                             R24 R22
      247 LOADNIL                          R25
      248 LOADNIL                          R26
      249 FORGPREP                         R24
      250 GETTABLEKS                       R31 R28 K35 ["id"]
      252 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      254 MOVE                             R30 R23
      255 GETIMPORT                        R29 K38 [table.insert]
      257 CALL                             R29 2 0
      258 FORGLOOP                         R24 2 ; [-9]
      260 MOVE                             R21 R23
      261 CALL                             R18 3 1
      262 GETTABLEKS                       R19 R3 K40 ["basicAccessoryPalette"]
      264 LOADK                            R20 K65 ["Shoulder"]
      265 GETIMPORT                        R21 K67 [Enum.AssetType.ShoulderAccessory]
      267 GETTABLEKS                       R23 R2 K68 ["shoulder"]
      269 NEWTABLE                         R24 0 0
      271 MOVE                             R25 R23
      272 LOADNIL                          R26
      273 LOADNIL                          R27
      274 FORGPREP                         R25
      275 GETTABLEKS                       R32 R29 K35 ["id"]
      277 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      279 MOVE                             R31 R24
      280 GETIMPORT                        R30 K38 [table.insert]
      282 CALL                             R30 2 0
      283 FORGLOOP                         R25 2 ; [-9]
      285 MOVE                             R22 R24
      286 CALL                             R19 3 1
      287 GETTABLEKS                       R20 R3 K40 ["basicAccessoryPalette"]
      289 LOADK                            R21 K69 ["Back"]
      290 GETIMPORT                        R22 K71 [Enum.AssetType.BackAccessory]
      292 GETTABLEKS                       R24 R2 K72 ["back"]
      294 NEWTABLE                         R25 0 0
      296 MOVE                             R26 R24
      297 LOADNIL                          R27
      298 LOADNIL                          R28
      299 FORGPREP                         R26
      300 GETTABLEKS                       R33 R30 K35 ["id"]
      302 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      304 MOVE                             R32 R25
      305 GETIMPORT                        R31 K38 [table.insert]
      307 CALL                             R31 2 0
      308 FORGLOOP                         R26 2 ; [-9]
      310 MOVE                             R23 R25
      311 CALL                             R20 3 1
      312 GETTABLEKS                       R21 R3 K40 ["basicAccessoryPalette"]
      314 LOADK                            R22 K73 ["Waist"]
      315 GETIMPORT                        R23 K75 [Enum.AssetType.WaistAccessory]
      317 GETTABLEKS                       R25 R2 K76 ["waist"]
      319 NEWTABLE                         R26 0 0
      321 MOVE                             R27 R25
      322 LOADNIL                          R28
      323 LOADNIL                          R29
      324 FORGPREP                         R27
      325 GETTABLEKS                       R34 R31 K35 ["id"]
      327 FASTCALL2                        TABLE_INSERT R26 R34 ; [+4]
      329 MOVE                             R33 R26
      330 GETIMPORT                        R32 K38 [table.insert]
      332 CALL                             R32 2 0
      333 FORGLOOP                         R27 2 ; [-9]
      335 MOVE                             R24 R26
      336 CALL                             R21 3 1
      337 GETTABLEKS                       R22 R3 K77 ["gearPalette"]
      339 GETTABLEKS                       R24 R2 K78 ["gearLeft"]
      341 NEWTABLE                         R25 0 0
      343 MOVE                             R26 R24
      344 LOADNIL                          R27
      345 LOADNIL                          R28
      346 FORGPREP                         R26
      347 GETTABLEKS                       R33 R30 K35 ["id"]
      349 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      351 MOVE                             R32 R25
      352 GETIMPORT                        R31 K38 [table.insert]
      354 CALL                             R31 2 0
      355 FORGLOOP                         R26 2 ; [-9]
      357 MOVE                             R23 R25
      358 LOADK                            R24 K79 ["left"]
      359 CALL                             R22 2 1
      360 GETTABLEKS                       R23 R3 K77 ["gearPalette"]
      362 GETTABLEKS                       R25 R2 K80 ["gearRight"]
      364 NEWTABLE                         R26 0 0
      366 MOVE                             R27 R25
      367 LOADNIL                          R28
      368 LOADNIL                          R29
      369 FORGPREP                         R27
      370 GETTABLEKS                       R34 R31 K35 ["id"]
      372 FASTCALL2                        TABLE_INSERT R26 R34 ; [+4]
      374 MOVE                             R33 R26
      375 GETIMPORT                        R32 K38 [table.insert]
      377 CALL                             R32 2 0
      378 FORGLOOP                         R27 2 ; [-9]
      380 MOVE                             R24 R26
      381 LOADK                            R25 K81 ["right"]
      382 CALL                             R23 2 -1
      383 SETLIST                          R11 R12 -1 [1]
      385 SETTABLEKS                       R11 R10 K20 ["accessories"]
      387 NEWTABLE                         R11 0 2
      389 GETTABLEKS                       R12 R3 K82 ["createBodyAnimationPalette"]
      391 LOADK                            R13 K83 ["Movement"]
      392 NEWTABLE                         R14 0 8
      394 LOADK                            R15 K84 [16540596584]
      395 LOADK                            R16 K85 [16562317918]
      396 LOADK                            R17 K86 [16562332340]
      397 LOADK                            R18 K87 [16562326358]
      398 LOADK                            R19 K88 [16562321958]
      399 LOADK                            R20 K89 [16562307212]
      400 LOADK                            R21 K90 [16562311455]
      401 LOADK                            R22 K91 [16562329379]
      402 SETLIST                          R14 R15 8 [1]
      404 CALL                             R12 2 1
      405 GETTABLEKS                       R13 R3 K82 ["createBodyAnimationPalette"]
      407 LOADK                            R14 K92 ["BodyEmotes"]
      408 NEWTABLE                         R15 0 10
      410 LOADK                            R16 K93 [16569676514]
      411 LOADK                            R17 K94 [16569175989]
      412 LOADK                            R18 K95 [16569548328]
      413 LOADK                            R19 K96 [16569163126]
      414 LOADK                            R20 K97 [10714358528]
      415 LOADK                            R21 K98 [10714395441]
      416 LOADK                            R22 K99 [10714383856]
      417 LOADK                            R23 K100 [4940563117]
      418 LOADK                            R24 K101 [10714347256]
      419 LOADK                            R25 K102 [10714369325]
      420 SETLIST                          R15 R16 10 [1]
      422 CALL                             R13 2 -1
      423 SETLIST                          R11 R12 -1 [1]
      425 SETTABLEKS                       R11 R10 K21 ["animations"]
      427 GETTABLEKS                       R12 R1 K103 ["List"]
      429 GETTABLEKS                       R11 R12 K104 ["join"]
      431 NEWTABLE                         R12 0 2
      433 GETTABLEKS                       R13 R3 K105 ["skinPalette"]
      435 NEWTABLE                         R14 0 74
      437 GETIMPORT                        R16 K108 [BrickColor.new]
      439 LOADK                            R17 K109 ["Dirt brown"]
      440 CALL                             R16 1 1
      441 GETTABLEKS                       R15 R16 K110 ["Color"]
      443 GETIMPORT                        R17 K108 [BrickColor.new]
      445 LOADK                            R18 K111 ["Reddish brown"]
      446 CALL                             R17 1 1
      447 GETTABLEKS                       R16 R17 K110 ["Color"]
      449 GETIMPORT                        R18 K108 [BrickColor.new]
      451 LOADK                            R19 K112 ["Brown"]
      452 CALL                             R18 1 1
      453 GETTABLEKS                       R17 R18 K110 ["Color"]
      455 GETIMPORT                        R19 K108 [BrickColor.new]
      457 LOADK                            R20 K113 ["Sand red"]
      458 CALL                             R19 1 1
      459 GETTABLEKS                       R18 R19 K110 ["Color"]
      461 GETIMPORT                        R20 K108 [BrickColor.new]
      463 LOADK                            R21 K114 ["Linen"]
      464 CALL                             R20 1 1
      465 GETTABLEKS                       R19 R20 K110 ["Color"]
      467 GETIMPORT                        R21 K108 [BrickColor.new]
      469 LOADK                            R22 K115 ["Burlap"]
      470 CALL                             R21 1 1
      471 GETTABLEKS                       R20 R21 K110 ["Color"]
      473 GETIMPORT                        R22 K108 [BrickColor.new]
      475 LOADK                            R23 K116 ["Brick yellow"]
      476 CALL                             R22 1 1
      477 GETTABLEKS                       R21 R22 K110 ["Color"]
      479 GETIMPORT                        R23 K108 [BrickColor.new]
      481 LOADK                            R24 K117 ["Medium red"]
      482 CALL                             R23 1 1
      483 GETTABLEKS                       R22 R23 K110 ["Color"]
      485 GETIMPORT                        R24 K108 [BrickColor.new]
      487 LOADK                            R25 K118 ["Dusty Rose"]
      488 CALL                             R24 1 1
      489 GETTABLEKS                       R23 R24 K110 ["Color"]
      491 GETIMPORT                        R25 K108 [BrickColor.new]
      493 LOADK                            R26 K119 ["CGA brown"]
      494 CALL                             R25 1 1
      495 GETTABLEKS                       R24 R25 K110 ["Color"]
      497 GETIMPORT                        R26 K108 [BrickColor.new]
      499 LOADK                            R27 K120 ["Dark orange"]
      500 CALL                             R26 1 1
      501 GETTABLEKS                       R25 R26 K110 ["Color"]
      503 GETIMPORT                        R27 K108 [BrickColor.new]
      505 LOADK                            R28 K121 ["Nougat"]
      506 CALL                             R27 1 1
      507 GETTABLEKS                       R26 R27 K110 ["Color"]
      509 GETIMPORT                        R28 K108 [BrickColor.new]
      511 LOADK                            R29 K122 ["Light orange"]
      512 CALL                             R28 1 1
      513 GETTABLEKS                       R27 R28 K110 ["Color"]
      515 GETIMPORT                        R29 K108 [BrickColor.new]
      517 LOADK                            R30 K123 ["Pastel brown"]
      518 CALL                             R29 1 1
      519 GETTABLEKS                       R28 R29 K110 ["Color"]
      521 GETIMPORT                        R30 K108 [BrickColor.new]
      523 LOADK                            R31 K124 ["Neon orange"]
      524 CALL                             R30 1 1
      525 GETTABLEKS                       R29 R30 K110 ["Color"]
      527 GETIMPORT                        R31 K108 [BrickColor.new]
      529 LOADK                            R32 K125 ["Bright orange"]
      530 CALL                             R31 1 1
      531 GETTABLEKS                       R30 R31 K110 ["Color"]
      533 SETLIST                          R14 R15 16 [1]
      535 GETIMPORT                        R16 K108 [BrickColor.new]
      537 LOADK                            R17 K126 ["Br. yellowish orange"]
      538 CALL                             R16 1 1
      539 GETTABLEKS                       R15 R16 K110 ["Color"]
      541 GETIMPORT                        R17 K108 [BrickColor.new]
      543 LOADK                            R18 K127 ["Deep orange"]
      544 CALL                             R17 1 1
      545 GETTABLEKS                       R16 R17 K110 ["Color"]
      547 GETIMPORT                        R18 K108 [BrickColor.new]
      549 LOADK                            R19 K128 ["Bright yellow"]
      550 CALL                             R18 1 1
      551 GETTABLEKS                       R17 R18 K110 ["Color"]
      553 GETIMPORT                        R19 K108 [BrickColor.new]
      555 LOADK                            R20 K129 ["Daisy orange"]
      556 CALL                             R19 1 1
      557 GETTABLEKS                       R18 R19 K110 ["Color"]
      559 GETIMPORT                        R20 K108 [BrickColor.new]
      561 LOADK                            R21 K130 ["Cool yellow"]
      562 CALL                             R20 1 1
      563 GETTABLEKS                       R19 R20 K110 ["Color"]
      565 GETIMPORT                        R21 K108 [BrickColor.new]
      567 LOADK                            R22 K131 ["Earth green"]
      568 CALL                             R21 1 1
      569 GETTABLEKS                       R20 R21 K110 ["Color"]
      571 GETIMPORT                        R22 K108 [BrickColor.new]
      573 LOADK                            R23 K132 ["Camo"]
      574 CALL                             R22 1 1
      575 GETTABLEKS                       R21 R22 K110 ["Color"]
      577 GETIMPORT                        R23 K108 [BrickColor.new]
      579 LOADK                            R24 K133 ["Dark green"]
      580 CALL                             R23 1 1
      581 GETTABLEKS                       R22 R23 K110 ["Color"]
      583 GETIMPORT                        R24 K108 [BrickColor.new]
      585 LOADK                            R25 K134 ["Bright green"]
      586 CALL                             R24 1 1
      587 GETTABLEKS                       R23 R24 K110 ["Color"]
      589 GETIMPORT                        R25 K108 [BrickColor.new]
      591 LOADK                            R26 K135 ["Shamrock"]
      592 CALL                             R25 1 1
      593 GETTABLEKS                       R24 R25 K110 ["Color"]
      595 GETIMPORT                        R26 K108 [BrickColor.new]
      597 LOADK                            R27 K136 ["Moss"]
      598 CALL                             R26 1 1
      599 GETTABLEKS                       R25 R26 K110 ["Color"]
      601 GETIMPORT                        R27 K108 [BrickColor.new]
      603 LOADK                            R28 K137 ["Br. yellowish green"]
      604 CALL                             R27 1 1
      605 GETTABLEKS                       R26 R27 K110 ["Color"]
      607 GETIMPORT                        R28 K108 [BrickColor.new]
      609 LOADK                            R29 K138 ["Navy blue"]
      610 CALL                             R28 1 1
      611 GETTABLEKS                       R27 R28 K110 ["Color"]
      613 GETIMPORT                        R29 K108 [BrickColor.new]
      615 LOADK                            R30 K139 ["Deep blue"]
      616 CALL                             R29 1 1
      617 GETTABLEKS                       R28 R29 K110 ["Color"]
      619 GETIMPORT                        R30 K108 [BrickColor.new]
      621 LOADK                            R31 K140 ["Really blue"]
      622 CALL                             R30 1 1
      623 GETTABLEKS                       R29 R30 K110 ["Color"]
      625 GETIMPORT                        R31 K108 [BrickColor.new]
      627 LOADK                            R32 K141 ["Bright blue"]
      628 CALL                             R31 1 1
      629 GETTABLEKS                       R30 R31 K110 ["Color"]
      631 SETLIST                          R14 R15 16 [17]
      633 GETIMPORT                        R16 K108 [BrickColor.new]
      635 LOADK                            R17 K142 ["Steel blue"]
      636 CALL                             R16 1 1
      637 GETTABLEKS                       R15 R16 K110 ["Color"]
      639 GETIMPORT                        R17 K108 [BrickColor.new]
      641 LOADK                            R18 K143 ["Medium blue"]
      642 CALL                             R17 1 1
      643 GETTABLEKS                       R16 R17 K110 ["Color"]
      645 GETIMPORT                        R18 K108 [BrickColor.new]
      647 LOADK                            R19 K144 ["Light blue"]
      648 CALL                             R18 1 1
      649 GETTABLEKS                       R17 R18 K110 ["Color"]
      651 GETIMPORT                        R19 K108 [BrickColor.new]
      653 LOADK                            R20 K145 ["Bright bluish green"]
      654 CALL                             R19 1 1
      655 GETTABLEKS                       R18 R19 K110 ["Color"]
      657 GETIMPORT                        R20 K108 [BrickColor.new]
      659 LOADK                            R21 K146 ["Teal"]
      660 CALL                             R20 1 1
      661 GETTABLEKS                       R19 R20 K110 ["Color"]
      663 GETIMPORT                        R21 K108 [BrickColor.new]
      665 LOADK                            R22 K147 ["Pastel blue-green"]
      666 CALL                             R21 1 1
      667 GETTABLEKS                       R20 R21 K110 ["Color"]
      669 GETIMPORT                        R22 K108 [BrickColor.new]
      671 LOADK                            R23 K148 ["Toothpaste"]
      672 CALL                             R22 1 1
      673 GETTABLEKS                       R21 R22 K110 ["Color"]
      675 GETIMPORT                        R23 K108 [BrickColor.new]
      677 LOADK                            R24 K149 ["Cyan"]
      678 CALL                             R23 1 1
      679 GETTABLEKS                       R22 R23 K110 ["Color"]
      681 GETIMPORT                        R24 K108 [BrickColor.new]
      683 LOADK                            R25 K150 ["Pastel Blue"]
      684 CALL                             R24 1 1
      685 GETTABLEKS                       R23 R24 K110 ["Color"]
      687 GETIMPORT                        R25 K108 [BrickColor.new]
      689 LOADK                            R26 K151 ["Pastel light blue"]
      690 CALL                             R25 1 1
      691 GETTABLEKS                       R24 R25 K110 ["Color"]
      693 GETIMPORT                        R26 K108 [BrickColor.new]
      695 LOADK                            R27 K152 ["Bright violet"]
      696 CALL                             R26 1 1
      697 GETTABLEKS                       R25 R26 K110 ["Color"]
      699 GETIMPORT                        R27 K108 [BrickColor.new]
      701 LOADK                            R28 K153 ["Lavender"]
      702 CALL                             R27 1 1
      703 GETTABLEKS                       R26 R27 K110 ["Color"]
      705 GETIMPORT                        R28 K108 [BrickColor.new]
      707 LOADK                            R29 K154 ["Lilac"]
      708 CALL                             R28 1 1
      709 GETTABLEKS                       R27 R28 K110 ["Color"]
      711 GETIMPORT                        R29 K108 [BrickColor.new]
      713 LOADK                            R30 K155 ["Magenta"]
      714 CALL                             R29 1 1
      715 GETTABLEKS                       R28 R29 K110 ["Color"]
      717 GETIMPORT                        R30 K108 [BrickColor.new]
      719 LOADK                            R31 K156 ["Royal purple"]
      720 CALL                             R30 1 1
      721 GETTABLEKS                       R29 R30 K110 ["Color"]
      723 GETIMPORT                        R31 K108 [BrickColor.new]
      725 LOADK                            R32 K157 ["Alder"]
      726 CALL                             R31 1 1
      727 GETTABLEKS                       R30 R31 K110 ["Color"]
      729 SETLIST                          R14 R15 16 [33]
      731 GETIMPORT                        R16 K108 [BrickColor.new]
      733 LOADK                            R17 K158 ["Pastel violet"]
      734 CALL                             R16 1 1
      735 GETTABLEKS                       R15 R16 K110 ["Color"]
      737 GETIMPORT                        R17 K108 [BrickColor.new]
      739 LOADK                            R18 K159 ["Bright red"]
      740 CALL                             R17 1 1
      741 GETTABLEKS                       R16 R17 K110 ["Color"]
      743 GETIMPORT                        R18 K108 [BrickColor.new]
      745 LOADK                            R19 K160 ["Really red"]
      746 CALL                             R18 1 1
      747 GETTABLEKS                       R17 R18 K110 ["Color"]
      749 GETIMPORT                        R19 K108 [BrickColor.new]
      751 LOADK                            R20 K161 ["Hot pink"]
      752 CALL                             R19 1 1
      753 GETTABLEKS                       R18 R19 K110 ["Color"]
      755 GETIMPORT                        R20 K108 [BrickColor.new]
      757 LOADK                            R21 K162 ["Pink"]
      758 CALL                             R20 1 1
      759 GETTABLEKS                       R19 R20 K110 ["Color"]
      761 GETIMPORT                        R21 K108 [BrickColor.new]
      763 LOADK                            R22 K163 ["Carnation pink"]
      764 CALL                             R21 1 1
      765 GETTABLEKS                       R20 R21 K110 ["Color"]
      767 GETIMPORT                        R22 K108 [BrickColor.new]
      769 LOADK                            R23 K164 ["Light reddish violet"]
      770 CALL                             R22 1 1
      771 GETTABLEKS                       R21 R22 K110 ["Color"]
      773 GETIMPORT                        R23 K108 [BrickColor.new]
      775 LOADK                            R24 K165 ["Pastel orange"]
      776 CALL                             R23 1 1
      777 GETTABLEKS                       R22 R23 K110 ["Color"]
      779 GETIMPORT                        R24 K108 [BrickColor.new]
      781 LOADK                            R25 K166 ["Dark taupe"]
      782 CALL                             R24 1 1
      783 GETTABLEKS                       R23 R24 K110 ["Color"]
      785 GETIMPORT                        R25 K108 [BrickColor.new]
      787 LOADK                            R26 K167 ["Cork"]
      788 CALL                             R25 1 1
      789 GETTABLEKS                       R24 R25 K110 ["Color"]
      791 GETIMPORT                        R26 K108 [BrickColor.new]
      793 LOADK                            R27 K168 ["Olive"]
      794 CALL                             R26 1 1
      795 GETTABLEKS                       R25 R26 K110 ["Color"]
      797 GETIMPORT                        R27 K108 [BrickColor.new]
      799 LOADK                            R28 K169 ["Medium green"]
      800 CALL                             R27 1 1
      801 GETTABLEKS                       R26 R27 K110 ["Color"]
      803 GETIMPORT                        R28 K108 [BrickColor.new]
      805 LOADK                            R29 K170 ["Grime"]
      806 CALL                             R28 1 1
      807 GETTABLEKS                       R27 R28 K110 ["Color"]
      809 GETIMPORT                        R29 K108 [BrickColor.new]
      811 LOADK                            R30 K171 ["Sand green"]
      812 CALL                             R29 1 1
      813 GETTABLEKS                       R28 R29 K110 ["Color"]
      815 GETIMPORT                        R30 K108 [BrickColor.new]
      817 LOADK                            R31 K172 ["Sand blue"]
      818 CALL                             R30 1 1
      819 GETTABLEKS                       R29 R30 K110 ["Color"]
      821 GETIMPORT                        R31 K108 [BrickColor.new]
      823 LOADK                            R32 K173 ["Lime green"]
      824 CALL                             R31 1 1
      825 GETTABLEKS                       R30 R31 K110 ["Color"]
      827 SETLIST                          R14 R15 16 [49]
      829 GETIMPORT                        R16 K108 [BrickColor.new]
      831 LOADK                            R17 K174 ["Pastel green"]
      832 CALL                             R16 1 1
      833 GETTABLEKS                       R15 R16 K110 ["Color"]
      835 GETIMPORT                        R17 K108 [BrickColor.new]
      837 LOADK                            R18 K175 ["New Yeller"]
      838 CALL                             R17 1 1
      839 GETTABLEKS                       R16 R17 K110 ["Color"]
      841 GETIMPORT                        R18 K108 [BrickColor.new]
      843 LOADK                            R19 K176 ["Pastel yellow"]
      844 CALL                             R18 1 1
      845 GETTABLEKS                       R17 R18 K110 ["Color"]
      847 GETIMPORT                        R19 K108 [BrickColor.new]
      849 LOADK                            R20 K177 ["Really black"]
      850 CALL                             R19 1 1
      851 GETTABLEKS                       R18 R19 K110 ["Color"]
      853 GETIMPORT                        R20 K108 [BrickColor.new]
      855 LOADK                            R21 K178 ["Black"]
      856 CALL                             R20 1 1
      857 GETTABLEKS                       R19 R20 K110 ["Color"]
      859 GETIMPORT                        R21 K108 [BrickColor.new]
      861 LOADK                            R22 K179 ["Dark stone grey"]
      862 CALL                             R21 1 1
      863 GETTABLEKS                       R20 R21 K110 ["Color"]
      865 GETIMPORT                        R22 K108 [BrickColor.new]
      867 LOADK                            R23 K180 ["Medium stone grey"]
      868 CALL                             R22 1 1
      869 GETTABLEKS                       R21 R22 K110 ["Color"]
      871 GETIMPORT                        R23 K108 [BrickColor.new]
      873 LOADK                            R24 K181 ["Mid gray"]
      874 CALL                             R23 1 1
      875 GETTABLEKS                       R22 R23 K110 ["Color"]
      877 GETIMPORT                        R24 K108 [BrickColor.new]
      879 LOADK                            R25 K182 ["Light stone grey"]
      880 CALL                             R24 1 1
      881 GETTABLEKS                       R23 R24 K110 ["Color"]
      883 GETIMPORT                        R31 K108 [BrickColor.new]
      885 LOADK                            R32 K183 ["White"]
      886 CALL                             R31 1 1
      887 GETTABLEKS                       R24 R31 K110 ["Color"]
      889 SETLIST                          R14 R15 10 [65]
      891 CALL                             R13 1 1
      892 GETTABLEKS                       R14 R3 K184 ["createHeadPalette"]
      894 GETTABLEKS                       R16 R1 K103 ["List"]
      896 GETTABLEKS                       R15 R16 K104 ["join"]
      898 MOVE                             R17 R7
      899 CALL                             R17 0 1
      900 JUMPIFNOT                        R17 ; [+6]
      901 NEWTABLE                         R16 0 1
      903 LOADK                            R17 K185 [72510165520892]
      904 SETLIST                          R16 R17 1 [1]
      906 JUMP                             ; [+2]
      907 NEWTABLE                         R16 0 0
      909 NEWTABLE                         R17 0 9
      911 LOADK                            R18 K186 [10687288296]
      912 LOADK                            R19 K187 [10725626210]
      913 LOADK                            R20 K188 [11572085825]
      914 LOADK                            R21 K189 [11584333045]
      915 LOADK                            R22 K190 [9107287520]
      916 LOADK                            R23 K191 [4908014528]
      917 LOADK                            R24 K192 [11775683481]
      918 LOADK                            R25 K193 [10407915508]
      919 LOADK                            R26 K194 [13207192743]
      920 SETLIST                          R17 R18 9 [1]
      922 CALL                             R15 2 -1
      923 CALL                             R14 -1 -1
      924 SETLIST                          R12 R13 -1 [1]
      926 GETTABLEKS                       R13 R3 K195 ["createBodyCategory"]
      928 GETTABLEKS                       R15 R1 K103 ["List"]
      930 GETTABLEKS                       R14 R15 K104 ["join"]
      932 MOVE                             R16 R7
      933 CALL                             R16 0 1
      934 JUMPIFNOT                        R16 ; [+21]
      935 NEWTABLE                         R15 0 1
      937 DUPTABLE                         R16 K201 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      938 LOADK                            R17 K202 [116488623753864]
      939 SETTABLEKS                       R17 R16 K196 ["Torso"]
      941 LOADK                            R17 K203 [133986177057036]
      942 SETTABLEKS                       R17 R16 K197 ["LeftArm"]
      944 LOADK                            R17 K204 [101158810738872]
      945 SETTABLEKS                       R17 R16 K198 ["RightArm"]
      947 LOADK                            R17 K205 [78536356632840]
      948 SETTABLEKS                       R17 R16 K199 ["LeftLeg"]
      950 LOADK                            R17 K206 [129290873866258]
      951 SETTABLEKS                       R17 R16 K200 ["RightLeg"]
      953 SETLIST                          R15 R16 1 [1]
      955 JUMP                             ; [+2]
      956 NEWTABLE                         R15 0 0
      958 NEWTABLE                         R16 0 6
      960 DUPTABLE                         R17 K201 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      961 LOADK                            R18 K207 [10610645439]
      962 SETTABLEKS                       R18 R17 K196 ["Torso"]
      964 LOADK                            R18 K208 [10610637502]
      965 SETTABLEKS                       R18 R17 K197 ["LeftArm"]
      967 LOADK                            R18 K209 [10610642340]
      968 SETTABLEKS                       R18 R17 K198 ["RightArm"]
      970 LOADK                            R18 K210 [10610640030]
      971 SETTABLEKS                       R18 R17 K199 ["LeftLeg"]
      973 LOADK                            R18 K211 [10610643939]
      974 SETTABLEKS                       R18 R17 K200 ["RightLeg"]
      976 DUPTABLE                         R18 K201 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      977 LOADK                            R19 K212 [11572083496]
      978 SETTABLEKS                       R19 R18 K196 ["Torso"]
      980 LOADK                            R19 K213 [11572074613]
      981 SETTABLEKS                       R19 R18 K197 ["LeftArm"]
      983 LOADK                            R19 K214 [11572079320]
      984 SETTABLEKS                       R19 R18 K198 ["RightArm"]
      986 LOADK                            R19 K215 [11572076845]
      987 SETTABLEKS                       R19 R18 K199 ["LeftLeg"]
      989 LOADK                            R19 K216 [11572081357]
      990 SETTABLEKS                       R19 R18 K200 ["RightLeg"]
      992 DUPTABLE                         R19 K201 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      993 LOADK                            R20 K217 [11740060397]
      994 SETTABLEKS                       R20 R19 K196 ["Torso"]
      996 LOADK                            R20 K218 [11740050465]
      997 SETTABLEKS                       R20 R19 K197 ["LeftArm"]
      999 LOADK                            R20 K219 [11740055375]
     1000 SETTABLEKS                       R20 R19 K198 ["RightArm"]
     1002 LOADK                            R20 K220 [11740052832]
     1003 SETTABLEKS                       R20 R19 K199 ["LeftLeg"]
     1005 LOADK                            R20 K221 [11740057815]
     1006 SETTABLEKS                       R20 R19 K200 ["RightLeg"]
     1008 DUPTABLE                         R20 K201 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
     1009 LOADK                            R21 K222 [11775682187]
     1010 SETTABLEKS                       R21 R20 K196 ["Torso"]
     1012 LOADK                            R21 K223 [11775676733]
     1013 SETTABLEKS                       R21 R20 K197 ["LeftArm"]
     1015 LOADK                            R21 K224 [11775679683]
     1016 SETTABLEKS                       R21 R20 K198 ["RightArm"]
     1018 LOADK                            R21 K225 [11775678171]
     1019 SETTABLEKS                       R21 R20 K199 ["LeftLeg"]
     1021 LOADK                            R21 K226 [11775680970]
     1022 SETTABLEKS                       R21 R20 K200 ["RightLeg"]
     1024 DUPTABLE                         R21 K201 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
     1025 LOADK                            R22 K227 [7200824885]
     1026 SETTABLEKS                       R22 R21 K196 ["Torso"]
     1028 LOADK                            R22 K228 [7200822331]
     1029 SETTABLEKS                       R22 R21 K197 ["LeftArm"]
     1031 LOADK                            R22 K229 [7200823471]
     1032 SETTABLEKS                       R22 R21 K198 ["RightArm"]
     1034 LOADK                            R22 K230 [7200822888]
     1035 SETTABLEKS                       R22 R21 K199 ["LeftLeg"]
     1037 LOADK                            R22 K231 [7200824015]
     1038 SETTABLEKS                       R22 R21 K200 ["RightLeg"]
     1040 DUPTABLE                         R22 K201 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
     1041 LOADK                            R23 K232 [13207187481]
     1042 SETTABLEKS                       R23 R22 K196 ["Torso"]
     1044 LOADK                            R23 K233 [13207165801]
     1045 SETTABLEKS                       R23 R22 K197 ["LeftArm"]
     1047 LOADK                            R23 K234 [13207181458]
     1048 SETTABLEKS                       R23 R22 K198 ["RightArm"]
     1050 LOADK                            R23 K235 [13207168831]
     1051 SETTABLEKS                       R23 R22 K199 ["LeftLeg"]
     1053 LOADK                            R23 K236 [13207184265]
     1054 SETTABLEKS                       R23 R22 K200 ["RightLeg"]
     1056 SETLIST                          R16 R17 6 [1]
     1058 CALL                             R14 2 -1
     1059 CALL                             R13 -1 -1
     1060 CALL                             R11 -1 1
     1061 SETTABLEKS                       R11 R10 K22 ["body"]
     1063 NEWTABLE                         R11 0 8
     1065 GETTABLEKS                       R12 R3 K28 ["layeredClothingPalette"]
     1067 LOADK                            R13 K237 ["Shirts"]
     1068 GETIMPORT                        R14 K239 [Enum.AssetType.ShirtAccessory]
     1070 GETTABLEKS                       R16 R2 K240 ["shirts"]
     1072 NEWTABLE                         R17 0 0
     1074 MOVE                             R18 R16
     1075 LOADNIL                          R19
     1076 LOADNIL                          R20
     1077 FORGPREP                         R18
     1078 GETTABLEKS                       R25 R22 K35 ["id"]
     1080 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
     1082 MOVE                             R24 R17
     1083 GETIMPORT                        R23 K38 [table.insert]
     1085 CALL                             R23 2 0
     1086 FORGLOOP                         R18 2 ; [-9]
     1088 MOVE                             R15 R17
     1089 GETTABLEKS                       R17 R4 K39 ["PREFERRED_LAYERS"]
     1091 GETTABLEKS                       R16 R17 K241 ["Tops"]
     1093 CALL                             R12 4 1
     1094 GETTABLEKS                       R13 R3 K28 ["layeredClothingPalette"]
     1096 LOADK                            R14 K242 ["TShirts"]
     1097 GETIMPORT                        R15 K244 [Enum.AssetType.TShirtAccessory]
     1099 GETTABLEKS                       R17 R2 K245 ["tshirts"]
     1101 NEWTABLE                         R18 0 0
     1103 MOVE                             R19 R17
     1104 LOADNIL                          R20
     1105 LOADNIL                          R21
     1106 FORGPREP                         R19
     1107 GETTABLEKS                       R26 R23 K35 ["id"]
     1109 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
     1111 MOVE                             R25 R18
     1112 GETIMPORT                        R24 K38 [table.insert]
     1114 CALL                             R24 2 0
     1115 FORGLOOP                         R19 2 ; [-9]
     1117 MOVE                             R16 R18
     1118 GETTABLEKS                       R18 R4 K39 ["PREFERRED_LAYERS"]
     1120 GETTABLEKS                       R17 R18 K241 ["Tops"]
     1122 CALL                             R13 4 1
     1123 GETTABLEKS                       R14 R3 K28 ["layeredClothingPalette"]
     1125 LOADK                            R15 K246 ["Jackets"]
     1126 GETIMPORT                        R16 K248 [Enum.AssetType.JacketAccessory]
     1128 GETTABLEKS                       R18 R2 K249 ["jackets"]
     1130 NEWTABLE                         R19 0 0
     1132 MOVE                             R20 R18
     1133 LOADNIL                          R21
     1134 LOADNIL                          R22
     1135 FORGPREP                         R20
     1136 GETTABLEKS                       R27 R24 K35 ["id"]
     1138 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
     1140 MOVE                             R26 R19
     1141 GETIMPORT                        R25 K38 [table.insert]
     1143 CALL                             R25 2 0
     1144 FORGLOOP                         R20 2 ; [-9]
     1146 MOVE                             R17 R19
     1147 GETTABLEKS                       R19 R4 K39 ["PREFERRED_LAYERS"]
     1149 GETTABLEKS                       R18 R19 K250 ["Outerwear"]
     1151 CALL                             R14 4 1
     1152 GETTABLEKS                       R15 R3 K28 ["layeredClothingPalette"]
     1154 LOADK                            R16 K251 ["Sweaters"]
     1155 GETIMPORT                        R17 K253 [Enum.AssetType.SweaterAccessory]
     1157 GETTABLEKS                       R19 R2 K254 ["sweaters"]
     1159 NEWTABLE                         R20 0 0
     1161 MOVE                             R21 R19
     1162 LOADNIL                          R22
     1163 LOADNIL                          R23
     1164 FORGPREP                         R21
     1165 GETTABLEKS                       R28 R25 K35 ["id"]
     1167 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
     1169 MOVE                             R27 R20
     1170 GETIMPORT                        R26 K38 [table.insert]
     1172 CALL                             R26 2 0
     1173 FORGLOOP                         R21 2 ; [-9]
     1175 MOVE                             R18 R20
     1176 GETTABLEKS                       R20 R4 K39 ["PREFERRED_LAYERS"]
     1178 GETTABLEKS                       R19 R20 K241 ["Tops"]
     1180 CALL                             R15 4 1
     1181 GETTABLEKS                       R16 R3 K28 ["layeredClothingPalette"]
     1183 LOADK                            R17 K255 ["Pants"]
     1184 GETIMPORT                        R18 K257 [Enum.AssetType.PantsAccessory]
     1186 GETTABLEKS                       R20 R2 K258 ["pants"]
     1188 NEWTABLE                         R21 0 0
     1190 MOVE                             R22 R20
     1191 LOADNIL                          R23
     1192 LOADNIL                          R24
     1193 FORGPREP                         R22
     1194 GETTABLEKS                       R29 R26 K35 ["id"]
     1196 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
     1198 MOVE                             R28 R21
     1199 GETIMPORT                        R27 K38 [table.insert]
     1201 CALL                             R27 2 0
     1202 FORGLOOP                         R22 2 ; [-9]
     1204 MOVE                             R19 R21
     1205 GETTABLEKS                       R21 R4 K39 ["PREFERRED_LAYERS"]
     1207 GETTABLEKS                       R20 R21 K259 ["Bottoms"]
     1209 CALL                             R16 4 1
     1210 GETTABLEKS                       R17 R3 K28 ["layeredClothingPalette"]
     1212 LOADK                            R18 K4 ["require"]
     1213 GETIMPORT                        R19 K262 [Enum.AssetType.ShortsAccessory]
     1215 GETTABLEKS                       R21 R2 K263 ["shorts"]
     1217 NEWTABLE                         R22 0 0
     1219 MOVE                             R23 R21
     1220 LOADNIL                          R24
     1221 LOADNIL                          R25
     1222 FORGPREP                         R23
     1223 GETTABLEKS                       R30 R27 K35 ["id"]
     1225 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
     1227 MOVE                             R29 R22
     1228 GETIMPORT                        R28 K38 [table.insert]
     1230 CALL                             R28 2 0
     1231 FORGLOOP                         R23 2 ; [-9]
     1233 MOVE                             R20 R22
     1234 GETTABLEKS                       R22 R4 K39 ["PREFERRED_LAYERS"]
     1236 GETTABLEKS                       R21 R22 K259 ["Bottoms"]
     1238 CALL                             R17 4 1
     1239 GETTABLEKS                       R18 R3 K28 ["layeredClothingPalette"]
     1241 LOADK                            R19 K8 ["Src"]
     1242 GETIMPORT                        R20 K266 [Enum.AssetType.DressSkirtAccessory]
     1244 GETTABLEKS                       R22 R2 K267 ["skirts"]
     1246 NEWTABLE                         R23 0 0
     1248 MOVE                             R24 R22
     1249 LOADNIL                          R25
     1250 LOADNIL                          R26
     1251 FORGPREP                         R24
     1252 GETTABLEKS                       R31 R28 K35 ["id"]
     1254 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
     1256 MOVE                             R30 R23
     1257 GETIMPORT                        R29 K38 [table.insert]
     1259 CALL                             R29 2 0
     1260 FORGLOOP                         R24 2 ; [-9]
     1262 MOVE                             R21 R23
     1263 GETTABLEKS                       R23 R4 K39 ["PREFERRED_LAYERS"]
     1265 GETTABLEKS                       R22 R23 K259 ["Bottoms"]
     1267 CALL                             R18 4 1
     1268 GETTABLEKS                       R19 R3 K268 ["shoesPalette"]
     1270 NEWTABLE                         R20 0 3
     1272 DUPTABLE                         R21 K269 [{"left", "right"}]
     1273 LOADK                            R22 K14 ["Types"]
     1274 SETTABLEKS                       R22 R21 K79 ["left"]
     1276 LOADK                            R22 K15 ["Flags"]
     1277 SETTABLEKS                       R22 R21 K81 ["right"]
     1279 DUPTABLE                         R22 K269 [{"left", "right"}]
     1280 LOADK                            R23 K16 ["getFFlagAvatarPreviewerMakeup"]
     1281 SETTABLEKS                       R23 R22 K79 ["left"]
     1283 LOADK                            R23 K17 ["getFFlagAvatarPreviewerMakeupDescription"]
     1284 SETTABLEKS                       R23 R22 K81 ["right"]
     1286 DUPTABLE                         R23 K269 [{"left", "right"}]
     1287 LOADK                            R24 K18 [PROTO_0]
     1288 SETTABLEKS                       R24 R23 K79 ["left"]
     1290 LOADK                            R24 K19 [PROTO_1]
     1291 SETTABLEKS                       R24 R23 K81 ["right"]
     1293 SETLIST                          R20 R21 3 [1]
     1295 CALL                             R19 1 1
     1296 SETLIST                          R11 R12 8 [1]
     1298 SETTABLEKS                       R11 R10 K23 ["clothing"]
     1300 NEWTABLE                         R11 0 1
     1302 GETTABLEKS                       R12 R3 K276 ["emotionPalette"]
     1304 NEWTABLE                         R13 0 6
     1306 LOADK                            R14 K21 ["animations"]
     1307 LOADK                            R15 K22 ["body"]
     1308 LOADK                            R16 K23 ["clothing"]
     1309 LOADK                            R17 K24 ["animations_face"]
     1310 LOADK                            R18 K25 ["accessories_face"]
     1311 LOADK                            R19 K26 ["makeup"]
     1312 SETLIST                          R13 R14 6 [1]
     1314 CALL                             R12 1 -1
     1315 SETLIST                          R11 R12 -1 [1]
     1317 SETTABLEKS                       R11 R10 K24 ["animations_face"]
     1319 NEWTABLE                         R11 0 5
     1321 GETTABLEKS                       R12 R3 K28 ["layeredClothingPalette"]
     1323 LOADK                            R13 K29 ["Hair"]
     1324 GETIMPORT                        R14 K33 [Enum.AssetType.HairAccessory]
     1326 GETTABLEKS                       R16 R2 K34 ["hair"]
     1328 NEWTABLE                         R17 0 0
     1330 MOVE                             R18 R16
     1331 LOADNIL                          R19
     1332 LOADNIL                          R20
     1333 FORGPREP                         R18
     1334 GETTABLEKS                       R25 R22 K35 ["id"]
     1336 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
     1338 MOVE                             R24 R17
     1339 GETIMPORT                        R23 K38 [table.insert]
     1341 CALL                             R23 2 0
     1342 FORGLOOP                         R18 2 ; [-9]
     1344 MOVE                             R15 R17
     1345 GETTABLEKS                       R17 R4 K39 ["PREFERRED_LAYERS"]
     1347 GETTABLEKS                       R16 R17 K29 ["Hair"]
     1349 CALL                             R12 4 1
     1350 GETTABLEKS                       R13 R3 K40 ["basicAccessoryPalette"]
     1352 LOADK                            R14 K41 ["Head"]
     1353 GETIMPORT                        R15 K43 [Enum.AssetType.Hat]
     1355 GETTABLEKS                       R17 R2 K44 ["head"]
     1357 NEWTABLE                         R18 0 0
     1359 MOVE                             R19 R17
     1360 LOADNIL                          R20
     1361 LOADNIL                          R21
     1362 FORGPREP                         R19
     1363 GETTABLEKS                       R26 R23 K35 ["id"]
     1365 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
     1367 MOVE                             R25 R18
     1368 GETIMPORT                        R24 K38 [table.insert]
     1370 CALL                             R24 2 0
     1371 FORGLOOP                         R19 2 ; [-9]
     1373 MOVE                             R16 R18
     1374 CALL                             R13 3 1
     1375 GETTABLEKS                       R14 R3 K28 ["layeredClothingPalette"]
     1377 LOADK                            R15 K45 ["Face"]
     1378 GETIMPORT                        R16 K47 [Enum.AssetType.FaceAccessory]
     1380 GETTABLEKS                       R18 R2 K48 ["face"]
     1382 NEWTABLE                         R19 0 0
     1384 MOVE                             R20 R18
     1385 LOADNIL                          R21
     1386 LOADNIL                          R22
     1387 FORGPREP                         R20
     1388 GETTABLEKS                       R27 R24 K35 ["id"]
     1390 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
     1392 MOVE                             R26 R19
     1393 GETIMPORT                        R25 K38 [table.insert]
     1395 CALL                             R25 2 0
     1396 FORGLOOP                         R20 2 ; [-9]
     1398 MOVE                             R17 R19
     1399 GETTABLEKS                       R19 R4 K39 ["PREFERRED_LAYERS"]
     1401 GETTABLEKS                       R18 R19 K45 ["Face"]
     1403 CALL                             R14 4 1
     1404 MOVE                             R16 R6
     1405 CALL                             R16 0 1
     1406 JUMPIF                           R16 ; [+30]
     1407 GETTABLEKS                       R15 R3 K28 ["layeredClothingPalette"]
     1409 LOADK                            R16 K49 ["Eyebrows"]
     1410 GETIMPORT                        R17 K51 [Enum.AssetType.EyebrowAccessory]
     1412 GETTABLEKS                       R19 R2 K52 ["eyebrows"]
     1414 NEWTABLE                         R20 0 0
     1416 MOVE                             R21 R19
     1417 LOADNIL                          R22
     1418 LOADNIL                          R23
     1419 FORGPREP                         R21
     1420 GETTABLEKS                       R28 R25 K35 ["id"]
     1422 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
     1424 MOVE                             R27 R20
     1425 GETIMPORT                        R26 K38 [table.insert]
     1427 CALL                             R26 2 0
     1428 FORGLOOP                         R21 2 ; [-9]
     1430 MOVE                             R18 R20
     1431 GETTABLEKS                       R20 R4 K39 ["PREFERRED_LAYERS"]
     1433 GETTABLEKS                       R19 R20 K49 ["Eyebrows"]
     1435 CALL                             R15 4 1
     1436 JUMP                             ; [+1]
     1437 LOADNIL                          R15
     1438 MOVE                             R17 R6
     1439 CALL                             R17 0 1
     1440 JUMPIF                           R17 ; [+30]
     1441 GETTABLEKS                       R16 R3 K28 ["layeredClothingPalette"]
     1443 LOADK                            R17 K53 ["Eyelashes"]
     1444 GETIMPORT                        R18 K55 [Enum.AssetType.EyelashAccessory]
     1446 GETTABLEKS                       R20 R2 K56 ["eyelashes"]
     1448 NEWTABLE                         R21 0 0
     1450 MOVE                             R22 R20
     1451 LOADNIL                          R23
     1452 LOADNIL                          R24
     1453 FORGPREP                         R22
     1454 GETTABLEKS                       R29 R26 K35 ["id"]
     1456 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
     1458 MOVE                             R28 R21
     1459 GETIMPORT                        R27 K38 [table.insert]
     1461 CALL                             R27 2 0
     1462 FORGLOOP                         R22 2 ; [-9]
     1464 MOVE                             R19 R21
     1465 GETTABLEKS                       R21 R4 K39 ["PREFERRED_LAYERS"]
     1467 GETTABLEKS                       R20 R21 K53 ["Eyelashes"]
     1469 CALL                             R16 4 1
     1470 JUMP                             ; [+1]
     1471 LOADNIL                          R16
     1472 SETLIST                          R11 R12 5 [1]
     1474 SETTABLEKS                       R11 R10 K25 ["accessories_face"]
     1476 MOVE                             R12 R6
     1477 CALL                             R12 0 1
     1478 JUMPIFNOT                        R12 ; [+156]
     1479 NEWTABLE                         R11 0 5
     1481 GETTABLEKS                       R12 R3 K283 ["createMakeupPalette"]
     1483 LOADK                            R13 K28 ["layeredClothingPalette"]
     1484 GETIMPORT                        R14 K285 [Enum.AssetType.FaceMakeup]
     1486 MOVE                             R16 R7
     1487 CALL                             R16 0 1
     1488 JUMPIFNOT                        R16 ; [+20]
     1489 GETTABLEKS                       R16 R2 K286 ["faceMakeup"]
     1491 NEWTABLE                         R17 0 0
     1493 MOVE                             R18 R16
     1494 LOADNIL                          R19
     1495 LOADNIL                          R20
     1496 FORGPREP                         R18
     1497 GETTABLEKS                       R25 R22 K35 ["id"]
     1499 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
     1501 MOVE                             R24 R17
     1502 GETIMPORT                        R23 K38 [table.insert]
     1504 CALL                             R23 2 0
     1505 FORGLOOP                         R18 2 ; [-9]
     1507 MOVE                             R15 R17
     1508 JUMP                             ; [+2]
     1509 NEWTABLE                         R15 0 0
     1511 CALL                             R12 3 1
     1512 GETTABLEKS                       R13 R3 K283 ["createMakeupPalette"]
     1514 LOADK                            R14 K31 ["AssetType"]
     1515 GETIMPORT                        R15 K288 [Enum.AssetType.LipMakeup]
     1517 MOVE                             R17 R7
     1518 CALL                             R17 0 1
     1519 JUMPIFNOT                        R17 ; [+20]
     1520 GETTABLEKS                       R17 R2 K289 ["lipMakeup"]
     1522 NEWTABLE                         R18 0 0
     1524 MOVE                             R19 R17
     1525 LOADNIL                          R20
     1526 LOADNIL                          R21
     1527 FORGPREP                         R19
     1528 GETTABLEKS                       R26 R23 K35 ["id"]
     1530 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
     1532 MOVE                             R25 R18
     1533 GETIMPORT                        R24 K38 [table.insert]
     1535 CALL                             R24 2 0
     1536 FORGLOOP                         R19 2 ; [-9]
     1538 MOVE                             R16 R18
     1539 JUMP                             ; [+2]
     1540 NEWTABLE                         R16 0 0
     1542 CALL                             R13 3 1
     1543 GETTABLEKS                       R14 R3 K283 ["createMakeupPalette"]
     1545 LOADK                            R15 K34 ["hair"]
     1546 GETIMPORT                        R16 K291 [Enum.AssetType.EyeMakeup]
     1548 MOVE                             R18 R7
     1549 CALL                             R18 0 1
     1550 JUMPIFNOT                        R18 ; [+20]
     1551 GETTABLEKS                       R18 R2 K292 ["eyeMakeup"]
     1553 NEWTABLE                         R19 0 0
     1555 MOVE                             R20 R18
     1556 LOADNIL                          R21
     1557 LOADNIL                          R22
     1558 FORGPREP                         R20
     1559 GETTABLEKS                       R27 R24 K35 ["id"]
     1561 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
     1563 MOVE                             R26 R19
     1564 GETIMPORT                        R25 K38 [table.insert]
     1566 CALL                             R25 2 0
     1567 FORGLOOP                         R20 2 ; [-9]
     1569 MOVE                             R17 R19
     1570 JUMP                             ; [+2]
     1571 NEWTABLE                         R17 0 0
     1573 CALL                             R14 3 1
     1574 GETTABLEKS                       R15 R3 K28 ["layeredClothingPalette"]
     1576 LOADK                            R16 K49 ["Eyebrows"]
     1577 GETIMPORT                        R17 K51 [Enum.AssetType.EyebrowAccessory]
     1579 GETTABLEKS                       R19 R2 K52 ["eyebrows"]
     1581 NEWTABLE                         R20 0 0
     1583 MOVE                             R21 R19
     1584 LOADNIL                          R22
     1585 LOADNIL                          R23
     1586 FORGPREP                         R21
     1587 GETTABLEKS                       R28 R25 K35 ["id"]
     1589 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
     1591 MOVE                             R27 R20
     1592 GETIMPORT                        R26 K38 [table.insert]
     1594 CALL                             R26 2 0
     1595 FORGLOOP                         R21 2 ; [-9]
     1597 MOVE                             R18 R20
     1598 GETTABLEKS                       R20 R4 K39 ["PREFERRED_LAYERS"]
     1600 GETTABLEKS                       R19 R20 K49 ["Eyebrows"]
     1602 CALL                             R15 4 1
     1603 GETTABLEKS                       R16 R3 K28 ["layeredClothingPalette"]
     1605 LOADK                            R17 K53 ["Eyelashes"]
     1606 GETIMPORT                        R18 K55 [Enum.AssetType.EyelashAccessory]
     1608 GETTABLEKS                       R20 R2 K56 ["eyelashes"]
     1610 NEWTABLE                         R21 0 0
     1612 MOVE                             R22 R20
     1613 LOADNIL                          R23
     1614 LOADNIL                          R24
     1615 FORGPREP                         R22
     1616 GETTABLEKS                       R29 R26 K35 ["id"]
     1618 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
     1620 MOVE                             R28 R21
     1621 GETIMPORT                        R27 K38 [table.insert]
     1623 CALL                             R27 2 0
     1624 FORGLOOP                         R22 2 ; [-9]
     1626 MOVE                             R19 R21
     1627 GETTABLEKS                       R21 R4 K39 ["PREFERRED_LAYERS"]
     1629 GETTABLEKS                       R20 R21 K53 ["Eyelashes"]
     1631 CALL                             R16 4 -1
     1632 SETLIST                          R11 R12 -1 [1]
     1634 JUMP                             ; [+1]
     1635 LOADNIL                          R11
     1636 SETTABLEKS                       R11 R10 K26 ["makeup"]
     1638 RETURN                           R10 1
