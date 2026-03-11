PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["dialogLookType"]
        5 JUMPIFNOTEQKS                    R1 K1 ["AvatarLook"] ; [+5]
        7 GETIMPORT                        R1 K3 [error]
        9 LOADK                            R2 K4 ["Avatar Looks are not enabled"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K5 ["use"]
       14 CALL                             R1 0 1
       15 NAMECALL                         R1 R1 K6 ["get"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 2
       19 NAMECALL                         R2 R2 K5 ["use"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R4 R0 K7 ["equippedItems"]
       25 CALL                             R3 1 2
       26 GETUPVAL                         R5 4
       27 CALL                             R5 0 1
       28 GETUPVAL                         R6 5
       29 CALL                             R6 0 1
       30 GETUPVAL                         R7 6
       31 DUPTABLE                         R8 K9 [{"equippedItems", "dialogLookType", "selectedCreatorId"}]
       32 GETTABLEKS                       R9 R0 K7 ["equippedItems"]
       34 SETTABLEKS                       R9 R8 K7 ["equippedItems"]
       36 GETTABLEKS                       R9 R0 K0 ["dialogLookType"]
       38 SETTABLEKS                       R9 R8 K0 ["dialogLookType"]
       40 GETTABLEKS                       R9 R6 K8 ["selectedCreatorId"]
       42 SETTABLEKS                       R9 R8 K8 ["selectedCreatorId"]
       44 CALL                             R7 1 1
       45 GETUPVAL                         R8 7
       46 DUPTABLE                         R9 K12 [{"dialogItems", "dialogLookType", "skinColor"}]
       47 GETTABLEKS                       R10 R7 K10 ["dialogItems"]
       49 SETTABLEKS                       R10 R9 K10 ["dialogItems"]
       51 GETTABLEKS                       R10 R0 K0 ["dialogLookType"]
       53 SETTABLEKS                       R10 R9 K0 ["dialogLookType"]
       55 SETTABLEKS                       R3 R9 K11 ["skinColor"]
       57 CALL                             R8 1 1
       58 GETUPVAL                         R9 8
       59 DUPTABLE                         R10 K15 [{"dialogItems", "dialogLookType", "skinColor", "selectedCreatorId", "name", "description"}]
       60 GETTABLEKS                       R11 R7 K10 ["dialogItems"]
       62 SETTABLEKS                       R11 R10 K10 ["dialogItems"]
       64 GETTABLEKS                       R11 R0 K0 ["dialogLookType"]
       66 SETTABLEKS                       R11 R10 K0 ["dialogLookType"]
       68 SETTABLEKS                       R3 R10 K11 ["skinColor"]
       70 GETTABLEKS                       R11 R6 K8 ["selectedCreatorId"]
       72 SETTABLEKS                       R11 R10 K8 ["selectedCreatorId"]
       74 GETTABLEKS                       R11 R5 K13 ["name"]
       76 SETTABLEKS                       R11 R10 K13 ["name"]
       78 GETTABLEKS                       R11 R5 K14 ["description"]
       80 SETTABLEKS                       R11 R10 K14 ["description"]
       82 CALL                             R9 1 1
       83 GETUPVAL                         R10 9
       84 DUPTABLE                         R11 K19 [{"previewErrorMessages", "validationErrorMessages", "dialogItems", "dialogLookType", "isDialogItemsInitialized"}]
       85 GETTABLEKS                       R12 R7 K16 ["previewErrorMessages"]
       87 SETTABLEKS                       R12 R11 K16 ["previewErrorMessages"]
       89 GETTABLEKS                       R12 R9 K20 ["lookValidationErrors"]
       91 SETTABLEKS                       R12 R11 K17 ["validationErrorMessages"]
       93 GETTABLEKS                       R12 R7 K10 ["dialogItems"]
       95 SETTABLEKS                       R12 R11 K10 ["dialogItems"]
       97 GETTABLEKS                       R12 R0 K0 ["dialogLookType"]
       99 SETTABLEKS                       R12 R11 K0 ["dialogLookType"]
      101 GETTABLEKS                       R12 R7 K18 ["isDialogItemsInitialized"]
      103 SETTABLEKS                       R12 R11 K18 ["isDialogItemsInitialized"]
      105 CALL                             R10 1 1
      106 GETUPVAL                         R11 10
      107 DUPTABLE                         R12 K25 [{"invalidMetadata", "hasBlockingError", "lookAsyncCallsState", "onClose"}]
      108 GETTABLEKS                       R13 R5 K21 ["invalidMetadata"]
      110 SETTABLEKS                       R13 R12 K21 ["invalidMetadata"]
      112 GETTABLEKS                       R13 R10 K22 ["hasBlockingError"]
      114 SETTABLEKS                       R13 R12 K22 ["hasBlockingError"]
      116 SETTABLEKS                       R9 R12 K23 ["lookAsyncCallsState"]
      118 GETTABLEKS                       R13 R0 K24 ["onClose"]
      120 SETTABLEKS                       R13 R12 K24 ["onClose"]
      122 CALL                             R11 1 1
      123 LOADNIL                          R12
      124 GETTABLEKS                       R13 R11 K26 ["dialogStage"]
      126 JUMPIFNOTEQKS                    R13 K27 ["ConfirmItems"] ; [+125]
      128 GETUPVAL                         R14 11
      129 GETTABLEKS                       R13 R14 K28 ["new"]
      131 CALL                             R13 0 1
      132 GETUPVAL                         R15 12
      133 GETTABLEKS                       R14 R15 K29 ["createElement"]
      135 GETUPVAL                         R15 13
      136 DUPTABLE                         R16 K32 [{"tag", "scroll"}]
      137 LOADK                            R17 K33 ["size-full"]
      138 SETTABLEKS                       R17 R16 K30 ["tag"]
      140 DUPTABLE                         R17 K35 [{"AutomaticCanvasSize"}]
      141 GETIMPORT                        R18 K39 [Enum.AutomaticSize.Y]
      143 SETTABLEKS                       R18 R17 K34 ["AutomaticCanvasSize"]
      145 SETTABLEKS                       R17 R16 K31 ["scroll"]
      147 DUPTABLE                         R17 K41 [{"StageContent"}]
      148 GETUPVAL                         R19 12
      149 GETTABLEKS                       R18 R19 K29 ["createElement"]
      151 GETUPVAL                         R19 14
      152 DUPTABLE                         R20 K42 [{"tag"}]
      153 LOADK                            R21 K43 ["col gap-medium size-full-0 auto-y padding-large"]
      154 SETTABLEKS                       R21 R20 K30 ["tag"]
      156 DUPTABLE                         R21 K46 [{"InfoEntry", "LookDetails"}]
      157 GETUPVAL                         R23 12
      158 GETTABLEKS                       R22 R23 K29 ["createElement"]
      160 GETUPVAL                         R23 15
      161 DUPTABLE                         R24 K54 [{"LayoutOrder", "selectedCreatorId", "creators", "onCreatorChanged", "isAvatarLook", "skinColor", "onSkinColorChanged", "bodyColor", "lookPreview", "dialogItems"}]
      162 NAMECALL                         R25 R13 K55 ["getNextOrder"]
      164 CALL                             R25 1 1
      165 SETTABLEKS                       R25 R24 K47 ["LayoutOrder"]
      167 GETTABLEKS                       R25 R6 K8 ["selectedCreatorId"]
      169 SETTABLEKS                       R25 R24 K8 ["selectedCreatorId"]
      171 GETTABLEKS                       R25 R6 K48 ["creators"]
      173 SETTABLEKS                       R25 R24 K48 ["creators"]
      175 GETTABLEKS                       R25 R6 K56 ["setSelectedCreatorId"]
      177 SETTABLEKS                       R25 R24 K49 ["onCreatorChanged"]
      179 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      181 JUMPIFEQKS                       R26 K1 ["AvatarLook"] ; [+2]
      183 LOADB                            R25 0 +1
      184 LOADB                            R25 1
      185 SETTABLEKS                       R25 R24 K50 ["isAvatarLook"]
      187 SETTABLEKS                       R3 R24 K11 ["skinColor"]
      189 SETTABLEKS                       R4 R24 K51 ["onSkinColorChanged"]
      191 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      193 JUMPIFNOTEQKS                    R26 K1 ["AvatarLook"] ; [+3]
      195 MOVE                             R25 R3
      196 JUMP                             ; [+1]
      197 LOADNIL                          R25
      198 SETTABLEKS                       R25 R24 K52 ["bodyColor"]
      200 GETTABLEKS                       R25 R8 K53 ["lookPreview"]
      202 SETTABLEKS                       R25 R24 K53 ["lookPreview"]
      204 GETTABLEKS                       R25 R7 K10 ["dialogItems"]
      206 SETTABLEKS                       R25 R24 K10 ["dialogItems"]
      208 CALL                             R22 2 1
      209 SETTABLEKS                       R22 R21 K44 ["InfoEntry"]
      211 GETUPVAL                         R23 12
      212 GETTABLEKS                       R22 R23 K29 ["createElement"]
      214 GETUPVAL                         R23 16
      215 DUPTABLE                         R24 K59 [{"LayoutOrder", "dialogItems", "setDialogItemRowState", "isAvatarLook", "skinColor", "lookType"}]
      216 NAMECALL                         R25 R13 K55 ["getNextOrder"]
      218 CALL                             R25 1 1
      219 SETTABLEKS                       R25 R24 K47 ["LayoutOrder"]
      221 GETTABLEKS                       R25 R7 K10 ["dialogItems"]
      223 SETTABLEKS                       R25 R24 K10 ["dialogItems"]
      225 GETTABLEKS                       R25 R7 K57 ["setDialogItemRowState"]
      227 SETTABLEKS                       R25 R24 K57 ["setDialogItemRowState"]
      229 GETTABLEKS                       R26 R0 K0 ["dialogLookType"]
      231 JUMPIFEQKS                       R26 K1 ["AvatarLook"] ; [+2]
      233 LOADB                            R25 0 +1
      234 LOADB                            R25 1
      235 SETTABLEKS                       R25 R24 K50 ["isAvatarLook"]
      237 SETTABLEKS                       R3 R24 K11 ["skinColor"]
      239 GETTABLEKS                       R25 R0 K0 ["dialogLookType"]
      241 SETTABLEKS                       R25 R24 K58 ["lookType"]
      243 CALL                             R22 2 1
      244 SETTABLEKS                       R22 R21 K45 ["LookDetails"]
      246 CALL                             R18 3 1
      247 SETTABLEKS                       R18 R17 K40 ["StageContent"]
      249 CALL                             R14 3 1
      250 MOVE                             R12 R14
      251 JUMP                             ; [+101]
      252 GETTABLEKS                       R13 R11 K26 ["dialogStage"]
      254 JUMPIFNOTEQKS                    R13 K60 ["EditInfo"] ; [+67]
      256 LOADNIL                          R13
      257 GETTABLEKS                       R14 R0 K0 ["dialogLookType"]
      259 JUMPIFNOTEQKS                    R14 K1 ["AvatarLook"] ; [+9]
      261 DUPTABLE                         R14 K61 [{"lookType", "bodyColor"}]
      262 LOADK                            R15 K1 ["AvatarLook"]
      263 SETTABLEKS                       R15 R14 K58 ["lookType"]
      265 SETTABLEKS                       R3 R14 K52 ["bodyColor"]
      267 MOVE                             R13 R14
      268 JUMP                             ; [+11]
      269 GETTABLEKS                       R14 R0 K0 ["dialogLookType"]
      271 JUMPIFNOTEQKS                    R14 K62 ["MakeupLook"] ; [+8]
      273 DUPTABLE                         R14 K63 [{"lookType", "skinColor"}]
      274 LOADK                            R15 K62 ["MakeupLook"]
      275 SETTABLEKS                       R15 R14 K58 ["lookType"]
      277 SETTABLEKS                       R3 R14 K11 ["skinColor"]
      279 MOVE                             R13 R14
      280 GETUPVAL                         R15 12
      281 GETTABLEKS                       R14 R15 K29 ["createElement"]
      283 GETUPVAL                         R15 14
      284 DUPTABLE                         R16 K42 [{"tag"}]
      285 LOADK                            R17 K33 ["size-full"]
      286 SETTABLEKS                       R17 R16 K30 ["tag"]
      288 DUPTABLE                         R17 K41 [{"StageContent"}]
      289 GETUPVAL                         R19 12
      290 GETTABLEKS                       R18 R19 K29 ["createElement"]
      292 GETUPVAL                         R19 17
      293 DUPTABLE                         R20 K67 [{"name", "description", "onNameChanged", "onDescriptionChanged", "lookPreviewInfo", "lookPreview"}]
      294 GETTABLEKS                       R21 R5 K13 ["name"]
      296 SETTABLEKS                       R21 R20 K13 ["name"]
      298 GETTABLEKS                       R21 R5 K14 ["description"]
      300 SETTABLEKS                       R21 R20 K14 ["description"]
      302 GETTABLEKS                       R21 R5 K68 ["setName"]
      304 SETTABLEKS                       R21 R20 K64 ["onNameChanged"]
      306 GETTABLEKS                       R21 R5 K69 ["setDescription"]
      308 SETTABLEKS                       R21 R20 K65 ["onDescriptionChanged"]
      310 SETTABLEKS                       R13 R20 K66 ["lookPreviewInfo"]
      312 GETTABLEKS                       R21 R8 K53 ["lookPreview"]
      314 SETTABLEKS                       R21 R20 K53 ["lookPreview"]
      316 CALL                             R18 2 1
      317 SETTABLEKS                       R18 R17 K40 ["StageContent"]
      319 CALL                             R14 3 1
      320 MOVE                             R12 R14
      321 JUMP                             ; [+31]
      322 GETTABLEKS                       R13 R11 K26 ["dialogStage"]
      324 JUMPIFNOTEQKS                    R13 K70 ["Success"] ; [+13]
      326 GETUPVAL                         R14 12
      327 GETTABLEKS                       R13 R14 K29 ["createElement"]
      329 GETUPVAL                         R14 18
      330 DUPTABLE                         R15 K71 [{"lookPreview"}]
      331 GETTABLEKS                       R16 R8 K53 ["lookPreview"]
      333 SETTABLEKS                       R16 R15 K53 ["lookPreview"]
      335 CALL                             R13 2 1
      336 MOVE                             R12 R13
      337 JUMP                             ; [+15]
      338 GETTABLEKS                       R13 R11 K26 ["dialogStage"]
      340 JUMPIFNOTEQKS                    R13 K72 ["Failure"] ; [+12]
      342 GETUPVAL                         R14 12
      343 GETTABLEKS                       R13 R14 K29 ["createElement"]
      345 GETUPVAL                         R14 19
      346 DUPTABLE                         R15 K74 [{"errorMessage"}]
      347 GETTABLEKS                       R16 R9 K75 ["lookCreationErrorMessage"]
      349 SETTABLEKS                       R16 R15 K73 ["errorMessage"]
      351 CALL                             R13 2 1
      352 MOVE                             R12 R13
      353 GETUPVAL                         R14 11
      354 GETTABLEKS                       R13 R14 K28 ["new"]
      356 CALL                             R13 0 1
      357 GETUPVAL                         R15 11
      358 GETTABLEKS                       R14 R15 K28 ["new"]
      360 CALL                             R14 0 1
      361 GETUPVAL                         R16 12
      362 GETTABLEKS                       R15 R16 K29 ["createElement"]
      364 GETUPVAL                         R16 14
      365 DUPTABLE                         R17 K42 [{"tag"}]
      366 LOADK                            R18 K76 ["col size-full"]
      367 SETTABLEKS                       R18 R17 K30 ["tag"]
      369 DUPTABLE                         R18 K80 [{"Header", "StageContentWrapper", "BottomBar"}]
      370 GETUPVAL                         R20 12
      371 GETTABLEKS                       R19 R20 K29 ["createElement"]
      373 GETUPVAL                         R20 14
      374 DUPTABLE                         R21 K81 [{"tag", "LayoutOrder"}]
      375 LOADK                            R22 K82 ["col align-x-left align-y-top size-full-0 auto-y gap-medium padding-large"]
      376 SETTABLEKS                       R22 R21 K30 ["tag"]
      378 NAMECALL                         R22 R13 K55 ["getNextOrder"]
      380 CALL                             R22 1 1
      381 SETTABLEKS                       R22 R21 K47 ["LayoutOrder"]
      383 DUPTABLE                         R22 K87 [{"Title", "Description", "StageInfoBarWrapper", "ErrorBannerWrapper"}]
      384 GETUPVAL                         R24 12
      385 GETTABLEKS                       R23 R24 K29 ["createElement"]
      387 GETUPVAL                         R24 20
      388 DUPTABLE                         R25 K89 [{"Text", "tag", "LayoutOrder"}]
      389 LOADK                            R28 K90 ["LookComposerDialog"]
      390 GETUPVAL                         R31 21
      391 GETTABLEKS                       R32 R0 K0 ["dialogLookType"]
      393 GETTABLE                         R30 R31 R32
      394 GETTABLEKS                       R29 R30 K91 ["title"]
      396 NAMECALL                         R26 R2 K92 ["getText"]
      398 CALL                             R26 3 1
      399 SETTABLEKS                       R26 R25 K88 ["Text"]
      401 LOADK                            R26 K93 ["text-heading-small auto-xy content-default"]
      402 SETTABLEKS                       R26 R25 K30 ["tag"]
      404 NAMECALL                         R26 R14 K55 ["getNextOrder"]
      406 CALL                             R26 1 1
      407 SETTABLEKS                       R26 R25 K47 ["LayoutOrder"]
      409 CALL                             R23 2 1
      410 SETTABLEKS                       R23 R22 K83 ["Title"]
      412 GETTABLEKS                       R24 R11 K26 ["dialogStage"]
      414 JUMPIFEQKS                       R24 K27 ["ConfirmItems"] ; [+5]
      416 GETTABLEKS                       R24 R11 K26 ["dialogStage"]
      418 JUMPIFNOTEQKS                    R24 K60 ["EditInfo"] ; [+28]
      420 GETUPVAL                         R24 12
      421 GETTABLEKS                       R23 R24 K29 ["createElement"]
      423 GETUPVAL                         R24 20
      424 DUPTABLE                         R25 K89 [{"Text", "tag", "LayoutOrder"}]
      425 LOADK                            R28 K90 ["LookComposerDialog"]
      426 GETUPVAL                         R31 21
      427 GETTABLEKS                       R32 R0 K0 ["dialogLookType"]
      429 GETTABLE                         R30 R31 R32
      430 GETTABLEKS                       R29 R30 K14 ["description"]
      432 NAMECALL                         R26 R2 K92 ["getText"]
      434 CALL                             R26 3 1
      435 SETTABLEKS                       R26 R25 K88 ["Text"]
      437 LOADK                            R26 K94 ["text-body-medium auto-xy content-default"]
      438 SETTABLEKS                       R26 R25 K30 ["tag"]
      440 NAMECALL                         R26 R14 K55 ["getNextOrder"]
      442 CALL                             R26 1 1
      443 SETTABLEKS                       R26 R25 K47 ["LayoutOrder"]
      445 CALL                             R23 2 1
      446 JUMP                             ; [+1]
      447 LOADNIL                          R23
      448 SETTABLEKS                       R23 R22 K84 ["Description"]
      450 GETTABLEKS                       R24 R11 K26 ["dialogStage"]
      452 JUMPIFEQKS                       R24 K27 ["ConfirmItems"] ; [+5]
      454 GETTABLEKS                       R24 R11 K26 ["dialogStage"]
      456 JUMPIFNOTEQKS                    R24 K60 ["EditInfo"] ; [+29]
      458 GETUPVAL                         R24 12
      459 GETTABLEKS                       R23 R24 K29 ["createElement"]
      461 GETUPVAL                         R24 14
      462 DUPTABLE                         R25 K81 [{"tag", "LayoutOrder"}]
      463 LOADK                            R26 K95 ["size-full-0 auto-y padding-top-xlarge"]
      464 SETTABLEKS                       R26 R25 K30 ["tag"]
      466 NAMECALL                         R26 R14 K55 ["getNextOrder"]
      468 CALL                             R26 1 1
      469 SETTABLEKS                       R26 R25 K47 ["LayoutOrder"]
      471 DUPTABLE                         R26 K97 [{"StageInfoBar"}]
      472 GETUPVAL                         R28 12
      473 GETTABLEKS                       R27 R28 K29 ["createElement"]
      475 GETUPVAL                         R28 22
      476 DUPTABLE                         R29 K98 [{"dialogStage"}]
      477 GETTABLEKS                       R30 R11 K26 ["dialogStage"]
      479 SETTABLEKS                       R30 R29 K26 ["dialogStage"]
      481 CALL                             R27 2 1
      482 SETTABLEKS                       R27 R26 K96 ["StageInfoBar"]
      484 CALL                             R23 3 1
      485 JUMP                             ; [+1]
      486 LOADNIL                          R23
      487 SETTABLEKS                       R23 R22 K85 ["StageInfoBarWrapper"]
      489 GETTABLEKS                       R24 R11 K26 ["dialogStage"]
      491 JUMPIFNOTEQKS                    R24 K27 ["ConfirmItems"] ; [+33]
      493 GETUPVAL                         R24 12
      494 GETTABLEKS                       R23 R24 K29 ["createElement"]
      496 GETUPVAL                         R24 14
      497 DUPTABLE                         R25 K81 [{"tag", "LayoutOrder"}]
      498 LOADK                            R26 K99 ["size-full-0 auto-y padding-top-medium"]
      499 SETTABLEKS                       R26 R25 K30 ["tag"]
      501 NAMECALL                         R26 R14 K55 ["getNextOrder"]
      503 CALL                             R26 1 1
      504 SETTABLEKS                       R26 R25 K47 ["LayoutOrder"]
      506 DUPTABLE                         R26 K101 [{"ErrorBanner"}]
      507 GETUPVAL                         R28 12
      508 GETTABLEKS                       R27 R28 K29 ["createElement"]
      510 GETUPVAL                         R28 23
      511 DUPTABLE                         R29 K103 [{"errors", "hasBlockingError"}]
      512 GETTABLEKS                       R30 R10 K104 ["errorBannerMessages"]
      514 SETTABLEKS                       R30 R29 K102 ["errors"]
      516 GETTABLEKS                       R30 R10 K22 ["hasBlockingError"]
      518 SETTABLEKS                       R30 R29 K22 ["hasBlockingError"]
      520 CALL                             R27 2 1
      521 SETTABLEKS                       R27 R26 K100 ["ErrorBanner"]
      523 CALL                             R23 3 1
      524 JUMP                             ; [+1]
      525 LOADNIL                          R23
      526 SETTABLEKS                       R23 R22 K86 ["ErrorBannerWrapper"]
      528 CALL                             R19 3 1
      529 SETTABLEKS                       R19 R18 K77 ["Header"]
      531 GETUPVAL                         R20 12
      532 GETTABLEKS                       R19 R20 K29 ["createElement"]
      534 GETUPVAL                         R20 14
      535 DUPTABLE                         R21 K81 [{"tag", "LayoutOrder"}]
      536 LOADK                            R22 K105 ["size-full-0 grow"]
      537 SETTABLEKS                       R22 R21 K30 ["tag"]
      539 NAMECALL                         R22 R13 K55 ["getNextOrder"]
      541 CALL                             R22 1 1
      542 SETTABLEKS                       R22 R21 K47 ["LayoutOrder"]
      544 DUPTABLE                         R22 K41 [{"StageContent"}]
      545 SETTABLEKS                       R12 R22 K40 ["StageContent"]
      547 CALL                             R19 3 1
      548 SETTABLEKS                       R19 R18 K78 ["StageContentWrapper"]
      550 GETUPVAL                         R20 12
      551 GETTABLEKS                       R19 R20 K29 ["createElement"]
      553 GETUPVAL                         R20 24
      554 DUPTABLE                         R21 K110 [{"LayoutOrder", "onForward", "onBack", "dialogStage", "isForwardDisabled", "isBackDisabled"}]
      555 NAMECALL                         R22 R13 K55 ["getNextOrder"]
      557 CALL                             R22 1 1
      558 SETTABLEKS                       R22 R21 K47 ["LayoutOrder"]
      560 GETTABLEKS                       R22 R11 K106 ["onForward"]
      562 SETTABLEKS                       R22 R21 K106 ["onForward"]
      564 GETTABLEKS                       R22 R11 K107 ["onBack"]
      566 SETTABLEKS                       R22 R21 K107 ["onBack"]
      568 GETTABLEKS                       R22 R11 K26 ["dialogStage"]
      570 SETTABLEKS                       R22 R21 K26 ["dialogStage"]
      572 GETTABLEKS                       R22 R11 K108 ["isForwardDisabled"]
      574 SETTABLEKS                       R22 R21 K108 ["isForwardDisabled"]
      576 GETTABLEKS                       R22 R11 K109 ["isBackDisabled"]
      578 SETTABLEKS                       R22 R21 K109 ["isBackDisabled"]
      580 CALL                             R19 2 1
      581 SETTABLEKS                       R19 R18 K79 ["BottomBar"]
      583 CALL                             R15 3 1
      584 GETUPVAL                         R17 12
      585 GETTABLEKS                       R16 R17 K111 ["useState"]
      587 LOADNIL                          R17
      588 CALL                             R16 1 2
      589 GETUPVAL                         R19 12
      590 GETTABLEKS                       R18 R19 K29 ["createElement"]
      592 GETUPVAL                         R20 25
      593 GETTABLEKS                       R19 R20 K112 ["Dialog"]
      595 DUPTABLE                         R20 K120 [{"Title", "MinContentSize", "Size", "MinSize", "Modal", "OnClose", "Enabled", "Resizable"}]
      596 LOADK                            R21 K121 [""]
      597 SETTABLEKS                       R21 R20 K83 ["Title"]
      599 GETIMPORT                        R21 K123 [Vector2.new]
      601 LOADN                            R22 32
      602 LOADN                            R23 88
      603 CALL                             R21 2 1
      604 SETTABLEKS                       R21 R20 K113 ["MinContentSize"]
      606 GETIMPORT                        R21 K123 [Vector2.new]
      608 LOADN                            R22 32
      609 LOADN                            R23 88
      610 CALL                             R21 2 1
      611 SETTABLEKS                       R21 R20 K114 ["Size"]
      613 GETIMPORT                        R21 K123 [Vector2.new]
      615 LOADN                            R22 32
      616 LOADN                            R23 88
      617 CALL                             R21 2 1
      618 SETTABLEKS                       R21 R20 K115 ["MinSize"]
      620 LOADB                            R21 1
      621 SETTABLEKS                       R21 R20 K116 ["Modal"]
      623 GETTABLEKS                       R21 R0 K24 ["onClose"]
      625 SETTABLEKS                       R21 R20 K117 ["OnClose"]
      627 LOADB                            R21 1
      628 SETTABLEKS                       R21 R20 K118 ["Enabled"]
      630 LOADB                            R21 1
      631 SETTABLEKS                       R21 R20 K119 ["Resizable"]
      633 DUPTABLE                         R21 K125 [{"OverlayProviderWrapper"}]
      634 GETUPVAL                         R23 12
      635 GETTABLEKS                       R22 R23 K29 ["createElement"]
      637 GETUPVAL                         R23 26
      638 DUPTABLE                         R24 K127 [{"gui"}]
      639 SETTABLEKS                       R16 R24 K126 ["gui"]
      641 DUPTABLE                         R25 K131 [{"StyleLink", "MainContainer", "Overlay"}]
      642 GETUPVAL                         R27 12
      643 GETTABLEKS                       R26 R27 K29 ["createElement"]
      645 LOADK                            R27 K128 ["StyleLink"]
      646 DUPTABLE                         R28 K133 [{"StyleSheet"}]
      647 SETTABLEKS                       R1 R28 K132 ["StyleSheet"]
      649 CALL                             R26 2 1
      650 SETTABLEKS                       R26 R25 K128 ["StyleLink"]
      652 SETTABLEKS                       R15 R25 K129 ["MainContainer"]
      654 GETUPVAL                         R27 12
      655 GETTABLEKS                       R26 R27 K29 ["createElement"]
      657 GETUPVAL                         R27 14
      658 DUPTABLE                         R28 K136 [{"tag", "ref", "ZIndex"}]
      659 LOADK                            R29 K33 ["size-full"]
      660 SETTABLEKS                       R29 R28 K30 ["tag"]
      662 SETTABLEKS                       R17 R28 K134 ["ref"]
      664 LOADN                            R29 100
      665 SETTABLEKS                       R29 R28 K135 ["ZIndex"]
      667 CALL                             R26 2 1
      668 SETTABLEKS                       R26 R25 K130 ["Overlay"]
      670 CALL                             R22 3 1
      671 SETTABLEKS                       R22 R21 K124 ["OverlayProviderWrapper"]
      673 CALL                             R18 3 -1
      674 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["ScrollView"]
       27 GETTABLEKS                       R6 R2 K12 ["OverlayProvider"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R9 R0 K6 ["Packages"]
       33 GETTABLEKS                       R8 R9 K13 ["Framework"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R8 R7 K14 ["UI"]
       38 GETTABLEKS                       R10 R7 K15 ["ContextServices"]
       40 GETTABLEKS                       R9 R10 K16 ["Localization"]
       42 GETTABLEKS                       R11 R7 K15 ["ContextServices"]
       44 GETTABLEKS                       R10 R11 K17 ["Design"]
       46 GETTABLEKS                       R12 R7 K18 ["Util"]
       48 GETTABLEKS                       R11 R12 K19 ["LayoutOrderIterator"]
       50 GETIMPORT                        R12 K5 [require]
       52 GETTABLEKS                       R14 R0 K20 ["Src"]
       54 GETTABLEKS                       R13 R14 K21 ["Types"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K5 [require]
       59 GETIMPORT                        R15 K1 [script]
       61 GETTABLEKS                       R14 R15 K22 ["StageInfoBar"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETIMPORT                        R16 K1 [script]
       68 GETTABLEKS                       R15 R16 K23 ["ErrorBanner"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K5 [require]
       73 GETIMPORT                        R17 K1 [script]
       75 GETTABLEKS                       R16 R17 K24 ["InfoEntryContainer"]
       77 CALL                             R15 1 1
       78 GETIMPORT                        R16 K5 [require]
       80 GETIMPORT                        R18 K1 [script]
       82 GETTABLEKS                       R17 R18 K25 ["LookDetailsList"]
       84 CALL                             R16 1 1
       85 GETIMPORT                        R17 K5 [require]
       87 GETIMPORT                        R19 K1 [script]
       89 GETTABLEKS                       R18 R19 K26 ["LookComposerBottomBar"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K5 [require]
       94 GETIMPORT                        R20 K1 [script]
       96 GETTABLEKS                       R19 R20 K27 ["SuccessPage"]
       98 CALL                             R18 1 1
       99 GETIMPORT                        R19 K5 [require]
      101 GETIMPORT                        R21 K1 [script]
      103 GETTABLEKS                       R20 R21 K28 ["FailurePage"]
      105 CALL                             R19 1 1
      106 GETIMPORT                        R20 K5 [require]
      108 GETIMPORT                        R22 K1 [script]
      110 GETTABLEKS                       R21 R22 K29 ["EditInfoPage"]
      112 CALL                             R20 1 1
      113 GETIMPORT                        R21 K5 [require]
      115 GETTABLEKS                       R25 R0 K20 ["Src"]
      117 GETTABLEKS                       R24 R25 K30 ["Components"]
      119 GETTABLEKS                       R23 R24 K31 ["LookComposerDialog"]
      121 GETTABLEKS                       R22 R23 K32 ["useLookSkinColor"]
      123 CALL                             R21 1 1
      124 GETIMPORT                        R22 K5 [require]
      126 GETTABLEKS                       R26 R0 K20 ["Src"]
      128 GETTABLEKS                       R25 R26 K30 ["Components"]
      130 GETTABLEKS                       R24 R25 K31 ["LookComposerDialog"]
      132 GETTABLEKS                       R23 R24 K33 ["useLookMetadata"]
      134 CALL                             R22 1 1
      135 GETIMPORT                        R23 K5 [require]
      137 GETTABLEKS                       R27 R0 K20 ["Src"]
      139 GETTABLEKS                       R26 R27 K30 ["Components"]
      141 GETTABLEKS                       R25 R26 K31 ["LookComposerDialog"]
      143 GETTABLEKS                       R24 R25 K34 ["useLookCreator"]
      145 CALL                             R23 1 1
      146 GETIMPORT                        R24 K5 [require]
      148 GETTABLEKS                       R28 R0 K20 ["Src"]
      150 GETTABLEKS                       R27 R28 K30 ["Components"]
      152 GETTABLEKS                       R26 R27 K31 ["LookComposerDialog"]
      154 GETTABLEKS                       R25 R26 K35 ["useLookDialogItems"]
      156 CALL                             R24 1 1
      157 GETIMPORT                        R25 K5 [require]
      159 GETTABLEKS                       R29 R0 K20 ["Src"]
      161 GETTABLEKS                       R28 R29 K30 ["Components"]
      163 GETTABLEKS                       R27 R28 K31 ["LookComposerDialog"]
      165 GETTABLEKS                       R26 R27 K36 ["useLookPreview"]
      167 CALL                             R25 1 1
      168 GETIMPORT                        R26 K5 [require]
      170 GETTABLEKS                       R30 R0 K20 ["Src"]
      172 GETTABLEKS                       R29 R30 K30 ["Components"]
      174 GETTABLEKS                       R28 R29 K31 ["LookComposerDialog"]
      176 GETTABLEKS                       R27 R28 K37 ["useLookErrors"]
      178 CALL                             R26 1 1
      179 GETIMPORT                        R27 K5 [require]
      181 GETTABLEKS                       R31 R0 K20 ["Src"]
      183 GETTABLEKS                       R30 R31 K30 ["Components"]
      185 GETTABLEKS                       R29 R30 K31 ["LookComposerDialog"]
      187 GETTABLEKS                       R28 R29 K38 ["useAsyncLookCreationCalls"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K5 [require]
      192 GETTABLEKS                       R32 R0 K20 ["Src"]
      194 GETTABLEKS                       R31 R32 K30 ["Components"]
      196 GETTABLEKS                       R30 R31 K31 ["LookComposerDialog"]
      198 GETTABLEKS                       R29 R30 K39 ["useLookDialogStageManager"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETTABLEKS                       R32 R0 K20 ["Src"]
      205 GETTABLEKS                       R31 R32 K40 ["Flags"]
      207 GETTABLEKS                       R30 R31 K41 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
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
