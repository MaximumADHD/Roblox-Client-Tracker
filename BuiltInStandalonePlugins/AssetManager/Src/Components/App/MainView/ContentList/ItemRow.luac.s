PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
        7 GETTABLEKS                       R3 R3 K2 ["Creator"]
        9 JUMPIFNOTEQ                      R1 R3 ; [+11]
       11 GETTABLEKS                       R4 R0 K3 ["Name"]
       13 JUMPIFEQKS                       R4 K4 [""] ; [+4]
       15 GETTABLEKS                       R3 R0 K3 ["Name"]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R0 K5 ["Id"]
       20 RETURN                           R3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       24 GETTABLEKS                       R3 R3 K6 ["Modified"]
       26 JUMPIFEQ                         R1 R3 ; [+8]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       31 GETTABLEKS                       R3 R3 K7 ["Created"]
       33 JUMPIFNOTEQ                      R1 R3 ; [+15]
       35 JUMPIFNOTEQKN                    R0 K8 [0] ; [+3]
       37 LOADK                            R3 K9 ["--"]
       38 RETURN                           R3 1
       39 GETIMPORT                        R3 K12 [DateTime.fromUnixTimestampMillis]
       41 MOVE                             R4 R0
       42 CALL                             R3 1 1
       43 LOADK                            R6 K13 ["lll"]
       44 LOADK                            R7 K14 ["en-us"]
       45 NAMECALL                         R4 R3 K15 ["FormatLocalTime"]
       47 CALL                             R4 3 -1
       48 RETURN                           R4 -1
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       52 GETTABLEKS                       R3 R3 K16 ["AssetType"]
       54 JUMPIFNOTEQ                      R1 R3 ; [+7]
       56 LOADK                            R5 K16 ["AssetType"]
       57 MOVE                             R6 R0
       58 NAMECALL                         R3 R2 K17 ["getText"]
       60 CALL                             R3 3 -1
       61 RETURN                           R3 -1
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       65 GETTABLEKS                       R3 R3 K18 ["Source"]
       67 JUMPIFNOTEQ                      R1 R3 ; [+7]
       69 LOADK                            R5 K19 ["AssetSource"]
       70 MOVE                             R6 R0
       71 NAMECALL                         R3 R2 K17 ["getText"]
       73 CALL                             R3 3 -1
       74 RETURN                           R3 -1
       75 GETUPVAL                         R3 1
       76 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       78 GETTABLEKS                       R3 R3 K20 ["AssetId"]
       80 JUMPIFNOTEQ                      R1 R3 ; [+7]
       82 JUMPIFNOTEQKN                    R0 K8 [0] ; [+5]
       84 GETUPVAL                         R3 2
       85 GETTABLEKS                       R3 R3 K21 ["PlaceholderText"]
       87 RETURN                           R3 1
       88 FASTCALL1                        TOSTRING R0 ; [+3]
       89 MOVE                             R4 R0
       90 GETIMPORT                        R3 K23 [tostring]
       92 CALL                             R3 1 1
       93 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 1
        3 GETUPVAL                         R2 1
        4 SETLIST                          R1 R2 1 [1]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K0 ["use"]
        5 CALL                             R5 0 1
        6 GETUPVAL                         R6 1
        7 CALL                             R6 0 2
        8 GETUPVAL                         R8 2
        9 CALL                             R8 0 1
       10 GETUPVAL                         R9 3
       11 GETTABLEKS                       R9 R9 K1 ["useRef"]
       13 LOADNIL                          R10
       14 CALL                             R9 1 1
       15 GETUPVAL                         R10 4
       16 MOVE                             R11 R9
       17 CALL                             R10 1 1
       18 GETUPVAL                         R11 3
       19 GETTABLEKS                       R11 R11 K1 ["useRef"]
       21 LOADNIL                          R12
       22 CALL                             R11 1 1
       23 GETUPVAL                         R12 4
       24 MOVE                             R13 R11
       25 CALL                             R12 1 1
       26 GETTABLEKS                       R13 R0 K2 ["ParentScope"]
       28 GETTABLEKS                       R13 R13 K3 ["Uid"]
       30 GETTABLEKS                       R14 R0 K4 ["ItemPath"]
       32 GETTABLEKS                       R17 R8 K5 ["ListRowHeight"]
       34 GETUPVAL                         R18 5
       35 GETTABLEKS                       R18 R18 K6 ["ListThumbnailContainerScale"]
       37 MUL                              R16 R17 R18
       38 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       39 GETIMPORT                        R15 K9 [math.floor]
       41 CALL                             R15 1 1
       42 MOVE                             R16 R6
       43 LOADNIL                          R17
       44 LOADNIL                          R18
       45 FORGPREP                         R16
       46 MOVE                             R23 R13
       47 MOVE                             R24 R14
       48 MOVE                             R25 R20
       49 NAMECALL                         R21 R1 K10 ["getItemField"]
       51 CALL                             R21 4 1
       52 JUMPIFNOT                        R21 ; [+5]
       53 GETUPVAL                         R22 6
       54 MOVE                             R23 R21
       55 MOVE                             R24 R20
       56 CALL                             R22 2 1
       57 JUMP                             ; [+3]
       58 GETUPVAL                         R22 7
       59 GETTABLEKS                       R22 R22 K11 ["PlaceholderText"]
       61 GETTABLE                         R23 R7 R19
       62 GETTABLEKS                       R23 R23 K12 ["Offset"]
       64 GETUPVAL                         R25 8
       65 MOVE                             R26 R22
       66 CALL                             R25 1 1
       67 GETTABLEKS                       R25 R25 K13 ["X"]
       69 GETUPVAL                         R28 9
       70 LOADK                            R30 K15 ["CellContentPadding"]
       71 NAMECALL                         R28 R28 K16 ["GetAttribute"]
       73 CALL                             R28 2 1
       74 MULK                             R27 R28 K14 [2]
       75 SUB                              R26 R23 R27
       76 JUMPIFLT                         R26 R25 ; [+2]
       78 LOADB                            R24 0 +1
       79 LOADB                            R24 1
       80 JUMPIFNOTEQKN                    R19 K17 [1] ; [+338]
       82 MOVE                             R27 R13
       83 MOVE                             R28 R14
       84 GETUPVAL                         R29 10
       85 GETTABLEKS                       R29 R29 K18 ["AssetInfoField"]
       87 GETTABLEKS                       R29 R29 K19 ["AssetType"]
       89 NAMECALL                         R25 R1 K10 ["getItemField"]
       91 CALL                             R25 4 1
       92 MOVE                             R28 R13
       93 MOVE                             R29 R14
       94 GETUPVAL                         R30 10
       95 GETTABLEKS                       R30 R30 K18 ["AssetInfoField"]
       97 GETTABLEKS                       R30 R30 K20 ["AssetId"]
       99 NAMECALL                         R26 R1 K10 ["getItemField"]
      101 CALL                             R26 4 1
      102 MOVE                             R29 R13
      103 MOVE                             R30 R14
      104 GETUPVAL                         R31 10
      105 GETTABLEKS                       R31 R31 K18 ["AssetInfoField"]
      107 GETTABLEKS                       R31 R31 K21 ["IsPackage"]
      109 NAMECALL                         R27 R1 K10 ["getItemField"]
      111 CALL                             R27 4 1
      112 MOVE                             R30 R13
      113 MOVE                             R31 R14
      114 GETUPVAL                         R32 10
      115 GETTABLEKS                       R32 R32 K18 ["AssetInfoField"]
      117 GETTABLEKS                       R32 R32 K22 ["ModerationStatus"]
      119 NAMECALL                         R28 R1 K10 ["getItemField"]
      121 CALL                             R28 4 1
      122 SUB                              R30 R23 R15
      123 GETUPVAL                         R31 9
      124 LOADK                            R33 K15 ["CellContentPadding"]
      125 NAMECALL                         R31 R31 K16 ["GetAttribute"]
      127 CALL                             R31 2 1
      128 SUB                              R29 R30 R31
      129 LOADNIL                          R30
      130 MOVE                             R31 R29
      131 GETUPVAL                         R32 11
      132 CALL                             R32 0 1
      133 JUMPIFNOT                        R32 ; [+22]
      134 GETUPVAL                         R32 10
      135 GETTABLEKS                       R32 R32 K22 ["ModerationStatus"]
      137 GETTABLEKS                       R32 R32 K23 ["Rejected"]
      139 JUMPIFNOTEQ                      R28 R32 ; [+16]
      141 GETUPVAL                         R32 3
      142 GETTABLEKS                       R32 R32 K24 ["createElement"]
      144 GETUPVAL                         R33 12
      145 DUPTABLE                         R34 K27 [{["LayoutOrder"] = 2, ["AssetId"], ["AssetPath"]}]
      146 SETTABLEKS                       R26 R34 K20 ["AssetId"]
      148 SETTABLEKS                       R14 R34 K26 ["AssetPath"]
      150 CALL                             R32 2 1
      151 MOVE                             R30 R32
      152 GETUPVAL                         R32 5
      153 GETTABLEKS                       R32 R32 K28 ["IconWidth"]
      155 SUB                              R31 R31 R32
      156 GETUPVAL                         R32 3
      157 GETTABLEKS                       R32 R32 K24 ["createElement"]
      159 GETUPVAL                         R33 13
      160 GETTABLEKS                       R33 R33 K29 ["Text"]
      162 DUPTABLE                         R34 K33 [{["LayoutOrder"] = 1, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      163 SETTABLEKS                       R22 R34 K29 ["Text"]
      165 GETIMPORT                        R35 K36 [UDim2.fromOffset]
      167 MOVE                             R36 R31
      168 LOADN                            R37 0
      169 CALL                             R35 2 1
      170 SETTABLEKS                       R35 R34 K30 ["Size"]
      172 CALL                             R32 2 1
      173 GETUPVAL                         R33 3
      174 GETTABLEKS                       R33 R33 K24 ["createElement"]
      176 GETUPVAL                         R34 13
      177 GETTABLEKS                       R34 R34 K37 ["View"]
      179 DUPTABLE                         R35 K39 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-x-left align-y-center padding-left-small"}]
      180 SETTABLEKS                       R19 R35 K25 ["LayoutOrder"]
      182 GETIMPORT                        R36 K41 [UDim2.new]
      184 LOADN                            R37 0
      185 MOVE                             R38 R23
      186 LOADN                            R39 1
      187 LOADN                            R40 0
      188 CALL                             R36 4 1
      189 SETTABLEKS                       R36 R35 K30 ["Size"]
      191 DUPTABLE                         R36 K44 [{"ThumbnailContainer", "AssetName"}]
      192 GETUPVAL                         R37 3
      193 GETTABLEKS                       R37 R37 K24 ["createElement"]
      195 GETUPVAL                         R38 13
      196 GETTABLEKS                       R38 R38 K37 ["View"]
      198 DUPTABLE                         R39 K46 [{["LayoutOrder"] = 1, ["Size"], ["ref"], ["tag"]}]
      199 GETIMPORT                        R40 K36 [UDim2.fromOffset]
      201 MOVE                             R41 R15
      202 MOVE                             R42 R15
      203 CALL                             R40 2 1
      204 SETTABLEKS                       R40 R39 K30 ["Size"]
      206 SETTABLEKS                       R9 R39 K45 ["ref"]
      208 NEWTABLE                         R40 1 0
      210 LOADB                            R41 1
      211 SETTABLEKS                       R41 R40 K47 ["bg-foreground-contrast radius-small"]
      213 SETTABLEKS                       R40 R39 K31 ["tag"]
      215 DUPTABLE                         R40 K51 [{"Thumbnail", "AudioOverlay", "PackageLinkIcon"}]
      216 GETUPVAL                         R41 3
      217 GETTABLEKS                       R41 R41 K24 ["createElement"]
      219 GETUPVAL                         R42 14
      220 DUPTABLE                         R43 K52 [{"AssetId", "AssetType"}]
      221 SETTABLEKS                       R26 R43 K20 ["AssetId"]
      223 SETTABLEKS                       R25 R43 K19 ["AssetType"]
      225 CALL                             R41 2 1
      226 SETTABLEKS                       R41 R40 K48 ["Thumbnail"]
      228 GETUPVAL                         R42 10
      229 GETTABLEKS                       R42 R42 K19 ["AssetType"]
      231 GETTABLEKS                       R42 R42 K53 ["Audio"]
      233 JUMPIFNOTEQ                      R25 R42 ; [+14]
      235 GETUPVAL                         R41 3
      236 GETTABLEKS                       R41 R41 K24 ["createElement"]
      238 GETUPVAL                         R42 15
      239 DUPTABLE                         R43 K56 [{"AssetId", "IsHovered", "OnRightClick"}]
      240 SETTABLEKS                       R26 R43 K20 ["AssetId"]
      242 SETTABLEKS                       R10 R43 K54 ["IsHovered"]
      244 SETTABLEKS                       R3 R43 K55 ["OnRightClick"]
      246 CALL                             R41 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R41
      249 SETTABLEKS                       R41 R40 K49 ["AudioOverlay"]
      251 JUMPIFNOT                        R27 ; [+6]
      252 GETUPVAL                         R41 3
      253 GETTABLEKS                       R41 R41 K24 ["createElement"]
      255 GETUPVAL                         R42 16
      256 CALL                             R41 1 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R41
      259 SETTABLEKS                       R41 R40 K50 ["PackageLinkIcon"]
      261 CALL                             R37 3 1
      262 SETTABLEKS                       R37 R36 K42 ["ThumbnailContainer"]
      264 GETUPVAL                         R38 11
      265 CALL                             R38 0 1
      266 JUMPIFNOT                        R38 ; [+69]
      267 GETUPVAL                         R37 3
      268 GETTABLEKS                       R37 R37 K24 ["createElement"]
      270 GETUPVAL                         R38 13
      271 GETTABLEKS                       R38 R38 K37 ["View"]
      273 DUPTABLE                         R39 K58 [{["LayoutOrder"] = 2, ["tag"] = "row align-x-left align-y-center", ["Size"]}]
      274 GETIMPORT                        R40 K41 [UDim2.new]
      276 LOADN                            R41 0
      277 MOVE                             R42 R29
      278 LOADN                            R43 1
      279 LOADN                            R44 0
      280 CALL                             R40 4 1
      281 SETTABLEKS                       R40 R39 K30 ["Size"]
      283 DUPTABLE                         R40 K61 [{"Name", "State"}]
      284 JUMPIFNOT                        R2 ; [+22]
      285 GETUPVAL                         R41 3
      286 GETTABLEKS                       R41 R41 K24 ["createElement"]
      288 GETUPVAL                         R42 17
      289 DUPTABLE                         R43 K64 [{["LayoutOrder"] = 1, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      290 SETTABLEKS                       R22 R43 K62 ["InitialText"]
      292 SETTABLEKS                       R25 R43 K63 ["ItemType"]
      294 SETTABLEKS                       R14 R43 K4 ["ItemPath"]
      296 GETIMPORT                        R44 K41 [UDim2.new]
      298 LOADN                            R45 0
      299 MOVE                             R46 R31
      300 LOADN                            R47 1
      301 LOADN                            R48 0
      302 CALL                             R44 4 1
      303 SETTABLEKS                       R44 R43 K30 ["Size"]
      305 CALL                             R41 2 1
      306 JUMP                             ; [+23]
      307 JUMPIFNOT                        R24 ; [+21]
      308 GETUPVAL                         R41 3
      309 GETTABLEKS                       R41 R41 K24 ["createElement"]
      311 GETUPVAL                         R42 13
      312 GETTABLEKS                       R42 R42 K65 ["Tooltip"]
      314 DUPTABLE                         R43 K68 [{["LayoutOrder"] = 1, ["title"], ["side"]}]
      315 SETTABLEKS                       R22 R43 K66 ["title"]
      317 GETUPVAL                         R44 13
      318 GETTABLEKS                       R44 R44 K69 ["Enums"]
      320 GETTABLEKS                       R44 R44 K70 ["PopoverSide"]
      322 GETTABLEKS                       R44 R44 K71 ["Bottom"]
      324 SETTABLEKS                       R44 R43 K67 ["side"]
      326 MOVE                             R44 R32
      327 CALL                             R41 3 1
      328 JUMP                             ; [+1]
      329 MOVE                             R41 R32
      330 SETTABLEKS                       R41 R40 K59 ["Name"]
      332 SETTABLEKS                       R30 R40 K60 ["State"]
      334 CALL                             R37 3 1
      335 JUMP                             ; [+78]
      336 JUMPIFNOT                        R2 ; [+22]
      337 GETUPVAL                         R37 3
      338 GETTABLEKS                       R37 R37 K24 ["createElement"]
      340 GETUPVAL                         R38 17
      341 DUPTABLE                         R39 K72 [{["LayoutOrder"] = 2, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      342 SETTABLEKS                       R22 R39 K62 ["InitialText"]
      344 SETTABLEKS                       R25 R39 K63 ["ItemType"]
      346 SETTABLEKS                       R14 R39 K4 ["ItemPath"]
      348 GETIMPORT                        R40 K41 [UDim2.new]
      350 LOADN                            R41 0
      351 MOVE                             R42 R29
      352 LOADN                            R43 1
      353 LOADN                            R44 0
      354 CALL                             R40 4 1
      355 SETTABLEKS                       R40 R39 K30 ["Size"]
      357 CALL                             R37 2 1
      358 JUMP                             ; [+55]
      359 JUMPIFNOT                        R24 ; [+37]
      360 GETUPVAL                         R37 3
      361 GETTABLEKS                       R37 R37 K24 ["createElement"]
      363 GETUPVAL                         R38 13
      364 GETTABLEKS                       R38 R38 K65 ["Tooltip"]
      366 DUPTABLE                         R39 K73 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      367 SETTABLEKS                       R22 R39 K66 ["title"]
      369 GETUPVAL                         R40 13
      370 GETTABLEKS                       R40 R40 K69 ["Enums"]
      372 GETTABLEKS                       R40 R40 K70 ["PopoverSide"]
      374 GETTABLEKS                       R40 R40 K71 ["Bottom"]
      376 SETTABLEKS                       R40 R39 K67 ["side"]
      378 GETUPVAL                         R40 3
      379 GETTABLEKS                       R40 R40 K24 ["createElement"]
      381 GETUPVAL                         R41 13
      382 GETTABLEKS                       R41 R41 K29 ["Text"]
      384 DUPTABLE                         R42 K74 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      385 SETTABLEKS                       R22 R42 K29 ["Text"]
      387 GETIMPORT                        R43 K36 [UDim2.fromOffset]
      389 MOVE                             R44 R29
      390 LOADN                            R45 0
      391 CALL                             R43 2 1
      392 SETTABLEKS                       R43 R42 K30 ["Size"]
      394 CALL                             R40 2 -1
      395 CALL                             R37 -1 1
      396 JUMP                             ; [+17]
      397 GETUPVAL                         R37 3
      398 GETTABLEKS                       R37 R37 K24 ["createElement"]
      400 GETUPVAL                         R38 13
      401 GETTABLEKS                       R38 R38 K29 ["Text"]
      403 DUPTABLE                         R39 K74 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      404 SETTABLEKS                       R22 R39 K29 ["Text"]
      406 GETIMPORT                        R40 K36 [UDim2.fromOffset]
      408 MOVE                             R41 R29
      409 LOADN                            R42 0
      410 CALL                             R40 2 1
      411 SETTABLEKS                       R40 R39 K30 ["Size"]
      413 CALL                             R37 2 1
      414 SETTABLEKS                       R37 R36 K43 ["AssetName"]
      416 CALL                             R33 3 1
      417 SETTABLE                         R33 R4 R19
      418 JUMP                             ; [+190]
      419 GETUPVAL                         R25 18
      420 CALL                             R25 0 1
      421 JUMPIFNOT                        R25 ; [+121]
      422 GETUPVAL                         R25 10
      423 GETTABLEKS                       R25 R25 K18 ["AssetInfoField"]
      425 GETTABLEKS                       R25 R25 K20 ["AssetId"]
      427 JUMPIFNOTEQ                      R20 R25 ; [+115]
      429 MOVE                             R25 R12
      430 JUMPIFNOT                        R25 ; [+7]
      431 LOADB                            R25 0
      432 JUMPIFEQKNIL                     R21 ; [+5]
      434 JUMPIFNOTEQKN                    R21 K75 [0] ; [+2]
      436 LOADB                            R25 0 +1
      437 LOADB                            R25 1
      438 GETUPVAL                         R26 3
      439 GETTABLEKS                       R26 R26 K24 ["createElement"]
      441 GETUPVAL                         R27 13
      442 GETTABLEKS                       R27 R27 K37 ["View"]
      444 DUPTABLE                         R28 K77 [{["LayoutOrder"], ["Size"], ["ref"], ["tag"] = "row align-x-left align-y-center gap-xsmall"}]
      445 SETTABLEKS                       R19 R28 K25 ["LayoutOrder"]
      447 GETIMPORT                        R29 K41 [UDim2.new]
      449 LOADN                            R30 0
      450 MOVE                             R31 R23
      451 LOADN                            R32 1
      452 LOADN                            R33 0
      453 CALL                             R29 4 1
      454 SETTABLEKS                       R29 R28 K30 ["Size"]
      456 SETTABLEKS                       R11 R28 K45 ["ref"]
      458 DUPTABLE                         R29 K79 [{"Text", "CopyIdButton"}]
      459 GETUPVAL                         R30 3
      460 GETTABLEKS                       R30 R30 K24 ["createElement"]
      462 GETUPVAL                         R31 13
      463 GETTABLEKS                       R31 R31 K29 ["Text"]
      465 DUPTABLE                         R32 K81 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-x size-0-full shrink padding-left-small text-body-small text-align-x-left text-truncate-end"}]
      466 SETTABLEKS                       R22 R32 K29 ["Text"]
      468 CALL                             R30 2 1
      469 SETTABLEKS                       R30 R29 K29 ["Text"]
      471 JUMPIFNOT                        R25 ; [+65]
      472 GETUPVAL                         R30 3
      473 GETTABLEKS                       R30 R30 K24 ["createElement"]
      475 GETUPVAL                         R31 13
      476 GETTABLEKS                       R31 R31 K65 ["Tooltip"]
      478 DUPTABLE                         R32 K73 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      479 LOADK                            R35 K82 ["ContextMenu"]
      480 LOADK                            R36 K83 ["CopyIdToClipboard"]
      481 NAMECALL                         R33 R5 K84 ["getText"]
      483 CALL                             R33 3 1
      484 SETTABLEKS                       R33 R32 K66 ["title"]
      486 GETUPVAL                         R33 13
      487 GETTABLEKS                       R33 R33 K69 ["Enums"]
      489 GETTABLEKS                       R33 R33 K70 ["PopoverSide"]
      491 GETTABLEKS                       R33 R33 K71 ["Bottom"]
      493 SETTABLEKS                       R33 R32 K67 ["side"]
      495 GETUPVAL                         R33 3
      496 GETTABLEKS                       R33 R33 K24 ["createElement"]
      498 GETUPVAL                         R34 13
      499 GETTABLEKS                       R34 R34 K85 ["IconButton"]
      501 DUPTABLE                         R35 K92 [{["icon"], ["size"], ["variant"], ["onActivated"], ["testId"] = "copy-asset-id-button"}]
      502 GETUPVAL                         R36 13
      503 GETTABLEKS                       R36 R36 K69 ["Enums"]
      505 GETTABLEKS                       R36 R36 K93 ["IconName"]
      507 GETTABLEKS                       R36 R36 K94 ["TwoStackedSquares"]
      509 SETTABLEKS                       R36 R35 K86 ["icon"]
      511 GETUPVAL                         R36 13
      512 GETTABLEKS                       R36 R36 K69 ["Enums"]
      514 GETTABLEKS                       R36 R36 K95 ["InputSize"]
      516 GETTABLEKS                       R36 R36 K96 ["XSmall"]
      518 SETTABLEKS                       R36 R35 K87 ["size"]
      520 GETUPVAL                         R36 13
      521 GETTABLEKS                       R36 R36 K69 ["Enums"]
      523 GETTABLEKS                       R36 R36 K97 ["ButtonVariant"]
      525 GETTABLEKS                       R36 R36 K98 ["Utility"]
      527 SETTABLEKS                       R36 R35 K88 ["variant"]
      529 NEWCLOSURE                       R36 P0
      530 CAPTURE                          UPVAL U19
      531 CAPTURE                          VAL R21
      532 SETTABLEKS                       R36 R35 K89 ["onActivated"]
      534 CALL                             R33 2 -1
      535 CALL                             R30 -1 1
      536 JUMP                             ; [+1]
      537 LOADNIL                          R30
      538 SETTABLEKS                       R30 R29 K78 ["CopyIdButton"]
      540 CALL                             R26 3 1
      541 SETTABLE                         R26 R4 R19
      542 JUMP                             ; [+66]
      543 JUMPIFNOT                        R24 ; [+43]
      544 GETUPVAL                         R25 3
      545 GETTABLEKS                       R25 R25 K24 ["createElement"]
      547 GETUPVAL                         R26 13
      548 GETTABLEKS                       R26 R26 K65 ["Tooltip"]
      550 DUPTABLE                         R27 K99 [{"LayoutOrder", "title", "side"}]
      551 SETTABLEKS                       R19 R27 K25 ["LayoutOrder"]
      553 SETTABLEKS                       R22 R27 K66 ["title"]
      555 GETUPVAL                         R28 13
      556 GETTABLEKS                       R28 R28 K69 ["Enums"]
      558 GETTABLEKS                       R28 R28 K70 ["PopoverSide"]
      560 GETTABLEKS                       R28 R28 K71 ["Bottom"]
      562 SETTABLEKS                       R28 R27 K67 ["side"]
      564 GETUPVAL                         R28 3
      565 GETTABLEKS                       R28 R28 K24 ["createElement"]
      567 GETUPVAL                         R29 13
      568 GETTABLEKS                       R29 R29 K29 ["Text"]
      570 DUPTABLE                         R30 K101 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      571 SETTABLEKS                       R19 R30 K25 ["LayoutOrder"]
      573 SETTABLEKS                       R22 R30 K29 ["Text"]
      575 GETIMPORT                        R31 K41 [UDim2.new]
      577 LOADN                            R32 0
      578 MOVE                             R33 R23
      579 LOADN                            R34 1
      580 LOADN                            R35 0
      581 CALL                             R31 4 1
      582 SETTABLEKS                       R31 R30 K30 ["Size"]
      584 CALL                             R28 2 -1
      585 CALL                             R25 -1 1
      586 JUMP                             ; [+21]
      587 GETUPVAL                         R25 3
      588 GETTABLEKS                       R25 R25 K24 ["createElement"]
      590 GETUPVAL                         R26 13
      591 GETTABLEKS                       R26 R26 K29 ["Text"]
      593 DUPTABLE                         R27 K101 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      594 SETTABLEKS                       R19 R27 K25 ["LayoutOrder"]
      596 SETTABLEKS                       R22 R27 K29 ["Text"]
      598 GETIMPORT                        R28 K41 [UDim2.new]
      600 LOADN                            R29 0
      601 MOVE                             R30 R23
      602 LOADN                            R31 1
      603 LOADN                            R32 0
      604 CALL                             R28 4 1
      605 SETTABLEKS                       R28 R27 K30 ["Size"]
      607 CALL                             R25 2 1
      608 SETTABLE                         R25 R4 R19
      609 FORGLOOP                         R16 2 ; [-564]
      611 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemPath"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["UiZone"]
        7 GETTABLEKS                       R3 R3 K2 ["Browser"]
        9 MOVE                             R4 R0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["Key"]
       13 GETUPVAL                         R6 3
       14 NAMECALL                         R1 R1 K4 ["handleMouse2Click"]
       16 CALL                             R1 5 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Down"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Browser"]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R6 R6 K2 ["Key"]
        9 NAMECALL                         R3 R3 K3 ["handleMouse1Up"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R5 R0 K1 ["ItemPath"]
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 4
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 5
       17 GETTABLEKS                       R6 R6 K2 ["useRef"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 6
       22 MOVE                             R8 R6
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 7
       25 MOVE                             R9 R7
       26 GETTABLEKS                       R10 R0 K1 ["ItemPath"]
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 8
       30 LOADK                            R10 K3 ["gui-object-defaults row align-x-left align-y-center"]
       31 CALL                             R9 1 1
       32 GETUPVAL                         R10 9
       33 GETUPVAL                         R11 10
       34 GETTABLEKS                       R11 R11 K4 ["MenuContext"]
       36 GETTABLEKS                       R11 R11 K5 ["Asset"]
       38 DUPTABLE                         R12 K8 [{"Path", "Index"}]
       39 GETTABLEKS                       R13 R0 K1 ["ItemPath"]
       41 SETTABLEKS                       R13 R12 K6 ["Path"]
       43 GETTABLEKS                       R13 R0 K9 ["Key"]
       45 SETTABLEKS                       R13 R12 K7 ["Index"]
       47 CALL                             R10 2 1
       48 NEWCLOSURE                       R11 P0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          VAL R10
       53 GETUPVAL                         R12 11
       54 MOVE                             R13 R0
       55 NAMECALL                         R14 R2 K10 ["getItemsCache"]
       57 CALL                             R14 1 1
       58 MOVE                             R15 R4
       59 MOVE                             R16 R11
       60 CALL                             R12 4 1
       61 GETTABLEKS                       R14 R0 K1 ["ItemPath"]
       63 GETTABLE                         R13 R3 R14
       64 GETUPVAL                         R14 5
       65 GETTABLEKS                       R14 R14 K11 ["createElement"]
       67 GETUPVAL                         R15 12
       68 GETTABLEKS                       R15 R15 K12 ["View"]
       70 DUPTABLE                         R16 K18 [{"LayoutOrder", "Position", "Size", "ref", "tag"}]
       71 GETTABLEKS                       R17 R0 K9 ["Key"]
       73 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
       75 GETTABLEKS                       R17 R0 K14 ["Position"]
       77 SETTABLEKS                       R17 R16 K14 ["Position"]
       79 GETIMPORT                        R17 K21 [UDim2.new]
       81 LOADN                            R18 1
       82 LOADN                            R19 0
       83 LOADN                            R20 0
       84 GETTABLEKS                       R21 R5 K22 ["ListRowHeight"]
       86 CALL                             R17 4 1
       87 SETTABLEKS                       R17 R16 K15 ["Size"]
       89 SETTABLEKS                       R6 R16 K16 ["ref"]
       91 NEWTABLE                         R17 8 0
       93 LOADB                            R18 1
       94 SETTABLEKS                       R18 R17 K23 ["auto-x"]
       96 SETTABLEKS                       R13 R17 K24 ["bg-action-soft-emphasis"]
       98 NOT                              R19 R13
       99 AND                              R18 R19 R7
      100 SETTABLEKS                       R18 R17 K25 ["bg-shift-200"]
      102 NOT                              R18 R8
      103 SETTABLEKS                       R18 R17 K26 ["stroke-thin stroke-default"]
      105 SETTABLEKS                       R8 R17 K27 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      107 SETTABLEKS                       R17 R16 K17 ["tag"]
      109 DUPTABLE                         R17 K29 [{"InputHandler"}]
      110 GETUPVAL                         R18 5
      111 GETTABLEKS                       R18 R18 K11 ["createElement"]
      113 LOADK                            R19 K30 ["ImageButton"]
      114 NEWTABLE                         R20 8 0
      116 GETUPVAL                         R21 5
      117 GETTABLEKS                       R21 R21 K31 ["Event"]
      119 GETTABLEKS                       R21 R21 K32 ["MouseButton2Click"]
      121 SETTABLE                         R11 R20 R21
      122 GETUPVAL                         R21 5
      123 GETTABLEKS                       R21 R21 K31 ["Event"]
      125 GETTABLEKS                       R21 R21 K33 ["MouseButton1Down"]
      127 NEWCLOSURE                       R22 P1
      128 CAPTURE                          VAL R1
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          VAL R0
      131 SETTABLE                         R22 R20 R21
      132 GETUPVAL                         R21 5
      133 GETTABLEKS                       R21 R21 K31 ["Event"]
      135 GETTABLEKS                       R21 R21 K34 ["MouseButton1Up"]
      137 NEWCLOSURE                       R22 P2
      138 CAPTURE                          VAL R1
      139 CAPTURE                          UPVAL U10
      140 CAPTURE                          VAL R0
      141 SETTABLE                         R22 R20 R21
      142 GETIMPORT                        R21 K21 [UDim2.new]
      144 LOADN                            R22 1
      145 LOADN                            R23 0
      146 LOADN                            R24 0
      147 GETTABLEKS                       R25 R5 K22 ["ListRowHeight"]
      149 CALL                             R21 4 1
      150 SETTABLEKS                       R21 R20 K15 ["Size"]
      152 GETUPVAL                         R21 5
      153 GETTABLEKS                       R21 R21 K35 ["Tag"]
      155 SETTABLE                         R9 R20 R21
      156 MOVE                             R21 R12
      157 CALL                             R18 3 1
      158 SETTABLEKS                       R18 R17 K28 ["InputHandler"]
      160 CALL                             R14 3 -1
      161 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Components"]
       38 GETTABLEKS                       R7 R7 K14 ["Shared"]
       40 GETTABLEKS                       R7 R7 K15 ["AudioPreviewOverlay"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K13 ["Components"]
       49 GETTABLEKS                       R8 R8 K14 ["Shared"]
       51 GETTABLEKS                       R8 R8 K16 ["EditNameInput"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K13 ["Components"]
       60 GETTABLEKS                       R9 R9 K14 ["Shared"]
       62 GETTABLEKS                       R9 R9 K17 ["ItemThumbnail"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K12 ["Src"]
       69 GETTABLEKS                       R10 R10 K13 ["Components"]
       71 GETTABLEKS                       R10 R10 K14 ["Shared"]
       73 GETTABLEKS                       R10 R10 K18 ["PackageLinkIcon"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K12 ["Src"]
       80 GETTABLEKS                       R11 R11 K13 ["Components"]
       82 GETTABLEKS                       R11 R11 K14 ["Shared"]
       84 GETTABLEKS                       R11 R11 K19 ["AssetState"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K12 ["Src"]
       91 GETTABLEKS                       R12 R12 K20 ["Controllers"]
       93 GETTABLEKS                       R12 R12 K21 ["Input"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K12 ["Src"]
      100 GETTABLEKS                       R13 R13 K20 ["Controllers"]
      102 GETTABLEKS                       R13 R13 K22 ["ItemsController"]
      104 CALL                             R12 1 1
      105 GETTABLEKS                       R13 R2 K23 ["Hooks"]
      107 GETTABLEKS                       R13 R13 K24 ["useStyleTags"]
      109 GETIMPORT                        R14 K5 [require]
      111 GETTABLEKS                       R15 R0 K12 ["Src"]
      113 GETTABLEKS                       R15 R15 K23 ["Hooks"]
      115 GETTABLEKS                       R15 R15 K25 ["useColumns"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K5 [require]
      120 GETTABLEKS                       R16 R0 K12 ["Src"]
      122 GETTABLEKS                       R16 R16 K23 ["Hooks"]
      124 GETTABLEKS                       R16 R16 K26 ["useContextMenu"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K5 [require]
      129 GETTABLEKS                       R17 R0 K12 ["Src"]
      131 GETTABLEKS                       R17 R17 K23 ["Hooks"]
      133 GETTABLEKS                       R17 R17 K27 ["useIsEditItem"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K5 [require]
      138 GETTABLEKS                       R18 R0 K12 ["Src"]
      140 GETTABLEKS                       R18 R18 K23 ["Hooks"]
      142 GETTABLEKS                       R18 R18 K28 ["useItemHovered"]
      144 CALL                             R17 1 1
      145 GETIMPORT                        R18 K5 [require]
      147 GETTABLEKS                       R19 R0 K12 ["Src"]
      149 GETTABLEKS                       R19 R19 K23 ["Hooks"]
      151 GETTABLEKS                       R19 R19 K29 ["useItemDragHovered"]
      153 CALL                             R18 1 1
      154 GETIMPORT                        R19 K5 [require]
      156 GETTABLEKS                       R20 R0 K12 ["Src"]
      158 GETTABLEKS                       R20 R20 K23 ["Hooks"]
      160 GETTABLEKS                       R20 R20 K30 ["useItemSelection"]
      162 CALL                             R19 1 1
      163 GETIMPORT                        R20 K5 [require]
      165 GETTABLEKS                       R21 R0 K12 ["Src"]
      167 GETTABLEKS                       R21 R21 K23 ["Hooks"]
      169 GETTABLEKS                       R21 R21 K31 ["useLayoutInfo"]
      171 CALL                             R20 1 1
      172 GETIMPORT                        R21 K5 [require]
      174 GETTABLEKS                       R22 R0 K12 ["Src"]
      176 GETTABLEKS                       R22 R22 K32 ["Util"]
      178 GETTABLEKS                       R22 R22 K33 ["copyAssetId"]
      180 CALL                             R21 1 1
      181 GETIMPORT                        R22 K5 [require]
      183 GETTABLEKS                       R23 R0 K12 ["Src"]
      185 GETTABLEKS                       R23 R23 K34 ["Types"]
      187 CALL                             R22 1 1
      188 GETIMPORT                        R23 K5 [require]
      190 GETTABLEKS                       R24 R0 K12 ["Src"]
      192 GETTABLEKS                       R24 R24 K35 ["Resources"]
      194 GETTABLEKS                       R24 R24 K36 ["Constants"]
      196 CALL                             R23 1 1
      197 GETIMPORT                        R24 K5 [require]
      199 GETTABLEKS                       R25 R0 K12 ["Src"]
      201 GETTABLEKS                       R25 R25 K35 ["Resources"]
      203 GETTABLEKS                       R25 R25 K37 ["StyleConstants"]
      205 CALL                             R24 1 1
      206 GETTABLEKS                       R25 R3 K32 ["Util"]
      208 GETTABLEKS                       R25 R25 K38 ["GetTextSize"]
      210 GETIMPORT                        R26 K5 [require]
      212 GETTABLEKS                       R27 R0 K12 ["Src"]
      214 GETTABLEKS                       R27 R27 K35 ["Resources"]
      216 GETTABLEKS                       R27 R27 K39 ["PluginStyles"]
      218 CALL                             R26 1 1
      219 GETIMPORT                        R27 K5 [require]
      221 GETTABLEKS                       R28 R0 K12 ["Src"]
      223 GETTABLEKS                       R28 R28 K40 ["Flags"]
      225 GETTABLEKS                       R28 R28 K41 ["getFFlagAmrCopyAssetIdHoverButton"]
      227 CALL                             R27 1 1
      228 GETIMPORT                        R28 K5 [require]
      230 GETTABLEKS                       R29 R0 K12 ["Src"]
      232 GETTABLEKS                       R29 R29 K40 ["Flags"]
      234 GETTABLEKS                       R29 R29 K42 ["getFFlagAmrUseAssetStates"]
      236 CALL                             R28 1 1
      237 DUPCLOSURE                       R29 K43 [PROTO_0]
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R22
      240 CAPTURE                          VAL R23
      241 DUPCLOSURE                       R30 K44 [PROTO_2]
      242 CAPTURE                          VAL R5
      243 CAPTURE                          VAL R14
      244 CAPTURE                          VAL R20
      245 CAPTURE                          VAL R1
      246 CAPTURE                          VAL R17
      247 CAPTURE                          VAL R24
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R23
      250 CAPTURE                          VAL R25
      251 CAPTURE                          VAL R26
      252 CAPTURE                          VAL R22
      253 CAPTURE                          VAL R28
      254 CAPTURE                          VAL R10
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R8
      257 CAPTURE                          VAL R6
      258 CAPTURE                          VAL R9
      259 CAPTURE                          VAL R7
      260 CAPTURE                          VAL R27
      261 CAPTURE                          VAL R21
      262 DUPCLOSURE                       R31 K45 [PROTO_6]
      263 CAPTURE                          VAL R11
      264 CAPTURE                          VAL R12
      265 CAPTURE                          VAL R19
      266 CAPTURE                          VAL R16
      267 CAPTURE                          VAL R20
      268 CAPTURE                          VAL R1
      269 CAPTURE                          VAL R17
      270 CAPTURE                          VAL R18
      271 CAPTURE                          VAL R13
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R22
      274 CAPTURE                          VAL R30
      275 CAPTURE                          VAL R2
      276 RETURN                           R31 1
