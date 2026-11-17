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
       33 JUMPIFNOTEQ                      R1 R3 ; [+19]
       35 JUMPIFNOTEQKN                    R0 K8 [0] ; [+7]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K9 ["Constants"]
       40 GETTABLEKS                       R3 R3 K10 ["PlaceholderText"]
       42 RETURN                           R3 1
       43 GETUPVAL                         R3 3
       44 GETIMPORT                        R4 K13 [DateTime.fromUnixTimestampMillis]
       46 MOVE                             R5 R0
       47 CALL                             R4 1 1
       48 NAMECALL                         R5 R2 K14 ["getLocale"]
       50 CALL                             R5 1 -1
       51 CALL                             R3 -1 -1
       52 RETURN                           R3 -1
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       56 GETTABLEKS                       R3 R3 K15 ["AssetType"]
       58 JUMPIFNOTEQ                      R1 R3 ; [+7]
       60 LOADK                            R5 K15 ["AssetType"]
       61 MOVE                             R6 R0
       62 NAMECALL                         R3 R2 K16 ["getText"]
       64 CALL                             R3 3 -1
       65 RETURN                           R3 -1
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       69 GETTABLEKS                       R3 R3 K17 ["Source"]
       71 JUMPIFNOTEQ                      R1 R3 ; [+7]
       73 LOADK                            R5 K18 ["AssetSource"]
       74 MOVE                             R6 R0
       75 NAMECALL                         R3 R2 K16 ["getText"]
       77 CALL                             R3 3 -1
       78 RETURN                           R3 -1
       79 GETUPVAL                         R3 1
       80 GETTABLEKS                       R3 R3 K1 ["AssetInfoField"]
       82 GETTABLEKS                       R3 R3 K19 ["AssetId"]
       84 JUMPIFNOTEQ                      R1 R3 ; [+9]
       86 JUMPIFNOTEQKN                    R0 K8 [0] ; [+7]
       88 GETUPVAL                         R3 2
       89 GETTABLEKS                       R3 R3 K9 ["Constants"]
       91 GETTABLEKS                       R3 R3 K10 ["PlaceholderText"]
       93 RETURN                           R3 1
       94 FASTCALL1                        TOSTRING R0 ; [+3]
       95 MOVE                             R4 R0
       96 GETIMPORT                        R3 K21 [tostring]
       98 CALL                             R3 1 1
       99 RETURN                           R3 1

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
       57 JUMP                             ; [+5]
       58 GETUPVAL                         R24 7
       59 GETTABLEKS                       R24 R24 K11 ["Constants"]
       61 GETTABLEKS                       R24 R24 K12 ["PlaceholderText"]
       63 GETTABLE                         R25 R9 R21
       64 GETTABLEKS                       R25 R25 K13 ["Offset"]
       66 GETUPVAL                         R27 8
       67 MOVE                             R28 R24
       68 CALL                             R27 1 1
       69 GETTABLEKS                       R27 R27 K14 ["X"]
       71 GETUPVAL                         R30 9
       72 LOADK                            R32 K16 ["CellContentPadding"]
       73 NAMECALL                         R30 R30 K17 ["GetAttribute"]
       75 CALL                             R30 2 1
       76 MULK                             R29 R30 K15 [2]
       77 SUB                              R28 R25 R29
       78 JUMPIFLT                         R28 R27 ; [+2]
       80 LOADB                            R26 0 +1
       81 LOADB                            R26 1
       82 MOVE                             R29 R15
       83 MOVE                             R30 R16
       84 GETUPVAL                         R31 10
       85 GETTABLEKS                       R31 R31 K18 ["AssetInfoField"]
       87 GETTABLEKS                       R31 R31 K19 ["AssetType"]
       89 NAMECALL                         R27 R1 K10 ["getItemField"]
       91 CALL                             R27 4 1
       92 MOVE                             R30 R15
       93 MOVE                             R31 R16
       94 GETUPVAL                         R32 10
       95 GETTABLEKS                       R32 R32 K18 ["AssetInfoField"]
       97 GETTABLEKS                       R32 R32 K20 ["AssetId"]
       99 NAMECALL                         R28 R1 K10 ["getItemField"]
      101 CALL                             R28 4 1
      102 JUMPIFNOTEQKN                    R21 K21 [1] ; [+258]
      104 MOVE                             R31 R15
      105 MOVE                             R32 R16
      106 GETUPVAL                         R33 10
      107 GETTABLEKS                       R33 R33 K18 ["AssetInfoField"]
      109 GETTABLEKS                       R33 R33 K22 ["IsPackage"]
      111 NAMECALL                         R29 R1 K10 ["getItemField"]
      113 CALL                             R29 4 1
      114 MOVE                             R32 R15
      115 MOVE                             R33 R16
      116 GETUPVAL                         R34 10
      117 GETTABLEKS                       R34 R34 K18 ["AssetInfoField"]
      119 GETTABLEKS                       R34 R34 K23 ["ModerationStatus"]
      121 NAMECALL                         R30 R1 K10 ["getItemField"]
      123 CALL                             R30 4 1
      124 GETUPVAL                         R32 11
      125 CALL                             R32 0 1
      126 JUMPIFNOT                        R32 ; [+11]
      127 MOVE                             R33 R15
      128 MOVE                             R34 R16
      129 GETUPVAL                         R35 10
      130 GETTABLEKS                       R35 R35 K18 ["AssetInfoField"]
      132 GETTABLEKS                       R35 R35 K24 ["DraftStatus"]
      134 NAMECALL                         R31 R1 K10 ["getItemField"]
      136 CALL                             R31 4 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R31
      139 SUB                              R33 R25 R17
      140 GETUPVAL                         R34 9
      141 LOADK                            R36 K16 ["CellContentPadding"]
      142 NAMECALL                         R34 R34 K17 ["GetAttribute"]
      144 CALL                             R34 2 1
      145 SUB                              R32 R33 R34
      146 GETUPVAL                         R34 10
      147 GETTABLEKS                       R34 R34 K23 ["ModerationStatus"]
      149 GETTABLEKS                       R34 R34 K25 ["Rejected"]
      151 JUMPIFEQ                         R30 R34 ; [+2]
      153 LOADB                            R33 0 +1
      154 LOADB                            R33 1
      155 GETUPVAL                         R35 10
      156 GETTABLEKS                       R35 R35 K24 ["DraftStatus"]
      158 GETTABLEKS                       R35 R35 K26 ["Draft"]
      160 JUMPIFEQ                         R31 R35 ; [+2]
      162 LOADB                            R34 0 +1
      163 LOADB                            R34 1
      164 LOADNIL                          R35
      165 MOVE                             R36 R32
      166 JUMPIF                           R33 ; [+1]
      167 JUMPIFNOT                        R34 ; [+19]
      168 GETUPVAL                         R37 3
      169 GETTABLEKS                       R37 R37 K27 ["createElement"]
      171 GETUPVAL                         R38 12
      172 DUPTABLE                         R39 K32 [{["LayoutOrder"] = 2, ["AssetId"], ["AssetPath"], ["IsModerated"], ["IsDraft"]}]
      173 SETTABLEKS                       R28 R39 K20 ["AssetId"]
      175 SETTABLEKS                       R16 R39 K29 ["AssetPath"]
      177 SETTABLEKS                       R33 R39 K30 ["IsModerated"]
      179 SETTABLEKS                       R34 R39 K31 ["IsDraft"]
      181 CALL                             R37 2 1
      182 MOVE                             R35 R37
      183 GETUPVAL                         R37 5
      184 GETTABLEKS                       R37 R37 K33 ["IconWidth"]
      186 SUB                              R36 R36 R37
      187 GETUPVAL                         R37 3
      188 GETTABLEKS                       R37 R37 K27 ["createElement"]
      190 GETUPVAL                         R38 13
      191 GETTABLEKS                       R38 R38 K34 ["Text"]
      193 DUPTABLE                         R39 K39 [{["LayoutOrder"] = 1, ["Text"], ["Size"], ["ref"], ["tag"] = "auto-y padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      194 SETTABLEKS                       R24 R39 K34 ["Text"]
      196 GETIMPORT                        R40 K42 [UDim2.fromOffset]
      198 MOVE                             R41 R36
      199 LOADN                            R42 0
      200 CALL                             R40 2 1
      201 SETTABLEKS                       R40 R39 K35 ["Size"]
      203 SETTABLEKS                       R4 R39 K36 ["ref"]
      205 CALL                             R37 2 1
      206 GETUPVAL                         R38 3
      207 GETTABLEKS                       R38 R38 K27 ["createElement"]
      209 GETUPVAL                         R39 13
      210 GETTABLEKS                       R39 R39 K43 ["View"]
      212 DUPTABLE                         R40 K45 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-x-left align-y-center padding-left-small"}]
      213 SETTABLEKS                       R21 R40 K28 ["LayoutOrder"]
      215 GETIMPORT                        R41 K47 [UDim2.new]
      217 LOADN                            R42 0
      218 MOVE                             R43 R25
      219 LOADN                            R44 1
      220 LOADN                            R45 0
      221 CALL                             R41 4 1
      222 SETTABLEKS                       R41 R40 K35 ["Size"]
      224 DUPTABLE                         R41 K50 [{"ThumbnailContainer", "AssetName"}]
      225 GETUPVAL                         R42 3
      226 GETTABLEKS                       R42 R42 K27 ["createElement"]
      228 GETUPVAL                         R43 13
      229 GETTABLEKS                       R43 R43 K43 ["View"]
      231 DUPTABLE                         R44 K52 [{["LayoutOrder"] = 1, ["Size"], ["ref"], ["tag"] = "bg-foreground-contrast radius-small"}]
      232 GETIMPORT                        R45 K42 [UDim2.fromOffset]
      234 MOVE                             R46 R17
      235 MOVE                             R47 R17
      236 CALL                             R45 2 1
      237 SETTABLEKS                       R45 R44 K35 ["Size"]
      239 SETTABLEKS                       R11 R44 K36 ["ref"]
      241 DUPTABLE                         R45 K56 [{"Thumbnail", "AudioOverlay", "PackageLinkIcon"}]
      242 GETUPVAL                         R46 3
      243 GETTABLEKS                       R46 R46 K27 ["createElement"]
      245 GETUPVAL                         R47 14
      246 DUPTABLE                         R48 K57 [{"AssetId", "AssetType"}]
      247 SETTABLEKS                       R28 R48 K20 ["AssetId"]
      249 SETTABLEKS                       R27 R48 K19 ["AssetType"]
      251 CALL                             R46 2 1
      252 SETTABLEKS                       R46 R45 K53 ["Thumbnail"]
      254 GETUPVAL                         R47 15
      255 MOVE                             R48 R27
      256 MOVE                             R49 R30
      257 CALL                             R47 2 1
      258 JUMPIFNOT                        R47 ; [+13]
      259 GETUPVAL                         R46 3
      260 GETTABLEKS                       R46 R46 K27 ["createElement"]
      262 GETUPVAL                         R47 16
      263 DUPTABLE                         R48 K60 [{"AssetId", "IsHovered", "OnRightClick"}]
      264 SETTABLEKS                       R28 R48 K20 ["AssetId"]
      266 SETTABLEKS                       R12 R48 K58 ["IsHovered"]
      268 SETTABLEKS                       R3 R48 K59 ["OnRightClick"]
      270 CALL                             R46 2 1
      271 JUMP                             ; [+1]
      272 LOADNIL                          R46
      273 SETTABLEKS                       R46 R45 K54 ["AudioOverlay"]
      275 JUMPIFNOT                        R29 ; [+6]
      276 GETUPVAL                         R46 3
      277 GETTABLEKS                       R46 R46 K27 ["createElement"]
      279 GETUPVAL                         R47 17
      280 CALL                             R46 1 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R46
      283 SETTABLEKS                       R46 R45 K55 ["PackageLinkIcon"]
      285 CALL                             R42 3 1
      286 SETTABLEKS                       R42 R41 K48 ["ThumbnailContainer"]
      288 GETUPVAL                         R42 3
      289 GETTABLEKS                       R42 R42 K27 ["createElement"]
      291 GETUPVAL                         R43 13
      292 GETTABLEKS                       R43 R43 K43 ["View"]
      294 DUPTABLE                         R44 K62 [{["LayoutOrder"] = 2, ["tag"] = "row align-x-left align-y-center", ["Size"]}]
      295 GETIMPORT                        R45 K47 [UDim2.new]
      297 LOADN                            R46 0
      298 MOVE                             R47 R32
      299 LOADN                            R48 1
      300 LOADN                            R49 0
      301 CALL                             R45 4 1
      302 SETTABLEKS                       R45 R44 K35 ["Size"]
      304 DUPTABLE                         R45 K65 [{"Name", "State"}]
      305 JUMPIFNOT                        R2 ; [+22]
      306 GETUPVAL                         R46 3
      307 GETTABLEKS                       R46 R46 K27 ["createElement"]
      309 GETUPVAL                         R47 18
      310 DUPTABLE                         R48 K68 [{["LayoutOrder"] = 1, ["InitialText"], ["ItemType"], ["ItemPath"], ["Size"]}]
      311 SETTABLEKS                       R24 R48 K66 ["InitialText"]
      313 SETTABLEKS                       R27 R48 K67 ["ItemType"]
      315 SETTABLEKS                       R16 R48 K4 ["ItemPath"]
      317 GETIMPORT                        R49 K47 [UDim2.new]
      319 LOADN                            R50 0
      320 MOVE                             R51 R36
      321 LOADN                            R52 1
      322 LOADN                            R53 0
      323 CALL                             R49 4 1
      324 SETTABLEKS                       R49 R48 K35 ["Size"]
      326 CALL                             R46 2 1
      327 JUMP                             ; [+23]
      328 JUMPIFNOT                        R26 ; [+21]
      329 GETUPVAL                         R46 3
      330 GETTABLEKS                       R46 R46 K27 ["createElement"]
      332 GETUPVAL                         R47 13
      333 GETTABLEKS                       R47 R47 K69 ["Tooltip"]
      335 DUPTABLE                         R48 K72 [{["LayoutOrder"] = 1, ["title"], ["side"]}]
      336 SETTABLEKS                       R24 R48 K70 ["title"]
      338 GETUPVAL                         R49 13
      339 GETTABLEKS                       R49 R49 K73 ["Enums"]
      341 GETTABLEKS                       R49 R49 K74 ["PopoverSide"]
      343 GETTABLEKS                       R49 R49 K75 ["Bottom"]
      345 SETTABLEKS                       R49 R48 K71 ["side"]
      347 MOVE                             R49 R37
      348 CALL                             R46 3 1
      349 JUMP                             ; [+1]
      350 MOVE                             R46 R37
      351 SETTABLEKS                       R46 R45 K63 ["Name"]
      353 SETTABLEKS                       R35 R45 K64 ["State"]
      355 CALL                             R42 3 1
      356 SETTABLEKS                       R42 R41 K49 ["AssetName"]
      358 CALL                             R38 3 1
      359 SETTABLE                         R38 R6 R21
      360 JUMP                             ; [+192]
      361 GETUPVAL                         R29 10
      362 GETTABLEKS                       R29 R29 K18 ["AssetInfoField"]
      364 GETTABLEKS                       R29 R29 K20 ["AssetId"]
      366 JUMPIFNOTEQ                      R22 R29 ; [+120]
      368 MOVE                             R29 R14
      369 JUMPIFNOT                        R29 ; [+7]
      370 LOADB                            R29 0
      371 JUMPIFEQKNIL                     R23 ; [+5]
      373 JUMPIFNOTEQKN                    R23 K76 [0] ; [+2]
      375 LOADB                            R29 0 +1
      376 LOADB                            R29 1
      377 GETUPVAL                         R30 3
      378 GETTABLEKS                       R30 R30 K27 ["createElement"]
      380 GETUPVAL                         R31 13
      381 GETTABLEKS                       R31 R31 K43 ["View"]
      383 DUPTABLE                         R32 K78 [{["LayoutOrder"], ["Size"], ["ref"], ["tag"] = "row align-x-left align-y-center gap-xsmall"}]
      384 SETTABLEKS                       R21 R32 K28 ["LayoutOrder"]
      386 GETIMPORT                        R33 K47 [UDim2.new]
      388 LOADN                            R34 0
      389 MOVE                             R35 R25
      390 LOADN                            R36 1
      391 LOADN                            R37 0
      392 CALL                             R33 4 1
      393 SETTABLEKS                       R33 R32 K35 ["Size"]
      395 SETTABLEKS                       R13 R32 K36 ["ref"]
      397 DUPTABLE                         R33 K80 [{"Text", "CopyIdButton"}]
      398 GETUPVAL                         R34 3
      399 GETTABLEKS                       R34 R34 K27 ["createElement"]
      401 GETUPVAL                         R35 13
      402 GETTABLEKS                       R35 R35 K34 ["Text"]
      404 DUPTABLE                         R36 K82 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-x size-0-full shrink padding-left-small text-body-small text-align-x-left text-truncate-end"}]
      405 SETTABLEKS                       R24 R36 K34 ["Text"]
      407 CALL                             R34 2 1
      408 SETTABLEKS                       R34 R33 K34 ["Text"]
      410 JUMPIFNOT                        R29 ; [+70]
      411 GETUPVAL                         R34 3
      412 GETTABLEKS                       R34 R34 K27 ["createElement"]
      414 GETUPVAL                         R35 13
      415 GETTABLEKS                       R35 R35 K69 ["Tooltip"]
      417 DUPTABLE                         R36 K83 [{["LayoutOrder"] = 2, ["title"], ["side"]}]
      418 LOADK                            R39 K84 ["ContextMenu"]
      419 LOADK                            R40 K85 ["CopyIdToClipboard"]
      420 NAMECALL                         R37 R7 K86 ["getText"]
      422 CALL                             R37 3 1
      423 SETTABLEKS                       R37 R36 K70 ["title"]
      425 GETUPVAL                         R37 13
      426 GETTABLEKS                       R37 R37 K73 ["Enums"]
      428 GETTABLEKS                       R37 R37 K74 ["PopoverSide"]
      430 GETTABLEKS                       R37 R37 K75 ["Bottom"]
      432 SETTABLEKS                       R37 R36 K71 ["side"]
      434 GETUPVAL                         R37 3
      435 GETTABLEKS                       R37 R37 K27 ["createElement"]
      437 GETUPVAL                         R38 13
      438 GETTABLEKS                       R38 R38 K87 ["IconButton"]
      440 DUPTABLE                         R39 K94 [{["icon"], ["size"], ["variant"], ["onActivated"], ["testId"] = "copy-asset-id-button"}]
      441 GETUPVAL                         R40 13
      442 GETTABLEKS                       R40 R40 K73 ["Enums"]
      444 GETTABLEKS                       R40 R40 K95 ["IconName"]
      446 GETTABLEKS                       R40 R40 K96 ["TwoStackedSquares"]
      448 SETTABLEKS                       R40 R39 K88 ["icon"]
      450 GETUPVAL                         R40 13
      451 GETTABLEKS                       R40 R40 K73 ["Enums"]
      453 GETTABLEKS                       R40 R40 K97 ["InputSize"]
      455 GETTABLEKS                       R40 R40 K98 ["XSmall"]
      457 SETTABLEKS                       R40 R39 K89 ["size"]
      459 GETUPVAL                         R40 13
      460 GETTABLEKS                       R40 R40 K73 ["Enums"]
      462 GETTABLEKS                       R40 R40 K99 ["ButtonVariant"]
      464 GETTABLEKS                       R40 R40 K100 ["Utility"]
      466 SETTABLEKS                       R40 R39 K90 ["variant"]
      468 NEWCLOSURE                       R40 P0
      469 CAPTURE                          UPVAL U19
      470 CAPTURE                          VAL R23
      471 CAPTURE                          UPVAL U20
      472 CAPTURE                          VAL R28
      473 CAPTURE                          VAL R27
      474 CAPTURE                          UPVAL U21
      475 CAPTURE                          VAL R5
      476 SETTABLEKS                       R40 R39 K91 ["onActivated"]
      478 CALL                             R37 2 -1
      479 CALL                             R34 -1 1
      480 JUMP                             ; [+1]
      481 LOADNIL                          R34
      482 SETTABLEKS                       R34 R33 K79 ["CopyIdButton"]
      484 CALL                             R30 3 1
      485 SETTABLE                         R30 R6 R21
      486 JUMP                             ; [+66]
      487 JUMPIFNOT                        R26 ; [+43]
      488 GETUPVAL                         R29 3
      489 GETTABLEKS                       R29 R29 K27 ["createElement"]
      491 GETUPVAL                         R30 13
      492 GETTABLEKS                       R30 R30 K69 ["Tooltip"]
      494 DUPTABLE                         R31 K101 [{"LayoutOrder", "title", "side"}]
      495 SETTABLEKS                       R21 R31 K28 ["LayoutOrder"]
      497 SETTABLEKS                       R24 R31 K70 ["title"]
      499 GETUPVAL                         R32 13
      500 GETTABLEKS                       R32 R32 K73 ["Enums"]
      502 GETTABLEKS                       R32 R32 K74 ["PopoverSide"]
      504 GETTABLEKS                       R32 R32 K75 ["Bottom"]
      506 SETTABLEKS                       R32 R31 K71 ["side"]
      508 GETUPVAL                         R32 3
      509 GETTABLEKS                       R32 R32 K27 ["createElement"]
      511 GETUPVAL                         R33 13
      512 GETTABLEKS                       R33 R33 K34 ["Text"]
      514 DUPTABLE                         R34 K103 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      515 SETTABLEKS                       R21 R34 K28 ["LayoutOrder"]
      517 SETTABLEKS                       R24 R34 K34 ["Text"]
      519 GETIMPORT                        R35 K47 [UDim2.new]
      521 LOADN                            R36 0
      522 MOVE                             R37 R25
      523 LOADN                            R38 1
      524 LOADN                            R39 0
      525 CALL                             R35 4 1
      526 SETTABLEKS                       R35 R34 K35 ["Size"]
      528 CALL                             R32 2 -1
      529 CALL                             R29 -1 1
      530 JUMP                             ; [+21]
      531 GETUPVAL                         R29 3
      532 GETTABLEKS                       R29 R29 K27 ["createElement"]
      534 GETUPVAL                         R30 13
      535 GETTABLEKS                       R30 R30 K34 ["Text"]
      537 DUPTABLE                         R31 K103 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "padding-x-small text-body-small text-align-x-left text-truncate-end"}]
      538 SETTABLEKS                       R21 R31 K28 ["LayoutOrder"]
      540 SETTABLEKS                       R24 R31 K34 ["Text"]
      542 GETIMPORT                        R32 K47 [UDim2.new]
      544 LOADN                            R33 0
      545 MOVE                             R34 R25
      546 LOADN                            R35 1
      547 LOADN                            R36 0
      548 CALL                             R32 4 1
      549 SETTABLEKS                       R32 R31 K35 ["Size"]
      551 CALL                             R29 2 1
      552 SETTABLE                         R29 R6 R21
      553 FORGLOOP                         R18 2 ; [-508]
      555 RETURN                           R6 1

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
      225 GETTABLEKS                       R27 R27 K38 ["isAudioPreviewable"]
      227 CALL                             R26 1 1
      228 GETIMPORT                        R27 K5 [require]
      230 GETTABLEKS                       R28 R0 K12 ["Src"]
      232 GETTABLEKS                       R28 R28 K39 ["Types"]
      234 CALL                             R27 1 1
      235 GETIMPORT                        R28 K5 [require]
      237 GETTABLEKS                       R29 R0 K6 ["Packages"]
      239 GETTABLEKS                       R29 R29 K40 ["AssetManagement"]
      241 CALL                             R28 1 1
      242 GETTABLEKS                       R29 R28 K41 ["Utils"]
      244 GETTABLEKS                       R29 R29 K42 ["formatDateTime"]
      246 GETIMPORT                        R30 K5 [require]
      248 GETTABLEKS                       R31 R0 K12 ["Src"]
      250 GETTABLEKS                       R31 R31 K43 ["Analytics"]
      252 CALL                             R30 1 1
      253 GETIMPORT                        R31 K5 [require]
      255 GETTABLEKS                       R32 R0 K12 ["Src"]
      257 GETTABLEKS                       R32 R32 K43 ["Analytics"]
      259 GETTABLEKS                       R32 R32 K39 ["Types"]
      261 CALL                             R31 1 1
      262 GETIMPORT                        R32 K5 [require]
      264 GETTABLEKS                       R33 R0 K12 ["Src"]
      266 GETTABLEKS                       R33 R33 K44 ["Resources"]
      268 GETTABLEKS                       R33 R33 K45 ["StyleConstants"]
      270 CALL                             R32 1 1
      271 GETTABLEKS                       R33 R3 K36 ["Util"]
      273 GETTABLEKS                       R33 R33 K46 ["GetTextSize"]
      275 GETIMPORT                        R34 K5 [require]
      277 GETTABLEKS                       R35 R0 K12 ["Src"]
      279 GETTABLEKS                       R35 R35 K44 ["Resources"]
      281 GETTABLEKS                       R35 R35 K47 ["PluginStyles"]
      283 CALL                             R34 1 1
      284 GETIMPORT                        R35 K5 [require]
      286 GETTABLEKS                       R36 R0 K12 ["Src"]
      288 GETTABLEKS                       R36 R36 K48 ["Flags"]
      290 GETTABLEKS                       R36 R36 K49 ["getFFlagAmrEnableDraftStatus"]
      292 CALL                             R35 1 1
      293 DUPCLOSURE                       R36 K50 [PROTO_0]
      294 CAPTURE                          VAL R5
      295 CAPTURE                          VAL R27
      296 CAPTURE                          VAL R28
      297 CAPTURE                          VAL R29
      298 DUPCLOSURE                       R37 K51 [PROTO_2]
      299 CAPTURE                          VAL R5
      300 CAPTURE                          VAL R18
      301 CAPTURE                          VAL R24
      302 CAPTURE                          VAL R1
      303 CAPTURE                          VAL R21
      304 CAPTURE                          VAL R32
      305 CAPTURE                          VAL R36
      306 CAPTURE                          VAL R28
      307 CAPTURE                          VAL R33
      308 CAPTURE                          VAL R34
      309 CAPTURE                          VAL R27
      310 CAPTURE                          VAL R35
      311 CAPTURE                          VAL R10
      312 CAPTURE                          VAL R2
      313 CAPTURE                          VAL R8
      314 CAPTURE                          VAL R26
      315 CAPTURE                          VAL R6
      316 CAPTURE                          VAL R9
      317 CAPTURE                          VAL R7
      318 CAPTURE                          VAL R25
      319 CAPTURE                          VAL R30
      320 CAPTURE                          VAL R31
      321 DUPCLOSURE                       R38 K52 [PROTO_6]
      322 CAPTURE                          VAL R12
      323 CAPTURE                          VAL R13
      324 CAPTURE                          VAL R14
      325 CAPTURE                          VAL R15
      326 CAPTURE                          VAL R16
      327 CAPTURE                          VAL R23
      328 CAPTURE                          VAL R20
      329 CAPTURE                          VAL R24
      330 CAPTURE                          VAL R1
      331 CAPTURE                          VAL R21
      332 CAPTURE                          VAL R22
      333 CAPTURE                          VAL R17
      334 CAPTURE                          VAL R19
      335 CAPTURE                          VAL R27
      336 CAPTURE                          VAL R37
      337 CAPTURE                          VAL R2
      338 CAPTURE                          VAL R11
      339 RETURN                           R38 1
