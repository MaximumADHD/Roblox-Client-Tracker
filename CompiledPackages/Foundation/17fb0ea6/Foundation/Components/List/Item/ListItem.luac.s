PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        5 GETTABLEKS                       R0 R1 K0 ["onActivated"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K0 ["onActivated"]
       11 JUMPIFEQKNIL                     R0 ; [+5]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R0 R1 K0 ["onActivated"]
       16 RETURN                           R0 1
       17 LOADNIL                          R0
       18 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        5 GETTABLEKS                       R0 R1 K1 ["inputType"]
        7 RETURN                           R0 1
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        5 GETTABLEKS                       R0 R1 K1 ["isChecked"]
        7 RETURN                           R0 1
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["title"]
        3 FASTCALL1                        TYPEOF R1 ; [+2]
        4 GETIMPORT                        R0 K2 [typeof]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["string"] ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K0 ["title"]
       12 RETURN                           R0 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["title"]
       16 FASTCALL1                        TYPEOF R1 ; [+2]
       17 GETIMPORT                        R0 K2 [typeof]
       19 CALL                             R0 1 1
       20 JUMPIFNOTEQKS                    R0 K4 ["table"] ; [+7]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K0 ["title"]
       25 GETTABLEKS                       R0 R1 K0 ["title"]
       27 RETURN                           R0 1
       28 LOADNIL                          R0
       29 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["title"]
        3 FASTCALL1                        TYPEOF R1 ; [+2]
        4 GETIMPORT                        R0 K2 [typeof]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["table"] ; [+16]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["title"]
       12 GETTABLEKS                       R1 R2 K0 ["title"]
       14 JUMPIFEQKNIL                     R1 ; [+7]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K0 ["title"]
       19 GETTABLEKS                       R0 R1 K4 ["metadata"]
       21 RETURN                           R0 1
       22 LOADNIL                          R0
       23 RETURN                           R0 1
       24 LOADNIL                          R0
       25 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETIMPORT                        R0 K2 [string.gsub]
        4 GETUPVAL                         R1 0
        5 LOADK                            R2 K3 ["%s+"]
        6 LOADK                            R3 K4 ["-"]
        7 CALL                             R0 3 1
        8 JUMPIF                           R0 ; [+1]
        9 LOADK                            R0 K5 [""]
       10 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R4 R3 K0 ["size"]
        8 JUMPIF                           R4 ; [+3]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K1 ["Medium"]
       12 GETUPVAL                         R5 4
       13 CALL                             R5 0 1
       14 GETUPVAL                         R6 5
       15 MOVE                             R7 R5
       16 MOVE                             R8 R4
       17 CALL                             R6 2 1
       18 GETUPVAL                         R7 6
       19 MOVE                             R8 R5
       20 MOVE                             R9 R4
       21 LOADK                            R10 K2 ["Icon"]
       22 CALL                             R7 3 1
       23 LOADB                            R8 0
       24 GETTABLEKS                       R10 R2 K3 ["onActivated"]
       26 FASTCALL1                        TYPEOF R10 ; [+2]
       27 GETIMPORT                        R9 K5 [typeof]
       29 CALL                             R9 1 1
       30 JUMPIFNOTEQKS                    R9 K6 ["table"] ; [+9]
       32 GETTABLEKS                       R10 R2 K3 ["onActivated"]
       34 GETTABLEKS                       R9 R10 K3 ["onActivated"]
       36 JUMPIFNOTEQKNIL                  R9 ; [+2]
       38 LOADB                            R8 0 +1
       39 LOADB                            R8 1
       40 GETUPVAL                         R10 7
       41 GETTABLEKS                       R9 R10 K7 ["useMemo"]
       43 NEWCLOSURE                       R10 P0
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R11 0 2
       48 GETTABLEKS                       R12 R2 K3 ["onActivated"]
       50 MOVE                             R13 R8
       51 SETLIST                          R11 R12 2 [1]
       53 CALL                             R9 2 1
       54 GETUPVAL                         R11 7
       55 GETTABLEKS                       R10 R11 K7 ["useMemo"]
       57 NEWCLOSURE                       R11 P1
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R12 0 2
       62 GETTABLEKS                       R13 R2 K3 ["onActivated"]
       64 MOVE                             R14 R8
       65 SETLIST                          R12 R13 2 [1]
       67 CALL                             R10 2 1
       68 GETUPVAL                         R12 7
       69 GETTABLEKS                       R11 R12 K7 ["useMemo"]
       71 NEWCLOSURE                       R12 P2
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R2
       74 NEWTABLE                         R13 0 2
       76 GETTABLEKS                       R14 R2 K3 ["onActivated"]
       78 MOVE                             R15 R8
       79 SETLIST                          R13 R14 2 [1]
       81 CALL                             R11 2 1
       82 GETUPVAL                         R13 7
       83 GETTABLEKS                       R12 R13 K7 ["useMemo"]
       85 NEWCLOSURE                       R13 P3
       86 CAPTURE                          VAL R2
       87 NEWTABLE                         R14 0 1
       89 GETTABLEKS                       R15 R2 K8 ["title"]
       91 SETLIST                          R14 R15 1 [1]
       93 CALL                             R12 2 1
       94 GETUPVAL                         R14 7
       95 GETTABLEKS                       R13 R14 K7 ["useMemo"]
       97 NEWCLOSURE                       R14 P4
       98 CAPTURE                          VAL R2
       99 NEWTABLE                         R15 0 1
      101 GETTABLEKS                       R16 R2 K8 ["title"]
      103 SETLIST                          R15 R16 1 [1]
      105 CALL                             R13 2 1
      106 GETUPVAL                         R15 7
      107 GETTABLEKS                       R14 R15 K7 ["useMemo"]
      109 NEWCLOSURE                       R15 P5
      110 CAPTURE                          VAL R12
      111 NEWTABLE                         R16 0 1
      113 MOVE                             R17 R12
      114 SETLIST                          R16 R17 1 [1]
      116 CALL                             R14 2 1
      117 GETTABLEKS                       R16 R2 K9 ["testId"]
      119 JUMPIFNOT                        R16 ; [+3]
      120 GETTABLEKS                       R15 R2 K9 ["testId"]
      122 JUMP                             ; [+8]
      123 LOADK                            R16 K10 ["%*--item-%*"]
      124 GETTABLEKS                       R18 R3 K9 ["testId"]
      126 MOVE                             R19 R14
      127 NAMECALL                         R16 R16 K11 ["format"]
      129 CALL                             R16 3 1
      130 MOVE                             R15 R16
      131 SETTABLEKS                       R15 R2 K9 ["testId"]
      133 GETUPVAL                         R16 7
      134 GETTABLEKS                       R15 R16 K12 ["useCallback"]
      136 NEWCLOSURE                       R16 P6
      137 CAPTURE                          VAL R9
      138 NEWTABLE                         R17 0 1
      140 MOVE                             R18 R9
      141 SETLIST                          R17 R18 1 [1]
      143 CALL                             R15 2 1
      144 GETUPVAL                         R17 7
      145 GETTABLEKS                       R16 R17 K13 ["createElement"]
      147 GETUPVAL                         R17 8
      148 DUPTABLE                         R18 K17 [{"tag", "LayoutOrder", "ref"}]
      149 LOADK                            R19 K18 ["col size-full-0 auto-y"]
      150 SETTABLEKS                       R19 R18 K14 ["tag"]
      152 GETTABLEKS                       R19 R2 K15 ["LayoutOrder"]
      154 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      156 SETTABLEKS                       R1 R18 K16 ["ref"]
      158 DUPTABLE                         R19 K21 [{"HoverWrapper", "Divider"}]
      159 GETUPVAL                         R21 7
      160 GETTABLEKS                       R20 R21 K13 ["createElement"]
      162 GETUPVAL                         R21 8
      163 DUPTABLE                         R22 K23 [{"padding", "tag", "LayoutOrder"}]
      164 GETTABLEKS                       R24 R3 K24 ["isContained"]
      166 JUMPIFNOT                        R24 ; [+5]
      167 GETTABLEKS                       R24 R5 K25 ["Padding"]
      169 GETTABLEKS                       R23 R24 K26 ["Small"]
      171 JUMP                             ; [+39]
      172 DUPTABLE                         R23 K29 [{"left", "right"}]
      173 GETIMPORT                        R24 K32 [UDim.new]
      175 LOADN                            R25 0
      176 GETTABLEKS                       R27 R3 K33 ["hasMargin"]
      178 JUMPIFNOT                        R27 ; [+5]
      179 GETTABLEKS                       R27 R5 K25 ["Padding"]
      181 GETTABLEKS                       R26 R27 K26 ["Small"]
      183 JUMP                             ; [+5]
      184 GETTABLEKS                       R28 R5 K25 ["Padding"]
      186 GETTABLEKS                       R27 R28 K26 ["Small"]
      188 MINUS                            R26 R27
      189 CALL                             R24 2 1
      190 SETTABLEKS                       R24 R23 K27 ["left"]
      192 GETIMPORT                        R24 K32 [UDim.new]
      194 LOADN                            R25 0
      195 GETTABLEKS                       R27 R3 K33 ["hasMargin"]
      197 JUMPIFNOT                        R27 ; [+5]
      198 GETTABLEKS                       R27 R5 K25 ["Padding"]
      200 GETTABLEKS                       R26 R27 K26 ["Small"]
      202 JUMP                             ; [+5]
      203 GETTABLEKS                       R28 R5 K25 ["Padding"]
      205 GETTABLEKS                       R27 R28 K26 ["Small"]
      207 MINUS                            R26 R27
      208 CALL                             R24 2 1
      209 SETTABLEKS                       R24 R23 K28 ["right"]
      211 SETTABLEKS                       R23 R22 K22 ["padding"]
      213 LOADK                            R23 K34 ["size-full-0 auto-y padding-y-xsmall"]
      214 SETTABLEKS                       R23 R22 K14 ["tag"]
      216 LOADN                            R23 1
      217 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      219 DUPTABLE                         R23 K36 [{"ListItemContainer"}]
      220 GETUPVAL                         R25 7
      221 GETTABLEKS                       R24 R25 K13 ["createElement"]
      223 GETUPVAL                         R25 8
      224 DUPTABLE                         R26 K37 [{"onActivated", "tag"}]
      225 SETTABLEKS                       R9 R26 K3 ["onActivated"]
      227 NEWTABLE                         R27 4 0
      229 LOADB                            R28 1
      230 SETTABLEKS                       R28 R27 K38 ["size-full-0 auto-y radius-medium"]
      232 GETTABLEKS                       R28 R3 K33 ["hasMargin"]
      234 SETTABLEKS                       R28 R27 K39 ["margin-x-small"]
      236 GETTABLEKS                       R29 R3 K33 ["hasMargin"]
      238 NOT                              R28 R29
      239 SETTABLEKS                       R28 R27 K40 ["padding-x-small"]
      241 SETTABLEKS                       R27 R26 K14 ["tag"]
      243 DUPTABLE                         R27 K42 [{"ListItem"}]
      244 GETUPVAL                         R29 7
      245 GETTABLEKS                       R28 R29 K13 ["createElement"]
      247 GETUPVAL                         R29 8
      248 DUPTABLE                         R30 K43 [{"testId", "tag"}]
      249 GETTABLEKS                       R31 R2 K9 ["testId"]
      251 SETTABLEKS                       R31 R30 K9 ["testId"]
      253 LOADK                            R31 K44 ["row align-y-center gap-medium size-full-0 auto-y padding-y-small radius-medium"]
      254 SETTABLEKS                       R31 R30 K14 ["tag"]
      256 DUPTABLE                         R31 K47 [{"LeadingContainer", "Content"}]
      257 GETTABLEKS                       R33 R2 K48 ["leading"]
      259 JUMPIFNOT                        R33 ; [+25]
      260 GETUPVAL                         R33 7
      261 GETTABLEKS                       R32 R33 K13 ["createElement"]
      263 GETUPVAL                         R33 9
      264 DUPTABLE                         R34 K50 [{"config", "size", "testId", "LayoutOrder"}]
      265 GETTABLEKS                       R35 R2 K48 ["leading"]
      267 SETTABLEKS                       R35 R34 K49 ["config"]
      269 SETTABLEKS                       R4 R34 K0 ["size"]
      271 LOADK                            R36 K51 ["%*--leading-accessory"]
      272 GETTABLEKS                       R38 R2 K9 ["testId"]
      274 NAMECALL                         R36 R36 K11 ["format"]
      276 CALL                             R36 2 1
      277 MOVE                             R35 R36
      278 SETTABLEKS                       R35 R34 K9 ["testId"]
      280 LOADN                            R35 0
      281 SETTABLEKS                       R35 R34 K15 ["LayoutOrder"]
      283 CALL                             R32 2 1
      284 JUMP                             ; [+1]
      285 LOADNIL                          R32
      286 SETTABLEKS                       R32 R31 K45 ["LeadingContainer"]
      288 GETUPVAL                         R33 7
      289 GETTABLEKS                       R32 R33 K13 ["createElement"]
      291 GETUPVAL                         R33 8
      292 DUPTABLE                         R34 K52 [{"tag", "LayoutOrder"}]
      293 LOADK                            R35 K53 ["row flex-between align-x-center align-y-center fill gap-medium auto-y"]
      294 SETTABLEKS                       R35 R34 K14 ["tag"]
      296 LOADN                            R35 1
      297 SETTABLEKS                       R35 R34 K15 ["LayoutOrder"]
      299 DUPTABLE                         R35 K57 [{"TextContainer", "TrailingContainer", "ActivatedIconContainer"}]
      300 GETUPVAL                         R37 7
      301 GETTABLEKS                       R36 R37 K13 ["createElement"]
      303 GETUPVAL                         R37 8
      304 DUPTABLE                         R38 K52 [{"tag", "LayoutOrder"}]
      305 LOADK                            R39 K58 ["col fill gap-small auto-y padding-y-xsmall"]
      306 SETTABLEKS                       R39 R38 K14 ["tag"]
      308 LOADN                            R39 1
      309 SETTABLEKS                       R39 R38 K15 ["LayoutOrder"]
      311 DUPTABLE                         R39 K61 [{"TitleContainer", "Description"}]
      312 JUMPIFNOT                        R12 ; [+67]
      313 GETUPVAL                         R41 7
      314 GETTABLEKS                       R40 R41 K13 ["createElement"]
      316 GETUPVAL                         R41 8
      317 DUPTABLE                         R42 K52 [{"tag", "LayoutOrder"}]
      318 LOADK                            R43 K62 ["col gap-xsmall auto-xy"]
      319 SETTABLEKS                       R43 R42 K14 ["tag"]
      321 LOADN                            R43 0
      322 SETTABLEKS                       R43 R42 K15 ["LayoutOrder"]
      324 DUPTABLE                         R43 K65 [{"Title", "Metadata"}]
      325 JUMPIFNOT                        R12 ; [+24]
      326 GETUPVAL                         R45 7
      327 GETTABLEKS                       R44 R45 K13 ["createElement"]
      329 GETUPVAL                         R45 10
      330 DUPTABLE                         R46 K68 [{"Text", "RichText", "tag", "LayoutOrder"}]
      331 GETUPVAL                         R47 11
      332 MOVE                             R48 R12
      333 CALL                             R47 1 1
      334 SETTABLEKS                       R47 R46 K66 ["Text"]
      336 LOADB                            R47 1
      337 SETTABLEKS                       R47 R46 K67 ["RichText"]
      339 GETTABLEKS                       R48 R6 K8 ["title"]
      341 GETTABLEKS                       R47 R48 K14 ["tag"]
      343 SETTABLEKS                       R47 R46 K14 ["tag"]
      345 LOADN                            R47 0
      346 SETTABLEKS                       R47 R46 K15 ["LayoutOrder"]
      348 CALL                             R44 2 1
      349 JUMP                             ; [+1]
      350 LOADNIL                          R44
      351 SETTABLEKS                       R44 R43 K63 ["Title"]
      353 JUMPIFNOT                        R13 ; [+21]
      354 GETUPVAL                         R45 7
      355 GETTABLEKS                       R44 R45 K13 ["createElement"]
      357 GETUPVAL                         R45 10
      358 DUPTABLE                         R46 K68 [{"Text", "RichText", "tag", "LayoutOrder"}]
      359 SETTABLEKS                       R13 R46 K66 ["Text"]
      361 LOADB                            R47 1
      362 SETTABLEKS                       R47 R46 K67 ["RichText"]
      364 GETTABLEKS                       R48 R6 K69 ["metadata"]
      366 GETTABLEKS                       R47 R48 K14 ["tag"]
      368 SETTABLEKS                       R47 R46 K14 ["tag"]
      370 LOADN                            R47 1
      371 SETTABLEKS                       R47 R46 K15 ["LayoutOrder"]
      373 CALL                             R44 2 1
      374 JUMP                             ; [+1]
      375 LOADNIL                          R44
      376 SETTABLEKS                       R44 R43 K64 ["Metadata"]
      378 CALL                             R40 3 1
      379 JUMP                             ; [+1]
      380 LOADNIL                          R40
      381 SETTABLEKS                       R40 R39 K59 ["TitleContainer"]
      383 GETTABLEKS                       R40 R2 K70 ["description"]
      385 JUMPIFNOT                        R40 ; [+22]
      386 GETUPVAL                         R41 7
      387 GETTABLEKS                       R40 R41 K13 ["createElement"]
      389 GETUPVAL                         R41 10
      390 DUPTABLE                         R42 K68 [{"Text", "RichText", "tag", "LayoutOrder"}]
      391 GETTABLEKS                       R43 R2 K70 ["description"]
      393 SETTABLEKS                       R43 R42 K66 ["Text"]
      395 LOADB                            R43 1
      396 SETTABLEKS                       R43 R42 K67 ["RichText"]
      398 GETTABLEKS                       R44 R6 K70 ["description"]
      400 GETTABLEKS                       R43 R44 K14 ["tag"]
      402 SETTABLEKS                       R43 R42 K14 ["tag"]
      404 LOADN                            R43 1
      405 SETTABLEKS                       R43 R42 K15 ["LayoutOrder"]
      407 CALL                             R40 2 1
      408 SETTABLEKS                       R40 R39 K60 ["Description"]
      410 CALL                             R36 3 1
      411 SETTABLEKS                       R36 R35 K54 ["TextContainer"]
      413 GETTABLEKS                       R37 R2 K71 ["trailing"]
      415 JUMPIFNOT                        R37 ; [+15]
      416 GETUPVAL                         R37 7
      417 GETTABLEKS                       R36 R37 K13 ["createElement"]
      419 GETUPVAL                         R37 8
      420 DUPTABLE                         R38 K52 [{"tag", "LayoutOrder"}]
      421 LOADK                            R39 K72 ["align-x-center align-y-center auto-xy"]
      422 SETTABLEKS                       R39 R38 K14 ["tag"]
      424 LOADN                            R39 2
      425 SETTABLEKS                       R39 R38 K15 ["LayoutOrder"]
      427 GETTABLEKS                       R39 R2 K71 ["trailing"]
      429 CALL                             R36 3 1
      430 JUMP                             ; [+1]
      431 LOADNIL                          R36
      432 SETTABLEKS                       R36 R35 K55 ["TrailingContainer"]
      434 GETTABLEKS                       R37 R2 K3 ["onActivated"]
      436 JUMPIFNOT                        R37 ; [+113]
      437 GETUPVAL                         R37 7
      438 GETTABLEKS                       R36 R37 K13 ["createElement"]
      440 GETUPVAL                         R37 8
      441 DUPTABLE                         R38 K52 [{"tag", "LayoutOrder"}]
      442 LOADK                            R39 K72 ["align-x-center align-y-center auto-xy"]
      443 SETTABLEKS                       R39 R38 K14 ["tag"]
      445 LOADN                            R39 3
      446 SETTABLEKS                       R39 R38 K15 ["LayoutOrder"]
      448 DUPTABLE                         R39 K74 [{"ActivatedIcon"}]
      449 JUMPIFNOTEQKNIL                  R10 ; [+30]
      451 GETUPVAL                         R41 7
      452 GETTABLEKS                       R40 R41 K13 ["createElement"]
      454 GETUPVAL                         R41 12
      455 DUPTABLE                         R42 K76 [{"name", "size", "testId"}]
      456 GETUPVAL                         R45 13
      457 GETTABLEKS                       R44 R45 K2 ["Icon"]
      459 GETTABLEKS                       R43 R44 K77 ["ChevronLargeRight"]
      461 SETTABLEKS                       R43 R42 K75 ["name"]
      463 GETTABLEKS                       R44 R6 K78 ["icon"]
      465 GETTABLEKS                       R43 R44 K0 ["size"]
      467 SETTABLEKS                       R43 R42 K0 ["size"]
      469 LOADK                            R44 K79 ["%*--activated-icon"]
      470 GETTABLEKS                       R46 R2 K9 ["testId"]
      472 NAMECALL                         R44 R44 K11 ["format"]
      474 CALL                             R44 2 1
      475 MOVE                             R43 R44
      476 SETTABLEKS                       R43 R42 K9 ["testId"]
      478 CALL                             R40 2 1
      479 JUMP                             ; [+66]
      480 GETUPVAL                         R42 14
      481 GETTABLEKS                       R41 R42 K80 ["Radio"]
      483 JUMPIFNOTEQ                      R10 R41 ; [+37]
      485 GETUPVAL                         R41 7
      486 GETTABLEKS                       R40 R41 K13 ["createElement"]
      488 GETUPVAL                         R42 15
      489 GETTABLEKS                       R41 R42 K81 ["Root"]
      491 DUPTABLE                         R42 K85 [{"value", "onValueChanged", "Selectable"}]
      492 JUMPIFNOT                        R11 ; [+2]
      493 LOADK                            R43 K86 ["radio"]
      494 JUMP                             ; [+1]
      495 LOADK                            R43 K87 [""]
      496 SETTABLEKS                       R43 R42 K82 ["value"]
      498 SETTABLEKS                       R15 R42 K83 ["onValueChanged"]
      500 LOADB                            R43 0
      501 SETTABLEKS                       R43 R42 K84 ["Selectable"]
      503 GETUPVAL                         R44 7
      504 GETTABLEKS                       R43 R44 K13 ["createElement"]
      506 GETUPVAL                         R45 15
      507 GETTABLEKS                       R44 R45 K88 ["Item"]
      509 DUPTABLE                         R45 K90 [{"value", "label", "size"}]
      510 LOADK                            R46 K86 ["radio"]
      511 SETTABLEKS                       R46 R45 K82 ["value"]
      513 LOADK                            R46 K87 [""]
      514 SETTABLEKS                       R46 R45 K89 ["label"]
      516 SETTABLEKS                       R4 R45 K0 ["size"]
      518 CALL                             R43 2 -1
      519 CALL                             R40 -1 1
      520 JUMP                             ; [+25]
      521 GETUPVAL                         R41 7
      522 GETTABLEKS                       R40 R41 K13 ["createElement"]
      524 GETUPVAL                         R43 14
      525 GETTABLEKS                       R42 R43 K91 ["Checkbox"]
      527 JUMPIFNOTEQ                      R10 R42 ; [+3]
      529 GETUPVAL                         R41 16
      530 JUMP                             ; [+1]
      531 GETUPVAL                         R41 17
      532 DUPTABLE                         R42 K93 [{"label", "onActivated", "isChecked", "size", "Selectable"}]
      533 LOADK                            R43 K87 [""]
      534 SETTABLEKS                       R43 R42 K89 ["label"]
      536 SETTABLEKS                       R15 R42 K3 ["onActivated"]
      538 SETTABLEKS                       R11 R42 K92 ["isChecked"]
      540 SETTABLEKS                       R4 R42 K0 ["size"]
      542 LOADB                            R43 0
      543 SETTABLEKS                       R43 R42 K84 ["Selectable"]
      545 CALL                             R40 2 1
      546 SETTABLEKS                       R40 R39 K73 ["ActivatedIcon"]
      548 CALL                             R36 3 1
      549 JUMP                             ; [+1]
      550 LOADNIL                          R36
      551 SETTABLEKS                       R36 R35 K56 ["ActivatedIconContainer"]
      553 CALL                             R32 3 1
      554 SETTABLEKS                       R32 R31 K46 ["Content"]
      556 CALL                             R28 3 1
      557 SETTABLEKS                       R28 R27 K41 ["ListItem"]
      559 CALL                             R24 3 1
      560 SETTABLEKS                       R24 R23 K35 ["ListItemContainer"]
      562 CALL                             R20 3 1
      563 SETTABLEKS                       R20 R19 K19 ["HoverWrapper"]
      565 GETTABLEKS                       R21 R3 K94 ["hasDivider"]
      567 JUMPIFNOT                        R21 ; [+102]
      568 GETTABLEKS                       R21 R2 K15 ["LayoutOrder"]
      570 GETTABLEKS                       R22 R3 K95 ["lastLayoutOrder"]
      572 JUMPIFEQ                         R21 R22 ; [+97]
      574 GETTABLEKS                       R21 R3 K96 ["isInset"]
      576 JUMPIFNOT                        R21 ; [+83]
      577 GETUPVAL                         R21 7
      578 GETTABLEKS                       R20 R21 K13 ["createElement"]
      580 GETUPVAL                         R21 8
      581 DUPTABLE                         R22 K52 [{"tag", "LayoutOrder"}]
      582 LOADK                            R23 K97 ["row size-full-0 auto-y"]
      583 SETTABLEKS                       R23 R22 K14 ["tag"]
      585 LOADN                            R23 2
      586 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      588 DUPTABLE                         R23 K100 [{"LeadingSpacer", "DividerLine"}]
      589 GETUPVAL                         R25 7
      590 GETTABLEKS                       R24 R25 K13 ["createElement"]
      592 GETUPVAL                         R25 8
      593 DUPTABLE                         R26 K102 [{"Size", "LayoutOrder"}]
      594 GETIMPORT                        R27 K105 [UDim2.fromOffset]
      596 GETTABLEKS                       R30 R3 K33 ["hasMargin"]
      598 JUMPIFNOT                        R30 ; [+10]
      599 GETTABLEKS                       R31 R5 K25 ["Padding"]
      601 GETTABLEKS                       R30 R31 K26 ["Small"]
      603 GETTABLEKS                       R32 R5 K106 ["Margin"]
      605 GETTABLEKS                       R31 R32 K26 ["Small"]
      607 ADD                              R29 R30 R31
      608 JUMP                             ; [+1]
      609 LOADN                            R29 0
      610 GETTABLEKS                       R31 R2 K48 ["leading"]
      612 JUMPIFNOT                        R31 ; [+14]
      613 GETTABLEKS                       R34 R7 K107 ["container"]
      615 GETTABLEKS                       R33 R34 K101 ["Size"]
      617 GETTABLEKS                       R32 R33 K108 ["X"]
      619 GETTABLEKS                       R31 R32 K109 ["Offset"]
      621 GETTABLEKS                       R33 R5 K110 ["Gap"]
      623 GETTABLEKS                       R32 R33 K1 ["Medium"]
      625 ADD                              R30 R31 R32
      626 JUMP                             ; [+1]
      627 LOADN                            R30 0
      628 ADD                              R28 R29 R30
      629 LOADN                            R29 0
      630 CALL                             R27 2 1
      631 SETTABLEKS                       R27 R26 K101 ["Size"]
      633 LOADN                            R27 0
      634 SETTABLEKS                       R27 R26 K15 ["LayoutOrder"]
      636 CALL                             R24 2 1
      637 SETTABLEKS                       R24 R23 K98 ["LeadingSpacer"]
      639 GETUPVAL                         R25 7
      640 GETTABLEKS                       R24 R25 K13 ["createElement"]
      642 GETUPVAL                         R25 8
      643 DUPTABLE                         R26 K52 [{"tag", "LayoutOrder"}]
      644 LOADK                            R27 K111 ["fill auto-y"]
      645 SETTABLEKS                       R27 R26 K14 ["tag"]
      647 LOADN                            R27 1
      648 SETTABLEKS                       R27 R26 K15 ["LayoutOrder"]
      650 GETUPVAL                         R28 7
      651 GETTABLEKS                       R27 R28 K13 ["createElement"]
      653 GETUPVAL                         R28 18
      654 CALL                             R27 1 -1
      655 CALL                             R24 -1 1
      656 SETTABLEKS                       R24 R23 K99 ["DividerLine"]
      658 CALL                             R20 3 1
      659 JUMP                             ; [+11]
      660 GETUPVAL                         R21 7
      661 GETTABLEKS                       R20 R21 K13 ["createElement"]
      663 GETUPVAL                         R21 18
      664 DUPTABLE                         R22 K112 [{"LayoutOrder"}]
      665 LOADN                            R23 2
      666 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      668 CALL                             R20 2 1
      669 JUMP                             ; [+1]
      670 LOADNIL                          R20
      671 SETTABLEKS                       R20 R19 K20 ["Divider"]
      673 CALL                             R16 3 -1
      674 RETURN                           R16 -1

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
       19 GETTABLEKS                       R4 R0 K9 ["Components"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R4 K10 ["Checkbox"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R4 K11 ["Divider"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R4 K12 ["Icon"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R10 R0 K13 ["Enums"]
       40 GETTABLEKS                       R9 R10 K14 ["InputSize"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R11 R0 K13 ["Enums"]
       47 GETTABLEKS                       R10 R11 K15 ["ListItemInputType"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R4 K16 ["RadioGroup"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R12 R4 K17 ["Text"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R13 R4 K18 ["Toggle"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K6 [require]
       67 GETTABLEKS                       R15 R0 K9 ["Components"]
       69 GETTABLEKS                       R14 R15 K19 ["Types"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K6 [require]
       74 GETTABLEKS                       R15 R4 K20 ["View"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K6 [require]
       79 GETTABLEKS                       R17 R0 K21 ["Utility"]
       81 GETTABLEKS                       R16 R17 K22 ["escapeRichText"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K6 [require]
       86 GETTABLEKS                       R19 R0 K23 ["Providers"]
       88 GETTABLEKS                       R18 R19 K24 ["Style"]
       90 GETTABLEKS                       R17 R18 K25 ["useTokens"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R19 R0 K21 ["Utility"]
       97 GETTABLEKS                       R18 R19 K26 ["withDefaults"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K6 [require]
      102 GETIMPORT                        R21 K1 [script]
      104 GETTABLEKS                       R20 R21 K4 ["Parent"]
      106 GETTABLEKS                       R19 R20 K27 ["useListItemVariants"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K6 [require]
      111 GETIMPORT                        R22 K1 [script]
      113 GETTABLEKS                       R21 R22 K4 ["Parent"]
      115 GETTABLEKS                       R20 R21 K28 ["ListAccessory"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K6 [require]
      120 GETIMPORT                        R23 K1 [script]
      122 GETTABLEKS                       R22 R23 K4 ["Parent"]
      124 GETTABLEKS                       R21 R22 K29 ["useListAccessoryVariants"]
      126 CALL                             R20 1 1
      127 GETIMPORT                        R21 K6 [require]
      129 GETIMPORT                        R25 K1 [script]
      131 GETTABLEKS                       R24 R25 K4 ["Parent"]
      133 GETTABLEKS                       R23 R24 K4 ["Parent"]
      135 GETTABLEKS                       R22 R23 K30 ["useList"]
      137 CALL                             R21 1 1
      138 NEWTABLE                         R22 0 0
      140 DUPCLOSURE                       R23 K31 [PROTO_7]
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R21
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R6
      160 GETTABLEKS                       R24 R3 K32 ["memo"]
      162 GETTABLEKS                       R25 R3 K33 ["forwardRef"]
      164 MOVE                             R26 R23
      165 CALL                             R25 1 -1
      166 CALL                             R24 -1 -1
      167 RETURN                           R24 -1
