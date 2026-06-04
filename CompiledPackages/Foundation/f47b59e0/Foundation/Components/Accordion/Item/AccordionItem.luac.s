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
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R5 R5 K0 ["FoundationReducedMotionAccordion"]
        9 JUMPIFNOT                        R5 ; [+3]
       10 GETUPVAL                         R4 4
       11 CALL                             R4 0 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R4
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K0 ["FoundationReducedMotionAccordion"]
       17 JUMPIFNOT                        R6 ; [+3]
       18 GETTABLEKS                       R5 R4 K1 ["reducedMotion"]
       20 JUMP                             ; [+1]
       21 LOADB                            R5 0
       22 GETUPVAL                         R6 5
       23 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R3
       27 NEWTABLE                         R8 0 1
       29 MOVE                             R9 R3
       30 SETLIST                          R8 R9 1 [1]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R7 R7 K3 ["useState"]
       36 GETTABLEKS                       R8 R2 K4 ["isExpanded"]
       38 CALL                             R7 1 2
       39 GETUPVAL                         R9 5
       40 GETTABLEKS                       R9 R9 K5 ["useRef"]
       42 LOADB                            R10 0
       43 CALL                             R9 1 1
       44 GETUPVAL                         R10 6
       45 GETTABLEKS                       R10 R10 K6 ["useAnimatedBinding"]
       47 LOADN                            R11 0
       48 CALL                             R10 1 2
       49 GETUPVAL                         R12 6
       50 GETTABLEKS                       R12 R12 K6 ["useAnimatedBinding"]
       52 LOADN                            R13 0
       53 NEWCLOSURE                       R14 P1
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R8
       56 CALL                             R12 2 2
       57 GETUPVAL                         R14 5
       58 GETTABLEKS                       R14 R14 K5 ["useRef"]
       60 LOADNIL                          R15
       61 CALL                             R14 1 1
       62 GETUPVAL                         R15 5
       63 GETTABLEKS                       R15 R15 K7 ["useCallback"]
       65 NEWCLOSURE                       R16 P2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R13
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R6
       73 NEWTABLE                         R17 0 2
       75 MOVE                             R18 R5
       76 MOVE                             R19 R6
       77 SETLIST                          R17 R18 2 [1]
       79 CALL                             R15 2 1
       80 GETUPVAL                         R16 5
       81 GETTABLEKS                       R16 R16 K7 ["useCallback"]
       83 NEWCLOSURE                       R17 P3
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R13
       88 CAPTURE                          UPVAL U6
       89 CAPTURE                          VAL R6
       90 NEWTABLE                         R18 0 4
       92 MOVE                             R19 R14
       93 MOVE                             R20 R7
       94 MOVE                             R21 R5
       95 MOVE                             R22 R6
       96 SETLIST                          R18 R19 4 [1]
       98 CALL                             R16 2 1
       99 GETUPVAL                         R17 5
      100 GETTABLEKS                       R17 R17 K8 ["useEffect"]
      102 NEWCLOSURE                       R18 P4
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R8
      107 NEWTABLE                         R19 0 1
      109 GETTABLEKS                       R20 R2 K4 ["isExpanded"]
      111 SETLIST                          R19 R20 1 [1]
      113 CALL                             R17 2 0
      114 GETUPVAL                         R17 5
      115 GETTABLEKS                       R17 R17 K8 ["useEffect"]
      117 NEWCLOSURE                       R18 P5
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R11
      121 CAPTURE                          UPVAL U6
      122 CAPTURE                          VAL R6
      123 NEWTABLE                         R19 0 3
      125 MOVE                             R20 R7
      126 MOVE                             R21 R5
      127 MOVE                             R22 R6
      128 SETLIST                          R19 R20 3 [1]
      130 CALL                             R17 2 0
      131 GETUPVAL                         R17 7
      132 CALL                             R17 0 1
      133 GETTABLEKS                       R18 R17 K9 ["onAccordionItemActivated"]
      135 GETTABLEKS                       R19 R17 K10 ["itemSize"]
      137 GETUPVAL                         R20 8
      138 MOVE                             R21 R3
      139 MOVE                             R22 R19
      140 LOADB                            R23 0
      141 CALL                             R20 3 1
      142 GETUPVAL                         R21 5
      143 GETTABLEKS                       R21 R21 K7 ["useCallback"]
      145 NEWCLOSURE                       R22 P6
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R8
      149 NEWTABLE                         R23 0 1
      151 MOVE                             R24 R7
      152 SETLIST                          R23 R24 1 [1]
      154 CALL                             R21 2 1
      155 GETTABLEKS                       R23 R2 K11 ["onActivated"]
      157 JUMPIFNOT                        R23 ; [+3]
      158 GETTABLEKS                       R22 R2 K11 ["onActivated"]
      160 JUMP                             ; [+8]
      161 JUMPIFNOT                        R18 ; [+6]
      162 MOVE                             R22 R18
      163 GETTABLEKS                       R23 R2 K12 ["id"]
      165 MOVE                             R24 R7
      166 CALL                             R22 2 1
      167 JUMP                             ; [+1]
      168 MOVE                             R22 R21
      169 LOADK                            R24 K13 ["%*--item-%*"]
      170 GETTABLEKS                       R26 R17 K14 ["testId"]
      172 GETTABLEKS                       R27 R2 K12 ["id"]
      174 NAMECALL                         R24 R24 K15 ["format"]
      176 CALL                             R24 3 1
      177 MOVE                             R23 R24
      178 SETTABLEKS                       R23 R2 K14 ["testId"]
      180 GETUPVAL                         R23 5
      181 GETTABLEKS                       R23 R23 K16 ["createElement"]
      183 GETUPVAL                         R24 9
      184 GETUPVAL                         R25 10
      185 MOVE                             R26 R2
      186 DUPTABLE                         R27 K21 [{"tag", "AutomaticSize", "stateLayer", "ref"}]
      187 GETTABLEKS                       R28 R20 K22 ["container"]
      189 GETTABLEKS                       R28 R28 K17 ["tag"]
      191 SETTABLEKS                       R28 R27 K17 ["tag"]
      193 GETIMPORT                        R28 K25 [Enum.AutomaticSize.Y]
      195 SETTABLEKS                       R28 R27 K18 ["AutomaticSize"]
      197 GETTABLEKS                       R28 R20 K22 ["container"]
      199 GETTABLEKS                       R28 R28 K19 ["stateLayer"]
      201 SETTABLEKS                       R28 R27 K19 ["stateLayer"]
      203 SETTABLEKS                       R1 R27 K20 ["ref"]
      205 CALL                             R25 2 1
      206 DUPTABLE                         R26 K29 [{"Header", "Content", "Divider"}]
      207 GETUPVAL                         R27 5
      208 GETTABLEKS                       R27 R27 K16 ["createElement"]
      210 GETUPVAL                         R28 9
      211 DUPTABLE                         R29 K31 [{"LayoutOrder", "tag", "onActivated", "testId"}]
      212 LOADN                            R30 1
      213 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      215 GETTABLEKS                       R30 R20 K32 ["header"]
      217 GETTABLEKS                       R30 R30 K17 ["tag"]
      219 SETTABLEKS                       R30 R29 K17 ["tag"]
      221 SETTABLEKS                       R22 R29 K11 ["onActivated"]
      223 LOADK                            R31 K33 ["%*--header"]
      224 GETTABLEKS                       R33 R2 K14 ["testId"]
      226 NAMECALL                         R31 R31 K15 ["format"]
      228 CALL                             R31 2 1
      229 MOVE                             R30 R31
      230 SETTABLEKS                       R30 R29 K14 ["testId"]
      232 DUPTABLE                         R30 K37 [{"LeadingIcon", "Title", "CollapseIcon"}]
      233 GETTABLEKS                       R32 R2 K38 ["leadingIcon"]
      235 JUMPIFNOT                        R32 ; [+64]
      236 GETUPVAL                         R31 5
      237 GETTABLEKS                       R31 R31 K16 ["createElement"]
      239 GETUPVAL                         R32 11
      240 DUPTABLE                         R33 K43 [{"LayoutOrder", "name", "variant", "style", "size", "testId"}]
      241 LOADN                            R34 1
      242 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      244 GETTABLEKS                       R36 R2 K38 ["leadingIcon"]
      246 FASTCALL1                        TYPE R36 ; [+2]
      247 GETIMPORT                        R35 K45 [type]
      249 CALL                             R35 1 1
      250 JUMPIFNOTEQKS                    R35 K46 ["table"] ; [+6]
      252 GETTABLEKS                       R34 R2 K38 ["leadingIcon"]
      254 GETTABLEKS                       R34 R34 K39 ["name"]
      256 JUMP                             ; [+2]
      257 GETTABLEKS                       R34 R2 K38 ["leadingIcon"]
      259 SETTABLEKS                       R34 R33 K39 ["name"]
      261 GETTABLEKS                       R36 R2 K38 ["leadingIcon"]
      263 FASTCALL1                        TYPE R36 ; [+2]
      264 GETIMPORT                        R35 K45 [type]
      266 CALL                             R35 1 1
      267 JUMPIFNOTEQKS                    R35 K46 ["table"] ; [+6]
      269 GETTABLEKS                       R34 R2 K38 ["leadingIcon"]
      271 GETTABLEKS                       R34 R34 K40 ["variant"]
      273 JUMP                             ; [+1]
      274 LOADNIL                          R34
      275 SETTABLEKS                       R34 R33 K40 ["variant"]
      277 GETTABLEKS                       R34 R20 K47 ["icon"]
      279 GETTABLEKS                       R34 R34 K41 ["style"]
      281 SETTABLEKS                       R34 R33 K41 ["style"]
      283 GETTABLEKS                       R34 R20 K47 ["icon"]
      285 GETTABLEKS                       R34 R34 K42 ["size"]
      287 SETTABLEKS                       R34 R33 K42 ["size"]
      289 LOADK                            R35 K48 ["%*--leading-icon"]
      290 GETTABLEKS                       R37 R2 K14 ["testId"]
      292 NAMECALL                         R35 R35 K15 ["format"]
      294 CALL                             R35 2 1
      295 MOVE                             R34 R35
      296 SETTABLEKS                       R34 R33 K14 ["testId"]
      298 CALL                             R31 2 1
      299 JUMP                             ; [+1]
      300 LOADNIL                          R31
      301 SETTABLEKS                       R31 R30 K34 ["LeadingIcon"]
      303 GETUPVAL                         R31 5
      304 GETTABLEKS                       R31 R31 K16 ["createElement"]
      306 GETUPVAL                         R32 12
      307 DUPTABLE                         R33 K50 [{"LayoutOrder", "Text", "tag", "testId"}]
      308 LOADN                            R34 2
      309 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      311 GETTABLEKS                       R34 R2 K51 ["text"]
      313 SETTABLEKS                       R34 R33 K49 ["Text"]
      315 GETTABLEKS                       R34 R20 K51 ["text"]
      317 GETTABLEKS                       R34 R34 K17 ["tag"]
      319 SETTABLEKS                       R34 R33 K17 ["tag"]
      321 LOADK                            R35 K52 ["%*--title"]
      322 GETTABLEKS                       R37 R2 K14 ["testId"]
      324 NAMECALL                         R35 R35 K15 ["format"]
      326 CALL                             R35 2 1
      327 MOVE                             R34 R35
      328 SETTABLEKS                       R34 R33 K14 ["testId"]
      330 CALL                             R31 2 1
      331 SETTABLEKS                       R31 R30 K35 ["Title"]
      333 GETUPVAL                         R31 5
      334 GETTABLEKS                       R31 R31 K16 ["createElement"]
      336 GETUPVAL                         R32 9
      337 DUPTABLE                         R33 K53 [{"tag", "LayoutOrder"}]
      338 LOADK                            R34 K54 ["auto-xy"]
      339 SETTABLEKS                       R34 R33 K17 ["tag"]
      341 LOADN                            R34 3
      342 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      344 DUPTABLE                         R34 K56 [{"Icon"}]
      345 GETUPVAL                         R35 5
      346 GETTABLEKS                       R35 R35 K16 ["createElement"]
      348 GETUPVAL                         R36 11
      349 DUPTABLE                         R37 K58 [{"name", "Rotation", "style", "size", "testId"}]
      350 LOADK                            R38 K59 ["chevron-large-down"]
      351 SETTABLEKS                       R38 R37 K39 ["name"]
      353 SETTABLEKS                       R10 R37 K57 ["Rotation"]
      355 GETTABLEKS                       R38 R20 K47 ["icon"]
      357 GETTABLEKS                       R38 R38 K41 ["style"]
      359 SETTABLEKS                       R38 R37 K41 ["style"]
      361 GETTABLEKS                       R38 R20 K47 ["icon"]
      363 GETTABLEKS                       R38 R38 K42 ["size"]
      365 SETTABLEKS                       R38 R37 K42 ["size"]
      367 LOADK                            R39 K60 ["%*--collapse-icon"]
      368 GETTABLEKS                       R41 R2 K14 ["testId"]
      370 NAMECALL                         R39 R39 K15 ["format"]
      372 CALL                             R39 2 1
      373 MOVE                             R38 R39
      374 SETTABLEKS                       R38 R37 K14 ["testId"]
      376 CALL                             R35 2 1
      377 SETTABLEKS                       R35 R34 K55 ["Icon"]
      379 CALL                             R31 3 1
      380 SETTABLEKS                       R31 R30 K36 ["CollapseIcon"]
      382 CALL                             R27 3 1
      383 SETTABLEKS                       R27 R26 K26 ["Header"]
      385 JUMPIFNOT                        R7 ; [+75]
      386 GETUPVAL                         R27 5
      387 GETTABLEKS                       R27 R27 K16 ["createElement"]
      389 GETUPVAL                         R28 9
      390 DUPTABLE                         R29 K63 [{"tag", "LayoutOrder", "testId", "Size", "ClipsDescendants"}]
      391 LOADK                            R30 K64 ["col"]
      392 SETTABLEKS                       R30 R29 K17 ["tag"]
      394 LOADN                            R30 2
      395 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      397 LOADK                            R31 K65 ["%*--content"]
      398 GETTABLEKS                       R33 R2 K14 ["testId"]
      400 NAMECALL                         R31 R31 K15 ["format"]
      402 CALL                             R31 2 1
      403 MOVE                             R30 R31
      404 SETTABLEKS                       R30 R29 K14 ["testId"]
      406 JUMPIFNOT                        R12 ; [+5]
      407 DUPCLOSURE                       R32 K66 [PROTO_8]
      408 NAMECALL                         R30 R12 K67 ["map"]
      410 CALL                             R30 2 1
      411 JUMP                             ; [+1]
      412 LOADNIL                          R30
      413 SETTABLEKS                       R30 R29 K61 ["Size"]
      415 LOADB                            R30 1
      416 SETTABLEKS                       R30 R29 K62 ["ClipsDescendants"]
      418 DUPTABLE                         R30 K69 [{"AnimatedContainer"}]
      419 GETUPVAL                         R31 5
      420 GETTABLEKS                       R31 R31 K16 ["createElement"]
      422 GETUPVAL                         R32 9
      423 DUPTABLE                         R33 K72 [{"tag", "ref", "onAbsoluteSizeChanged", "flexItem", "testId"}]
      424 GETTABLEKS                       R34 R20 K73 ["content"]
      426 GETTABLEKS                       R34 R34 K17 ["tag"]
      428 SETTABLEKS                       R34 R33 K17 ["tag"]
      430 SETTABLEKS                       R14 R33 K20 ["ref"]
      432 SETTABLEKS                       R16 R33 K70 ["onAbsoluteSizeChanged"]
      434 DUPTABLE                         R34 K75 [{"FlexMode"}]
      435 GETIMPORT                        R35 K78 [Enum.UIFlexMode.None]
      437 SETTABLEKS                       R35 R34 K74 ["FlexMode"]
      439 SETTABLEKS                       R34 R33 K71 ["flexItem"]
      441 LOADK                            R35 K79 ["%*--animated-content"]
      442 GETTABLEKS                       R37 R2 K14 ["testId"]
      444 NAMECALL                         R35 R35 K15 ["format"]
      446 CALL                             R35 2 1
      447 MOVE                             R34 R35
      448 SETTABLEKS                       R34 R33 K14 ["testId"]
      450 NEWTABLE                         R34 0 1
      452 GETTABLEKS                       R35 R2 K80 ["children"]
      454 SETLIST                          R34 R35 1 [1]
      456 CALL                             R31 3 1
      457 SETTABLEKS                       R31 R30 K68 ["AnimatedContainer"]
      459 CALL                             R27 3 1
      460 JUMP                             ; [+1]
      461 LOADNIL                          R27
      462 SETTABLEKS                       R27 R26 K27 ["Content"]
      464 GETTABLEKS                       R28 R2 K81 ["hasDivider"]
      466 JUMPIFNOT                        R28 ; [+19]
      467 GETUPVAL                         R27 5
      468 GETTABLEKS                       R27 R27 K16 ["createElement"]
      470 GETUPVAL                         R28 13
      471 DUPTABLE                         R29 K82 [{"LayoutOrder", "testId"}]
      472 LOADN                            R30 3
      473 SETTABLEKS                       R30 R29 K30 ["LayoutOrder"]
      475 LOADK                            R31 K83 ["%*--divider"]
      476 GETTABLEKS                       R33 R2 K14 ["testId"]
      478 NAMECALL                         R31 R31 K15 ["format"]
      480 CALL                             R31 2 1
      481 MOVE                             R30 R31
      482 SETTABLEKS                       R30 R29 K14 ["testId"]
      484 CALL                             R27 2 1
      485 JUMP                             ; [+1]
      486 LOADNIL                          R27
      487 SETTABLEKS                       R27 R26 K28 ["Divider"]
      489 CALL                             R23 3 -1
      490 RETURN                           R23 -1

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
       52 GETTABLEKS                       R10 R0 K15 ["Utility"]
       54 GETTABLEKS                       R10 R10 K16 ["Flags"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Components"]
       61 GETTABLEKS                       R11 R11 K17 ["Types"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K11 ["Components"]
       68 GETTABLEKS                       R12 R12 K18 ["View"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R13 R0 K19 ["Providers"]
       75 GETTABLEKS                       R13 R13 K20 ["Preferences"]
       77 GETTABLEKS                       R13 R13 K21 ["usePreferences"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K15 ["Utility"]
       84 GETTABLEKS                       R14 R14 K22 ["withCommonProps"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K15 ["Utility"]
       91 GETTABLEKS                       R15 R15 K23 ["withDefaults"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETIMPORT                        R16 K1 [script]
       98 GETTABLEKS                       R16 R16 K4 ["Parent"]
      100 GETTABLEKS                       R16 R16 K4 ["Parent"]
      102 GETTABLEKS                       R16 R16 K24 ["useAccordion"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K19 ["Providers"]
      109 GETTABLEKS                       R17 R17 K25 ["Style"]
      111 GETTABLEKS                       R17 R17 K26 ["useTokens"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R18 R0 K27 ["Enums"]
      118 GETTABLEKS                       R18 R18 K28 ["InputSize"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K6 [require]
      123 GETTABLEKS                       R19 R0 K19 ["Providers"]
      125 GETTABLEKS                       R19 R19 K25 ["Style"]
      127 GETTABLEKS                       R19 R19 K29 ["Tokens"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K6 [require]
      132 GETIMPORT                        R20 K1 [script]
      134 GETTABLEKS                       R20 R20 K4 ["Parent"]
      136 GETTABLEKS                       R20 R20 K4 ["Parent"]
      138 GETTABLEKS                       R20 R20 K30 ["useAccordionItemVariants"]
      140 CALL                             R19 1 1
      141 DUPTABLE                         R20 K33 [{"hasDivider", "isExpanded"}]
      142 LOADB                            R21 1
      143 SETTABLEKS                       R21 R20 K31 ["hasDivider"]
      145 LOADB                            R21 0
      146 SETTABLEKS                       R21 R20 K32 ["isExpanded"]
      148 DUPCLOSURE                       R21 K34 [PROTO_0]
      149 DUPCLOSURE                       R22 K35 [PROTO_9]
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R6
      164 GETTABLEKS                       R23 R4 K36 ["memo"]
      166 GETTABLEKS                       R24 R4 K37 ["forwardRef"]
      168 MOVE                             R25 R22
      169 CALL                             R24 1 -1
      170 CALL                             R23 -1 -1
      171 RETURN                           R23 -1
