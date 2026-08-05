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
      266 JUMP                             ; [+92]
      267 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      269 JUMPIFNOTEQKS                    R13 K61 ["EditInfo"] ; [+58]
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
      299 DUPTABLE                         R20 K69 [{"name", "description", "onNameChanged", "onDescriptionChanged", "lookPreviewInfo", "lookPreview"}]
      300 GETTABLEKS                       R21 R3 K14 ["name"]
      302 SETTABLEKS                       R21 R20 K14 ["name"]
      304 GETTABLEKS                       R21 R3 K15 ["description"]
      306 SETTABLEKS                       R21 R20 K15 ["description"]
      308 GETTABLEKS                       R21 R3 K70 ["setName"]
      310 SETTABLEKS                       R21 R20 K66 ["onNameChanged"]
      312 GETTABLEKS                       R21 R3 K71 ["setDescription"]
      314 SETTABLEKS                       R21 R20 K67 ["onDescriptionChanged"]
      316 SETTABLEKS                       R13 R20 K68 ["lookPreviewInfo"]
      318 GETTABLEKS                       R21 R8 K54 ["lookPreview"]
      320 SETTABLEKS                       R21 R20 K54 ["lookPreview"]
      322 CALL                             R18 2 1
      323 SETTABLEKS                       R18 R17 K41 ["StageContent"]
      325 CALL                             R14 3 1
      326 MOVE                             R12 R14
      327 JUMP                             ; [+31]
      328 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      330 JUMPIFNOTEQKS                    R13 K72 ["Success"] ; [+13]
      332 GETUPVAL                         R13 12
      333 GETTABLEKS                       R13 R13 K30 ["createElement"]
      335 GETUPVAL                         R14 18
      336 DUPTABLE                         R15 K73 [{"lookPreview"}]
      337 GETTABLEKS                       R16 R8 K54 ["lookPreview"]
      339 SETTABLEKS                       R16 R15 K54 ["lookPreview"]
      341 CALL                             R13 2 1
      342 MOVE                             R12 R13
      343 JUMP                             ; [+15]
      344 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      346 JUMPIFNOTEQKS                    R13 K74 ["Failure"] ; [+12]
      348 GETUPVAL                         R13 12
      349 GETTABLEKS                       R13 R13 K30 ["createElement"]
      351 GETUPVAL                         R14 19
      352 DUPTABLE                         R15 K76 [{"errorMessage"}]
      353 GETTABLEKS                       R16 R9 K77 ["lookCreationErrorMessage"]
      355 SETTABLEKS                       R16 R15 K75 ["errorMessage"]
      357 CALL                             R13 2 1
      358 MOVE                             R12 R13
      359 GETUPVAL                         R13 11
      360 GETTABLEKS                       R13 R13 K29 ["new"]
      362 CALL                             R13 0 1
      363 GETUPVAL                         R14 11
      364 GETTABLEKS                       R14 R14 K29 ["new"]
      366 CALL                             R14 0 1
      367 GETUPVAL                         R15 12
      368 GETTABLEKS                       R15 R15 K30 ["createElement"]
      370 GETUPVAL                         R16 14
      371 DUPTABLE                         R17 K79 [{["tag"] = "col size-full"}]
      372 DUPTABLE                         R18 K83 [{"Header", "StageContentWrapper", "BottomBar"}]
      373 GETUPVAL                         R19 12
      374 GETTABLEKS                       R19 R19 K30 ["createElement"]
      376 GETUPVAL                         R20 14
      377 DUPTABLE                         R21 K85 [{["tag"] = "col align-x-left align-y-top gap-medium size-full-0 auto-y padding-large", ["LayoutOrder"]}]
      378 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      380 CALL                             R22 1 1
      381 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      383 DUPTABLE                         R22 K90 [{"Title", "Description", "StageInfoBarWrapper", "ErrorBannerWrapper"}]
      384 GETUPVAL                         R23 12
      385 GETTABLEKS                       R23 R23 K30 ["createElement"]
      387 GETUPVAL                         R24 20
      388 DUPTABLE                         R25 K93 [{["Text"], ["tag"] = "auto-xy text-heading-small content-default", ["LayoutOrder"]}]
      389 LOADK                            R28 K94 ["LookComposerDialog"]
      390 GETUPVAL                         R30 21
      391 GETTABLEKS                       R31 R0 K0 ["dialogLookType"]
      393 GETTABLE                         R29 R30 R31
      394 GETTABLEKS                       R29 R29 K95 ["title"]
      396 NAMECALL                         R26 R2 K96 ["getText"]
      398 CALL                             R26 3 1
      399 SETTABLEKS                       R26 R25 K91 ["Text"]
      401 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      403 CALL                             R26 1 1
      404 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      406 CALL                             R23 2 1
      407 SETTABLEKS                       R23 R22 K86 ["Title"]
      409 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      411 JUMPIFEQKS                       R24 K28 ["ConfirmItems"] ; [+5]
      413 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      415 JUMPIFNOTEQKS                    R24 K61 ["EditInfo"] ; [+25]
      417 GETUPVAL                         R23 12
      418 GETTABLEKS                       R23 R23 K30 ["createElement"]
      420 GETUPVAL                         R24 20
      421 DUPTABLE                         R25 K98 [{["Text"], ["tag"] = "auto-xy text-body-medium content-default", ["LayoutOrder"]}]
      422 LOADK                            R28 K94 ["LookComposerDialog"]
      423 GETUPVAL                         R30 21
      424 GETTABLEKS                       R31 R0 K0 ["dialogLookType"]
      426 GETTABLE                         R29 R30 R31
      427 GETTABLEKS                       R29 R29 K15 ["description"]
      429 NAMECALL                         R26 R2 K96 ["getText"]
      431 CALL                             R26 3 1
      432 SETTABLEKS                       R26 R25 K91 ["Text"]
      434 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      436 CALL                             R26 1 1
      437 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      439 CALL                             R23 2 1
      440 JUMP                             ; [+1]
      441 LOADNIL                          R23
      442 SETTABLEKS                       R23 R22 K87 ["Description"]
      444 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      446 JUMPIFEQKS                       R24 K28 ["ConfirmItems"] ; [+5]
      448 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      450 JUMPIFNOTEQKS                    R24 K61 ["EditInfo"] ; [+26]
      452 GETUPVAL                         R23 12
      453 GETTABLEKS                       R23 R23 K30 ["createElement"]
      455 GETUPVAL                         R24 14
      456 DUPTABLE                         R25 K100 [{["tag"] = "size-full-0 auto-y padding-top-xlarge", ["LayoutOrder"]}]
      457 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      459 CALL                             R26 1 1
      460 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      462 DUPTABLE                         R26 K102 [{"StageInfoBar"}]
      463 GETUPVAL                         R27 12
      464 GETTABLEKS                       R27 R27 K30 ["createElement"]
      466 GETUPVAL                         R28 22
      467 DUPTABLE                         R29 K103 [{"dialogStage"}]
      468 GETTABLEKS                       R30 R11 K27 ["dialogStage"]
      470 SETTABLEKS                       R30 R29 K27 ["dialogStage"]
      472 CALL                             R27 2 1
      473 SETTABLEKS                       R27 R26 K101 ["StageInfoBar"]
      475 CALL                             R23 3 1
      476 JUMP                             ; [+1]
      477 LOADNIL                          R23
      478 SETTABLEKS                       R23 R22 K88 ["StageInfoBarWrapper"]
      480 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      482 JUMPIFNOTEQKS                    R24 K28 ["ConfirmItems"] ; [+34]
      484 GETUPVAL                         R23 12
      485 GETTABLEKS                       R23 R23 K30 ["createElement"]
      487 GETUPVAL                         R24 14
      488 DUPTABLE                         R25 K105 [{["tag"] = "size-full-0 auto-y padding-top-medium", ["LayoutOrder"]}]
      489 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      491 CALL                             R26 1 1
      492 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      494 DUPTABLE                         R26 K107 [{"ErrorBanner"}]
      495 GETUPVAL                         R27 12
      496 GETTABLEKS                       R27 R27 K30 ["createElement"]
      498 GETUPVAL                         R28 23
      499 DUPTABLE                         R29 K110 [{"errors", "hasBlockingError", "dismissMessage"}]
      500 GETTABLEKS                       R30 R10 K111 ["errorBannerMessages"]
      502 SETTABLEKS                       R30 R29 K108 ["errors"]
      504 GETTABLEKS                       R30 R10 K23 ["hasBlockingError"]
      506 SETTABLEKS                       R30 R29 K23 ["hasBlockingError"]
      508 GETTABLEKS                       R30 R10 K109 ["dismissMessage"]
      510 SETTABLEKS                       R30 R29 K109 ["dismissMessage"]
      512 CALL                             R27 2 1
      513 SETTABLEKS                       R27 R26 K106 ["ErrorBanner"]
      515 CALL                             R23 3 1
      516 JUMP                             ; [+1]
      517 LOADNIL                          R23
      518 SETTABLEKS                       R23 R22 K89 ["ErrorBannerWrapper"]
      520 CALL                             R19 3 1
      521 SETTABLEKS                       R19 R18 K80 ["Header"]
      523 GETUPVAL                         R19 12
      524 GETTABLEKS                       R19 R19 K30 ["createElement"]
      526 GETUPVAL                         R20 14
      527 DUPTABLE                         R21 K113 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
      528 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      530 CALL                             R22 1 1
      531 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      533 DUPTABLE                         R22 K42 [{"StageContent"}]
      534 SETTABLEKS                       R12 R22 K41 ["StageContent"]
      536 CALL                             R19 3 1
      537 SETTABLEKS                       R19 R18 K81 ["StageContentWrapper"]
      539 GETUPVAL                         R19 12
      540 GETTABLEKS                       R19 R19 K30 ["createElement"]
      542 GETUPVAL                         R20 24
      543 DUPTABLE                         R21 K118 [{"LayoutOrder", "onForward", "onBack", "dialogStage", "isForwardDisabled", "isBackDisabled"}]
      544 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      546 CALL                             R22 1 1
      547 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      549 GETTABLEKS                       R22 R11 K114 ["onForward"]
      551 SETTABLEKS                       R22 R21 K114 ["onForward"]
      553 GETTABLEKS                       R22 R11 K115 ["onBack"]
      555 SETTABLEKS                       R22 R21 K115 ["onBack"]
      557 GETTABLEKS                       R22 R11 K27 ["dialogStage"]
      559 SETTABLEKS                       R22 R21 K27 ["dialogStage"]
      561 GETTABLEKS                       R22 R11 K116 ["isForwardDisabled"]
      563 SETTABLEKS                       R22 R21 K116 ["isForwardDisabled"]
      565 GETTABLEKS                       R22 R11 K117 ["isBackDisabled"]
      567 SETTABLEKS                       R22 R21 K117 ["isBackDisabled"]
      569 CALL                             R19 2 1
      570 SETTABLEKS                       R19 R18 K82 ["BottomBar"]
      572 CALL                             R15 3 1
      573 GETUPVAL                         R16 12
      574 GETTABLEKS                       R16 R16 K119 ["useState"]
      576 LOADNIL                          R17
      577 CALL                             R16 1 2
      578 GETUPVAL                         R18 12
      579 GETTABLEKS                       R18 R18 K30 ["createElement"]
      581 GETUPVAL                         R19 25
      582 GETTABLEKS                       R19 R19 K120 ["Dialog"]
      584 DUPTABLE                         R20 K130 [{["Title"] = "", ["MinContentSize"], ["Size"], ["MinSize"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True, ["Resizable"] = True}]
      585 GETIMPORT                        R21 K132 [Vector2.new]
      587 LOADN                            R22 800
      588 LOADN                            R23 600
      589 CALL                             R21 2 1
      590 SETTABLEKS                       R21 R20 K122 ["MinContentSize"]
      592 GETIMPORT                        R21 K132 [Vector2.new]
      594 LOADN                            R22 800
      595 GETUPVAL                         R24 26
      596 CALL                             R24 0 1
      597 JUMPIFNOT                        R24 ; [+2]
      598 LOADN                            R23 750
      599 JUMP                             ; [+1]
      600 LOADN                            R23 600
      601 CALL                             R21 2 1
      602 SETTABLEKS                       R21 R20 K123 ["Size"]
      604 GETIMPORT                        R21 K132 [Vector2.new]
      606 LOADN                            R22 800
      607 LOADN                            R23 600
      608 CALL                             R21 2 1
      609 SETTABLEKS                       R21 R20 K124 ["MinSize"]
      611 GETTABLEKS                       R21 R0 K25 ["onClose"]
      613 SETTABLEKS                       R21 R20 K127 ["OnClose"]
      615 DUPTABLE                         R21 K134 [{"OverlayProviderWrapper"}]
      616 GETUPVAL                         R22 12
      617 GETTABLEKS                       R22 R22 K30 ["createElement"]
      619 GETUPVAL                         R23 27
      620 DUPTABLE                         R24 K136 [{"gui"}]
      621 SETTABLEKS                       R16 R24 K135 ["gui"]
      623 DUPTABLE                         R25 K140 [{"StyleLink", "MainContainer", "Overlay"}]
      624 GETUPVAL                         R26 12
      625 GETTABLEKS                       R26 R26 K30 ["createElement"]
      627 LOADK                            R27 K137 ["StyleLink"]
      628 DUPTABLE                         R28 K142 [{"StyleSheet"}]
      629 SETTABLEKS                       R1 R28 K141 ["StyleSheet"]
      631 CALL                             R26 2 1
      632 SETTABLEKS                       R26 R25 K137 ["StyleLink"]
      634 SETTABLEKS                       R15 R25 K138 ["MainContainer"]
      636 GETUPVAL                         R26 12
      637 GETTABLEKS                       R26 R26 K30 ["createElement"]
      639 GETUPVAL                         R27 14
      640 DUPTABLE                         R28 K146 [{["tag"] = "size-full", ["ref"], ["ZIndex"] = 100}]
      641 SETTABLEKS                       R17 R28 K143 ["ref"]
      643 CALL                             R26 2 1
      644 SETTABLEKS                       R26 R25 K139 ["Overlay"]
      646 CALL                             R22 3 1
      647 SETTABLEKS                       R22 R21 K133 ["OverlayProviderWrapper"]
      649 CALL                             R18 3 -1
      650 RETURN                           R18 -1

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
      219 DUPTABLE                         R31 K45 [{"AvatarLook", "MakeupLook"}]
      220 DUPTABLE                         R32 K50 [{["title"] = "CreateAnAvatarLook", ["description"] = "CreateAnAvatarLookDescription"}]
      221 SETTABLEKS                       R32 R31 K43 ["AvatarLook"]
      223 DUPTABLE                         R32 K53 [{["title"] = "CreateAMakeupLook", ["description"] = "CreateAMakeupLookDescription"}]
      224 SETTABLEKS                       R32 R31 K44 ["MakeupLook"]
      226 DUPCLOSURE                       R32 K54 [PROTO_0]
      227 CAPTURE                          VAL R29
      228 CAPTURE                          VAL R10
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R22
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R21
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R27
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R28
      238 CAPTURE                          VAL R11
      239 CAPTURE                          VAL R1
      240 CAPTURE                          VAL R5
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R15
      243 CAPTURE                          VAL R16
      244 CAPTURE                          VAL R20
      245 CAPTURE                          VAL R18
      246 CAPTURE                          VAL R19
      247 CAPTURE                          VAL R4
      248 CAPTURE                          VAL R31
      249 CAPTURE                          VAL R13
      250 CAPTURE                          VAL R14
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R8
      253 CAPTURE                          VAL R30
      254 CAPTURE                          VAL R6
      255 RETURN                           R32 1
