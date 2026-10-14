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
       33 JUMPIFNOTEQ                      R1 R3 ; [+14]
       35 JUMPIFNOTEQKN                    R0 K8 [0] ; [+5]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K9 ["PlaceholderText"]
       40 RETURN                           R3 1
       41 GETUPVAL                         R3 3
       42 GETIMPORT                        R4 K12 [DateTime.fromUnixTimestampMillis]
       44 MOVE                             R5 R0
       45 CALL                             R4 1 -1
       46 CALL                             R3 -1 -1
       47 RETURN                           R3 -1
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       51 GETTABLEKS                       R3 R3 K13 ["AssetType"]
       53 JUMPIFNOTEQ                      R1 R3 ; [+7]
       55 LOADK                            R5 K13 ["AssetType"]
       56 MOVE                             R6 R0
       57 NAMECALL                         R3 R2 K14 ["getText"]
       59 CALL                             R3 3 -1
       60 RETURN                           R3 -1
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       64 GETTABLEKS                       R3 R3 K15 ["Source"]
       66 JUMPIFNOTEQ                      R1 R3 ; [+7]
       68 LOADK                            R5 K16 ["AssetSource"]
       69 MOVE                             R6 R0
       70 NAMECALL                         R3 R2 K14 ["getText"]
       72 CALL                             R3 3 -1
       73 RETURN                           R3 -1
       74 GETUPVAL                         R3 1
       75 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       77 GETTABLEKS                       R3 R3 K17 ["AssetId"]
       79 JUMPIFNOTEQ                      R1 R3 ; [+7]
       81 JUMPIFNOTEQKN                    R0 K8 [0] ; [+5]
       83 GETUPVAL                         R3 2
       84 GETTABLEKS                       R3 R3 K9 ["PlaceholderText"]
       86 RETURN                           R3 1
       87 FASTCALL1                        TOSTRING R0 ; [+3]
       88 MOVE                             R4 R0
       89 GETIMPORT                        R3 K19 [tostring]
       91 CALL                             R3 1 1
       92 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 1
        3 GETUPVAL                         R2 1
        4 SETLIST                          R1 R2 1 [1]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["sendItemInteractionEvent"]
       10 DUPTABLE                         R1 K4 [{"itemId", "itemType", "interaction"}]
       11 GETUPVAL                         R2 3
       12 SETTABLEKS                       R2 R1 K1 ["itemId"]
       14 GETUPVAL                         R2 4
       15 SETTABLEKS                       R2 R1 K2 ["itemType"]
       17 GETUPVAL                         R2 5
       18 GETTABLEKS                       R2 R2 K5 ["ItemInteraction"]
       20 GETTABLEKS                       R2 R2 K6 ["CopyAssetId"]
       22 SETTABLEKS                       R2 R1 K3 ["interaction"]
       24 GETUPVAL                         R2 6
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R6 0 0
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K0 ["use"]
        5 CALL                             R7 0 1
        6 GETUPVAL                         R8 1
        7 CALL                             R8 0 2
        8 GETUPVAL                         R10 2
        9 CALL                             R10 0 1
       10 GETUPVAL                         R11 3
       11 GETTABLEKS                       R11 R11 K1 ["useRef"]
       13 LOADNIL                          R12
       14 CALL                             R11 1 1
       15 GETUPVAL                         R12 4
       16 MOVE                             R13 R11
       17 CALL                             R12 1 1
       18 GETUPVAL                         R13 3
       19 GETTABLEKS                       R13 R13 K1 ["useRef"]
       21 LOADNIL                          R14
       22 CALL                             R13 1 1
       23 GETUPVAL                         R14 4
       24 MOVE                             R15 R13
       25 CALL                             R14 1 1
       26 GETTABLEKS                       R15 R0 K2 ["ParentScope"]
       28 GETTABLEKS                       R15 R15 K3 ["Uid"]
       30 GETTABLEKS                       R16 R0 K4 ["ItemPath"]
       32 GETTABLEKS                       R19 R10 K5 ["ListRowHeight"]
       34 GETUPVAL                         R20 5
       35 GETTABLEKS                       R20 R20 K6 ["ListThumbnailContainerScale"]
       37 MUL                              R18 R19 R20
       38 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       39 GETIMPORT                        R17 K9 [math.floor]
       41 CALL                             R17 1 1
       42 MOVE                             R18 R8
       43 LOADNIL                          R19
       44 LOADNIL                          R20
       45 FORGPREP                         R18
       46 MOVE                             R25 R15
       47 MOVE                             R26 R16
       48 MOVE                             R27 R22
       49 NAMECALL                         R23 R1 K10 ["getItemField"]
       51 CALL                             R23 4 1
       52 JUMPIFNOT                        R23 ; [+5]
       53 GETUPVAL                         R24 6
       54 MOVE                             R25 R23
       55 MOVE                             R26 R22
       56 CALL                             R24 2 1
       57 JUMP                             ; [+3]
       58 GETUPVAL                         R24 7
       59 GETTABLEKS                       R24 R24 K11 ["PlaceholderText"]
       61 GETTABLE                         R25 R9 R21
       62 GETTABLEKS                       R25 R25 K12 ["Offset"]
       64 GETUPVAL                         R27 8
       65 MOVE                             R28 R24
       66 CALL                             R27 1 1
       67 GETTABLEKS                       R27 R27 K13 ["X"]
       69 GETUPVAL                         R30 9
       70 LOADK                            R32 K15 ["CellContentPadding"]
       71 NAMECALL                         R30 R30 K16 ["GetAttribute"]
       73 CALL                             R30 2 1
       74 MULK                             R29 R30 K14 [2]
       75 SUB                              R28 R25 R29
       76 JUMPIFLT                         R28 R27 ; [+2]
       78 LOADB                            R26 0 +1
       79 LOADB                            R26 1
       80 MOVE                             R29 R15
       81 MOVE                             R30 R16
       82 GETUPVAL                         R31 10
       83 GETTABLEKS                       R31 R31 K17 ["AssetInfoField"]
       85 GETTABLEKS                       R31 R31 K18 ["AssetType"]
       87 NAMECALL                         R27 R1 K10 ["getItemField"]
       89 CALL                             R27 4 1
       90 MOVE                             R30 R15
       91 MOVE                             R31 R16
       92 GETUPVAL                         R32 10
       93 GETTABLEKS                       R32 R32 K17 ["AssetInfoField"]
       95 GETTABLEKS                       R32 R32 K19 ["AssetId"]
       97 NAMECALL                         R28 R1 K10 ["getItemField"]
       99 CALL                             R28 4 1
      100 JUMPIFNOTEQKN                    R21 K20 [1] ; [+265]
      102 MOVE                             R31 R15
      103 MOVE                             R32 R16
      104 GETUPVAL                         R33 10
      105 GETTABLEKS                       R33 R33 K17 ["AssetInfoField"]
      107 GETTABLEKS                       R33 R33 K21 ["IsPackage"]
      109 NAMECALL                         R29 R1 K10 ["getItemField"]
      111 CALL                             R29 4 1
      112 MOVE                             R32 R15
      113 MOVE                             R33 R16
      114 GETUPVAL                         R34 10
      115 GETTABLEKS                       R34 R34 K17 ["AssetInfoField"]
      117 GETTABLEKS                       R34 R34 K22 ["ModerationStatus"]
      119 NAMECALL                         R30 R1 K10 ["getItemField"]
      121 CALL                             R30 4 1
      122 GETUPVAL                         R32 11
      123 CALL                             R32 0 1
      124 JUMPIFNOT                        R32 ; [+11]
      125 MOVE                             R33 R15
      126 MOVE                             R34 R16
      127 GETUPVAL                         R35 10
      128 GETTABLEKS                       R35 R35 K17 ["AssetInfoField"]
      130 GETTABLEKS                       R35 R35 K23 ["DraftStatus"]
      132 NAMECALL                         R31 R1 K10 ["getItemField"]
      134 CALL                             R31 4 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R31
      137 SUB                              R33 R25 R17
      138 GETUPVAL                         R34 9
      139 LOADK                            R36 K15 ["CellContentPadding"]
      140 NAMECALL                         R34 R34 K16 ["GetAttribute"]
      142 CALL                             R34 2 1
      143 SUB                              R32 R33 R34
      144 GETUPVAL                         R34 10
      145 GETTABLEKS                       R34 R34 K22 ["ModerationStatus"]
      147 GETTABLEKS                       R34 R34 K24 ["Rejected"]
      149 JUMPIFEQ                         R30 R34 ; [+2]
      151 LOADB                            R33 0 +1
      152 LOADB                            R33 1
      153 GETUPVAL                         R35 10
      154 GETTABLEKS                       R35 R35 K23 ["DraftStatus"]
      156 GETTABLEKS                       R35 R35 K25 ["Draft"]
      158 JUMPIFEQ                         R31 R35 ; [+2]
      160 LOADB                            R34 0 +1
      161 LOADB                            R34 1
      162 LOADNIL                          R35
      163 MOVE                             R36 R32
      164 JUMPIF                           R33 ; [+1]
      165 JUMPIFNOT                        R34 ; [+19]
      166 GETUPVAL                         R37 3
      167 GETTABLEKS                       R37 R37 K26 ["createElement"]
      169 GETUPVAL                         R38 12
      170 DUPTABLE                         R39 K31 [{["LayoutOrder"] = 2, ["AssetId"], ["AssetPath"], ["IsModerated"], ["IsDraft"]}]
      171 SETTABLEKS                       R28 R39 K19 ["AssetId"]
      173 SETTABLEKS                       R16 R39 K28 ["AssetPath"]
      175 SETTABLEKS                       R33 R39 K29 ["IsModerated"]
      177 SETTABLEKS                       R34 R39 K30 ["IsDraft"]
      179 CALL                             R37 2 1
      180 MOVE                             R35 R37
      181 GETUPVAL                         R37 5
      182 GETTABLEKS                       R37 R37 K32 ["IconWidth"]
      184 SUB                              R36 R36 R37
      185 GETUPVAL                         R37 3
      186 GETTABLEKS                       R37 R37 K26 ["createElement"]
      188 GETUPVAL                         R38 13
      189 GETTABLEKS                       R38 R38 K33 ["Text"]
      191 DUPTABLE                         R39 K38 [{["LayoutOrder"] = 1, ["Text"], ["Size"], ["ref"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      192 SETTABLEKS                       R24 R39 K33 ["Text"]
      194 GETIMPORT                        R40 K41 [UDim2.fromOffset]
      196 MOVE                             R41 R36
      197 LOADN                            R42 0
      198 CALL                             R40 2 1
      199 SETTABLEKS                       R40 R39 K34 ["Size"]
      201 SETTABLEKS                       R4 R39 K35 ["ref"]
      203 CALL                             R37 2 1
      204 GETUPVAL                         R38 3
      205 GETTABLEKS                       R38 R38 K26 ["createElement"]
      207 GETUPVAL                         R39 13
      208 GETTABLEKS                       R39 R39 K42 ["View"]
      210 DUPTABLE                         R40 K44 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-x-left align-y-center padding-left-small"}]
      211 SETTABLEKS                       R21 R40 K27 ["LayoutOrder"]
      213 GETIMPORT                        R41 K46 [UDim2.new]
      215 LOADN                            R42 0
      216 MOVE                             R43 R25
      217 LOADN                            R44 1
      218 LOADN                            R45 0
      219 CALL                             R41 4 1
      220 SETTABLEKS                       R41 R40 K34 ["Size"]
      222 DUPTABLE                         R41 K49 [{"ThumbnailContainer", "AssetName"}]
      223 GETUPVAL                         R42 3
      224 GETTABLEKS                       R42 R42 K26 ["createElement"]
      226 GETUPVAL                         R43 13
      227 GETTABLEKS                       R43 R43 K42 ["View"]
      229 DUPTABLE                         R44 K50 [{["LayoutOrder"] = 1, ["Size"], ["ref"], ["tag"]}]
      230 GETIMPORT                        R45 K41 [UDim2.fromOffset]
      232 MOVE                             R46 R17
      233 MOVE                             R47 R17
      234 CALL                             R45 2 1
      235 SETTABLEKS                       R45 R44 K34 ["Size"]
      237 SETTABLEKS                       R11 R44 K35 ["ref"]
      239 NEWTABLE                         R45 1 0
      241 LOADB                            R46 1
      242 SETTABLEKS                       R46 R45 K51 ["bg-foreground-contrast radius-small"]
      244 SETTABLEKS                       R45 R44 K36 ["tag"]
      246 DUPTABLE                         R45 K55 [{"Thumbnail", "AudioOverlay", "PackageLinkIcon"}]
      247 GETUPVAL                         R46 3
      248 GETTABLEKS                       R46 R46 K26 ["createElement"]
      250 GETUPVAL                         R47 14
      251 DUPTABLE                         R48 K56 [{"AssetId", "AssetType"}]
      252 SETTABLEKS                       R28 R48 K19 ["AssetId"]
      254 SETTABLEKS                       R27 R48 K18 ["AssetType"]
      256 CALL                             R46 2 1
      257 SETTABLEKS                       R46 R45 K52 ["Thumbnail"]
      259 GETUPVAL                         R47 15
      260 MOVE                             R48 R27
      261 MOVE                             R49 R30
      262 CALL                             R47 2 1
      263 JUMPIFNOT                        R47 ; [+13]
      264 GETUPVAL                         R46 3
      265 GETTABLEKS                       R46 R46 K26 ["createElement"]
      267 GETUPVAL                         R47 16
      268 DUPTABLE                         R48 K59 [{"AssetId", "IsHovered", "OnRightClick"}]
      269 SETTABLEKS                       R28 R48 K19 ["AssetId"]
      271 SETTABLEKS                       R12 R48 K57 ["IsHovered"]
      273 SETTABLEKS                       R3 R48 K58 ["OnRightClick"]
      275 CALL                             R46 2 1
      276 JUMP                             ; [+1]
      277 LOADNIL                          R46
      278 SETTABLEKS                       R46 R45 K53 ["AudioOverlay"]
      280 JUMPIFNOT                        R29 ; [+6]
      281 GETUPVAL                         R46 3
      282 GETTABLEKS                       R46 R46 K26 ["createElement"]
      284 GETUPVAL                         R47 17
      285 CALL                             R46 1 1
      286 JUMP                             ; [+1]
      287 LOADNIL                          R46
      288 SETTABLEKS                       R46 R45 K54 ["PackageLinkIcon"]
      290 CALL                             R42 3 1
      291 SETTABLEKS                       R42 R41 K47 ["ThumbnailContainer"]
      293 GETUPVAL                         R42 3
      294 GETTABLEKS                       R42 R42 K26 ["createElement"]
      296 GETUPVAL                         R43 13
      297 GETTABLEKS                       R43 R43 K42 ["View"]
      299 DUPTABLE                         R44 K61 [{["LayoutOrder"] = 2, ["tag"] = "row align-x-left align-y-center", ["Size"]}]
      300 GETIMPORT                        R45 K46 [UDim2.new]
      302 LOADN                            R46 0
      303 MOVE                             R47 R32
      304 LOADN                            R48 1
      305 LOADN                            R49 0
      306 CALL                             R45 4 1
      307 SETTABLEKS                       R45 R44 K34 ["Size"]
      309 DUPTABLE                         R45 K64 [{"Name", "State"}]
      310 JUMPIFNOT                        R2 ; [+22]
      311 GETUPVAL                         R46 3
      312 GETTABLEKS                       R46 R46 K26 ["createElement"]
      314 GETUPVAL                         R47 18
      315 DUPTABLE                         R48 K67 [{["LayoutOrder"] = 1, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      316 SETTABLEKS                       R24 R48 K65 ["InitialText"]
      318 SETTABLEKS                       R27 R48 K66 ["ItemType"]
      320 SETTABLEKS                       R16 R48 K4 ["ItemPath"]
      322 GETIMPORT                        R49 K46 [UDim2.new]
      324 LOADN                            R50 0
      325 MOVE                             R51 R36
      326 LOADN                            R52 1
      327 LOADN                            R53 0
      328 CALL                             R49 4 1
      329 SETTABLEKS                       R49 R48 K34 ["Size"]
      331 CALL                             R46 2 1
      332 JUMP                             ; [+23]
      333 JUMPIFNOT                        R26 ; [+21]
      334 GETUPVAL                         R46 3
      335 GETTABLEKS                       R46 R46 K26 ["createElement"]
      337 GETUPVAL                         R47 13
      338 GETTABLEKS                       R47 R47 K68 ["Tooltip"]
      340 DUPTABLE                         R48 K71 [{["LayoutOrder"] = 1, ["title"], ["side"]}]
      341 SETTABLEKS                       R24 R48 K69 ["title"]
      343 GETUPVAL                         R49 13
      344 GETTABLEKS                       R49 R49 K72 ["Enums"]
      346 GETTABLEKS                       R49 R49 K73 ["PopoverSide"]
      348 GETTABLEKS                       R49 R49 K74 ["Bottom"]
      350 SETTABLEKS                       R49 R48 K70 ["side"]
      352 MOVE                             R49 R37
      353 CALL                             R46 3 1
      354 JUMP                             ; [+1]
      355 MOVE                             R46 R37
      356 SETTABLEKS                       R46 R45 K62 ["Name"]
      358 SETTABLEKS                       R35 R45 K63 ["State"]
      360 CALL                             R42 3 1
      361 SETTABLEKS                       R42 R41 K48 ["AssetName"]
      363 CALL                             R38 3 1
      364 SETTABLE                         R38 R6 R21
      365 JUMP                             ; [+192]
      366 GETUPVAL                         R29 10
      367 GETTABLEKS                       R29 R29 K17 ["AssetInfoField"]
      369 GETTABLEKS                       R29 R29 K19 ["AssetId"]
      371 JUMPIFNOTEQ                      R22 R29 ; [+120]
      373 MOVE                             R29 R14
      374 JUMPIFNOT                        R29 ; [+7]
      375 LOADB                            R29 0
      376 JUMPIFEQKNIL                     R23 ; [+5]
      378 JUMPIFNOTEQKN                    R23 K75 [0] ; [+2]
      380 LOADB                            R29 0 +1
      381 LOADB                            R29 1
      382 GETUPVAL                         R30 3
      383 GETTABLEKS                       R30 R30 K26 ["createElement"]
      385 GETUPVAL                         R31 13
      386 GETTABLEKS                       R31 R31 K42 ["View"]
      388 DUPTABLE                         R32 K77 [{["LayoutOrder"], ["Size"], ["ref"], ["tag"] = "row align-x-left align-y-center gap-xsmall"}]
      389 SETTABLEKS                       R21 R32 K27 ["LayoutOrder"]
      391 GETIMPORT                        R33 K46 [UDim2.new]
      393 LOADN                            R34 0
      394 MOVE                             R35 R25
      395 LOADN                            R36 1
      396 LOADN                            R37 0
      397 CALL                             R33 4 1
      398 SETTABLEKS                       R33 R32 K34 ["Size"]
      400 SETTABLEKS                       R13 R32 K35 ["ref"]
      402 DUPTABLE                         R33 K79 [{"Text", "CopyIdButton"}]
      403 GETUPVAL                         R34 3
      404 GETTABLEKS                       R34 R34 K26 ["createElement"]
      406 GETUPVAL                         R35 13
      407 GETTABLEKS                       R35 R35 K33 ["Text"]
      409 DUPTABLE                         R36 K81 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-x size-0-full shrink padding-left-small text-body-small text-align-x-left text-truncate-end"}]
      410 SETTABLEKS                       R24 R36 K33 ["Text"]
      412 CALL                             R34 2 1
      413 SETTABLEKS                       R34 R33 K33 ["Text"]
      415 JUMPIFNOT                        R29 ; [+70]
      416 GETUPVAL                         R34 3
      417 GETTABLEKS                       R34 R34 K26 ["createElement"]
      419 GETUPVAL                         R35 13
      420 GETTABLEKS                       R35 R35 K68 ["Tooltip"]
      422 DUPTABLE                         R36 K82 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      423 LOADK                            R39 K83 ["ContextMenu"]
      424 LOADK                            R40 K84 ["CopyIdToClipboard"]
      425 NAMECALL                         R37 R7 K85 ["getText"]
      427 CALL                             R37 3 1
      428 SETTABLEKS                       R37 R36 K69 ["title"]
      430 GETUPVAL                         R37 13
      431 GETTABLEKS                       R37 R37 K72 ["Enums"]
      433 GETTABLEKS                       R37 R37 K73 ["PopoverSide"]
      435 GETTABLEKS                       R37 R37 K74 ["Bottom"]
      437 SETTABLEKS                       R37 R36 K70 ["side"]
      439 GETUPVAL                         R37 3
      440 GETTABLEKS                       R37 R37 K26 ["createElement"]
      442 GETUPVAL                         R38 13
      443 GETTABLEKS                       R38 R38 K86 ["IconButton"]
      445 DUPTABLE                         R39 K93 [{["icon"], ["size"], ["variant"], ["onActivated"], ["testId"] = "copy-asset-id-button"}]
      446 GETUPVAL                         R40 13
      447 GETTABLEKS                       R40 R40 K72 ["Enums"]
      449 GETTABLEKS                       R40 R40 K94 ["IconName"]
      451 GETTABLEKS                       R40 R40 K95 ["TwoStackedSquares"]
      453 SETTABLEKS                       R40 R39 K87 ["icon"]
      455 GETUPVAL                         R40 13
      456 GETTABLEKS                       R40 R40 K72 ["Enums"]
      458 GETTABLEKS                       R40 R40 K96 ["InputSize"]
      460 GETTABLEKS                       R40 R40 K97 ["XSmall"]
      462 SETTABLEKS                       R40 R39 K88 ["size"]
      464 GETUPVAL                         R40 13
      465 GETTABLEKS                       R40 R40 K72 ["Enums"]
      467 GETTABLEKS                       R40 R40 K98 ["ButtonVariant"]
      469 GETTABLEKS                       R40 R40 K99 ["Utility"]
      471 SETTABLEKS                       R40 R39 K89 ["variant"]
      473 NEWCLOSURE                       R40 P0
      474 CAPTURE                          UPVAL U19
      475 CAPTURE                          VAL R23
      476 CAPTURE                          UPVAL U20
      477 CAPTURE                          VAL R28
      478 CAPTURE                          VAL R27
      479 CAPTURE                          UPVAL U21
      480 CAPTURE                          VAL R5
      481 SETTABLEKS                       R40 R39 K90 ["onActivated"]
      483 CALL                             R37 2 -1
      484 CALL                             R34 -1 1
      485 JUMP                             ; [+1]
      486 LOADNIL                          R34
      487 SETTABLEKS                       R34 R33 K78 ["CopyIdButton"]
      489 CALL                             R30 3 1
      490 SETTABLE                         R30 R6 R21
      491 JUMP                             ; [+66]
      492 JUMPIFNOT                        R26 ; [+43]
      493 GETUPVAL                         R29 3
      494 GETTABLEKS                       R29 R29 K26 ["createElement"]
      496 GETUPVAL                         R30 13
      497 GETTABLEKS                       R30 R30 K68 ["Tooltip"]
      499 DUPTABLE                         R31 K100 [{"LayoutOrder", "title", "side"}]
      500 SETTABLEKS                       R21 R31 K27 ["LayoutOrder"]
      502 SETTABLEKS                       R24 R31 K69 ["title"]
      504 GETUPVAL                         R32 13
      505 GETTABLEKS                       R32 R32 K72 ["Enums"]
      507 GETTABLEKS                       R32 R32 K73 ["PopoverSide"]
      509 GETTABLEKS                       R32 R32 K74 ["Bottom"]
      511 SETTABLEKS                       R32 R31 K70 ["side"]
      513 GETUPVAL                         R32 3
      514 GETTABLEKS                       R32 R32 K26 ["createElement"]
      516 GETUPVAL                         R33 13
      517 GETTABLEKS                       R33 R33 K33 ["Text"]
      519 DUPTABLE                         R34 K102 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      520 SETTABLEKS                       R21 R34 K27 ["LayoutOrder"]
      522 SETTABLEKS                       R24 R34 K33 ["Text"]
      524 GETIMPORT                        R35 K46 [UDim2.new]
      526 LOADN                            R36 0
      527 MOVE                             R37 R25
      528 LOADN                            R38 1
      529 LOADN                            R39 0
      530 CALL                             R35 4 1
      531 SETTABLEKS                       R35 R34 K34 ["Size"]
      533 CALL                             R32 2 -1
      534 CALL                             R29 -1 1
      535 JUMP                             ; [+21]
      536 GETUPVAL                         R29 3
      537 GETTABLEKS                       R29 R29 K26 ["createElement"]
      539 GETUPVAL                         R30 13
      540 GETTABLEKS                       R30 R30 K33 ["Text"]
      542 DUPTABLE                         R31 K102 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      543 SETTABLEKS                       R21 R31 K27 ["LayoutOrder"]
      545 SETTABLEKS                       R24 R31 K33 ["Text"]
      547 GETIMPORT                        R32 K46 [UDim2.new]
      549 LOADN                            R33 0
      550 MOVE                             R34 R25
      551 LOADN                            R35 1
      552 LOADN                            R36 0
      553 CALL                             R32 4 1
      554 SETTABLEKS                       R32 R31 K34 ["Size"]
      556 CALL                             R29 2 1
      557 SETTABLE                         R29 R6 R21
      558 FORGLOOP                         R18 2 ; [-513]
      560 RETURN                           R6 1

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
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 CALL                             R6 0 1
       22 GETUPVAL                         R7 6
       23 GETTABLEKS                       R8 R0 K1 ["ItemPath"]
       25 CALL                             R7 1 1
       26 GETUPVAL                         R8 7
       27 CALL                             R8 0 1
       28 GETUPVAL                         R9 8
       29 GETTABLEKS                       R9 R9 K2 ["useRef"]
       31 LOADNIL                          R10
       32 CALL                             R9 1 1
       33 GETUPVAL                         R10 8
       34 GETTABLEKS                       R10 R10 K3 ["useState"]
       36 LOADNIL                          R11
       37 CALL                             R10 1 2
       38 GETUPVAL                         R12 9
       39 MOVE                             R13 R9
       40 CALL                             R12 1 1
       41 GETUPVAL                         R13 10
       42 MOVE                             R14 R12
       43 GETTABLEKS                       R15 R0 K1 ["ItemPath"]
       45 CALL                             R13 2 1
       46 GETUPVAL                         R14 11
       47 LOADK                            R15 K4 ["gui-object-defaults row align-x-left align-y-center"]
       48 CALL                             R14 1 1
       49 GETUPVAL                         R15 12
       50 GETUPVAL                         R16 13
       51 GETTABLEKS                       R16 R16 K5 ["MenuContext"]
       53 GETTABLEKS                       R16 R16 K6 ["Asset"]
       55 DUPTABLE                         R17 K9 [{"Path", "Index"}]
       56 GETTABLEKS                       R18 R0 K1 ["ItemPath"]
       58 SETTABLEKS                       R18 R17 K7 ["Path"]
       60 GETTABLEKS                       R18 R0 K10 ["Key"]
       62 SETTABLEKS                       R18 R17 K8 ["Index"]
       64 CALL                             R15 2 1
       65 NEWCLOSURE                       R16 P0
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U13
       69 CAPTURE                          VAL R15
       70 GETUPVAL                         R17 14
       71 MOVE                             R18 R0
       72 NAMECALL                         R19 R2 K11 ["getItemsCache"]
       74 CALL                             R19 1 1
       75 MOVE                             R20 R7
       76 MOVE                             R21 R16
       77 MOVE                             R22 R11
       78 DUPTABLE                         R23 K16 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       79 SETTABLEKS                       R3 R23 K12 ["ExplorerController"]
       81 SETTABLEKS                       R4 R23 K13 ["LayoutController"]
       83 SETTABLEKS                       R2 R23 K14 ["ItemsController"]
       85 SETTABLEKS                       R5 R23 K15 ["SearchController"]
       87 CALL                             R17 6 1
       88 GETTABLEKS                       R19 R0 K1 ["ItemPath"]
       90 GETTABLE                         R18 R6 R19
       91 GETUPVAL                         R19 8
       92 GETTABLEKS                       R19 R19 K17 ["createElement"]
       94 GETUPVAL                         R20 15
       95 GETTABLEKS                       R20 R20 K18 ["View"]
       97 DUPTABLE                         R21 K24 [{"LayoutOrder", "Position", "Size", "ref", "tag"}]
       98 GETTABLEKS                       R22 R0 K10 ["Key"]
      100 SETTABLEKS                       R22 R21 K19 ["LayoutOrder"]
      102 GETTABLEKS                       R22 R0 K20 ["Position"]
      104 SETTABLEKS                       R22 R21 K20 ["Position"]
      106 GETIMPORT                        R22 K27 [UDim2.new]
      108 LOADN                            R23 1
      109 LOADN                            R24 0
      110 LOADN                            R25 0
      111 GETTABLEKS                       R26 R8 K28 ["ListRowHeight"]
      113 CALL                             R22 4 1
      114 SETTABLEKS                       R22 R21 K21 ["Size"]
      116 SETTABLEKS                       R9 R21 K22 ["ref"]
      118 NEWTABLE                         R22 8 0
      120 LOADB                            R23 1
      121 SETTABLEKS                       R23 R22 K29 ["auto-x"]
      123 SETTABLEKS                       R18 R22 K30 ["bg-action-soft-emphasis"]
      125 NOT                              R24 R18
      126 AND                              R23 R24 R12
      127 SETTABLEKS                       R23 R22 K31 ["bg-shift-200"]
      129 NOT                              R23 R13
      130 SETTABLEKS                       R23 R22 K32 ["stroke-thin stroke-default"]
      132 SETTABLEKS                       R13 R22 K33 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      134 SETTABLEKS                       R22 R21 K23 ["tag"]
      136 DUPTABLE                         R22 K36 [{"InputHandler", "InsertOrImportTutorialTooltip"}]
      137 GETUPVAL                         R23 8
      138 GETTABLEKS                       R23 R23 K17 ["createElement"]
      140 LOADK                            R24 K37 ["ImageButton"]
      141 NEWTABLE                         R25 8 0
      143 GETUPVAL                         R26 8
      144 GETTABLEKS                       R26 R26 K38 ["Event"]
      146 GETTABLEKS                       R26 R26 K39 ["MouseButton2Click"]
      148 SETTABLE                         R16 R25 R26
      149 GETUPVAL                         R26 8
      150 GETTABLEKS                       R26 R26 K38 ["Event"]
      152 GETTABLEKS                       R26 R26 K40 ["MouseButton1Down"]
      154 NEWCLOSURE                       R27 P1
      155 CAPTURE                          VAL R1
      156 CAPTURE                          UPVAL U13
      157 CAPTURE                          VAL R0
      158 SETTABLE                         R27 R25 R26
      159 GETUPVAL                         R26 8
      160 GETTABLEKS                       R26 R26 K38 ["Event"]
      162 GETTABLEKS                       R26 R26 K41 ["MouseButton1Up"]
      164 NEWCLOSURE                       R27 P2
      165 CAPTURE                          VAL R1
      166 CAPTURE                          UPVAL U13
      167 CAPTURE                          VAL R0
      168 SETTABLE                         R27 R25 R26
      169 GETIMPORT                        R26 K27 [UDim2.new]
      171 LOADN                            R27 1
      172 LOADN                            R28 0
      173 LOADN                            R29 0
      174 GETTABLEKS                       R30 R8 K28 ["ListRowHeight"]
      176 CALL                             R26 4 1
      177 SETTABLEKS                       R26 R25 K21 ["Size"]
      179 GETUPVAL                         R26 8
      180 GETTABLEKS                       R26 R26 K42 ["Tag"]
      182 SETTABLE                         R14 R25 R26
      183 MOVE                             R26 R17
      184 CALL                             R23 3 1
      185 SETTABLEKS                       R23 R22 K34 ["InputHandler"]
      187 GETTABLEKS                       R24 R0 K10 ["Key"]
      189 JUMPIFNOTEQKN                    R24 K43 [1] ; [+42]
      191 GETUPVAL                         R23 8
      192 GETTABLEKS                       R23 R23 K17 ["createElement"]
      194 GETUPVAL                         R24 16
      195 DUPTABLE                         R25 K49 [{"tutorialId", "stepId", "anchorInstance", "side", "align"}]
      196 GETUPVAL                         R26 13
      197 GETTABLEKS                       R26 R26 K50 ["TutorialId"]
      199 GETTABLEKS                       R26 R26 K51 ["Intro"]
      201 SETTABLEKS                       R26 R25 K44 ["tutorialId"]
      203 GETUPVAL                         R26 13
      204 GETTABLEKS                       R26 R26 K52 ["TutorialStepId"]
      206 GETTABLEKS                       R26 R26 K53 ["InsertOrImport"]
      208 SETTABLEKS                       R26 R25 K45 ["stepId"]
      210 SETTABLEKS                       R10 R25 K46 ["anchorInstance"]
      212 GETUPVAL                         R26 15
      213 GETTABLEKS                       R26 R26 K54 ["Enums"]
      215 GETTABLEKS                       R26 R26 K55 ["PopoverSide"]
      217 GETTABLEKS                       R26 R26 K56 ["Bottom"]
      219 SETTABLEKS                       R26 R25 K47 ["side"]
      221 GETUPVAL                         R26 15
      222 GETTABLEKS                       R26 R26 K54 ["Enums"]
      224 GETTABLEKS                       R26 R26 K57 ["PopoverAlign"]
      226 GETTABLEKS                       R26 R26 K58 ["Center"]
      228 SETTABLEKS                       R26 R25 K48 ["align"]
      230 CALL                             R23 2 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R23
      233 SETTABLEKS                       R23 R22 K35 ["InsertOrImportTutorialTooltip"]
      235 CALL                             R19 3 -1
      236 RETURN                           R19 -1

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
       84 GETTABLEKS                       R11 R11 K19 ["AssetStatus"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K12 ["Src"]
       91 GETTABLEKS                       R12 R12 K13 ["Components"]
       93 GETTABLEKS                       R12 R12 K14 ["Shared"]
       95 GETTABLEKS                       R12 R12 K20 ["TutorialTooltip"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K12 ["Src"]
      102 GETTABLEKS                       R13 R13 K21 ["Controllers"]
      104 GETTABLEKS                       R13 R13 K22 ["Input"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K12 ["Src"]
      111 GETTABLEKS                       R14 R14 K21 ["Controllers"]
      113 GETTABLEKS                       R14 R14 K23 ["ItemsController"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K12 ["Src"]
      120 GETTABLEKS                       R15 R15 K21 ["Controllers"]
      122 GETTABLEKS                       R15 R15 K24 ["ExplorerController"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K12 ["Src"]
      129 GETTABLEKS                       R16 R16 K21 ["Controllers"]
      131 GETTABLEKS                       R16 R16 K25 ["LayoutController"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K12 ["Src"]
      138 GETTABLEKS                       R17 R17 K21 ["Controllers"]
      140 GETTABLEKS                       R17 R17 K26 ["SearchController"]
      142 CALL                             R16 1 1
      143 GETTABLEKS                       R17 R2 K27 ["Hooks"]
      145 GETTABLEKS                       R17 R17 K28 ["useStyleTags"]
      147 GETIMPORT                        R18 K5 [require]
      149 GETTABLEKS                       R19 R0 K12 ["Src"]
      151 GETTABLEKS                       R19 R19 K27 ["Hooks"]
      153 GETTABLEKS                       R19 R19 K29 ["useColumns"]
      155 CALL                             R18 1 1
      156 GETIMPORT                        R19 K5 [require]
      158 GETTABLEKS                       R20 R0 K12 ["Src"]
      160 GETTABLEKS                       R20 R20 K27 ["Hooks"]
      162 GETTABLEKS                       R20 R20 K30 ["useContextMenu"]
      164 CALL                             R19 1 1
      165 GETIMPORT                        R20 K5 [require]
      167 GETTABLEKS                       R21 R0 K12 ["Src"]
      169 GETTABLEKS                       R21 R21 K27 ["Hooks"]
      171 GETTABLEKS                       R21 R21 K31 ["useIsEditItem"]
      173 CALL                             R20 1 1
      174 GETIMPORT                        R21 K5 [require]
      176 GETTABLEKS                       R22 R0 K12 ["Src"]
      178 GETTABLEKS                       R22 R22 K27 ["Hooks"]
      180 GETTABLEKS                       R22 R22 K32 ["useItemHovered"]
      182 CALL                             R21 1 1
      183 GETIMPORT                        R22 K5 [require]
      185 GETTABLEKS                       R23 R0 K12 ["Src"]
      187 GETTABLEKS                       R23 R23 K27 ["Hooks"]
      189 GETTABLEKS                       R23 R23 K33 ["useItemDragHovered"]
      191 CALL                             R22 1 1
      192 GETIMPORT                        R23 K5 [require]
      194 GETTABLEKS                       R24 R0 K12 ["Src"]
      196 GETTABLEKS                       R24 R24 K27 ["Hooks"]
      198 GETTABLEKS                       R24 R24 K34 ["useItemSelection"]
      200 CALL                             R23 1 1
      201 GETIMPORT                        R24 K5 [require]
      203 GETTABLEKS                       R25 R0 K12 ["Src"]
      205 GETTABLEKS                       R25 R25 K27 ["Hooks"]
      207 GETTABLEKS                       R25 R25 K35 ["useLayoutInfo"]
      209 CALL                             R24 1 1
      210 GETIMPORT                        R25 K5 [require]
      212 GETTABLEKS                       R26 R0 K12 ["Src"]
      214 GETTABLEKS                       R26 R26 K36 ["Util"]
      216 GETTABLEKS                       R26 R26 K37 ["copyAssetId"]
      218 CALL                             R25 1 1
      219 GETIMPORT                        R26 K5 [require]
      221 GETTABLEKS                       R27 R0 K12 ["Src"]
      223 GETTABLEKS                       R27 R27 K36 ["Util"]
      225 GETTABLEKS                       R27 R27 K38 ["formatDateTime"]
      227 CALL                             R26 1 1
      228 GETIMPORT                        R27 K5 [require]
      230 GETTABLEKS                       R28 R0 K12 ["Src"]
      232 GETTABLEKS                       R28 R28 K36 ["Util"]
      234 GETTABLEKS                       R28 R28 K39 ["isAudioPreviewable"]
      236 CALL                             R27 1 1
      237 GETIMPORT                        R28 K5 [require]
      239 GETTABLEKS                       R29 R0 K12 ["Src"]
      241 GETTABLEKS                       R29 R29 K40 ["Types"]
      243 CALL                             R28 1 1
      244 GETIMPORT                        R29 K5 [require]
      246 GETTABLEKS                       R30 R0 K12 ["Src"]
      248 GETTABLEKS                       R30 R30 K41 ["Resources"]
      250 GETTABLEKS                       R30 R30 K42 ["Constants"]
      252 CALL                             R29 1 1
      253 GETIMPORT                        R30 K5 [require]
      255 GETTABLEKS                       R31 R0 K12 ["Src"]
      257 GETTABLEKS                       R31 R31 K43 ["Analytics"]
      259 CALL                             R30 1 1
      260 GETIMPORT                        R31 K5 [require]
      262 GETTABLEKS                       R32 R0 K12 ["Src"]
      264 GETTABLEKS                       R32 R32 K43 ["Analytics"]
      266 GETTABLEKS                       R32 R32 K40 ["Types"]
      268 CALL                             R31 1 1
      269 GETIMPORT                        R32 K5 [require]
      271 GETTABLEKS                       R33 R0 K12 ["Src"]
      273 GETTABLEKS                       R33 R33 K41 ["Resources"]
      275 GETTABLEKS                       R33 R33 K44 ["StyleConstants"]
      277 CALL                             R32 1 1
      278 GETTABLEKS                       R33 R3 K36 ["Util"]
      280 GETTABLEKS                       R33 R33 K45 ["GetTextSize"]
      282 GETIMPORT                        R34 K5 [require]
      284 GETTABLEKS                       R35 R0 K12 ["Src"]
      286 GETTABLEKS                       R35 R35 K41 ["Resources"]
      288 GETTABLEKS                       R35 R35 K46 ["PluginStyles"]
      290 CALL                             R34 1 1
      291 GETIMPORT                        R35 K5 [require]
      293 GETTABLEKS                       R36 R0 K12 ["Src"]
      295 GETTABLEKS                       R36 R36 K47 ["Flags"]
      297 GETTABLEKS                       R36 R36 K48 ["getFFlagAmrEnableDraftStatus"]
      299 CALL                             R35 1 1
      300 DUPCLOSURE                       R36 K49 [PROTO_0]
      301 CAPTURE                          VAL R5
      302 CAPTURE                          VAL R28
      303 CAPTURE                          VAL R29
      304 CAPTURE                          VAL R26
      305 DUPCLOSURE                       R37 K50 [PROTO_2]
      306 CAPTURE                          VAL R5
      307 CAPTURE                          VAL R18
      308 CAPTURE                          VAL R24
      309 CAPTURE                          VAL R1
      310 CAPTURE                          VAL R21
      311 CAPTURE                          VAL R32
      312 CAPTURE                          VAL R36
      313 CAPTURE                          VAL R29
      314 CAPTURE                          VAL R33
      315 CAPTURE                          VAL R34
      316 CAPTURE                          VAL R28
      317 CAPTURE                          VAL R35
      318 CAPTURE                          VAL R10
      319 CAPTURE                          VAL R2
      320 CAPTURE                          VAL R8
      321 CAPTURE                          VAL R27
      322 CAPTURE                          VAL R6
      323 CAPTURE                          VAL R9
      324 CAPTURE                          VAL R7
      325 CAPTURE                          VAL R25
      326 CAPTURE                          VAL R30
      327 CAPTURE                          VAL R31
      328 DUPCLOSURE                       R38 K51 [PROTO_6]
      329 CAPTURE                          VAL R12
      330 CAPTURE                          VAL R13
      331 CAPTURE                          VAL R14
      332 CAPTURE                          VAL R15
      333 CAPTURE                          VAL R16
      334 CAPTURE                          VAL R23
      335 CAPTURE                          VAL R20
      336 CAPTURE                          VAL R24
      337 CAPTURE                          VAL R1
      338 CAPTURE                          VAL R21
      339 CAPTURE                          VAL R22
      340 CAPTURE                          VAL R17
      341 CAPTURE                          VAL R19
      342 CAPTURE                          VAL R28
      343 CAPTURE                          VAL R37
      344 CAPTURE                          VAL R2
      345 CAPTURE                          VAL R11
      346 RETURN                           R38 1
