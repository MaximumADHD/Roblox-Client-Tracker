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
       96 DUPTABLE                         R21 K24 [{"tag", "LayoutOrder", "onActivated", "ref"}]
       97 LOADK                            R22 K25 ["size-full-0 auto-y padding-small row align-y-center gap-small stroke-thin stroke-muted"]
       98 SETTABLEKS                       R22 R21 K20 ["tag"]
      100 SETTABLEKS                       R14 R21 K21 ["LayoutOrder"]
      102 DUPCLOSURE                       R22 K26 [PROTO_4]
      103 SETTABLEKS                       R22 R21 K22 ["onActivated"]
      105 SETTABLEKS                       R16 R21 K23 ["ref"]
      107 DUPTABLE                         R22 K30 [{"iconHolder", "textPanel", "show"}]
      108 GETUPVAL                         R23 3
      109 GETTABLEKS                       R23 R23 K18 ["createElement"]
      111 GETUPVAL                         R24 4
      112 GETTABLEKS                       R24 R24 K19 ["View"]
      114 DUPTABLE                         R25 K31 [{"tag"}]
      115 LOADK                            R26 K32 ["bg-shift-100 radius-medium align-y-center auto-xy padding-small"]
      116 SETTABLEKS                       R26 R25 K20 ["tag"]
      118 DUPTABLE                         R26 K34 [{"iconElement"}]
      119 GETUPVAL                         R27 3
      120 GETTABLEKS                       R27 R27 K18 ["createElement"]
      122 GETUPVAL                         R28 4
      123 GETTABLEKS                       R28 R28 K35 ["Image"]
      125 DUPTABLE                         R29 K37 [{"tag", "Image", "Size", "LayoutOrder"}]
      126 LOADK                            R30 K38 ["align-y-center align-x-center"]
      127 SETTABLEKS                       R30 R29 K20 ["tag"]
      129 GETTABLEKS                       R31 R15 K3 ["assetType"]
      131 JUMPIFNOTEQKS                    R31 K35 ["Image"] ; [+3]
      133 LOADK                            R30 K39 ["rbxassetid://123998002949260"]
      134 JUMP                             ; [+1]
      135 LOADK                            R30 K40 ["rbxassetid://112965877289990"]
      136 SETTABLEKS                       R30 R29 K35 ["Image"]
      138 GETIMPORT                        R30 K14 [UDim2.fromOffset]
      140 LOADN                            R31 32
      141 LOADN                            R32 32
      142 CALL                             R30 2 1
      143 SETTABLEKS                       R30 R29 K36 ["Size"]
      145 LOADN                            R30 1
      146 SETTABLEKS                       R30 R29 K21 ["LayoutOrder"]
      148 CALL                             R27 2 1
      149 SETTABLEKS                       R27 R26 K33 ["iconElement"]
      151 CALL                             R23 3 1
      152 SETTABLEKS                       R23 R22 K27 ["iconHolder"]
      154 GETUPVAL                         R23 3
      155 GETTABLEKS                       R23 R23 K18 ["createElement"]
      157 GETUPVAL                         R24 4
      158 GETTABLEKS                       R24 R24 K19 ["View"]
      160 DUPTABLE                         R25 K41 [{"tag", "LayoutOrder"}]
      161 LOADK                            R26 K42 ["size-0-0 auto-y col align-y-top gap-small grow"]
      162 SETTABLEKS                       R26 R25 K20 ["tag"]
      164 LOADN                            R26 2
      165 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      167 DUPTABLE                         R26 K45 [{"MainText", "SupportText"}]
      168 GETUPVAL                         R27 3
      169 GETTABLEKS                       R27 R27 K18 ["createElement"]
      171 GETUPVAL                         R28 4
      172 GETTABLEKS                       R28 R28 K46 ["Text"]
      174 DUPTABLE                         R29 K47 [{"tag", "Text", "LayoutOrder"}]
      175 LOADK                            R30 K48 ["text-align-x-left text-no-wrap text-truncate-end text-body-medium size-full-0 auto-y"]
      176 SETTABLEKS                       R30 R29 K20 ["tag"]
      178 LOADK                            R31 K49 ["%*: %*"]
      179 LOADK                            R35 K50 ["AssetType"]
      180 GETTABLEKS                       R36 R15 K3 ["assetType"]
      182 NAMECALL                         R33 R1 K51 ["getText"]
      184 CALL                             R33 3 1
      185 GETTABLEKS                       R34 R15 K5 ["assetId"]
      187 NAMECALL                         R31 R31 K52 ["format"]
      189 CALL                             R31 3 1
      190 MOVE                             R30 R31
      191 SETTABLEKS                       R30 R29 K46 ["Text"]
      193 LOADN                            R30 1
      194 SETTABLEKS                       R30 R29 K21 ["LayoutOrder"]
      196 CALL                             R27 2 1
      197 SETTABLEKS                       R27 R26 K43 ["MainText"]
      199 GETUPVAL                         R27 3
      200 GETTABLEKS                       R27 R27 K18 ["createElement"]
      202 GETUPVAL                         R28 4
      203 GETTABLEKS                       R28 R28 K46 ["Text"]
      205 DUPTABLE                         R29 K47 [{"tag", "Text", "LayoutOrder"}]
      206 LOADK                            R30 K53 ["text-align-x-left text-wrap text-caption-small size-full-0 auto-y"]
      207 SETTABLEKS                       R30 R29 K20 ["tag"]
      209 LOADK                            R32 K54 ["Info"]
      210 GETTABLEKS                       R34 R15 K6 ["count"]
      212 LOADN                            R35 1
      213 JUMPIFNOTLT                      R35 R34 ; [+3]
      215 LOADK                            R33 K55 ["UsagePlural"]
      216 JUMP                             ; [+1]
      217 LOADK                            R33 K56 ["UsageSingle"]
      218 NEWTABLE                         R34 1 0
      220 GETTABLEKS                       R36 R15 K6 ["count"]
      222 FASTCALL1                        TOSTRING R36 ; [+2]
      223 GETIMPORT                        R35 K58 [tostring]
      225 CALL                             R35 1 1
      226 SETTABLEKS                       R35 R34 K6 ["count"]
      228 NAMECALL                         R30 R1 K51 ["getText"]
      230 CALL                             R30 4 1
      231 SETTABLEKS                       R30 R29 K46 ["Text"]
      233 LOADN                            R30 2
      234 SETTABLEKS                       R30 R29 K21 ["LayoutOrder"]
      236 CALL                             R27 2 1
      237 SETTABLEKS                       R27 R26 K44 ["SupportText"]
      239 CALL                             R23 3 1
      240 SETTABLEKS                       R23 R22 K28 ["textPanel"]
      242 GETUPVAL                         R23 3
      243 GETTABLEKS                       R23 R23 K18 ["createElement"]
      245 GETUPVAL                         R24 4
      246 GETTABLEKS                       R24 R24 K19 ["View"]
      248 DUPTABLE                         R25 K41 [{"tag", "LayoutOrder"}]
      249 LOADK                            R26 K59 ["size-0-full auto-xy row align-y-center"]
      250 SETTABLEKS                       R26 R25 K20 ["tag"]
      252 LOADN                            R26 3
      253 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      255 NEWTABLE                         R26 0 0
      257 CALL                             R23 3 1
      258 SETTABLEKS                       R23 R22 K29 ["show"]
      260 CALL                             R19 3 -1
      261 FASTCALL                         TABLE_INSERT ; [+2]
      262 GETIMPORT                        R17 K10 [table.insert]
      264 CALL                             R17 -1 0
      265 FORNLOOP                         R12
      266 NEWTABLE                         R12 0 2
      268 DUPTABLE                         R13 K62 [{"id", "text"}]
      269 LOADK                            R14 K63 ["viewInExplorer"]
      270 SETTABLEKS                       R14 R13 K60 ["id"]
      272 LOADK                            R16 K64 ["Context"]
      273 LOADK                            R17 K65 ["Explorer"]
      274 NAMECALL                         R14 R1 K51 ["getText"]
      276 CALL                             R14 3 1
      277 SETTABLEKS                       R14 R13 K61 ["text"]
      279 DUPTABLE                         R14 K62 [{"id", "text"}]
      280 LOADK                            R15 K66 ["openInBrowser"]
      281 SETTABLEKS                       R15 R14 K60 ["id"]
      283 LOADK                            R17 K64 ["Context"]
      284 LOADK                            R18 K67 ["Browser"]
      285 NAMECALL                         R15 R1 K51 ["getText"]
      287 CALL                             R15 3 1
      288 SETTABLEKS                       R15 R14 K61 ["text"]
      290 SETLIST                          R12 R13 2 [1]
      292 GETUPVAL                         R13 3
      293 GETTABLEKS                       R13 R13 K18 ["createElement"]
      295 GETUPVAL                         R14 4
      296 GETTABLEKS                       R14 R14 K19 ["View"]
      298 DUPTABLE                         R15 K31 [{"tag"}]
      299 LOADK                            R16 K68 ["size-full"]
      300 SETTABLEKS                       R16 R15 K20 ["tag"]
      302 NEWTABLE                         R16 1 1
      304 GETUPVAL                         R18 3
      305 GETTABLEKS                       R18 R18 K18 ["createElement"]
      307 GETUPVAL                         R19 4
      308 GETTABLEKS                       R19 R19 K19 ["View"]
      310 DUPTABLE                         R20 K70 [{"Size", "Position"}]
      311 GETIMPORT                        R21 K14 [UDim2.fromOffset]
      313 LOADN                            R22 0
      314 LOADN                            R23 0
      315 CALL                             R21 2 1
      316 SETTABLEKS                       R21 R20 K36 ["Size"]
      318 SETTABLEKS                       R8 R20 K69 ["Position"]
      320 DUPTABLE                         R21 K72 [{"contextMenu"}]
      321 GETUPVAL                         R22 3
      322 GETTABLEKS                       R22 R22 K18 ["createElement"]
      324 GETUPVAL                         R23 4
      325 GETTABLEKS                       R23 R23 K73 ["Menu"]
      327 DUPTABLE                         R24 K80 [{"isOpen", "items", "size", "side", "align", "LayoutOrder", "onPressedOutside", "onActivated"}]
      328 SETTABLEKS                       R6 R24 K74 ["isOpen"]
      330 SETTABLEKS                       R12 R24 K75 ["items"]
      332 GETUPVAL                         R25 4
      333 GETTABLEKS                       R25 R25 K81 ["Enums"]
      335 GETTABLEKS                       R25 R25 K82 ["InputSize"]
      337 GETTABLEKS                       R25 R25 K83 ["Medium"]
      339 SETTABLEKS                       R25 R24 K76 ["size"]
      341 GETUPVAL                         R25 4
      342 GETTABLEKS                       R25 R25 K81 ["Enums"]
      344 GETTABLEKS                       R25 R25 K84 ["PopoverSide"]
      346 GETTABLEKS                       R25 R25 K85 ["Right"]
      348 SETTABLEKS                       R25 R24 K77 ["side"]
      350 GETUPVAL                         R25 4
      351 GETTABLEKS                       R25 R25 K81 ["Enums"]
      353 GETTABLEKS                       R25 R25 K86 ["PopoverAlign"]
      355 GETTABLEKS                       R25 R25 K87 ["Center"]
      357 SETTABLEKS                       R25 R24 K78 ["align"]
      359 LOADN                            R25 3
      360 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      362 NEWCLOSURE                       R25 P2
      363 CAPTURE                          VAL R7
      364 SETTABLEKS                       R25 R24 K79 ["onPressedOutside"]
      366 NEWCLOSURE                       R25 P3
      367 CAPTURE                          VAL R3
      368 CAPTURE                          VAL R10
      369 CAPTURE                          VAL R7
      370 SETTABLEKS                       R25 R24 K22 ["onActivated"]
      372 NEWTABLE                         R25 0 0
      374 CALL                             R22 3 1
      375 SETTABLEKS                       R22 R21 K71 ["contextMenu"]
      377 CALL                             R18 3 1
      378 SETTABLEKS                       R18 R16 K88 ["contextPosition"]
      380 GETUPVAL                         R17 3
      381 GETTABLEKS                       R17 R17 K18 ["createElement"]
      383 GETUPVAL                         R18 4
      384 GETTABLEKS                       R18 R18 K19 ["View"]
      386 DUPTABLE                         R19 K31 [{"tag"}]
      387 LOADK                            R20 K89 ["size-full bg-surface-300 col padding-medium gap-medium"]
      388 SETTABLEKS                       R20 R19 K20 ["tag"]
      390 DUPTABLE                         R20 K93 [{"Header", "CenterPanel", "footer"}]
      391 GETUPVAL                         R21 3
      392 GETTABLEKS                       R21 R21 K18 ["createElement"]
      394 GETUPVAL                         R22 4
      395 GETTABLEKS                       R22 R22 K19 ["View"]
      397 DUPTABLE                         R23 K31 [{"tag"}]
      398 LOADK                            R24 K94 ["size-full-0 auto-y padding-small row align-y-top gap-small"]
      399 SETTABLEKS                       R24 R23 K20 ["tag"]
      401 DUPTABLE                         R24 K95 [{"iconElement", "textPanel", "show"}]
      402 GETUPVAL                         R25 3
      403 GETTABLEKS                       R25 R25 K18 ["createElement"]
      405 GETUPVAL                         R26 4
      406 GETTABLEKS                       R26 R26 K35 ["Image"]
      408 DUPTABLE                         R27 K96 [{"Image", "Size", "LayoutOrder"}]
      409 LOADK                            R28 K97 ["rbxassetid://113290604845428"]
      410 SETTABLEKS                       R28 R27 K35 ["Image"]
      412 GETIMPORT                        R28 K14 [UDim2.fromOffset]
      414 LOADN                            R29 36
      415 LOADN                            R30 37
      416 CALL                             R28 2 1
      417 SETTABLEKS                       R28 R27 K36 ["Size"]
      419 LOADN                            R28 1
      420 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      422 CALL                             R25 2 1
      423 SETTABLEKS                       R25 R24 K33 ["iconElement"]
      425 GETUPVAL                         R25 3
      426 GETTABLEKS                       R25 R25 K18 ["createElement"]
      428 GETUPVAL                         R26 4
      429 GETTABLEKS                       R26 R26 K19 ["View"]
      431 DUPTABLE                         R27 K41 [{"tag", "LayoutOrder"}]
      432 LOADK                            R28 K42 ["size-0-0 auto-y col align-y-top gap-small grow"]
      433 SETTABLEKS                       R28 R27 K20 ["tag"]
      435 LOADN                            R28 2
      436 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      438 DUPTABLE                         R28 K45 [{"MainText", "SupportText"}]
      439 GETUPVAL                         R29 3
      440 GETTABLEKS                       R29 R29 K18 ["createElement"]
      442 GETUPVAL                         R30 4
      443 GETTABLEKS                       R30 R30 K46 ["Text"]
      445 DUPTABLE                         R31 K47 [{"tag", "Text", "LayoutOrder"}]
      446 LOADK                            R32 K98 ["text-align-x-left text-no-wrap text-truncate-end text-title-medium size-full-0 auto-y"]
      447 SETTABLEKS                       R32 R31 K20 ["tag"]
      449 LOADK                            R34 K99 ["Title"]
      450 LOADK                            R35 K100 ["Review"]
      451 NAMECALL                         R32 R1 K51 ["getText"]
      453 CALL                             R32 3 1
      454 SETTABLEKS                       R32 R31 K46 ["Text"]
      456 LOADN                            R32 1
      457 SETTABLEKS                       R32 R31 K21 ["LayoutOrder"]
      459 CALL                             R29 2 1
      460 SETTABLEKS                       R29 R28 K43 ["MainText"]
      462 GETUPVAL                         R29 3
      463 GETTABLEKS                       R29 R29 K18 ["createElement"]
      465 GETUPVAL                         R30 4
      466 GETTABLEKS                       R30 R30 K46 ["Text"]
      468 DUPTABLE                         R31 K47 [{"tag", "Text", "LayoutOrder"}]
      469 LOADK                            R32 K101 ["text-align-x-left text-wrap text-body-medium size-full-0 auto-y"]
      470 SETTABLEKS                       R32 R31 K20 ["tag"]
      472 LOADK                            R34 K54 ["Info"]
      473 LOADK                            R35 K100 ["Review"]
      474 NAMECALL                         R32 R1 K51 ["getText"]
      476 CALL                             R32 3 1
      477 SETTABLEKS                       R32 R31 K46 ["Text"]
      479 LOADN                            R32 2
      480 SETTABLEKS                       R32 R31 K21 ["LayoutOrder"]
      482 CALL                             R29 2 1
      483 SETTABLEKS                       R29 R28 K44 ["SupportText"]
      485 CALL                             R25 3 1
      486 SETTABLEKS                       R25 R24 K28 ["textPanel"]
      488 GETUPVAL                         R25 3
      489 GETTABLEKS                       R25 R25 K18 ["createElement"]
      491 GETUPVAL                         R26 4
      492 GETTABLEKS                       R26 R26 K19 ["View"]
      494 DUPTABLE                         R27 K41 [{"tag", "LayoutOrder"}]
      495 LOADK                            R28 K59 ["size-0-full auto-xy row align-y-center"]
      496 SETTABLEKS                       R28 R27 K20 ["tag"]
      498 LOADN                            R28 3
      499 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      501 NEWTABLE                         R28 0 0
      503 CALL                             R25 3 1
      504 SETTABLEKS                       R25 R24 K29 ["show"]
      506 CALL                             R21 3 1
      507 SETTABLEKS                       R21 R20 K90 ["Header"]
      509 GETUPVAL                         R21 3
      510 GETTABLEKS                       R21 R21 K18 ["createElement"]
      512 GETUPVAL                         R22 4
      513 GETTABLEKS                       R22 R22 K19 ["View"]
      515 DUPTABLE                         R23 K41 [{"tag", "LayoutOrder"}]
      516 LOADK                            R24 K102 ["size-full-0 grow padding-small row align-y-top gap-small"]
      517 SETTABLEKS                       R24 R23 K20 ["tag"]
      519 LOADN                            R24 2
      520 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      522 DUPTABLE                         R24 K105 [{"spacer", "issues"}]
      523 GETUPVAL                         R25 3
      524 GETTABLEKS                       R25 R25 K18 ["createElement"]
      526 GETUPVAL                         R26 4
      527 GETTABLEKS                       R26 R26 K19 ["View"]
      529 DUPTABLE                         R27 K106 [{"Size", "LayoutOrder"}]
      530 GETIMPORT                        R28 K14 [UDim2.fromOffset]
      532 LOADN                            R29 36
      533 LOADN                            R30 36
      534 CALL                             R28 2 1
      535 SETTABLEKS                       R28 R27 K36 ["Size"]
      537 LOADN                            R28 1
      538 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      540 CALL                             R25 2 1
      541 SETTABLEKS                       R25 R24 K103 ["spacer"]
      543 GETUPVAL                         R25 3
      544 GETTABLEKS                       R25 R25 K18 ["createElement"]
      546 GETUPVAL                         R26 4
      547 GETTABLEKS                       R26 R26 K19 ["View"]
      549 DUPTABLE                         R27 K41 [{"tag", "LayoutOrder"}]
      550 LOADK                            R28 K107 ["size-0-full grow stroke-standard stroke-muted col"]
      551 SETTABLEKS                       R28 R27 K20 ["tag"]
      553 LOADN                            R28 2
      554 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      556 DUPTABLE                         R28 K110 [{"titleBox", "scroll"}]
      557 GETUPVAL                         R29 3
      558 GETTABLEKS                       R29 R29 K18 ["createElement"]
      560 GETUPVAL                         R30 4
      561 GETTABLEKS                       R30 R30 K19 ["View"]
      563 DUPTABLE                         R31 K41 [{"tag", "LayoutOrder"}]
      564 LOADK                            R32 K111 ["size-full-0 auto-y stroke-standard stroke-muted"]
      565 SETTABLEKS                       R32 R31 K20 ["tag"]
      567 LOADN                            R32 1
      568 SETTABLEKS                       R32 R31 K21 ["LayoutOrder"]
      570 DUPTABLE                         R32 K113 [{"title"}]
      571 GETUPVAL                         R33 3
      572 GETTABLEKS                       R33 R33 K18 ["createElement"]
      574 GETUPVAL                         R34 4
      575 GETTABLEKS                       R34 R34 K46 ["Text"]
      577 DUPTABLE                         R35 K114 [{"Text", "tag"}]
      578 LOADK                            R38 K54 ["Info"]
      579 LOADK                            R39 K115 ["Permission"]
      580 NAMECALL                         R36 R1 K51 ["getText"]
      582 CALL                             R36 3 1
      583 SETTABLEKS                       R36 R35 K46 ["Text"]
      585 LOADK                            R36 K116 ["size-full-0 auto-y text-title-medium text-align-x-left padding-xsmall"]
      586 SETTABLEKS                       R36 R35 K20 ["tag"]
      588 CALL                             R33 2 1
      589 SETTABLEKS                       R33 R32 K112 ["title"]
      591 CALL                             R29 3 1
      592 SETTABLEKS                       R29 R28 K108 ["titleBox"]
      594 GETUPVAL                         R29 3
      595 GETTABLEKS                       R29 R29 K18 ["createElement"]
      597 GETUPVAL                         R30 4
      598 GETTABLEKS                       R30 R30 K117 ["ScrollView"]
      600 DUPTABLE                         R31 K118 [{"tag", "LayoutOrder", "scroll"}]
      601 LOADK                            R32 K119 ["size-full-0 grow"]
      602 SETTABLEKS                       R32 R31 K20 ["tag"]
      604 LOADN                            R32 2
      605 SETTABLEKS                       R32 R31 K21 ["LayoutOrder"]
      607 DUPTABLE                         R32 K124 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      608 GETUPVAL                         R33 4
      609 GETTABLEKS                       R33 R33 K81 ["Enums"]
      611 GETTABLEKS                       R33 R33 K125 ["ScrollBarVisibility"]
      613 GETTABLEKS                       R33 R33 K126 ["Always"]
      615 SETTABLEKS                       R33 R32 K120 ["scrollBarVisibility"]
      617 GETIMPORT                        R33 K129 [Enum.ScrollingDirection.Y]
      619 SETTABLEKS                       R33 R32 K121 ["ScrollingDirection"]
      621 GETIMPORT                        R33 K131 [Enum.AutomaticSize.Y]
      623 SETTABLEKS                       R33 R32 K122 ["AutomaticCanvasSize"]
      625 GETIMPORT                        R33 K133 [UDim2.fromScale]
      627 LOADN                            R34 0
      628 LOADN                            R35 0
      629 CALL                             R33 2 1
      630 SETTABLEKS                       R33 R32 K123 ["CanvasSize"]
      632 SETTABLEKS                       R32 R31 K109 ["scroll"]
      634 DUPTABLE                         R32 K135 [{"innerView"}]
      635 GETUPVAL                         R33 3
      636 GETTABLEKS                       R33 R33 K18 ["createElement"]
      638 GETUPVAL                         R34 4
      639 GETTABLEKS                       R34 R34 K19 ["View"]
      641 DUPTABLE                         R35 K31 [{"tag"}]
      642 LOADK                            R36 K136 ["size-full-0 auto-y col"]
      643 SETTABLEKS                       R36 R35 K20 ["tag"]
      645 MOVE                             R36 R5
      646 CALL                             R33 3 1
      647 SETTABLEKS                       R33 R32 K134 ["innerView"]
      649 CALL                             R29 3 1
      650 SETTABLEKS                       R29 R28 K109 ["scroll"]
      652 CALL                             R25 3 1
      653 SETTABLEKS                       R25 R24 K104 ["issues"]
      655 CALL                             R21 3 1
      656 SETTABLEKS                       R21 R20 K91 ["CenterPanel"]
      658 GETUPVAL                         R21 3
      659 GETTABLEKS                       R21 R21 K18 ["createElement"]
      661 GETUPVAL                         R22 4
      662 GETTABLEKS                       R22 R22 K19 ["View"]
      664 DUPTABLE                         R23 K41 [{"tag", "LayoutOrder"}]
      665 LOADK                            R24 K137 ["bg-surface-300 row align-x-right padding-small size-full-1200 gap-small"]
      666 SETTABLEKS                       R24 R23 K20 ["tag"]
      668 LOADN                            R24 5
      669 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      671 DUPTABLE                         R24 K141 [{"spacer", "Link", "Back", "Export"}]
      672 GETUPVAL                         R25 3
      673 GETTABLEKS                       R25 R25 K18 ["createElement"]
      675 GETUPVAL                         R26 4
      676 GETTABLEKS                       R26 R26 K19 ["View"]
      678 DUPTABLE                         R27 K106 [{"Size", "LayoutOrder"}]
      679 GETIMPORT                        R28 K14 [UDim2.fromOffset]
      681 LOADN                            R29 36
      682 LOADN                            R30 1
      683 CALL                             R28 2 1
      684 SETTABLEKS                       R28 R27 K36 ["Size"]
      686 LOADN                            R28 1
      687 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      689 CALL                             R25 2 1
      690 SETTABLEKS                       R25 R24 K103 ["spacer"]
      692 GETUPVAL                         R25 3
      693 GETTABLEKS                       R25 R25 K18 ["createElement"]
      695 GETUPVAL                         R26 4
      696 GETTABLEKS                       R26 R26 K19 ["View"]
      698 DUPTABLE                         R27 K41 [{"tag", "LayoutOrder"}]
      699 LOADK                            R28 K142 ["auto-x gap-small size-0-full col align-y-center grow"]
      700 SETTABLEKS                       R28 R27 K20 ["tag"]
      702 LOADN                            R28 2
      703 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      705 DUPTABLE                         R28 K144 [{"LinkText"}]
      706 GETUPVAL                         R29 3
      707 GETTABLEKS                       R29 R29 K18 ["createElement"]
      709 GETUPVAL                         R30 4
      710 GETTABLEKS                       R30 R30 K46 ["Text"]
      712 DUPTABLE                         R31 K145 [{"tag", "Text", "onActivated", "LayoutOrder"}]
      713 LOADK                            R32 K146 ["text-align-x-left content-link text-align-y-center text-truncate-end text-label-small auto-xy radius-small"]
      714 SETTABLEKS                       R32 R31 K20 ["tag"]
      716 LOADK                            R34 K54 ["Info"]
      717 LOADK                            R35 K147 ["Learn"]
      718 NAMECALL                         R32 R1 K51 ["getText"]
      720 CALL                             R32 3 1
      721 SETTABLEKS                       R32 R31 K46 ["Text"]
      723 NEWCLOSURE                       R32 P4
      724 CAPTURE                          VAL R3
      725 SETTABLEKS                       R32 R31 K22 ["onActivated"]
      727 LOADN                            R32 1
      728 SETTABLEKS                       R32 R31 K21 ["LayoutOrder"]
      730 CALL                             R29 2 1
      731 SETTABLEKS                       R29 R28 K143 ["LinkText"]
      733 CALL                             R25 3 1
      734 SETTABLEKS                       R25 R24 K138 ["Link"]
      736 GETUPVAL                         R25 3
      737 GETTABLEKS                       R25 R25 K18 ["createElement"]
      739 GETUPVAL                         R26 4
      740 GETTABLEKS                       R26 R26 K148 ["Button"]
      742 DUPTABLE                         R27 K151 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      743 LOADK                            R30 K152 ["Buttons"]
      744 LOADK                            R31 K139 ["Back"]
      745 NAMECALL                         R28 R1 K51 ["getText"]
      747 CALL                             R28 3 1
      748 SETTABLEKS                       R28 R27 K61 ["text"]
      750 GETUPVAL                         R28 4
      751 GETTABLEKS                       R28 R28 K81 ["Enums"]
      753 GETTABLEKS                       R28 R28 K153 ["ButtonVariant"]
      755 GETTABLEKS                       R28 R28 K154 ["Standard"]
      757 SETTABLEKS                       R28 R27 K149 ["variant"]
      759 NEWCLOSURE                       R28 P5
      760 CAPTURE                          VAL R3
      761 SETTABLEKS                       R28 R27 K22 ["onActivated"]
      763 LOADB                            R28 0
      764 SETTABLEKS                       R28 R27 K150 ["isDisabled"]
      766 GETUPVAL                         R28 4
      767 GETTABLEKS                       R28 R28 K81 ["Enums"]
      769 GETTABLEKS                       R28 R28 K82 ["InputSize"]
      771 GETTABLEKS                       R28 R28 K155 ["Small"]
      773 SETTABLEKS                       R28 R27 K76 ["size"]
      775 LOADN                            R28 3
      776 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      778 CALL                             R25 2 1
      779 SETTABLEKS                       R25 R24 K139 ["Back"]
      781 GETUPVAL                         R25 3
      782 GETTABLEKS                       R25 R25 K18 ["createElement"]
      784 GETUPVAL                         R26 4
      785 GETTABLEKS                       R26 R26 K148 ["Button"]
      787 DUPTABLE                         R27 K151 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      788 LOADK                            R30 K152 ["Buttons"]
      789 LOADK                            R31 K156 ["ExportRemaining"]
      790 NAMECALL                         R28 R1 K51 ["getText"]
      792 CALL                             R28 3 1
      793 SETTABLEKS                       R28 R27 K61 ["text"]
      795 GETUPVAL                         R28 4
      796 GETTABLEKS                       R28 R28 K81 ["Enums"]
      798 GETTABLEKS                       R28 R28 K153 ["ButtonVariant"]
      800 GETTABLEKS                       R28 R28 K157 ["Emphasis"]
      802 SETTABLEKS                       R28 R27 K149 ["variant"]
      804 NEWCLOSURE                       R28 P6
      805 CAPTURE                          VAL R3
      806 SETTABLEKS                       R28 R27 K22 ["onActivated"]
      808 LOADB                            R28 0
      809 SETTABLEKS                       R28 R27 K150 ["isDisabled"]
      811 GETUPVAL                         R28 4
      812 GETTABLEKS                       R28 R28 K81 ["Enums"]
      814 GETTABLEKS                       R28 R28 K82 ["InputSize"]
      816 GETTABLEKS                       R28 R28 K155 ["Small"]
      818 SETTABLEKS                       R28 R27 K76 ["size"]
      820 LOADN                            R28 4
      821 SETTABLEKS                       R28 R27 K21 ["LayoutOrder"]
      823 CALL                             R25 2 1
      824 SETTABLEKS                       R25 R24 K140 ["Export"]
      826 CALL                             R21 3 1
      827 SETTABLEKS                       R21 R20 K92 ["footer"]
      829 CALL                             R17 3 -1
      830 SETLIST                          R16 R17 -1 [1]
      832 CALL                             R13 3 -1
      833 RETURN                           R13 -1

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
