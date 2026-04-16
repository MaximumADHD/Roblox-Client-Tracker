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
       67 DUPTABLE                         R9 K27 [{"accessories", "animations", "body", "clothing", "animations_face", "body_face", "accessories_face", "makeup"}]
       68 NEWTABLE                         R10 0 12
       70 GETTABLEKS                       R11 R3 K28 ["layeredClothingPalette"]
       72 LOADK                            R12 K29 ["Hair"]
       73 GETIMPORT                        R13 K33 [Enum.AssetType.HairAccessory]
       75 GETTABLEKS                       R15 R2 K34 ["hair"]
       77 NEWTABLE                         R16 0 0
       79 MOVE                             R17 R15
       80 LOADNIL                          R18
       81 LOADNIL                          R19
       82 FORGPREP                         R17
       83 GETTABLEKS                       R24 R21 K35 ["id"]
       85 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
       87 MOVE                             R23 R16
       88 GETIMPORT                        R22 K38 [table.insert]
       90 CALL                             R22 2 0
       91 FORGLOOP                         R17 2 ; [-9]
       93 MOVE                             R14 R16
       94 GETTABLEKS                       R16 R4 K39 ["PREFERRED_LAYERS"]
       96 GETTABLEKS                       R15 R16 K29 ["Hair"]
       98 CALL                             R11 4 1
       99 GETTABLEKS                       R12 R3 K40 ["basicAccessoryPalette"]
      101 LOADK                            R13 K41 ["Head"]
      102 GETIMPORT                        R14 K43 [Enum.AssetType.Hat]
      104 GETTABLEKS                       R16 R2 K44 ["head"]
      106 NEWTABLE                         R17 0 0
      108 MOVE                             R18 R16
      109 LOADNIL                          R19
      110 LOADNIL                          R20
      111 FORGPREP                         R18
      112 GETTABLEKS                       R25 R22 K35 ["id"]
      114 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
      116 MOVE                             R24 R17
      117 GETIMPORT                        R23 K38 [table.insert]
      119 CALL                             R23 2 0
      120 FORGLOOP                         R18 2 ; [-9]
      122 MOVE                             R15 R17
      123 CALL                             R12 3 1
      124 GETTABLEKS                       R13 R3 K28 ["layeredClothingPalette"]
      126 LOADK                            R14 K45 ["Face"]
      127 GETIMPORT                        R15 K47 [Enum.AssetType.FaceAccessory]
      129 GETTABLEKS                       R17 R2 K48 ["face"]
      131 NEWTABLE                         R18 0 0
      133 MOVE                             R19 R17
      134 LOADNIL                          R20
      135 LOADNIL                          R21
      136 FORGPREP                         R19
      137 GETTABLEKS                       R26 R23 K35 ["id"]
      139 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      141 MOVE                             R25 R18
      142 GETIMPORT                        R24 K38 [table.insert]
      144 CALL                             R24 2 0
      145 FORGLOOP                         R19 2 ; [-9]
      147 MOVE                             R16 R18
      148 GETTABLEKS                       R18 R4 K39 ["PREFERRED_LAYERS"]
      150 GETTABLEKS                       R17 R18 K45 ["Face"]
      152 CALL                             R13 4 1
      153 GETTABLEKS                       R14 R3 K28 ["layeredClothingPalette"]
      155 LOADK                            R15 K49 ["Eyebrows"]
      156 GETIMPORT                        R16 K51 [Enum.AssetType.EyebrowAccessory]
      158 GETTABLEKS                       R18 R2 K52 ["eyebrows"]
      160 NEWTABLE                         R19 0 0
      162 MOVE                             R20 R18
      163 LOADNIL                          R21
      164 LOADNIL                          R22
      165 FORGPREP                         R20
      166 GETTABLEKS                       R27 R24 K35 ["id"]
      168 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      170 MOVE                             R26 R19
      171 GETIMPORT                        R25 K38 [table.insert]
      173 CALL                             R25 2 0
      174 FORGLOOP                         R20 2 ; [-9]
      176 MOVE                             R17 R19
      177 GETTABLEKS                       R19 R4 K39 ["PREFERRED_LAYERS"]
      179 GETTABLEKS                       R18 R19 K49 ["Eyebrows"]
      181 CALL                             R14 4 1
      182 GETTABLEKS                       R15 R3 K28 ["layeredClothingPalette"]
      184 LOADK                            R16 K53 ["Eyelashes"]
      185 GETIMPORT                        R17 K55 [Enum.AssetType.EyelashAccessory]
      187 GETTABLEKS                       R19 R2 K56 ["eyelashes"]
      189 NEWTABLE                         R20 0 0
      191 MOVE                             R21 R19
      192 LOADNIL                          R22
      193 LOADNIL                          R23
      194 FORGPREP                         R21
      195 GETTABLEKS                       R28 R25 K35 ["id"]
      197 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      199 MOVE                             R27 R20
      200 GETIMPORT                        R26 K38 [table.insert]
      202 CALL                             R26 2 0
      203 FORGLOOP                         R21 2 ; [-9]
      205 MOVE                             R18 R20
      206 GETTABLEKS                       R20 R4 K39 ["PREFERRED_LAYERS"]
      208 GETTABLEKS                       R19 R20 K53 ["Eyelashes"]
      210 CALL                             R15 4 1
      211 GETTABLEKS                       R16 R3 K40 ["basicAccessoryPalette"]
      213 LOADK                            R17 K57 ["Front"]
      214 GETIMPORT                        R18 K59 [Enum.AssetType.FrontAccessory]
      216 GETTABLEKS                       R20 R2 K60 ["front"]
      218 NEWTABLE                         R21 0 0
      220 MOVE                             R22 R20
      221 LOADNIL                          R23
      222 LOADNIL                          R24
      223 FORGPREP                         R22
      224 GETTABLEKS                       R29 R26 K35 ["id"]
      226 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      228 MOVE                             R28 R21
      229 GETIMPORT                        R27 K38 [table.insert]
      231 CALL                             R27 2 0
      232 FORGLOOP                         R22 2 ; [-9]
      234 MOVE                             R19 R21
      235 CALL                             R16 3 1
      236 GETTABLEKS                       R17 R3 K40 ["basicAccessoryPalette"]
      238 LOADK                            R18 K61 ["Neck"]
      239 GETIMPORT                        R19 K63 [Enum.AssetType.NeckAccessory]
      241 GETTABLEKS                       R21 R2 K64 ["neck"]
      243 NEWTABLE                         R22 0 0
      245 MOVE                             R23 R21
      246 LOADNIL                          R24
      247 LOADNIL                          R25
      248 FORGPREP                         R23
      249 GETTABLEKS                       R30 R27 K35 ["id"]
      251 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      253 MOVE                             R29 R22
      254 GETIMPORT                        R28 K38 [table.insert]
      256 CALL                             R28 2 0
      257 FORGLOOP                         R23 2 ; [-9]
      259 MOVE                             R20 R22
      260 CALL                             R17 3 1
      261 GETTABLEKS                       R18 R3 K40 ["basicAccessoryPalette"]
      263 LOADK                            R19 K65 ["Shoulder"]
      264 GETIMPORT                        R20 K67 [Enum.AssetType.ShoulderAccessory]
      266 GETTABLEKS                       R22 R2 K68 ["shoulder"]
      268 NEWTABLE                         R23 0 0
      270 MOVE                             R24 R22
      271 LOADNIL                          R25
      272 LOADNIL                          R26
      273 FORGPREP                         R24
      274 GETTABLEKS                       R31 R28 K35 ["id"]
      276 FASTCALL2                        TABLE_INSERT R23 R31 ; [+4]
      278 MOVE                             R30 R23
      279 GETIMPORT                        R29 K38 [table.insert]
      281 CALL                             R29 2 0
      282 FORGLOOP                         R24 2 ; [-9]
      284 MOVE                             R21 R23
      285 CALL                             R18 3 1
      286 GETTABLEKS                       R19 R3 K40 ["basicAccessoryPalette"]
      288 LOADK                            R20 K69 ["Back"]
      289 GETIMPORT                        R21 K71 [Enum.AssetType.BackAccessory]
      291 GETTABLEKS                       R23 R2 K72 ["back"]
      293 NEWTABLE                         R24 0 0
      295 MOVE                             R25 R23
      296 LOADNIL                          R26
      297 LOADNIL                          R27
      298 FORGPREP                         R25
      299 GETTABLEKS                       R32 R29 K35 ["id"]
      301 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      303 MOVE                             R31 R24
      304 GETIMPORT                        R30 K38 [table.insert]
      306 CALL                             R30 2 0
      307 FORGLOOP                         R25 2 ; [-9]
      309 MOVE                             R22 R24
      310 CALL                             R19 3 1
      311 GETTABLEKS                       R20 R3 K40 ["basicAccessoryPalette"]
      313 LOADK                            R21 K73 ["Waist"]
      314 GETIMPORT                        R22 K75 [Enum.AssetType.WaistAccessory]
      316 GETTABLEKS                       R24 R2 K76 ["waist"]
      318 NEWTABLE                         R25 0 0
      320 MOVE                             R26 R24
      321 LOADNIL                          R27
      322 LOADNIL                          R28
      323 FORGPREP                         R26
      324 GETTABLEKS                       R33 R30 K35 ["id"]
      326 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      328 MOVE                             R32 R25
      329 GETIMPORT                        R31 K38 [table.insert]
      331 CALL                             R31 2 0
      332 FORGLOOP                         R26 2 ; [-9]
      334 MOVE                             R23 R25
      335 CALL                             R20 3 1
      336 GETTABLEKS                       R21 R3 K77 ["gearPalette"]
      338 GETTABLEKS                       R23 R2 K78 ["gearLeft"]
      340 NEWTABLE                         R24 0 0
      342 MOVE                             R25 R23
      343 LOADNIL                          R26
      344 LOADNIL                          R27
      345 FORGPREP                         R25
      346 GETTABLEKS                       R32 R29 K35 ["id"]
      348 FASTCALL2                        TABLE_INSERT R24 R32 ; [+4]
      350 MOVE                             R31 R24
      351 GETIMPORT                        R30 K38 [table.insert]
      353 CALL                             R30 2 0
      354 FORGLOOP                         R25 2 ; [-9]
      356 MOVE                             R22 R24
      357 LOADK                            R23 K79 ["left"]
      358 CALL                             R21 2 1
      359 GETTABLEKS                       R22 R3 K77 ["gearPalette"]
      361 GETTABLEKS                       R24 R2 K80 ["gearRight"]
      363 NEWTABLE                         R25 0 0
      365 MOVE                             R26 R24
      366 LOADNIL                          R27
      367 LOADNIL                          R28
      368 FORGPREP                         R26
      369 GETTABLEKS                       R33 R30 K35 ["id"]
      371 FASTCALL2                        TABLE_INSERT R25 R33 ; [+4]
      373 MOVE                             R32 R25
      374 GETIMPORT                        R31 K38 [table.insert]
      376 CALL                             R31 2 0
      377 FORGLOOP                         R26 2 ; [-9]
      379 MOVE                             R23 R25
      380 LOADK                            R24 K81 ["right"]
      381 CALL                             R22 2 -1
      382 SETLIST                          R10 R11 -1 [1]
      384 SETTABLEKS                       R10 R9 K19 ["accessories"]
      386 NEWTABLE                         R10 0 2
      388 GETTABLEKS                       R11 R3 K82 ["createBodyAnimationPalette"]
      390 LOADK                            R12 K83 ["Movement"]
      391 NEWTABLE                         R13 0 8
      393 LOADK                            R14 K84 [16540596584]
      394 LOADK                            R15 K85 [16562317918]
      395 LOADK                            R16 K86 [16562332340]
      396 LOADK                            R17 K87 [16562326358]
      397 LOADK                            R18 K88 [16562321958]
      398 LOADK                            R19 K89 [16562307212]
      399 LOADK                            R20 K90 [16562311455]
      400 LOADK                            R21 K91 [16562329379]
      401 SETLIST                          R13 R14 8 [1]
      403 CALL                             R11 2 1
      404 GETTABLEKS                       R12 R3 K82 ["createBodyAnimationPalette"]
      406 LOADK                            R13 K92 ["BodyEmotes"]
      407 NEWTABLE                         R14 0 10
      409 LOADK                            R15 K93 [16569676514]
      410 LOADK                            R16 K94 [16569175989]
      411 LOADK                            R17 K95 [16569548328]
      412 LOADK                            R18 K96 [16569163126]
      413 LOADK                            R19 K97 [10714358528]
      414 LOADK                            R20 K98 [10714395441]
      415 LOADK                            R21 K99 [10714383856]
      416 LOADK                            R22 K100 [4940563117]
      417 LOADK                            R23 K101 [10714347256]
      418 LOADK                            R24 K102 [10714369325]
      419 SETLIST                          R14 R15 10 [1]
      421 CALL                             R12 2 -1
      422 SETLIST                          R10 R11 -1 [1]
      424 SETTABLEKS                       R10 R9 K20 ["animations"]
      426 GETTABLEKS                       R11 R1 K103 ["List"]
      428 GETTABLEKS                       R10 R11 K104 ["join"]
      430 NEWTABLE                         R11 0 2
      432 GETTABLEKS                       R12 R3 K105 ["skinPalette"]
      434 GETTABLEKS                       R13 R2 K106 ["skinColors"]
      436 CALL                             R12 1 1
      437 GETTABLEKS                       R13 R3 K107 ["createHeadPalette"]
      439 GETTABLEKS                       R15 R1 K103 ["List"]
      441 GETTABLEKS                       R14 R15 K104 ["join"]
      443 MOVE                             R16 R7
      444 CALL                             R16 0 1
      445 JUMPIFNOT                        R16 ; [+6]
      446 NEWTABLE                         R15 0 1
      448 LOADK                            R16 K108 [72510165520892]
      449 SETLIST                          R15 R16 1 [1]
      451 JUMP                             ; [+2]
      452 NEWTABLE                         R15 0 0
      454 NEWTABLE                         R16 0 9
      456 LOADK                            R17 K109 [10687288296]
      457 LOADK                            R18 K110 [10725626210]
      458 LOADK                            R19 K111 [11572085825]
      459 LOADK                            R20 K112 [11584333045]
      460 LOADK                            R21 K113 [9107287520]
      461 LOADK                            R22 K114 [4908014528]
      462 LOADK                            R23 K115 [11775683481]
      463 LOADK                            R24 K116 [10407915508]
      464 LOADK                            R25 K117 [13207192743]
      465 SETLIST                          R16 R17 9 [1]
      467 CALL                             R14 2 -1
      468 CALL                             R13 -1 -1
      469 SETLIST                          R11 R12 -1 [1]
      471 GETTABLEKS                       R12 R3 K118 ["createBodyCategory"]
      473 GETTABLEKS                       R14 R1 K103 ["List"]
      475 GETTABLEKS                       R13 R14 K104 ["join"]
      477 MOVE                             R15 R7
      478 CALL                             R15 0 1
      479 JUMPIFNOT                        R15 ; [+21]
      480 NEWTABLE                         R14 0 1
      482 DUPTABLE                         R15 K124 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      483 LOADK                            R16 K125 [116488623753864]
      484 SETTABLEKS                       R16 R15 K119 ["Torso"]
      486 LOADK                            R16 K126 [133986177057036]
      487 SETTABLEKS                       R16 R15 K120 ["LeftArm"]
      489 LOADK                            R16 K127 [101158810738872]
      490 SETTABLEKS                       R16 R15 K121 ["RightArm"]
      492 LOADK                            R16 K128 [78536356632840]
      493 SETTABLEKS                       R16 R15 K122 ["LeftLeg"]
      495 LOADK                            R16 K129 [129290873866258]
      496 SETTABLEKS                       R16 R15 K123 ["RightLeg"]
      498 SETLIST                          R14 R15 1 [1]
      500 JUMP                             ; [+2]
      501 NEWTABLE                         R14 0 0
      503 NEWTABLE                         R15 0 6
      505 DUPTABLE                         R16 K124 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      506 LOADK                            R17 K130 [10610645439]
      507 SETTABLEKS                       R17 R16 K119 ["Torso"]
      509 LOADK                            R17 K131 [10610637502]
      510 SETTABLEKS                       R17 R16 K120 ["LeftArm"]
      512 LOADK                            R17 K132 [10610642340]
      513 SETTABLEKS                       R17 R16 K121 ["RightArm"]
      515 LOADK                            R17 K133 [10610640030]
      516 SETTABLEKS                       R17 R16 K122 ["LeftLeg"]
      518 LOADK                            R17 K134 [10610643939]
      519 SETTABLEKS                       R17 R16 K123 ["RightLeg"]
      521 DUPTABLE                         R17 K124 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      522 LOADK                            R18 K135 [11572083496]
      523 SETTABLEKS                       R18 R17 K119 ["Torso"]
      525 LOADK                            R18 K136 [11572074613]
      526 SETTABLEKS                       R18 R17 K120 ["LeftArm"]
      528 LOADK                            R18 K137 [11572079320]
      529 SETTABLEKS                       R18 R17 K121 ["RightArm"]
      531 LOADK                            R18 K138 [11572076845]
      532 SETTABLEKS                       R18 R17 K122 ["LeftLeg"]
      534 LOADK                            R18 K139 [11572081357]
      535 SETTABLEKS                       R18 R17 K123 ["RightLeg"]
      537 DUPTABLE                         R18 K124 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      538 LOADK                            R19 K140 [11740060397]
      539 SETTABLEKS                       R19 R18 K119 ["Torso"]
      541 LOADK                            R19 K141 [11740050465]
      542 SETTABLEKS                       R19 R18 K120 ["LeftArm"]
      544 LOADK                            R19 K142 [11740055375]
      545 SETTABLEKS                       R19 R18 K121 ["RightArm"]
      547 LOADK                            R19 K143 [11740052832]
      548 SETTABLEKS                       R19 R18 K122 ["LeftLeg"]
      550 LOADK                            R19 K144 [11740057815]
      551 SETTABLEKS                       R19 R18 K123 ["RightLeg"]
      553 DUPTABLE                         R19 K124 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      554 LOADK                            R20 K145 [11775682187]
      555 SETTABLEKS                       R20 R19 K119 ["Torso"]
      557 LOADK                            R20 K146 [11775676733]
      558 SETTABLEKS                       R20 R19 K120 ["LeftArm"]
      560 LOADK                            R20 K147 [11775679683]
      561 SETTABLEKS                       R20 R19 K121 ["RightArm"]
      563 LOADK                            R20 K148 [11775678171]
      564 SETTABLEKS                       R20 R19 K122 ["LeftLeg"]
      566 LOADK                            R20 K149 [11775680970]
      567 SETTABLEKS                       R20 R19 K123 ["RightLeg"]
      569 DUPTABLE                         R20 K124 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      570 LOADK                            R21 K150 [7200824885]
      571 SETTABLEKS                       R21 R20 K119 ["Torso"]
      573 LOADK                            R21 K151 [7200822331]
      574 SETTABLEKS                       R21 R20 K120 ["LeftArm"]
      576 LOADK                            R21 K152 [7200823471]
      577 SETTABLEKS                       R21 R20 K121 ["RightArm"]
      579 LOADK                            R21 K153 [7200822888]
      580 SETTABLEKS                       R21 R20 K122 ["LeftLeg"]
      582 LOADK                            R21 K154 [7200824015]
      583 SETTABLEKS                       R21 R20 K123 ["RightLeg"]
      585 DUPTABLE                         R21 K124 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
      586 LOADK                            R22 K155 [13207187481]
      587 SETTABLEKS                       R22 R21 K119 ["Torso"]
      589 LOADK                            R22 K156 [13207165801]
      590 SETTABLEKS                       R22 R21 K120 ["LeftArm"]
      592 LOADK                            R22 K157 [13207181458]
      593 SETTABLEKS                       R22 R21 K121 ["RightArm"]
      595 LOADK                            R22 K158 [13207168831]
      596 SETTABLEKS                       R22 R21 K122 ["LeftLeg"]
      598 LOADK                            R22 K159 [13207184265]
      599 SETTABLEKS                       R22 R21 K123 ["RightLeg"]
      601 SETLIST                          R15 R16 6 [1]
      603 CALL                             R13 2 -1
      604 CALL                             R12 -1 -1
      605 CALL                             R10 -1 1
      606 SETTABLEKS                       R10 R9 K21 ["body"]
      608 NEWTABLE                         R10 0 8
      610 GETTABLEKS                       R11 R3 K28 ["layeredClothingPalette"]
      612 LOADK                            R12 K160 ["Shirts"]
      613 GETIMPORT                        R13 K162 [Enum.AssetType.ShirtAccessory]
      615 GETTABLEKS                       R15 R2 K163 ["shirts"]
      617 NEWTABLE                         R16 0 0
      619 MOVE                             R17 R15
      620 LOADNIL                          R18
      621 LOADNIL                          R19
      622 FORGPREP                         R17
      623 GETTABLEKS                       R24 R21 K35 ["id"]
      625 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
      627 MOVE                             R23 R16
      628 GETIMPORT                        R22 K38 [table.insert]
      630 CALL                             R22 2 0
      631 FORGLOOP                         R17 2 ; [-9]
      633 MOVE                             R14 R16
      634 GETTABLEKS                       R16 R4 K39 ["PREFERRED_LAYERS"]
      636 GETTABLEKS                       R15 R16 K164 ["Tops"]
      638 CALL                             R11 4 1
      639 GETTABLEKS                       R12 R3 K28 ["layeredClothingPalette"]
      641 LOADK                            R13 K165 ["TShirts"]
      642 GETIMPORT                        R14 K167 [Enum.AssetType.TShirtAccessory]
      644 GETTABLEKS                       R16 R2 K168 ["tshirts"]
      646 NEWTABLE                         R17 0 0
      648 MOVE                             R18 R16
      649 LOADNIL                          R19
      650 LOADNIL                          R20
      651 FORGPREP                         R18
      652 GETTABLEKS                       R25 R22 K35 ["id"]
      654 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
      656 MOVE                             R24 R17
      657 GETIMPORT                        R23 K38 [table.insert]
      659 CALL                             R23 2 0
      660 FORGLOOP                         R18 2 ; [-9]
      662 MOVE                             R15 R17
      663 GETTABLEKS                       R17 R4 K39 ["PREFERRED_LAYERS"]
      665 GETTABLEKS                       R16 R17 K164 ["Tops"]
      667 CALL                             R12 4 1
      668 GETTABLEKS                       R13 R3 K28 ["layeredClothingPalette"]
      670 LOADK                            R14 K169 ["Jackets"]
      671 GETIMPORT                        R15 K171 [Enum.AssetType.JacketAccessory]
      673 GETTABLEKS                       R17 R2 K172 ["jackets"]
      675 NEWTABLE                         R18 0 0
      677 MOVE                             R19 R17
      678 LOADNIL                          R20
      679 LOADNIL                          R21
      680 FORGPREP                         R19
      681 GETTABLEKS                       R26 R23 K35 ["id"]
      683 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      685 MOVE                             R25 R18
      686 GETIMPORT                        R24 K38 [table.insert]
      688 CALL                             R24 2 0
      689 FORGLOOP                         R19 2 ; [-9]
      691 MOVE                             R16 R18
      692 GETTABLEKS                       R18 R4 K39 ["PREFERRED_LAYERS"]
      694 GETTABLEKS                       R17 R18 K173 ["Outerwear"]
      696 CALL                             R13 4 1
      697 GETTABLEKS                       R14 R3 K28 ["layeredClothingPalette"]
      699 LOADK                            R15 K174 ["Sweaters"]
      700 GETIMPORT                        R16 K176 [Enum.AssetType.SweaterAccessory]
      702 GETTABLEKS                       R18 R2 K177 ["sweaters"]
      704 NEWTABLE                         R19 0 0
      706 MOVE                             R20 R18
      707 LOADNIL                          R21
      708 LOADNIL                          R22
      709 FORGPREP                         R20
      710 GETTABLEKS                       R27 R24 K35 ["id"]
      712 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      714 MOVE                             R26 R19
      715 GETIMPORT                        R25 K38 [table.insert]
      717 CALL                             R25 2 0
      718 FORGLOOP                         R20 2 ; [-9]
      720 MOVE                             R17 R19
      721 GETTABLEKS                       R19 R4 K39 ["PREFERRED_LAYERS"]
      723 GETTABLEKS                       R18 R19 K164 ["Tops"]
      725 CALL                             R14 4 1
      726 GETTABLEKS                       R15 R3 K28 ["layeredClothingPalette"]
      728 LOADK                            R16 K178 ["Pants"]
      729 GETIMPORT                        R17 K180 [Enum.AssetType.PantsAccessory]
      731 GETTABLEKS                       R19 R2 K181 ["pants"]
      733 NEWTABLE                         R20 0 0
      735 MOVE                             R21 R19
      736 LOADNIL                          R22
      737 LOADNIL                          R23
      738 FORGPREP                         R21
      739 GETTABLEKS                       R28 R25 K35 ["id"]
      741 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      743 MOVE                             R27 R20
      744 GETIMPORT                        R26 K38 [table.insert]
      746 CALL                             R26 2 0
      747 FORGLOOP                         R21 2 ; [-9]
      749 MOVE                             R18 R20
      750 GETTABLEKS                       R20 R4 K39 ["PREFERRED_LAYERS"]
      752 GETTABLEKS                       R19 R20 K182 ["Bottoms"]
      754 CALL                             R15 4 1
      755 GETTABLEKS                       R16 R3 K28 ["layeredClothingPalette"]
      757 LOADK                            R17 K183 ["Shorts"]
      758 GETIMPORT                        R18 K185 [Enum.AssetType.ShortsAccessory]
      760 GETTABLEKS                       R20 R2 K186 ["shorts"]
      762 NEWTABLE                         R21 0 0
      764 MOVE                             R22 R20
      765 LOADNIL                          R23
      766 LOADNIL                          R24
      767 FORGPREP                         R22
      768 GETTABLEKS                       R29 R26 K35 ["id"]
      770 FASTCALL2                        TABLE_INSERT R21 R29 ; [+4]
      772 MOVE                             R28 R21
      773 GETIMPORT                        R27 K38 [table.insert]
      775 CALL                             R27 2 0
      776 FORGLOOP                         R22 2 ; [-9]
      778 MOVE                             R19 R21
      779 GETTABLEKS                       R21 R4 K39 ["PREFERRED_LAYERS"]
      781 GETTABLEKS                       R20 R21 K182 ["Bottoms"]
      783 CALL                             R16 4 1
      784 GETTABLEKS                       R17 R3 K28 ["layeredClothingPalette"]
      786 LOADK                            R18 K187 ["Skirts"]
      787 GETIMPORT                        R19 K189 [Enum.AssetType.DressSkirtAccessory]
      789 GETTABLEKS                       R21 R2 K190 ["skirts"]
      791 NEWTABLE                         R22 0 0
      793 MOVE                             R23 R21
      794 LOADNIL                          R24
      795 LOADNIL                          R25
      796 FORGPREP                         R23
      797 GETTABLEKS                       R30 R27 K35 ["id"]
      799 FASTCALL2                        TABLE_INSERT R22 R30 ; [+4]
      801 MOVE                             R29 R22
      802 GETIMPORT                        R28 K38 [table.insert]
      804 CALL                             R28 2 0
      805 FORGLOOP                         R23 2 ; [-9]
      807 MOVE                             R20 R22
      808 GETTABLEKS                       R22 R4 K39 ["PREFERRED_LAYERS"]
      810 GETTABLEKS                       R21 R22 K182 ["Bottoms"]
      812 CALL                             R17 4 1
      813 GETTABLEKS                       R18 R3 K191 ["shoesPalette"]
      815 NEWTABLE                         R19 0 3
      817 DUPTABLE                         R20 K192 [{"left", "right"}]
      818 LOADK                            R21 K193 [8722031289]
      819 SETTABLEKS                       R21 R20 K79 ["left"]
      821 LOADK                            R21 K194 [8722020587]
      822 SETTABLEKS                       R21 R20 K81 ["right"]
      824 DUPTABLE                         R21 K192 [{"left", "right"}]
      825 LOADK                            R22 K195 [7193170137]
      826 SETTABLEKS                       R22 R21 K79 ["left"]
      828 LOADK                            R22 K196 [7193171232]
      829 SETTABLEKS                       R22 R21 K81 ["right"]
      831 DUPTABLE                         R22 K192 [{"left", "right"}]
      832 LOADK                            R23 K197 [7193104827]
      833 SETTABLEKS                       R23 R22 K79 ["left"]
      835 LOADK                            R23 K198 [7193106211]
      836 SETTABLEKS                       R23 R22 K81 ["right"]
      838 SETLIST                          R19 R20 3 [1]
      840 CALL                             R18 1 1
      841 SETLIST                          R10 R11 8 [1]
      843 SETTABLEKS                       R10 R9 K22 ["clothing"]
      845 NEWTABLE                         R10 0 1
      847 GETTABLEKS                       R11 R3 K199 ["emotionPalette"]
      849 NEWTABLE                         R12 0 6
      851 LOADK                            R13 K200 [13965126930]
      852 LOADK                            R14 K201 [13965139478]
      853 LOADK                            R15 K202 [13965076233]
      854 LOADK                            R16 K203 [13965039145]
      855 LOADK                            R17 K204 [13965064041]
      856 LOADK                            R18 K205 [13965162732]
      857 SETLIST                          R12 R13 6 [1]
      859 CALL                             R11 1 -1
      860 SETLIST                          R10 R11 -1 [1]
      862 SETTABLEKS                       R10 R9 K23 ["animations_face"]
      864 GETTABLEKS                       R11 R1 K103 ["List"]
      866 GETTABLEKS                       R10 R11 K104 ["join"]
      868 NEWTABLE                         R11 0 2
      870 GETTABLEKS                       R12 R3 K105 ["skinPalette"]
      872 GETTABLEKS                       R13 R2 K106 ["skinColors"]
      874 CALL                             R12 1 1
      875 GETTABLEKS                       R13 R3 K107 ["createHeadPalette"]
      877 GETTABLEKS                       R15 R1 K103 ["List"]
      879 GETTABLEKS                       R14 R15 K104 ["join"]
      881 MOVE                             R16 R7
      882 CALL                             R16 0 1
      883 JUMPIFNOT                        R16 ; [+6]
      884 NEWTABLE                         R15 0 1
      886 LOADK                            R16 K108 [72510165520892]
      887 SETLIST                          R15 R16 1 [1]
      889 JUMP                             ; [+2]
      890 NEWTABLE                         R15 0 0
      892 NEWTABLE                         R16 0 9
      894 LOADK                            R17 K109 [10687288296]
      895 LOADK                            R18 K110 [10725626210]
      896 LOADK                            R19 K111 [11572085825]
      897 LOADK                            R20 K112 [11584333045]
      898 LOADK                            R21 K113 [9107287520]
      899 LOADK                            R22 K114 [4908014528]
      900 LOADK                            R23 K115 [11775683481]
      901 LOADK                            R24 K116 [10407915508]
      902 LOADK                            R25 K117 [13207192743]
      903 SETLIST                          R16 R17 9 [1]
      905 CALL                             R14 2 -1
      906 CALL                             R13 -1 -1
      907 SETLIST                          R11 R12 -1 [1]
      909 CALL                             R10 1 1
      910 SETTABLEKS                       R10 R9 K24 ["body_face"]
      912 NEWTABLE                         R10 0 5
      914 GETTABLEKS                       R11 R3 K28 ["layeredClothingPalette"]
      916 LOADK                            R12 K29 ["Hair"]
      917 GETIMPORT                        R13 K33 [Enum.AssetType.HairAccessory]
      919 GETTABLEKS                       R15 R2 K34 ["hair"]
      921 NEWTABLE                         R16 0 0
      923 MOVE                             R17 R15
      924 LOADNIL                          R18
      925 LOADNIL                          R19
      926 FORGPREP                         R17
      927 GETTABLEKS                       R24 R21 K35 ["id"]
      929 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
      931 MOVE                             R23 R16
      932 GETIMPORT                        R22 K38 [table.insert]
      934 CALL                             R22 2 0
      935 FORGLOOP                         R17 2 ; [-9]
      937 MOVE                             R14 R16
      938 GETTABLEKS                       R16 R4 K39 ["PREFERRED_LAYERS"]
      940 GETTABLEKS                       R15 R16 K29 ["Hair"]
      942 CALL                             R11 4 1
      943 GETTABLEKS                       R12 R3 K40 ["basicAccessoryPalette"]
      945 LOADK                            R13 K41 ["Head"]
      946 GETIMPORT                        R14 K43 [Enum.AssetType.Hat]
      948 GETTABLEKS                       R16 R2 K44 ["head"]
      950 NEWTABLE                         R17 0 0
      952 MOVE                             R18 R16
      953 LOADNIL                          R19
      954 LOADNIL                          R20
      955 FORGPREP                         R18
      956 GETTABLEKS                       R25 R22 K35 ["id"]
      958 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
      960 MOVE                             R24 R17
      961 GETIMPORT                        R23 K38 [table.insert]
      963 CALL                             R23 2 0
      964 FORGLOOP                         R18 2 ; [-9]
      966 MOVE                             R15 R17
      967 CALL                             R12 3 1
      968 GETTABLEKS                       R13 R3 K28 ["layeredClothingPalette"]
      970 LOADK                            R14 K45 ["Face"]
      971 GETIMPORT                        R15 K47 [Enum.AssetType.FaceAccessory]
      973 GETTABLEKS                       R17 R2 K48 ["face"]
      975 NEWTABLE                         R18 0 0
      977 MOVE                             R19 R17
      978 LOADNIL                          R20
      979 LOADNIL                          R21
      980 FORGPREP                         R19
      981 GETTABLEKS                       R26 R23 K35 ["id"]
      983 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      985 MOVE                             R25 R18
      986 GETIMPORT                        R24 K38 [table.insert]
      988 CALL                             R24 2 0
      989 FORGLOOP                         R19 2 ; [-9]
      991 MOVE                             R16 R18
      992 GETTABLEKS                       R18 R4 K39 ["PREFERRED_LAYERS"]
      994 GETTABLEKS                       R17 R18 K45 ["Face"]
      996 CALL                             R13 4 1
      997 MOVE                             R15 R6
      998 CALL                             R15 0 1
      999 JUMPIF                           R15 ; [+30]
     1000 GETTABLEKS                       R14 R3 K28 ["layeredClothingPalette"]
     1002 LOADK                            R15 K49 ["Eyebrows"]
     1003 GETIMPORT                        R16 K51 [Enum.AssetType.EyebrowAccessory]
     1005 GETTABLEKS                       R18 R2 K52 ["eyebrows"]
     1007 NEWTABLE                         R19 0 0
     1009 MOVE                             R20 R18
     1010 LOADNIL                          R21
     1011 LOADNIL                          R22
     1012 FORGPREP                         R20
     1013 GETTABLEKS                       R27 R24 K35 ["id"]
     1015 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
     1017 MOVE                             R26 R19
     1018 GETIMPORT                        R25 K38 [table.insert]
     1020 CALL                             R25 2 0
     1021 FORGLOOP                         R20 2 ; [-9]
     1023 MOVE                             R17 R19
     1024 GETTABLEKS                       R19 R4 K39 ["PREFERRED_LAYERS"]
     1026 GETTABLEKS                       R18 R19 K49 ["Eyebrows"]
     1028 CALL                             R14 4 1
     1029 JUMP                             ; [+1]
     1030 LOADNIL                          R14
     1031 MOVE                             R16 R6
     1032 CALL                             R16 0 1
     1033 JUMPIF                           R16 ; [+30]
     1034 GETTABLEKS                       R15 R3 K28 ["layeredClothingPalette"]
     1036 LOADK                            R16 K53 ["Eyelashes"]
     1037 GETIMPORT                        R17 K55 [Enum.AssetType.EyelashAccessory]
     1039 GETTABLEKS                       R19 R2 K56 ["eyelashes"]
     1041 NEWTABLE                         R20 0 0
     1043 MOVE                             R21 R19
     1044 LOADNIL                          R22
     1045 LOADNIL                          R23
     1046 FORGPREP                         R21
     1047 GETTABLEKS                       R28 R25 K35 ["id"]
     1049 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
     1051 MOVE                             R27 R20
     1052 GETIMPORT                        R26 K38 [table.insert]
     1054 CALL                             R26 2 0
     1055 FORGLOOP                         R21 2 ; [-9]
     1057 MOVE                             R18 R20
     1058 GETTABLEKS                       R20 R4 K39 ["PREFERRED_LAYERS"]
     1060 GETTABLEKS                       R19 R20 K53 ["Eyelashes"]
     1062 CALL                             R15 4 1
     1063 JUMP                             ; [+1]
     1064 LOADNIL                          R15
     1065 SETLIST                          R10 R11 5 [1]
     1067 SETTABLEKS                       R10 R9 K25 ["accessories_face"]
     1069 MOVE                             R11 R6
     1070 CALL                             R11 0 1
     1071 JUMPIFNOT                        R11 ; [+156]
     1072 NEWTABLE                         R10 0 5
     1074 GETTABLEKS                       R11 R3 K206 ["createMakeupPalette"]
     1076 LOADK                            R12 K207 ["FaceMakeup"]
     1077 GETIMPORT                        R13 K208 [Enum.AssetType.FaceMakeup]
     1079 MOVE                             R15 R7
     1080 CALL                             R15 0 1
     1081 JUMPIFNOT                        R15 ; [+20]
     1082 GETTABLEKS                       R15 R2 K209 ["faceMakeup"]
     1084 NEWTABLE                         R16 0 0
     1086 MOVE                             R17 R15
     1087 LOADNIL                          R18
     1088 LOADNIL                          R19
     1089 FORGPREP                         R17
     1090 GETTABLEKS                       R24 R21 K35 ["id"]
     1092 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
     1094 MOVE                             R23 R16
     1095 GETIMPORT                        R22 K38 [table.insert]
     1097 CALL                             R22 2 0
     1098 FORGLOOP                         R17 2 ; [-9]
     1100 MOVE                             R14 R16
     1101 JUMP                             ; [+2]
     1102 NEWTABLE                         R14 0 0
     1104 CALL                             R11 3 1
     1105 GETTABLEKS                       R12 R3 K206 ["createMakeupPalette"]
     1107 LOADK                            R13 K210 ["LipMakeup"]
     1108 GETIMPORT                        R14 K211 [Enum.AssetType.LipMakeup]
     1110 MOVE                             R16 R7
     1111 CALL                             R16 0 1
     1112 JUMPIFNOT                        R16 ; [+20]
     1113 GETTABLEKS                       R16 R2 K212 ["lipMakeup"]
     1115 NEWTABLE                         R17 0 0
     1117 MOVE                             R18 R16
     1118 LOADNIL                          R19
     1119 LOADNIL                          R20
     1120 FORGPREP                         R18
     1121 GETTABLEKS                       R25 R22 K35 ["id"]
     1123 FASTCALL2                        TABLE_INSERT R17 R25 ; [+4]
     1125 MOVE                             R24 R17
     1126 GETIMPORT                        R23 K38 [table.insert]
     1128 CALL                             R23 2 0
     1129 FORGLOOP                         R18 2 ; [-9]
     1131 MOVE                             R15 R17
     1132 JUMP                             ; [+2]
     1133 NEWTABLE                         R15 0 0
     1135 CALL                             R12 3 1
     1136 GETTABLEKS                       R13 R3 K206 ["createMakeupPalette"]
     1138 LOADK                            R14 K213 ["EyeMakeup"]
     1139 GETIMPORT                        R15 K214 [Enum.AssetType.EyeMakeup]
     1141 MOVE                             R17 R7
     1142 CALL                             R17 0 1
     1143 JUMPIFNOT                        R17 ; [+20]
     1144 GETTABLEKS                       R17 R2 K215 ["eyeMakeup"]
     1146 NEWTABLE                         R18 0 0
     1148 MOVE                             R19 R17
     1149 LOADNIL                          R20
     1150 LOADNIL                          R21
     1151 FORGPREP                         R19
     1152 GETTABLEKS                       R26 R23 K35 ["id"]
     1154 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
     1156 MOVE                             R25 R18
     1157 GETIMPORT                        R24 K38 [table.insert]
     1159 CALL                             R24 2 0
     1160 FORGLOOP                         R19 2 ; [-9]
     1162 MOVE                             R16 R18
     1163 JUMP                             ; [+2]
     1164 NEWTABLE                         R16 0 0
     1166 CALL                             R13 3 1
     1167 GETTABLEKS                       R14 R3 K28 ["layeredClothingPalette"]
     1169 LOADK                            R15 K49 ["Eyebrows"]
     1170 GETIMPORT                        R16 K51 [Enum.AssetType.EyebrowAccessory]
     1172 GETTABLEKS                       R18 R2 K52 ["eyebrows"]
     1174 NEWTABLE                         R19 0 0
     1176 MOVE                             R20 R18
     1177 LOADNIL                          R21
     1178 LOADNIL                          R22
     1179 FORGPREP                         R20
     1180 GETTABLEKS                       R27 R24 K35 ["id"]
     1182 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
     1184 MOVE                             R26 R19
     1185 GETIMPORT                        R25 K38 [table.insert]
     1187 CALL                             R25 2 0
     1188 FORGLOOP                         R20 2 ; [-9]
     1190 MOVE                             R17 R19
     1191 GETTABLEKS                       R19 R4 K39 ["PREFERRED_LAYERS"]
     1193 GETTABLEKS                       R18 R19 K49 ["Eyebrows"]
     1195 CALL                             R14 4 1
     1196 GETTABLEKS                       R15 R3 K28 ["layeredClothingPalette"]
     1198 LOADK                            R16 K53 ["Eyelashes"]
     1199 GETIMPORT                        R17 K55 [Enum.AssetType.EyelashAccessory]
     1201 GETTABLEKS                       R19 R2 K56 ["eyelashes"]
     1203 NEWTABLE                         R20 0 0
     1205 MOVE                             R21 R19
     1206 LOADNIL                          R22
     1207 LOADNIL                          R23
     1208 FORGPREP                         R21
     1209 GETTABLEKS                       R28 R25 K35 ["id"]
     1211 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
     1213 MOVE                             R27 R20
     1214 GETIMPORT                        R26 K38 [table.insert]
     1216 CALL                             R26 2 0
     1217 FORGLOOP                         R21 2 ; [-9]
     1219 MOVE                             R18 R20
     1220 GETTABLEKS                       R20 R4 K39 ["PREFERRED_LAYERS"]
     1222 GETTABLEKS                       R19 R20 K53 ["Eyelashes"]
     1224 CALL                             R15 4 -1
     1225 SETLIST                          R10 R11 -1 [1]
     1227 JUMP                             ; [+1]
     1228 LOADNIL                          R10
     1229 SETTABLEKS                       R10 R9 K26 ["makeup"]
     1231 RETURN                           R9 1
