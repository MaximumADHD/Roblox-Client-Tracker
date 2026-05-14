PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Identifier"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 GETTABLE                         R2 R3 R4
        7 DUPTABLE                         R3 K4 [{"Id", "Text", "Checked"}]
        8 SETTABLEKS                       R1 R3 K1 ["Id"]
       10 GETTABLEKS                       R4 R2 K5 ["Name"]
       12 SETTABLEKS                       R4 R3 K2 ["Text"]
       14 GETTABLEKS                       R4 R0 K6 ["Visible"]
       16 SETTABLEKS                       R4 R3 K3 ["Checked"]
       18 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Layout"]
        4 GETTABLEKS                       R1 R1 K1 ["TabLayout"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Id"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ToggleTabVisibility"]
        3 GETTABLEKS                       R2 R0 K1 ["Item"]
        5 GETTABLEKS                       R2 R2 K2 ["Id"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["MoveTab"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Id"]
        8 LOADK                            R2 K2 ["Left"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["MoveTab"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Id"]
        8 LOADK                            R2 K2 ["Right"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["DeleteTab"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Id"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R4 R1 K2 ["Id"]
        9 CALL                             R3 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["Definition"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["use"]
        8 CALL                             R3 0 1
        9 NAMECALL                         R3 R3 K2 ["get"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K3 ["wrap"]
       19 NAMECALL                         R6 R3 K4 ["GetUri"]
       21 CALL                             R6 1 -1
       22 CALL                             R5 -1 1
       23 GETUPVAL                         R6 5
       24 LOADNIL                          R7
       25 CALL                             R6 1 2
       26 GETTABLEKS                       R8 R2 K5 ["TabControls"]
       28 GETUPVAL                         R9 6
       29 NEWCLOSURE                       R10 P0
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R8
       33 CAPTURE                          UPVAL U8
       34 NEWTABLE                         R11 0 1
       36 MOVE                             R12 R2
       37 SETLIST                          R11 R12 1 [1]
       39 CALL                             R9 2 1
       40 GETUPVAL                         R10 9
       41 MOVE                             R11 R9
       42 NEWCLOSURE                       R12 P1
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          VAL R6
       45 CALL                             R10 2 1
       46 GETUPVAL                         R11 10
       47 NEWCLOSURE                       R12 P2
       48 CAPTURE                          VAL R1
       49 NEWTABLE                         R13 0 1
       51 GETTABLEKS                       R14 R1 K6 ["ToggleTabVisibility"]
       53 SETLIST                          R13 R14 1 [1]
       55 CALL                             R11 2 1
       56 NEWCLOSURE                       R12 P3
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R1
       59 NEWCLOSURE                       R13 P4
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R1
       62 NEWCLOSURE                       R14 P5
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R0
       65 GETUPVAL                         R15 11
       66 CALL                             R15 0 1
       67 GETUPVAL                         R16 4
       68 GETTABLEKS                       R16 R16 K7 ["fromWidget"]
       70 LOADK                            R17 K8 ["Ribbon"]
       71 LOADK                            R18 K9 ["ManageTabs/More"]
       72 CALL                             R16 2 1
       73 GETUPVAL                         R17 12
       74 MOVE                             R18 R16
       75 NEWTABLE                         R19 0 2
       77 DUPTABLE                         R20 K12 [{"Id", "Action"}]
       78 LOADK                            R21 K13 ["ReloadTabs"]
       79 SETTABLEKS                       R21 R20 K10 ["Id"]
       81 GETUPVAL                         R21 4
       82 GETTABLEKS                       R21 R21 K14 ["join"]
       84 MOVE                             R22 R5
       85 DUPTABLE                         R23 K17 [{"Category", "ItemId"}]
       86 LOADK                            R24 K18 ["Actions"]
       87 SETTABLEKS                       R24 R23 K15 ["Category"]
       89 LOADK                            R24 K13 ["ReloadTabs"]
       90 SETTABLEKS                       R24 R23 K16 ["ItemId"]
       92 CALL                             R21 2 1
       93 SETTABLEKS                       R21 R20 K11 ["Action"]
       95 DUPTABLE                         R21 K12 [{"Id", "Action"}]
       96 LOADK                            R22 K19 ["ResetTabs"]
       97 SETTABLEKS                       R22 R21 K10 ["Id"]
       99 GETUPVAL                         R22 4
      100 GETTABLEKS                       R22 R22 K14 ["join"]
      102 MOVE                             R23 R5
      103 DUPTABLE                         R24 K17 [{"Category", "ItemId"}]
      104 LOADK                            R25 K18 ["Actions"]
      105 SETTABLEKS                       R25 R24 K15 ["Category"]
      107 LOADK                            R25 K19 ["ResetTabs"]
      108 SETTABLEKS                       R25 R24 K16 ["ItemId"]
      110 CALL                             R22 2 1
      111 SETTABLEKS                       R22 R21 K11 ["Action"]
      113 SETLIST                          R19 R20 2 [1]
      115 CALL                             R17 2 1
      116 GETUPVAL                         R18 0
      117 GETUPVAL                         R19 13
      118 CALL                             R18 1 1
      119 GETUPVAL                         R19 4
      120 GETTABLEKS                       R19 R19 K7 ["fromWidget"]
      122 LOADK                            R20 K8 ["Ribbon"]
      123 LOADK                            R21 K20 ["ManageTabs/Align"]
      124 CALL                             R19 2 1
      125 GETUPVAL                         R20 12
      126 MOVE                             R21 R19
      127 NEWTABLE                         R22 0 2
      129 DUPTABLE                         R23 K22 [{"Id", "Text"}]
      130 LOADK                            R24 K23 ["Left"]
      131 SETTABLEKS                       R24 R23 K10 ["Id"]
      133 LOADK                            R26 K24 ["Plugin"]
      134 LOADK                            R27 K25 ["TabLocation_Left"]
      135 NAMECALL                         R24 R4 K26 ["getText"]
      137 CALL                             R24 3 1
      138 SETTABLEKS                       R24 R23 K21 ["Text"]
      140 DUPTABLE                         R24 K22 [{"Id", "Text"}]
      141 LOADK                            R25 K27 ["Center"]
      142 SETTABLEKS                       R25 R24 K10 ["Id"]
      144 LOADK                            R27 K24 ["Plugin"]
      145 LOADK                            R28 K28 ["TabLocation_Center"]
      146 NAMECALL                         R25 R4 K26 ["getText"]
      148 CALL                             R25 3 1
      149 SETTABLEKS                       R25 R24 K21 ["Text"]
      151 SETLIST                          R22 R23 2 [1]
      153 GETTABLEKS                       R23 R18 K29 ["current"]
      155 GETTABLEKS                       R24 R18 K30 ["setTabLocation"]
      157 CALL                             R20 4 2
      158 GETTABLEKS                       R23 R18 K29 ["current"]
      160 JUMPIFNOTEQKS                    R23 K23 ["Left"] ; [+7]
      162 LOADK                            R24 K24 ["Plugin"]
      163 LOADK                            R25 K25 ["TabLocation_Left"]
      164 NAMECALL                         R22 R4 K26 ["getText"]
      166 CALL                             R22 3 1
      167 JUMP                             ; [+5]
      168 LOADK                            R24 K24 ["Plugin"]
      169 LOADK                            R25 K28 ["TabLocation_Center"]
      170 NAMECALL                         R22 R4 K26 ["getText"]
      172 CALL                             R22 3 1
      173 JUMPIFNOT                        R10 ; [+5]
      174 NEWTABLE                         R23 1 0
      176 LOADB                            R24 1
      177 SETTABLE                         R24 R23 R10
      178 JUMP                             ; [+1]
      179 LOADNIL                          R23
      180 GETUPVAL                         R24 10
      181 NEWCLOSURE                       R25 P6
      182 CAPTURE                          VAL R7
      183 CAPTURE                          UPVAL U8
      184 NEWTABLE                         R26 0 0
      186 CALL                             R24 2 1
      187 GETUPVAL                         R25 14
      188 LOADK                            R26 K31 ["Frame"]
      189 NEWTABLE                         R27 2 0
      191 MOVE                             R28 R15
      192 CALL                             R28 0 1
      193 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      195 GETUPVAL                         R28 15
      196 GETTABLEKS                       R28 R28 K33 ["Tag"]
      198 LOADK                            R29 K34 ["X-Fill Role-Surface100 data-testid=ManageTabs-Wrapper Role-ManageTabsWrapper X-Middle X-Center"]
      199 SETTABLE                         R29 R27 R28
      200 DUPTABLE                         R28 K38 [{"Buttons", "Tree", "Alignment"}]
      201 GETUPVAL                         R29 14
      202 LOADK                            R30 K31 ["Frame"]
      203 NEWTABLE                         R31 2 0
      205 MOVE                             R32 R15
      206 CALL                             R32 0 1
      207 SETTABLEKS                       R32 R31 K32 ["LayoutOrder"]
      209 GETUPVAL                         R32 15
      210 GETTABLEKS                       R32 R32 K33 ["Tag"]
      212 LOADK                            R33 K39 ["Role-Surface X-Right X-FitY"]
      213 SETTABLE                         R33 R31 R32
      214 DUPTABLE                         R32 K46 [{"MoveUp", "MoveDown", "Separator", "Delete", "Separator2", "More"}]
      215 GETUPVAL                         R33 14
      216 GETUPVAL                         R34 16
      217 DUPTABLE                         R35 K55 [{"Uri", "Disabled", "Icon", "IconOnly", "LayoutOrder", "OnSelect", "Tooltip", "Size", "Style"}]
      218 GETUPVAL                         R36 4
      219 GETTABLEKS                       R36 R36 K7 ["fromWidget"]
      221 LOADK                            R37 K8 ["Ribbon"]
      222 LOADK                            R38 K56 ["ManageTabs/MoveUp"]
      223 CALL                             R36 2 1
      224 SETTABLEKS                       R36 R35 K47 ["Uri"]
      226 JUMPIFEQKNIL                     R10 ; [+2]
      228 LOADB                            R36 0 +1
      229 LOADB                            R36 1
      230 SETTABLEKS                       R36 R35 K48 ["Disabled"]
      232 LOADK                            R36 K57 ["ArrowUp"]
      233 SETTABLEKS                       R36 R35 K49 ["Icon"]
      235 LOADB                            R36 1
      236 SETTABLEKS                       R36 R35 K50 ["IconOnly"]
      238 MOVE                             R36 R15
      239 CALL                             R36 0 1
      240 SETTABLEKS                       R36 R35 K32 ["LayoutOrder"]
      242 SETTABLEKS                       R12 R35 K51 ["OnSelect"]
      244 LOADK                            R38 K24 ["Plugin"]
      245 LOADK                            R39 K40 ["MoveUp"]
      246 NAMECALL                         R36 R4 K26 ["getText"]
      248 CALL                             R36 3 1
      249 SETTABLEKS                       R36 R35 K52 ["Tooltip"]
      251 LOADK                            R36 K58 ["Small"]
      252 SETTABLEKS                       R36 R35 K53 ["Size"]
      254 LOADK                            R36 K59 ["Outline"]
      255 SETTABLEKS                       R36 R35 K54 ["Style"]
      257 CALL                             R33 2 1
      258 SETTABLEKS                       R33 R32 K40 ["MoveUp"]
      260 GETUPVAL                         R33 14
      261 GETUPVAL                         R34 16
      262 DUPTABLE                         R35 K60 [{"Uri", "Disabled", "Icon", "IconOnly", "LayoutOrder", "OnSelect", "Tooltip", "Size"}]
      263 GETUPVAL                         R36 4
      264 GETTABLEKS                       R36 R36 K7 ["fromWidget"]
      266 LOADK                            R37 K8 ["Ribbon"]
      267 LOADK                            R38 K61 ["ManageTabs/MoveDown"]
      268 CALL                             R36 2 1
      269 SETTABLEKS                       R36 R35 K47 ["Uri"]
      271 JUMPIFEQKNIL                     R10 ; [+2]
      273 LOADB                            R36 0 +1
      274 LOADB                            R36 1
      275 SETTABLEKS                       R36 R35 K48 ["Disabled"]
      277 LOADK                            R36 K62 ["ArrowDown"]
      278 SETTABLEKS                       R36 R35 K49 ["Icon"]
      280 LOADB                            R36 1
      281 SETTABLEKS                       R36 R35 K50 ["IconOnly"]
      283 MOVE                             R36 R15
      284 CALL                             R36 0 1
      285 SETTABLEKS                       R36 R35 K32 ["LayoutOrder"]
      287 SETTABLEKS                       R13 R35 K51 ["OnSelect"]
      289 LOADK                            R38 K24 ["Plugin"]
      290 LOADK                            R39 K41 ["MoveDown"]
      291 NAMECALL                         R36 R4 K26 ["getText"]
      293 CALL                             R36 3 1
      294 SETTABLEKS                       R36 R35 K52 ["Tooltip"]
      296 LOADK                            R36 K58 ["Small"]
      297 SETTABLEKS                       R36 R35 K53 ["Size"]
      299 CALL                             R33 2 1
      300 SETTABLEKS                       R33 R32 K41 ["MoveDown"]
      302 GETUPVAL                         R33 14
      303 LOADK                            R34 K31 ["Frame"]
      304 NEWTABLE                         R35 2 0
      306 MOVE                             R36 R15
      307 CALL                             R36 0 1
      308 SETTABLEKS                       R36 R35 K32 ["LayoutOrder"]
      310 GETUPVAL                         R36 15
      311 GETTABLEKS                       R36 R36 K33 ["Tag"]
      313 LOADK                            R37 K63 ["X-Fit Role-Surface"]
      314 SETTABLE                         R37 R35 R36
      315 DUPTABLE                         R36 K65 [{"Divider"}]
      316 GETUPVAL                         R37 14
      317 LOADK                            R38 K31 ["Frame"]
      318 CALL                             R37 1 1
      319 SETTABLEKS                       R37 R36 K64 ["Divider"]
      321 CALL                             R33 3 1
      322 SETTABLEKS                       R33 R32 K42 ["Separator"]
      324 GETUPVAL                         R33 14
      325 GETUPVAL                         R34 16
      326 DUPTABLE                         R35 K60 [{"Uri", "Disabled", "Icon", "IconOnly", "LayoutOrder", "OnSelect", "Tooltip", "Size"}]
      327 GETUPVAL                         R36 4
      328 GETTABLEKS                       R36 R36 K7 ["fromWidget"]
      330 LOADK                            R37 K8 ["Ribbon"]
      331 LOADK                            R38 K66 ["ManageTabs/Delete"]
      332 CALL                             R36 2 1
      333 SETTABLEKS                       R36 R35 K47 ["Uri"]
      335 LOADB                            R36 1
      336 JUMPIFEQKNIL                     R10 ; [+9]
      338 GETTABLEKS                       R37 R10 K10 ["Id"]
      340 GETTABLEKS                       R37 R37 K67 ["Type"]
      342 JUMPIFEQKS                       R37 K68 ["BuiltIn"] ; [+2]
      344 LOADB                            R36 0 +1
      345 LOADB                            R36 1
      346 SETTABLEKS                       R36 R35 K48 ["Disabled"]
      348 LOADK                            R36 K43 ["Delete"]
      349 SETTABLEKS                       R36 R35 K49 ["Icon"]
      351 LOADB                            R36 1
      352 SETTABLEKS                       R36 R35 K50 ["IconOnly"]
      354 MOVE                             R36 R15
      355 CALL                             R36 0 1
      356 SETTABLEKS                       R36 R35 K32 ["LayoutOrder"]
      358 SETTABLEKS                       R14 R35 K51 ["OnSelect"]
      360 LOADK                            R38 K24 ["Plugin"]
      361 LOADK                            R39 K69 ["DeleteTab"]
      362 NAMECALL                         R36 R4 K26 ["getText"]
      364 CALL                             R36 3 1
      365 SETTABLEKS                       R36 R35 K52 ["Tooltip"]
      367 LOADK                            R36 K58 ["Small"]
      368 SETTABLEKS                       R36 R35 K53 ["Size"]
      370 CALL                             R33 2 1
      371 SETTABLEKS                       R33 R32 K43 ["Delete"]
      373 GETUPVAL                         R33 14
      374 LOADK                            R34 K31 ["Frame"]
      375 NEWTABLE                         R35 2 0
      377 MOVE                             R36 R15
      378 CALL                             R36 0 1
      379 SETTABLEKS                       R36 R35 K32 ["LayoutOrder"]
      381 GETUPVAL                         R36 15
      382 GETTABLEKS                       R36 R36 K33 ["Tag"]
      384 LOADK                            R37 K63 ["X-Fit Role-Surface"]
      385 SETTABLE                         R37 R35 R36
      386 DUPTABLE                         R36 K65 [{"Divider"}]
      387 GETUPVAL                         R37 14
      388 LOADK                            R38 K31 ["Frame"]
      389 CALL                             R37 1 1
      390 SETTABLEKS                       R37 R36 K64 ["Divider"]
      392 CALL                             R33 3 1
      393 SETTABLEKS                       R33 R32 K44 ["Separator2"]
      395 GETUPVAL                         R33 14
      396 GETUPVAL                         R34 16
      397 DUPTABLE                         R35 K70 [{"Uri", "Icon", "IconOnly", "LayoutOrder", "OnSelect", "Size"}]
      398 SETTABLEKS                       R16 R35 K47 ["Uri"]
      400 LOADK                            R36 K45 ["More"]
      401 SETTABLEKS                       R36 R35 K49 ["Icon"]
      403 LOADB                            R36 1
      404 SETTABLEKS                       R36 R35 K50 ["IconOnly"]
      406 MOVE                             R36 R15
      407 CALL                             R36 0 1
      408 SETTABLEKS                       R36 R35 K32 ["LayoutOrder"]
      410 SETTABLEKS                       R17 R35 K51 ["OnSelect"]
      412 LOADK                            R36 K58 ["Small"]
      413 SETTABLEKS                       R36 R35 K53 ["Size"]
      415 CALL                             R33 2 1
      416 SETTABLEKS                       R33 R32 K45 ["More"]
      418 CALL                             R29 3 1
      419 SETTABLEKS                       R29 R28 K35 ["Buttons"]
      421 GETUPVAL                         R29 14
      422 GETUPVAL                         R30 17
      423 DUPTABLE                         R31 K79 [{"Expansion", "Selection", "OnSelectionChange", "LayoutOrder", "RootItems", "RowComponent", "RowHeight", "RowProps", "Size", "Variant"}]
      424 NEWTABLE                         R32 0 0
      426 SETTABLEKS                       R32 R31 K71 ["Expansion"]
      428 SETTABLEKS                       R23 R31 K72 ["Selection"]
      430 SETTABLEKS                       R24 R31 K73 ["OnSelectionChange"]
      432 MOVE                             R32 R15
      433 CALL                             R32 0 1
      434 SETTABLEKS                       R32 R31 K32 ["LayoutOrder"]
      436 SETTABLEKS                       R9 R31 K74 ["RootItems"]
      438 GETUPVAL                         R32 18
      439 SETTABLEKS                       R32 R31 K75 ["RowComponent"]
      441 LOADN                            R32 24
      442 SETTABLEKS                       R32 R31 K76 ["RowHeight"]
      444 DUPTABLE                         R32 K81 [{"OnCheck"}]
      445 SETTABLEKS                       R11 R32 K80 ["OnCheck"]
      447 SETTABLEKS                       R32 R31 K77 ["RowProps"]
      449 GETUPVAL                         R32 19
      450 SETTABLEKS                       R32 R31 K53 ["Size"]
      452 LOADK                            R32 K82 ["modern"]
      453 SETTABLEKS                       R32 R31 K78 ["Variant"]
      455 CALL                             R29 2 1
      456 SETTABLEKS                       R29 R28 K36 ["Tree"]
      458 GETUPVAL                         R29 14
      459 LOADK                            R30 K31 ["Frame"]
      460 NEWTABLE                         R31 2 0
      462 MOVE                             R32 R15
      463 CALL                             R32 0 1
      464 SETTABLEKS                       R32 R31 K32 ["LayoutOrder"]
      466 GETUPVAL                         R32 15
      467 GETTABLEKS                       R32 R32 K33 ["Tag"]
      469 LOADK                            R33 K83 ["Role-TabLocation Role-Surface X-Middle X-FitY X-Row"]
      470 SETTABLE                         R33 R31 R32
      471 DUPTABLE                         R32 K87 [{"Label", "Spacer", "Input"}]
      472 GETUPVAL                         R33 14
      473 LOADK                            R34 K88 ["TextLabel"]
      474 NEWTABLE                         R35 2 0
      476 LOADK                            R38 K24 ["Plugin"]
      477 LOADK                            R39 K89 ["TabLocation"]
      478 NAMECALL                         R36 R4 K26 ["getText"]
      480 CALL                             R36 3 1
      481 SETTABLEKS                       R36 R35 K21 ["Text"]
      483 GETUPVAL                         R36 15
      484 GETTABLEKS                       R36 R36 K33 ["Tag"]
      486 LOADK                            R37 K90 ["Role-Surface Role-Text Text-Label X-Fit"]
      487 SETTABLE                         R37 R35 R36
      488 CALL                             R33 2 1
      489 SETTABLEKS                       R33 R32 K84 ["Label"]
      491 GETUPVAL                         R33 15
      492 GETTABLEKS                       R33 R33 K91 ["createElement"]
      494 LOADK                            R34 K31 ["Frame"]
      495 NEWTABLE                         R35 2 0
      497 MOVE                             R36 R15
      498 CALL                             R36 0 1
      499 SETTABLEKS                       R36 R35 K32 ["LayoutOrder"]
      501 GETUPVAL                         R36 15
      502 GETTABLEKS                       R36 R36 K33 ["Tag"]
      504 LOADK                            R37 K92 ["Role-Surface X-FitY"]
      505 SETTABLE                         R37 R35 R36
      506 CALL                             R33 2 1
      507 SETTABLEKS                       R33 R32 K85 ["Spacer"]
      509 GETUPVAL                         R33 14
      510 GETUPVAL                         R34 20
      511 NEWTABLE                         R35 8 0
      513 MOVE                             R36 R15
      514 CALL                             R36 0 1
      515 SETTABLEKS                       R36 R35 K32 ["LayoutOrder"]
      517 SETTABLEKS                       R19 R35 K47 ["Uri"]
      519 SETTABLEKS                       R21 R35 K93 ["MenuData"]
      521 SETTABLEKS                       R20 R35 K51 ["OnSelect"]
      523 SETTABLEKS                       R22 R35 K21 ["Text"]
      525 GETUPVAL                         R36 15
      526 GETTABLEKS                       R36 R36 K33 ["Tag"]
      528 LOADK                            R37 K94 ["Size-Large"]
      529 SETTABLE                         R37 R35 R36
      530 CALL                             R33 2 1
      531 SETTABLEKS                       R33 R32 K86 ["Input"]
      533 CALL                             R29 3 1
      534 SETTABLEKS                       R29 R28 K37 ["Alignment"]
      536 CALL                             R25 3 -1
      537 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETTABLEKS                       R3 R1 K9 ["useCallback"]
       18 GETTABLEKS                       R4 R1 K10 ["useContext"]
       20 GETTABLEKS                       R5 R1 K11 ["useMemo"]
       22 GETTABLEKS                       R6 R1 K12 ["useState"]
       24 GETIMPORT                        R7 K5 [require]
       26 GETTABLEKS                       R8 R0 K13 ["Src"]
       28 GETTABLEKS                       R8 R8 K14 ["Contexts"]
       30 GETTABLEKS                       R8 R8 K15 ["RibbonDefinition"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R9 R0 K13 ["Src"]
       37 GETTABLEKS                       R9 R9 K16 ["Components"]
       39 GETTABLEKS                       R9 R9 K17 ["RibbonButton"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K13 ["Src"]
       46 GETTABLEKS                       R10 R10 K16 ["Components"]
       48 GETTABLEKS                       R10 R10 K18 ["RibbonSelectInput"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K13 ["Src"]
       55 GETTABLEKS                       R11 R11 K16 ["Components"]
       57 GETTABLEKS                       R11 R11 K19 ["ManageTabs"]
       59 GETTABLEKS                       R11 R11 K20 ["TabRow"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R0 K13 ["Src"]
       66 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       68 GETTABLEKS                       R12 R12 K22 ["useSelectionMenuView"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R13 R0 K13 ["Src"]
       75 GETTABLEKS                       R13 R13 K14 ["Contexts"]
       77 GETTABLEKS                       R13 R13 K23 ["TabLocation"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K5 [require]
       82 GETTABLEKS                       R14 R0 K13 ["Src"]
       84 GETTABLEKS                       R14 R14 K24 ["Util"]
       86 GETTABLEKS                       R14 R14 K25 ["controlsIdentifierToString"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K5 [require]
       91 GETTABLEKS                       R15 R0 K6 ["Packages"]
       93 GETTABLEKS                       R15 R15 K26 ["StudioFoundation"]
       95 CALL                             R14 1 1
       96 GETTABLEKS                       R15 R14 K24 ["Util"]
       98 GETTABLEKS                       R15 R15 K27 ["StudioUri"]
      100 GETIMPORT                        R16 K5 [require]
      102 GETTABLEKS                       R17 R0 K6 ["Packages"]
      104 GETTABLEKS                       R17 R17 K28 ["Dash"]
      106 CALL                             R16 1 1
      107 GETTABLEKS                       R17 R16 K29 ["find"]
      109 GETTABLEKS                       R18 R16 K30 ["map"]
      111 GETIMPORT                        R19 K5 [require]
      113 GETTABLEKS                       R20 R0 K6 ["Packages"]
      115 GETTABLEKS                       R20 R20 K31 ["Framework"]
      117 CALL                             R19 1 1
      118 GETTABLEKS                       R20 R19 K32 ["UI"]
      120 GETTABLEKS                       R21 R20 K33 ["TreeView"]
      122 GETTABLEKS                       R22 R19 K24 ["Util"]
      124 GETTABLEKS                       R22 R22 K34 ["counter"]
      126 GETTABLEKS                       R23 R19 K35 ["ContextServices"]
      128 GETTABLEKS                       R24 R23 K36 ["Plugin"]
      130 GETTABLEKS                       R25 R19 K35 ["ContextServices"]
      132 GETTABLEKS                       R25 R25 K37 ["Localization"]
      134 GETIMPORT                        R26 K5 [require]
      136 GETTABLEKS                       R27 R0 K13 ["Src"]
      138 GETTABLEKS                       R27 R27 K38 ["Types"]
      140 CALL                             R26 1 1
      141 GETIMPORT                        R27 K41 [UDim2.new]
      143 LOADN                            R28 0
      144 LOADN                            R29 22
      145 LOADN                            R30 0
      146 LOADN                            R31 221
      147 CALL                             R27 4 1
      148 DUPCLOSURE                       R28 K42 [PROTO_8]
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R24
      152 CAPTURE                          VAL R25
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R27
      169 CAPTURE                          VAL R9
      170 RETURN                           R28 1
