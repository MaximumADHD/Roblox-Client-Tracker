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
      593 DUPTABLE                         R20 K131 [{["Title"] = "", ["MinContentSize"], ["Size"], ["MinSize"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True, ["Resizable"] = True}]
      594 GETIMPORT                        R21 K133 [Vector2.new]
      596 LOADN                            R22 800
      597 LOADN                            R23 600
      598 CALL                             R21 2 1
      599 SETTABLEKS                       R21 R20 K123 ["MinContentSize"]
      601 GETIMPORT                        R21 K133 [Vector2.new]
      603 LOADN                            R22 800
      604 GETUPVAL                         R24 27
      605 CALL                             R24 0 1
      606 JUMPIFNOT                        R24 ; [+2]
      607 LOADN                            R23 750
      608 JUMP                             ; [+1]
      609 LOADN                            R23 600
      610 CALL                             R21 2 1
      611 SETTABLEKS                       R21 R20 K124 ["Size"]
      613 GETIMPORT                        R21 K133 [Vector2.new]
      615 LOADN                            R22 800
      616 LOADN                            R23 600
      617 CALL                             R21 2 1
      618 SETTABLEKS                       R21 R20 K125 ["MinSize"]
      620 GETTABLEKS                       R21 R0 K25 ["onClose"]
      622 SETTABLEKS                       R21 R20 K128 ["OnClose"]
      624 DUPTABLE                         R21 K135 [{"OverlayProviderWrapper"}]
      625 GETUPVAL                         R22 12
      626 GETTABLEKS                       R22 R22 K30 ["createElement"]
      628 GETUPVAL                         R23 28
      629 DUPTABLE                         R24 K137 [{"gui"}]
      630 SETTABLEKS                       R16 R24 K136 ["gui"]
      632 DUPTABLE                         R25 K141 [{"StyleLink", "MainContainer", "Overlay"}]
      633 GETUPVAL                         R26 12
      634 GETTABLEKS                       R26 R26 K30 ["createElement"]
      636 LOADK                            R27 K138 ["StyleLink"]
      637 DUPTABLE                         R28 K143 [{"StyleSheet"}]
      638 SETTABLEKS                       R1 R28 K142 ["StyleSheet"]
      640 CALL                             R26 2 1
      641 SETTABLEKS                       R26 R25 K138 ["StyleLink"]
      643 SETTABLEKS                       R15 R25 K139 ["MainContainer"]
      645 GETUPVAL                         R26 12
      646 GETTABLEKS                       R26 R26 K30 ["createElement"]
      648 GETUPVAL                         R27 14
      649 DUPTABLE                         R28 K147 [{["tag"] = "size-full", ["ref"], ["ZIndex"] = 100}]
      650 SETTABLEKS                       R17 R28 K144 ["ref"]
      652 CALL                             R26 2 1
      653 SETTABLEKS                       R26 R25 K140 ["Overlay"]
      655 CALL                             R22 3 1
      656 SETTABLEKS                       R22 R21 K134 ["OverlayProviderWrapper"]
      658 CALL                             R18 3 -1
      659 RETURN                           R18 -1

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
      210 GETIMPORT                        R30 K5 [require]
      212 GETTABLEKS                       R31 R0 K20 ["Src"]
      214 GETTABLEKS                       R31 R31 K40 ["Flags"]
      216 GETTABLEKS                       R31 R31 K42 ["getFFlagAvatarPreviewerLookComposerLargerDefaultSize"]
      218 CALL                             R30 1 1
      219 GETIMPORT                        R31 K5 [require]
      221 GETTABLEKS                       R32 R0 K20 ["Src"]
      223 GETTABLEKS                       R32 R32 K40 ["Flags"]
      225 GETTABLEKS                       R32 R32 K43 ["getFFlagAvatarPreviewerEligibilityChecks"]
      227 CALL                             R31 1 1
      228 DUPTABLE                         R32 K46 [{"AvatarLook", "MakeupLook"}]
      229 DUPTABLE                         R33 K51 [{["title"] = "CreateAnAvatarLook", ["description"] = "CreateAnAvatarLookDescription"}]
      230 SETTABLEKS                       R33 R32 K44 ["AvatarLook"]
      232 DUPTABLE                         R33 K54 [{["title"] = "CreateAMakeupLook", ["description"] = "CreateAMakeupLookDescription"}]
      233 SETTABLEKS                       R33 R32 K45 ["MakeupLook"]
      235 DUPCLOSURE                       R33 K55 [PROTO_0]
      236 CAPTURE                          VAL R29
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R22
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R25
      244 CAPTURE                          VAL R27
      245 CAPTURE                          VAL R26
      246 CAPTURE                          VAL R28
      247 CAPTURE                          VAL R11
      248 CAPTURE                          VAL R1
      249 CAPTURE                          VAL R5
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R15
      252 CAPTURE                          VAL R16
      253 CAPTURE                          VAL R20
      254 CAPTURE                          VAL R31
      255 CAPTURE                          VAL R18
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R4
      258 CAPTURE                          VAL R32
      259 CAPTURE                          VAL R13
      260 CAPTURE                          VAL R14
      261 CAPTURE                          VAL R17
      262 CAPTURE                          VAL R8
      263 CAPTURE                          VAL R30
      264 CAPTURE                          VAL R6
      265 RETURN                           R33 1
