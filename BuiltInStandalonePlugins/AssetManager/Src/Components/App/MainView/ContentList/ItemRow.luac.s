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
       80 JUMPIFNOTEQKN                    R19 K17 [1] ; [+215]
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
      112 SUB                              R29 R23 R15
      113 GETUPVAL                         R30 9
      114 LOADK                            R32 K15 ["CellContentPadding"]
      115 NAMECALL                         R30 R30 K16 ["GetAttribute"]
      117 CALL                             R30 2 1
      118 SUB                              R28 R29 R30
      119 GETUPVAL                         R29 3
      120 GETTABLEKS                       R29 R29 K22 ["createElement"]
      122 GETUPVAL                         R30 11
      123 GETTABLEKS                       R30 R30 K23 ["View"]
      125 DUPTABLE                         R31 K28 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-x-left align-y-center padding-left-small"}]
      126 SETTABLEKS                       R19 R31 K24 ["LayoutOrder"]
      128 GETIMPORT                        R32 K31 [UDim2.new]
      130 LOADN                            R33 0
      131 MOVE                             R34 R23
      132 LOADN                            R35 1
      133 LOADN                            R36 0
      134 CALL                             R32 4 1
      135 SETTABLEKS                       R32 R31 K25 ["Size"]
      137 DUPTABLE                         R32 K34 [{"ThumbnailContainer", "AssetName"}]
      138 GETUPVAL                         R33 3
      139 GETTABLEKS                       R33 R33 K22 ["createElement"]
      141 GETUPVAL                         R34 11
      142 GETTABLEKS                       R34 R34 K23 ["View"]
      144 DUPTABLE                         R35 K36 [{["LayoutOrder"] = 1, ["Size"], ["ref"], ["tag"]}]
      145 GETIMPORT                        R36 K38 [UDim2.fromOffset]
      147 MOVE                             R37 R15
      148 MOVE                             R38 R15
      149 CALL                             R36 2 1
      150 SETTABLEKS                       R36 R35 K25 ["Size"]
      152 SETTABLEKS                       R9 R35 K35 ["ref"]
      154 NEWTABLE                         R36 1 0
      156 LOADB                            R37 1
      157 SETTABLEKS                       R37 R36 K39 ["bg-foreground-contrast radius-small"]
      159 SETTABLEKS                       R36 R35 K26 ["tag"]
      161 DUPTABLE                         R36 K43 [{"Thumbnail", "AudioOverlay", "PackageLinkIcon"}]
      162 GETUPVAL                         R37 3
      163 GETTABLEKS                       R37 R37 K22 ["createElement"]
      165 GETUPVAL                         R38 12
      166 DUPTABLE                         R39 K44 [{"AssetId", "AssetType"}]
      167 SETTABLEKS                       R26 R39 K20 ["AssetId"]
      169 SETTABLEKS                       R25 R39 K19 ["AssetType"]
      171 CALL                             R37 2 1
      172 SETTABLEKS                       R37 R36 K40 ["Thumbnail"]
      174 GETUPVAL                         R38 10
      175 GETTABLEKS                       R38 R38 K19 ["AssetType"]
      177 GETTABLEKS                       R38 R38 K45 ["Audio"]
      179 JUMPIFNOTEQ                      R25 R38 ; [+14]
      181 GETUPVAL                         R37 3
      182 GETTABLEKS                       R37 R37 K22 ["createElement"]
      184 GETUPVAL                         R38 13
      185 DUPTABLE                         R39 K48 [{"AssetId", "IsHovered", "OnRightClick"}]
      186 SETTABLEKS                       R26 R39 K20 ["AssetId"]
      188 SETTABLEKS                       R10 R39 K46 ["IsHovered"]
      190 SETTABLEKS                       R3 R39 K47 ["OnRightClick"]
      192 CALL                             R37 2 1
      193 JUMP                             ; [+1]
      194 LOADNIL                          R37
      195 SETTABLEKS                       R37 R36 K41 ["AudioOverlay"]
      197 JUMPIFNOT                        R27 ; [+9]
      198 GETUPVAL                         R37 3
      199 GETTABLEKS                       R37 R37 K22 ["createElement"]
      201 GETUPVAL                         R38 11
      202 GETTABLEKS                       R38 R38 K49 ["Image"]
      204 DUPTABLE                         R39 K54 [{["ZIndex"] = 2, ["tag"] = "am-size-icon-xsmall icon-packageLink anchor-bottom-right radius-xsmall bg-over-media-0", ["testId"] = "package-link-icon"}]
      205 CALL                             R37 2 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R37
      208 SETTABLEKS                       R37 R36 K42 ["PackageLinkIcon"]
      210 CALL                             R33 3 1
      211 SETTABLEKS                       R33 R32 K32 ["ThumbnailContainer"]
      213 JUMPIFNOT                        R2 ; [+22]
      214 GETUPVAL                         R33 3
      215 GETTABLEKS                       R33 R33 K22 ["createElement"]
      217 GETUPVAL                         R34 14
      218 DUPTABLE                         R35 K57 [{["LayoutOrder"] = 2, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      219 SETTABLEKS                       R22 R35 K55 ["InitialText"]
      221 SETTABLEKS                       R25 R35 K56 ["ItemType"]
      223 SETTABLEKS                       R14 R35 K4 ["ItemPath"]
      225 GETIMPORT                        R36 K31 [UDim2.new]
      227 LOADN                            R37 0
      228 MOVE                             R38 R28
      229 LOADN                            R39 1
      230 LOADN                            R40 0
      231 CALL                             R36 4 1
      232 SETTABLEKS                       R36 R35 K25 ["Size"]
      234 CALL                             R33 2 1
      235 JUMP                             ; [+55]
      236 JUMPIFNOT                        R24 ; [+37]
      237 GETUPVAL                         R33 3
      238 GETTABLEKS                       R33 R33 K22 ["createElement"]
      240 GETUPVAL                         R34 11
      241 GETTABLEKS                       R34 R34 K58 ["Tooltip"]
      243 DUPTABLE                         R35 K61 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      244 SETTABLEKS                       R22 R35 K59 ["title"]
      246 GETUPVAL                         R36 11
      247 GETTABLEKS                       R36 R36 K62 ["Enums"]
      249 GETTABLEKS                       R36 R36 K63 ["PopoverSide"]
      251 GETTABLEKS                       R36 R36 K64 ["Bottom"]
      253 SETTABLEKS                       R36 R35 K60 ["side"]
      255 GETUPVAL                         R36 3
      256 GETTABLEKS                       R36 R36 K22 ["createElement"]
      258 GETUPVAL                         R37 11
      259 GETTABLEKS                       R37 R37 K65 ["Text"]
      261 DUPTABLE                         R38 K67 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      262 SETTABLEKS                       R22 R38 K65 ["Text"]
      264 GETIMPORT                        R39 K38 [UDim2.fromOffset]
      266 MOVE                             R40 R28
      267 LOADN                            R41 0
      268 CALL                             R39 2 1
      269 SETTABLEKS                       R39 R38 K25 ["Size"]
      271 CALL                             R36 2 -1
      272 CALL                             R33 -1 1
      273 JUMP                             ; [+17]
      274 GETUPVAL                         R33 3
      275 GETTABLEKS                       R33 R33 K22 ["createElement"]
      277 GETUPVAL                         R34 11
      278 GETTABLEKS                       R34 R34 K65 ["Text"]
      280 DUPTABLE                         R35 K67 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      281 SETTABLEKS                       R22 R35 K65 ["Text"]
      283 GETIMPORT                        R36 K38 [UDim2.fromOffset]
      285 MOVE                             R37 R28
      286 LOADN                            R38 0
      287 CALL                             R36 2 1
      288 SETTABLEKS                       R36 R35 K25 ["Size"]
      290 CALL                             R33 2 1
      291 SETTABLEKS                       R33 R32 K33 ["AssetName"]
      293 CALL                             R29 3 1
      294 SETTABLE                         R29 R4 R19
      295 JUMP                             ; [+190]
      296 GETUPVAL                         R25 15
      297 CALL                             R25 0 1
      298 JUMPIFNOT                        R25 ; [+121]
      299 GETUPVAL                         R25 10
      300 GETTABLEKS                       R25 R25 K18 ["AssetInfoField"]
      302 GETTABLEKS                       R25 R25 K20 ["AssetId"]
      304 JUMPIFNOTEQ                      R20 R25 ; [+115]
      306 MOVE                             R25 R12
      307 JUMPIFNOT                        R25 ; [+7]
      308 LOADB                            R25 0
      309 JUMPIFEQKNIL                     R21 ; [+5]
      311 JUMPIFNOTEQKN                    R21 K68 [0] ; [+2]
      313 LOADB                            R25 0 +1
      314 LOADB                            R25 1
      315 GETUPVAL                         R26 3
      316 GETTABLEKS                       R26 R26 K22 ["createElement"]
      318 GETUPVAL                         R27 11
      319 GETTABLEKS                       R27 R27 K23 ["View"]
      321 DUPTABLE                         R28 K70 [{["LayoutOrder"], ["Size"], ["ref"], ["tag"] = "row align-x-left align-y-center gap-xsmall"}]
      322 SETTABLEKS                       R19 R28 K24 ["LayoutOrder"]
      324 GETIMPORT                        R29 K31 [UDim2.new]
      326 LOADN                            R30 0
      327 MOVE                             R31 R23
      328 LOADN                            R32 1
      329 LOADN                            R33 0
      330 CALL                             R29 4 1
      331 SETTABLEKS                       R29 R28 K25 ["Size"]
      333 SETTABLEKS                       R11 R28 K35 ["ref"]
      335 DUPTABLE                         R29 K72 [{"Text", "CopyIdButton"}]
      336 GETUPVAL                         R30 3
      337 GETTABLEKS                       R30 R30 K22 ["createElement"]
      339 GETUPVAL                         R31 11
      340 GETTABLEKS                       R31 R31 K65 ["Text"]
      342 DUPTABLE                         R32 K74 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-x size-0-full shrink padding-left-small text-body-small text-align-x-left text-truncate-end"}]
      343 SETTABLEKS                       R22 R32 K65 ["Text"]
      345 CALL                             R30 2 1
      346 SETTABLEKS                       R30 R29 K65 ["Text"]
      348 JUMPIFNOT                        R25 ; [+65]
      349 GETUPVAL                         R30 3
      350 GETTABLEKS                       R30 R30 K22 ["createElement"]
      352 GETUPVAL                         R31 11
      353 GETTABLEKS                       R31 R31 K58 ["Tooltip"]
      355 DUPTABLE                         R32 K61 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      356 LOADK                            R35 K75 ["ContextMenu"]
      357 LOADK                            R36 K76 ["CopyIdToClipboard"]
      358 NAMECALL                         R33 R5 K77 ["getText"]
      360 CALL                             R33 3 1
      361 SETTABLEKS                       R33 R32 K59 ["title"]
      363 GETUPVAL                         R33 11
      364 GETTABLEKS                       R33 R33 K62 ["Enums"]
      366 GETTABLEKS                       R33 R33 K63 ["PopoverSide"]
      368 GETTABLEKS                       R33 R33 K64 ["Bottom"]
      370 SETTABLEKS                       R33 R32 K60 ["side"]
      372 GETUPVAL                         R33 3
      373 GETTABLEKS                       R33 R33 K22 ["createElement"]
      375 GETUPVAL                         R34 11
      376 GETTABLEKS                       R34 R34 K78 ["IconButton"]
      378 DUPTABLE                         R35 K84 [{["icon"], ["size"], ["variant"], ["onActivated"], ["testId"] = "copy-asset-id-button"}]
      379 GETUPVAL                         R36 11
      380 GETTABLEKS                       R36 R36 K62 ["Enums"]
      382 GETTABLEKS                       R36 R36 K85 ["IconName"]
      384 GETTABLEKS                       R36 R36 K86 ["TwoStackedSquares"]
      386 SETTABLEKS                       R36 R35 K79 ["icon"]
      388 GETUPVAL                         R36 11
      389 GETTABLEKS                       R36 R36 K62 ["Enums"]
      391 GETTABLEKS                       R36 R36 K87 ["InputSize"]
      393 GETTABLEKS                       R36 R36 K88 ["XSmall"]
      395 SETTABLEKS                       R36 R35 K80 ["size"]
      397 GETUPVAL                         R36 11
      398 GETTABLEKS                       R36 R36 K62 ["Enums"]
      400 GETTABLEKS                       R36 R36 K89 ["ButtonVariant"]
      402 GETTABLEKS                       R36 R36 K90 ["Utility"]
      404 SETTABLEKS                       R36 R35 K81 ["variant"]
      406 NEWCLOSURE                       R36 P0
      407 CAPTURE                          UPVAL U16
      408 CAPTURE                          VAL R21
      409 SETTABLEKS                       R36 R35 K82 ["onActivated"]
      411 CALL                             R33 2 -1
      412 CALL                             R30 -1 1
      413 JUMP                             ; [+1]
      414 LOADNIL                          R30
      415 SETTABLEKS                       R30 R29 K71 ["CopyIdButton"]
      417 CALL                             R26 3 1
      418 SETTABLE                         R26 R4 R19
      419 JUMP                             ; [+66]
      420 JUMPIFNOT                        R24 ; [+43]
      421 GETUPVAL                         R25 3
      422 GETTABLEKS                       R25 R25 K22 ["createElement"]
      424 GETUPVAL                         R26 11
      425 GETTABLEKS                       R26 R26 K58 ["Tooltip"]
      427 DUPTABLE                         R27 K91 [{"LayoutOrder", "title", "side"}]
      428 SETTABLEKS                       R19 R27 K24 ["LayoutOrder"]
      430 SETTABLEKS                       R22 R27 K59 ["title"]
      432 GETUPVAL                         R28 11
      433 GETTABLEKS                       R28 R28 K62 ["Enums"]
      435 GETTABLEKS                       R28 R28 K63 ["PopoverSide"]
      437 GETTABLEKS                       R28 R28 K64 ["Bottom"]
      439 SETTABLEKS                       R28 R27 K60 ["side"]
      441 GETUPVAL                         R28 3
      442 GETTABLEKS                       R28 R28 K22 ["createElement"]
      444 GETUPVAL                         R29 11
      445 GETTABLEKS                       R29 R29 K65 ["Text"]
      447 DUPTABLE                         R30 K93 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      448 SETTABLEKS                       R19 R30 K24 ["LayoutOrder"]
      450 SETTABLEKS                       R22 R30 K65 ["Text"]
      452 GETIMPORT                        R31 K31 [UDim2.new]
      454 LOADN                            R32 0
      455 MOVE                             R33 R23
      456 LOADN                            R34 1
      457 LOADN                            R35 0
      458 CALL                             R31 4 1
      459 SETTABLEKS                       R31 R30 K25 ["Size"]
      461 CALL                             R28 2 -1
      462 CALL                             R25 -1 1
      463 JUMP                             ; [+21]
      464 GETUPVAL                         R25 3
      465 GETTABLEKS                       R25 R25 K22 ["createElement"]
      467 GETUPVAL                         R26 11
      468 GETTABLEKS                       R26 R26 K65 ["Text"]
      470 DUPTABLE                         R27 K93 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      471 SETTABLEKS                       R19 R27 K24 ["LayoutOrder"]
      473 SETTABLEKS                       R22 R27 K65 ["Text"]
      475 GETIMPORT                        R28 K31 [UDim2.new]
      477 LOADN                            R29 0
      478 MOVE                             R30 R23
      479 LOADN                            R31 1
      480 LOADN                            R32 0
      481 CALL                             R28 4 1
      482 SETTABLEKS                       R28 R27 K25 ["Size"]
      484 CALL                             R25 2 1
      485 SETTABLE                         R25 R4 R19
      486 FORGLOOP                         R16 2 ; [-441]
      488 RETURN                           R4 1

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
       69 GETTABLEKS                       R10 R10 K18 ["Controllers"]
       71 GETTABLEKS                       R10 R10 K19 ["Input"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K12 ["Src"]
       78 GETTABLEKS                       R11 R11 K18 ["Controllers"]
       80 GETTABLEKS                       R11 R11 K20 ["ItemsController"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R2 K21 ["Hooks"]
       85 GETTABLEKS                       R11 R11 K22 ["useStyleTags"]
       87 GETIMPORT                        R12 K5 [require]
       89 GETTABLEKS                       R13 R0 K12 ["Src"]
       91 GETTABLEKS                       R13 R13 K21 ["Hooks"]
       93 GETTABLEKS                       R13 R13 K23 ["useColumns"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K5 [require]
       98 GETTABLEKS                       R14 R0 K12 ["Src"]
      100 GETTABLEKS                       R14 R14 K21 ["Hooks"]
      102 GETTABLEKS                       R14 R14 K24 ["useContextMenu"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K5 [require]
      107 GETTABLEKS                       R15 R0 K12 ["Src"]
      109 GETTABLEKS                       R15 R15 K21 ["Hooks"]
      111 GETTABLEKS                       R15 R15 K25 ["useIsEditItem"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K5 [require]
      116 GETTABLEKS                       R16 R0 K12 ["Src"]
      118 GETTABLEKS                       R16 R16 K21 ["Hooks"]
      120 GETTABLEKS                       R16 R16 K26 ["useItemHovered"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K5 [require]
      125 GETTABLEKS                       R17 R0 K12 ["Src"]
      127 GETTABLEKS                       R17 R17 K21 ["Hooks"]
      129 GETTABLEKS                       R17 R17 K27 ["useItemDragHovered"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K5 [require]
      134 GETTABLEKS                       R18 R0 K12 ["Src"]
      136 GETTABLEKS                       R18 R18 K21 ["Hooks"]
      138 GETTABLEKS                       R18 R18 K28 ["useItemSelection"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K5 [require]
      143 GETTABLEKS                       R19 R0 K12 ["Src"]
      145 GETTABLEKS                       R19 R19 K21 ["Hooks"]
      147 GETTABLEKS                       R19 R19 K29 ["useLayoutInfo"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K5 [require]
      152 GETTABLEKS                       R20 R0 K12 ["Src"]
      154 GETTABLEKS                       R20 R20 K30 ["Util"]
      156 GETTABLEKS                       R20 R20 K31 ["copyAssetId"]
      158 CALL                             R19 1 1
      159 GETIMPORT                        R20 K5 [require]
      161 GETTABLEKS                       R21 R0 K12 ["Src"]
      163 GETTABLEKS                       R21 R21 K32 ["Types"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K5 [require]
      168 GETTABLEKS                       R22 R0 K12 ["Src"]
      170 GETTABLEKS                       R22 R22 K33 ["Resources"]
      172 GETTABLEKS                       R22 R22 K34 ["Constants"]
      174 CALL                             R21 1 1
      175 GETIMPORT                        R22 K5 [require]
      177 GETTABLEKS                       R23 R0 K12 ["Src"]
      179 GETTABLEKS                       R23 R23 K33 ["Resources"]
      181 GETTABLEKS                       R23 R23 K35 ["StyleConstants"]
      183 CALL                             R22 1 1
      184 GETTABLEKS                       R23 R3 K30 ["Util"]
      186 GETTABLEKS                       R23 R23 K36 ["GetTextSize"]
      188 GETIMPORT                        R24 K5 [require]
      190 GETTABLEKS                       R25 R0 K12 ["Src"]
      192 GETTABLEKS                       R25 R25 K33 ["Resources"]
      194 GETTABLEKS                       R25 R25 K37 ["PluginStyles"]
      196 CALL                             R24 1 1
      197 GETIMPORT                        R25 K5 [require]
      199 GETTABLEKS                       R26 R0 K12 ["Src"]
      201 GETTABLEKS                       R26 R26 K38 ["Flags"]
      203 GETTABLEKS                       R26 R26 K39 ["getFFlagAmrCopyAssetIdHoverButton"]
      205 CALL                             R25 1 1
      206 DUPCLOSURE                       R26 K40 [PROTO_0]
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R21
      210 DUPCLOSURE                       R27 K41 [PROTO_2]
      211 CAPTURE                          VAL R5
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R20
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R6
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R19
      228 DUPCLOSURE                       R28 K42 [PROTO_6]
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R17
      232 CAPTURE                          VAL R14
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R15
      236 CAPTURE                          VAL R16
      237 CAPTURE                          VAL R11
      238 CAPTURE                          VAL R13
      239 CAPTURE                          VAL R20
      240 CAPTURE                          VAL R27
      241 CAPTURE                          VAL R2
      242 RETURN                           R28 1
