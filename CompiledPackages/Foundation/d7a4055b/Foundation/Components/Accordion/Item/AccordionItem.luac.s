PROTO_0:
        0 DUPTABLE                         R1 K4 [{[1], ["duration"], ["startingValue"] = }]
        1 GETTABLEKS                       R2 R0 K5 ["Ease"]
        3 GETTABLEKS                       R2 R2 K6 ["StandardOut"]
        5 SETTABLEKS                       R2 R1 K0 ["easingStyle"]
        7 GETTABLEKS                       R2 R0 K7 ["Time"]
        9 GETTABLEKS                       R2 R2 K8 ["Time_300"]
       11 SETTABLEKS                       R2 R1 K1 ["duration"]
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R0 K4 [{[1], ["duration"], ["startingValue"] = }]
        2 GETTABLEKS                       R2 R1 K5 ["Ease"]
        4 GETTABLEKS                       R2 R2 K6 ["StandardOut"]
        6 SETTABLEKS                       R2 R0 K0 ["easingStyle"]
        8 GETTABLEKS                       R2 R1 K7 ["Time"]
       10 GETTABLEKS                       R2 R2 K8 ["Time_300"]
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
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["ease"]
        8 LOADN                            R2 0
        9 GETUPVAL                         R3 3
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 4
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K1 ["ease"]
       16 LOADN                            R2 0
       17 GETUPVAL                         R3 3
       18 CALL                             R1 2 -1
       19 CALL                             R0 -1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+20]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+16]
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+14]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["ease"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["current"]
       15 GETTABLEKS                       R2 R2 K2 ["AbsoluteSize"]
       17 GETTABLEKS                       R2 R2 K3 ["Y"]
       19 GETUPVAL                         R3 4
       20 CALL                             R1 2 -1
       21 CALL                             R0 -1 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationAnimateAccordion"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["isExpanded"]
        9 JUMPIF                           R0 ; [+3]
       10 GETUPVAL                         R0 3
       11 CALL                             R0 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 4
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K1 ["isExpanded"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["ease"]
        6 LOADN                            R2 -180
        7 GETUPVAL                         R3 3
        8 CALL                             R1 2 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationAnimateAccordion"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R2 1
       15 NOT                              R1 R2
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

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
        7 GETTABLEKS                       R5 R5 K0 ["FoundationAnimateAccordion"]
        9 JUMPIFNOT                        R5 ; [+12]
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R3
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K2 ["useState"]
       26 GETTABLEKS                       R6 R2 K3 ["isExpanded"]
       28 CALL                             R5 1 2
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K0 ["FoundationAnimateAccordion"]
       32 JUMPIFNOT                        R8 ; [+6]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R7 R7 K4 ["useRef"]
       36 LOADB                            R8 0
       37 CALL                             R7 1 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 LOADNIL                          R11
       44 GETUPVAL                         R12 3
       45 GETTABLEKS                       R12 R12 K0 ["FoundationAnimateAccordion"]
       47 JUMPIFNOT                        R12 ; [+17]
       48 GETUPVAL                         R12 5
       49 GETTABLEKS                       R12 R12 K5 ["useAnimatedBinding"]
       51 LOADN                            R13 0
       52 CALL                             R12 1 2
       53 MOVE                             R8 R12
       54 MOVE                             R9 R13
       55 GETUPVAL                         R12 5
       56 GETTABLEKS                       R12 R12 K5 ["useAnimatedBinding"]
       58 LOADN                            R13 0
       59 NEWCLOSURE                       R14 P1
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R6
       62 CALL                             R12 2 2
       63 MOVE                             R10 R12
       64 MOVE                             R11 R13
       65 GETUPVAL                         R13 3
       66 GETTABLEKS                       R13 R13 K0 ["FoundationAnimateAccordion"]
       68 JUMPIFNOT                        R13 ; [+6]
       69 GETUPVAL                         R12 4
       70 GETTABLEKS                       R12 R12 K4 ["useRef"]
       72 LOADNIL                          R13
       73 CALL                             R12 1 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R12
       76 GETUPVAL                         R14 3
       77 GETTABLEKS                       R14 R14 K0 ["FoundationAnimateAccordion"]
       79 JUMPIFNOT                        R14 ; [+13]
       80 GETUPVAL                         R13 4
       81 GETTABLEKS                       R13 R13 K6 ["useCallback"]
       83 NEWCLOSURE                       R14 P2
       84 CAPTURE                          VAL R7
       85 CAPTURE                          REF R11
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          VAL R4
       88 CAPTURE                          REF R9
       89 NEWTABLE                         R15 0 0
       91 CALL                             R13 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R13
       94 GETUPVAL                         R15 3
       95 GETTABLEKS                       R15 R15 K0 ["FoundationAnimateAccordion"]
       97 JUMPIFNOT                        R15 ; [+17]
       98 GETUPVAL                         R14 4
       99 GETTABLEKS                       R14 R14 K6 ["useCallback"]
      101 NEWCLOSURE                       R15 P3
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R5
      104 CAPTURE                          REF R11
      105 CAPTURE                          UPVAL U5
      106 CAPTURE                          VAL R4
      107 NEWTABLE                         R16 0 2
      109 MOVE                             R17 R12
      110 MOVE                             R18 R5
      111 SETLIST                          R16 R17 2 [1]
      113 CALL                             R14 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R14
      116 GETUPVAL                         R15 4
      117 GETTABLEKS                       R15 R15 K7 ["useEffect"]
      119 NEWCLOSURE                       R16 P4
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R6
      125 NEWTABLE                         R17 0 1
      127 GETTABLEKS                       R18 R2 K3 ["isExpanded"]
      129 SETLIST                          R17 R18 1 [1]
      131 CALL                             R15 2 0
      132 GETUPVAL                         R15 3
      133 GETTABLEKS                       R15 R15 K0 ["FoundationAnimateAccordion"]
      135 JUMPIFNOT                        R15 ; [+14]
      136 GETUPVAL                         R15 4
      137 GETTABLEKS                       R15 R15 K7 ["useEffect"]
      139 NEWCLOSURE                       R16 P5
      140 CAPTURE                          VAL R5
      141 CAPTURE                          REF R9
      142 CAPTURE                          UPVAL U5
      143 CAPTURE                          VAL R4
      144 NEWTABLE                         R17 0 1
      146 MOVE                             R18 R5
      147 SETLIST                          R17 R18 1 [1]
      149 CALL                             R15 2 0
      150 GETUPVAL                         R15 6
      151 CALL                             R15 0 1
      152 GETTABLEKS                       R16 R15 K8 ["onAccordionItemActivated"]
      154 GETTABLEKS                       R17 R15 K9 ["itemSize"]
      156 GETUPVAL                         R18 7
      157 MOVE                             R19 R3
      158 MOVE                             R20 R17
      159 LOADB                            R21 0
      160 CALL                             R18 3 1
      161 GETUPVAL                         R19 4
      162 GETTABLEKS                       R19 R19 K6 ["useCallback"]
      164 NEWCLOSURE                       R20 P6
      165 CAPTURE                          UPVAL U3
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R6
      169 NEWTABLE                         R21 0 1
      171 MOVE                             R22 R5
      172 SETLIST                          R21 R22 1 [1]
      174 CALL                             R19 2 1
      175 GETTABLEKS                       R21 R2 K10 ["onActivated"]
      177 JUMPIFNOT                        R21 ; [+3]
      178 GETTABLEKS                       R20 R2 K10 ["onActivated"]
      180 JUMP                             ; [+8]
      181 JUMPIFNOT                        R16 ; [+6]
      182 MOVE                             R20 R16
      183 GETTABLEKS                       R21 R2 K11 ["id"]
      185 MOVE                             R22 R5
      186 CALL                             R20 2 1
      187 JUMP                             ; [+1]
      188 MOVE                             R20 R19
      189 LOADK                            R22 K12 ["%*--item-%*"]
      190 GETTABLEKS                       R24 R15 K13 ["testId"]
      192 GETTABLEKS                       R25 R2 K11 ["id"]
      194 NAMECALL                         R22 R22 K14 ["format"]
      196 CALL                             R22 3 1
      197 MOVE                             R21 R22
      198 SETTABLEKS                       R21 R2 K13 ["testId"]
      200 GETUPVAL                         R21 4
      201 GETTABLEKS                       R21 R21 K15 ["createElement"]
      203 GETUPVAL                         R22 8
      204 GETUPVAL                         R23 9
      205 MOVE                             R24 R2
      206 DUPTABLE                         R25 K20 [{"tag", "AutomaticSize", "stateLayer", "ref"}]
      207 GETTABLEKS                       R26 R18 K21 ["container"]
      209 GETTABLEKS                       R26 R26 K16 ["tag"]
      211 SETTABLEKS                       R26 R25 K16 ["tag"]
      213 GETIMPORT                        R26 K24 [Enum.AutomaticSize.Y]
      215 SETTABLEKS                       R26 R25 K17 ["AutomaticSize"]
      217 GETTABLEKS                       R26 R18 K21 ["container"]
      219 GETTABLEKS                       R26 R26 K18 ["stateLayer"]
      221 SETTABLEKS                       R26 R25 K18 ["stateLayer"]
      223 SETTABLEKS                       R1 R25 K19 ["ref"]
      225 CALL                             R23 2 1
      226 DUPTABLE                         R24 K28 [{"Header", "Content", "Divider"}]
      227 GETUPVAL                         R25 4
      228 GETTABLEKS                       R25 R25 K15 ["createElement"]
      230 GETUPVAL                         R26 8
      231 DUPTABLE                         R27 K31 [{["LayoutOrder"] = 1, ["tag"], ["onActivated"], ["testId"]}]
      232 GETTABLEKS                       R28 R18 K32 ["header"]
      234 GETTABLEKS                       R28 R28 K16 ["tag"]
      236 SETTABLEKS                       R28 R27 K16 ["tag"]
      238 SETTABLEKS                       R20 R27 K10 ["onActivated"]
      240 LOADK                            R29 K33 ["%*--header"]
      241 GETTABLEKS                       R31 R2 K13 ["testId"]
      243 NAMECALL                         R29 R29 K14 ["format"]
      245 CALL                             R29 2 1
      246 MOVE                             R28 R29
      247 SETTABLEKS                       R28 R27 K13 ["testId"]
      249 DUPTABLE                         R28 K37 [{"LeadingIcon", "Title", "CollapseIcon"}]
      250 GETTABLEKS                       R30 R2 K38 ["leadingIcon"]
      252 JUMPIFNOT                        R30 ; [+61]
      253 GETUPVAL                         R29 4
      254 GETTABLEKS                       R29 R29 K15 ["createElement"]
      256 GETUPVAL                         R30 10
      257 DUPTABLE                         R31 K43 [{["LayoutOrder"] = 1, ["name"], ["variant"], ["style"], ["size"], ["testId"]}]
      258 GETTABLEKS                       R34 R2 K38 ["leadingIcon"]
      260 FASTCALL1                        TYPE R34 ; [+2]
      261 GETIMPORT                        R33 K45 [type]
      263 CALL                             R33 1 1
      264 JUMPIFNOTEQKS                    R33 K46 ["table"] ; [+6]
      266 GETTABLEKS                       R32 R2 K38 ["leadingIcon"]
      268 GETTABLEKS                       R32 R32 K39 ["name"]
      270 JUMP                             ; [+2]
      271 GETTABLEKS                       R32 R2 K38 ["leadingIcon"]
      273 SETTABLEKS                       R32 R31 K39 ["name"]
      275 GETTABLEKS                       R34 R2 K38 ["leadingIcon"]
      277 FASTCALL1                        TYPE R34 ; [+2]
      278 GETIMPORT                        R33 K45 [type]
      280 CALL                             R33 1 1
      281 JUMPIFNOTEQKS                    R33 K46 ["table"] ; [+6]
      283 GETTABLEKS                       R32 R2 K38 ["leadingIcon"]
      285 GETTABLEKS                       R32 R32 K40 ["variant"]
      287 JUMP                             ; [+1]
      288 LOADNIL                          R32
      289 SETTABLEKS                       R32 R31 K40 ["variant"]
      291 GETTABLEKS                       R32 R18 K47 ["icon"]
      293 GETTABLEKS                       R32 R32 K41 ["style"]
      295 SETTABLEKS                       R32 R31 K41 ["style"]
      297 GETTABLEKS                       R32 R18 K47 ["icon"]
      299 GETTABLEKS                       R32 R32 K42 ["size"]
      301 SETTABLEKS                       R32 R31 K42 ["size"]
      303 LOADK                            R33 K48 ["%*--leading-icon"]
      304 GETTABLEKS                       R35 R2 K13 ["testId"]
      306 NAMECALL                         R33 R33 K14 ["format"]
      308 CALL                             R33 2 1
      309 MOVE                             R32 R33
      310 SETTABLEKS                       R32 R31 K13 ["testId"]
      312 CALL                             R29 2 1
      313 JUMP                             ; [+1]
      314 LOADNIL                          R29
      315 SETTABLEKS                       R29 R28 K34 ["LeadingIcon"]
      317 GETUPVAL                         R29 4
      318 GETTABLEKS                       R29 R29 K15 ["createElement"]
      320 GETUPVAL                         R30 11
      321 DUPTABLE                         R31 K51 [{["LayoutOrder"] = 2, ["Text"], ["tag"], ["testId"]}]
      322 GETTABLEKS                       R32 R2 K52 ["text"]
      324 SETTABLEKS                       R32 R31 K50 ["Text"]
      326 GETTABLEKS                       R32 R18 K52 ["text"]
      328 GETTABLEKS                       R32 R32 K16 ["tag"]
      330 SETTABLEKS                       R32 R31 K16 ["tag"]
      332 LOADK                            R33 K53 ["%*--title"]
      333 GETTABLEKS                       R35 R2 K13 ["testId"]
      335 NAMECALL                         R33 R33 K14 ["format"]
      337 CALL                             R33 2 1
      338 MOVE                             R32 R33
      339 SETTABLEKS                       R32 R31 K13 ["testId"]
      341 CALL                             R29 2 1
      342 SETTABLEKS                       R29 R28 K35 ["Title"]
      344 GETUPVAL                         R30 3
      345 GETTABLEKS                       R30 R30 K0 ["FoundationAnimateAccordion"]
      347 JUMPIFNOT                        R30 ; [+39]
      348 GETUPVAL                         R29 4
      349 GETTABLEKS                       R29 R29 K15 ["createElement"]
      351 GETUPVAL                         R30 8
      352 DUPTABLE                         R31 K56 [{["tag"] = "auto-xy", ["LayoutOrder"] = 3}]
      353 DUPTABLE                         R32 K58 [{"Icon"}]
      354 GETUPVAL                         R33 4
      355 GETTABLEKS                       R33 R33 K15 ["createElement"]
      357 GETUPVAL                         R34 10
      358 DUPTABLE                         R35 K61 [{["name"] = "chevron-large-down", ["Rotation"], ["style"], ["size"], ["testId"]}]
      359 SETTABLEKS                       R8 R35 K60 ["Rotation"]
      361 GETTABLEKS                       R36 R18 K47 ["icon"]
      363 GETTABLEKS                       R36 R36 K41 ["style"]
      365 SETTABLEKS                       R36 R35 K41 ["style"]
      367 GETTABLEKS                       R36 R18 K47 ["icon"]
      369 GETTABLEKS                       R36 R36 K42 ["size"]
      371 SETTABLEKS                       R36 R35 K42 ["size"]
      373 LOADK                            R37 K62 ["%*--collapse-icon"]
      374 GETTABLEKS                       R39 R2 K13 ["testId"]
      376 NAMECALL                         R37 R37 K14 ["format"]
      378 CALL                             R37 2 1
      379 MOVE                             R36 R37
      380 SETTABLEKS                       R36 R35 K13 ["testId"]
      382 CALL                             R33 2 1
      383 SETTABLEKS                       R33 R32 K57 ["Icon"]
      385 CALL                             R29 3 1
      386 JUMP                             ; [+33]
      387 GETUPVAL                         R29 4
      388 GETTABLEKS                       R29 R29 K15 ["createElement"]
      390 GETUPVAL                         R30 10
      391 DUPTABLE                         R31 K63 [{["LayoutOrder"] = 3, ["name"], ["style"], ["size"], ["testId"]}]
      392 JUMPIFNOT                        R5 ; [+2]
      393 LOADK                            R32 K64 ["chevron-large-up"]
      394 JUMP                             ; [+1]
      395 LOADK                            R32 K59 ["chevron-large-down"]
      396 SETTABLEKS                       R32 R31 K39 ["name"]
      398 GETTABLEKS                       R32 R18 K47 ["icon"]
      400 GETTABLEKS                       R32 R32 K41 ["style"]
      402 SETTABLEKS                       R32 R31 K41 ["style"]
      404 GETTABLEKS                       R32 R18 K47 ["icon"]
      406 GETTABLEKS                       R32 R32 K42 ["size"]
      408 SETTABLEKS                       R32 R31 K42 ["size"]
      410 LOADK                            R33 K62 ["%*--collapse-icon"]
      411 GETTABLEKS                       R35 R2 K13 ["testId"]
      413 NAMECALL                         R33 R33 K14 ["format"]
      415 CALL                             R33 2 1
      416 MOVE                             R32 R33
      417 SETTABLEKS                       R32 R31 K13 ["testId"]
      419 CALL                             R29 2 1
      420 SETTABLEKS                       R29 R28 K36 ["CollapseIcon"]
      422 CALL                             R25 3 1
      423 SETTABLEKS                       R25 R24 K25 ["Header"]
      425 JUMPIFNOT                        R5 ; [+102]
      426 GETUPVAL                         R25 4
      427 GETTABLEKS                       R25 R25 K15 ["createElement"]
      429 GETUPVAL                         R26 8
      430 DUPTABLE                         R27 K67 [{["tag"], ["LayoutOrder"] = 2, ["testId"], ["Size"], ["ClipsDescendants"]}]
      431 GETUPVAL                         R29 3
      432 GETTABLEKS                       R29 R29 K0 ["FoundationAnimateAccordion"]
      434 JUMPIFNOT                        R29 ; [+2]
      435 LOADK                            R28 K68 ["col"]
      436 JUMP                             ; [+4]
      437 GETTABLEKS                       R28 R18 K69 ["content"]
      439 GETTABLEKS                       R28 R28 K16 ["tag"]
      441 SETTABLEKS                       R28 R27 K16 ["tag"]
      443 LOADK                            R29 K70 ["%*--content"]
      444 GETTABLEKS                       R31 R2 K13 ["testId"]
      446 NAMECALL                         R29 R29 K14 ["format"]
      448 CALL                             R29 2 1
      449 MOVE                             R28 R29
      450 SETTABLEKS                       R28 R27 K13 ["testId"]
      452 GETUPVAL                         R29 3
      453 GETTABLEKS                       R29 R29 K0 ["FoundationAnimateAccordion"]
      455 JUMPIFNOT                        R29 ; [+6]
      456 JUMPIFNOT                        R10 ; [+5]
      457 DUPCLOSURE                       R30 K71 [PROTO_8]
      458 NAMECALL                         R28 R10 K72 ["map"]
      460 CALL                             R28 2 1
      461 JUMP                             ; [+1]
      462 LOADNIL                          R28
      463 SETTABLEKS                       R28 R27 K65 ["Size"]
      465 GETUPVAL                         R29 3
      466 GETTABLEKS                       R29 R29 K0 ["FoundationAnimateAccordion"]
      468 JUMPIFNOT                        R29 ; [+2]
      469 LOADB                            R28 1
      470 JUMP                             ; [+1]
      471 LOADB                            R28 0
      472 SETTABLEKS                       R28 R27 K66 ["ClipsDescendants"]
      474 GETUPVAL                         R29 3
      475 GETTABLEKS                       R29 R29 K0 ["FoundationAnimateAccordion"]
      477 JUMPIFNOT                        R29 ; [+42]
      478 DUPTABLE                         R28 K74 [{"AnimatedContainer"}]
      479 GETUPVAL                         R29 4
      480 GETTABLEKS                       R29 R29 K15 ["createElement"]
      482 GETUPVAL                         R30 8
      483 DUPTABLE                         R31 K77 [{"tag", "ref", "onAbsoluteSizeChanged", "flexItem", "testId"}]
      484 GETTABLEKS                       R32 R18 K69 ["content"]
      486 GETTABLEKS                       R32 R32 K16 ["tag"]
      488 SETTABLEKS                       R32 R31 K16 ["tag"]
      490 SETTABLEKS                       R12 R31 K19 ["ref"]
      492 SETTABLEKS                       R14 R31 K75 ["onAbsoluteSizeChanged"]
      494 DUPTABLE                         R32 K79 [{"FlexMode"}]
      495 GETIMPORT                        R33 K82 [Enum.UIFlexMode.None]
      497 SETTABLEKS                       R33 R32 K78 ["FlexMode"]
      499 SETTABLEKS                       R32 R31 K76 ["flexItem"]
      501 LOADK                            R33 K83 ["%*--animated-content"]
      502 GETTABLEKS                       R35 R2 K13 ["testId"]
      504 NAMECALL                         R33 R33 K14 ["format"]
      506 CALL                             R33 2 1
      507 MOVE                             R32 R33
      508 SETTABLEKS                       R32 R31 K13 ["testId"]
      510 NEWTABLE                         R32 0 1
      512 GETTABLEKS                       R33 R2 K84 ["children"]
      514 SETLIST                          R32 R33 1 [1]
      516 CALL                             R29 3 1
      517 SETTABLEKS                       R29 R28 K73 ["AnimatedContainer"]
      519 JUMP                             ; [+6]
      520 NEWTABLE                         R28 0 1
      522 GETTABLEKS                       R29 R2 K84 ["children"]
      524 SETLIST                          R28 R29 1 [1]
      526 CALL                             R25 3 1
      527 JUMP                             ; [+1]
      528 LOADNIL                          R25
      529 SETTABLEKS                       R25 R24 K26 ["Content"]
      531 GETTABLEKS                       R26 R2 K85 ["hasDivider"]
      533 JUMPIFNOT                        R26 ; [+16]
      534 GETUPVAL                         R25 4
      535 GETTABLEKS                       R25 R25 K15 ["createElement"]
      537 GETUPVAL                         R26 12
      538 DUPTABLE                         R27 K86 [{["LayoutOrder"] = 3, ["testId"]}]
      539 LOADK                            R29 K87 ["%*--divider"]
      540 GETTABLEKS                       R31 R2 K13 ["testId"]
      542 NAMECALL                         R29 R29 K14 ["format"]
      544 CALL                             R29 2 1
      545 MOVE                             R28 R29
      546 SETTABLEKS                       R28 R27 K13 ["testId"]
      548 CALL                             R25 2 1
      549 JUMP                             ; [+1]
      550 LOADNIL                          R25
      551 SETTABLEKS                       R25 R24 K27 ["Divider"]
      553 CALL                             R21 3 -1
      554 CLOSEUPVALS                      R9
      555 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactOtter"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Utility"]
       28 GETTABLEKS                       R6 R6 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K13 ["Divider"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K12 ["Components"]
       42 GETTABLEKS                       R8 R8 K14 ["Icon"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K12 ["Components"]
       49 GETTABLEKS                       R9 R9 K15 ["Text"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K12 ["Components"]
       56 GETTABLEKS                       R10 R10 K16 ["Types"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K12 ["Components"]
       63 GETTABLEKS                       R11 R11 K17 ["View"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Utility"]
       70 GETTABLEKS                       R12 R12 K18 ["withDefaults"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K10 ["Utility"]
       77 GETTABLEKS                       R13 R13 K19 ["withCommonProps"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K20 ["Providers"]
       84 GETTABLEKS                       R14 R14 K21 ["Style"]
       86 GETTABLEKS                       R14 R14 K22 ["useTokens"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETIMPORT                        R15 K1 [script]
       93 GETTABLEKS                       R15 R15 K4 ["Parent"]
       95 GETTABLEKS                       R15 R15 K4 ["Parent"]
       97 GETTABLEKS                       R15 R15 K23 ["useAccordion"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R16 R0 K24 ["Enums"]
      104 GETTABLEKS                       R16 R16 K25 ["InputSize"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R17 R0 K20 ["Providers"]
      111 GETTABLEKS                       R17 R17 K21 ["Style"]
      113 GETTABLEKS                       R17 R17 K26 ["Tokens"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K6 [require]
      118 GETIMPORT                        R18 K1 [script]
      120 GETTABLEKS                       R18 R18 K4 ["Parent"]
      122 GETTABLEKS                       R18 R18 K4 ["Parent"]
      124 GETTABLEKS                       R18 R18 K27 ["useAccordionItemVariants"]
      126 CALL                             R17 1 1
      127 DUPTABLE                         R18 K32 [{["hasDivider"] = True, ["isExpanded"] = False}]
      128 DUPCLOSURE                       R19 K33 [PROTO_0]
      129 DUPCLOSURE                       R20 K34 [PROTO_9]
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R6
      143 GETTABLEKS                       R21 R2 K35 ["memo"]
      145 GETTABLEKS                       R22 R2 K36 ["forwardRef"]
      147 MOVE                             R23 R20
      148 CALL                             R22 1 -1
      149 CALL                             R21 -1 -1
      150 RETURN                           R21 -1
