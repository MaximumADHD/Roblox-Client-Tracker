PROTO_0:
        0 DUPTABLE                         R1 K3 [{"easingStyle", "duration", "startingValue"}]
        1 GETTABLEKS                       R3 R0 K4 ["Ease"]
        3 GETTABLEKS                       R2 R3 K5 ["StandardOut"]
        5 SETTABLEKS                       R2 R1 K0 ["easingStyle"]
        7 GETTABLEKS                       R3 R0 K6 ["Time"]
        9 GETTABLEKS                       R2 R3 K7 ["Time_300"]
       11 SETTABLEKS                       R2 R1 K1 ["duration"]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K2 ["startingValue"]
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R0 K3 [{"easingStyle", "duration", "startingValue"}]
        2 GETTABLEKS                       R3 R1 K4 ["Ease"]
        4 GETTABLEKS                       R2 R3 K5 ["StandardOut"]
        6 SETTABLEKS                       R2 R0 K0 ["easingStyle"]
        8 GETTABLEKS                       R3 R1 K6 ["Time"]
       10 GETTABLEKS                       R2 R3 K7 ["Time_300"]
       12 SETTABLEKS                       R2 R0 K1 ["duration"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R0 K2 ["startingValue"]
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["ease"]
        8 LOADN                            R2 0
        9 GETUPVAL                         R3 3
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 4
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K1 ["ease"]
       16 LOADN                            R2 0
       17 GETUPVAL                         R3 3
       18 CALL                             R1 2 -1
       19 CALL                             R0 -1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+20]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+16]
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+14]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["ease"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["current"]
       15 GETTABLEKS                       R3 R4 K2 ["AbsoluteSize"]
       17 GETTABLEKS                       R2 R3 K3 ["Y"]
       19 GETUPVAL                         R3 4
       20 CALL                             R1 2 -1
       21 CALL                             R0 -1 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["isExpanded"]
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K0 ["isExpanded"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["ease"]
        6 LOADN                            R2 76
        7 GETUPVAL                         R3 3
        8 CALL                             R1 2 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

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
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useMemo"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R3
       11 NEWTABLE                         R6 0 1
       13 MOVE                             R7 R3
       14 SETLIST                          R6 R7 1 [1]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K1 ["useState"]
       20 GETTABLEKS                       R6 R2 K2 ["isExpanded"]
       22 CALL                             R5 1 2
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R7 R8 K3 ["useRef"]
       26 LOADB                            R8 0
       27 CALL                             R7 1 1
       28 GETUPVAL                         R9 4
       29 GETTABLEKS                       R8 R9 K4 ["useAnimatedBinding"]
       31 LOADN                            R9 0
       32 CALL                             R8 1 2
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R10 R11 K4 ["useAnimatedBinding"]
       36 LOADN                            R11 0
       37 NEWCLOSURE                       R12 P1
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R6
       40 CALL                             R10 2 2
       41 GETUPVAL                         R13 3
       42 GETTABLEKS                       R12 R13 K3 ["useRef"]
       44 LOADNIL                          R13
       45 CALL                             R12 1 1
       46 GETUPVAL                         R14 3
       47 GETTABLEKS                       R13 R14 K5 ["useCallback"]
       49 NEWCLOSURE                       R14 P2
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R11
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R9
       55 NEWTABLE                         R15 0 0
       57 CALL                             R13 2 1
       58 GETUPVAL                         R15 3
       59 GETTABLEKS                       R14 R15 K5 ["useCallback"]
       61 NEWCLOSURE                       R15 P3
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R11
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R4
       67 NEWTABLE                         R16 0 2
       69 MOVE                             R17 R12
       70 MOVE                             R18 R5
       71 SETLIST                          R16 R17 2 [1]
       73 CALL                             R14 2 1
       74 GETUPVAL                         R16 3
       75 GETTABLEKS                       R15 R16 K6 ["useEffect"]
       77 NEWCLOSURE                       R16 P4
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R6
       82 NEWTABLE                         R17 0 1
       84 GETTABLEKS                       R18 R2 K2 ["isExpanded"]
       86 SETLIST                          R17 R18 1 [1]
       88 CALL                             R15 2 0
       89 GETUPVAL                         R16 3
       90 GETTABLEKS                       R15 R16 K6 ["useEffect"]
       92 NEWCLOSURE                       R16 P5
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R9
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          VAL R4
       97 NEWTABLE                         R17 0 1
       99 MOVE                             R18 R5
      100 SETLIST                          R17 R18 1 [1]
      102 CALL                             R15 2 0
      103 GETUPVAL                         R15 5
      104 CALL                             R15 0 1
      105 GETTABLEKS                       R16 R15 K7 ["onAccordionItemActivated"]
      107 GETTABLEKS                       R17 R15 K8 ["itemSize"]
      109 GETUPVAL                         R18 6
      110 MOVE                             R19 R3
      111 MOVE                             R20 R17
      112 LOADB                            R21 0
      113 CALL                             R18 3 1
      114 GETUPVAL                         R20 3
      115 GETTABLEKS                       R19 R20 K5 ["useCallback"]
      117 NEWCLOSURE                       R20 P6
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R6
      121 NEWTABLE                         R21 0 1
      123 MOVE                             R22 R5
      124 SETLIST                          R21 R22 1 [1]
      126 CALL                             R19 2 1
      127 GETTABLEKS                       R21 R2 K9 ["onActivated"]
      129 JUMPIFNOT                        R21 ; [+3]
      130 GETTABLEKS                       R20 R2 K9 ["onActivated"]
      132 JUMP                             ; [+8]
      133 JUMPIFNOT                        R16 ; [+6]
      134 MOVE                             R20 R16
      135 GETTABLEKS                       R21 R2 K10 ["id"]
      137 MOVE                             R22 R5
      138 CALL                             R20 2 1
      139 JUMP                             ; [+1]
      140 MOVE                             R20 R19
      141 LOADK                            R22 K11 ["%*--item-%*"]
      142 GETTABLEKS                       R24 R15 K12 ["testId"]
      144 GETTABLEKS                       R25 R2 K10 ["id"]
      146 NAMECALL                         R22 R22 K13 ["format"]
      148 CALL                             R22 3 1
      149 MOVE                             R21 R22
      150 SETTABLEKS                       R21 R2 K12 ["testId"]
      152 GETUPVAL                         R22 3
      153 GETTABLEKS                       R21 R22 K14 ["createElement"]
      155 GETUPVAL                         R22 7
      156 GETUPVAL                         R23 8
      157 MOVE                             R24 R2
      158 DUPTABLE                         R25 K19 [{"tag", "AutomaticSize", "stateLayer", "ref"}]
      159 GETTABLEKS                       R27 R18 K20 ["container"]
      161 GETTABLEKS                       R26 R27 K15 ["tag"]
      163 SETTABLEKS                       R26 R25 K15 ["tag"]
      165 GETIMPORT                        R26 K23 [Enum.AutomaticSize.Y]
      167 SETTABLEKS                       R26 R25 K16 ["AutomaticSize"]
      169 GETTABLEKS                       R27 R18 K20 ["container"]
      171 GETTABLEKS                       R26 R27 K17 ["stateLayer"]
      173 SETTABLEKS                       R26 R25 K17 ["stateLayer"]
      175 SETTABLEKS                       R1 R25 K18 ["ref"]
      177 CALL                             R23 2 1
      178 DUPTABLE                         R24 K27 [{"Header", "Content", "Divider"}]
      179 GETUPVAL                         R26 3
      180 GETTABLEKS                       R25 R26 K14 ["createElement"]
      182 GETUPVAL                         R26 7
      183 DUPTABLE                         R27 K29 [{"LayoutOrder", "tag", "onActivated", "testId"}]
      184 LOADN                            R28 1
      185 SETTABLEKS                       R28 R27 K28 ["LayoutOrder"]
      187 GETTABLEKS                       R29 R18 K30 ["header"]
      189 GETTABLEKS                       R28 R29 K15 ["tag"]
      191 SETTABLEKS                       R28 R27 K15 ["tag"]
      193 SETTABLEKS                       R20 R27 K9 ["onActivated"]
      195 LOADK                            R29 K31 ["%*--header"]
      196 GETTABLEKS                       R31 R2 K12 ["testId"]
      198 NAMECALL                         R29 R29 K13 ["format"]
      200 CALL                             R29 2 1
      201 MOVE                             R28 R29
      202 SETTABLEKS                       R28 R27 K12 ["testId"]
      204 DUPTABLE                         R28 K35 [{"LeadingIcon", "Title", "CollapseIcon"}]
      205 GETTABLEKS                       R30 R2 K36 ["leadingIcon"]
      207 JUMPIFNOT                        R30 ; [+64]
      208 GETUPVAL                         R30 3
      209 GETTABLEKS                       R29 R30 K14 ["createElement"]
      211 GETUPVAL                         R30 9
      212 DUPTABLE                         R31 K41 [{"LayoutOrder", "name", "variant", "style", "size", "testId"}]
      213 LOADN                            R32 1
      214 SETTABLEKS                       R32 R31 K28 ["LayoutOrder"]
      216 GETTABLEKS                       R34 R2 K36 ["leadingIcon"]
      218 FASTCALL1                        TYPE R34 ; [+2]
      219 GETIMPORT                        R33 K43 [type]
      221 CALL                             R33 1 1
      222 JUMPIFNOTEQKS                    R33 K44 ["table"] ; [+6]
      224 GETTABLEKS                       R33 R2 K36 ["leadingIcon"]
      226 GETTABLEKS                       R32 R33 K37 ["name"]
      228 JUMP                             ; [+2]
      229 GETTABLEKS                       R32 R2 K36 ["leadingIcon"]
      231 SETTABLEKS                       R32 R31 K37 ["name"]
      233 GETTABLEKS                       R34 R2 K36 ["leadingIcon"]
      235 FASTCALL1                        TYPE R34 ; [+2]
      236 GETIMPORT                        R33 K43 [type]
      238 CALL                             R33 1 1
      239 JUMPIFNOTEQKS                    R33 K44 ["table"] ; [+6]
      241 GETTABLEKS                       R33 R2 K36 ["leadingIcon"]
      243 GETTABLEKS                       R32 R33 K38 ["variant"]
      245 JUMP                             ; [+1]
      246 LOADNIL                          R32
      247 SETTABLEKS                       R32 R31 K38 ["variant"]
      249 GETTABLEKS                       R33 R18 K45 ["icon"]
      251 GETTABLEKS                       R32 R33 K39 ["style"]
      253 SETTABLEKS                       R32 R31 K39 ["style"]
      255 GETTABLEKS                       R33 R18 K45 ["icon"]
      257 GETTABLEKS                       R32 R33 K40 ["size"]
      259 SETTABLEKS                       R32 R31 K40 ["size"]
      261 LOADK                            R33 K46 ["%*--leading-icon"]
      262 GETTABLEKS                       R35 R2 K12 ["testId"]
      264 NAMECALL                         R33 R33 K13 ["format"]
      266 CALL                             R33 2 1
      267 MOVE                             R32 R33
      268 SETTABLEKS                       R32 R31 K12 ["testId"]
      270 CALL                             R29 2 1
      271 JUMP                             ; [+1]
      272 LOADNIL                          R29
      273 SETTABLEKS                       R29 R28 K32 ["LeadingIcon"]
      275 GETUPVAL                         R30 3
      276 GETTABLEKS                       R29 R30 K14 ["createElement"]
      278 GETUPVAL                         R30 10
      279 DUPTABLE                         R31 K48 [{"LayoutOrder", "Text", "tag", "testId"}]
      280 LOADN                            R32 2
      281 SETTABLEKS                       R32 R31 K28 ["LayoutOrder"]
      283 GETTABLEKS                       R32 R2 K49 ["text"]
      285 SETTABLEKS                       R32 R31 K47 ["Text"]
      287 GETTABLEKS                       R33 R18 K49 ["text"]
      289 GETTABLEKS                       R32 R33 K15 ["tag"]
      291 SETTABLEKS                       R32 R31 K15 ["tag"]
      293 LOADK                            R33 K50 ["%*--title"]
      294 GETTABLEKS                       R35 R2 K12 ["testId"]
      296 NAMECALL                         R33 R33 K13 ["format"]
      298 CALL                             R33 2 1
      299 MOVE                             R32 R33
      300 SETTABLEKS                       R32 R31 K12 ["testId"]
      302 CALL                             R29 2 1
      303 SETTABLEKS                       R29 R28 K33 ["Title"]
      305 GETUPVAL                         R30 3
      306 GETTABLEKS                       R29 R30 K14 ["createElement"]
      308 GETUPVAL                         R30 7
      309 DUPTABLE                         R31 K51 [{"tag", "LayoutOrder"}]
      310 LOADK                            R32 K52 ["auto-xy"]
      311 SETTABLEKS                       R32 R31 K15 ["tag"]
      313 LOADN                            R32 3
      314 SETTABLEKS                       R32 R31 K28 ["LayoutOrder"]
      316 DUPTABLE                         R32 K54 [{"Icon"}]
      317 GETUPVAL                         R34 3
      318 GETTABLEKS                       R33 R34 K14 ["createElement"]
      320 GETUPVAL                         R34 9
      321 DUPTABLE                         R35 K56 [{"name", "Rotation", "style", "size", "testId"}]
      322 LOADK                            R36 K57 ["chevron-large-down"]
      323 SETTABLEKS                       R36 R35 K37 ["name"]
      325 SETTABLEKS                       R8 R35 K55 ["Rotation"]
      327 GETTABLEKS                       R37 R18 K45 ["icon"]
      329 GETTABLEKS                       R36 R37 K39 ["style"]
      331 SETTABLEKS                       R36 R35 K39 ["style"]
      333 GETTABLEKS                       R37 R18 K45 ["icon"]
      335 GETTABLEKS                       R36 R37 K40 ["size"]
      337 SETTABLEKS                       R36 R35 K40 ["size"]
      339 LOADK                            R37 K58 ["%*--collapse-icon"]
      340 GETTABLEKS                       R39 R2 K12 ["testId"]
      342 NAMECALL                         R37 R37 K13 ["format"]
      344 CALL                             R37 2 1
      345 MOVE                             R36 R37
      346 SETTABLEKS                       R36 R35 K12 ["testId"]
      348 CALL                             R33 2 1
      349 SETTABLEKS                       R33 R32 K53 ["Icon"]
      351 CALL                             R29 3 1
      352 SETTABLEKS                       R29 R28 K34 ["CollapseIcon"]
      354 CALL                             R25 3 1
      355 SETTABLEKS                       R25 R24 K24 ["Header"]
      357 JUMPIFNOT                        R5 ; [+75]
      358 GETUPVAL                         R26 3
      359 GETTABLEKS                       R25 R26 K14 ["createElement"]
      361 GETUPVAL                         R26 7
      362 DUPTABLE                         R27 K61 [{"tag", "LayoutOrder", "testId", "Size", "ClipsDescendants"}]
      363 LOADK                            R28 K62 ["col"]
      364 SETTABLEKS                       R28 R27 K15 ["tag"]
      366 LOADN                            R28 2
      367 SETTABLEKS                       R28 R27 K28 ["LayoutOrder"]
      369 LOADK                            R29 K63 ["%*--content"]
      370 GETTABLEKS                       R31 R2 K12 ["testId"]
      372 NAMECALL                         R29 R29 K13 ["format"]
      374 CALL                             R29 2 1
      375 MOVE                             R28 R29
      376 SETTABLEKS                       R28 R27 K12 ["testId"]
      378 JUMPIFNOT                        R10 ; [+5]
      379 DUPCLOSURE                       R30 K64 [PROTO_8]
      380 NAMECALL                         R28 R10 K65 ["map"]
      382 CALL                             R28 2 1
      383 JUMP                             ; [+1]
      384 LOADNIL                          R28
      385 SETTABLEKS                       R28 R27 K59 ["Size"]
      387 LOADB                            R28 1
      388 SETTABLEKS                       R28 R27 K60 ["ClipsDescendants"]
      390 DUPTABLE                         R28 K67 [{"AnimatedContainer"}]
      391 GETUPVAL                         R30 3
      392 GETTABLEKS                       R29 R30 K14 ["createElement"]
      394 GETUPVAL                         R30 7
      395 DUPTABLE                         R31 K70 [{"tag", "ref", "onAbsoluteSizeChanged", "flexItem", "testId"}]
      396 GETTABLEKS                       R33 R18 K71 ["content"]
      398 GETTABLEKS                       R32 R33 K15 ["tag"]
      400 SETTABLEKS                       R32 R31 K15 ["tag"]
      402 SETTABLEKS                       R12 R31 K18 ["ref"]
      404 SETTABLEKS                       R14 R31 K68 ["onAbsoluteSizeChanged"]
      406 DUPTABLE                         R32 K73 [{"FlexMode"}]
      407 GETIMPORT                        R33 K76 [Enum.UIFlexMode.None]
      409 SETTABLEKS                       R33 R32 K72 ["FlexMode"]
      411 SETTABLEKS                       R32 R31 K69 ["flexItem"]
      413 LOADK                            R33 K77 ["%*--animated-content"]
      414 GETTABLEKS                       R35 R2 K12 ["testId"]
      416 NAMECALL                         R33 R33 K13 ["format"]
      418 CALL                             R33 2 1
      419 MOVE                             R32 R33
      420 SETTABLEKS                       R32 R31 K12 ["testId"]
      422 NEWTABLE                         R32 0 1
      424 GETTABLEKS                       R33 R2 K78 ["children"]
      426 SETLIST                          R32 R33 1 [1]
      428 CALL                             R29 3 1
      429 SETTABLEKS                       R29 R28 K66 ["AnimatedContainer"]
      431 CALL                             R25 3 1
      432 JUMP                             ; [+1]
      433 LOADNIL                          R25
      434 SETTABLEKS                       R25 R24 K25 ["Content"]
      436 GETTABLEKS                       R26 R2 K79 ["hasDivider"]
      438 JUMPIFNOT                        R26 ; [+19]
      439 GETUPVAL                         R26 3
      440 GETTABLEKS                       R25 R26 K14 ["createElement"]
      442 GETUPVAL                         R26 11
      443 DUPTABLE                         R27 K80 [{"LayoutOrder", "testId"}]
      444 LOADN                            R28 3
      445 SETTABLEKS                       R28 R27 K28 ["LayoutOrder"]
      447 LOADK                            R29 K81 ["%*--divider"]
      448 GETTABLEKS                       R31 R2 K12 ["testId"]
      450 NAMECALL                         R29 R29 K13 ["format"]
      452 CALL                             R29 2 1
      453 MOVE                             R28 R29
      454 SETTABLEKS                       R28 R27 K12 ["testId"]
      456 CALL                             R25 2 1
      457 JUMP                             ; [+1]
      458 LOADNIL                          R25
      459 SETTABLEKS                       R25 R24 K26 ["Divider"]
      461 CALL                             R21 3 -1
      462 RETURN                           R21 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactOtter"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R7 K11 ["Divider"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R8 K12 ["Icon"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R9 R0 K10 ["Components"]
       42 GETTABLEKS                       R8 R9 K13 ["Text"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R10 R0 K10 ["Components"]
       49 GETTABLEKS                       R9 R10 K14 ["Types"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R11 R0 K10 ["Components"]
       56 GETTABLEKS                       R10 R11 K15 ["View"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R12 R0 K16 ["Utility"]
       63 GETTABLEKS                       R11 R12 K17 ["withCommonProps"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R13 R0 K16 ["Utility"]
       70 GETTABLEKS                       R12 R13 K18 ["withDefaults"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETIMPORT                        R16 K1 [script]
       77 GETTABLEKS                       R15 R16 K4 ["Parent"]
       79 GETTABLEKS                       R14 R15 K4 ["Parent"]
       81 GETTABLEKS                       R13 R14 K19 ["useAccordion"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R16 R0 K20 ["Providers"]
       88 GETTABLEKS                       R15 R16 K21 ["Style"]
       90 GETTABLEKS                       R14 R15 K22 ["useTokens"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R16 R0 K23 ["Enums"]
       97 GETTABLEKS                       R15 R16 K24 ["InputSize"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R18 R0 K20 ["Providers"]
      104 GETTABLEKS                       R17 R18 K21 ["Style"]
      106 GETTABLEKS                       R16 R17 K25 ["Tokens"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K6 [require]
      111 GETIMPORT                        R20 K1 [script]
      113 GETTABLEKS                       R19 R20 K4 ["Parent"]
      115 GETTABLEKS                       R18 R19 K4 ["Parent"]
      117 GETTABLEKS                       R17 R18 K26 ["useAccordionItemVariants"]
      119 CALL                             R16 1 1
      120 DUPTABLE                         R17 K29 [{"hasDivider", "isExpanded"}]
      121 LOADB                            R18 1
      122 SETTABLEKS                       R18 R17 K27 ["hasDivider"]
      124 LOADB                            R18 0
      125 SETTABLEKS                       R18 R17 K28 ["isExpanded"]
      127 DUPCLOSURE                       R18 K30 [PROTO_0]
      128 DUPCLOSURE                       R19 K31 [PROTO_9]
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R5
      141 GETTABLEKS                       R20 R3 K32 ["memo"]
      143 GETTABLEKS                       R21 R3 K33 ["forwardRef"]
      145 MOVE                             R22 R19
      146 CALL                             R21 1 -1
      147 CALL                             R20 -1 -1
      148 RETURN                           R20 -1
