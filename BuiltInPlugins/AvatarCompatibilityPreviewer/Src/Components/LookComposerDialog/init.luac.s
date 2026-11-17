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
       22 GETUPVAL                         R3 3
       23 CALL                             R3 0 1
       24 GETUPVAL                         R4 4
       25 CALL                             R4 0 1
       26 GETUPVAL                         R5 5
       27 DUPTABLE                         R6 K9 [{"equippedItems", "dialogLookType", "selectedCreatorId"}]
       28 GETTABLEKS                       R7 R0 K7 ["equippedItems"]
       30 SETTABLEKS                       R7 R6 K7 ["equippedItems"]
       32 GETTABLEKS                       R7 R0 K0 ["dialogLookType"]
       34 SETTABLEKS                       R7 R6 K0 ["dialogLookType"]
       36 GETTABLEKS                       R7 R4 K8 ["selectedCreatorId"]
       38 SETTABLEKS                       R7 R6 K8 ["selectedCreatorId"]
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 6
       42 GETTABLEKS                       R7 R0 K7 ["equippedItems"]
       44 GETTABLEKS                       R8 R5 K10 ["dialogItems"]
       46 GETTABLEKS                       R9 R0 K0 ["dialogLookType"]
       48 CALL                             R6 3 2
       49 GETUPVAL                         R8 7
       50 DUPTABLE                         R9 K13 [{"dialogItems", "dialogLookType", "skinColor", "bodyScale"}]
       51 GETTABLEKS                       R10 R5 K10 ["dialogItems"]
       53 SETTABLEKS                       R10 R9 K10 ["dialogItems"]
       55 GETTABLEKS                       R10 R0 K0 ["dialogLookType"]
       57 SETTABLEKS                       R10 R9 K0 ["dialogLookType"]
       59 SETTABLEKS                       R6 R9 K11 ["skinColor"]
       61 GETTABLEKS                       R10 R0 K12 ["bodyScale"]
       63 SETTABLEKS                       R10 R9 K12 ["bodyScale"]
       65 CALL                             R8 1 1
       66 GETUPVAL                         R9 8
       67 DUPTABLE                         R10 K16 [{"dialogItems", "dialogLookType", "skinColor", "selectedCreatorId", "name", "description", "bodyScale"}]
       68 GETTABLEKS                       R11 R5 K10 ["dialogItems"]
       70 SETTABLEKS                       R11 R10 K10 ["dialogItems"]
       72 GETTABLEKS                       R11 R0 K0 ["dialogLookType"]
       74 SETTABLEKS                       R11 R10 K0 ["dialogLookType"]
       76 SETTABLEKS                       R6 R10 K11 ["skinColor"]
       78 GETTABLEKS                       R11 R4 K8 ["selectedCreatorId"]
       80 SETTABLEKS                       R11 R10 K8 ["selectedCreatorId"]
       82 GETTABLEKS                       R11 R3 K14 ["name"]
       84 SETTABLEKS                       R11 R10 K14 ["name"]
       86 GETTABLEKS                       R11 R3 K15 ["description"]
       88 SETTABLEKS                       R11 R10 K15 ["description"]
       90 GETTABLEKS                       R11 R0 K12 ["bodyScale"]
       92 SETTABLEKS                       R11 R10 K12 ["bodyScale"]
       94 CALL                             R9 1 1
       95 GETUPVAL                         R10 9
       96 DUPTABLE                         R11 K20 [{"previewErrorMessages", "validationErrorMessages", "dialogItems", "dialogLookType", "isDialogItemsInitialized", "selectedCreatorId"}]
       97 GETTABLEKS                       R12 R5 K17 ["previewErrorMessages"]
       99 SETTABLEKS                       R12 R11 K17 ["previewErrorMessages"]
      101 GETTABLEKS                       R12 R9 K21 ["lookValidationErrors"]
      103 SETTABLEKS                       R12 R11 K18 ["validationErrorMessages"]
      105 GETTABLEKS                       R12 R5 K10 ["dialogItems"]
      107 SETTABLEKS                       R12 R11 K10 ["dialogItems"]
      109 GETTABLEKS                       R12 R0 K0 ["dialogLookType"]
      111 SETTABLEKS                       R12 R11 K0 ["dialogLookType"]
      113 GETTABLEKS                       R12 R5 K19 ["isDialogItemsInitialized"]
      115 SETTABLEKS                       R12 R11 K19 ["isDialogItemsInitialized"]
      117 GETUPVAL                         R13 0
      118 CALL                             R13 0 1
      119 JUMPIFNOT                        R13 ; [+3]
      120 GETTABLEKS                       R12 R4 K8 ["selectedCreatorId"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R12
      124 SETTABLEKS                       R12 R11 K8 ["selectedCreatorId"]
      126 CALL                             R10 1 1
      127 GETUPVAL                         R11 10
      128 DUPTABLE                         R12 K26 [{"invalidMetadata", "hasBlockingError", "lookAsyncCallsState", "onClose"}]
      129 GETTABLEKS                       R13 R3 K22 ["invalidMetadata"]
      131 SETTABLEKS                       R13 R12 K22 ["invalidMetadata"]
      133 GETTABLEKS                       R13 R10 K23 ["hasBlockingError"]
      135 SETTABLEKS                       R13 R12 K23 ["hasBlockingError"]
      137 SETTABLEKS                       R9 R12 K24 ["lookAsyncCallsState"]
      139 GETTABLEKS                       R13 R0 K25 ["onClose"]
      141 SETTABLEKS                       R13 R12 K25 ["onClose"]
      143 CALL                             R11 1 1
      144 LOADNIL                          R12
      145 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      147 JUMPIFNOTEQKS                    R13 K28 ["ConfirmItems"] ; [+119]
      149 GETUPVAL                         R13 11
      150 GETTABLEKS                       R13 R13 K29 ["new"]
      152 CALL                             R13 0 1
      153 GETUPVAL                         R14 12
      154 GETTABLEKS                       R14 R14 K30 ["createElement"]
      156 GETUPVAL                         R15 13
      157 DUPTABLE                         R16 K34 [{["tag"] = "size-full", ["scroll"]}]
      158 DUPTABLE                         R17 K36 [{"AutomaticCanvasSize"}]
      159 GETIMPORT                        R18 K40 [Enum.AutomaticSize.Y]
      161 SETTABLEKS                       R18 R17 K35 ["AutomaticCanvasSize"]
      163 SETTABLEKS                       R17 R16 K33 ["scroll"]
      165 DUPTABLE                         R17 K42 [{"StageContent"}]
      166 GETUPVAL                         R18 12
      167 GETTABLEKS                       R18 R18 K30 ["createElement"]
      169 GETUPVAL                         R19 14
      170 DUPTABLE                         R20 K44 [{["tag"] = "col gap-medium size-full-0 auto-y padding-large"}]
      171 DUPTABLE                         R21 K47 [{"InfoEntry", "LookDetails"}]
      172 GETUPVAL                         R22 12
      173 GETTABLEKS                       R22 R22 K30 ["createElement"]
      175 GETUPVAL                         R23 15
      176 DUPTABLE                         R24 K55 [{"LayoutOrder", "selectedCreatorId", "creators", "onCreatorChanged", "isAvatarLook", "skinColor", "onSkinColorChanged", "bodyColor", "lookPreview", "dialogItems"}]
      177 NAMECALL                         R25 R13 K56 ["getNextOrder"]
      179 CALL                             R25 1 1
      180 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      182 GETTABLEKS                       R25 R4 K8 ["selectedCreatorId"]
      184 SETTABLEKS                       R25 R24 K8 ["selectedCreatorId"]
      186 GETTABLEKS                       R25 R4 K49 ["creators"]
      188 SETTABLEKS                       R25 R24 K49 ["creators"]
      190 GETTABLEKS                       R25 R4 K57 ["setSelectedCreatorId"]
      192 SETTABLEKS                       R25 R24 K50 ["onCreatorChanged"]
      194 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      196 JUMPIFEQKS                       R26 K1 ["AvatarLook"] ; [+2]
      198 LOADB                            R25 0 +1
      199 LOADB                            R25 1
      200 SETTABLEKS                       R25 R24 K51 ["isAvatarLook"]
      202 SETTABLEKS                       R6 R24 K11 ["skinColor"]
      204 SETTABLEKS                       R7 R24 K52 ["onSkinColorChanged"]
      206 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      208 JUMPIFNOTEQKS                    R26 K1 ["AvatarLook"] ; [+3]
      210 MOVE                             R25 R6
      211 JUMP                             ; [+1]
      212 LOADNIL                          R25
      213 SETTABLEKS                       R25 R24 K53 ["bodyColor"]
      215 GETTABLEKS                       R25 R8 K54 ["lookPreview"]
      217 SETTABLEKS                       R25 R24 K54 ["lookPreview"]
      219 GETTABLEKS                       R25 R5 K10 ["dialogItems"]
      221 SETTABLEKS                       R25 R24 K10 ["dialogItems"]
      223 CALL                             R22 2 1
      224 SETTABLEKS                       R22 R21 K45 ["InfoEntry"]
      226 GETUPVAL                         R22 12
      227 GETTABLEKS                       R22 R22 K30 ["createElement"]
      229 GETUPVAL                         R23 16
      230 DUPTABLE                         R24 K60 [{"LayoutOrder", "dialogItems", "setDialogItemRowState", "isAvatarLook", "skinColor", "lookType"}]
      231 NAMECALL                         R25 R13 K56 ["getNextOrder"]
      233 CALL                             R25 1 1
      234 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      236 GETTABLEKS                       R25 R5 K10 ["dialogItems"]
      238 SETTABLEKS                       R25 R24 K10 ["dialogItems"]
      240 GETTABLEKS                       R25 R5 K58 ["setDialogItemRowState"]
      242 SETTABLEKS                       R25 R24 K58 ["setDialogItemRowState"]
      244 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      246 JUMPIFEQKS                       R26 K1 ["AvatarLook"] ; [+2]
      248 LOADB                            R25 0 +1
      249 LOADB                            R25 1
      250 SETTABLEKS                       R25 R24 K51 ["isAvatarLook"]
      252 SETTABLEKS                       R6 R24 K11 ["skinColor"]
      254 GETTABLEKS                       R25 R0 K0 ["dialogLookType"]
      256 SETTABLEKS                       R25 R24 K59 ["lookType"]
      258 CALL                             R22 2 1
      259 SETTABLEKS                       R22 R21 K46 ["LookDetails"]
      261 CALL                             R18 3 1
      262 SETTABLEKS                       R18 R17 K41 ["StageContent"]
      264 CALL                             R14 3 1
      265 MOVE                             R12 R14
      266 JUMP                             ; [+101]
      267 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      269 JUMPIFNOTEQKS                    R13 K61 ["EditInfo"] ; [+67]
      271 LOADNIL                          R13
      272 GETTABLEKS                       R14 R0 K0 ["dialogLookType"]
      274 JUMPIFNOTEQKS                    R14 K1 ["AvatarLook"] ; [+6]
      276 DUPTABLE                         R14 K62 [{["lookType"] = "AvatarLook", ["bodyColor"]}]
      277 SETTABLEKS                       R6 R14 K53 ["bodyColor"]
      279 MOVE                             R13 R14
      280 JUMP                             ; [+8]
      281 GETTABLEKS                       R14 R0 K0 ["dialogLookType"]
      283 JUMPIFNOTEQKS                    R14 K63 ["MakeupLook"] ; [+5]
      285 DUPTABLE                         R14 K64 [{["lookType"] = "MakeupLook", ["skinColor"]}]
      286 SETTABLEKS                       R6 R14 K11 ["skinColor"]
      288 MOVE                             R13 R14
      289 GETUPVAL                         R14 12
      290 GETTABLEKS                       R14 R14 K30 ["createElement"]
      292 GETUPVAL                         R15 14
      293 DUPTABLE                         R16 K65 [{["tag"] = "size-full"}]
      294 DUPTABLE                         R17 K42 [{"StageContent"}]
      295 GETUPVAL                         R18 12
      296 GETTABLEKS                       R18 R18 K30 ["createElement"]
      298 GETUPVAL                         R19 17
      299 DUPTABLE                         R20 K70 [{"name", "description", "onNameChanged", "onDescriptionChanged", "lookPreviewInfo", "lookPreview", "eligibilityChecks"}]
      300 GETTABLEKS                       R21 R3 K14 ["name"]
      302 SETTABLEKS                       R21 R20 K14 ["name"]
      304 GETTABLEKS                       R21 R3 K15 ["description"]
      306 SETTABLEKS                       R21 R20 K15 ["description"]
      308 GETTABLEKS                       R21 R3 K71 ["setName"]
      310 SETTABLEKS                       R21 R20 K66 ["onNameChanged"]
      312 GETTABLEKS                       R21 R3 K72 ["setDescription"]
      314 SETTABLEKS                       R21 R20 K67 ["onDescriptionChanged"]
      316 SETTABLEKS                       R13 R20 K68 ["lookPreviewInfo"]
      318 GETTABLEKS                       R21 R8 K54 ["lookPreview"]
      320 SETTABLEKS                       R21 R20 K54 ["lookPreview"]
      322 GETUPVAL                         R22 18
      323 CALL                             R22 0 1
      324 JUMPIFNOT                        R22 ; [+3]
      325 GETTABLEKS                       R21 R9 K69 ["eligibilityChecks"]
      327 JUMP                             ; [+1]
      328 LOADNIL                          R21
      329 SETTABLEKS                       R21 R20 K69 ["eligibilityChecks"]
      331 CALL                             R18 2 1
      332 SETTABLEKS                       R18 R17 K41 ["StageContent"]
      334 CALL                             R14 3 1
      335 MOVE                             R12 R14
      336 JUMP                             ; [+31]
      337 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      339 JUMPIFNOTEQKS                    R13 K73 ["Success"] ; [+13]
      341 GETUPVAL                         R13 12
      342 GETTABLEKS                       R13 R13 K30 ["createElement"]
      344 GETUPVAL                         R14 19
      345 DUPTABLE                         R15 K74 [{"lookPreview"}]
      346 GETTABLEKS                       R16 R8 K54 ["lookPreview"]
      348 SETTABLEKS                       R16 R15 K54 ["lookPreview"]
      350 CALL                             R13 2 1
      351 MOVE                             R12 R13
      352 JUMP                             ; [+15]
      353 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      355 JUMPIFNOTEQKS                    R13 K75 ["Failure"] ; [+12]
      357 GETUPVAL                         R13 12
      358 GETTABLEKS                       R13 R13 K30 ["createElement"]
      360 GETUPVAL                         R14 20
      361 DUPTABLE                         R15 K77 [{"errorMessage"}]
      362 GETTABLEKS                       R16 R9 K78 ["lookCreationErrorMessage"]
      364 SETTABLEKS                       R16 R15 K76 ["errorMessage"]
      366 CALL                             R13 2 1
      367 MOVE                             R12 R13
      368 GETUPVAL                         R13 11
      369 GETTABLEKS                       R13 R13 K29 ["new"]
      371 CALL                             R13 0 1
      372 GETUPVAL                         R14 11
      373 GETTABLEKS                       R14 R14 K29 ["new"]
      375 CALL                             R14 0 1
      376 GETUPVAL                         R15 12
      377 GETTABLEKS                       R15 R15 K30 ["createElement"]
      379 GETUPVAL                         R16 14
      380 DUPTABLE                         R17 K80 [{["tag"] = "col size-full"}]
      381 DUPTABLE                         R18 K84 [{"Header", "StageContentWrapper", "BottomBar"}]
      382 GETUPVAL                         R19 12
      383 GETTABLEKS                       R19 R19 K30 ["createElement"]
      385 GETUPVAL                         R20 14
      386 DUPTABLE                         R21 K86 [{["tag"] = "col align-x-left align-y-top gap-medium size-full-0 auto-y padding-large", ["LayoutOrder"]}]
      387 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      389 CALL                             R22 1 1
      390 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      392 DUPTABLE                         R22 K91 [{"Title", "Description", "StageInfoBarWrapper", "ErrorBannerWrapper"}]
      393 GETUPVAL                         R23 12
      394 GETTABLEKS                       R23 R23 K30 ["createElement"]
      396 GETUPVAL                         R24 21
      397 DUPTABLE                         R25 K94 [{["Text"], ["tag"] = "auto-xy text-heading-small content-default", ["LayoutOrder"]}]
      398 LOADK                            R28 K95 ["LookComposerDialog"]
      399 GETUPVAL                         R30 22
      400 GETTABLEKS                       R31 R0 K0 ["dialogLookType"]
      402 GETTABLE                         R29 R30 R31
      403 GETTABLEKS                       R29 R29 K96 ["title"]
      405 NAMECALL                         R26 R2 K97 ["getText"]
      407 CALL                             R26 3 1
      408 SETTABLEKS                       R26 R25 K92 ["Text"]
      410 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      412 CALL                             R26 1 1
      413 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      415 CALL                             R23 2 1
      416 SETTABLEKS                       R23 R22 K87 ["Title"]
      418 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      420 JUMPIFEQKS                       R24 K28 ["ConfirmItems"] ; [+5]
      422 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      424 JUMPIFNOTEQKS                    R24 K61 ["EditInfo"] ; [+25]
      426 GETUPVAL                         R23 12
      427 GETTABLEKS                       R23 R23 K30 ["createElement"]
      429 GETUPVAL                         R24 21
      430 DUPTABLE                         R25 K99 [{["Text"], ["tag"] = "auto-xy text-body-medium content-default", ["LayoutOrder"]}]
      431 LOADK                            R28 K95 ["LookComposerDialog"]
      432 GETUPVAL                         R30 22
      433 GETTABLEKS                       R31 R0 K0 ["dialogLookType"]
      435 GETTABLE                         R29 R30 R31
      436 GETTABLEKS                       R29 R29 K15 ["description"]
      438 NAMECALL                         R26 R2 K97 ["getText"]
      440 CALL                             R26 3 1
      441 SETTABLEKS                       R26 R25 K92 ["Text"]
      443 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      445 CALL                             R26 1 1
      446 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      448 CALL                             R23 2 1
      449 JUMP                             ; [+1]
      450 LOADNIL                          R23
      451 SETTABLEKS                       R23 R22 K88 ["Description"]
      453 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      455 JUMPIFEQKS                       R24 K28 ["ConfirmItems"] ; [+5]
      457 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      459 JUMPIFNOTEQKS                    R24 K61 ["EditInfo"] ; [+26]
      461 GETUPVAL                         R23 12
      462 GETTABLEKS                       R23 R23 K30 ["createElement"]
      464 GETUPVAL                         R24 14
      465 DUPTABLE                         R25 K101 [{["tag"] = "size-full-0 auto-y padding-top-xlarge", ["LayoutOrder"]}]
      466 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      468 CALL                             R26 1 1
      469 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      471 DUPTABLE                         R26 K103 [{"StageInfoBar"}]
      472 GETUPVAL                         R27 12
      473 GETTABLEKS                       R27 R27 K30 ["createElement"]
      475 GETUPVAL                         R28 23
      476 DUPTABLE                         R29 K104 [{"dialogStage"}]
      477 GETTABLEKS                       R30 R11 K27 ["dialogStage"]
      479 SETTABLEKS                       R30 R29 K27 ["dialogStage"]
      481 CALL                             R27 2 1
      482 SETTABLEKS                       R27 R26 K102 ["StageInfoBar"]
      484 CALL                             R23 3 1
      485 JUMP                             ; [+1]
      486 LOADNIL                          R23
      487 SETTABLEKS                       R23 R22 K89 ["StageInfoBarWrapper"]
      489 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      491 JUMPIFNOTEQKS                    R24 K28 ["ConfirmItems"] ; [+34]
      493 GETUPVAL                         R23 12
      494 GETTABLEKS                       R23 R23 K30 ["createElement"]
      496 GETUPVAL                         R24 14
      497 DUPTABLE                         R25 K106 [{["tag"] = "size-full-0 auto-y padding-top-medium", ["LayoutOrder"]}]
      498 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      500 CALL                             R26 1 1
      501 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      503 DUPTABLE                         R26 K108 [{"ErrorBanner"}]
      504 GETUPVAL                         R27 12
      505 GETTABLEKS                       R27 R27 K30 ["createElement"]
      507 GETUPVAL                         R28 24
      508 DUPTABLE                         R29 K111 [{"errors", "hasBlockingError", "dismissMessage"}]
      509 GETTABLEKS                       R30 R10 K112 ["errorBannerMessages"]
      511 SETTABLEKS                       R30 R29 K109 ["errors"]
      513 GETTABLEKS                       R30 R10 K23 ["hasBlockingError"]
      515 SETTABLEKS                       R30 R29 K23 ["hasBlockingError"]
      517 GETTABLEKS                       R30 R10 K110 ["dismissMessage"]
      519 SETTABLEKS                       R30 R29 K110 ["dismissMessage"]
      521 CALL                             R27 2 1
      522 SETTABLEKS                       R27 R26 K107 ["ErrorBanner"]
      524 CALL                             R23 3 1
      525 JUMP                             ; [+1]
      526 LOADNIL                          R23
      527 SETTABLEKS                       R23 R22 K90 ["ErrorBannerWrapper"]
      529 CALL                             R19 3 1
      530 SETTABLEKS                       R19 R18 K81 ["Header"]
      532 GETUPVAL                         R19 12
      533 GETTABLEKS                       R19 R19 K30 ["createElement"]
      535 GETUPVAL                         R20 14
      536 DUPTABLE                         R21 K114 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
      537 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      539 CALL                             R22 1 1
      540 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      542 DUPTABLE                         R22 K42 [{"StageContent"}]
      543 SETTABLEKS                       R12 R22 K41 ["StageContent"]
      545 CALL                             R19 3 1
      546 SETTABLEKS                       R19 R18 K82 ["StageContentWrapper"]
      548 GETUPVAL                         R19 12
      549 GETTABLEKS                       R19 R19 K30 ["createElement"]
      551 GETUPVAL                         R20 25
      552 DUPTABLE                         R21 K119 [{"LayoutOrder", "onForward", "onBack", "dialogStage", "isForwardDisabled", "isBackDisabled"}]
      553 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      555 CALL                             R22 1 1
      556 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      558 GETTABLEKS                       R22 R11 K115 ["onForward"]
      560 SETTABLEKS                       R22 R21 K115 ["onForward"]
      562 GETTABLEKS                       R22 R11 K116 ["onBack"]
      564 SETTABLEKS                       R22 R21 K116 ["onBack"]
      566 GETTABLEKS                       R22 R11 K27 ["dialogStage"]
      568 SETTABLEKS                       R22 R21 K27 ["dialogStage"]
      570 GETTABLEKS                       R22 R11 K117 ["isForwardDisabled"]
      572 SETTABLEKS                       R22 R21 K117 ["isForwardDisabled"]
      574 GETTABLEKS                       R22 R11 K118 ["isBackDisabled"]
      576 SETTABLEKS                       R22 R21 K118 ["isBackDisabled"]
      578 CALL                             R19 2 1
      579 SETTABLEKS                       R19 R18 K83 ["BottomBar"]
      581 CALL                             R15 3 1
      582 GETUPVAL                         R16 12
      583 GETTABLEKS                       R16 R16 K120 ["useState"]
      585 LOADNIL                          R17
      586 CALL                             R16 1 2
      587 GETUPVAL                         R18 12
      588 GETTABLEKS                       R18 R18 K30 ["createElement"]
      590 GETUPVAL                         R19 26
      591 GETTABLEKS                       R19 R19 K121 ["Dialog"]
      593 DUPTABLE                         R20 K132 [{["Title"] = "", ["MinContentSize"], ["Size"], ["MinSize"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True, ["Resizable"] = True, ["PluginDesign"]}]
      594 GETIMPORT                        R21 K134 [Vector2.new]
      596 LOADN                            R22 800
      597 LOADN                            R23 600
      598 CALL                             R21 2 1
      599 SETTABLEKS                       R21 R20 K123 ["MinContentSize"]
      601 GETIMPORT                        R21 K134 [Vector2.new]
      603 LOADN                            R22 800
      604 GETUPVAL                         R24 27
      605 CALL                             R24 0 1
      606 JUMPIFNOT                        R24 ; [+2]
      607 LOADN                            R23 750
      608 JUMP                             ; [+1]
      609 LOADN                            R23 600
      610 CALL                             R21 2 1
      611 SETTABLEKS                       R21 R20 K124 ["Size"]
      613 GETIMPORT                        R21 K134 [Vector2.new]
      615 LOADN                            R22 800
      616 LOADN                            R23 600
      617 CALL                             R21 2 1
      618 SETTABLEKS                       R21 R20 K125 ["MinSize"]
      620 GETTABLEKS                       R21 R0 K25 ["onClose"]
      622 SETTABLEKS                       R21 R20 K128 ["OnClose"]
      624 GETUPVAL                         R22 28
      625 JUMPIFNOT                        R22 ; [+2]
      626 MOVE                             R21 R1
      627 JUMP                             ; [+1]
      628 LOADNIL                          R21
      629 SETTABLEKS                       R21 R20 K131 ["PluginDesign"]
      631 DUPTABLE                         R21 K136 [{"OverlayProviderWrapper"}]
      632 GETUPVAL                         R22 12
      633 GETTABLEKS                       R22 R22 K30 ["createElement"]
      635 GETUPVAL                         R23 29
      636 DUPTABLE                         R24 K138 [{"gui"}]
      637 SETTABLEKS                       R16 R24 K137 ["gui"]
      639 DUPTABLE                         R25 K142 [{"StyleLink", "MainContainer", "Overlay"}]
      640 GETUPVAL                         R27 28
      641 JUMPIF                           R27 ; [+9]
      642 GETUPVAL                         R26 12
      643 GETTABLEKS                       R26 R26 K30 ["createElement"]
      645 LOADK                            R27 K139 ["StyleLink"]
      646 DUPTABLE                         R28 K144 [{"StyleSheet"}]
      647 SETTABLEKS                       R1 R28 K143 ["StyleSheet"]
      649 CALL                             R26 2 1
      650 JUMP                             ; [+1]
      651 LOADNIL                          R26
      652 SETTABLEKS                       R26 R25 K139 ["StyleLink"]
      654 SETTABLEKS                       R15 R25 K140 ["MainContainer"]
      656 GETUPVAL                         R26 12
      657 GETTABLEKS                       R26 R26 K30 ["createElement"]
      659 GETUPVAL                         R27 14
      660 DUPTABLE                         R28 K148 [{["tag"] = "size-full", ["ref"], ["ZIndex"] = 100}]
      661 SETTABLEKS                       R17 R28 K145 ["ref"]
      663 CALL                             R26 2 1
      664 SETTABLEKS                       R26 R25 K141 ["Overlay"]
      666 CALL                             R22 3 1
      667 SETTABLEKS                       R22 R21 K135 ["OverlayProviderWrapper"]
      669 CALL                             R18 3 -1
      670 RETURN                           R18 -1

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
       36 GETTABLEKS                       R8 R7 K14 ["SharedFlags"]
       38 GETTABLEKS                       R8 R8 K15 ["getFFlagDevFrameworkUsePluginDesign"]
       40 CALL                             R8 0 1
       41 GETTABLEKS                       R9 R7 K16 ["UI"]
       43 GETTABLEKS                       R10 R7 K17 ["ContextServices"]
       45 GETTABLEKS                       R10 R10 K18 ["Localization"]
       47 GETTABLEKS                       R11 R7 K17 ["ContextServices"]
       49 GETTABLEKS                       R11 R11 K19 ["Design"]
       51 GETTABLEKS                       R12 R7 K20 ["Util"]
       53 GETTABLEKS                       R12 R12 K21 ["LayoutOrderIterator"]
       55 GETIMPORT                        R13 K5 [require]
       57 GETTABLEKS                       R14 R0 K22 ["Src"]
       59 GETTABLEKS                       R14 R14 K23 ["Types"]
       61 CALL                             R13 1 1
       62 GETIMPORT                        R14 K5 [require]
       64 GETIMPORT                        R15 K1 [script]
       66 GETTABLEKS                       R15 R15 K24 ["StageInfoBar"]
       68 CALL                             R14 1 1
       69 GETIMPORT                        R15 K5 [require]
       71 GETIMPORT                        R16 K1 [script]
       73 GETTABLEKS                       R16 R16 K25 ["ErrorBanner"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K5 [require]
       78 GETIMPORT                        R17 K1 [script]
       80 GETTABLEKS                       R17 R17 K26 ["InfoEntryContainer"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K5 [require]
       85 GETIMPORT                        R18 K1 [script]
       87 GETTABLEKS                       R18 R18 K27 ["LookDetailsList"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K5 [require]
       92 GETIMPORT                        R19 K1 [script]
       94 GETTABLEKS                       R19 R19 K28 ["LookComposerBottomBar"]
       96 CALL                             R18 1 1
       97 GETIMPORT                        R19 K5 [require]
       99 GETIMPORT                        R20 K1 [script]
      101 GETTABLEKS                       R20 R20 K29 ["SuccessPage"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K5 [require]
      106 GETIMPORT                        R21 K1 [script]
      108 GETTABLEKS                       R21 R21 K30 ["FailurePage"]
      110 CALL                             R20 1 1
      111 GETIMPORT                        R21 K5 [require]
      113 GETIMPORT                        R22 K1 [script]
      115 GETTABLEKS                       R22 R22 K31 ["EditInfoPage"]
      117 CALL                             R21 1 1
      118 GETIMPORT                        R22 K5 [require]
      120 GETTABLEKS                       R23 R0 K22 ["Src"]
      122 GETTABLEKS                       R23 R23 K32 ["Components"]
      124 GETTABLEKS                       R23 R23 K33 ["LookComposerDialog"]
      126 GETTABLEKS                       R23 R23 K34 ["useLookSkinColor"]
      128 CALL                             R22 1 1
      129 GETIMPORT                        R23 K5 [require]
      131 GETTABLEKS                       R24 R0 K22 ["Src"]
      133 GETTABLEKS                       R24 R24 K32 ["Components"]
      135 GETTABLEKS                       R24 R24 K33 ["LookComposerDialog"]
      137 GETTABLEKS                       R24 R24 K35 ["useLookMetadata"]
      139 CALL                             R23 1 1
      140 GETIMPORT                        R24 K5 [require]
      142 GETTABLEKS                       R25 R0 K22 ["Src"]
      144 GETTABLEKS                       R25 R25 K32 ["Components"]
      146 GETTABLEKS                       R25 R25 K33 ["LookComposerDialog"]
      148 GETTABLEKS                       R25 R25 K36 ["useLookCreator"]
      150 CALL                             R24 1 1
      151 GETIMPORT                        R25 K5 [require]
      153 GETTABLEKS                       R26 R0 K22 ["Src"]
      155 GETTABLEKS                       R26 R26 K32 ["Components"]
      157 GETTABLEKS                       R26 R26 K33 ["LookComposerDialog"]
      159 GETTABLEKS                       R26 R26 K37 ["useLookDialogItems"]
      161 CALL                             R25 1 1
      162 GETIMPORT                        R26 K5 [require]
      164 GETTABLEKS                       R27 R0 K22 ["Src"]
      166 GETTABLEKS                       R27 R27 K32 ["Components"]
      168 GETTABLEKS                       R27 R27 K33 ["LookComposerDialog"]
      170 GETTABLEKS                       R27 R27 K38 ["useLookPreview"]
      172 CALL                             R26 1 1
      173 GETIMPORT                        R27 K5 [require]
      175 GETTABLEKS                       R28 R0 K22 ["Src"]
      177 GETTABLEKS                       R28 R28 K32 ["Components"]
      179 GETTABLEKS                       R28 R28 K33 ["LookComposerDialog"]
      181 GETTABLEKS                       R28 R28 K39 ["useLookErrors"]
      183 CALL                             R27 1 1
      184 GETIMPORT                        R28 K5 [require]
      186 GETTABLEKS                       R29 R0 K22 ["Src"]
      188 GETTABLEKS                       R29 R29 K32 ["Components"]
      190 GETTABLEKS                       R29 R29 K33 ["LookComposerDialog"]
      192 GETTABLEKS                       R29 R29 K40 ["useAsyncLookCreationCalls"]
      194 CALL                             R28 1 1
      195 GETIMPORT                        R29 K5 [require]
      197 GETTABLEKS                       R30 R0 K22 ["Src"]
      199 GETTABLEKS                       R30 R30 K32 ["Components"]
      201 GETTABLEKS                       R30 R30 K33 ["LookComposerDialog"]
      203 GETTABLEKS                       R30 R30 K41 ["useLookDialogStageManager"]
      205 CALL                             R29 1 1
      206 GETIMPORT                        R30 K5 [require]
      208 GETTABLEKS                       R31 R0 K22 ["Src"]
      210 GETTABLEKS                       R31 R31 K42 ["Flags"]
      212 GETTABLEKS                       R31 R31 K43 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K5 [require]
      217 GETTABLEKS                       R32 R0 K22 ["Src"]
      219 GETTABLEKS                       R32 R32 K42 ["Flags"]
      221 GETTABLEKS                       R32 R32 K44 ["getFFlagAvatarPreviewerLookComposerLargerDefaultSize"]
      223 CALL                             R31 1 1
      224 GETIMPORT                        R32 K5 [require]
      226 GETTABLEKS                       R33 R0 K22 ["Src"]
      228 GETTABLEKS                       R33 R33 K42 ["Flags"]
      230 GETTABLEKS                       R33 R33 K45 ["getFFlagAvatarPreviewerEligibilityChecks"]
      232 CALL                             R32 1 1
      233 DUPTABLE                         R33 K48 [{"AvatarLook", "MakeupLook"}]
      234 DUPTABLE                         R34 K53 [{["title"] = "CreateAnAvatarLook", ["description"] = "CreateAnAvatarLookDescription"}]
      235 SETTABLEKS                       R34 R33 K46 ["AvatarLook"]
      237 DUPTABLE                         R34 K56 [{["title"] = "CreateAMakeupLook", ["description"] = "CreateAMakeupLookDescription"}]
      238 SETTABLEKS                       R34 R33 K47 ["MakeupLook"]
      240 DUPCLOSURE                       R34 K57 [PROTO_0]
      241 CAPTURE                          VAL R30
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R10
      244 CAPTURE                          VAL R23
      245 CAPTURE                          VAL R24
      246 CAPTURE                          VAL R25
      247 CAPTURE                          VAL R22
      248 CAPTURE                          VAL R26
      249 CAPTURE                          VAL R28
      250 CAPTURE                          VAL R27
      251 CAPTURE                          VAL R29
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R1
      254 CAPTURE                          VAL R5
      255 CAPTURE                          VAL R3
      256 CAPTURE                          VAL R16
      257 CAPTURE                          VAL R17
      258 CAPTURE                          VAL R21
      259 CAPTURE                          VAL R32
      260 CAPTURE                          VAL R19
      261 CAPTURE                          VAL R20
      262 CAPTURE                          VAL R4
      263 CAPTURE                          VAL R33
      264 CAPTURE                          VAL R14
      265 CAPTURE                          VAL R15
      266 CAPTURE                          VAL R18
      267 CAPTURE                          VAL R9
      268 CAPTURE                          VAL R31
      269 CAPTURE                          VAL R8
      270 CAPTURE                          VAL R6
      271 RETURN                           R34 1
