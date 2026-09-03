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
       80 JUMPIFNOTEQKN                    R19 K17 [1] ; [+341]
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
      251 JUMPIFNOT                        R27 ; [+9]
      252 GETUPVAL                         R41 3
      253 GETTABLEKS                       R41 R41 K24 ["createElement"]
      255 GETUPVAL                         R42 13
      256 GETTABLEKS                       R42 R42 K57 ["Image"]
      258 DUPTABLE                         R43 K62 [{["ZIndex"] = 2, ["tag"] = "am-size-icon-xsmall icon-packageLink anchor-bottom-right radius-xsmall bg-over-media-0", ["testId"] = "package-link-icon"}]
      259 CALL                             R41 2 1
      260 JUMP                             ; [+1]
      261 LOADNIL                          R41
      262 SETTABLEKS                       R41 R40 K50 ["PackageLinkIcon"]
      264 CALL                             R37 3 1
      265 SETTABLEKS                       R37 R36 K42 ["ThumbnailContainer"]
      267 GETUPVAL                         R38 11
      268 CALL                             R38 0 1
      269 JUMPIFNOT                        R38 ; [+69]
      270 GETUPVAL                         R37 3
      271 GETTABLEKS                       R37 R37 K24 ["createElement"]
      273 GETUPVAL                         R38 13
      274 GETTABLEKS                       R38 R38 K37 ["View"]
      276 DUPTABLE                         R39 K64 [{["LayoutOrder"] = 2, ["tag"] = "row align-x-left align-y-center", ["Size"]}]
      277 GETIMPORT                        R40 K41 [UDim2.new]
      279 LOADN                            R41 0
      280 MOVE                             R42 R29
      281 LOADN                            R43 1
      282 LOADN                            R44 0
      283 CALL                             R40 4 1
      284 SETTABLEKS                       R40 R39 K30 ["Size"]
      286 DUPTABLE                         R40 K67 [{"Name", "State"}]
      287 JUMPIFNOT                        R2 ; [+22]
      288 GETUPVAL                         R41 3
      289 GETTABLEKS                       R41 R41 K24 ["createElement"]
      291 GETUPVAL                         R42 16
      292 DUPTABLE                         R43 K70 [{["LayoutOrder"] = 1, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      293 SETTABLEKS                       R22 R43 K68 ["InitialText"]
      295 SETTABLEKS                       R25 R43 K69 ["ItemType"]
      297 SETTABLEKS                       R14 R43 K4 ["ItemPath"]
      299 GETIMPORT                        R44 K41 [UDim2.new]
      301 LOADN                            R45 0
      302 MOVE                             R46 R31
      303 LOADN                            R47 1
      304 LOADN                            R48 0
      305 CALL                             R44 4 1
      306 SETTABLEKS                       R44 R43 K30 ["Size"]
      308 CALL                             R41 2 1
      309 JUMP                             ; [+23]
      310 JUMPIFNOT                        R24 ; [+21]
      311 GETUPVAL                         R41 3
      312 GETTABLEKS                       R41 R41 K24 ["createElement"]
      314 GETUPVAL                         R42 13
      315 GETTABLEKS                       R42 R42 K71 ["Tooltip"]
      317 DUPTABLE                         R43 K74 [{["LayoutOrder"] = 1, ["title"], ["side"]}]
      318 SETTABLEKS                       R22 R43 K72 ["title"]
      320 GETUPVAL                         R44 13
      321 GETTABLEKS                       R44 R44 K75 ["Enums"]
      323 GETTABLEKS                       R44 R44 K76 ["PopoverSide"]
      325 GETTABLEKS                       R44 R44 K77 ["Bottom"]
      327 SETTABLEKS                       R44 R43 K73 ["side"]
      329 MOVE                             R44 R32
      330 CALL                             R41 3 1
      331 JUMP                             ; [+1]
      332 MOVE                             R41 R32
      333 SETTABLEKS                       R41 R40 K65 ["Name"]
      335 SETTABLEKS                       R30 R40 K66 ["State"]
      337 CALL                             R37 3 1
      338 JUMP                             ; [+78]
      339 JUMPIFNOT                        R2 ; [+22]
      340 GETUPVAL                         R37 3
      341 GETTABLEKS                       R37 R37 K24 ["createElement"]
      343 GETUPVAL                         R38 16
      344 DUPTABLE                         R39 K78 [{["LayoutOrder"] = 2, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      345 SETTABLEKS                       R22 R39 K68 ["InitialText"]
      347 SETTABLEKS                       R25 R39 K69 ["ItemType"]
      349 SETTABLEKS                       R14 R39 K4 ["ItemPath"]
      351 GETIMPORT                        R40 K41 [UDim2.new]
      353 LOADN                            R41 0
      354 MOVE                             R42 R29
      355 LOADN                            R43 1
      356 LOADN                            R44 0
      357 CALL                             R40 4 1
      358 SETTABLEKS                       R40 R39 K30 ["Size"]
      360 CALL                             R37 2 1
      361 JUMP                             ; [+55]
      362 JUMPIFNOT                        R24 ; [+37]
      363 GETUPVAL                         R37 3
      364 GETTABLEKS                       R37 R37 K24 ["createElement"]
      366 GETUPVAL                         R38 13
      367 GETTABLEKS                       R38 R38 K71 ["Tooltip"]
      369 DUPTABLE                         R39 K79 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      370 SETTABLEKS                       R22 R39 K72 ["title"]
      372 GETUPVAL                         R40 13
      373 GETTABLEKS                       R40 R40 K75 ["Enums"]
      375 GETTABLEKS                       R40 R40 K76 ["PopoverSide"]
      377 GETTABLEKS                       R40 R40 K77 ["Bottom"]
      379 SETTABLEKS                       R40 R39 K73 ["side"]
      381 GETUPVAL                         R40 3
      382 GETTABLEKS                       R40 R40 K24 ["createElement"]
      384 GETUPVAL                         R41 13
      385 GETTABLEKS                       R41 R41 K29 ["Text"]
      387 DUPTABLE                         R42 K80 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      388 SETTABLEKS                       R22 R42 K29 ["Text"]
      390 GETIMPORT                        R43 K36 [UDim2.fromOffset]
      392 MOVE                             R44 R29
      393 LOADN                            R45 0
      394 CALL                             R43 2 1
      395 SETTABLEKS                       R43 R42 K30 ["Size"]
      397 CALL                             R40 2 -1
      398 CALL                             R37 -1 1
      399 JUMP                             ; [+17]
      400 GETUPVAL                         R37 3
      401 GETTABLEKS                       R37 R37 K24 ["createElement"]
      403 GETUPVAL                         R38 13
      404 GETTABLEKS                       R38 R38 K29 ["Text"]
      406 DUPTABLE                         R39 K80 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      407 SETTABLEKS                       R22 R39 K29 ["Text"]
      409 GETIMPORT                        R40 K36 [UDim2.fromOffset]
      411 MOVE                             R41 R29
      412 LOADN                            R42 0
      413 CALL                             R40 2 1
      414 SETTABLEKS                       R40 R39 K30 ["Size"]
      416 CALL                             R37 2 1
      417 SETTABLEKS                       R37 R36 K43 ["AssetName"]
      419 CALL                             R33 3 1
      420 SETTABLE                         R33 R4 R19
      421 JUMP                             ; [+190]
      422 GETUPVAL                         R25 17
      423 CALL                             R25 0 1
      424 JUMPIFNOT                        R25 ; [+121]
      425 GETUPVAL                         R25 10
      426 GETTABLEKS                       R25 R25 K18 ["AssetInfoField"]
      428 GETTABLEKS                       R25 R25 K20 ["AssetId"]
      430 JUMPIFNOTEQ                      R20 R25 ; [+115]
      432 MOVE                             R25 R12
      433 JUMPIFNOT                        R25 ; [+7]
      434 LOADB                            R25 0
      435 JUMPIFEQKNIL                     R21 ; [+5]
      437 JUMPIFNOTEQKN                    R21 K81 [0] ; [+2]
      439 LOADB                            R25 0 +1
      440 LOADB                            R25 1
      441 GETUPVAL                         R26 3
      442 GETTABLEKS                       R26 R26 K24 ["createElement"]
      444 GETUPVAL                         R27 13
      445 GETTABLEKS                       R27 R27 K37 ["View"]
      447 DUPTABLE                         R28 K83 [{["LayoutOrder"], ["Size"], ["ref"], ["tag"] = "row align-x-left align-y-center gap-xsmall"}]
      448 SETTABLEKS                       R19 R28 K25 ["LayoutOrder"]
      450 GETIMPORT                        R29 K41 [UDim2.new]
      452 LOADN                            R30 0
      453 MOVE                             R31 R23
      454 LOADN                            R32 1
      455 LOADN                            R33 0
      456 CALL                             R29 4 1
      457 SETTABLEKS                       R29 R28 K30 ["Size"]
      459 SETTABLEKS                       R11 R28 K45 ["ref"]
      461 DUPTABLE                         R29 K85 [{"Text", "CopyIdButton"}]
      462 GETUPVAL                         R30 3
      463 GETTABLEKS                       R30 R30 K24 ["createElement"]
      465 GETUPVAL                         R31 13
      466 GETTABLEKS                       R31 R31 K29 ["Text"]
      468 DUPTABLE                         R32 K87 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-x size-0-full shrink padding-left-small text-body-small text-align-x-left text-truncate-end"}]
      469 SETTABLEKS                       R22 R32 K29 ["Text"]
      471 CALL                             R30 2 1
      472 SETTABLEKS                       R30 R29 K29 ["Text"]
      474 JUMPIFNOT                        R25 ; [+65]
      475 GETUPVAL                         R30 3
      476 GETTABLEKS                       R30 R30 K24 ["createElement"]
      478 GETUPVAL                         R31 13
      479 GETTABLEKS                       R31 R31 K71 ["Tooltip"]
      481 DUPTABLE                         R32 K79 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      482 LOADK                            R35 K88 ["ContextMenu"]
      483 LOADK                            R36 K89 ["CopyIdToClipboard"]
      484 NAMECALL                         R33 R5 K90 ["getText"]
      486 CALL                             R33 3 1
      487 SETTABLEKS                       R33 R32 K72 ["title"]
      489 GETUPVAL                         R33 13
      490 GETTABLEKS                       R33 R33 K75 ["Enums"]
      492 GETTABLEKS                       R33 R33 K76 ["PopoverSide"]
      494 GETTABLEKS                       R33 R33 K77 ["Bottom"]
      496 SETTABLEKS                       R33 R32 K73 ["side"]
      498 GETUPVAL                         R33 3
      499 GETTABLEKS                       R33 R33 K24 ["createElement"]
      501 GETUPVAL                         R34 13
      502 GETTABLEKS                       R34 R34 K91 ["IconButton"]
      504 DUPTABLE                         R35 K97 [{["icon"], ["size"], ["variant"], ["onActivated"], ["testId"] = "copy-asset-id-button"}]
      505 GETUPVAL                         R36 13
      506 GETTABLEKS                       R36 R36 K75 ["Enums"]
      508 GETTABLEKS                       R36 R36 K98 ["IconName"]
      510 GETTABLEKS                       R36 R36 K99 ["TwoStackedSquares"]
      512 SETTABLEKS                       R36 R35 K92 ["icon"]
      514 GETUPVAL                         R36 13
      515 GETTABLEKS                       R36 R36 K75 ["Enums"]
      517 GETTABLEKS                       R36 R36 K100 ["InputSize"]
      519 GETTABLEKS                       R36 R36 K101 ["XSmall"]
      521 SETTABLEKS                       R36 R35 K93 ["size"]
      523 GETUPVAL                         R36 13
      524 GETTABLEKS                       R36 R36 K75 ["Enums"]
      526 GETTABLEKS                       R36 R36 K102 ["ButtonVariant"]
      528 GETTABLEKS                       R36 R36 K103 ["Utility"]
      530 SETTABLEKS                       R36 R35 K94 ["variant"]
      532 NEWCLOSURE                       R36 P0
      533 CAPTURE                          UPVAL U18
      534 CAPTURE                          VAL R21
      535 SETTABLEKS                       R36 R35 K95 ["onActivated"]
      537 CALL                             R33 2 -1
      538 CALL                             R30 -1 1
      539 JUMP                             ; [+1]
      540 LOADNIL                          R30
      541 SETTABLEKS                       R30 R29 K84 ["CopyIdButton"]
      543 CALL                             R26 3 1
      544 SETTABLE                         R26 R4 R19
      545 JUMP                             ; [+66]
      546 JUMPIFNOT                        R24 ; [+43]
      547 GETUPVAL                         R25 3
      548 GETTABLEKS                       R25 R25 K24 ["createElement"]
      550 GETUPVAL                         R26 13
      551 GETTABLEKS                       R26 R26 K71 ["Tooltip"]
      553 DUPTABLE                         R27 K104 [{"LayoutOrder", "title", "side"}]
      554 SETTABLEKS                       R19 R27 K25 ["LayoutOrder"]
      556 SETTABLEKS                       R22 R27 K72 ["title"]
      558 GETUPVAL                         R28 13
      559 GETTABLEKS                       R28 R28 K75 ["Enums"]
      561 GETTABLEKS                       R28 R28 K76 ["PopoverSide"]
      563 GETTABLEKS                       R28 R28 K77 ["Bottom"]
      565 SETTABLEKS                       R28 R27 K73 ["side"]
      567 GETUPVAL                         R28 3
      568 GETTABLEKS                       R28 R28 K24 ["createElement"]
      570 GETUPVAL                         R29 13
      571 GETTABLEKS                       R29 R29 K29 ["Text"]
      573 DUPTABLE                         R30 K106 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      574 SETTABLEKS                       R19 R30 K25 ["LayoutOrder"]
      576 SETTABLEKS                       R22 R30 K29 ["Text"]
      578 GETIMPORT                        R31 K41 [UDim2.new]
      580 LOADN                            R32 0
      581 MOVE                             R33 R23
      582 LOADN                            R34 1
      583 LOADN                            R35 0
      584 CALL                             R31 4 1
      585 SETTABLEKS                       R31 R30 K30 ["Size"]
      587 CALL                             R28 2 -1
      588 CALL                             R25 -1 1
      589 JUMP                             ; [+21]
      590 GETUPVAL                         R25 3
      591 GETTABLEKS                       R25 R25 K24 ["createElement"]
      593 GETUPVAL                         R26 13
      594 GETTABLEKS                       R26 R26 K29 ["Text"]
      596 DUPTABLE                         R27 K106 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      597 SETTABLEKS                       R19 R27 K25 ["LayoutOrder"]
      599 SETTABLEKS                       R22 R27 K29 ["Text"]
      601 GETIMPORT                        R28 K41 [UDim2.new]
      603 LOADN                            R29 0
      604 MOVE                             R30 R23
      605 LOADN                            R31 1
      606 LOADN                            R32 0
      607 CALL                             R28 4 1
      608 SETTABLEKS                       R28 R27 K30 ["Size"]
      610 CALL                             R25 2 1
      611 SETTABLE                         R25 R4 R19
      612 FORGLOOP                         R16 2 ; [-567]
      614 RETURN                           R4 1

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
       73 GETTABLEKS                       R10 R10 K18 ["AssetState"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K12 ["Src"]
       80 GETTABLEKS                       R11 R11 K19 ["Controllers"]
       82 GETTABLEKS                       R11 R11 K20 ["Input"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K12 ["Src"]
       89 GETTABLEKS                       R12 R12 K19 ["Controllers"]
       91 GETTABLEKS                       R12 R12 K21 ["ItemsController"]
       93 CALL                             R11 1 1
       94 GETTABLEKS                       R12 R2 K22 ["Hooks"]
       96 GETTABLEKS                       R12 R12 K23 ["useStyleTags"]
       98 GETIMPORT                        R13 K5 [require]
      100 GETTABLEKS                       R14 R0 K12 ["Src"]
      102 GETTABLEKS                       R14 R14 K22 ["Hooks"]
      104 GETTABLEKS                       R14 R14 K24 ["useColumns"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K5 [require]
      109 GETTABLEKS                       R15 R0 K12 ["Src"]
      111 GETTABLEKS                       R15 R15 K22 ["Hooks"]
      113 GETTABLEKS                       R15 R15 K25 ["useContextMenu"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K5 [require]
      118 GETTABLEKS                       R16 R0 K12 ["Src"]
      120 GETTABLEKS                       R16 R16 K22 ["Hooks"]
      122 GETTABLEKS                       R16 R16 K26 ["useIsEditItem"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K5 [require]
      127 GETTABLEKS                       R17 R0 K12 ["Src"]
      129 GETTABLEKS                       R17 R17 K22 ["Hooks"]
      131 GETTABLEKS                       R17 R17 K27 ["useItemHovered"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K5 [require]
      136 GETTABLEKS                       R18 R0 K12 ["Src"]
      138 GETTABLEKS                       R18 R18 K22 ["Hooks"]
      140 GETTABLEKS                       R18 R18 K28 ["useItemDragHovered"]
      142 CALL                             R17 1 1
      143 GETIMPORT                        R18 K5 [require]
      145 GETTABLEKS                       R19 R0 K12 ["Src"]
      147 GETTABLEKS                       R19 R19 K22 ["Hooks"]
      149 GETTABLEKS                       R19 R19 K29 ["useItemSelection"]
      151 CALL                             R18 1 1
      152 GETIMPORT                        R19 K5 [require]
      154 GETTABLEKS                       R20 R0 K12 ["Src"]
      156 GETTABLEKS                       R20 R20 K22 ["Hooks"]
      158 GETTABLEKS                       R20 R20 K30 ["useLayoutInfo"]
      160 CALL                             R19 1 1
      161 GETIMPORT                        R20 K5 [require]
      163 GETTABLEKS                       R21 R0 K12 ["Src"]
      165 GETTABLEKS                       R21 R21 K31 ["Util"]
      167 GETTABLEKS                       R21 R21 K32 ["copyAssetId"]
      169 CALL                             R20 1 1
      170 GETIMPORT                        R21 K5 [require]
      172 GETTABLEKS                       R22 R0 K12 ["Src"]
      174 GETTABLEKS                       R22 R22 K33 ["Types"]
      176 CALL                             R21 1 1
      177 GETIMPORT                        R22 K5 [require]
      179 GETTABLEKS                       R23 R0 K12 ["Src"]
      181 GETTABLEKS                       R23 R23 K34 ["Resources"]
      183 GETTABLEKS                       R23 R23 K35 ["Constants"]
      185 CALL                             R22 1 1
      186 GETIMPORT                        R23 K5 [require]
      188 GETTABLEKS                       R24 R0 K12 ["Src"]
      190 GETTABLEKS                       R24 R24 K34 ["Resources"]
      192 GETTABLEKS                       R24 R24 K36 ["StyleConstants"]
      194 CALL                             R23 1 1
      195 GETTABLEKS                       R24 R3 K31 ["Util"]
      197 GETTABLEKS                       R24 R24 K37 ["GetTextSize"]
      199 GETIMPORT                        R25 K5 [require]
      201 GETTABLEKS                       R26 R0 K12 ["Src"]
      203 GETTABLEKS                       R26 R26 K34 ["Resources"]
      205 GETTABLEKS                       R26 R26 K38 ["PluginStyles"]
      207 CALL                             R25 1 1
      208 GETIMPORT                        R26 K5 [require]
      210 GETTABLEKS                       R27 R0 K12 ["Src"]
      212 GETTABLEKS                       R27 R27 K39 ["Flags"]
      214 GETTABLEKS                       R27 R27 K40 ["getFFlagAmrCopyAssetIdHoverButton"]
      216 CALL                             R26 1 1
      217 GETIMPORT                        R27 K5 [require]
      219 GETTABLEKS                       R28 R0 K12 ["Src"]
      221 GETTABLEKS                       R28 R28 K39 ["Flags"]
      223 GETTABLEKS                       R28 R28 K41 ["getFFlagAmrUseAssetStates"]
      225 CALL                             R27 1 1
      226 DUPCLOSURE                       R28 K42 [PROTO_0]
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R22
      230 DUPCLOSURE                       R29 K43 [PROTO_2]
      231 CAPTURE                          VAL R5
      232 CAPTURE                          VAL R13
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R16
      236 CAPTURE                          VAL R23
      237 CAPTURE                          VAL R28
      238 CAPTURE                          VAL R22
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R21
      242 CAPTURE                          VAL R27
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R2
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R7
      248 CAPTURE                          VAL R26
      249 CAPTURE                          VAL R20
      250 DUPCLOSURE                       R30 K44 [PROTO_6]
      251 CAPTURE                          VAL R10
      252 CAPTURE                          VAL R11
      253 CAPTURE                          VAL R18
      254 CAPTURE                          VAL R15
      255 CAPTURE                          VAL R19
      256 CAPTURE                          VAL R1
      257 CAPTURE                          VAL R16
      258 CAPTURE                          VAL R17
      259 CAPTURE                          VAL R12
      260 CAPTURE                          VAL R14
      261 CAPTURE                          VAL R21
      262 CAPTURE                          VAL R29
      263 CAPTURE                          VAL R2
      264 RETURN                           R30 1
