PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Writable"]
        6 GETTABLEKS                       R4 R1 K3 ["SelectedPillKey"]
        8 JUMPIFNOTEQKS                    R4 K4 ["EarlyTesters"] ; [+14]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K5 ["createElement"]
       13 GETUPVAL                         R5 1
       14 DUPTABLE                         R6 K7 [{"LayoutOrder", "Localization"}]
       15 SETTABLEKS                       R2 R6 K1 ["LayoutOrder"]
       17 GETTABLEKS                       R7 R1 K6 ["Localization"]
       19 SETTABLEKS                       R7 R6 K6 ["Localization"]
       21 CALL                             R4 2 -1
       22 RETURN                           R4 -1
       23 GETTABLEKS                       R4 R1 K8 ["NewUserCollaborators"]
       25 GETTABLEKS                       R5 R1 K9 ["CurrentUserCollaborators"]
       27 GETTABLEKS                       R6 R1 K10 ["NewGroupCollaborators"]
       29 GETTABLEKS                       R7 R1 K11 ["CurrentGroupCollaborators"]
       31 GETTABLEKS                       R8 R1 K12 ["OwnerId"]
       33 GETTABLEKS                       R9 R1 K13 ["OwnerType"]
       35 GETUPVAL                         R11 2
       36 JUMPIFNOT                        R11 ; [+3]
       37 GETTABLEKS                       R10 R1 K14 ["IsGroupGame"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R10
       41 NEWTABLE                         R11 0 0
       43 JUMPIFNOT                        R8 ; [+1]
       44 JUMPIF                           R9 ; [+2]
       45 LOADNIL                          R12
       46 RETURN                           R12 1
       47 GETUPVAL                         R12 3
       48 GETTABLEKS                       R12 R12 K15 ["new"]
       50 CALL                             R12 0 1
       51 GETUPVAL                         R14 4
       52 GETTABLEKS                       R14 R14 K16 ["fflagManageCollaboratorsActionNeededLabel"]
       54 JUMPIFNOT                        R14 ; [+3]
       55 GETTABLEKS                       R13 R1 K17 ["CanCollaborateResponses"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R13
       59 GETUPVAL                         R15 4
       60 GETTABLEKS                       R15 R15 K18 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       62 JUMPIF                           R15 ; [+4]
       63 GETUPVAL                         R15 4
       64 GETTABLEKS                       R15 R15 K19 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       66 JUMPIFNOT                        R15 ; [+3]
       67 GETTABLEKS                       R14 R1 K20 ["DisableEditPermission"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R14
       71 GETTABLEKS                       R15 R1 K21 ["ActiveTab"]
       73 GETUPVAL                         R16 5
       74 GETTABLEKS                       R17 R1 K14 ["IsGroupGame"]
       76 CALL                             R16 1 1
       77 MOVE                             R17 R16
       78 JUMPIFNOT                        R17 ; [+7]
       79 GETUPVAL                         R18 6
       80 GETTABLEKS                       R18 R18 K22 ["AUDIENCE_TAB_EARLY_TESTERS"]
       82 JUMPIFEQ                         R15 R18 ; [+2]
       84 LOADB                            R17 0 +1
       85 LOADB                            R17 1
       86 GETTABLEKS                       R18 R1 K23 ["ShowOwner"]
       88 JUMPIFNOT                        R18 ; [+37]
       89 GETIMPORT                        R19 K27 [Enum.CreatorType.User]
       91 JUMPIFNOTEQ                      R9 R19 ; [+3]
       93 LOADB                            R18 1
       94 JUMP                             ; [+1]
       95 LOADB                            R18 0
       96 JUMPIFNOT                        R18 ; [+2]
       97 GETUPVAL                         R19 7
       98 JUMP                             ; [+1]
       99 GETUPVAL                         R19 8
      100 GETUPVAL                         R20 0
      101 GETTABLEKS                       R20 R20 K5 ["createElement"]
      103 MOVE                             R21 R19
      104 DUPTABLE                         R22 K31 [{["Id"], ["Writable"], ["LayoutOrder"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
      105 SETTABLEKS                       R8 R22 K28 ["Id"]
      107 SETTABLEKS                       R3 R22 K2 ["Writable"]
      109 NAMECALL                         R23 R12 K32 ["getNextOrder"]
      111 CALL                             R23 1 1
      112 SETTABLEKS                       R23 R22 K1 ["LayoutOrder"]
      114 SETTABLEKS                       R10 R22 K14 ["IsGroupGame"]
      116 SETTABLEKS                       R14 R22 K20 ["DisableEditPermission"]
      118 CALL                             R20 2 1
      119 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      121 MOVE                             R22 R11
      122 MOVE                             R23 R20
      123 GETIMPORT                        R21 K35 [table.insert]
      125 CALL                             R21 2 0
      126 GETTABLEKS                       R18 R1 K36 ["GranularCollaborators"]
      128 LOADNIL                          R19
      129 LOADNIL                          R20
      130 FORGPREP                         R18
      131 GETUPVAL                         R23 0
      132 GETTABLEKS                       R23 R23 K5 ["createElement"]
      134 GETUPVAL                         R24 9
      135 DUPTABLE                         R25 K37 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["DisableEditPermission"]}]
      136 NAMECALL                         R26 R12 K32 ["getNextOrder"]
      138 CALL                             R26 1 1
      139 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      141 SETTABLEKS                       R3 R25 K2 ["Writable"]
      143 SETTABLEKS                       R22 R25 K28 ["Id"]
      145 SETTABLEKS                       R14 R25 K20 ["DisableEditPermission"]
      147 CALL                             R23 2 1
      148 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      150 MOVE                             R25 R11
      151 MOVE                             R26 R23
      152 GETIMPORT                        R24 K35 [table.insert]
      154 CALL                             R24 2 0
      155 FORGLOOP                         R18 2 ; [-25]
      157 MOVE                             R18 R4
      158 LOADNIL                          R19
      159 LOADNIL                          R20
      160 FORGPREP                         R18
      161 MOVE                             R23 R13
      162 JUMPIFNOT                        R23 ; [+1]
      163 GETTABLE                         R23 R13 R22
      164 GETUPVAL                         R24 0
      165 GETTABLEKS                       R24 R24 K5 ["createElement"]
      167 GETUPVAL                         R25 7
      168 DUPTABLE                         R26 K40 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["IsGroupGame"], ["CanCollaborateResponse"], ["CanCollaborateErrorEnum"], ["DisableEditPermission"]}]
      169 NAMECALL                         R27 R12 K32 ["getNextOrder"]
      171 CALL                             R27 1 1
      172 SETTABLEKS                       R27 R26 K1 ["LayoutOrder"]
      174 SETTABLEKS                       R3 R26 K2 ["Writable"]
      176 SETTABLEKS                       R22 R26 K28 ["Id"]
      178 SETTABLEKS                       R10 R26 K14 ["IsGroupGame"]
      180 GETUPVAL                         R28 4
      181 GETTABLEKS                       R28 R28 K16 ["fflagManageCollaboratorsActionNeededLabel"]
      183 JUMPIFNOT                        R28 ; [+5]
      184 MOVE                             R27 R23
      185 JUMPIFNOT                        R27 ; [+4]
      186 GETTABLEKS                       R27 R23 K41 ["canCollaborate"]
      188 JUMP                             ; [+1]
      189 LOADNIL                          R27
      190 SETTABLEKS                       R27 R26 K38 ["CanCollaborateResponse"]
      192 GETUPVAL                         R28 4
      193 GETTABLEKS                       R28 R28 K18 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      195 JUMPIFNOT                        R28 ; [+5]
      196 MOVE                             R27 R23
      197 JUMPIFNOT                        R27 ; [+4]
      198 GETTABLEKS                       R27 R23 K42 ["error"]
      200 JUMP                             ; [+1]
      201 LOADNIL                          R27
      202 SETTABLEKS                       R27 R26 K39 ["CanCollaborateErrorEnum"]
      204 SETTABLEKS                       R14 R26 K20 ["DisableEditPermission"]
      206 CALL                             R24 2 1
      207 FASTCALL2                        TABLE_INSERT R11 R24 ; [+5]
      209 MOVE                             R26 R11
      210 MOVE                             R27 R24
      211 GETIMPORT                        R25 K35 [table.insert]
      213 CALL                             R25 2 0
      214 FORGLOOP                         R18 2 ; [-54]
      216 MOVE                             R18 R6
      217 LOADNIL                          R19
      218 LOADNIL                          R20
      219 FORGPREP                         R18
      220 GETUPVAL                         R23 0
      221 GETTABLEKS                       R23 R23 K5 ["createElement"]
      223 GETUPVAL                         R24 8
      224 DUPTABLE                         R25 K44 [{["LayoutOrder"], ["Writable"], ["Id"], ["CurrentPermission"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
      225 NAMECALL                         R26 R12 K32 ["getNextOrder"]
      227 CALL                             R26 1 1
      228 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      230 SETTABLEKS                       R3 R25 K2 ["Writable"]
      232 SETTABLEKS                       R22 R25 K28 ["Id"]
      234 GETUPVAL                         R26 10
      235 GETTABLEKS                       R26 R26 K45 ["MultipleKey"]
      237 SETTABLEKS                       R26 R25 K43 ["CurrentPermission"]
      239 SETTABLEKS                       R10 R25 K14 ["IsGroupGame"]
      241 SETTABLEKS                       R14 R25 K20 ["DisableEditPermission"]
      243 CALL                             R23 2 1
      244 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      246 MOVE                             R25 R11
      247 MOVE                             R26 R23
      248 GETIMPORT                        R24 K35 [table.insert]
      250 CALL                             R24 2 0
      251 FORGLOOP                         R18 2 ; [-32]
      253 MOVE                             R18 R5
      254 LOADNIL                          R19
      255 LOADNIL                          R20
      256 FORGPREP                         R18
      257 MOVE                             R23 R13
      258 JUMPIFNOT                        R23 ; [+1]
      259 GETTABLE                         R23 R13 R22
      260 GETUPVAL                         R24 0
      261 GETTABLEKS                       R24 R24 K5 ["createElement"]
      263 GETUPVAL                         R25 7
      264 DUPTABLE                         R26 K40 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["IsGroupGame"], ["CanCollaborateResponse"], ["CanCollaborateErrorEnum"], ["DisableEditPermission"]}]
      265 NAMECALL                         R27 R12 K32 ["getNextOrder"]
      267 CALL                             R27 1 1
      268 SETTABLEKS                       R27 R26 K1 ["LayoutOrder"]
      270 SETTABLEKS                       R3 R26 K2 ["Writable"]
      272 SETTABLEKS                       R22 R26 K28 ["Id"]
      274 SETTABLEKS                       R10 R26 K14 ["IsGroupGame"]
      276 GETUPVAL                         R28 4
      277 GETTABLEKS                       R28 R28 K16 ["fflagManageCollaboratorsActionNeededLabel"]
      279 JUMPIFNOT                        R28 ; [+5]
      280 MOVE                             R27 R23
      281 JUMPIFNOT                        R27 ; [+4]
      282 GETTABLEKS                       R27 R23 K41 ["canCollaborate"]
      284 JUMP                             ; [+1]
      285 LOADNIL                          R27
      286 SETTABLEKS                       R27 R26 K38 ["CanCollaborateResponse"]
      288 GETUPVAL                         R28 4
      289 GETTABLEKS                       R28 R28 K18 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      291 JUMPIFNOT                        R28 ; [+5]
      292 MOVE                             R27 R23
      293 JUMPIFNOT                        R27 ; [+4]
      294 GETTABLEKS                       R27 R23 K42 ["error"]
      296 JUMP                             ; [+1]
      297 LOADNIL                          R27
      298 SETTABLEKS                       R27 R26 K39 ["CanCollaborateErrorEnum"]
      300 SETTABLEKS                       R14 R26 K20 ["DisableEditPermission"]
      302 CALL                             R24 2 1
      303 FASTCALL2                        TABLE_INSERT R11 R24 ; [+5]
      305 MOVE                             R26 R11
      306 MOVE                             R27 R24
      307 GETIMPORT                        R25 K35 [table.insert]
      309 CALL                             R25 2 0
      310 FORGLOOP                         R18 2 ; [-54]
      312 MOVE                             R18 R7
      313 LOADNIL                          R19
      314 LOADNIL                          R20
      315 FORGPREP                         R18
      316 GETUPVAL                         R23 0
      317 GETTABLEKS                       R23 R23 K5 ["createElement"]
      319 GETUPVAL                         R24 8
      320 DUPTABLE                         R25 K44 [{["LayoutOrder"], ["Writable"], ["Id"], ["CurrentPermission"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
      321 NAMECALL                         R26 R12 K32 ["getNextOrder"]
      323 CALL                             R26 1 1
      324 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      326 SETTABLEKS                       R3 R25 K2 ["Writable"]
      328 SETTABLEKS                       R22 R25 K28 ["Id"]
      330 GETUPVAL                         R26 10
      331 GETTABLEKS                       R26 R26 K45 ["MultipleKey"]
      333 SETTABLEKS                       R26 R25 K43 ["CurrentPermission"]
      335 SETTABLEKS                       R10 R25 K14 ["IsGroupGame"]
      337 SETTABLEKS                       R14 R25 K20 ["DisableEditPermission"]
      339 CALL                             R23 2 1
      340 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      342 MOVE                             R25 R11
      343 MOVE                             R26 R23
      344 GETIMPORT                        R24 K35 [table.insert]
      346 CALL                             R24 2 0
      347 FORGLOOP                         R18 2 ; [-32]
      349 JUMPIFNOT                        R17 ; [+29]
      350 GETTABLEKS                       R18 R1 K46 ["PendingPlayTesters"]
      352 LOADNIL                          R19
      353 LOADNIL                          R20
      354 FORGPREP                         R18
      355 GETUPVAL                         R23 0
      356 GETTABLEKS                       R23 R23 K5 ["createElement"]
      358 GETUPVAL                         R24 11
      359 DUPTABLE                         R25 K47 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False}]
      360 NAMECALL                         R26 R12 K32 ["getNextOrder"]
      362 CALL                             R26 1 1
      363 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      365 SETTABLEKS                       R3 R25 K2 ["Writable"]
      367 SETTABLEKS                       R22 R25 K28 ["Id"]
      369 CALL                             R23 2 1
      370 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      372 MOVE                             R25 R11
      373 MOVE                             R26 R23
      374 GETIMPORT                        R24 K35 [table.insert]
      376 CALL                             R24 2 0
      377 FORGLOOP                         R18 2 ; [-23]
      379 LENGTH                           R18 R11
      380 LOADN                            R19 0
      381 JUMPIFNOTLT                      R19 R18 ; [+8]
      383 LENGTH                           R19 R11
      384 GETTABLE                         R18 R11 R19
      385 GETTABLEKS                       R18 R18 K0 ["props"]
      387 LOADB                            R19 1
      388 SETTABLEKS                       R19 R18 K29 ["HideSeparator"]
      390 GETTABLEKS                       R18 R1 K48 ["Stylizer"]
      392 GETTABLEKS                       R19 R1 K6 ["Localization"]
      394 GETUPVAL                         R20 12
      395 CALL                             R20 0 1
      396 GETTABLEKS                       R22 R1 K50 ["PendingPlayTesterCount"]
      398 ORK                              R21 R22 K49 [0]
      399 LOADN                            R23 0
      400 JUMPIFLT                         R23 R21 ; [+2]
      402 LOADB                            R22 0 +1
      403 LOADB                            R22 1
      404 MOVE                             R23 R17
      405 JUMPIFNOT                        R23 ; [+5]
      406 LENGTH                           R24 R11
      407 JUMPIFEQKN                       R24 K49 [0] ; [+2]
      409 LOADB                            R23 0 +1
      410 LOADB                            R23 1
      411 GETUPVAL                         R24 0
      412 GETTABLEKS                       R24 R24 K5 ["createElement"]
      414 GETUPVAL                         R25 13
      415 DUPTABLE                         R26 K53 [{["LayoutOrder"], ["BackgroundTransparency"] = 1}]
      416 SETTABLEKS                       R2 R26 K1 ["LayoutOrder"]
      418 DUPTABLE                         R27 K58 [{"EarlyTesterHeader", "EmptyEarlyTesters", "RolesHeader", "CollaboratorList"}]
      419 MOVE                             R28 R17
      420 JUMPIFNOT                        R28 ; [+43]
      421 MOVE                             R28 R22
      422 JUMPIFNOT                        R28 ; [+41]
      423 GETUPVAL                         R28 14
      424 GETTABLEKS                       R28 R28 K5 ["createElement"]
      426 GETUPVAL                         R29 15
      427 DUPTABLE                         R30 K61 [{["LayoutOrder"] = 1, ["tag"] = "row size-full-0 auto-y padding-x-large padding-top-small align-y-center gap-small"}]
      428 DUPTABLE                         R31 K64 [{"Description", "CountBadge"}]
      429 GETUPVAL                         R32 14
      430 GETTABLEKS                       R32 R32 K5 ["createElement"]
      432 GETUPVAL                         R33 16
      433 DUPTABLE                         R34 K67 [{["LayoutOrder"] = 1, ["tag"] = "fill auto-y text-body-small text-align-x-left", ["Text"]}]
      434 LOADK                            R37 K68 ["AudienceTabs"]
      435 LOADK                            R38 K69 ["PlayTesterLimit"]
      436 DUPTABLE                         R39 K71 [{"maxNumPlayTesters"}]
      437 SETTABLEKS                       R20 R39 K70 ["maxNumPlayTesters"]
      439 NAMECALL                         R35 R19 K72 ["getText"]
      441 CALL                             R35 4 1
      442 SETTABLEKS                       R35 R34 K66 ["Text"]
      444 CALL                             R32 2 1
      445 SETTABLEKS                       R32 R31 K62 ["Description"]
      447 GETUPVAL                         R32 14
      448 GETTABLEKS                       R32 R32 K5 ["createElement"]
      450 GETUPVAL                         R33 17
      451 DUPTABLE                         R34 K75 [{["LayoutOrder"] = 2, ["text"]}]
      452 LOADK                            R35 K76 ["%*/%*"]
      453 MOVE                             R37 R21
      454 MOVE                             R38 R20
      455 NAMECALL                         R35 R35 K77 ["format"]
      457 CALL                             R35 3 1
      458 SETTABLEKS                       R35 R34 K74 ["text"]
      460 CALL                             R32 2 1
      461 SETTABLEKS                       R32 R31 K63 ["CountBadge"]
      463 CALL                             R28 3 1
      464 SETTABLEKS                       R28 R27 K54 ["EarlyTesterHeader"]
      466 MOVE                             R28 R23
      467 JUMPIFNOT                        R28 ; [+70]
      468 GETUPVAL                         R28 14
      469 GETTABLEKS                       R28 R28 K5 ["createElement"]
      471 GETUPVAL                         R29 15
      472 DUPTABLE                         R30 K80 [{["LayoutOrder"] = 1, ["Size"], ["tag"] = "col align-x-center align-y-center padding-x-large gap-medium"}]
      473 GETIMPORT                        R31 K82 [UDim2.new]
      475 LOADN                            R32 1
      476 LOADN                            R33 0
      477 LOADN                            R34 0
      478 GETTABLEKS                       R35 R18 K83 ["audienceTabs"]
      480 GETTABLEKS                       R35 R35 K84 ["emptyStateHeight"]
      482 CALL                             R31 4 1
      483 SETTABLEKS                       R31 R30 K78 ["Size"]
      485 DUPTABLE                         R31 K88 [{"EmptyIcon", "EmptyTitle", "EmptySubtitle"}]
      486 GETUPVAL                         R32 14
      487 GETTABLEKS                       R32 R32 K5 ["createElement"]
      489 GETUPVAL                         R33 18
      490 DUPTABLE                         R34 K91 [{["LayoutOrder"] = 1, ["name"], ["size"]}]
      491 GETUPVAL                         R35 19
      492 GETTABLEKS                       R35 R35 K92 ["Person"]
      494 SETTABLEKS                       R35 R34 K89 ["name"]
      496 GETUPVAL                         R35 20
      497 GETTABLEKS                       R35 R35 K93 ["XXLarge"]
      499 SETTABLEKS                       R35 R34 K90 ["size"]
      501 CALL                             R32 2 1
      502 SETTABLEKS                       R32 R31 K85 ["EmptyIcon"]
      504 GETUPVAL                         R32 14
      505 GETTABLEKS                       R32 R32 K5 ["createElement"]
      507 GETUPVAL                         R33 16
      508 DUPTABLE                         R34 K95 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-heading-small text-align-x-center", ["Text"]}]
      509 LOADK                            R37 K68 ["AudienceTabs"]
      510 LOADK                            R38 K96 ["NoEarlyTesters"]
      511 NAMECALL                         R35 R19 K72 ["getText"]
      513 CALL                             R35 3 1
      514 SETTABLEKS                       R35 R34 K66 ["Text"]
      516 CALL                             R32 2 1
      517 SETTABLEKS                       R32 R31 K86 ["EmptyTitle"]
      519 GETUPVAL                         R32 14
      520 GETTABLEKS                       R32 R32 K5 ["createElement"]
      522 GETUPVAL                         R33 16
      523 DUPTABLE                         R34 K99 [{["LayoutOrder"] = 3, ["tag"] = "auto-xy text-body-medium text-align-x-center", ["Text"]}]
      524 LOADK                            R37 K68 ["AudienceTabs"]
      525 LOADK                            R38 K69 ["PlayTesterLimit"]
      526 DUPTABLE                         R39 K71 [{"maxNumPlayTesters"}]
      527 SETTABLEKS                       R20 R39 K70 ["maxNumPlayTesters"]
      529 NAMECALL                         R35 R19 K72 ["getText"]
      531 CALL                             R35 4 1
      532 SETTABLEKS                       R35 R34 K66 ["Text"]
      534 CALL                             R32 2 1
      535 SETTABLEKS                       R32 R31 K87 ["EmptySubtitle"]
      537 CALL                             R28 3 1
      538 SETTABLEKS                       R28 R27 K55 ["EmptyEarlyTesters"]
      540 GETUPVAL                         R28 4
      541 GETTABLEKS                       R28 R28 K100 ["fflagGroupGameEarlyTesters"]
      543 JUMPIFNOT                        R28 ; [+39]
      544 GETTABLEKS                       R28 R1 K14 ["IsGroupGame"]
      546 JUMPIFNOT                        R28 ; [+36]
      547 LOADB                            R28 0
      548 GETTABLEKS                       R29 R1 K3 ["SelectedPillKey"]
      550 JUMPIFNOTEQKS                    R29 K101 ["Roles"] ; [+32]
      552 GETUPVAL                         R28 14
      553 GETTABLEKS                       R28 R28 K5 ["createElement"]
      555 GETUPVAL                         R29 15
      556 DUPTABLE                         R30 K103 [{["LayoutOrder"] = 0, ["tag"] = "size-full-0 auto-y padding-x-large padding-top-small"}]
      557 DUPTABLE                         R31 K105 [{"HeaderText"}]
      558 GETUPVAL                         R32 14
      559 GETTABLEKS                       R32 R32 K5 ["createElement"]
      561 GETUPVAL                         R33 16
      562 DUPTABLE                         R34 K109 [{["tag"] = "auto-xy text-body-small text-align-x-left content-default", ["Text"], ["RichText"] = True}]
      563 LOADK                            R37 K62 ["Description"]
      564 LOADK                            R38 K110 ["GroupRoles"]
      565 DUPTABLE                         R39 K112 [{"groupName"}]
      566 LOADK                            R40 K113 ["<b>%*</b>"]
      567 GETTABLEKS                       R42 R1 K114 ["GroupName"]
      569 NAMECALL                         R40 R40 K77 ["format"]
      571 CALL                             R40 2 1
      572 SETTABLEKS                       R40 R39 K111 ["groupName"]
      574 NAMECALL                         R35 R19 K72 ["getText"]
      576 CALL                             R35 4 1
      577 SETTABLEKS                       R35 R34 K66 ["Text"]
      579 CALL                             R32 2 1
      580 SETTABLEKS                       R32 R31 K104 ["HeaderText"]
      582 CALL                             R28 3 1
      583 SETTABLEKS                       R28 R27 K56 ["RolesHeader"]
      585 NOT                              R28 R23
      586 JUMPIFNOT                        R28 ; [+11]
      587 GETUPVAL                         R28 0
      588 GETTABLEKS                       R28 R28 K5 ["createElement"]
      590 GETUPVAL                         R29 13
      591 DUPTABLE                         R30 K115 [{["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1}]
      592 NEWTABLE                         R31 0 1
      594 MOVE                             R32 R11
      595 SETLIST                          R31 R32 1 [1]
      597 CALL                             R28 3 1
      598 SETTABLEKS                       R28 R27 K57 ["CollaboratorList"]
      600 CALL                             R24 3 -1
      601 RETURN                           R24 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R0 K0 ["GameOwnerMetadata"]
        5 GETTABLEKS                       R4 R4 K1 ["creatorType"]
        7 GETIMPORT                        R5 K5 [Enum.CreatorType.Group]
        9 JUMPIFEQ                         R4 R5 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R1 K6 ["ActiveTab"]
       18 NEWTABLE                         R6 0 0
       20 NEWTABLE                         R7 0 0
       22 NEWTABLE                         R8 0 0
       24 NEWTABLE                         R9 0 0
       26 NEWTABLE                         R10 0 0
       28 NEWTABLE                         R11 0 0
       30 LOADB                            R12 0
       31 JUMPIFNOT                        R4 ; [+27]
       32 GETUPVAL                         R13 2
       33 GETTABLEKS                       R13 R13 K7 ["AUDIENCE_TAB_ACCESS"]
       35 JUMPIFNOTEQ                      R5 R13 ; [+13]
       37 GETUPVAL                         R13 3
       38 MOVE                             R14 R0
       39 CALL                             R13 1 2
       40 MOVE                             R6 R13
       41 MOVE                             R7 R14
       42 GETUPVAL                         R13 4
       43 MOVE                             R14 R0
       44 CALL                             R13 1 2
       45 MOVE                             R8 R13
       46 MOVE                             R9 R14
       47 LOADB                            R12 1
       48 JUMP                             ; [+92]
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R13 R13 K8 ["AUDIENCE_TAB_EARLY_TESTERS"]
       52 JUMPIFNOTEQ                      R5 R13 ; [+88]
       54 GETUPVAL                         R13 5
       55 MOVE                             R14 R0
       56 CALL                             R13 1 1
       57 MOVE                             R11 R13
       58 JUMP                             ; [+82]
       59 JUMPIFNOT                        R2 ; [+3]
       60 GETTABLEKS                       R13 R2 K9 ["filters"]
       62 JUMPIF                           R13 ; [+2]
       63 NEWTABLE                         R13 0 0
       65 GETUPVAL                         R15 6
       66 GETTABLEKS                       R15 R15 K10 ["UserSubjectKey"]
       68 GETTABLE                         R14 R13 R15
       69 JUMPIFNOT                        R14 ; [+5]
       70 GETUPVAL                         R14 3
       71 MOVE                             R15 R0
       72 CALL                             R14 1 2
       73 MOVE                             R6 R14
       74 MOVE                             R7 R15
       75 GETUPVAL                         R15 6
       76 GETTABLEKS                       R15 R15 K11 ["RoleSubjectKey"]
       78 GETTABLE                         R14 R13 R15
       79 JUMPIFNOT                        R14 ; [+9]
       80 GETUPVAL                         R14 4
       81 MOVE                             R15 R0
       82 CALL                             R14 1 2
       83 MOVE                             R8 R14
       84 MOVE                             R9 R15
       85 GETUPVAL                         R14 7
       86 MOVE                             R15 R0
       87 CALL                             R14 1 1
       88 MOVE                             R10 R14
       89 GETUPVAL                         R14 8
       90 GETTABLEKS                       R14 R14 K12 ["fflagCollabPV2GroupMigration"]
       92 JUMPIFNOT                        R14 ; [+14]
       93 GETTABLEKS                       R14 R0 K13 ["GroupMigrationStatus"]
       95 JUMPIFNOT                        R14 ; [+11]
       96 GETTABLEKS                       R15 R0 K13 ["GroupMigrationStatus"]
       98 GETTABLEKS                       R15 R15 K14 ["Status"]
      100 GETUPVAL                         R16 9
      101 GETTABLEKS                       R16 R16 K15 ["MIGRATED"]
      103 JUMPIFEQ                         R15 R16 ; [+2]
      105 LOADB                            R14 0 +1
      106 LOADB                            R14 1
      107 GETTABLEKS                       R15 R0 K0 ["GameOwnerMetadata"]
      109 GETTABLEKS                       R15 R15 K1 ["creatorType"]
      111 GETIMPORT                        R16 K17 [Enum.CreatorType.User]
      113 JUMPIFNOTEQ                      R15 R16 ; [+10]
      115 GETUPVAL                         R16 6
      116 GETTABLEKS                       R16 R16 K10 ["UserSubjectKey"]
      118 GETTABLE                         R15 R13 R16
      119 JUMPIFEQKB                       R15 TRUE ; [+2]
      121 LOADB                            R12 0 +1
      122 LOADB                            R12 1
      123 JUMP                             ; [+17]
      124 GETTABLEKS                       R15 R0 K0 ["GameOwnerMetadata"]
      126 GETTABLEKS                       R15 R15 K1 ["creatorType"]
      128 GETIMPORT                        R16 K5 [Enum.CreatorType.Group]
      130 JUMPIFNOTEQ                      R15 R16 ; [+9]
      132 GETUPVAL                         R16 6
      133 GETTABLEKS                       R16 R16 K11 ["RoleSubjectKey"]
      135 GETTABLE                         R15 R13 R16
      136 JUMPIFNOT                        R15 ; [+1]
      137 NOT                              R15 R14
      138 MOVE                             R12 R15
      139 JUMP                             ; [+1]
      140 LOADB                            R12 1
      141 DUPTABLE                         R13 K32 [{"NewUserCollaborators", "CurrentUserCollaborators", "NewGroupCollaborators", "CurrentGroupCollaborators", "GranularCollaborators", "PendingPlayTesters", "PendingPlayTesterCount", "OwnerId", "OwnerType", "GroupName", "ShowOwner", "SelectedPillKey", "IsGroupGame", "CanCollaborateResponses"}]
      142 SETTABLEKS                       R6 R13 K18 ["NewUserCollaborators"]
      144 SETTABLEKS                       R7 R13 K19 ["CurrentUserCollaborators"]
      146 SETTABLEKS                       R8 R13 K20 ["NewGroupCollaborators"]
      148 SETTABLEKS                       R9 R13 K21 ["CurrentGroupCollaborators"]
      150 SETTABLEKS                       R10 R13 K22 ["GranularCollaborators"]
      152 SETTABLEKS                       R11 R13 K23 ["PendingPlayTesters"]
      154 JUMPIFNOT                        R4 ; [+4]
      155 GETUPVAL                         R14 10
      156 MOVE                             R15 R0
      157 CALL                             R14 1 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R14
      160 SETTABLEKS                       R14 R13 K24 ["PendingPlayTesterCount"]
      162 GETTABLEKS                       R14 R0 K0 ["GameOwnerMetadata"]
      164 GETTABLEKS                       R14 R14 K33 ["creatorId"]
      166 SETTABLEKS                       R14 R13 K25 ["OwnerId"]
      168 GETTABLEKS                       R14 R0 K0 ["GameOwnerMetadata"]
      170 GETTABLEKS                       R14 R14 K1 ["creatorType"]
      172 SETTABLEKS                       R14 R13 K26 ["OwnerType"]
      174 GETTABLEKS                       R14 R0 K0 ["GameOwnerMetadata"]
      176 GETTABLEKS                       R14 R14 K34 ["creatorName"]
      178 SETTABLEKS                       R14 R13 K27 ["GroupName"]
      180 SETTABLEKS                       R12 R13 K28 ["ShowOwner"]
      182 JUMPIFNOT                        R2 ; [+3]
      183 GETTABLEKS                       R14 R2 K35 ["key"]
      185 JUMPIF                           R14 ; [+1]
      186 LOADNIL                          R14
      187 SETTABLEKS                       R14 R13 K29 ["SelectedPillKey"]
      189 SETTABLEKS                       R3 R13 K30 ["IsGroupGame"]
      191 GETUPVAL                         R15 8
      192 GETTABLEKS                       R15 R15 K36 ["fflagManageCollaboratorsActionNeededLabel"]
      194 JUMPIFNOT                        R15 ; [+3]
      195 GETTABLEKS                       R14 R0 K31 ["CanCollaborateResponses"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R14
      199 SETTABLEKS                       R14 R13 K31 ["CanCollaborateResponses"]
      201 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["COLLAB2850_FixMcTooltips"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Bin"]
       33 GETTABLEKS                       R5 R5 K13 ["defineLuaFlags"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K9 ["Packages"]
       40 GETTABLEKS                       R6 R6 K14 ["Framework"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R5 R5 K15 ["ContextServices"]
       45 GETTABLEKS                       R6 R5 K16 ["withContext"]
       47 GETIMPORT                        R7 K8 [require]
       49 GETTABLEKS                       R8 R1 K9 ["Packages"]
       51 GETTABLEKS                       R8 R8 K14 ["Framework"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R7 K17 ["Style"]
       56 GETTABLEKS                       R8 R8 K18 ["Stylizer"]
       58 GETIMPORT                        R9 K8 [require]
       60 GETTABLEKS                       R10 R1 K19 ["Src"]
       62 GETTABLEKS                       R10 R10 K20 ["Util"]
       64 GETTABLEKS                       R10 R10 K21 ["CreateFitToContent"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K8 [require]
       69 GETTABLEKS                       R11 R1 K19 ["Src"]
       71 GETTABLEKS                       R11 R11 K22 ["Components"]
       73 GETTABLEKS                       R11 R11 K23 ["UserCollaboratorItem"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K8 [require]
       78 GETTABLEKS                       R12 R1 K19 ["Src"]
       80 GETTABLEKS                       R12 R12 K22 ["Components"]
       82 GETTABLEKS                       R12 R12 K24 ["GroupCollaboratorItem"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K8 [require]
       87 GETTABLEKS                       R13 R1 K19 ["Src"]
       89 GETTABLEKS                       R13 R13 K22 ["Components"]
       91 GETTABLEKS                       R13 R13 K25 ["GranularCollaboratorItem"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K8 [require]
       96 GETTABLEKS                       R14 R1 K19 ["Src"]
       98 GETTABLEKS                       R14 R14 K22 ["Components"]
      100 GETTABLEKS                       R14 R14 K26 ["EarlyTesters"]
      102 GETTABLEKS                       R14 R14 K27 ["EarlyTestersPane"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K8 [require]
      107 GETTABLEKS                       R15 R1 K19 ["Src"]
      109 GETTABLEKS                       R15 R15 K28 ["Selectors"]
      111 GETTABLEKS                       R15 R15 K29 ["GetUserCollaborators"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K8 [require]
      116 GETTABLEKS                       R16 R1 K19 ["Src"]
      118 GETTABLEKS                       R16 R16 K28 ["Selectors"]
      120 GETTABLEKS                       R16 R16 K30 ["GetGroupCollaborators"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K8 [require]
      125 GETTABLEKS                       R17 R1 K19 ["Src"]
      127 GETTABLEKS                       R17 R17 K28 ["Selectors"]
      129 GETTABLEKS                       R17 R17 K31 ["GetGranularCollaborators"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K8 [require]
      134 GETTABLEKS                       R18 R1 K19 ["Src"]
      136 GETTABLEKS                       R18 R18 K28 ["Selectors"]
      138 GETTABLEKS                       R18 R18 K32 ["GetSelectedFilterPill"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K8 [require]
      143 GETTABLEKS                       R19 R1 K19 ["Src"]
      145 GETTABLEKS                       R19 R19 K28 ["Selectors"]
      147 GETTABLEKS                       R19 R19 K33 ["GetPendingPlayTesters"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K8 [require]
      152 GETTABLEKS                       R20 R1 K19 ["Src"]
      154 GETTABLEKS                       R20 R20 K28 ["Selectors"]
      156 GETTABLEKS                       R20 R20 K34 ["GetPendingPlayTesterCount"]
      158 CALL                             R19 1 1
      159 GETIMPORT                        R20 K8 [require]
      161 GETTABLEKS                       R21 R1 K19 ["Src"]
      163 GETTABLEKS                       R21 R21 K20 ["Util"]
      165 GETTABLEKS                       R21 R21 K35 ["GetPlayTesterPermissionMaxCount"]
      167 CALL                             R20 1 1
      168 GETIMPORT                        R21 K8 [require]
      170 GETTABLEKS                       R22 R1 K19 ["Src"]
      172 GETTABLEKS                       R22 R22 K20 ["Util"]
      174 GETTABLEKS                       R22 R22 K36 ["MigrationStatus"]
      176 CALL                             R21 1 1
      177 GETIMPORT                        R22 K8 [require]
      179 GETTABLEKS                       R23 R1 K19 ["Src"]
      181 GETTABLEKS                       R23 R23 K20 ["Util"]
      183 GETTABLEKS                       R23 R23 K37 ["Constants"]
      185 CALL                             R22 1 1
      186 GETIMPORT                        R23 K8 [require]
      188 GETTABLEKS                       R24 R1 K19 ["Src"]
      190 GETTABLEKS                       R24 R24 K20 ["Util"]
      192 GETTABLEKS                       R24 R24 K38 ["ShouldShowAudienceTabs"]
      194 CALL                             R23 1 1
      195 GETIMPORT                        R24 K8 [require]
      197 GETTABLEKS                       R25 R1 K19 ["Src"]
      199 GETTABLEKS                       R25 R25 K22 ["Components"]
      201 GETTABLEKS                       R25 R25 K39 ["PendingPlayTesterCollaboratorItem"]
      203 CALL                             R24 1 1
      204 GETIMPORT                        R25 K8 [require]
      206 GETTABLEKS                       R26 R1 K9 ["Packages"]
      208 GETTABLEKS                       R26 R26 K40 ["React"]
      210 CALL                             R25 1 1
      211 GETIMPORT                        R26 K8 [require]
      213 GETTABLEKS                       R27 R1 K9 ["Packages"]
      215 GETTABLEKS                       R27 R27 K41 ["Foundation"]
      217 CALL                             R26 1 1
      218 GETTABLEKS                       R27 R26 K42 ["Text"]
      220 GETTABLEKS                       R28 R26 K43 ["View"]
      222 GETTABLEKS                       R29 R26 K44 ["Badge"]
      224 GETTABLEKS                       R30 R26 K45 ["Icon"]
      226 GETTABLEKS                       R31 R26 K46 ["Enums"]
      228 GETTABLEKS                       R31 R31 K47 ["IconSize"]
      230 GETTABLEKS                       R32 R26 K46 ["Enums"]
      232 GETTABLEKS                       R32 R32 K48 ["IconName"]
      234 GETTABLEKS                       R33 R7 K20 ["Util"]
      236 GETTABLEKS                       R34 R33 K49 ["LayoutOrderIterator"]
      238 MOVE                             R35 R9
      239 LOADK                            R36 K50 ["Frame"]
      240 LOADK                            R37 K51 ["UIListLayout"]
      241 DUPTABLE                         R38 K56 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
      242 GETIMPORT                        R39 K59 [Enum.SortOrder.LayoutOrder]
      244 SETTABLEKS                       R39 R38 K52 ["SortOrder"]
      246 GETIMPORT                        R39 K61 [Enum.FillDirection.Vertical]
      248 SETTABLEKS                       R39 R38 K53 ["FillDirection"]
      250 GETIMPORT                        R39 K64 [UDim.new]
      252 LOADN                            R40 0
      253 LOADN                            R41 0
      254 CALL                             R39 2 1
      255 SETTABLEKS                       R39 R38 K54 ["Padding"]
      257 GETIMPORT                        R39 K66 [Enum.HorizontalAlignment.Center]
      259 SETTABLEKS                       R39 R38 K55 ["HorizontalAlignment"]
      261 CALL                             R35 3 1
      262 GETTABLEKS                       R36 R2 K67 ["PureComponent"]
      264 LOADK                            R38 K68 ["CollaboratorsWidget"]
      265 NAMECALL                         R36 R36 K69 ["extend"]
      267 CALL                             R36 2 1
      268 GETIMPORT                        R37 K8 [require]
      270 GETTABLEKS                       R38 R1 K19 ["Src"]
      272 GETTABLEKS                       R38 R38 K20 ["Util"]
      274 GETTABLEKS                       R38 R38 K70 ["PermissionsConstants"]
      276 CALL                             R37 1 1
      277 DUPCLOSURE                       R38 K71 [PROTO_0]
      278 CAPTURE                          VAL R2
      279 CAPTURE                          VAL R13
      280 CAPTURE                          VAL R0
      281 CAPTURE                          VAL R34
      282 CAPTURE                          VAL R4
      283 CAPTURE                          VAL R23
      284 CAPTURE                          VAL R22
      285 CAPTURE                          VAL R10
      286 CAPTURE                          VAL R11
      287 CAPTURE                          VAL R12
      288 CAPTURE                          VAL R37
      289 CAPTURE                          VAL R24
      290 CAPTURE                          VAL R20
      291 CAPTURE                          VAL R35
      292 CAPTURE                          VAL R25
      293 CAPTURE                          VAL R28
      294 CAPTURE                          VAL R27
      295 CAPTURE                          VAL R29
      296 CAPTURE                          VAL R30
      297 CAPTURE                          VAL R32
      298 CAPTURE                          VAL R31
      299 SETTABLEKS                       R38 R36 K72 ["render"]
      301 MOVE                             R38 R6
      302 DUPTABLE                         R39 K74 [{"Stylizer", "Localization"}]
      303 SETTABLEKS                       R8 R39 K18 ["Stylizer"]
      305 GETTABLEKS                       R40 R5 K73 ["Localization"]
      307 SETTABLEKS                       R40 R39 K73 ["Localization"]
      309 CALL                             R38 1 1
      310 MOVE                             R39 R36
      311 CALL                             R38 1 1
      312 MOVE                             R36 R38
      313 GETTABLEKS                       R38 R3 K75 ["connect"]
      315 DUPCLOSURE                       R39 K76 [PROTO_1]
      316 CAPTURE                          VAL R17
      317 CAPTURE                          VAL R23
      318 CAPTURE                          VAL R22
      319 CAPTURE                          VAL R14
      320 CAPTURE                          VAL R15
      321 CAPTURE                          VAL R18
      322 CAPTURE                          VAL R37
      323 CAPTURE                          VAL R16
      324 CAPTURE                          VAL R4
      325 CAPTURE                          VAL R21
      326 CAPTURE                          VAL R19
      327 CALL                             R38 1 1
      328 MOVE                             R39 R36
      329 CALL                             R38 1 1
      330 MOVE                             R36 R38
      331 RETURN                           R36 1
