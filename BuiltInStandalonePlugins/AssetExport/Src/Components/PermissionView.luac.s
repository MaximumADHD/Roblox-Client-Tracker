PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R1 R2 ; [+22]
        6 GETUPVAL                         R1 0
        7 GETIMPORT                        R2 K6 [UDim2.fromOffset]
        9 GETTABLEKS                       R3 R0 K7 ["Position"]
       11 GETTABLEKS                       R3 R3 K8 ["X"]
       13 GETTABLEKS                       R4 R0 K7 ["Position"]
       15 GETTABLEKS                       R4 R4 K9 ["Y"]
       17 CALL                             R2 2 -1
       18 CALL                             R1 -1 0
       19 GETUPVAL                         R1 1
       20 LOADB                            R2 1
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 2
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K10 ["assetId"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+17]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 GETTABLEKS                       R0 R0 K1 ["InputEnded"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 NAMECALL                         R0 R0 K2 ["Connect"]
       17 CALL                             R0 2 1
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 RETURN                           R1 1
       21 DUPCLOSURE                       R0 K3 [PROTO_2]
       22 RETURN                           R0 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKS                    R0 K0 ["viewInExplorer"] ; [+7]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R1 R1 K0 ["viewInExplorer"]
        6 CALL                             R1 2 0
        7 JUMP                             ; [+7]
        8 JUMPIFNOTEQKS                    R0 K1 ["openInBrowser"] ; [+6]
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R3 1
       12 NAMECALL                         R1 R1 K1 ["openInBrowser"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 2
       16 LOADB                            R2 0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["openLearnPage"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["openMain"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["triggerFilePathSelection"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["use"]
        9 CALL                             R3 0 1
       10 LOADK                            R6 K1 ["textures"]
       11 NAMECALL                         R4 R3 K2 ["getSettingValue"]
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 2
       15 MOVE                             R6 R3
       16 CALL                             R5 1 3
       17 FORGPREP                         R5
       18 JUMPIF                           R4 ; [+4]
       19 GETTABLEKS                       R10 R9 K3 ["assetType"]
       21 JUMPIFNOTEQKS                    R10 K4 ["Mesh"] ; [+18]
       23 DUPTABLE                         R12 K7 [{"assetId", "assetType", "count"}]
       24 SETTABLEKS                       R8 R12 K5 ["assetId"]
       26 GETTABLEKS                       R13 R9 K3 ["assetType"]
       28 SETTABLEKS                       R13 R12 K3 ["assetType"]
       30 GETTABLEKS                       R13 R9 K6 ["count"]
       32 SETTABLEKS                       R13 R12 K6 ["count"]
       34 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       36 MOVE                             R11 R2
       37 GETIMPORT                        R10 K10 [table.insert]
       39 CALL                             R10 2 0
       40 FORGLOOP                         R5 2 ; [-23]
       42 NEWTABLE                         R5 0 0
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K11 ["useState"]
       47 LOADB                            R7 0
       48 CALL                             R6 1 2
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K11 ["useState"]
       52 GETIMPORT                        R9 K14 [UDim2.fromOffset]
       54 LOADN                            R10 0
       55 LOADN                            R11 0
       56 CALL                             R9 2 -1
       57 CALL                             R8 -1 2
       58 GETUPVAL                         R10 3
       59 GETTABLEKS                       R10 R10 K11 ["useState"]
       61 LOADB                            R11 0
       62 CALL                             R10 1 2
       63 LOADN                            R14 1
       64 LENGTH                           R12 R2
       65 LOADN                            R13 1
       66 FORNPREP                         R12
       67 GETTABLE                         R15 R2 R14
       68 GETUPVAL                         R16 3
       69 GETTABLEKS                       R16 R16 K15 ["useRef"]
       71 LOADNIL                          R17
       72 CALL                             R16 1 1
       73 GETUPVAL                         R17 3
       74 GETTABLEKS                       R17 R17 K16 ["useEffect"]
       76 NEWCLOSURE                       R18 P0
       77 CAPTURE                          VAL R16
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R15
       82 NEWTABLE                         R19 0 1
       84 GETTABLEKS                       R20 R16 K17 ["current"]
       86 SETLIST                          R19 R20 1 [1]
       88 CALL                             R17 2 0
       89 MOVE                             R18 R5
       90 GETUPVAL                         R19 3
       91 GETTABLEKS                       R19 R19 K18 ["createElement"]
       93 GETUPVAL                         R20 4
       94 GETTABLEKS                       R20 R20 K19 ["View"]
       96 DUPTABLE                         R21 K25 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-small stroke-thin stroke-muted", ["LayoutOrder"], ["onActivated"], ["ref"]}]
       97 SETTABLEKS                       R14 R21 K22 ["LayoutOrder"]
       99 DUPCLOSURE                       R22 K26 [PROTO_4]
      100 SETTABLEKS                       R22 R21 K23 ["onActivated"]
      102 SETTABLEKS                       R16 R21 K24 ["ref"]
      104 DUPTABLE                         R22 K30 [{"iconHolder", "textPanel", "show"}]
      105 GETUPVAL                         R23 3
      106 GETTABLEKS                       R23 R23 K18 ["createElement"]
      108 GETUPVAL                         R24 4
      109 GETTABLEKS                       R24 R24 K19 ["View"]
      111 DUPTABLE                         R25 K32 [{["tag"] = "align-y-center auto-xy padding-small radius-medium bg-shift-100"}]
      112 DUPTABLE                         R26 K34 [{"iconElement"}]
      113 GETUPVAL                         R27 3
      114 GETTABLEKS                       R27 R27 K18 ["createElement"]
      116 GETUPVAL                         R28 4
      117 GETTABLEKS                       R28 R28 K35 ["Image"]
      119 DUPTABLE                         R29 K39 [{["tag"] = "align-x-center align-y-center", ["Image"], ["Size"], ["LayoutOrder"] = 1}]
      120 GETTABLEKS                       R31 R15 K3 ["assetType"]
      122 JUMPIFNOTEQKS                    R31 K35 ["Image"] ; [+3]
      124 LOADK                            R30 K40 ["rbxassetid://123998002949260"]
      125 JUMP                             ; [+1]
      126 LOADK                            R30 K41 ["rbxassetid://112965877289990"]
      127 SETTABLEKS                       R30 R29 K35 ["Image"]
      129 GETIMPORT                        R30 K14 [UDim2.fromOffset]
      131 LOADN                            R31 32
      132 LOADN                            R32 32
      133 CALL                             R30 2 1
      134 SETTABLEKS                       R30 R29 K37 ["Size"]
      136 CALL                             R27 2 1
      137 SETTABLEKS                       R27 R26 K33 ["iconElement"]
      139 CALL                             R23 3 1
      140 SETTABLEKS                       R23 R22 K27 ["iconHolder"]
      142 GETUPVAL                         R23 3
      143 GETTABLEKS                       R23 R23 K18 ["createElement"]
      145 GETUPVAL                         R24 4
      146 GETTABLEKS                       R24 R24 K19 ["View"]
      148 DUPTABLE                         R25 K44 [{["tag"] = "col align-y-top grow gap-small size-0-0 auto-y", ["LayoutOrder"] = 2}]
      149 DUPTABLE                         R26 K47 [{"MainText", "SupportText"}]
      150 GETUPVAL                         R27 3
      151 GETTABLEKS                       R27 R27 K18 ["createElement"]
      153 GETUPVAL                         R28 4
      154 GETTABLEKS                       R28 R28 K48 ["Text"]
      156 DUPTABLE                         R29 K50 [{["tag"] = "size-full-0 auto-y text-body-medium text-no-wrap text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"] = 1}]
      157 LOADK                            R31 K51 ["%*: %*"]
      158 LOADK                            R35 K52 ["AssetType"]
      159 GETTABLEKS                       R36 R15 K3 ["assetType"]
      161 NAMECALL                         R33 R1 K53 ["getText"]
      163 CALL                             R33 3 1
      164 GETTABLEKS                       R34 R15 K5 ["assetId"]
      166 NAMECALL                         R31 R31 K54 ["format"]
      168 CALL                             R31 3 1
      169 MOVE                             R30 R31
      170 SETTABLEKS                       R30 R29 K48 ["Text"]
      172 CALL                             R27 2 1
      173 SETTABLEKS                       R27 R26 K45 ["MainText"]
      175 GETUPVAL                         R27 3
      176 GETTABLEKS                       R27 R27 K18 ["createElement"]
      178 GETUPVAL                         R28 4
      179 GETTABLEKS                       R28 R28 K48 ["Text"]
      181 DUPTABLE                         R29 K56 [{["tag"] = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"] = 2}]
      182 LOADK                            R32 K57 ["Info"]
      183 GETTABLEKS                       R34 R15 K6 ["count"]
      185 LOADN                            R35 1
      186 JUMPIFNOTLT                      R35 R34 ; [+3]
      188 LOADK                            R33 K58 ["UsagePlural"]
      189 JUMP                             ; [+1]
      190 LOADK                            R33 K59 ["UsageSingle"]
      191 NEWTABLE                         R34 1 0
      193 GETTABLEKS                       R36 R15 K6 ["count"]
      195 FASTCALL1                        TOSTRING R36 ; [+2]
      196 GETIMPORT                        R35 K61 [tostring]
      198 CALL                             R35 1 1
      199 SETTABLEKS                       R35 R34 K6 ["count"]
      201 NAMECALL                         R30 R1 K53 ["getText"]
      203 CALL                             R30 4 1
      204 SETTABLEKS                       R30 R29 K48 ["Text"]
      206 CALL                             R27 2 1
      207 SETTABLEKS                       R27 R26 K46 ["SupportText"]
      209 CALL                             R23 3 1
      210 SETTABLEKS                       R23 R22 K28 ["textPanel"]
      212 GETUPVAL                         R23 3
      213 GETTABLEKS                       R23 R23 K18 ["createElement"]
      215 GETUPVAL                         R24 4
      216 GETTABLEKS                       R24 R24 K19 ["View"]
      218 DUPTABLE                         R25 K64 [{["tag"] = "row align-y-center size-0-full auto-xy", ["LayoutOrder"] = 3}]
      219 NEWTABLE                         R26 0 0
      221 CALL                             R23 3 1
      222 SETTABLEKS                       R23 R22 K29 ["show"]
      224 CALL                             R19 3 -1
      225 FASTCALL                         TABLE_INSERT ; [+2]
      226 GETIMPORT                        R17 K10 [table.insert]
      228 CALL                             R17 -1 0
      229 FORNLOOP                         R12
      230 NEWTABLE                         R12 0 2
      232 DUPTABLE                         R13 K68 [{["id"] = "viewInExplorer", ["text"]}]
      233 LOADK                            R16 K69 ["Context"]
      234 LOADK                            R17 K70 ["Explorer"]
      235 NAMECALL                         R14 R1 K53 ["getText"]
      237 CALL                             R14 3 1
      238 SETTABLEKS                       R14 R13 K67 ["text"]
      240 DUPTABLE                         R14 K72 [{["id"] = "openInBrowser", ["text"]}]
      241 LOADK                            R17 K69 ["Context"]
      242 LOADK                            R18 K73 ["Browser"]
      243 NAMECALL                         R15 R1 K53 ["getText"]
      245 CALL                             R15 3 1
      246 SETTABLEKS                       R15 R14 K67 ["text"]
      248 SETLIST                          R12 R13 2 [1]
      250 GETUPVAL                         R13 3
      251 GETTABLEKS                       R13 R13 K18 ["createElement"]
      253 GETUPVAL                         R14 4
      254 GETTABLEKS                       R14 R14 K19 ["View"]
      256 DUPTABLE                         R15 K75 [{["tag"] = "size-full"}]
      257 NEWTABLE                         R16 1 1
      259 GETUPVAL                         R18 3
      260 GETTABLEKS                       R18 R18 K18 ["createElement"]
      262 GETUPVAL                         R19 4
      263 GETTABLEKS                       R19 R19 K19 ["View"]
      265 DUPTABLE                         R20 K77 [{"Size", "Position"}]
      266 GETIMPORT                        R21 K14 [UDim2.fromOffset]
      268 LOADN                            R22 0
      269 LOADN                            R23 0
      270 CALL                             R21 2 1
      271 SETTABLEKS                       R21 R20 K37 ["Size"]
      273 SETTABLEKS                       R8 R20 K76 ["Position"]
      275 DUPTABLE                         R21 K79 [{"contextMenu"}]
      276 GETUPVAL                         R22 3
      277 GETTABLEKS                       R22 R22 K18 ["createElement"]
      279 GETUPVAL                         R23 4
      280 GETTABLEKS                       R23 R23 K80 ["Menu"]
      282 DUPTABLE                         R24 K87 [{["isOpen"], ["items"], ["size"], ["side"], ["align"], ["LayoutOrder"] = 3, ["onPressedOutside"], ["onActivated"]}]
      283 SETTABLEKS                       R6 R24 K81 ["isOpen"]
      285 SETTABLEKS                       R12 R24 K82 ["items"]
      287 GETUPVAL                         R25 4
      288 GETTABLEKS                       R25 R25 K88 ["Enums"]
      290 GETTABLEKS                       R25 R25 K89 ["InputSize"]
      292 GETTABLEKS                       R25 R25 K90 ["Medium"]
      294 SETTABLEKS                       R25 R24 K83 ["size"]
      296 GETUPVAL                         R25 4
      297 GETTABLEKS                       R25 R25 K88 ["Enums"]
      299 GETTABLEKS                       R25 R25 K91 ["PopoverSide"]
      301 GETTABLEKS                       R25 R25 K92 ["Right"]
      303 SETTABLEKS                       R25 R24 K84 ["side"]
      305 GETUPVAL                         R25 4
      306 GETTABLEKS                       R25 R25 K88 ["Enums"]
      308 GETTABLEKS                       R25 R25 K93 ["PopoverAlign"]
      310 GETTABLEKS                       R25 R25 K94 ["Center"]
      312 SETTABLEKS                       R25 R24 K85 ["align"]
      314 NEWCLOSURE                       R25 P2
      315 CAPTURE                          VAL R7
      316 SETTABLEKS                       R25 R24 K86 ["onPressedOutside"]
      318 NEWCLOSURE                       R25 P3
      319 CAPTURE                          VAL R3
      320 CAPTURE                          VAL R10
      321 CAPTURE                          VAL R7
      322 SETTABLEKS                       R25 R24 K23 ["onActivated"]
      324 NEWTABLE                         R25 0 0
      326 CALL                             R22 3 1
      327 SETTABLEKS                       R22 R21 K78 ["contextMenu"]
      329 CALL                             R18 3 1
      330 SETTABLEKS                       R18 R16 K95 ["contextPosition"]
      332 GETUPVAL                         R17 3
      333 GETTABLEKS                       R17 R17 K18 ["createElement"]
      335 GETUPVAL                         R18 4
      336 GETTABLEKS                       R18 R18 K19 ["View"]
      338 DUPTABLE                         R19 K97 [{["tag"] = "col gap-medium size-full padding-medium bg-surface-300"}]
      339 DUPTABLE                         R20 K101 [{"Header", "CenterPanel", "footer"}]
      340 GETUPVAL                         R21 3
      341 GETTABLEKS                       R21 R21 K18 ["createElement"]
      343 GETUPVAL                         R22 4
      344 GETTABLEKS                       R22 R22 K19 ["View"]
      346 DUPTABLE                         R23 K103 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-small"}]
      347 DUPTABLE                         R24 K104 [{"iconElement", "textPanel", "show"}]
      348 GETUPVAL                         R25 3
      349 GETTABLEKS                       R25 R25 K18 ["createElement"]
      351 GETUPVAL                         R26 4
      352 GETTABLEKS                       R26 R26 K35 ["Image"]
      354 DUPTABLE                         R27 K106 [{["Image"] = "rbxassetid://113290604845428", ["Size"], ["LayoutOrder"] = 1}]
      355 GETIMPORT                        R28 K14 [UDim2.fromOffset]
      357 LOADN                            R29 36
      358 LOADN                            R30 37
      359 CALL                             R28 2 1
      360 SETTABLEKS                       R28 R27 K37 ["Size"]
      362 CALL                             R25 2 1
      363 SETTABLEKS                       R25 R24 K33 ["iconElement"]
      365 GETUPVAL                         R25 3
      366 GETTABLEKS                       R25 R25 K18 ["createElement"]
      368 GETUPVAL                         R26 4
      369 GETTABLEKS                       R26 R26 K19 ["View"]
      371 DUPTABLE                         R27 K44 [{["tag"] = "col align-y-top grow gap-small size-0-0 auto-y", ["LayoutOrder"] = 2}]
      372 DUPTABLE                         R28 K47 [{"MainText", "SupportText"}]
      373 GETUPVAL                         R29 3
      374 GETTABLEKS                       R29 R29 K18 ["createElement"]
      376 GETUPVAL                         R30 4
      377 GETTABLEKS                       R30 R30 K48 ["Text"]
      379 DUPTABLE                         R31 K108 [{["tag"] = "size-full-0 auto-y text-title-medium text-no-wrap text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"] = 1}]
      380 LOADK                            R34 K109 ["Title"]
      381 LOADK                            R35 K110 ["Review"]
      382 NAMECALL                         R32 R1 K53 ["getText"]
      384 CALL                             R32 3 1
      385 SETTABLEKS                       R32 R31 K48 ["Text"]
      387 CALL                             R29 2 1
      388 SETTABLEKS                       R29 R28 K45 ["MainText"]
      390 GETUPVAL                         R29 3
      391 GETTABLEKS                       R29 R29 K18 ["createElement"]
      393 GETUPVAL                         R30 4
      394 GETTABLEKS                       R30 R30 K48 ["Text"]
      396 DUPTABLE                         R31 K112 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"] = 2}]
      397 LOADK                            R34 K57 ["Info"]
      398 LOADK                            R35 K110 ["Review"]
      399 NAMECALL                         R32 R1 K53 ["getText"]
      401 CALL                             R32 3 1
      402 SETTABLEKS                       R32 R31 K48 ["Text"]
      404 CALL                             R29 2 1
      405 SETTABLEKS                       R29 R28 K46 ["SupportText"]
      407 CALL                             R25 3 1
      408 SETTABLEKS                       R25 R24 K28 ["textPanel"]
      410 GETUPVAL                         R25 3
      411 GETTABLEKS                       R25 R25 K18 ["createElement"]
      413 GETUPVAL                         R26 4
      414 GETTABLEKS                       R26 R26 K19 ["View"]
      416 DUPTABLE                         R27 K64 [{["tag"] = "row align-y-center size-0-full auto-xy", ["LayoutOrder"] = 3}]
      417 NEWTABLE                         R28 0 0
      419 CALL                             R25 3 1
      420 SETTABLEKS                       R25 R24 K29 ["show"]
      422 CALL                             R21 3 1
      423 SETTABLEKS                       R21 R20 K98 ["Header"]
      425 GETUPVAL                         R21 3
      426 GETTABLEKS                       R21 R21 K18 ["createElement"]
      428 GETUPVAL                         R22 4
      429 GETTABLEKS                       R22 R22 K19 ["View"]
      431 DUPTABLE                         R23 K114 [{["tag"] = "row align-y-top grow gap-small size-full-0 padding-small", ["LayoutOrder"] = 2}]
      432 DUPTABLE                         R24 K117 [{"spacer", "issues"}]
      433 GETUPVAL                         R25 3
      434 GETTABLEKS                       R25 R25 K18 ["createElement"]
      436 GETUPVAL                         R26 4
      437 GETTABLEKS                       R26 R26 K19 ["View"]
      439 DUPTABLE                         R27 K118 [{["Size"], ["LayoutOrder"] = 1}]
      440 GETIMPORT                        R28 K14 [UDim2.fromOffset]
      442 LOADN                            R29 36
      443 LOADN                            R30 36
      444 CALL                             R28 2 1
      445 SETTABLEKS                       R28 R27 K37 ["Size"]
      447 CALL                             R25 2 1
      448 SETTABLEKS                       R25 R24 K115 ["spacer"]
      450 GETUPVAL                         R25 3
      451 GETTABLEKS                       R25 R25 K18 ["createElement"]
      453 GETUPVAL                         R26 4
      454 GETTABLEKS                       R26 R26 K19 ["View"]
      456 DUPTABLE                         R27 K120 [{["tag"] = "col grow size-0-full stroke-standard stroke-muted", ["LayoutOrder"] = 2}]
      457 DUPTABLE                         R28 K123 [{"titleBox", "scroll"}]
      458 GETUPVAL                         R29 3
      459 GETTABLEKS                       R29 R29 K18 ["createElement"]
      461 GETUPVAL                         R30 4
      462 GETTABLEKS                       R30 R30 K19 ["View"]
      464 DUPTABLE                         R31 K125 [{["tag"] = "size-full-0 auto-y stroke-standard stroke-muted", ["LayoutOrder"] = 1}]
      465 DUPTABLE                         R32 K127 [{"title"}]
      466 GETUPVAL                         R33 3
      467 GETTABLEKS                       R33 R33 K18 ["createElement"]
      469 GETUPVAL                         R34 4
      470 GETTABLEKS                       R34 R34 K48 ["Text"]
      472 DUPTABLE                         R35 K129 [{["Text"], ["tag"] = "size-full-0 auto-y padding-xsmall text-title-medium text-align-x-left"}]
      473 LOADK                            R38 K57 ["Info"]
      474 LOADK                            R39 K130 ["Permission"]
      475 NAMECALL                         R36 R1 K53 ["getText"]
      477 CALL                             R36 3 1
      478 SETTABLEKS                       R36 R35 K48 ["Text"]
      480 CALL                             R33 2 1
      481 SETTABLEKS                       R33 R32 K126 ["title"]
      483 CALL                             R29 3 1
      484 SETTABLEKS                       R29 R28 K121 ["titleBox"]
      486 GETUPVAL                         R29 3
      487 GETTABLEKS                       R29 R29 K18 ["createElement"]
      489 GETUPVAL                         R30 4
      490 GETTABLEKS                       R30 R30 K131 ["ScrollView"]
      492 DUPTABLE                         R31 K133 [{["tag"] = "grow size-full-0", ["LayoutOrder"] = 2, ["scroll"]}]
      493 DUPTABLE                         R32 K138 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      494 GETUPVAL                         R33 4
      495 GETTABLEKS                       R33 R33 K88 ["Enums"]
      497 GETTABLEKS                       R33 R33 K139 ["ScrollBarVisibility"]
      499 GETTABLEKS                       R33 R33 K140 ["Always"]
      501 SETTABLEKS                       R33 R32 K134 ["scrollBarVisibility"]
      503 GETIMPORT                        R33 K143 [Enum.ScrollingDirection.Y]
      505 SETTABLEKS                       R33 R32 K135 ["ScrollingDirection"]
      507 GETIMPORT                        R33 K145 [Enum.AutomaticSize.Y]
      509 SETTABLEKS                       R33 R32 K136 ["AutomaticCanvasSize"]
      511 GETIMPORT                        R33 K147 [UDim2.fromScale]
      513 LOADN                            R34 0
      514 LOADN                            R35 0
      515 CALL                             R33 2 1
      516 SETTABLEKS                       R33 R32 K137 ["CanvasSize"]
      518 SETTABLEKS                       R32 R31 K122 ["scroll"]
      520 DUPTABLE                         R32 K149 [{"innerView"}]
      521 GETUPVAL                         R33 3
      522 GETTABLEKS                       R33 R33 K18 ["createElement"]
      524 GETUPVAL                         R34 4
      525 GETTABLEKS                       R34 R34 K19 ["View"]
      527 DUPTABLE                         R35 K151 [{["tag"] = "col size-full-0 auto-y"}]
      528 MOVE                             R36 R5
      529 CALL                             R33 3 1
      530 SETTABLEKS                       R33 R32 K148 ["innerView"]
      532 CALL                             R29 3 1
      533 SETTABLEKS                       R29 R28 K122 ["scroll"]
      535 CALL                             R25 3 1
      536 SETTABLEKS                       R25 R24 K116 ["issues"]
      538 CALL                             R21 3 1
      539 SETTABLEKS                       R21 R20 K99 ["CenterPanel"]
      541 GETUPVAL                         R21 3
      542 GETTABLEKS                       R21 R21 K18 ["createElement"]
      544 GETUPVAL                         R22 4
      545 GETTABLEKS                       R22 R22 K19 ["View"]
      547 DUPTABLE                         R23 K154 [{["tag"] = "row align-x-right gap-small size-full-1200 padding-small bg-surface-300", ["LayoutOrder"] = 5}]
      548 DUPTABLE                         R24 K158 [{"spacer", "Link", "Back", "Export"}]
      549 GETUPVAL                         R25 3
      550 GETTABLEKS                       R25 R25 K18 ["createElement"]
      552 GETUPVAL                         R26 4
      553 GETTABLEKS                       R26 R26 K19 ["View"]
      555 DUPTABLE                         R27 K118 [{["Size"], ["LayoutOrder"] = 1}]
      556 GETIMPORT                        R28 K14 [UDim2.fromOffset]
      558 LOADN                            R29 36
      559 LOADN                            R30 1
      560 CALL                             R28 2 1
      561 SETTABLEKS                       R28 R27 K37 ["Size"]
      563 CALL                             R25 2 1
      564 SETTABLEKS                       R25 R24 K115 ["spacer"]
      566 GETUPVAL                         R25 3
      567 GETTABLEKS                       R25 R25 K18 ["createElement"]
      569 GETUPVAL                         R26 4
      570 GETTABLEKS                       R26 R26 K19 ["View"]
      572 DUPTABLE                         R27 K160 [{["tag"] = "col align-y-center grow gap-small size-0-full auto-x", ["LayoutOrder"] = 2}]
      573 DUPTABLE                         R28 K162 [{"LinkText"}]
      574 GETUPVAL                         R29 3
      575 GETTABLEKS                       R29 R29 K18 ["createElement"]
      577 GETUPVAL                         R30 4
      578 GETTABLEKS                       R30 R30 K48 ["Text"]
      580 DUPTABLE                         R31 K164 [{["tag"] = "auto-xy text-label-small text-align-x-left text-align-y-center text-truncate-end radius-small content-link", ["Text"], ["onActivated"], ["LayoutOrder"] = 1}]
      581 LOADK                            R34 K57 ["Info"]
      582 LOADK                            R35 K165 ["Learn"]
      583 NAMECALL                         R32 R1 K53 ["getText"]
      585 CALL                             R32 3 1
      586 SETTABLEKS                       R32 R31 K48 ["Text"]
      588 NEWCLOSURE                       R32 P4
      589 CAPTURE                          VAL R3
      590 SETTABLEKS                       R32 R31 K23 ["onActivated"]
      592 CALL                             R29 2 1
      593 SETTABLEKS                       R29 R28 K161 ["LinkText"]
      595 CALL                             R25 3 1
      596 SETTABLEKS                       R25 R24 K155 ["Link"]
      598 GETUPVAL                         R25 3
      599 GETTABLEKS                       R25 R25 K18 ["createElement"]
      601 GETUPVAL                         R26 4
      602 GETTABLEKS                       R26 R26 K166 ["Button"]
      604 DUPTABLE                         R27 K170 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 3}]
      605 LOADK                            R30 K171 ["Buttons"]
      606 LOADK                            R31 K156 ["Back"]
      607 NAMECALL                         R28 R1 K53 ["getText"]
      609 CALL                             R28 3 1
      610 SETTABLEKS                       R28 R27 K67 ["text"]
      612 GETUPVAL                         R28 4
      613 GETTABLEKS                       R28 R28 K88 ["Enums"]
      615 GETTABLEKS                       R28 R28 K172 ["ButtonVariant"]
      617 GETTABLEKS                       R28 R28 K173 ["Standard"]
      619 SETTABLEKS                       R28 R27 K167 ["variant"]
      621 NEWCLOSURE                       R28 P5
      622 CAPTURE                          VAL R3
      623 SETTABLEKS                       R28 R27 K23 ["onActivated"]
      625 GETUPVAL                         R28 4
      626 GETTABLEKS                       R28 R28 K88 ["Enums"]
      628 GETTABLEKS                       R28 R28 K89 ["InputSize"]
      630 GETTABLEKS                       R28 R28 K174 ["Small"]
      632 SETTABLEKS                       R28 R27 K83 ["size"]
      634 CALL                             R25 2 1
      635 SETTABLEKS                       R25 R24 K156 ["Back"]
      637 GETUPVAL                         R25 3
      638 GETTABLEKS                       R25 R25 K18 ["createElement"]
      640 GETUPVAL                         R26 4
      641 GETTABLEKS                       R26 R26 K166 ["Button"]
      643 DUPTABLE                         R27 K176 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 4}]
      644 LOADK                            R30 K171 ["Buttons"]
      645 LOADK                            R31 K177 ["ExportRemaining"]
      646 NAMECALL                         R28 R1 K53 ["getText"]
      648 CALL                             R28 3 1
      649 SETTABLEKS                       R28 R27 K67 ["text"]
      651 GETUPVAL                         R28 4
      652 GETTABLEKS                       R28 R28 K88 ["Enums"]
      654 GETTABLEKS                       R28 R28 K172 ["ButtonVariant"]
      656 GETTABLEKS                       R28 R28 K178 ["Emphasis"]
      658 SETTABLEKS                       R28 R27 K167 ["variant"]
      660 NEWCLOSURE                       R28 P6
      661 CAPTURE                          VAL R3
      662 SETTABLEKS                       R28 R27 K23 ["onActivated"]
      664 GETUPVAL                         R28 4
      665 GETTABLEKS                       R28 R28 K88 ["Enums"]
      667 GETTABLEKS                       R28 R28 K89 ["InputSize"]
      669 GETTABLEKS                       R28 R28 K174 ["Small"]
      671 SETTABLEKS                       R28 R27 K83 ["size"]
      673 CALL                             R25 2 1
      674 SETTABLEKS                       R25 R24 K157 ["Export"]
      676 CALL                             R21 3 1
      677 SETTABLEKS                       R21 R20 K100 ["footer"]
      679 CALL                             R17 3 -1
      680 SETLIST                          R16 R17 -1 [1]
      682 CALL                             R13 3 -1
      683 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["ExportController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K16 ["usePermissionFailures"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K17 [PROTO_10]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 RETURN                           R8 1
