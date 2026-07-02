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
        7 GETTABLEKS                       R4 R4 K0 ["useMemo"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R3
       11 NEWTABLE                         R6 0 1
       13 MOVE                             R7 R3
       14 SETLIST                          R6 R7 1 [1]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K1 ["useState"]
       20 GETTABLEKS                       R6 R2 K2 ["isExpanded"]
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R7 R7 K3 ["useRef"]
       26 LOADB                            R8 0
       27 CALL                             R7 1 1
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R8 R8 K4 ["useAnimatedBinding"]
       31 LOADN                            R9 0
       32 CALL                             R8 1 2
       33 GETUPVAL                         R10 4
       34 GETTABLEKS                       R10 R10 K4 ["useAnimatedBinding"]
       36 LOADN                            R11 0
       37 NEWCLOSURE                       R12 P1
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R6
       40 CALL                             R10 2 2
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R12 R12 K3 ["useRef"]
       44 LOADNIL                          R13
       45 CALL                             R12 1 1
       46 GETUPVAL                         R13 3
       47 GETTABLEKS                       R13 R13 K5 ["useCallback"]
       49 NEWCLOSURE                       R14 P2
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R11
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R9
       55 NEWTABLE                         R15 0 0
       57 CALL                             R13 2 1
       58 GETUPVAL                         R14 3
       59 GETTABLEKS                       R14 R14 K5 ["useCallback"]
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
       74 GETUPVAL                         R15 3
       75 GETTABLEKS                       R15 R15 K6 ["useEffect"]
       77 NEWCLOSURE                       R16 P4
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R6
       82 NEWTABLE                         R17 0 1
       84 GETTABLEKS                       R18 R2 K2 ["isExpanded"]
       86 SETLIST                          R17 R18 1 [1]
       88 CALL                             R15 2 0
       89 GETUPVAL                         R15 3
       90 GETTABLEKS                       R15 R15 K6 ["useEffect"]
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
      114 GETUPVAL                         R19 3
      115 GETTABLEKS                       R19 R19 K5 ["useCallback"]
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
      152 GETUPVAL                         R21 3
      153 GETTABLEKS                       R21 R21 K14 ["createElement"]
      155 GETUPVAL                         R22 7
      156 GETUPVAL                         R23 8
      157 MOVE                             R24 R2
      158 DUPTABLE                         R25 K19 [{"tag", "AutomaticSize", "stateLayer", "ref"}]
      159 GETTABLEKS                       R26 R18 K20 ["container"]
      161 GETTABLEKS                       R26 R26 K15 ["tag"]
      163 SETTABLEKS                       R26 R25 K15 ["tag"]
      165 GETIMPORT                        R26 K23 [Enum.AutomaticSize.Y]
      167 SETTABLEKS                       R26 R25 K16 ["AutomaticSize"]
      169 GETTABLEKS                       R26 R18 K20 ["container"]
      171 GETTABLEKS                       R26 R26 K17 ["stateLayer"]
      173 SETTABLEKS                       R26 R25 K17 ["stateLayer"]
      175 SETTABLEKS                       R1 R25 K18 ["ref"]
      177 CALL                             R23 2 1
      178 DUPTABLE                         R24 K27 [{"Header", "Content", "Divider"}]
      179 GETUPVAL                         R25 3
      180 GETTABLEKS                       R25 R25 K14 ["createElement"]
      182 GETUPVAL                         R26 7
      183 DUPTABLE                         R27 K30 [{["LayoutOrder"] = 1, ["tag"], ["onActivated"], ["testId"]}]
      184 GETTABLEKS                       R28 R18 K31 ["header"]
      186 GETTABLEKS                       R28 R28 K15 ["tag"]
      188 SETTABLEKS                       R28 R27 K15 ["tag"]
      190 SETTABLEKS                       R20 R27 K9 ["onActivated"]
      192 LOADK                            R29 K32 ["%*--header"]
      193 GETTABLEKS                       R31 R2 K12 ["testId"]
      195 NAMECALL                         R29 R29 K13 ["format"]
      197 CALL                             R29 2 1
      198 MOVE                             R28 R29
      199 SETTABLEKS                       R28 R27 K12 ["testId"]
      201 DUPTABLE                         R28 K36 [{"LeadingIcon", "Title", "CollapseIcon"}]
      202 GETTABLEKS                       R30 R2 K37 ["leadingIcon"]
      204 JUMPIFNOT                        R30 ; [+61]
      205 GETUPVAL                         R29 3
      206 GETTABLEKS                       R29 R29 K14 ["createElement"]
      208 GETUPVAL                         R30 9
      209 DUPTABLE                         R31 K42 [{["LayoutOrder"] = 1, ["name"], ["variant"], ["style"], ["size"], ["testId"]}]
      210 GETTABLEKS                       R34 R2 K37 ["leadingIcon"]
      212 FASTCALL1                        TYPE R34 ; [+2]
      213 GETIMPORT                        R33 K44 [type]
      215 CALL                             R33 1 1
      216 JUMPIFNOTEQKS                    R33 K45 ["table"] ; [+6]
      218 GETTABLEKS                       R32 R2 K37 ["leadingIcon"]
      220 GETTABLEKS                       R32 R32 K38 ["name"]
      222 JUMP                             ; [+2]
      223 GETTABLEKS                       R32 R2 K37 ["leadingIcon"]
      225 SETTABLEKS                       R32 R31 K38 ["name"]
      227 GETTABLEKS                       R34 R2 K37 ["leadingIcon"]
      229 FASTCALL1                        TYPE R34 ; [+2]
      230 GETIMPORT                        R33 K44 [type]
      232 CALL                             R33 1 1
      233 JUMPIFNOTEQKS                    R33 K45 ["table"] ; [+6]
      235 GETTABLEKS                       R32 R2 K37 ["leadingIcon"]
      237 GETTABLEKS                       R32 R32 K39 ["variant"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R32
      241 SETTABLEKS                       R32 R31 K39 ["variant"]
      243 GETTABLEKS                       R32 R18 K46 ["icon"]
      245 GETTABLEKS                       R32 R32 K40 ["style"]
      247 SETTABLEKS                       R32 R31 K40 ["style"]
      249 GETTABLEKS                       R32 R18 K46 ["icon"]
      251 GETTABLEKS                       R32 R32 K41 ["size"]
      253 SETTABLEKS                       R32 R31 K41 ["size"]
      255 LOADK                            R33 K47 ["%*--leading-icon"]
      256 GETTABLEKS                       R35 R2 K12 ["testId"]
      258 NAMECALL                         R33 R33 K13 ["format"]
      260 CALL                             R33 2 1
      261 MOVE                             R32 R33
      262 SETTABLEKS                       R32 R31 K12 ["testId"]
      264 CALL                             R29 2 1
      265 JUMP                             ; [+1]
      266 LOADNIL                          R29
      267 SETTABLEKS                       R29 R28 K33 ["LeadingIcon"]
      269 GETUPVAL                         R29 3
      270 GETTABLEKS                       R29 R29 K14 ["createElement"]
      272 GETUPVAL                         R30 10
      273 DUPTABLE                         R31 K50 [{["LayoutOrder"] = 2, ["Text"], ["tag"], ["testId"]}]
      274 GETTABLEKS                       R32 R2 K51 ["text"]
      276 SETTABLEKS                       R32 R31 K49 ["Text"]
      278 GETTABLEKS                       R32 R18 K51 ["text"]
      280 GETTABLEKS                       R32 R32 K15 ["tag"]
      282 SETTABLEKS                       R32 R31 K15 ["tag"]
      284 LOADK                            R33 K52 ["%*--title"]
      285 GETTABLEKS                       R35 R2 K12 ["testId"]
      287 NAMECALL                         R33 R33 K13 ["format"]
      289 CALL                             R33 2 1
      290 MOVE                             R32 R33
      291 SETTABLEKS                       R32 R31 K12 ["testId"]
      293 CALL                             R29 2 1
      294 SETTABLEKS                       R29 R28 K34 ["Title"]
      296 GETUPVAL                         R29 3
      297 GETTABLEKS                       R29 R29 K14 ["createElement"]
      299 GETUPVAL                         R30 7
      300 DUPTABLE                         R31 K55 [{["tag"] = "auto-xy", ["LayoutOrder"] = 3}]
      301 DUPTABLE                         R32 K57 [{"Icon"}]
      302 GETUPVAL                         R33 3
      303 GETTABLEKS                       R33 R33 K14 ["createElement"]
      305 GETUPVAL                         R34 9
      306 DUPTABLE                         R35 K60 [{["name"] = "chevron-large-down", ["Rotation"], ["style"], ["size"], ["testId"]}]
      307 SETTABLEKS                       R8 R35 K59 ["Rotation"]
      309 GETTABLEKS                       R36 R18 K46 ["icon"]
      311 GETTABLEKS                       R36 R36 K40 ["style"]
      313 SETTABLEKS                       R36 R35 K40 ["style"]
      315 GETTABLEKS                       R36 R18 K46 ["icon"]
      317 GETTABLEKS                       R36 R36 K41 ["size"]
      319 SETTABLEKS                       R36 R35 K41 ["size"]
      321 LOADK                            R37 K61 ["%*--collapse-icon"]
      322 GETTABLEKS                       R39 R2 K12 ["testId"]
      324 NAMECALL                         R37 R37 K13 ["format"]
      326 CALL                             R37 2 1
      327 MOVE                             R36 R37
      328 SETTABLEKS                       R36 R35 K12 ["testId"]
      330 CALL                             R33 2 1
      331 SETTABLEKS                       R33 R32 K56 ["Icon"]
      333 CALL                             R29 3 1
      334 SETTABLEKS                       R29 R28 K35 ["CollapseIcon"]
      336 CALL                             R25 3 1
      337 SETTABLEKS                       R25 R24 K24 ["Header"]
      339 JUMPIFNOT                        R5 ; [+66]
      340 GETUPVAL                         R25 3
      341 GETTABLEKS                       R25 R25 K14 ["createElement"]
      343 GETUPVAL                         R26 7
      344 DUPTABLE                         R27 K66 [{["tag"] = "col", ["LayoutOrder"] = 2, ["testId"], ["Size"], ["ClipsDescendants"] = True}]
      345 LOADK                            R29 K67 ["%*--content"]
      346 GETTABLEKS                       R31 R2 K12 ["testId"]
      348 NAMECALL                         R29 R29 K13 ["format"]
      350 CALL                             R29 2 1
      351 MOVE                             R28 R29
      352 SETTABLEKS                       R28 R27 K12 ["testId"]
      354 JUMPIFNOT                        R10 ; [+5]
      355 DUPCLOSURE                       R30 K68 [PROTO_8]
      356 NAMECALL                         R28 R10 K69 ["map"]
      358 CALL                             R28 2 1
      359 JUMP                             ; [+1]
      360 LOADNIL                          R28
      361 SETTABLEKS                       R28 R27 K63 ["Size"]
      363 DUPTABLE                         R28 K71 [{"AnimatedContainer"}]
      364 GETUPVAL                         R29 3
      365 GETTABLEKS                       R29 R29 K14 ["createElement"]
      367 GETUPVAL                         R30 7
      368 DUPTABLE                         R31 K74 [{"tag", "ref", "onAbsoluteSizeChanged", "flexItem", "testId"}]
      369 GETTABLEKS                       R32 R18 K75 ["content"]
      371 GETTABLEKS                       R32 R32 K15 ["tag"]
      373 SETTABLEKS                       R32 R31 K15 ["tag"]
      375 SETTABLEKS                       R12 R31 K18 ["ref"]
      377 SETTABLEKS                       R14 R31 K72 ["onAbsoluteSizeChanged"]
      379 DUPTABLE                         R32 K77 [{"FlexMode"}]
      380 GETIMPORT                        R33 K80 [Enum.UIFlexMode.None]
      382 SETTABLEKS                       R33 R32 K76 ["FlexMode"]
      384 SETTABLEKS                       R32 R31 K73 ["flexItem"]
      386 LOADK                            R33 K81 ["%*--animated-content"]
      387 GETTABLEKS                       R35 R2 K12 ["testId"]
      389 NAMECALL                         R33 R33 K13 ["format"]
      391 CALL                             R33 2 1
      392 MOVE                             R32 R33
      393 SETTABLEKS                       R32 R31 K12 ["testId"]
      395 NEWTABLE                         R32 0 1
      397 GETTABLEKS                       R33 R2 K82 ["children"]
      399 SETLIST                          R32 R33 1 [1]
      401 CALL                             R29 3 1
      402 SETTABLEKS                       R29 R28 K70 ["AnimatedContainer"]
      404 CALL                             R25 3 1
      405 JUMP                             ; [+1]
      406 LOADNIL                          R25
      407 SETTABLEKS                       R25 R24 K25 ["Content"]
      409 GETTABLEKS                       R26 R2 K83 ["hasDivider"]
      411 JUMPIFNOT                        R26 ; [+16]
      412 GETUPVAL                         R25 3
      413 GETTABLEKS                       R25 R25 K14 ["createElement"]
      415 GETUPVAL                         R26 11
      416 DUPTABLE                         R27 K84 [{["LayoutOrder"] = 3, ["testId"]}]
      417 LOADK                            R29 K85 ["%*--divider"]
      418 GETTABLEKS                       R31 R2 K12 ["testId"]
      420 NAMECALL                         R29 R29 K13 ["format"]
      422 CALL                             R29 2 1
      423 MOVE                             R28 R29
      424 SETTABLEKS                       R28 R27 K12 ["testId"]
      426 CALL                             R25 2 1
      427 JUMP                             ; [+1]
      428 LOADNIL                          R25
      429 SETTABLEKS                       R25 R24 K26 ["Divider"]
      431 CALL                             R21 3 -1
      432 RETURN                           R21 -1

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
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Divider"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R7 K12 ["Icon"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Components"]
       42 GETTABLEKS                       R8 R8 K13 ["Text"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K10 ["Components"]
       49 GETTABLEKS                       R9 R9 K14 ["Types"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K10 ["Components"]
       56 GETTABLEKS                       R10 R10 K15 ["View"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K16 ["Utility"]
       63 GETTABLEKS                       R11 R11 K17 ["withCommonProps"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K16 ["Utility"]
       70 GETTABLEKS                       R12 R12 K18 ["withDefaults"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETIMPORT                        R13 K1 [script]
       77 GETTABLEKS                       R13 R13 K4 ["Parent"]
       79 GETTABLEKS                       R13 R13 K4 ["Parent"]
       81 GETTABLEKS                       R13 R13 K19 ["useAccordion"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K20 ["Providers"]
       88 GETTABLEKS                       R14 R14 K21 ["Style"]
       90 GETTABLEKS                       R14 R14 K22 ["useTokens"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K23 ["Enums"]
       97 GETTABLEKS                       R15 R15 K24 ["InputSize"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R16 R0 K20 ["Providers"]
      104 GETTABLEKS                       R16 R16 K21 ["Style"]
      106 GETTABLEKS                       R16 R16 K25 ["Tokens"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K6 [require]
      111 GETIMPORT                        R17 K1 [script]
      113 GETTABLEKS                       R17 R17 K4 ["Parent"]
      115 GETTABLEKS                       R17 R17 K4 ["Parent"]
      117 GETTABLEKS                       R17 R17 K26 ["useAccordionItemVariants"]
      119 CALL                             R16 1 1
      120 DUPTABLE                         R17 K31 [{["hasDivider"] = True, ["isExpanded"] = False}]
      121 DUPCLOSURE                       R18 K32 [PROTO_0]
      122 DUPCLOSURE                       R19 K33 [PROTO_9]
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R5
      135 GETTABLEKS                       R20 R3 K34 ["memo"]
      137 GETTABLEKS                       R21 R3 K35 ["forwardRef"]
      139 MOVE                             R22 R19
      140 CALL                             R21 1 -1
      141 CALL                             R20 -1 -1
      142 RETURN                           R20 -1
