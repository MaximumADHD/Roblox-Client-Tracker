PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Writable"]
        6 GETTABLEKS                       R4 R1 K3 ["NewUserCollaborators"]
        8 GETTABLEKS                       R5 R1 K4 ["CurrentUserCollaborators"]
       10 GETTABLEKS                       R6 R1 K5 ["NewGroupCollaborators"]
       12 GETTABLEKS                       R7 R1 K6 ["CurrentGroupCollaborators"]
       14 GETTABLEKS                       R8 R1 K7 ["OwnerId"]
       16 GETTABLEKS                       R9 R1 K8 ["OwnerType"]
       18 GETUPVAL                         R11 0
       19 JUMPIFNOT                        R11 ; [+3]
       20 GETTABLEKS                       R10 R1 K9 ["IsGroupGame"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R10
       24 NEWTABLE                         R11 0 0
       26 JUMPIFNOT                        R8 ; [+1]
       27 JUMPIF                           R9 ; [+2]
       28 LOADNIL                          R12
       29 RETURN                           R12 1
       30 GETUPVAL                         R12 1
       31 GETTABLEKS                       R12 R12 K10 ["new"]
       33 CALL                             R12 0 1
       34 GETUPVAL                         R14 2
       35 GETTABLEKS                       R14 R14 K11 ["fflagManageCollaboratorsActionNeededLabel"]
       37 JUMPIFNOT                        R14 ; [+3]
       38 GETTABLEKS                       R13 R1 K12 ["CanCollaborateResponses"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R13
       42 GETUPVAL                         R15 2
       43 GETTABLEKS                       R15 R15 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       45 JUMPIF                           R15 ; [+4]
       46 GETUPVAL                         R15 2
       47 GETTABLEKS                       R15 R15 K14 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       49 JUMPIFNOT                        R15 ; [+3]
       50 GETTABLEKS                       R14 R1 K15 ["DisableEditPermission"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R14
       54 GETTABLEKS                       R15 R1 K16 ["ActiveTab"]
       56 GETUPVAL                         R16 3
       57 GETTABLEKS                       R17 R1 K9 ["IsGroupGame"]
       59 CALL                             R16 1 1
       60 MOVE                             R17 R16
       61 JUMPIFNOT                        R17 ; [+7]
       62 GETUPVAL                         R18 4
       63 GETTABLEKS                       R18 R18 K17 ["AUDIENCE_TAB_PLAY_TESTERS"]
       65 JUMPIFEQ                         R15 R18 ; [+2]
       67 LOADB                            R17 0 +1
       68 LOADB                            R17 1
       69 GETTABLEKS                       R18 R1 K18 ["ShowOwner"]
       71 JUMPIFNOT                        R18 ; [+37]
       72 GETIMPORT                        R19 K22 [Enum.CreatorType.User]
       74 JUMPIFNOTEQ                      R9 R19 ; [+3]
       76 LOADB                            R18 1
       77 JUMP                             ; [+1]
       78 LOADB                            R18 0
       79 JUMPIFNOT                        R18 ; [+2]
       80 GETUPVAL                         R19 5
       81 JUMP                             ; [+1]
       82 GETUPVAL                         R19 6
       83 GETUPVAL                         R20 7
       84 GETTABLEKS                       R20 R20 K23 ["createElement"]
       86 MOVE                             R21 R19
       87 DUPTABLE                         R22 K27 [{["Id"], ["Writable"], ["LayoutOrder"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
       88 SETTABLEKS                       R8 R22 K24 ["Id"]
       90 SETTABLEKS                       R3 R22 K2 ["Writable"]
       92 NAMECALL                         R23 R12 K28 ["getNextOrder"]
       94 CALL                             R23 1 1
       95 SETTABLEKS                       R23 R22 K1 ["LayoutOrder"]
       97 SETTABLEKS                       R10 R22 K9 ["IsGroupGame"]
       99 SETTABLEKS                       R14 R22 K15 ["DisableEditPermission"]
      101 CALL                             R20 2 1
      102 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      104 MOVE                             R22 R11
      105 MOVE                             R23 R20
      106 GETIMPORT                        R21 K31 [table.insert]
      108 CALL                             R21 2 0
      109 GETTABLEKS                       R18 R1 K32 ["GranularCollaborators"]
      111 LOADNIL                          R19
      112 LOADNIL                          R20
      113 FORGPREP                         R18
      114 GETUPVAL                         R23 7
      115 GETTABLEKS                       R23 R23 K23 ["createElement"]
      117 GETUPVAL                         R24 8
      118 DUPTABLE                         R25 K33 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["DisableEditPermission"]}]
      119 NAMECALL                         R26 R12 K28 ["getNextOrder"]
      121 CALL                             R26 1 1
      122 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      124 SETTABLEKS                       R3 R25 K2 ["Writable"]
      126 SETTABLEKS                       R22 R25 K24 ["Id"]
      128 SETTABLEKS                       R14 R25 K15 ["DisableEditPermission"]
      130 CALL                             R23 2 1
      131 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      133 MOVE                             R25 R11
      134 MOVE                             R26 R23
      135 GETIMPORT                        R24 K31 [table.insert]
      137 CALL                             R24 2 0
      138 FORGLOOP                         R18 2 ; [-25]
      140 MOVE                             R18 R4
      141 LOADNIL                          R19
      142 LOADNIL                          R20
      143 FORGPREP                         R18
      144 MOVE                             R23 R13
      145 JUMPIFNOT                        R23 ; [+1]
      146 GETTABLE                         R23 R13 R22
      147 GETUPVAL                         R24 7
      148 GETTABLEKS                       R24 R24 K23 ["createElement"]
      150 GETUPVAL                         R25 5
      151 DUPTABLE                         R26 K36 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["IsGroupGame"], ["CanCollaborateResponse"], ["CanCollaborateErrorEnum"], ["DisableEditPermission"]}]
      152 NAMECALL                         R27 R12 K28 ["getNextOrder"]
      154 CALL                             R27 1 1
      155 SETTABLEKS                       R27 R26 K1 ["LayoutOrder"]
      157 SETTABLEKS                       R3 R26 K2 ["Writable"]
      159 SETTABLEKS                       R22 R26 K24 ["Id"]
      161 SETTABLEKS                       R10 R26 K9 ["IsGroupGame"]
      163 GETUPVAL                         R28 2
      164 GETTABLEKS                       R28 R28 K11 ["fflagManageCollaboratorsActionNeededLabel"]
      166 JUMPIFNOT                        R28 ; [+5]
      167 MOVE                             R27 R23
      168 JUMPIFNOT                        R27 ; [+4]
      169 GETTABLEKS                       R27 R23 K37 ["canCollaborate"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R27
      173 SETTABLEKS                       R27 R26 K34 ["CanCollaborateResponse"]
      175 GETUPVAL                         R28 2
      176 GETTABLEKS                       R28 R28 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      178 JUMPIFNOT                        R28 ; [+5]
      179 MOVE                             R27 R23
      180 JUMPIFNOT                        R27 ; [+4]
      181 GETTABLEKS                       R27 R23 K38 ["error"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R27
      185 SETTABLEKS                       R27 R26 K35 ["CanCollaborateErrorEnum"]
      187 SETTABLEKS                       R14 R26 K15 ["DisableEditPermission"]
      189 CALL                             R24 2 1
      190 FASTCALL2                        TABLE_INSERT R11 R24 ; [+5]
      192 MOVE                             R26 R11
      193 MOVE                             R27 R24
      194 GETIMPORT                        R25 K31 [table.insert]
      196 CALL                             R25 2 0
      197 FORGLOOP                         R18 2 ; [-54]
      199 MOVE                             R18 R6
      200 LOADNIL                          R19
      201 LOADNIL                          R20
      202 FORGPREP                         R18
      203 GETUPVAL                         R23 7
      204 GETTABLEKS                       R23 R23 K23 ["createElement"]
      206 GETUPVAL                         R24 6
      207 DUPTABLE                         R25 K40 [{["LayoutOrder"], ["Writable"], ["Id"], ["CurrentPermission"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
      208 NAMECALL                         R26 R12 K28 ["getNextOrder"]
      210 CALL                             R26 1 1
      211 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      213 SETTABLEKS                       R3 R25 K2 ["Writable"]
      215 SETTABLEKS                       R22 R25 K24 ["Id"]
      217 GETUPVAL                         R26 9
      218 GETTABLEKS                       R26 R26 K41 ["MultipleKey"]
      220 SETTABLEKS                       R26 R25 K39 ["CurrentPermission"]
      222 SETTABLEKS                       R10 R25 K9 ["IsGroupGame"]
      224 SETTABLEKS                       R14 R25 K15 ["DisableEditPermission"]
      226 CALL                             R23 2 1
      227 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      229 MOVE                             R25 R11
      230 MOVE                             R26 R23
      231 GETIMPORT                        R24 K31 [table.insert]
      233 CALL                             R24 2 0
      234 FORGLOOP                         R18 2 ; [-32]
      236 MOVE                             R18 R5
      237 LOADNIL                          R19
      238 LOADNIL                          R20
      239 FORGPREP                         R18
      240 MOVE                             R23 R13
      241 JUMPIFNOT                        R23 ; [+1]
      242 GETTABLE                         R23 R13 R22
      243 GETUPVAL                         R24 7
      244 GETTABLEKS                       R24 R24 K23 ["createElement"]
      246 GETUPVAL                         R25 5
      247 DUPTABLE                         R26 K36 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["IsGroupGame"], ["CanCollaborateResponse"], ["CanCollaborateErrorEnum"], ["DisableEditPermission"]}]
      248 NAMECALL                         R27 R12 K28 ["getNextOrder"]
      250 CALL                             R27 1 1
      251 SETTABLEKS                       R27 R26 K1 ["LayoutOrder"]
      253 SETTABLEKS                       R3 R26 K2 ["Writable"]
      255 SETTABLEKS                       R22 R26 K24 ["Id"]
      257 SETTABLEKS                       R10 R26 K9 ["IsGroupGame"]
      259 GETUPVAL                         R28 2
      260 GETTABLEKS                       R28 R28 K11 ["fflagManageCollaboratorsActionNeededLabel"]
      262 JUMPIFNOT                        R28 ; [+5]
      263 MOVE                             R27 R23
      264 JUMPIFNOT                        R27 ; [+4]
      265 GETTABLEKS                       R27 R23 K37 ["canCollaborate"]
      267 JUMP                             ; [+1]
      268 LOADNIL                          R27
      269 SETTABLEKS                       R27 R26 K34 ["CanCollaborateResponse"]
      271 GETUPVAL                         R28 2
      272 GETTABLEKS                       R28 R28 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      274 JUMPIFNOT                        R28 ; [+5]
      275 MOVE                             R27 R23
      276 JUMPIFNOT                        R27 ; [+4]
      277 GETTABLEKS                       R27 R23 K38 ["error"]
      279 JUMP                             ; [+1]
      280 LOADNIL                          R27
      281 SETTABLEKS                       R27 R26 K35 ["CanCollaborateErrorEnum"]
      283 SETTABLEKS                       R14 R26 K15 ["DisableEditPermission"]
      285 CALL                             R24 2 1
      286 FASTCALL2                        TABLE_INSERT R11 R24 ; [+5]
      288 MOVE                             R26 R11
      289 MOVE                             R27 R24
      290 GETIMPORT                        R25 K31 [table.insert]
      292 CALL                             R25 2 0
      293 FORGLOOP                         R18 2 ; [-54]
      295 MOVE                             R18 R7
      296 LOADNIL                          R19
      297 LOADNIL                          R20
      298 FORGPREP                         R18
      299 GETUPVAL                         R23 7
      300 GETTABLEKS                       R23 R23 K23 ["createElement"]
      302 GETUPVAL                         R24 6
      303 DUPTABLE                         R25 K40 [{["LayoutOrder"], ["Writable"], ["Id"], ["CurrentPermission"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
      304 NAMECALL                         R26 R12 K28 ["getNextOrder"]
      306 CALL                             R26 1 1
      307 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      309 SETTABLEKS                       R3 R25 K2 ["Writable"]
      311 SETTABLEKS                       R22 R25 K24 ["Id"]
      313 GETUPVAL                         R26 9
      314 GETTABLEKS                       R26 R26 K41 ["MultipleKey"]
      316 SETTABLEKS                       R26 R25 K39 ["CurrentPermission"]
      318 SETTABLEKS                       R10 R25 K9 ["IsGroupGame"]
      320 SETTABLEKS                       R14 R25 K15 ["DisableEditPermission"]
      322 CALL                             R23 2 1
      323 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      325 MOVE                             R25 R11
      326 MOVE                             R26 R23
      327 GETIMPORT                        R24 K31 [table.insert]
      329 CALL                             R24 2 0
      330 FORGLOOP                         R18 2 ; [-32]
      332 JUMPIFNOT                        R17 ; [+29]
      333 GETTABLEKS                       R18 R1 K42 ["PendingPlayTesters"]
      335 LOADNIL                          R19
      336 LOADNIL                          R20
      337 FORGPREP                         R18
      338 GETUPVAL                         R23 7
      339 GETTABLEKS                       R23 R23 K23 ["createElement"]
      341 GETUPVAL                         R24 10
      342 DUPTABLE                         R25 K43 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False}]
      343 NAMECALL                         R26 R12 K28 ["getNextOrder"]
      345 CALL                             R26 1 1
      346 SETTABLEKS                       R26 R25 K1 ["LayoutOrder"]
      348 SETTABLEKS                       R3 R25 K2 ["Writable"]
      350 SETTABLEKS                       R22 R25 K24 ["Id"]
      352 CALL                             R23 2 1
      353 FASTCALL2                        TABLE_INSERT R11 R23 ; [+5]
      355 MOVE                             R25 R11
      356 MOVE                             R26 R23
      357 GETIMPORT                        R24 K31 [table.insert]
      359 CALL                             R24 2 0
      360 FORGLOOP                         R18 2 ; [-23]
      362 LENGTH                           R18 R11
      363 LOADN                            R19 0
      364 JUMPIFNOTLT                      R19 R18 ; [+8]
      366 LENGTH                           R19 R11
      367 GETTABLE                         R18 R11 R19
      368 GETTABLEKS                       R18 R18 K0 ["props"]
      370 LOADB                            R19 1
      371 SETTABLEKS                       R19 R18 K25 ["HideSeparator"]
      373 GETTABLEKS                       R18 R1 K44 ["Stylizer"]
      375 GETTABLEKS                       R19 R1 K45 ["Localization"]
      377 GETUPVAL                         R20 11
      378 CALL                             R20 0 1
      379 GETTABLEKS                       R22 R1 K47 ["PendingPlayTesterCount"]
      381 ORK                              R21 R22 K46 [0]
      382 GETUPVAL                         R22 7
      383 GETTABLEKS                       R22 R22 K23 ["createElement"]
      385 GETUPVAL                         R23 12
      386 DUPTABLE                         R24 K50 [{["LayoutOrder"], ["BackgroundTransparency"] = 1}]
      387 SETTABLEKS                       R2 R24 K1 ["LayoutOrder"]
      389 DUPTABLE                         R25 K54 [{"PlayTesterLimitBanner", "CollaboratorList", "PlayTesterCount"}]
      390 MOVE                             R26 R17
      391 JUMPIFNOT                        R26 ; [+25]
      392 GETUPVAL                         R26 13
      393 GETTABLEKS                       R26 R26 K23 ["createElement"]
      395 GETUPVAL                         R27 14
      396 DUPTABLE                         R28 K57 [{["LayoutOrder"] = 0, ["tag"] = "size-full-0 auto-y padding-x-large padding-top-small"}]
      397 DUPTABLE                         R29 K59 [{"BannerText"}]
      398 GETUPVAL                         R30 13
      399 GETTABLEKS                       R30 R30 K23 ["createElement"]
      401 GETUPVAL                         R31 15
      402 DUPTABLE                         R32 K62 [{["tag"] = "auto-xy text-body-small text-align-x-left", ["Text"]}]
      403 LOADK                            R35 K63 ["AudienceTabs"]
      404 LOADK                            R36 K64 ["PlayTesterLimit"]
      405 DUPTABLE                         R37 K66 [{"maxNumPlayTesters"}]
      406 SETTABLEKS                       R20 R37 K65 ["maxNumPlayTesters"]
      408 NAMECALL                         R33 R19 K67 ["getText"]
      410 CALL                             R33 4 1
      411 SETTABLEKS                       R33 R32 K61 ["Text"]
      413 CALL                             R30 2 1
      414 SETTABLEKS                       R30 R29 K58 ["BannerText"]
      416 CALL                             R26 3 1
      417 SETTABLEKS                       R26 R25 K51 ["PlayTesterLimitBanner"]
      419 GETUPVAL                         R26 7
      420 GETTABLEKS                       R26 R26 K23 ["createElement"]
      422 GETUPVAL                         R27 12
      423 DUPTABLE                         R28 K68 [{["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1}]
      424 NEWTABLE                         R29 0 1
      426 MOVE                             R30 R11
      427 SETLIST                          R29 R30 1 [1]
      429 CALL                             R26 3 1
      430 SETTABLEKS                       R26 R25 K52 ["CollaboratorList"]
      432 MOVE                             R26 R17
      433 JUMPIFNOT                        R26 ; [+35]
      434 GETUPVAL                         R26 13
      435 GETTABLEKS                       R26 R26 K23 ["createElement"]
      437 GETUPVAL                         R27 14
      438 DUPTABLE                         R28 K72 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "row align-x-right padding-x-large padding-bottom-small"}]
      439 GETIMPORT                        R29 K74 [UDim2.new]
      441 LOADN                            R30 1
      442 LOADN                            R31 0
      443 LOADN                            R32 0
      444 GETTABLEKS                       R33 R18 K75 ["audienceTabs"]
      446 GETTABLEKS                       R33 R33 K76 ["counterHeight"]
      448 CALL                             R29 4 1
      449 SETTABLEKS                       R29 R28 K70 ["Size"]
      451 DUPTABLE                         R29 K78 [{"Counter"}]
      452 GETUPVAL                         R30 13
      453 GETTABLEKS                       R30 R30 K23 ["createElement"]
      455 GETUPVAL                         R31 15
      456 DUPTABLE                         R32 K80 [{["tag"] = "auto-xy text-body-small text-align-x-right", ["Text"]}]
      457 LOADK                            R33 K81 ["%*/%*"]
      458 MOVE                             R35 R21
      459 MOVE                             R36 R20
      460 NAMECALL                         R33 R33 K82 ["format"]
      462 CALL                             R33 3 1
      463 SETTABLEKS                       R33 R32 K61 ["Text"]
      465 CALL                             R30 2 1
      466 SETTABLEKS                       R30 R29 K77 ["Counter"]
      468 CALL                             R26 3 1
      469 SETTABLEKS                       R26 R25 K53 ["PlayTesterCount"]
      471 CALL                             R22 3 -1
      472 RETURN                           R22 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["GameOwnerMetadata"]
        2 GETTABLEKS                       R3 R3 K1 ["creatorType"]
        4 GETIMPORT                        R4 K5 [Enum.CreatorType.Group]
        6 JUMPIFEQ                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R1 K6 ["ActiveTab"]
       15 NEWTABLE                         R5 0 0
       17 NEWTABLE                         R6 0 0
       19 NEWTABLE                         R7 0 0
       21 NEWTABLE                         R8 0 0
       23 NEWTABLE                         R9 0 0
       25 NEWTABLE                         R10 0 0
       27 LOADB                            R11 0
       28 JUMPIFNOT                        R3 ; [+44]
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K7 ["AUDIENCE_TAB_EDITORS"]
       32 JUMPIFNOTEQ                      R4 R12 ; [+11]
       34 GETUPVAL                         R12 2
       35 MOVE                             R13 R0
       36 GETUPVAL                         R14 3
       37 GETTABLEKS                       R14 R14 K8 ["EditKey"]
       39 CALL                             R12 2 2
       40 MOVE                             R5 R12
       41 MOVE                             R6 R13
       42 LOADB                            R11 1
       43 JUMP                             ; [+114]
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R12 R12 K9 ["AUDIENCE_TAB_COMMUNITY_PLAYERS"]
       47 JUMPIFNOTEQ                      R4 R12 ; [+15]
       49 GETUPVAL                         R12 2
       50 MOVE                             R13 R0
       51 GETUPVAL                         R14 3
       52 GETTABLEKS                       R14 R14 K10 ["PlayKey"]
       54 CALL                             R12 2 2
       55 MOVE                             R5 R12
       56 MOVE                             R6 R13
       57 GETUPVAL                         R12 4
       58 MOVE                             R13 R0
       59 CALL                             R12 1 2
       60 MOVE                             R7 R12
       61 MOVE                             R8 R13
       62 JUMP                             ; [+95]
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R12 R12 K11 ["AUDIENCE_TAB_PLAY_TESTERS"]
       66 JUMPIFNOTEQ                      R4 R12 ; [+91]
       68 GETUPVAL                         R12 5
       69 MOVE                             R13 R0
       70 CALL                             R12 1 1
       71 MOVE                             R10 R12
       72 JUMP                             ; [+85]
       73 GETUPVAL                         R12 6
       74 MOVE                             R13 R0
       75 CALL                             R12 1 1
       76 JUMPIFNOT                        R12 ; [+3]
       77 GETTABLEKS                       R13 R12 K12 ["filters"]
       79 JUMPIF                           R13 ; [+2]
       80 NEWTABLE                         R13 0 0
       82 GETUPVAL                         R15 3
       83 GETTABLEKS                       R15 R15 K13 ["UserSubjectKey"]
       85 GETTABLE                         R14 R13 R15
       86 JUMPIFNOT                        R14 ; [+5]
       87 GETUPVAL                         R14 2
       88 MOVE                             R15 R0
       89 CALL                             R14 1 2
       90 MOVE                             R5 R14
       91 MOVE                             R6 R15
       92 GETUPVAL                         R15 3
       93 GETTABLEKS                       R15 R15 K14 ["RoleSubjectKey"]
       95 GETTABLE                         R14 R13 R15
       96 JUMPIFNOT                        R14 ; [+9]
       97 GETUPVAL                         R14 4
       98 MOVE                             R15 R0
       99 CALL                             R14 1 2
      100 MOVE                             R7 R14
      101 MOVE                             R8 R15
      102 GETUPVAL                         R14 7
      103 MOVE                             R15 R0
      104 CALL                             R14 1 1
      105 MOVE                             R9 R14
      106 GETUPVAL                         R14 8
      107 GETTABLEKS                       R14 R14 K15 ["fflagCollabPV2GroupMigration"]
      109 JUMPIFNOT                        R14 ; [+14]
      110 GETTABLEKS                       R14 R0 K16 ["GroupMigrationStatus"]
      112 JUMPIFNOT                        R14 ; [+11]
      113 GETTABLEKS                       R15 R0 K16 ["GroupMigrationStatus"]
      115 GETTABLEKS                       R15 R15 K17 ["Status"]
      117 GETUPVAL                         R16 9
      118 GETTABLEKS                       R16 R16 K18 ["MIGRATED"]
      120 JUMPIFEQ                         R15 R16 ; [+2]
      122 LOADB                            R14 0 +1
      123 LOADB                            R14 1
      124 GETTABLEKS                       R15 R0 K0 ["GameOwnerMetadata"]
      126 GETTABLEKS                       R15 R15 K1 ["creatorType"]
      128 GETIMPORT                        R16 K20 [Enum.CreatorType.User]
      130 JUMPIFNOTEQ                      R15 R16 ; [+10]
      132 GETUPVAL                         R16 3
      133 GETTABLEKS                       R16 R16 K13 ["UserSubjectKey"]
      135 GETTABLE                         R15 R13 R16
      136 JUMPIFEQKB                       R15 TRUE ; [+2]
      138 LOADB                            R11 0 +1
      139 LOADB                            R11 1
      140 JUMP                             ; [+17]
      141 GETTABLEKS                       R15 R0 K0 ["GameOwnerMetadata"]
      143 GETTABLEKS                       R15 R15 K1 ["creatorType"]
      145 GETIMPORT                        R16 K5 [Enum.CreatorType.Group]
      147 JUMPIFNOTEQ                      R15 R16 ; [+9]
      149 GETUPVAL                         R16 3
      150 GETTABLEKS                       R16 R16 K14 ["RoleSubjectKey"]
      152 GETTABLE                         R15 R13 R16
      153 JUMPIFNOT                        R15 ; [+1]
      154 NOT                              R15 R14
      155 MOVE                             R11 R15
      156 JUMP                             ; [+1]
      157 LOADB                            R11 1
      158 DUPTABLE                         R12 K33 [{"NewUserCollaborators", "CurrentUserCollaborators", "NewGroupCollaborators", "CurrentGroupCollaborators", "GranularCollaborators", "PendingPlayTesters", "PendingPlayTesterCount", "OwnerId", "OwnerType", "ShowOwner", "IsGroupGame", "CanCollaborateResponses"}]
      159 SETTABLEKS                       R5 R12 K21 ["NewUserCollaborators"]
      161 SETTABLEKS                       R6 R12 K22 ["CurrentUserCollaborators"]
      163 SETTABLEKS                       R7 R12 K23 ["NewGroupCollaborators"]
      165 SETTABLEKS                       R8 R12 K24 ["CurrentGroupCollaborators"]
      167 SETTABLEKS                       R9 R12 K25 ["GranularCollaborators"]
      169 SETTABLEKS                       R10 R12 K26 ["PendingPlayTesters"]
      171 JUMPIFNOT                        R3 ; [+4]
      172 GETUPVAL                         R13 10
      173 MOVE                             R14 R0
      174 CALL                             R13 1 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R13
      177 SETTABLEKS                       R13 R12 K27 ["PendingPlayTesterCount"]
      179 GETTABLEKS                       R13 R0 K0 ["GameOwnerMetadata"]
      181 GETTABLEKS                       R13 R13 K34 ["creatorId"]
      183 SETTABLEKS                       R13 R12 K28 ["OwnerId"]
      185 GETTABLEKS                       R13 R0 K0 ["GameOwnerMetadata"]
      187 GETTABLEKS                       R13 R13 K1 ["creatorType"]
      189 SETTABLEKS                       R13 R12 K29 ["OwnerType"]
      191 SETTABLEKS                       R11 R12 K30 ["ShowOwner"]
      193 SETTABLEKS                       R2 R12 K31 ["IsGroupGame"]
      195 GETUPVAL                         R14 8
      196 GETTABLEKS                       R14 R14 K35 ["fflagManageCollaboratorsActionNeededLabel"]
      198 JUMPIFNOT                        R14 ; [+3]
      199 GETTABLEKS                       R13 R0 K32 ["CanCollaborateResponses"]
      201 JUMP                             ; [+1]
      202 LOADNIL                          R13
      203 SETTABLEKS                       R13 R12 K32 ["CanCollaborateResponses"]
      205 RETURN                           R12 1

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
       98 GETTABLEKS                       R14 R14 K26 ["Selectors"]
      100 GETTABLEKS                       R14 R14 K27 ["GetUserCollaborators"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K8 [require]
      105 GETTABLEKS                       R15 R1 K19 ["Src"]
      107 GETTABLEKS                       R15 R15 K26 ["Selectors"]
      109 GETTABLEKS                       R15 R15 K28 ["GetGroupCollaborators"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K8 [require]
      114 GETTABLEKS                       R16 R1 K19 ["Src"]
      116 GETTABLEKS                       R16 R16 K26 ["Selectors"]
      118 GETTABLEKS                       R16 R16 K29 ["GetGranularCollaborators"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K8 [require]
      123 GETTABLEKS                       R17 R1 K19 ["Src"]
      125 GETTABLEKS                       R17 R17 K26 ["Selectors"]
      127 GETTABLEKS                       R17 R17 K30 ["GetSelectedFilterPill"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K8 [require]
      132 GETTABLEKS                       R18 R1 K19 ["Src"]
      134 GETTABLEKS                       R18 R18 K26 ["Selectors"]
      136 GETTABLEKS                       R18 R18 K31 ["GetPendingPlayTesters"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K8 [require]
      141 GETTABLEKS                       R19 R1 K19 ["Src"]
      143 GETTABLEKS                       R19 R19 K26 ["Selectors"]
      145 GETTABLEKS                       R19 R19 K32 ["GetPendingPlayTesterCount"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K8 [require]
      150 GETTABLEKS                       R20 R1 K19 ["Src"]
      152 GETTABLEKS                       R20 R20 K20 ["Util"]
      154 GETTABLEKS                       R20 R20 K33 ["GetPlayTesterPermissionMaxCount"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K8 [require]
      159 GETTABLEKS                       R21 R1 K19 ["Src"]
      161 GETTABLEKS                       R21 R21 K20 ["Util"]
      163 GETTABLEKS                       R21 R21 K34 ["MigrationStatus"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K8 [require]
      168 GETTABLEKS                       R22 R1 K19 ["Src"]
      170 GETTABLEKS                       R22 R22 K20 ["Util"]
      172 GETTABLEKS                       R22 R22 K35 ["Constants"]
      174 CALL                             R21 1 1
      175 GETIMPORT                        R22 K8 [require]
      177 GETTABLEKS                       R23 R1 K19 ["Src"]
      179 GETTABLEKS                       R23 R23 K20 ["Util"]
      181 GETTABLEKS                       R23 R23 K36 ["ShouldShowAudienceTabs"]
      183 CALL                             R22 1 1
      184 GETIMPORT                        R23 K8 [require]
      186 GETTABLEKS                       R24 R1 K19 ["Src"]
      188 GETTABLEKS                       R24 R24 K22 ["Components"]
      190 GETTABLEKS                       R24 R24 K37 ["PendingPlayTesterCollaboratorItem"]
      192 CALL                             R23 1 1
      193 GETIMPORT                        R24 K8 [require]
      195 GETTABLEKS                       R25 R1 K9 ["Packages"]
      197 GETTABLEKS                       R25 R25 K38 ["React"]
      199 CALL                             R24 1 1
      200 GETIMPORT                        R25 K8 [require]
      202 GETTABLEKS                       R26 R1 K9 ["Packages"]
      204 GETTABLEKS                       R26 R26 K39 ["Foundation"]
      206 CALL                             R25 1 1
      207 GETTABLEKS                       R26 R25 K40 ["Text"]
      209 GETTABLEKS                       R27 R25 K41 ["View"]
      211 GETTABLEKS                       R28 R7 K20 ["Util"]
      213 GETTABLEKS                       R29 R28 K42 ["LayoutOrderIterator"]
      215 MOVE                             R30 R9
      216 LOADK                            R31 K43 ["Frame"]
      217 LOADK                            R32 K44 ["UIListLayout"]
      218 DUPTABLE                         R33 K49 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
      219 GETIMPORT                        R34 K52 [Enum.SortOrder.LayoutOrder]
      221 SETTABLEKS                       R34 R33 K45 ["SortOrder"]
      223 GETIMPORT                        R34 K54 [Enum.FillDirection.Vertical]
      225 SETTABLEKS                       R34 R33 K46 ["FillDirection"]
      227 GETIMPORT                        R34 K57 [UDim.new]
      229 LOADN                            R35 0
      230 LOADN                            R36 0
      231 CALL                             R34 2 1
      232 SETTABLEKS                       R34 R33 K47 ["Padding"]
      234 GETIMPORT                        R34 K59 [Enum.HorizontalAlignment.Center]
      236 SETTABLEKS                       R34 R33 K48 ["HorizontalAlignment"]
      238 CALL                             R30 3 1
      239 GETTABLEKS                       R31 R2 K60 ["PureComponent"]
      241 LOADK                            R33 K61 ["CollaboratorsWidget"]
      242 NAMECALL                         R31 R31 K62 ["extend"]
      244 CALL                             R31 2 1
      245 GETIMPORT                        R32 K8 [require]
      247 GETTABLEKS                       R33 R1 K19 ["Src"]
      249 GETTABLEKS                       R33 R33 K20 ["Util"]
      251 GETTABLEKS                       R33 R33 K63 ["PermissionsConstants"]
      253 CALL                             R32 1 1
      254 DUPCLOSURE                       R33 K64 [PROTO_0]
      255 CAPTURE                          VAL R0
      256 CAPTURE                          VAL R29
      257 CAPTURE                          VAL R4
      258 CAPTURE                          VAL R22
      259 CAPTURE                          VAL R21
      260 CAPTURE                          VAL R10
      261 CAPTURE                          VAL R11
      262 CAPTURE                          VAL R2
      263 CAPTURE                          VAL R12
      264 CAPTURE                          VAL R32
      265 CAPTURE                          VAL R23
      266 CAPTURE                          VAL R19
      267 CAPTURE                          VAL R30
      268 CAPTURE                          VAL R24
      269 CAPTURE                          VAL R27
      270 CAPTURE                          VAL R26
      271 SETTABLEKS                       R33 R31 K65 ["render"]
      273 MOVE                             R33 R6
      274 DUPTABLE                         R34 K67 [{"Stylizer", "Localization"}]
      275 SETTABLEKS                       R8 R34 K18 ["Stylizer"]
      277 GETTABLEKS                       R35 R5 K66 ["Localization"]
      279 SETTABLEKS                       R35 R34 K66 ["Localization"]
      281 CALL                             R33 1 1
      282 MOVE                             R34 R31
      283 CALL                             R33 1 1
      284 MOVE                             R31 R33
      285 GETTABLEKS                       R33 R3 K68 ["connect"]
      287 DUPCLOSURE                       R34 K69 [PROTO_1]
      288 CAPTURE                          VAL R22
      289 CAPTURE                          VAL R21
      290 CAPTURE                          VAL R13
      291 CAPTURE                          VAL R32
      292 CAPTURE                          VAL R14
      293 CAPTURE                          VAL R17
      294 CAPTURE                          VAL R16
      295 CAPTURE                          VAL R15
      296 CAPTURE                          VAL R4
      297 CAPTURE                          VAL R20
      298 CAPTURE                          VAL R18
      299 CALL                             R33 1 1
      300 MOVE                             R34 R31
      301 CALL                             R33 1 1
      302 MOVE                             R31 R33
      303 RETURN                           R31 1
