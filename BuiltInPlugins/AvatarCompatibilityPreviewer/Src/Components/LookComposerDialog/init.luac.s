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
      154 JUMPIFNOTEQKS                    R13 K28 ["ConfirmItems"] ; [+119]
      156 GETUPVAL                         R13 11
      157 GETTABLEKS                       R13 R13 K29 ["new"]
      159 CALL                             R13 0 1
      160 GETUPVAL                         R14 12
      161 GETTABLEKS                       R14 R14 K30 ["createElement"]
      163 GETUPVAL                         R15 13
      164 DUPTABLE                         R16 K34 [{["tag"] = "size-full", ["scroll"]}]
      165 DUPTABLE                         R17 K36 [{"AutomaticCanvasSize"}]
      166 GETIMPORT                        R18 K40 [Enum.AutomaticSize.Y]
      168 SETTABLEKS                       R18 R17 K35 ["AutomaticCanvasSize"]
      170 SETTABLEKS                       R17 R16 K33 ["scroll"]
      172 DUPTABLE                         R17 K42 [{"StageContent"}]
      173 GETUPVAL                         R18 12
      174 GETTABLEKS                       R18 R18 K30 ["createElement"]
      176 GETUPVAL                         R19 14
      177 DUPTABLE                         R20 K44 [{["tag"] = "col gap-medium size-full-0 auto-y padding-large"}]
      178 DUPTABLE                         R21 K47 [{"InfoEntry", "LookDetails"}]
      179 GETUPVAL                         R22 12
      180 GETTABLEKS                       R22 R22 K30 ["createElement"]
      182 GETUPVAL                         R23 15
      183 DUPTABLE                         R24 K55 [{"LayoutOrder", "selectedCreatorId", "creators", "onCreatorChanged", "isAvatarLook", "skinColor", "onSkinColorChanged", "bodyColor", "lookPreview", "dialogItems"}]
      184 NAMECALL                         R25 R13 K56 ["getNextOrder"]
      186 CALL                             R25 1 1
      187 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      189 GETTABLEKS                       R25 R6 K8 ["selectedCreatorId"]
      191 SETTABLEKS                       R25 R24 K8 ["selectedCreatorId"]
      193 GETTABLEKS                       R25 R6 K49 ["creators"]
      195 SETTABLEKS                       R25 R24 K49 ["creators"]
      197 GETTABLEKS                       R25 R6 K57 ["setSelectedCreatorId"]
      199 SETTABLEKS                       R25 R24 K50 ["onCreatorChanged"]
      201 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      203 JUMPIFEQKS                       R26 K1 ["AvatarLook"] ; [+2]
      205 LOADB                            R25 0 +1
      206 LOADB                            R25 1
      207 SETTABLEKS                       R25 R24 K51 ["isAvatarLook"]
      209 SETTABLEKS                       R3 R24 K11 ["skinColor"]
      211 SETTABLEKS                       R4 R24 K52 ["onSkinColorChanged"]
      213 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      215 JUMPIFNOTEQKS                    R26 K1 ["AvatarLook"] ; [+3]
      217 MOVE                             R25 R3
      218 JUMP                             ; [+1]
      219 LOADNIL                          R25
      220 SETTABLEKS                       R25 R24 K53 ["bodyColor"]
      222 GETTABLEKS                       R25 R8 K54 ["lookPreview"]
      224 SETTABLEKS                       R25 R24 K54 ["lookPreview"]
      226 GETTABLEKS                       R25 R7 K10 ["dialogItems"]
      228 SETTABLEKS                       R25 R24 K10 ["dialogItems"]
      230 CALL                             R22 2 1
      231 SETTABLEKS                       R22 R21 K45 ["InfoEntry"]
      233 GETUPVAL                         R22 12
      234 GETTABLEKS                       R22 R22 K30 ["createElement"]
      236 GETUPVAL                         R23 16
      237 DUPTABLE                         R24 K60 [{"LayoutOrder", "dialogItems", "setDialogItemRowState", "isAvatarLook", "skinColor", "lookType"}]
      238 NAMECALL                         R25 R13 K56 ["getNextOrder"]
      240 CALL                             R25 1 1
      241 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      243 GETTABLEKS                       R25 R7 K10 ["dialogItems"]
      245 SETTABLEKS                       R25 R24 K10 ["dialogItems"]
      247 GETTABLEKS                       R25 R7 K58 ["setDialogItemRowState"]
      249 SETTABLEKS                       R25 R24 K58 ["setDialogItemRowState"]
      251 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      253 JUMPIFEQKS                       R26 K1 ["AvatarLook"] ; [+2]
      255 LOADB                            R25 0 +1
      256 LOADB                            R25 1
      257 SETTABLEKS                       R25 R24 K51 ["isAvatarLook"]
      259 SETTABLEKS                       R3 R24 K11 ["skinColor"]
      261 GETTABLEKS                       R25 R0 K0 ["dialogLookType"]
      263 SETTABLEKS                       R25 R24 K59 ["lookType"]
      265 CALL                             R22 2 1
      266 SETTABLEKS                       R22 R21 K46 ["LookDetails"]
      268 CALL                             R18 3 1
      269 SETTABLEKS                       R18 R17 K41 ["StageContent"]
      271 CALL                             R14 3 1
      272 MOVE                             R12 R14
      273 JUMP                             ; [+92]
      274 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      276 JUMPIFNOTEQKS                    R13 K61 ["EditInfo"] ; [+58]
      278 LOADNIL                          R13
      279 GETTABLEKS                       R14 R0 K0 ["dialogLookType"]
      281 JUMPIFNOTEQKS                    R14 K1 ["AvatarLook"] ; [+6]
      283 DUPTABLE                         R14 K62 [{["lookType"] = "AvatarLook", ["bodyColor"]}]
      284 SETTABLEKS                       R3 R14 K53 ["bodyColor"]
      286 MOVE                             R13 R14
      287 JUMP                             ; [+8]
      288 GETTABLEKS                       R14 R0 K0 ["dialogLookType"]
      290 JUMPIFNOTEQKS                    R14 K63 ["MakeupLook"] ; [+5]
      292 DUPTABLE                         R14 K64 [{["lookType"] = "MakeupLook", ["skinColor"]}]
      293 SETTABLEKS                       R3 R14 K11 ["skinColor"]
      295 MOVE                             R13 R14
      296 GETUPVAL                         R14 12
      297 GETTABLEKS                       R14 R14 K30 ["createElement"]
      299 GETUPVAL                         R15 14
      300 DUPTABLE                         R16 K65 [{["tag"] = "size-full"}]
      301 DUPTABLE                         R17 K42 [{"StageContent"}]
      302 GETUPVAL                         R18 12
      303 GETTABLEKS                       R18 R18 K30 ["createElement"]
      305 GETUPVAL                         R19 17
      306 DUPTABLE                         R20 K69 [{"name", "description", "onNameChanged", "onDescriptionChanged", "lookPreviewInfo", "lookPreview"}]
      307 GETTABLEKS                       R21 R5 K13 ["name"]
      309 SETTABLEKS                       R21 R20 K13 ["name"]
      311 GETTABLEKS                       R21 R5 K14 ["description"]
      313 SETTABLEKS                       R21 R20 K14 ["description"]
      315 GETTABLEKS                       R21 R5 K70 ["setName"]
      317 SETTABLEKS                       R21 R20 K66 ["onNameChanged"]
      319 GETTABLEKS                       R21 R5 K71 ["setDescription"]
      321 SETTABLEKS                       R21 R20 K67 ["onDescriptionChanged"]
      323 SETTABLEKS                       R13 R20 K68 ["lookPreviewInfo"]
      325 GETTABLEKS                       R21 R8 K54 ["lookPreview"]
      327 SETTABLEKS                       R21 R20 K54 ["lookPreview"]
      329 CALL                             R18 2 1
      330 SETTABLEKS                       R18 R17 K41 ["StageContent"]
      332 CALL                             R14 3 1
      333 MOVE                             R12 R14
      334 JUMP                             ; [+31]
      335 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      337 JUMPIFNOTEQKS                    R13 K72 ["Success"] ; [+13]
      339 GETUPVAL                         R13 12
      340 GETTABLEKS                       R13 R13 K30 ["createElement"]
      342 GETUPVAL                         R14 18
      343 DUPTABLE                         R15 K73 [{"lookPreview"}]
      344 GETTABLEKS                       R16 R8 K54 ["lookPreview"]
      346 SETTABLEKS                       R16 R15 K54 ["lookPreview"]
      348 CALL                             R13 2 1
      349 MOVE                             R12 R13
      350 JUMP                             ; [+15]
      351 GETTABLEKS                       R13 R11 K27 ["dialogStage"]
      353 JUMPIFNOTEQKS                    R13 K74 ["Failure"] ; [+12]
      355 GETUPVAL                         R13 12
      356 GETTABLEKS                       R13 R13 K30 ["createElement"]
      358 GETUPVAL                         R14 19
      359 DUPTABLE                         R15 K76 [{"errorMessage"}]
      360 GETTABLEKS                       R16 R9 K77 ["lookCreationErrorMessage"]
      362 SETTABLEKS                       R16 R15 K75 ["errorMessage"]
      364 CALL                             R13 2 1
      365 MOVE                             R12 R13
      366 GETUPVAL                         R13 11
      367 GETTABLEKS                       R13 R13 K29 ["new"]
      369 CALL                             R13 0 1
      370 GETUPVAL                         R14 11
      371 GETTABLEKS                       R14 R14 K29 ["new"]
      373 CALL                             R14 0 1
      374 GETUPVAL                         R15 12
      375 GETTABLEKS                       R15 R15 K30 ["createElement"]
      377 GETUPVAL                         R16 14
      378 DUPTABLE                         R17 K79 [{["tag"] = "col size-full"}]
      379 DUPTABLE                         R18 K83 [{"Header", "StageContentWrapper", "BottomBar"}]
      380 GETUPVAL                         R19 12
      381 GETTABLEKS                       R19 R19 K30 ["createElement"]
      383 GETUPVAL                         R20 14
      384 DUPTABLE                         R21 K85 [{["tag"] = "col align-x-left align-y-top gap-medium size-full-0 auto-y padding-large", ["LayoutOrder"]}]
      385 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      387 CALL                             R22 1 1
      388 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      390 DUPTABLE                         R22 K90 [{"Title", "Description", "StageInfoBarWrapper", "ErrorBannerWrapper"}]
      391 GETUPVAL                         R23 12
      392 GETTABLEKS                       R23 R23 K30 ["createElement"]
      394 GETUPVAL                         R24 20
      395 DUPTABLE                         R25 K93 [{["Text"], ["tag"] = "auto-xy text-heading-small content-default", ["LayoutOrder"]}]
      396 LOADK                            R28 K94 ["LookComposerDialog"]
      397 GETUPVAL                         R30 21
      398 GETTABLEKS                       R31 R0 K0 ["dialogLookType"]
      400 GETTABLE                         R29 R30 R31
      401 GETTABLEKS                       R29 R29 K95 ["title"]
      403 NAMECALL                         R26 R2 K96 ["getText"]
      405 CALL                             R26 3 1
      406 SETTABLEKS                       R26 R25 K91 ["Text"]
      408 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      410 CALL                             R26 1 1
      411 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      413 CALL                             R23 2 1
      414 SETTABLEKS                       R23 R22 K86 ["Title"]
      416 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      418 JUMPIFEQKS                       R24 K28 ["ConfirmItems"] ; [+5]
      420 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      422 JUMPIFNOTEQKS                    R24 K61 ["EditInfo"] ; [+25]
      424 GETUPVAL                         R23 12
      425 GETTABLEKS                       R23 R23 K30 ["createElement"]
      427 GETUPVAL                         R24 20
      428 DUPTABLE                         R25 K98 [{["Text"], ["tag"] = "auto-xy text-body-medium content-default", ["LayoutOrder"]}]
      429 LOADK                            R28 K94 ["LookComposerDialog"]
      430 GETUPVAL                         R30 21
      431 GETTABLEKS                       R31 R0 K0 ["dialogLookType"]
      433 GETTABLE                         R29 R30 R31
      434 GETTABLEKS                       R29 R29 K14 ["description"]
      436 NAMECALL                         R26 R2 K96 ["getText"]
      438 CALL                             R26 3 1
      439 SETTABLEKS                       R26 R25 K91 ["Text"]
      441 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      443 CALL                             R26 1 1
      444 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      446 CALL                             R23 2 1
      447 JUMP                             ; [+1]
      448 LOADNIL                          R23
      449 SETTABLEKS                       R23 R22 K87 ["Description"]
      451 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      453 JUMPIFEQKS                       R24 K28 ["ConfirmItems"] ; [+5]
      455 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      457 JUMPIFNOTEQKS                    R24 K61 ["EditInfo"] ; [+26]
      459 GETUPVAL                         R23 12
      460 GETTABLEKS                       R23 R23 K30 ["createElement"]
      462 GETUPVAL                         R24 14
      463 DUPTABLE                         R25 K100 [{["tag"] = "size-full-0 auto-y padding-top-xlarge", ["LayoutOrder"]}]
      464 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      466 CALL                             R26 1 1
      467 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      469 DUPTABLE                         R26 K102 [{"StageInfoBar"}]
      470 GETUPVAL                         R27 12
      471 GETTABLEKS                       R27 R27 K30 ["createElement"]
      473 GETUPVAL                         R28 22
      474 DUPTABLE                         R29 K103 [{"dialogStage"}]
      475 GETTABLEKS                       R30 R11 K27 ["dialogStage"]
      477 SETTABLEKS                       R30 R29 K27 ["dialogStage"]
      479 CALL                             R27 2 1
      480 SETTABLEKS                       R27 R26 K101 ["StageInfoBar"]
      482 CALL                             R23 3 1
      483 JUMP                             ; [+1]
      484 LOADNIL                          R23
      485 SETTABLEKS                       R23 R22 K88 ["StageInfoBarWrapper"]
      487 GETTABLEKS                       R24 R11 K27 ["dialogStage"]
      489 JUMPIFNOTEQKS                    R24 K28 ["ConfirmItems"] ; [+34]
      491 GETUPVAL                         R23 12
      492 GETTABLEKS                       R23 R23 K30 ["createElement"]
      494 GETUPVAL                         R24 14
      495 DUPTABLE                         R25 K105 [{["tag"] = "size-full-0 auto-y padding-top-medium", ["LayoutOrder"]}]
      496 NAMECALL                         R26 R14 K56 ["getNextOrder"]
      498 CALL                             R26 1 1
      499 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      501 DUPTABLE                         R26 K107 [{"ErrorBanner"}]
      502 GETUPVAL                         R27 12
      503 GETTABLEKS                       R27 R27 K30 ["createElement"]
      505 GETUPVAL                         R28 23
      506 DUPTABLE                         R29 K110 [{"errors", "hasBlockingError", "dismissMessage"}]
      507 GETTABLEKS                       R30 R10 K111 ["errorBannerMessages"]
      509 SETTABLEKS                       R30 R29 K108 ["errors"]
      511 GETTABLEKS                       R30 R10 K23 ["hasBlockingError"]
      513 SETTABLEKS                       R30 R29 K23 ["hasBlockingError"]
      515 GETTABLEKS                       R30 R10 K109 ["dismissMessage"]
      517 SETTABLEKS                       R30 R29 K109 ["dismissMessage"]
      519 CALL                             R27 2 1
      520 SETTABLEKS                       R27 R26 K106 ["ErrorBanner"]
      522 CALL                             R23 3 1
      523 JUMP                             ; [+1]
      524 LOADNIL                          R23
      525 SETTABLEKS                       R23 R22 K89 ["ErrorBannerWrapper"]
      527 CALL                             R19 3 1
      528 SETTABLEKS                       R19 R18 K80 ["Header"]
      530 GETUPVAL                         R19 12
      531 GETTABLEKS                       R19 R19 K30 ["createElement"]
      533 GETUPVAL                         R20 14
      534 DUPTABLE                         R21 K113 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
      535 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      537 CALL                             R22 1 1
      538 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      540 DUPTABLE                         R22 K42 [{"StageContent"}]
      541 SETTABLEKS                       R12 R22 K41 ["StageContent"]
      543 CALL                             R19 3 1
      544 SETTABLEKS                       R19 R18 K81 ["StageContentWrapper"]
      546 GETUPVAL                         R19 12
      547 GETTABLEKS                       R19 R19 K30 ["createElement"]
      549 GETUPVAL                         R20 24
      550 DUPTABLE                         R21 K118 [{"LayoutOrder", "onForward", "onBack", "dialogStage", "isForwardDisabled", "isBackDisabled"}]
      551 NAMECALL                         R22 R13 K56 ["getNextOrder"]
      553 CALL                             R22 1 1
      554 SETTABLEKS                       R22 R21 K48 ["LayoutOrder"]
      556 GETTABLEKS                       R22 R11 K114 ["onForward"]
      558 SETTABLEKS                       R22 R21 K114 ["onForward"]
      560 GETTABLEKS                       R22 R11 K115 ["onBack"]
      562 SETTABLEKS                       R22 R21 K115 ["onBack"]
      564 GETTABLEKS                       R22 R11 K27 ["dialogStage"]
      566 SETTABLEKS                       R22 R21 K27 ["dialogStage"]
      568 GETTABLEKS                       R22 R11 K116 ["isForwardDisabled"]
      570 SETTABLEKS                       R22 R21 K116 ["isForwardDisabled"]
      572 GETTABLEKS                       R22 R11 K117 ["isBackDisabled"]
      574 SETTABLEKS                       R22 R21 K117 ["isBackDisabled"]
      576 CALL                             R19 2 1
      577 SETTABLEKS                       R19 R18 K82 ["BottomBar"]
      579 CALL                             R15 3 1
      580 GETUPVAL                         R16 12
      581 GETTABLEKS                       R16 R16 K119 ["useState"]
      583 LOADNIL                          R17
      584 CALL                             R16 1 2
      585 GETUPVAL                         R18 12
      586 GETTABLEKS                       R18 R18 K30 ["createElement"]
      588 GETUPVAL                         R19 25
      589 GETTABLEKS                       R19 R19 K120 ["Dialog"]
      591 DUPTABLE                         R20 K130 [{["Title"] = "", ["MinContentSize"], ["Size"], ["MinSize"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True, ["Resizable"] = True}]
      592 GETIMPORT                        R21 K132 [Vector2.new]
      594 LOADN                            R22 800
      595 LOADN                            R23 600
      596 CALL                             R21 2 1
      597 SETTABLEKS                       R21 R20 K122 ["MinContentSize"]
      599 GETIMPORT                        R21 K132 [Vector2.new]
      601 LOADN                            R22 800
      602 LOADN                            R23 600
      603 CALL                             R21 2 1
      604 SETTABLEKS                       R21 R20 K123 ["Size"]
      606 GETIMPORT                        R21 K132 [Vector2.new]
      608 LOADN                            R22 800
      609 LOADN                            R23 600
      610 CALL                             R21 2 1
      611 SETTABLEKS                       R21 R20 K124 ["MinSize"]
      613 GETTABLEKS                       R21 R0 K25 ["onClose"]
      615 SETTABLEKS                       R21 R20 K127 ["OnClose"]
      617 DUPTABLE                         R21 K134 [{"OverlayProviderWrapper"}]
      618 GETUPVAL                         R22 12
      619 GETTABLEKS                       R22 R22 K30 ["createElement"]
      621 GETUPVAL                         R23 26
      622 DUPTABLE                         R24 K136 [{"gui"}]
      623 SETTABLEKS                       R16 R24 K135 ["gui"]
      625 DUPTABLE                         R25 K140 [{"StyleLink", "MainContainer", "Overlay"}]
      626 GETUPVAL                         R26 12
      627 GETTABLEKS                       R26 R26 K30 ["createElement"]
      629 LOADK                            R27 K137 ["StyleLink"]
      630 DUPTABLE                         R28 K142 [{"StyleSheet"}]
      631 SETTABLEKS                       R1 R28 K141 ["StyleSheet"]
      633 CALL                             R26 2 1
      634 SETTABLEKS                       R26 R25 K137 ["StyleLink"]
      636 SETTABLEKS                       R15 R25 K138 ["MainContainer"]
      638 GETUPVAL                         R26 12
      639 GETTABLEKS                       R26 R26 K30 ["createElement"]
      641 GETUPVAL                         R27 14
      642 DUPTABLE                         R28 K146 [{["tag"] = "size-full", ["ref"], ["ZIndex"] = 100}]
      643 SETTABLEKS                       R17 R28 K143 ["ref"]
      645 CALL                             R26 2 1
      646 SETTABLEKS                       R26 R25 K139 ["Overlay"]
      648 CALL                             R22 3 1
      649 SETTABLEKS                       R22 R21 K133 ["OverlayProviderWrapper"]
      651 CALL                             R18 3 -1
      652 RETURN                           R18 -1

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
      211 DUPTABLE                         R31 K49 [{["title"] = "CreateAnAvatarLook", ["description"] = "CreateAnAvatarLookDescription"}]
      212 SETTABLEKS                       R31 R30 K42 ["AvatarLook"]
      214 DUPTABLE                         R31 K52 [{["title"] = "CreateAMakeupLook", ["description"] = "CreateAMakeupLookDescription"}]
      215 SETTABLEKS                       R31 R30 K43 ["MakeupLook"]
      217 DUPCLOSURE                       R31 K53 [PROTO_0]
      218 CAPTURE                          VAL R29
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R23
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R27
      227 CAPTURE                          VAL R26
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R11
      230 CAPTURE                          VAL R1
      231 CAPTURE                          VAL R5
      232 CAPTURE                          VAL R3
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R16
      235 CAPTURE                          VAL R20
      236 CAPTURE                          VAL R18
      237 CAPTURE                          VAL R19
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R30
      240 CAPTURE                          VAL R13
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R17
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R6
      245 RETURN                           R31 1
