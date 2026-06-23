PROTO_0:
        0 DUPTABLE                         R1 K2 [{"easingStyle", "duration"}]
        1 GETTABLEKS                       R2 R0 K3 ["Ease"]
        3 GETTABLEKS                       R2 R2 K4 ["StandardOut"]
        5 SETTABLEKS                       R2 R1 K0 ["easingStyle"]
        7 GETTABLEKS                       R2 R0 K5 ["Time"]
        9 GETTABLEKS                       R2 R2 K6 ["Time_300"]
       11 SETTABLEKS                       R2 R1 K1 ["duration"]
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R0 K2 [{"easingStyle", "duration"}]
        2 GETTABLEKS                       R2 R1 K3 ["Ease"]
        4 GETTABLEKS                       R2 R2 K4 ["StandardOut"]
        6 SETTABLEKS                       R2 R0 K0 ["easingStyle"]
        8 GETTABLEKS                       R2 R1 K5 ["Time"]
       10 GETTABLEKS                       R2 R2 K6 ["Time_300"]
       12 SETTABLEKS                       R2 R0 K1 ["duration"]
       14 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K0 ["current"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+22]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["instant"]
        6 LOADN                            R2 0
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K0 ["instant"]
       13 LOADN                            R2 0
       14 CALL                             R1 1 1
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 LOADB                            R1 0
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 5
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K1 ["current"]
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 5
       25 LOADB                            R1 1
       26 SETTABLEKS                       R1 R0 K1 ["current"]
       28 GETUPVAL                         R0 1
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R1 R1 K2 ["ease"]
       32 LOADN                            R2 0
       33 GETUPVAL                         R3 6
       34 CALL                             R1 2 -1
       35 CALL                             R0 -1 0
       36 GETUPVAL                         R0 3
       37 GETUPVAL                         R1 2
       38 GETTABLEKS                       R1 R1 K2 ["ease"]
       40 LOADN                            R2 0
       41 GETUPVAL                         R3 6
       42 CALL                             R1 2 -1
       43 CALL                             R0 -1 0
       44 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+36]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+32]
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+30]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+14]
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R1 4
       12 GETTABLEKS                       R1 R1 K1 ["instant"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["current"]
       17 GETTABLEKS                       R2 R2 K2 ["AbsoluteSize"]
       19 GETTABLEKS                       R2 R2 K3 ["Y"]
       21 CALL                             R1 1 1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 3
       25 GETUPVAL                         R1 4
       26 GETTABLEKS                       R1 R1 K4 ["ease"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K0 ["current"]
       31 GETTABLEKS                       R2 R2 K2 ["AbsoluteSize"]
       33 GETTABLEKS                       R2 R2 K3 ["Y"]
       35 GETUPVAL                         R3 5
       36 CALL                             R1 2 -1
       37 CALL                             R0 -1 0
       38 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["isExpanded"]
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["isExpanded"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R1 R1 K0 ["instant"]
        8 LOADN                            R2 76
        9 CALL                             R1 1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K1 ["ease"]
       16 LOADN                            R2 76
       17 GETUPVAL                         R3 4
       18 CALL                             R1 2 -1
       19 CALL                             R0 -1 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETTABLEKS                       R5 R4 K0 ["reducedMotion"]
       10 GETUPVAL                         R6 4
       11 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R8 0 1
       17 MOVE                             R9 R3
       18 SETLIST                          R8 R9 1 [1]
       20 CALL                             R6 2 1
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R7 R7 K2 ["useState"]
       24 GETTABLEKS                       R8 R2 K3 ["isExpanded"]
       26 CALL                             R7 1 2
       27 GETUPVAL                         R9 4
       28 GETTABLEKS                       R9 R9 K4 ["useRef"]
       30 LOADB                            R10 0
       31 CALL                             R9 1 1
       32 GETUPVAL                         R10 5
       33 GETTABLEKS                       R10 R10 K5 ["useAnimatedBinding"]
       35 LOADN                            R11 0
       36 CALL                             R10 1 2
       37 GETUPVAL                         R12 5
       38 GETTABLEKS                       R12 R12 K5 ["useAnimatedBinding"]
       40 LOADN                            R13 0
       41 NEWCLOSURE                       R14 P1
       42 CAPTURE                          VAL R9
       43 CAPTURE                          VAL R8
       44 CALL                             R12 2 2
       45 GETUPVAL                         R14 4
       46 GETTABLEKS                       R14 R14 K4 ["useRef"]
       48 LOADNIL                          R15
       49 CALL                             R14 1 1
       50 GETUPVAL                         R15 4
       51 GETTABLEKS                       R15 R15 K6 ["useCallback"]
       53 NEWCLOSURE                       R16 P2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R13
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R6
       61 NEWTABLE                         R17 0 2
       63 MOVE                             R18 R5
       64 MOVE                             R19 R6
       65 SETLIST                          R17 R18 2 [1]
       67 CALL                             R15 2 1
       68 GETUPVAL                         R16 4
       69 GETTABLEKS                       R16 R16 K6 ["useCallback"]
       71 NEWCLOSURE                       R17 P3
       72 CAPTURE                          VAL R14
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R13
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          VAL R6
       78 NEWTABLE                         R18 0 4
       80 MOVE                             R19 R14
       81 MOVE                             R20 R7
       82 MOVE                             R21 R5
       83 MOVE                             R22 R6
       84 SETLIST                          R18 R19 4 [1]
       86 CALL                             R16 2 1
       87 GETUPVAL                         R17 4
       88 GETTABLEKS                       R17 R17 K7 ["useEffect"]
       90 NEWCLOSURE                       R18 P4
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R8
       95 NEWTABLE                         R19 0 1
       97 GETTABLEKS                       R20 R2 K3 ["isExpanded"]
       99 SETLIST                          R19 R20 1 [1]
      101 CALL                             R17 2 0
      102 GETUPVAL                         R17 4
      103 GETTABLEKS                       R17 R17 K7 ["useEffect"]
      105 NEWCLOSURE                       R18 P5
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R11
      109 CAPTURE                          UPVAL U5
      110 CAPTURE                          VAL R6
      111 NEWTABLE                         R19 0 3
      113 MOVE                             R20 R7
      114 MOVE                             R21 R5
      115 MOVE                             R22 R6
      116 SETLIST                          R19 R20 3 [1]
      118 CALL                             R17 2 0
      119 GETUPVAL                         R17 6
      120 CALL                             R17 0 1
      121 GETTABLEKS                       R18 R17 K8 ["onAccordionItemActivated"]
      123 GETTABLEKS                       R19 R17 K9 ["itemSize"]
      125 GETUPVAL                         R20 7
      126 MOVE                             R21 R3
      127 MOVE                             R22 R19
      128 LOADB                            R23 0
      129 CALL                             R20 3 1
      130 GETUPVAL                         R21 4
      131 GETTABLEKS                       R21 R21 K6 ["useCallback"]
      133 NEWCLOSURE                       R22 P6
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R8
      137 NEWTABLE                         R23 0 1
      139 MOVE                             R24 R7
      140 SETLIST                          R23 R24 1 [1]
      142 CALL                             R21 2 1
      143 GETTABLEKS                       R23 R2 K10 ["onActivated"]
      145 JUMPIFNOT                        R23 ; [+3]
      146 GETTABLEKS                       R22 R2 K10 ["onActivated"]
      148 JUMP                             ; [+8]
      149 JUMPIFNOT                        R18 ; [+6]
      150 MOVE                             R22 R18
      151 GETTABLEKS                       R23 R2 K11 ["id"]
      153 MOVE                             R24 R7
      154 CALL                             R22 2 1
      155 JUMP                             ; [+1]
      156 MOVE                             R22 R21
      157 LOADK                            R24 K12 ["%*--item-%*"]
      158 GETTABLEKS                       R26 R17 K13 ["testId"]
      160 GETTABLEKS                       R27 R2 K11 ["id"]
      162 NAMECALL                         R24 R24 K14 ["format"]
      164 CALL                             R24 3 1
      165 MOVE                             R23 R24
      166 SETTABLEKS                       R23 R2 K13 ["testId"]
      168 GETUPVAL                         R23 4
      169 GETTABLEKS                       R23 R23 K15 ["createElement"]
      171 GETUPVAL                         R24 8
      172 GETUPVAL                         R25 9
      173 MOVE                             R26 R2
      174 DUPTABLE                         R27 K20 [{"tag", "AutomaticSize", "stateLayer", "ref"}]
      175 GETTABLEKS                       R28 R20 K21 ["container"]
      177 GETTABLEKS                       R28 R28 K16 ["tag"]
      179 SETTABLEKS                       R28 R27 K16 ["tag"]
      181 GETIMPORT                        R28 K24 [Enum.AutomaticSize.Y]
      183 SETTABLEKS                       R28 R27 K17 ["AutomaticSize"]
      185 GETTABLEKS                       R28 R20 K21 ["container"]
      187 GETTABLEKS                       R28 R28 K18 ["stateLayer"]
      189 SETTABLEKS                       R28 R27 K18 ["stateLayer"]
      191 SETTABLEKS                       R1 R27 K19 ["ref"]
      193 CALL                             R25 2 1
      194 DUPTABLE                         R26 K28 [{"Header", "Content", "Divider"}]
      195 GETUPVAL                         R27 4
      196 GETTABLEKS                       R27 R27 K15 ["createElement"]
      198 GETUPVAL                         R28 8
      199 DUPTABLE                         R29 K30 [{"LayoutOrder", "tag", "onActivated", "testId"}]
      200 LOADN                            R30 1
      201 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      203 GETTABLEKS                       R30 R20 K31 ["header"]
      205 GETTABLEKS                       R30 R30 K16 ["tag"]
      207 SETTABLEKS                       R30 R29 K16 ["tag"]
      209 SETTABLEKS                       R22 R29 K10 ["onActivated"]
      211 LOADK                            R31 K32 ["%*--header"]
      212 GETTABLEKS                       R33 R2 K13 ["testId"]
      214 NAMECALL                         R31 R31 K14 ["format"]
      216 CALL                             R31 2 1
      217 MOVE                             R30 R31
      218 SETTABLEKS                       R30 R29 K13 ["testId"]
      220 DUPTABLE                         R30 K36 [{"LeadingIcon", "Title", "CollapseIcon"}]
      221 GETTABLEKS                       R32 R2 K37 ["leadingIcon"]
      223 JUMPIFNOT                        R32 ; [+64]
      224 GETUPVAL                         R31 4
      225 GETTABLEKS                       R31 R31 K15 ["createElement"]
      227 GETUPVAL                         R32 10
      228 DUPTABLE                         R33 K42 [{"LayoutOrder", "name", "variant", "style", "size", "testId"}]
      229 LOADN                            R34 1
      230 SETTABLEKS                       R34 R33 K29 ["LayoutOrder"]
      232 GETTABLEKS                       R36 R2 K37 ["leadingIcon"]
      234 FASTCALL1                        TYPE R36 ; [+2]
      235 GETIMPORT                        R35 K44 [type]
      237 CALL                             R35 1 1
      238 JUMPIFNOTEQKS                    R35 K45 ["table"] ; [+6]
      240 GETTABLEKS                       R34 R2 K37 ["leadingIcon"]
      242 GETTABLEKS                       R34 R34 K38 ["name"]
      244 JUMP                             ; [+2]
      245 GETTABLEKS                       R34 R2 K37 ["leadingIcon"]
      247 SETTABLEKS                       R34 R33 K38 ["name"]
      249 GETTABLEKS                       R36 R2 K37 ["leadingIcon"]
      251 FASTCALL1                        TYPE R36 ; [+2]
      252 GETIMPORT                        R35 K44 [type]
      254 CALL                             R35 1 1
      255 JUMPIFNOTEQKS                    R35 K45 ["table"] ; [+6]
      257 GETTABLEKS                       R34 R2 K37 ["leadingIcon"]
      259 GETTABLEKS                       R34 R34 K39 ["variant"]
      261 JUMP                             ; [+1]
      262 LOADNIL                          R34
      263 SETTABLEKS                       R34 R33 K39 ["variant"]
      265 GETTABLEKS                       R34 R20 K46 ["icon"]
      267 GETTABLEKS                       R34 R34 K40 ["style"]
      269 SETTABLEKS                       R34 R33 K40 ["style"]
      271 GETTABLEKS                       R34 R20 K46 ["icon"]
      273 GETTABLEKS                       R34 R34 K41 ["size"]
      275 SETTABLEKS                       R34 R33 K41 ["size"]
      277 LOADK                            R35 K47 ["%*--leading-icon"]
      278 GETTABLEKS                       R37 R2 K13 ["testId"]
      280 NAMECALL                         R35 R35 K14 ["format"]
      282 CALL                             R35 2 1
      283 MOVE                             R34 R35
      284 SETTABLEKS                       R34 R33 K13 ["testId"]
      286 CALL                             R31 2 1
      287 JUMP                             ; [+1]
      288 LOADNIL                          R31
      289 SETTABLEKS                       R31 R30 K33 ["LeadingIcon"]
      291 GETUPVAL                         R31 4
      292 GETTABLEKS                       R31 R31 K15 ["createElement"]
      294 GETUPVAL                         R32 11
      295 DUPTABLE                         R33 K49 [{"LayoutOrder", "Text", "tag", "testId"}]
      296 LOADN                            R34 2
      297 SETTABLEKS                       R34 R33 K29 ["LayoutOrder"]
      299 GETTABLEKS                       R34 R2 K50 ["text"]
      301 SETTABLEKS                       R34 R33 K48 ["Text"]
      303 GETTABLEKS                       R34 R20 K50 ["text"]
      305 GETTABLEKS                       R34 R34 K16 ["tag"]
      307 SETTABLEKS                       R34 R33 K16 ["tag"]
      309 LOADK                            R35 K51 ["%*--title"]
      310 GETTABLEKS                       R37 R2 K13 ["testId"]
      312 NAMECALL                         R35 R35 K14 ["format"]
      314 CALL                             R35 2 1
      315 MOVE                             R34 R35
      316 SETTABLEKS                       R34 R33 K13 ["testId"]
      318 CALL                             R31 2 1
      319 SETTABLEKS                       R31 R30 K34 ["Title"]
      321 GETUPVAL                         R31 4
      322 GETTABLEKS                       R31 R31 K15 ["createElement"]
      324 GETUPVAL                         R32 8
      325 DUPTABLE                         R33 K52 [{"tag", "LayoutOrder"}]
      326 LOADK                            R34 K53 ["auto-xy"]
      327 SETTABLEKS                       R34 R33 K16 ["tag"]
      329 LOADN                            R34 3
      330 SETTABLEKS                       R34 R33 K29 ["LayoutOrder"]
      332 DUPTABLE                         R34 K55 [{"Icon"}]
      333 GETUPVAL                         R35 4
      334 GETTABLEKS                       R35 R35 K15 ["createElement"]
      336 GETUPVAL                         R36 10
      337 DUPTABLE                         R37 K57 [{"name", "Rotation", "style", "size", "testId"}]
      338 LOADK                            R38 K58 ["chevron-large-down"]
      339 SETTABLEKS                       R38 R37 K38 ["name"]
      341 SETTABLEKS                       R10 R37 K56 ["Rotation"]
      343 GETTABLEKS                       R38 R20 K46 ["icon"]
      345 GETTABLEKS                       R38 R38 K40 ["style"]
      347 SETTABLEKS                       R38 R37 K40 ["style"]
      349 GETTABLEKS                       R38 R20 K46 ["icon"]
      351 GETTABLEKS                       R38 R38 K41 ["size"]
      353 SETTABLEKS                       R38 R37 K41 ["size"]
      355 LOADK                            R39 K59 ["%*--collapse-icon"]
      356 GETTABLEKS                       R41 R2 K13 ["testId"]
      358 NAMECALL                         R39 R39 K14 ["format"]
      360 CALL                             R39 2 1
      361 MOVE                             R38 R39
      362 SETTABLEKS                       R38 R37 K13 ["testId"]
      364 CALL                             R35 2 1
      365 SETTABLEKS                       R35 R34 K54 ["Icon"]
      367 CALL                             R31 3 1
      368 SETTABLEKS                       R31 R30 K35 ["CollapseIcon"]
      370 CALL                             R27 3 1
      371 SETTABLEKS                       R27 R26 K25 ["Header"]
      373 JUMPIFNOT                        R7 ; [+75]
      374 GETUPVAL                         R27 4
      375 GETTABLEKS                       R27 R27 K15 ["createElement"]
      377 GETUPVAL                         R28 8
      378 DUPTABLE                         R29 K62 [{"tag", "LayoutOrder", "testId", "Size", "ClipsDescendants"}]
      379 LOADK                            R30 K63 ["col"]
      380 SETTABLEKS                       R30 R29 K16 ["tag"]
      382 LOADN                            R30 2
      383 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      385 LOADK                            R31 K64 ["%*--content"]
      386 GETTABLEKS                       R33 R2 K13 ["testId"]
      388 NAMECALL                         R31 R31 K14 ["format"]
      390 CALL                             R31 2 1
      391 MOVE                             R30 R31
      392 SETTABLEKS                       R30 R29 K13 ["testId"]
      394 JUMPIFNOT                        R12 ; [+5]
      395 DUPCLOSURE                       R32 K65 [PROTO_8]
      396 NAMECALL                         R30 R12 K66 ["map"]
      398 CALL                             R30 2 1
      399 JUMP                             ; [+1]
      400 LOADNIL                          R30
      401 SETTABLEKS                       R30 R29 K60 ["Size"]
      403 LOADB                            R30 1
      404 SETTABLEKS                       R30 R29 K61 ["ClipsDescendants"]
      406 DUPTABLE                         R30 K68 [{"AnimatedContainer"}]
      407 GETUPVAL                         R31 4
      408 GETTABLEKS                       R31 R31 K15 ["createElement"]
      410 GETUPVAL                         R32 8
      411 DUPTABLE                         R33 K71 [{"tag", "ref", "onAbsoluteSizeChanged", "flexItem", "testId"}]
      412 GETTABLEKS                       R34 R20 K72 ["content"]
      414 GETTABLEKS                       R34 R34 K16 ["tag"]
      416 SETTABLEKS                       R34 R33 K16 ["tag"]
      418 SETTABLEKS                       R14 R33 K19 ["ref"]
      420 SETTABLEKS                       R16 R33 K69 ["onAbsoluteSizeChanged"]
      422 DUPTABLE                         R34 K74 [{"FlexMode"}]
      423 GETIMPORT                        R35 K77 [Enum.UIFlexMode.None]
      425 SETTABLEKS                       R35 R34 K73 ["FlexMode"]
      427 SETTABLEKS                       R34 R33 K70 ["flexItem"]
      429 LOADK                            R35 K78 ["%*--animated-content"]
      430 GETTABLEKS                       R37 R2 K13 ["testId"]
      432 NAMECALL                         R35 R35 K14 ["format"]
      434 CALL                             R35 2 1
      435 MOVE                             R34 R35
      436 SETTABLEKS                       R34 R33 K13 ["testId"]
      438 NEWTABLE                         R34 0 1
      440 GETTABLEKS                       R35 R2 K79 ["children"]
      442 SETLIST                          R34 R35 1 [1]
      444 CALL                             R31 3 1
      445 SETTABLEKS                       R31 R30 K67 ["AnimatedContainer"]
      447 CALL                             R27 3 1
      448 JUMP                             ; [+1]
      449 LOADNIL                          R27
      450 SETTABLEKS                       R27 R26 K26 ["Content"]
      452 GETTABLEKS                       R28 R2 K80 ["hasDivider"]
      454 JUMPIFNOT                        R28 ; [+19]
      455 GETUPVAL                         R27 4
      456 GETTABLEKS                       R27 R27 K15 ["createElement"]
      458 GETUPVAL                         R28 12
      459 DUPTABLE                         R29 K81 [{"LayoutOrder", "testId"}]
      460 LOADN                            R30 3
      461 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      463 LOADK                            R31 K82 ["%*--divider"]
      464 GETTABLEKS                       R33 R2 K13 ["testId"]
      466 NAMECALL                         R31 R31 K14 ["format"]
      468 CALL                             R31 2 1
      469 MOVE                             R30 R31
      470 SETTABLEKS                       R30 R29 K13 ["testId"]
      472 CALL                             R27 2 1
      473 JUMP                             ; [+1]
      474 LOADNIL                          R27
      475 SETTABLEKS                       R27 R26 K27 ["Divider"]
      477 CALL                             R23 3 -1
      478 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Otter"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactOtter"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Components"]
       33 GETTABLEKS                       R7 R7 K12 ["Divider"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K11 ["Components"]
       40 GETTABLEKS                       R8 R8 K13 ["Icon"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K11 ["Components"]
       47 GETTABLEKS                       R9 R9 K14 ["Text"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K11 ["Components"]
       54 GETTABLEKS                       R10 R10 K15 ["Types"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Components"]
       61 GETTABLEKS                       R11 R11 K16 ["View"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K17 ["Providers"]
       68 GETTABLEKS                       R12 R12 K18 ["Preferences"]
       70 GETTABLEKS                       R12 R12 K19 ["usePreferences"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K20 ["Utility"]
       77 GETTABLEKS                       R13 R13 K21 ["withCommonProps"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K20 ["Utility"]
       84 GETTABLEKS                       R14 R14 K22 ["withDefaults"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETIMPORT                        R15 K1 [script]
       91 GETTABLEKS                       R15 R15 K4 ["Parent"]
       93 GETTABLEKS                       R15 R15 K4 ["Parent"]
       95 GETTABLEKS                       R15 R15 K23 ["useAccordion"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K17 ["Providers"]
      102 GETTABLEKS                       R16 R16 K24 ["Style"]
      104 GETTABLEKS                       R16 R16 K25 ["useTokens"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R17 R0 K26 ["Enums"]
      111 GETTABLEKS                       R17 R17 K27 ["InputSize"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R18 R0 K17 ["Providers"]
      118 GETTABLEKS                       R18 R18 K24 ["Style"]
      120 GETTABLEKS                       R18 R18 K28 ["Tokens"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K6 [require]
      125 GETIMPORT                        R19 K1 [script]
      127 GETTABLEKS                       R19 R19 K4 ["Parent"]
      129 GETTABLEKS                       R19 R19 K4 ["Parent"]
      131 GETTABLEKS                       R19 R19 K29 ["useAccordionItemVariants"]
      133 CALL                             R18 1 1
      134 DUPTABLE                         R19 K32 [{"hasDivider", "isExpanded"}]
      135 LOADB                            R20 1
      136 SETTABLEKS                       R20 R19 K30 ["hasDivider"]
      138 LOADB                            R20 0
      139 SETTABLEKS                       R20 R19 K31 ["isExpanded"]
      141 DUPCLOSURE                       R20 K33 [PROTO_0]
      142 DUPCLOSURE                       R21 K34 [PROTO_9]
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R6
      156 GETTABLEKS                       R22 R4 K35 ["memo"]
      158 GETTABLEKS                       R23 R4 K36 ["forwardRef"]
      160 MOVE                             R24 R21
      161 CALL                             R23 1 -1
      162 CALL                             R22 -1 -1
      163 RETURN                           R22 -1
