PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["dialogLookType"]
        5 JUMPIFNOTEQKS                    R1 K1 ["AvatarLook"] ; [+5]
        7 GETIMPORT                        R1 K3 [error]
        9 LOADK                            R2 K4 ["Avatar Looks are not enabled"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K5 ["use"]
       14 CALL                             R1 0 1
       15 NAMECALL                         R1 R1 K6 ["get"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 2
       19 NAMECALL                         R2 R2 K5 ["use"]
       21 CALL                             R2 1 1
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 GETUPVAL                         R5 0
       25 CALL                             R5 0 1
       26 JUMPIF                           R5 ; [+10]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R6 R0 K7 ["equippedItems"]
       30 NEWTABLE                         R7 0 0
       32 GETTABLEKS                       R8 R0 K0 ["dialogLookType"]
       34 CALL                             R5 3 2
       35 MOVE                             R3 R5
       36 MOVE                             R4 R6
       37 GETUPVAL                         R5 4
       38 CALL                             R5 0 1
       39 GETUPVAL                         R6 5
       40 CALL                             R6 0 1
       41 GETUPVAL                         R7 6
       42 DUPTABLE                         R8 K9 [{"equippedItems", "dialogLookType", "selectedCreatorId"}]
       43 GETTABLEKS                       R9 R0 K7 ["equippedItems"]
       45 SETTABLEKS                       R9 R8 K7 ["equippedItems"]
       47 GETTABLEKS                       R9 R0 K0 ["dialogLookType"]
       49 SETTABLEKS                       R9 R8 K0 ["dialogLookType"]
       51 GETTABLEKS                       R9 R6 K8 ["selectedCreatorId"]
       53 SETTABLEKS                       R9 R8 K8 ["selectedCreatorId"]
       55 CALL                             R7 1 1
       56 GETUPVAL                         R8 0
       57 CALL                             R8 0 1
       58 JUMPIFNOT                        R8 ; [+10]
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R9 R0 K7 ["equippedItems"]
       62 GETTABLEKS                       R10 R7 K10 ["dialogItems"]
       64 GETTABLEKS                       R11 R0 K0 ["dialogLookType"]
       66 CALL                             R8 3 2
       67 MOVE                             R3 R8
       68 MOVE                             R4 R9
       69 GETUPVAL                         R8 7
       70 DUPTABLE                         R9 K12 [{"dialogItems", "dialogLookType", "skinColor"}]
       71 GETTABLEKS                       R10 R7 K10 ["dialogItems"]
       73 SETTABLEKS                       R10 R9 K10 ["dialogItems"]
       75 GETTABLEKS                       R10 R0 K0 ["dialogLookType"]
       77 SETTABLEKS                       R10 R9 K0 ["dialogLookType"]
       79 SETTABLEKS                       R3 R9 K11 ["skinColor"]
       81 CALL                             R8 1 1
       82 GETUPVAL                         R9 8
       83 DUPTABLE                         R10 K16 [{"dialogItems", "dialogLookType", "skinColor", "selectedCreatorId", "name", "description", "bodyScale"}]
       84 GETTABLEKS                       R11 R7 K10 ["dialogItems"]
       86 SETTABLEKS                       R11 R10 K10 ["dialogItems"]
       88 GETTABLEKS                       R11 R0 K0 ["dialogLookType"]
       90 SETTABLEKS                       R11 R10 K0 ["dialogLookType"]
       92 SETTABLEKS                       R3 R10 K11 ["skinColor"]
       94 GETTABLEKS                       R11 R6 K8 ["selectedCreatorId"]
       96 SETTABLEKS                       R11 R10 K8 ["selectedCreatorId"]
       98 GETTABLEKS                       R11 R5 K13 ["name"]
      100 SETTABLEKS                       R11 R10 K13 ["name"]
      102 GETTABLEKS                       R11 R5 K14 ["description"]
      104 SETTABLEKS                       R11 R10 K14 ["description"]
      106 GETTABLEKS                       R11 R0 K15 ["bodyScale"]
      108 SETTABLEKS                       R11 R10 K15 ["bodyScale"]
      110 CALL                             R9 1 1
      111 GETUPVAL                         R10 9
      112 DUPTABLE                         R11 K20 [{"previewErrorMessages", "validationErrorMessages", "dialogItems", "dialogLookType", "isDialogItemsInitialized"}]
      113 GETTABLEKS                       R12 R7 K17 ["previewErrorMessages"]
      115 SETTABLEKS                       R12 R11 K17 ["previewErrorMessages"]
      117 GETTABLEKS                       R12 R9 K21 ["lookValidationErrors"]
      119 SETTABLEKS                       R12 R11 K18 ["validationErrorMessages"]
      121 GETTABLEKS                       R12 R7 K10 ["dialogItems"]
      123 SETTABLEKS                       R12 R11 K10 ["dialogItems"]
      125 GETTABLEKS                       R12 R0 K0 ["dialogLookType"]
      127 SETTABLEKS                       R12 R11 K0 ["dialogLookType"]
      129 GETTABLEKS                       R12 R7 K19 ["isDialogItemsInitialized"]
      131 SETTABLEKS                       R12 R11 K19 ["isDialogItemsInitialized"]
      133 CALL                             R10 1 1
      134 GETUPVAL                         R11 10
      135 DUPTABLE                         R12 K26 [{"invalidMetadata", "hasBlockingError", "lookAsyncCallsState", "onClose"}]
      136 GETTABLEKS                       R13 R5 K22 ["invalidMetadata"]
      138 SETTABLEKS                       R13 R12 K22 ["invalidMetadata"]
      140 GETTABLEKS                       R13 R10 K23 ["hasBlockingError"]
      142 SETTABLEKS                       R13 R12 K23 ["hasBlockingError"]
      144 SETTABLEKS                       R9 R12 K24 ["lookAsyncCallsState"]
      146 GETTABLEKS                       R13 R0 K25 ["onClose"]
      148 SETTABLEKS                       R13 R12 K25 ["onClose"]
      150 CALL                             R11 1 1
      151 LOADNIL                          R12
      152 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      154 JUMPIFNOTEQKS                    R13 K28 ["ConfirmItems"] ; [+125]
      156 GETUPVAL                         R13 11
      157 GETTABLEKS                       R13 R13 K29 ["new"]
      159 CALL                             R13 0 1
      160 GETUPVAL                         R14 12
      161 GETTABLEKS                       R14 R14 K30 ["createElement"]
      163 GETUPVAL                         R15 13
      164 DUPTABLE                         R16 K33 [{"tag", "scroll"}]
      165 LOADK                            R17 K34 ["size-full"]
      166 SETTABLEKS                       R17 R16 K31 ["tag"]
      168 DUPTABLE                         R17 K36 [{"AutomaticCanvasSize"}]
      169 GETIMPORT                        R18 K40 [Enum.AutomaticSize.Y]
      171 SETTABLEKS                       R18 R17 K35 ["AutomaticCanvasSize"]
      173 SETTABLEKS                       R17 R16 K32 ["scroll"]
      175 DUPTABLE                         R17 K42 [{"StageContent"}]
      176 GETUPVAL                         R18 12
      177 GETTABLEKS                       R18 R18 K30 ["createElement"]
      179 GETUPVAL                         R19 14
      180 DUPTABLE                         R20 K43 [{"tag"}]
      181 LOADK                            R21 K44 ["col gap-medium size-full-0 auto-y padding-large"]
      182 SETTABLEKS                       R21 R20 K31 ["tag"]
      184 DUPTABLE                         R21 K47 [{"InfoEntry", "LookDetails"}]
      185 GETUPVAL                         R22 12
      186 GETTABLEKS                       R22 R22 K30 ["createElement"]
      188 GETUPVAL                         R23 15
      189 DUPTABLE                         R24 K55 [{"LayoutOrder", "selectedCreatorId", "creators", "onCreatorChanged", "isAvatarLook", "skinColor", "onSkinColorChanged", "bodyColor", "lookPreview", "dialogItems"}]
      190 NAMECALL                         R25 R13 K56 ["getNextOrder"]
      192 CALL                             R25 1 1
      193 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      195 GETTABLEKS                       R25 R6 K8 ["selectedCreatorId"]
      197 SETTABLEKS                       R25 R24 K8 ["selectedCreatorId"]
      199 GETTABLEKS                       R25 R6 K49 ["creators"]
      201 SETTABLEKS                       R25 R24 K49 ["creators"]
      203 GETTABLEKS                       R25 R6 K57 ["setSelectedCreatorId"]
      205 SETTABLEKS                       R25 R24 K50 ["onCreatorChanged"]
      207 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      209 JUMPIFEQKS                       R26 K1 ["AvatarLook"] ; [+2]
      211 LOADB                            R25 0 +1
      212 LOADB                            R25 1
      213 SETTABLEKS                       R25 R24 K51 ["isAvatarLook"]
      215 SETTABLEKS                       R3 R24 K11 ["skinColor"]
      217 SETTABLEKS                       R4 R24 K52 ["onSkinColorChanged"]
      219 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      221 JUMPIFNOTEQKS                    R26 K1 ["AvatarLook"] ; [+3]
      223 MOVE                             R25 R3
      224 JUMP                             ; [+1]
      225 LOADNIL                          R25
      226 SETTABLEKS                       R25 R24 K53 ["bodyColor"]
      228 GETTABLEKS                       R25 R8 K54 ["lookPreview"]
      230 SETTABLEKS                       R25 R24 K54 ["lookPreview"]
      232 GETTABLEKS                       R25 R7 K10 ["dialogItems"]
      234 SETTABLEKS                       R25 R24 K10 ["dialogItems"]
      236 CALL                             R22 2 1
      237 SETTABLEKS                       R22 R21 K45 ["InfoEntry"]
      239 GETUPVAL                         R22 12
      240 GETTABLEKS                       R22 R22 K30 ["createElement"]
      242 GETUPVAL                         R23 16
      243 DUPTABLE                         R24 K60 [{"LayoutOrder", "dialogItems", "setDialogItemRowState", "isAvatarLook", "skinColor", "lookType"}]
      244 NAMECALL                         R25 R13 K56 ["getNextOrder"]
      246 CALL                             R25 1 1
      247 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      249 GETTABLEKS                       R25 R7 K10 ["dialogItems"]
      251 SETTABLEKS                       R25 R24 K10 ["dialogItems"]
      253 GETTABLEKS                       R25 R7 K58 ["setDialogItemRowState"]
      255 SETTABLEKS                       R25 R24 K58 ["setDialogItemRowState"]
      257 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      259 JUMPIFEQKS                       R26 K1 ["AvatarLook"] ; [+2]
      261 LOADB                            R25 0 +1
      262 LOADB                            R25 1
      263 SETTABLEKS                       R25 R24 K51 ["isAvatarLook"]
      265 SETTABLEKS                       R3 R24 K11 ["skinColor"]
      267 GETTABLEKS                       R25 R0 K0 ["dialogLookType"]
      269 SETTABLEKS                       R25 R24 K59 ["lookType"]
      271 CALL                             R22 2 1
      272 SETTABLEKS                       R22 R21 K46 ["LookDetails"]
      274 CALL                             R18 3 1
      275 SETTABLEKS                       R18 R17 K41 ["StageContent"]
      277 CALL                             R14 3 1
      278 MOVE                             R12 R14
      279 JUMP                             ; [+101]
      280 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      282 JUMPIFNOTEQKS                    R13 K61 ["EditInfo"] ; [+67]
      284 LOADNIL                          R13
      285 GETTABLEKS                       R14 R0 K0 ["dialogLookType"]
      287 JUMPIFNOTEQKS                    R14 K1 ["AvatarLook"] ; [+9]
      289 DUPTABLE                         R14 K62 [{"lookType", "bodyColor"}]
      290 LOADK                            R15 K1 ["AvatarLook"]
      291 SETTABLEKS                       R15 R14 K59 ["lookType"]
      293 SETTABLEKS                       R3 R14 K53 ["bodyColor"]
      295 MOVE                             R13 R14
      296 JUMP                             ; [+11]
      297 GETTABLEKS                       R14 R0 K0 ["dialogLookType"]
      299 JUMPIFNOTEQKS                    R14 K63 ["MakeupLook"] ; [+8]
      301 DUPTABLE                         R14 K64 [{"lookType", "skinColor"}]
      302 LOADK                            R15 K63 ["MakeupLook"]
      303 SETTABLEKS                       R15 R14 K59 ["lookType"]
      305 SETTABLEKS                       R3 R14 K11 ["skinColor"]
      307 MOVE                             R13 R14
      308 GETUPVAL                         R14 12
      309 GETTABLEKS                       R14 R14 K30 ["createElement"]
      311 GETUPVAL                         R15 14
      312 DUPTABLE                         R16 K43 [{"tag"}]
      313 LOADK                            R17 K34 ["size-full"]
      314 SETTABLEKS                       R17 R16 K31 ["tag"]
      316 DUPTABLE                         R17 K42 [{"StageContent"}]
      317 GETUPVAL                         R18 12
      318 GETTABLEKS                       R18 R18 K30 ["createElement"]
      320 GETUPVAL                         R19 17
      321 DUPTABLE                         R20 K68 [{"name", "description", "onNameChanged", "onDescriptionChanged", "lookPreviewInfo", "lookPreview"}]
      322 GETTABLEKS                       R21 R5 K13 ["name"]
      324 SETTABLEKS                       R21 R20 K13 ["name"]
      326 GETTABLEKS                       R21 R5 K14 ["description"]
      328 SETTABLEKS                       R21 R20 K14 ["description"]
      330 GETTABLEKS                       R21 R5 K69 ["setName"]
      332 SETTABLEKS                       R21 R20 K65 ["onNameChanged"]
      334 GETTABLEKS                       R21 R5 K70 ["setDescription"]
      336 SETTABLEKS                       R21 R20 K66 ["onDescriptionChanged"]
      338 SETTABLEKS                       R13 R20 K67 ["lookPreviewInfo"]
      340 GETTABLEKS                       R21 R8 K54 ["lookPreview"]
      342 SETTABLEKS                       R21 R20 K54 ["lookPreview"]
      344 CALL                             R18 2 1
      345 SETTABLEKS                       R18 R17 K41 ["StageContent"]
      347 CALL                             R14 3 1
      348 MOVE                             R12 R14
      349 JUMP                             ; [+31]
      350 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      352 JUMPIFNOTEQKS                    R13 K71 ["Success"] ; [+13]
      354 GETUPVAL                         R13 12
      355 GETTABLEKS                       R13 R13 K30 ["createElement"]
      357 GETUPVAL                         R14 18
      358 DUPTABLE                         R15 K72 [{"lookPreview"}]
      359 GETTABLEKS                       R16 R8 K54 ["lookPreview"]
      361 SETTABLEKS                       R16 R15 K54 ["lookPreview"]
      363 CALL                             R13 2 1
      364 MOVE                             R12 R13
      365 JUMP                             ; [+15]
      366 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      368 JUMPIFNOTEQKS                    R13 K73 ["Failure"] ; [+12]
      370 GETUPVAL                         R13 12
      371 GETTABLEKS                       R13 R13 K30 ["createElement"]
      373 GETUPVAL                         R14 19
      374 DUPTABLE                         R15 K75 [{"errorMessage"}]
      375 GETTABLEKS                       R16 R9 K76 ["lookCreationErrorMessage"]
      377 SETTABLEKS                       R16 R15 K74 ["errorMessage"]
      379 CALL                             R13 2 1
      380 MOVE                             R12 R13
      381 GETUPVAL                         R13 11
      382 GETTABLEKS                       R13 R13 K29 ["new"]
      384 CALL                             R13 0 1
      385 GETUPVAL                         R14 11
      386 GETTABLEKS                       R14 R14 K29 ["new"]
      388 CALL                             R14 0 1
      389 GETUPVAL                         R15 12
      390 GETTABLEKS                       R15 R15 K30 ["createElement"]
      392 GETUPVAL                         R16 14
      393 DUPTABLE                         R17 K43 [{"tag"}]
      394 LOADK                            R18 K77 ["col size-full"]
      395 SETTABLEKS                       R18 R17 K31 ["tag"]
      397 DUPTABLE                         R18 K81 [{"Header", "StageContentWrapper", "BottomBar"}]
      398 GETUPVAL                         R19 12
      399 GETTABLEKS                       R19 R19 K30 ["createElement"]
      401 GETUPVAL                         R20 14
      402 DUPTABLE                         R21 K82 [{"tag", "LayoutOrder"}]
      403 LOADK                            R22 K83 ["col align-x-left align-y-top size-full-0 auto-y gap-medium padding-large"]
      404 SETTABLEKS                       R22 R21 K31 ["tag"]
      406 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      408 CALL                             R22 1 1
      409 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      411 DUPTABLE                         R22 K88 [{"Title", "Description", "StageInfoBarWrapper", "ErrorBannerWrapper"}]
      412 GETUPVAL                         R23 12
      413 GETTABLEKS                       R23 R23 K30 ["createElement"]
      415 GETUPVAL                         R24 20
      416 DUPTABLE                         R25 K90 [{"Text", "tag", "LayoutOrder"}]
      417 LOADK                            R28 K91 ["LookComposerDialog"]
      418 GETUPVAL                         R30 21
      419 GETTABLEKS                       R31 R0 K0 ["dialogLookType"]
      421 GETTABLE                         R29 R30 R31
      422 GETTABLEKS                       R29 R29 K92 ["title"]
      424 NAMECALL                         R26 R2 K93 ["getText"]
      426 CALL                             R26 3 1
      427 SETTABLEKS                       R26 R25 K89 ["Text"]
      429 LOADK                            R26 K94 ["text-heading-small auto-xy content-default"]
      430 SETTABLEKS                       R26 R25 K31 ["tag"]
      432 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      434 CALL                             R26 1 1
      435 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      437 CALL                             R23 2 1
      438 SETTABLEKS                       R23 R22 K84 ["Title"]
      440 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      442 JUMPIFEQKS                       R24 K28 ["ConfirmItems"] ; [+5]
      444 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      446 JUMPIFNOTEQKS                    R24 K61 ["EditInfo"] ; [+28]
      448 GETUPVAL                         R23 12
      449 GETTABLEKS                       R23 R23 K30 ["createElement"]
      451 GETUPVAL                         R24 20
      452 DUPTABLE                         R25 K90 [{"Text", "tag", "LayoutOrder"}]
      453 LOADK                            R28 K91 ["LookComposerDialog"]
      454 GETUPVAL                         R30 21
      455 GETTABLEKS                       R31 R0 K0 ["dialogLookType"]
      457 GETTABLE                         R29 R30 R31
      458 GETTABLEKS                       R29 R29 K14 ["description"]
      460 NAMECALL                         R26 R2 K93 ["getText"]
      462 CALL                             R26 3 1
      463 SETTABLEKS                       R26 R25 K89 ["Text"]
      465 LOADK                            R26 K95 ["text-body-medium auto-xy content-default"]
      466 SETTABLEKS                       R26 R25 K31 ["tag"]
      468 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      470 CALL                             R26 1 1
      471 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      473 CALL                             R23 2 1
      474 JUMP                             ; [+1]
      475 LOADNIL                          R23
      476 SETTABLEKS                       R23 R22 K85 ["Description"]
      478 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      480 JUMPIFEQKS                       R24 K28 ["ConfirmItems"] ; [+5]
      482 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      484 JUMPIFNOTEQKS                    R24 K61 ["EditInfo"] ; [+29]
      486 GETUPVAL                         R23 12
      487 GETTABLEKS                       R23 R23 K30 ["createElement"]
      489 GETUPVAL                         R24 14
      490 DUPTABLE                         R25 K82 [{"tag", "LayoutOrder"}]
      491 LOADK                            R26 K96 ["size-full-0 auto-y padding-top-xlarge"]
      492 SETTABLEKS                       R26 R25 K31 ["tag"]
      494 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      496 CALL                             R26 1 1
      497 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      499 DUPTABLE                         R26 K98 [{"StageInfoBar"}]
      500 GETUPVAL                         R27 12
      501 GETTABLEKS                       R27 R27 K30 ["createElement"]
      503 GETUPVAL                         R28 22
      504 DUPTABLE                         R29 K99 [{"dialogStage"}]
      505 GETTABLEKS                       R30 R11 K27 ["dialogStage"]
      507 SETTABLEKS                       R30 R29 K27 ["dialogStage"]
      509 CALL                             R27 2 1
      510 SETTABLEKS                       R27 R26 K97 ["StageInfoBar"]
      512 CALL                             R23 3 1
      513 JUMP                             ; [+1]
      514 LOADNIL                          R23
      515 SETTABLEKS                       R23 R22 K86 ["StageInfoBarWrapper"]
      517 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      519 JUMPIFNOTEQKS                    R24 K28 ["ConfirmItems"] ; [+37]
      521 GETUPVAL                         R23 12
      522 GETTABLEKS                       R23 R23 K30 ["createElement"]
      524 GETUPVAL                         R24 14
      525 DUPTABLE                         R25 K82 [{"tag", "LayoutOrder"}]
      526 LOADK                            R26 K100 ["size-full-0 auto-y padding-top-medium"]
      527 SETTABLEKS                       R26 R25 K31 ["tag"]
      529 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      531 CALL                             R26 1 1
      532 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      534 DUPTABLE                         R26 K102 [{"ErrorBanner"}]
      535 GETUPVAL                         R27 12
      536 GETTABLEKS                       R27 R27 K30 ["createElement"]
      538 GETUPVAL                         R28 23
      539 DUPTABLE                         R29 K105 [{"errors", "hasBlockingError", "dismissMessage"}]
      540 GETTABLEKS                       R30 R10 K106 ["errorBannerMessages"]
      542 SETTABLEKS                       R30 R29 K103 ["errors"]
      544 GETTABLEKS                       R30 R10 K23 ["hasBlockingError"]
      546 SETTABLEKS                       R30 R29 K23 ["hasBlockingError"]
      548 GETTABLEKS                       R30 R10 K104 ["dismissMessage"]
      550 SETTABLEKS                       R30 R29 K104 ["dismissMessage"]
      552 CALL                             R27 2 1
      553 SETTABLEKS                       R27 R26 K101 ["ErrorBanner"]
      555 CALL                             R23 3 1
      556 JUMP                             ; [+1]
      557 LOADNIL                          R23
      558 SETTABLEKS                       R23 R22 K87 ["ErrorBannerWrapper"]
      560 CALL                             R19 3 1
      561 SETTABLEKS                       R19 R18 K78 ["Header"]
      563 GETUPVAL                         R19 12
      564 GETTABLEKS                       R19 R19 K30 ["createElement"]
      566 GETUPVAL                         R20 14
      567 DUPTABLE                         R21 K82 [{"tag", "LayoutOrder"}]
      568 LOADK                            R22 K107 ["size-full-0 grow"]
      569 SETTABLEKS                       R22 R21 K31 ["tag"]
      571 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      573 CALL                             R22 1 1
      574 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      576 DUPTABLE                         R22 K42 [{"StageContent"}]
      577 SETTABLEKS                       R12 R22 K41 ["StageContent"]
      579 CALL                             R19 3 1
      580 SETTABLEKS                       R19 R18 K79 ["StageContentWrapper"]
      582 GETUPVAL                         R19 12
      583 GETTABLEKS                       R19 R19 K30 ["createElement"]
      585 GETUPVAL                         R20 24
      586 DUPTABLE                         R21 K112 [{"LayoutOrder", "onForward", "onBack", "dialogStage", "isForwardDisabled", "isBackDisabled"}]
      587 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      589 CALL                             R22 1 1
      590 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      592 GETTABLEKS                       R22 R11 K108 ["onForward"]
      594 SETTABLEKS                       R22 R21 K108 ["onForward"]
      596 GETTABLEKS                       R22 R11 K109 ["onBack"]
      598 SETTABLEKS                       R22 R21 K109 ["onBack"]
      600 GETTABLEKS                       R22 R11 K27 ["dialogStage"]
      602 SETTABLEKS                       R22 R21 K27 ["dialogStage"]
      604 GETTABLEKS                       R22 R11 K110 ["isForwardDisabled"]
      606 SETTABLEKS                       R22 R21 K110 ["isForwardDisabled"]
      608 GETTABLEKS                       R22 R11 K111 ["isBackDisabled"]
      610 SETTABLEKS                       R22 R21 K111 ["isBackDisabled"]
      612 CALL                             R19 2 1
      613 SETTABLEKS                       R19 R18 K80 ["BottomBar"]
      615 CALL                             R15 3 1
      616 GETUPVAL                         R16 12
      617 GETTABLEKS                       R16 R16 K113 ["useState"]
      619 LOADNIL                          R17
      620 CALL                             R16 1 2
      621 GETUPVAL                         R18 12
      622 GETTABLEKS                       R18 R18 K30 ["createElement"]
      624 GETUPVAL                         R19 25
      625 GETTABLEKS                       R19 R19 K114 ["Dialog"]
      627 DUPTABLE                         R20 K122 [{"Title", "MinContentSize", "Size", "MinSize", "Modal", "OnClose", "Enabled", "Resizable"}]
      628 LOADK                            R21 K123 [""]
      629 SETTABLEKS                       R21 R20 K84 ["Title"]
      631 GETIMPORT                        R21 K125 [Vector2.new]
      633 LOADN                            R22 32
      634 LOADN                            R23 88
      635 CALL                             R21 2 1
      636 SETTABLEKS                       R21 R20 K115 ["MinContentSize"]
      638 GETIMPORT                        R21 K125 [Vector2.new]
      640 LOADN                            R22 32
      641 LOADN                            R23 88
      642 CALL                             R21 2 1
      643 SETTABLEKS                       R21 R20 K116 ["Size"]
      645 GETIMPORT                        R21 K125 [Vector2.new]
      647 LOADN                            R22 32
      648 LOADN                            R23 88
      649 CALL                             R21 2 1
      650 SETTABLEKS                       R21 R20 K117 ["MinSize"]
      652 LOADB                            R21 1
      653 SETTABLEKS                       R21 R20 K118 ["Modal"]
      655 GETTABLEKS                       R21 R0 K25 ["onClose"]
      657 SETTABLEKS                       R21 R20 K119 ["OnClose"]
      659 LOADB                            R21 1
      660 SETTABLEKS                       R21 R20 K120 ["Enabled"]
      662 LOADB                            R21 1
      663 SETTABLEKS                       R21 R20 K121 ["Resizable"]
      665 DUPTABLE                         R21 K127 [{"OverlayProviderWrapper"}]
      666 GETUPVAL                         R22 12
      667 GETTABLEKS                       R22 R22 K30 ["createElement"]
      669 GETUPVAL                         R23 26
      670 DUPTABLE                         R24 K129 [{"gui"}]
      671 SETTABLEKS                       R16 R24 K128 ["gui"]
      673 DUPTABLE                         R25 K133 [{"StyleLink", "MainContainer", "Overlay"}]
      674 GETUPVAL                         R26 12
      675 GETTABLEKS                       R26 R26 K30 ["createElement"]
      677 LOADK                            R27 K130 ["StyleLink"]
      678 DUPTABLE                         R28 K135 [{"StyleSheet"}]
      679 SETTABLEKS                       R1 R28 K134 ["StyleSheet"]
      681 CALL                             R26 2 1
      682 SETTABLEKS                       R26 R25 K130 ["StyleLink"]
      684 SETTABLEKS                       R15 R25 K131 ["MainContainer"]
      686 GETUPVAL                         R26 12
      687 GETTABLEKS                       R26 R26 K30 ["createElement"]
      689 GETUPVAL                         R27 14
      690 DUPTABLE                         R28 K138 [{"tag", "ref", "ZIndex"}]
      691 LOADK                            R29 K34 ["size-full"]
      692 SETTABLEKS                       R29 R28 K31 ["tag"]
      694 SETTABLEKS                       R17 R28 K136 ["ref"]
      696 LOADN                            R29 100
      697 SETTABLEKS                       R29 R28 K137 ["ZIndex"]
      699 CALL                             R26 2 1
      700 SETTABLEKS                       R26 R25 K132 ["Overlay"]
      702 CALL                             R22 3 1
      703 SETTABLEKS                       R22 R21 K126 ["OverlayProviderWrapper"]
      705 CALL                             R18 3 -1
      706 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["ScrollView"]
       27 GETTABLEKS                       R6 R2 K12 ["OverlayProvider"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R0 K6 ["Packages"]
       33 GETTABLEKS                       R8 R8 K13 ["Framework"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R8 R7 K14 ["UI"]
       38 GETTABLEKS                       R9 R7 K15 ["ContextServices"]
       40 GETTABLEKS                       R9 R9 K16 ["Localization"]
       42 GETTABLEKS                       R10 R7 K15 ["ContextServices"]
       44 GETTABLEKS                       R10 R10 K17 ["Design"]
       46 GETTABLEKS                       R11 R7 K18 ["Util"]
       48 GETTABLEKS                       R11 R11 K19 ["LayoutOrderIterator"]
       50 GETIMPORT                        R12 K5 [require]
       52 GETTABLEKS                       R13 R0 K20 ["Src"]
       54 GETTABLEKS                       R13 R13 K21 ["Types"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K5 [require]
       59 GETIMPORT                        R14 K1 [script]
       61 GETTABLEKS                       R14 R14 K22 ["StageInfoBar"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETIMPORT                        R15 K1 [script]
       68 GETTABLEKS                       R15 R15 K23 ["ErrorBanner"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K5 [require]
       73 GETIMPORT                        R16 K1 [script]
       75 GETTABLEKS                       R16 R16 K24 ["InfoEntryContainer"]
       77 CALL                             R15 1 1
       78 GETIMPORT                        R16 K5 [require]
       80 GETIMPORT                        R17 K1 [script]
       82 GETTABLEKS                       R17 R17 K25 ["LookDetailsList"]
       84 CALL                             R16 1 1
       85 GETIMPORT                        R17 K5 [require]
       87 GETIMPORT                        R18 K1 [script]
       89 GETTABLEKS                       R18 R18 K26 ["LookComposerBottomBar"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K5 [require]
       94 GETIMPORT                        R19 K1 [script]
       96 GETTABLEKS                       R19 R19 K27 ["SuccessPage"]
       98 CALL                             R18 1 1
       99 GETIMPORT                        R19 K5 [require]
      101 GETIMPORT                        R20 K1 [script]
      103 GETTABLEKS                       R20 R20 K28 ["FailurePage"]
      105 CALL                             R19 1 1
      106 GETIMPORT                        R20 K5 [require]
      108 GETIMPORT                        R21 K1 [script]
      110 GETTABLEKS                       R21 R21 K29 ["EditInfoPage"]
      112 CALL                             R20 1 1
      113 GETIMPORT                        R21 K5 [require]
      115 GETTABLEKS                       R22 R0 K20 ["Src"]
      117 GETTABLEKS                       R22 R22 K30 ["Components"]
      119 GETTABLEKS                       R22 R22 K31 ["LookComposerDialog"]
      121 GETTABLEKS                       R22 R22 K32 ["useLookSkinColor"]
      123 CALL                             R21 1 1
      124 GETIMPORT                        R22 K5 [require]
      126 GETTABLEKS                       R23 R0 K20 ["Src"]
      128 GETTABLEKS                       R23 R23 K30 ["Components"]
      130 GETTABLEKS                       R23 R23 K31 ["LookComposerDialog"]
      132 GETTABLEKS                       R23 R23 K33 ["useLookMetadata"]
      134 CALL                             R22 1 1
      135 GETIMPORT                        R23 K5 [require]
      137 GETTABLEKS                       R24 R0 K20 ["Src"]
      139 GETTABLEKS                       R24 R24 K30 ["Components"]
      141 GETTABLEKS                       R24 R24 K31 ["LookComposerDialog"]
      143 GETTABLEKS                       R24 R24 K34 ["useLookCreator"]
      145 CALL                             R23 1 1
      146 GETIMPORT                        R24 K5 [require]
      148 GETTABLEKS                       R25 R0 K20 ["Src"]
      150 GETTABLEKS                       R25 R25 K30 ["Components"]
      152 GETTABLEKS                       R25 R25 K31 ["LookComposerDialog"]
      154 GETTABLEKS                       R25 R25 K35 ["useLookDialogItems"]
      156 CALL                             R24 1 1
      157 GETIMPORT                        R25 K5 [require]
      159 GETTABLEKS                       R26 R0 K20 ["Src"]
      161 GETTABLEKS                       R26 R26 K30 ["Components"]
      163 GETTABLEKS                       R26 R26 K31 ["LookComposerDialog"]
      165 GETTABLEKS                       R26 R26 K36 ["useLookPreview"]
      167 CALL                             R25 1 1
      168 GETIMPORT                        R26 K5 [require]
      170 GETTABLEKS                       R27 R0 K20 ["Src"]
      172 GETTABLEKS                       R27 R27 K30 ["Components"]
      174 GETTABLEKS                       R27 R27 K31 ["LookComposerDialog"]
      176 GETTABLEKS                       R27 R27 K37 ["useLookErrors"]
      178 CALL                             R26 1 1
      179 GETIMPORT                        R27 K5 [require]
      181 GETTABLEKS                       R28 R0 K20 ["Src"]
      183 GETTABLEKS                       R28 R28 K30 ["Components"]
      185 GETTABLEKS                       R28 R28 K31 ["LookComposerDialog"]
      187 GETTABLEKS                       R28 R28 K38 ["useAsyncLookCreationCalls"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K5 [require]
      192 GETTABLEKS                       R29 R0 K20 ["Src"]
      194 GETTABLEKS                       R29 R29 K30 ["Components"]
      196 GETTABLEKS                       R29 R29 K31 ["LookComposerDialog"]
      198 GETTABLEKS                       R29 R29 K39 ["useLookDialogStageManager"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETTABLEKS                       R30 R0 K20 ["Src"]
      205 GETTABLEKS                       R30 R30 K40 ["Flags"]
      207 GETTABLEKS                       R30 R30 K41 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      209 CALL                             R29 1 1
      210 DUPTABLE                         R30 K44 [{"AvatarLook", "MakeupLook"}]
      211 DUPTABLE                         R31 K47 [{"title", "description"}]
      212 LOADK                            R32 K48 ["CreateAnAvatarLook"]
      213 SETTABLEKS                       R32 R31 K45 ["title"]
      215 LOADK                            R32 K49 ["CreateAnAvatarLookDescription"]
      216 SETTABLEKS                       R32 R31 K46 ["description"]
      218 SETTABLEKS                       R31 R30 K42 ["AvatarLook"]
      220 DUPTABLE                         R31 K47 [{"title", "description"}]
      221 LOADK                            R32 K50 ["CreateAMakeupLook"]
      222 SETTABLEKS                       R32 R31 K45 ["title"]
      224 LOADK                            R32 K51 ["CreateAMakeupLookDescription"]
      225 SETTABLEKS                       R32 R31 K46 ["description"]
      227 SETTABLEKS                       R31 R30 K43 ["MakeupLook"]
      229 DUPCLOSURE                       R31 K52 [PROTO_0]
      230 CAPTURE                          VAL R29
      231 CAPTURE                          VAL R10
      232 CAPTURE                          VAL R9
      233 CAPTURE                          VAL R21
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R24
      237 CAPTURE                          VAL R25
      238 CAPTURE                          VAL R27
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R28
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R1
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R3
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R16
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R18
      249 CAPTURE                          VAL R19
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R30
      252 CAPTURE                          VAL R13
      253 CAPTURE                          VAL R14
      254 CAPTURE                          VAL R17
      255 CAPTURE                          VAL R8
      256 CAPTURE                          VAL R6
      257 RETURN                           R31 1
