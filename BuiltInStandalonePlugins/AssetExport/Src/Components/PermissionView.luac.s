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
      157 LOADK                            R30 K51 ["%*: %*"]
      158 LOADK                            R34 K52 ["AssetType"]
      159 GETTABLEKS                       R35 R15 K3 ["assetType"]
      161 NAMECALL                         R32 R1 K53 ["getText"]
      163 CALL                             R32 3 1
      164 GETTABLEKS                       R33 R15 K5 ["assetId"]
      166 NAMECALL                         R30 R30 K54 ["format"]
      168 CALL                             R30 3 1
      169 SETTABLEKS                       R30 R29 K48 ["Text"]
      171 CALL                             R27 2 1
      172 SETTABLEKS                       R27 R26 K45 ["MainText"]
      174 GETUPVAL                         R27 3
      175 GETTABLEKS                       R27 R27 K18 ["createElement"]
      177 GETUPVAL                         R28 4
      178 GETTABLEKS                       R28 R28 K48 ["Text"]
      180 DUPTABLE                         R29 K56 [{["tag"] = "size-full-0 auto-y text-caption-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"] = 2}]
      181 LOADK                            R32 K57 ["Info"]
      182 GETTABLEKS                       R34 R15 K6 ["count"]
      184 LOADN                            R35 1
      185 JUMPIFNOTLT                      R35 R34 ; [+3]
      187 LOADK                            R33 K58 ["UsagePlural"]
      188 JUMP                             ; [+1]
      189 LOADK                            R33 K59 ["UsageSingle"]
      190 NEWTABLE                         R34 1 0
      192 GETTABLEKS                       R36 R15 K6 ["count"]
      194 FASTCALL1                        TOSTRING R36 ; [+2]
      195 GETIMPORT                        R35 K61 [tostring]
      197 CALL                             R35 1 1
      198 SETTABLEKS                       R35 R34 K6 ["count"]
      200 NAMECALL                         R30 R1 K53 ["getText"]
      202 CALL                             R30 4 1
      203 SETTABLEKS                       R30 R29 K48 ["Text"]
      205 CALL                             R27 2 1
      206 SETTABLEKS                       R27 R26 K46 ["SupportText"]
      208 CALL                             R23 3 1
      209 SETTABLEKS                       R23 R22 K28 ["textPanel"]
      211 GETUPVAL                         R23 3
      212 GETTABLEKS                       R23 R23 K18 ["createElement"]
      214 GETUPVAL                         R24 4
      215 GETTABLEKS                       R24 R24 K19 ["View"]
      217 DUPTABLE                         R25 K64 [{["tag"] = "row align-y-center size-0-full auto-xy", ["LayoutOrder"] = 3}]
      218 NEWTABLE                         R26 0 0
      220 CALL                             R23 3 1
      221 SETTABLEKS                       R23 R22 K29 ["show"]
      223 CALL                             R19 3 -1
      224 FASTCALL                         TABLE_INSERT ; [+2]
      225 GETIMPORT                        R17 K10 [table.insert]
      227 CALL                             R17 -1 0
      228 FORNLOOP                         R12
      229 NEWTABLE                         R12 0 2
      231 DUPTABLE                         R13 K68 [{["id"] = "viewInExplorer", ["text"]}]
      232 LOADK                            R16 K69 ["Context"]
      233 LOADK                            R17 K70 ["Explorer"]
      234 NAMECALL                         R14 R1 K53 ["getText"]
      236 CALL                             R14 3 1
      237 SETTABLEKS                       R14 R13 K67 ["text"]
      239 DUPTABLE                         R14 K72 [{["id"] = "openInBrowser", ["text"]}]
      240 LOADK                            R17 K69 ["Context"]
      241 LOADK                            R18 K73 ["Browser"]
      242 NAMECALL                         R15 R1 K53 ["getText"]
      244 CALL                             R15 3 1
      245 SETTABLEKS                       R15 R14 K67 ["text"]
      247 SETLIST                          R12 R13 2 [1]
      249 GETUPVAL                         R13 3
      250 GETTABLEKS                       R13 R13 K18 ["createElement"]
      252 GETUPVAL                         R14 4
      253 GETTABLEKS                       R14 R14 K19 ["View"]
      255 DUPTABLE                         R15 K75 [{["tag"] = "size-full"}]
      256 NEWTABLE                         R16 1 1
      258 GETUPVAL                         R18 3
      259 GETTABLEKS                       R18 R18 K18 ["createElement"]
      261 GETUPVAL                         R19 4
      262 GETTABLEKS                       R19 R19 K19 ["View"]
      264 DUPTABLE                         R20 K77 [{"Size", "Position"}]
      265 GETIMPORT                        R21 K14 [UDim2.fromOffset]
      267 LOADN                            R22 0
      268 LOADN                            R23 0
      269 CALL                             R21 2 1
      270 SETTABLEKS                       R21 R20 K37 ["Size"]
      272 SETTABLEKS                       R8 R20 K76 ["Position"]
      274 DUPTABLE                         R21 K79 [{"contextMenu"}]
      275 GETUPVAL                         R22 3
      276 GETTABLEKS                       R22 R22 K18 ["createElement"]
      278 GETUPVAL                         R23 4
      279 GETTABLEKS                       R23 R23 K80 ["Menu"]
      281 DUPTABLE                         R24 K87 [{["isOpen"], ["items"], ["size"], ["side"], ["align"], ["LayoutOrder"] = 3, ["onPressedOutside"], ["onActivated"]}]
      282 SETTABLEKS                       R6 R24 K81 ["isOpen"]
      284 SETTABLEKS                       R12 R24 K82 ["items"]
      286 GETUPVAL                         R25 4
      287 GETTABLEKS                       R25 R25 K88 ["Enums"]
      289 GETTABLEKS                       R25 R25 K89 ["InputSize"]
      291 GETTABLEKS                       R25 R25 K90 ["Medium"]
      293 SETTABLEKS                       R25 R24 K83 ["size"]
      295 GETUPVAL                         R25 4
      296 GETTABLEKS                       R25 R25 K88 ["Enums"]
      298 GETTABLEKS                       R25 R25 K91 ["PopoverSide"]
      300 GETTABLEKS                       R25 R25 K92 ["Right"]
      302 SETTABLEKS                       R25 R24 K84 ["side"]
      304 GETUPVAL                         R25 4
      305 GETTABLEKS                       R25 R25 K88 ["Enums"]
      307 GETTABLEKS                       R25 R25 K93 ["PopoverAlign"]
      309 GETTABLEKS                       R25 R25 K94 ["Center"]
      311 SETTABLEKS                       R25 R24 K85 ["align"]
      313 NEWCLOSURE                       R25 P2
      314 CAPTURE                          VAL R7
      315 SETTABLEKS                       R25 R24 K86 ["onPressedOutside"]
      317 NEWCLOSURE                       R25 P3
      318 CAPTURE                          VAL R3
      319 CAPTURE                          VAL R10
      320 CAPTURE                          VAL R7
      321 SETTABLEKS                       R25 R24 K23 ["onActivated"]
      323 NEWTABLE                         R25 0 0
      325 CALL                             R22 3 1
      326 SETTABLEKS                       R22 R21 K78 ["contextMenu"]
      328 CALL                             R18 3 1
      329 SETTABLEKS                       R18 R16 K95 ["contextPosition"]
      331 GETUPVAL                         R17 3
      332 GETTABLEKS                       R17 R17 K18 ["createElement"]
      334 GETUPVAL                         R18 4
      335 GETTABLEKS                       R18 R18 K19 ["View"]
      337 DUPTABLE                         R19 K97 [{["tag"] = "col gap-medium size-full padding-medium bg-surface-300"}]
      338 DUPTABLE                         R20 K101 [{"Header", "CenterPanel", "footer"}]
      339 GETUPVAL                         R21 3
      340 GETTABLEKS                       R21 R21 K18 ["createElement"]
      342 GETUPVAL                         R22 4
      343 GETTABLEKS                       R22 R22 K19 ["View"]
      345 DUPTABLE                         R23 K103 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-small"}]
      346 DUPTABLE                         R24 K104 [{"iconElement", "textPanel", "show"}]
      347 GETUPVAL                         R25 3
      348 GETTABLEKS                       R25 R25 K18 ["createElement"]
      350 GETUPVAL                         R26 4
      351 GETTABLEKS                       R26 R26 K35 ["Image"]
      353 DUPTABLE                         R27 K106 [{["Image"] = "rbxassetid://113290604845428", ["Size"], ["LayoutOrder"] = 1}]
      354 GETIMPORT                        R28 K14 [UDim2.fromOffset]
      356 LOADN                            R29 36
      357 LOADN                            R30 37
      358 CALL                             R28 2 1
      359 SETTABLEKS                       R28 R27 K37 ["Size"]
      361 CALL                             R25 2 1
      362 SETTABLEKS                       R25 R24 K33 ["iconElement"]
      364 GETUPVAL                         R25 3
      365 GETTABLEKS                       R25 R25 K18 ["createElement"]
      367 GETUPVAL                         R26 4
      368 GETTABLEKS                       R26 R26 K19 ["View"]
      370 DUPTABLE                         R27 K44 [{["tag"] = "col align-y-top grow gap-small size-0-0 auto-y", ["LayoutOrder"] = 2}]
      371 DUPTABLE                         R28 K47 [{"MainText", "SupportText"}]
      372 GETUPVAL                         R29 3
      373 GETTABLEKS                       R29 R29 K18 ["createElement"]
      375 GETUPVAL                         R30 4
      376 GETTABLEKS                       R30 R30 K48 ["Text"]
      378 DUPTABLE                         R31 K108 [{["tag"] = "size-full-0 auto-y text-title-medium text-no-wrap text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"] = 1}]
      379 LOADK                            R34 K109 ["Title"]
      380 LOADK                            R35 K110 ["Review"]
      381 NAMECALL                         R32 R1 K53 ["getText"]
      383 CALL                             R32 3 1
      384 SETTABLEKS                       R32 R31 K48 ["Text"]
      386 CALL                             R29 2 1
      387 SETTABLEKS                       R29 R28 K45 ["MainText"]
      389 GETUPVAL                         R29 3
      390 GETTABLEKS                       R29 R29 K18 ["createElement"]
      392 GETUPVAL                         R30 4
      393 GETTABLEKS                       R30 R30 K48 ["Text"]
      395 DUPTABLE                         R31 K112 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"] = 2}]
      396 LOADK                            R34 K57 ["Info"]
      397 LOADK                            R35 K110 ["Review"]
      398 NAMECALL                         R32 R1 K53 ["getText"]
      400 CALL                             R32 3 1
      401 SETTABLEKS                       R32 R31 K48 ["Text"]
      403 CALL                             R29 2 1
      404 SETTABLEKS                       R29 R28 K46 ["SupportText"]
      406 CALL                             R25 3 1
      407 SETTABLEKS                       R25 R24 K28 ["textPanel"]
      409 GETUPVAL                         R25 3
      410 GETTABLEKS                       R25 R25 K18 ["createElement"]
      412 GETUPVAL                         R26 4
      413 GETTABLEKS                       R26 R26 K19 ["View"]
      415 DUPTABLE                         R27 K64 [{["tag"] = "row align-y-center size-0-full auto-xy", ["LayoutOrder"] = 3}]
      416 NEWTABLE                         R28 0 0
      418 CALL                             R25 3 1
      419 SETTABLEKS                       R25 R24 K29 ["show"]
      421 CALL                             R21 3 1
      422 SETTABLEKS                       R21 R20 K98 ["Header"]
      424 GETUPVAL                         R21 3
      425 GETTABLEKS                       R21 R21 K18 ["createElement"]
      427 GETUPVAL                         R22 4
      428 GETTABLEKS                       R22 R22 K19 ["View"]
      430 DUPTABLE                         R23 K114 [{["tag"] = "row align-y-top grow gap-small size-full-0 padding-small", ["LayoutOrder"] = 2}]
      431 DUPTABLE                         R24 K117 [{"spacer", "issues"}]
      432 GETUPVAL                         R25 3
      433 GETTABLEKS                       R25 R25 K18 ["createElement"]
      435 GETUPVAL                         R26 4
      436 GETTABLEKS                       R26 R26 K19 ["View"]
      438 DUPTABLE                         R27 K118 [{["Size"], ["LayoutOrder"] = 1}]
      439 GETIMPORT                        R28 K14 [UDim2.fromOffset]
      441 LOADN                            R29 36
      442 LOADN                            R30 36
      443 CALL                             R28 2 1
      444 SETTABLEKS                       R28 R27 K37 ["Size"]
      446 CALL                             R25 2 1
      447 SETTABLEKS                       R25 R24 K115 ["spacer"]
      449 GETUPVAL                         R25 3
      450 GETTABLEKS                       R25 R25 K18 ["createElement"]
      452 GETUPVAL                         R26 4
      453 GETTABLEKS                       R26 R26 K19 ["View"]
      455 DUPTABLE                         R27 K120 [{["tag"] = "col grow size-0-full stroke-standard stroke-muted", ["LayoutOrder"] = 2}]
      456 DUPTABLE                         R28 K123 [{"titleBox", "scroll"}]
      457 GETUPVAL                         R29 3
      458 GETTABLEKS                       R29 R29 K18 ["createElement"]
      460 GETUPVAL                         R30 4
      461 GETTABLEKS                       R30 R30 K19 ["View"]
      463 DUPTABLE                         R31 K125 [{["tag"] = "size-full-0 auto-y stroke-standard stroke-muted", ["LayoutOrder"] = 1}]
      464 DUPTABLE                         R32 K127 [{"title"}]
      465 GETUPVAL                         R33 3
      466 GETTABLEKS                       R33 R33 K18 ["createElement"]
      468 GETUPVAL                         R34 4
      469 GETTABLEKS                       R34 R34 K48 ["Text"]
      471 DUPTABLE                         R35 K129 [{["Text"], ["tag"] = "size-full-0 auto-y padding-xsmall text-title-medium text-align-x-left"}]
      472 LOADK                            R38 K57 ["Info"]
      473 LOADK                            R39 K130 ["Permission"]
      474 NAMECALL                         R36 R1 K53 ["getText"]
      476 CALL                             R36 3 1
      477 SETTABLEKS                       R36 R35 K48 ["Text"]
      479 CALL                             R33 2 1
      480 SETTABLEKS                       R33 R32 K126 ["title"]
      482 CALL                             R29 3 1
      483 SETTABLEKS                       R29 R28 K121 ["titleBox"]
      485 GETUPVAL                         R29 3
      486 GETTABLEKS                       R29 R29 K18 ["createElement"]
      488 GETUPVAL                         R30 4
      489 GETTABLEKS                       R30 R30 K131 ["ScrollView"]
      491 DUPTABLE                         R31 K133 [{["tag"] = "grow size-full-0", ["LayoutOrder"] = 2, ["scroll"]}]
      492 DUPTABLE                         R32 K138 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      493 GETUPVAL                         R33 4
      494 GETTABLEKS                       R33 R33 K88 ["Enums"]
      496 GETTABLEKS                       R33 R33 K139 ["ScrollBarVisibility"]
      498 GETTABLEKS                       R33 R33 K140 ["Always"]
      500 SETTABLEKS                       R33 R32 K134 ["scrollBarVisibility"]
      502 GETIMPORT                        R33 K143 [Enum.ScrollingDirection.Y]
      504 SETTABLEKS                       R33 R32 K135 ["ScrollingDirection"]
      506 GETIMPORT                        R33 K145 [Enum.AutomaticSize.Y]
      508 SETTABLEKS                       R33 R32 K136 ["AutomaticCanvasSize"]
      510 GETIMPORT                        R33 K147 [UDim2.fromScale]
      512 LOADN                            R34 0
      513 LOADN                            R35 0
      514 CALL                             R33 2 1
      515 SETTABLEKS                       R33 R32 K137 ["CanvasSize"]
      517 SETTABLEKS                       R32 R31 K122 ["scroll"]
      519 DUPTABLE                         R32 K149 [{"innerView"}]
      520 GETUPVAL                         R33 3
      521 GETTABLEKS                       R33 R33 K18 ["createElement"]
      523 GETUPVAL                         R34 4
      524 GETTABLEKS                       R34 R34 K19 ["View"]
      526 DUPTABLE                         R35 K151 [{["tag"] = "col size-full-0 auto-y"}]
      527 MOVE                             R36 R5
      528 CALL                             R33 3 1
      529 SETTABLEKS                       R33 R32 K148 ["innerView"]
      531 CALL                             R29 3 1
      532 SETTABLEKS                       R29 R28 K122 ["scroll"]
      534 CALL                             R25 3 1
      535 SETTABLEKS                       R25 R24 K116 ["issues"]
      537 CALL                             R21 3 1
      538 SETTABLEKS                       R21 R20 K99 ["CenterPanel"]
      540 GETUPVAL                         R21 3
      541 GETTABLEKS                       R21 R21 K18 ["createElement"]
      543 GETUPVAL                         R22 4
      544 GETTABLEKS                       R22 R22 K19 ["View"]
      546 DUPTABLE                         R23 K154 [{["tag"] = "row align-x-right gap-small size-full-1200 padding-small bg-surface-300", ["LayoutOrder"] = 5}]
      547 DUPTABLE                         R24 K158 [{"spacer", "Link", "Back", "Export"}]
      548 GETUPVAL                         R25 3
      549 GETTABLEKS                       R25 R25 K18 ["createElement"]
      551 GETUPVAL                         R26 4
      552 GETTABLEKS                       R26 R26 K19 ["View"]
      554 DUPTABLE                         R27 K118 [{["Size"], ["LayoutOrder"] = 1}]
      555 GETIMPORT                        R28 K14 [UDim2.fromOffset]
      557 LOADN                            R29 36
      558 LOADN                            R30 1
      559 CALL                             R28 2 1
      560 SETTABLEKS                       R28 R27 K37 ["Size"]
      562 CALL                             R25 2 1
      563 SETTABLEKS                       R25 R24 K115 ["spacer"]
      565 GETUPVAL                         R25 3
      566 GETTABLEKS                       R25 R25 K18 ["createElement"]
      568 GETUPVAL                         R26 4
      569 GETTABLEKS                       R26 R26 K19 ["View"]
      571 DUPTABLE                         R27 K160 [{["tag"] = "col align-y-center grow gap-small size-0-full auto-x", ["LayoutOrder"] = 2}]
      572 DUPTABLE                         R28 K162 [{"LinkText"}]
      573 GETUPVAL                         R29 3
      574 GETTABLEKS                       R29 R29 K18 ["createElement"]
      576 GETUPVAL                         R30 4
      577 GETTABLEKS                       R30 R30 K48 ["Text"]
      579 DUPTABLE                         R31 K164 [{["tag"] = "auto-xy text-label-small text-align-x-left text-align-y-center text-truncate-end radius-small content-link", ["Text"], ["onActivated"], ["LayoutOrder"] = 1}]
      580 LOADK                            R34 K57 ["Info"]
      581 LOADK                            R35 K165 ["Learn"]
      582 NAMECALL                         R32 R1 K53 ["getText"]
      584 CALL                             R32 3 1
      585 SETTABLEKS                       R32 R31 K48 ["Text"]
      587 NEWCLOSURE                       R32 P4
      588 CAPTURE                          VAL R3
      589 SETTABLEKS                       R32 R31 K23 ["onActivated"]
      591 CALL                             R29 2 1
      592 SETTABLEKS                       R29 R28 K161 ["LinkText"]
      594 CALL                             R25 3 1
      595 SETTABLEKS                       R25 R24 K155 ["Link"]
      597 GETUPVAL                         R25 3
      598 GETTABLEKS                       R25 R25 K18 ["createElement"]
      600 GETUPVAL                         R26 4
      601 GETTABLEKS                       R26 R26 K166 ["Button"]
      603 DUPTABLE                         R27 K170 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 3}]
      604 LOADK                            R30 K171 ["Buttons"]
      605 LOADK                            R31 K156 ["Back"]
      606 NAMECALL                         R28 R1 K53 ["getText"]
      608 CALL                             R28 3 1
      609 SETTABLEKS                       R28 R27 K67 ["text"]
      611 GETUPVAL                         R28 4
      612 GETTABLEKS                       R28 R28 K88 ["Enums"]
      614 GETTABLEKS                       R28 R28 K172 ["ButtonVariant"]
      616 GETTABLEKS                       R28 R28 K173 ["Standard"]
      618 SETTABLEKS                       R28 R27 K167 ["variant"]
      620 NEWCLOSURE                       R28 P5
      621 CAPTURE                          VAL R3
      622 SETTABLEKS                       R28 R27 K23 ["onActivated"]
      624 GETUPVAL                         R28 4
      625 GETTABLEKS                       R28 R28 K88 ["Enums"]
      627 GETTABLEKS                       R28 R28 K89 ["InputSize"]
      629 GETTABLEKS                       R28 R28 K174 ["Small"]
      631 SETTABLEKS                       R28 R27 K83 ["size"]
      633 CALL                             R25 2 1
      634 SETTABLEKS                       R25 R24 K156 ["Back"]
      636 GETUPVAL                         R25 3
      637 GETTABLEKS                       R25 R25 K18 ["createElement"]
      639 GETUPVAL                         R26 4
      640 GETTABLEKS                       R26 R26 K166 ["Button"]
      642 DUPTABLE                         R27 K176 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 4}]
      643 LOADK                            R30 K171 ["Buttons"]
      644 LOADK                            R31 K177 ["ExportRemaining"]
      645 NAMECALL                         R28 R1 K53 ["getText"]
      647 CALL                             R28 3 1
      648 SETTABLEKS                       R28 R27 K67 ["text"]
      650 GETUPVAL                         R28 4
      651 GETTABLEKS                       R28 R28 K88 ["Enums"]
      653 GETTABLEKS                       R28 R28 K172 ["ButtonVariant"]
      655 GETTABLEKS                       R28 R28 K178 ["Emphasis"]
      657 SETTABLEKS                       R28 R27 K167 ["variant"]
      659 NEWCLOSURE                       R28 P6
      660 CAPTURE                          VAL R3
      661 SETTABLEKS                       R28 R27 K23 ["onActivated"]
      663 GETUPVAL                         R28 4
      664 GETTABLEKS                       R28 R28 K88 ["Enums"]
      666 GETTABLEKS                       R28 R28 K89 ["InputSize"]
      668 GETTABLEKS                       R28 R28 K174 ["Small"]
      670 SETTABLEKS                       R28 R27 K83 ["size"]
      672 CALL                             R25 2 1
      673 SETTABLEKS                       R25 R24 K157 ["Export"]
      675 CALL                             R21 3 1
      676 SETTABLEKS                       R21 R20 K100 ["footer"]
      678 CALL                             R17 3 -1
      679 SETLIST                          R16 R17 -1 [1]
      681 CALL                             R13 3 -1
      682 RETURN                           R13 -1

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
