PROTO_0:
        0 DUPTABLE                         R1 K3 [{"easingStyle", "duration", "startingValue"}]
        1 GETTABLEKS                       R2 R0 K4 ["Ease"]
        3 GETTABLEKS                       R2 R2 K5 ["StandardOut"]
        5 SETTABLEKS                       R2 R1 K0 ["easingStyle"]
        7 GETTABLEKS                       R2 R0 K6 ["Time"]
        9 GETTABLEKS                       R2 R2 K7 ["Time_300"]
       11 SETTABLEKS                       R2 R1 K1 ["duration"]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K2 ["startingValue"]
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R0 K3 [{"easingStyle", "duration", "startingValue"}]
        2 GETTABLEKS                       R2 R1 K4 ["Ease"]
        4 GETTABLEKS                       R2 R2 K5 ["StandardOut"]
        6 SETTABLEKS                       R2 R0 K0 ["easingStyle"]
        8 GETTABLEKS                       R2 R1 K6 ["Time"]
       10 GETTABLEKS                       R2 R2 K7 ["Time_300"]
       12 SETTABLEKS                       R2 R0 K1 ["duration"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R0 K2 ["startingValue"]
       17 RETURN                           R0 1

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
        6 LOADN                            R2 76
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
      231 DUPTABLE                         R27 K30 [{"LayoutOrder", "tag", "onActivated", "testId"}]
      232 LOADN                            R28 1
      233 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      235 GETTABLEKS                       R28 R18 K31 ["header"]
      237 GETTABLEKS                       R28 R28 K16 ["tag"]
      239 SETTABLEKS                       R28 R27 K16 ["tag"]
      241 SETTABLEKS                       R20 R27 K10 ["onActivated"]
      243 LOADK                            R29 K32 ["%*--header"]
      244 GETTABLEKS                       R31 R2 K13 ["testId"]
      246 NAMECALL                         R29 R29 K14 ["format"]
      248 CALL                             R29 2 1
      249 MOVE                             R28 R29
      250 SETTABLEKS                       R28 R27 K13 ["testId"]
      252 DUPTABLE                         R28 K36 [{"LeadingIcon", "Title", "CollapseIcon"}]
      253 GETTABLEKS                       R30 R2 K37 ["leadingIcon"]
      255 JUMPIFNOT                        R30 ; [+64]
      256 GETUPVAL                         R29 4
      257 GETTABLEKS                       R29 R29 K15 ["createElement"]
      259 GETUPVAL                         R30 10
      260 DUPTABLE                         R31 K42 [{"LayoutOrder", "name", "variant", "style", "size", "testId"}]
      261 LOADN                            R32 1
      262 SETTABLEKS                       R32 R31 K29 ["LayoutOrder"]
      264 GETTABLEKS                       R34 R2 K37 ["leadingIcon"]
      266 FASTCALL1                        TYPE R34 ; [+2]
      267 GETIMPORT                        R33 K44 [type]
      269 CALL                             R33 1 1
      270 JUMPIFNOTEQKS                    R33 K45 ["table"] ; [+6]
      272 GETTABLEKS                       R32 R2 K37 ["leadingIcon"]
      274 GETTABLEKS                       R32 R32 K38 ["name"]
      276 JUMP                             ; [+2]
      277 GETTABLEKS                       R32 R2 K37 ["leadingIcon"]
      279 SETTABLEKS                       R32 R31 K38 ["name"]
      281 GETTABLEKS                       R34 R2 K37 ["leadingIcon"]
      283 FASTCALL1                        TYPE R34 ; [+2]
      284 GETIMPORT                        R33 K44 [type]
      286 CALL                             R33 1 1
      287 JUMPIFNOTEQKS                    R33 K45 ["table"] ; [+6]
      289 GETTABLEKS                       R32 R2 K37 ["leadingIcon"]
      291 GETTABLEKS                       R32 R32 K39 ["variant"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R32
      295 SETTABLEKS                       R32 R31 K39 ["variant"]
      297 GETTABLEKS                       R32 R18 K46 ["icon"]
      299 GETTABLEKS                       R32 R32 K40 ["style"]
      301 SETTABLEKS                       R32 R31 K40 ["style"]
      303 GETTABLEKS                       R32 R18 K46 ["icon"]
      305 GETTABLEKS                       R32 R32 K41 ["size"]
      307 SETTABLEKS                       R32 R31 K41 ["size"]
      309 LOADK                            R33 K47 ["%*--leading-icon"]
      310 GETTABLEKS                       R35 R2 K13 ["testId"]
      312 NAMECALL                         R33 R33 K14 ["format"]
      314 CALL                             R33 2 1
      315 MOVE                             R32 R33
      316 SETTABLEKS                       R32 R31 K13 ["testId"]
      318 CALL                             R29 2 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R29
      321 SETTABLEKS                       R29 R28 K33 ["LeadingIcon"]
      323 GETUPVAL                         R29 4
      324 GETTABLEKS                       R29 R29 K15 ["createElement"]
      326 GETUPVAL                         R30 11
      327 DUPTABLE                         R31 K49 [{"LayoutOrder", "Text", "tag", "testId"}]
      328 LOADN                            R32 2
      329 SETTABLEKS                       R32 R31 K29 ["LayoutOrder"]
      331 GETTABLEKS                       R32 R2 K50 ["text"]
      333 SETTABLEKS                       R32 R31 K48 ["Text"]
      335 GETTABLEKS                       R32 R18 K50 ["text"]
      337 GETTABLEKS                       R32 R32 K16 ["tag"]
      339 SETTABLEKS                       R32 R31 K16 ["tag"]
      341 LOADK                            R33 K51 ["%*--title"]
      342 GETTABLEKS                       R35 R2 K13 ["testId"]
      344 NAMECALL                         R33 R33 K14 ["format"]
      346 CALL                             R33 2 1
      347 MOVE                             R32 R33
      348 SETTABLEKS                       R32 R31 K13 ["testId"]
      350 CALL                             R29 2 1
      351 SETTABLEKS                       R29 R28 K34 ["Title"]
      353 GETUPVAL                         R30 3
      354 GETTABLEKS                       R30 R30 K0 ["FoundationAnimateAccordion"]
      356 JUMPIFNOT                        R30 ; [+48]
      357 GETUPVAL                         R29 4
      358 GETTABLEKS                       R29 R29 K15 ["createElement"]
      360 GETUPVAL                         R30 8
      361 DUPTABLE                         R31 K52 [{"tag", "LayoutOrder"}]
      362 LOADK                            R32 K53 ["auto-xy"]
      363 SETTABLEKS                       R32 R31 K16 ["tag"]
      365 LOADN                            R32 3
      366 SETTABLEKS                       R32 R31 K29 ["LayoutOrder"]
      368 DUPTABLE                         R32 K55 [{"Icon"}]
      369 GETUPVAL                         R33 4
      370 GETTABLEKS                       R33 R33 K15 ["createElement"]
      372 GETUPVAL                         R34 10
      373 DUPTABLE                         R35 K57 [{"name", "Rotation", "style", "size", "testId"}]
      374 LOADK                            R36 K58 ["chevron-large-down"]
      375 SETTABLEKS                       R36 R35 K38 ["name"]
      377 SETTABLEKS                       R8 R35 K56 ["Rotation"]
      379 GETTABLEKS                       R36 R18 K46 ["icon"]
      381 GETTABLEKS                       R36 R36 K40 ["style"]
      383 SETTABLEKS                       R36 R35 K40 ["style"]
      385 GETTABLEKS                       R36 R18 K46 ["icon"]
      387 GETTABLEKS                       R36 R36 K41 ["size"]
      389 SETTABLEKS                       R36 R35 K41 ["size"]
      391 LOADK                            R37 K59 ["%*--collapse-icon"]
      392 GETTABLEKS                       R39 R2 K13 ["testId"]
      394 NAMECALL                         R37 R37 K14 ["format"]
      396 CALL                             R37 2 1
      397 MOVE                             R36 R37
      398 SETTABLEKS                       R36 R35 K13 ["testId"]
      400 CALL                             R33 2 1
      401 SETTABLEKS                       R33 R32 K54 ["Icon"]
      403 CALL                             R29 3 1
      404 JUMP                             ; [+36]
      405 GETUPVAL                         R29 4
      406 GETTABLEKS                       R29 R29 K15 ["createElement"]
      408 GETUPVAL                         R30 10
      409 DUPTABLE                         R31 K60 [{"LayoutOrder", "name", "style", "size", "testId"}]
      410 LOADN                            R32 3
      411 SETTABLEKS                       R32 R31 K29 ["LayoutOrder"]
      413 JUMPIFNOT                        R5 ; [+2]
      414 LOADK                            R32 K61 ["chevron-large-up"]
      415 JUMP                             ; [+1]
      416 LOADK                            R32 K58 ["chevron-large-down"]
      417 SETTABLEKS                       R32 R31 K38 ["name"]
      419 GETTABLEKS                       R32 R18 K46 ["icon"]
      421 GETTABLEKS                       R32 R32 K40 ["style"]
      423 SETTABLEKS                       R32 R31 K40 ["style"]
      425 GETTABLEKS                       R32 R18 K46 ["icon"]
      427 GETTABLEKS                       R32 R32 K41 ["size"]
      429 SETTABLEKS                       R32 R31 K41 ["size"]
      431 LOADK                            R33 K59 ["%*--collapse-icon"]
      432 GETTABLEKS                       R35 R2 K13 ["testId"]
      434 NAMECALL                         R33 R33 K14 ["format"]
      436 CALL                             R33 2 1
      437 MOVE                             R32 R33
      438 SETTABLEKS                       R32 R31 K13 ["testId"]
      440 CALL                             R29 2 1
      441 SETTABLEKS                       R29 R28 K35 ["CollapseIcon"]
      443 CALL                             R25 3 1
      444 SETTABLEKS                       R25 R24 K25 ["Header"]
      446 JUMPIFNOT                        R5 ; [+105]
      447 GETUPVAL                         R25 4
      448 GETTABLEKS                       R25 R25 K15 ["createElement"]
      450 GETUPVAL                         R26 8
      451 DUPTABLE                         R27 K64 [{"tag", "LayoutOrder", "testId", "Size", "ClipsDescendants"}]
      452 GETUPVAL                         R29 3
      453 GETTABLEKS                       R29 R29 K0 ["FoundationAnimateAccordion"]
      455 JUMPIFNOT                        R29 ; [+2]
      456 LOADK                            R28 K65 ["col"]
      457 JUMP                             ; [+4]
      458 GETTABLEKS                       R28 R18 K66 ["content"]
      460 GETTABLEKS                       R28 R28 K16 ["tag"]
      462 SETTABLEKS                       R28 R27 K16 ["tag"]
      464 LOADN                            R28 2
      465 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      467 LOADK                            R29 K67 ["%*--content"]
      468 GETTABLEKS                       R31 R2 K13 ["testId"]
      470 NAMECALL                         R29 R29 K14 ["format"]
      472 CALL                             R29 2 1
      473 MOVE                             R28 R29
      474 SETTABLEKS                       R28 R27 K13 ["testId"]
      476 GETUPVAL                         R29 3
      477 GETTABLEKS                       R29 R29 K0 ["FoundationAnimateAccordion"]
      479 JUMPIFNOT                        R29 ; [+6]
      480 JUMPIFNOT                        R10 ; [+5]
      481 DUPCLOSURE                       R30 K68 [PROTO_8]
      482 NAMECALL                         R28 R10 K69 ["map"]
      484 CALL                             R28 2 1
      485 JUMP                             ; [+1]
      486 LOADNIL                          R28
      487 SETTABLEKS                       R28 R27 K62 ["Size"]
      489 GETUPVAL                         R29 3
      490 GETTABLEKS                       R29 R29 K0 ["FoundationAnimateAccordion"]
      492 JUMPIFNOT                        R29 ; [+2]
      493 LOADB                            R28 1
      494 JUMP                             ; [+1]
      495 LOADB                            R28 0
      496 SETTABLEKS                       R28 R27 K63 ["ClipsDescendants"]
      498 GETUPVAL                         R29 3
      499 GETTABLEKS                       R29 R29 K0 ["FoundationAnimateAccordion"]
      501 JUMPIFNOT                        R29 ; [+42]
      502 DUPTABLE                         R28 K71 [{"AnimatedContainer"}]
      503 GETUPVAL                         R29 4
      504 GETTABLEKS                       R29 R29 K15 ["createElement"]
      506 GETUPVAL                         R30 8
      507 DUPTABLE                         R31 K74 [{"tag", "ref", "onAbsoluteSizeChanged", "flexItem", "testId"}]
      508 GETTABLEKS                       R32 R18 K66 ["content"]
      510 GETTABLEKS                       R32 R32 K16 ["tag"]
      512 SETTABLEKS                       R32 R31 K16 ["tag"]
      514 SETTABLEKS                       R12 R31 K19 ["ref"]
      516 SETTABLEKS                       R14 R31 K72 ["onAbsoluteSizeChanged"]
      518 DUPTABLE                         R32 K76 [{"FlexMode"}]
      519 GETIMPORT                        R33 K79 [Enum.UIFlexMode.None]
      521 SETTABLEKS                       R33 R32 K75 ["FlexMode"]
      523 SETTABLEKS                       R32 R31 K73 ["flexItem"]
      525 LOADK                            R33 K80 ["%*--animated-content"]
      526 GETTABLEKS                       R35 R2 K13 ["testId"]
      528 NAMECALL                         R33 R33 K14 ["format"]
      530 CALL                             R33 2 1
      531 MOVE                             R32 R33
      532 SETTABLEKS                       R32 R31 K13 ["testId"]
      534 NEWTABLE                         R32 0 1
      536 GETTABLEKS                       R33 R2 K81 ["children"]
      538 SETLIST                          R32 R33 1 [1]
      540 CALL                             R29 3 1
      541 SETTABLEKS                       R29 R28 K70 ["AnimatedContainer"]
      543 JUMP                             ; [+6]
      544 NEWTABLE                         R28 0 1
      546 GETTABLEKS                       R29 R2 K81 ["children"]
      548 SETLIST                          R28 R29 1 [1]
      550 CALL                             R25 3 1
      551 JUMP                             ; [+1]
      552 LOADNIL                          R25
      553 SETTABLEKS                       R25 R24 K26 ["Content"]
      555 GETTABLEKS                       R26 R2 K82 ["hasDivider"]
      557 JUMPIFNOT                        R26 ; [+19]
      558 GETUPVAL                         R25 4
      559 GETTABLEKS                       R25 R25 K15 ["createElement"]
      561 GETUPVAL                         R26 12
      562 DUPTABLE                         R27 K83 [{"LayoutOrder", "testId"}]
      563 LOADN                            R28 3
      564 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      566 LOADK                            R29 K84 ["%*--divider"]
      567 GETTABLEKS                       R31 R2 K13 ["testId"]
      569 NAMECALL                         R29 R29 K14 ["format"]
      571 CALL                             R29 2 1
      572 MOVE                             R28 R29
      573 SETTABLEKS                       R28 R27 K13 ["testId"]
      575 CALL                             R25 2 1
      576 JUMP                             ; [+1]
      577 LOADNIL                          R25
      578 SETTABLEKS                       R25 R24 K27 ["Divider"]
      580 CALL                             R21 3 -1
      581 CLOSEUPVALS                      R9
      582 RETURN                           R21 -1

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
      127 DUPTABLE                         R18 K30 [{"hasDivider", "isExpanded"}]
      128 LOADB                            R19 1
      129 SETTABLEKS                       R19 R18 K28 ["hasDivider"]
      131 LOADB                            R19 0
      132 SETTABLEKS                       R19 R18 K29 ["isExpanded"]
      134 DUPCLOSURE                       R19 K31 [PROTO_0]
      135 DUPCLOSURE                       R20 K32 [PROTO_9]
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R6
      149 GETTABLEKS                       R21 R2 K33 ["memo"]
      151 GETTABLEKS                       R22 R2 K34 ["forwardRef"]
      153 MOVE                             R23 R20
      154 CALL                             R22 1 -1
      155 CALL                             R21 -1 -1
      156 RETURN                           R21 -1
