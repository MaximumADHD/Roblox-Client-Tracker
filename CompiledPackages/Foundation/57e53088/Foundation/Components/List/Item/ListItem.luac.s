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
      158 DUPTABLE                         R19 K21 [{"ListItemContainer", "Divider"}]
      159 GETUPVAL                         R21 7
      160 GETTABLEKS                       R20 R21 K13 ["createElement"]
      162 GETUPVAL                         R21 8
      163 DUPTABLE                         R22 K22 [{"tag"}]
      164 LOADK                            R23 K23 ["size-full-0 auto-y padding-y-xsmall"]
      165 SETTABLEKS                       R23 R22 K14 ["tag"]
      167 DUPTABLE                         R23 K25 [{"ListItem"}]
      168 GETUPVAL                         R25 7
      169 GETTABLEKS                       R24 R25 K13 ["createElement"]
      171 GETUPVAL                         R25 8
      172 DUPTABLE                         R26 K26 [{"onActivated", "testId", "tag"}]
      173 SETTABLEKS                       R9 R26 K3 ["onActivated"]
      175 GETTABLEKS                       R27 R2 K9 ["testId"]
      177 SETTABLEKS                       R27 R26 K9 ["testId"]
      179 NEWTABLE                         R27 2 0
      181 LOADB                            R28 1
      182 SETTABLEKS                       R28 R27 K27 ["row align-y-center gap-medium size-full-0 auto-y padding-y-medium radius-medium"]
      184 GETTABLEKS                       R28 R3 K28 ["isInset"]
      186 SETTABLEKS                       R28 R27 K29 ["padding-x-large"]
      188 SETTABLEKS                       R27 R26 K14 ["tag"]
      190 DUPTABLE                         R27 K32 [{"LeadingContainer", "Content"}]
      191 GETTABLEKS                       R29 R2 K33 ["leading"]
      193 JUMPIFNOT                        R29 ; [+25]
      194 GETUPVAL                         R29 7
      195 GETTABLEKS                       R28 R29 K13 ["createElement"]
      197 GETUPVAL                         R29 9
      198 DUPTABLE                         R30 K35 [{"config", "size", "testId", "LayoutOrder"}]
      199 GETTABLEKS                       R31 R2 K33 ["leading"]
      201 SETTABLEKS                       R31 R30 K34 ["config"]
      203 SETTABLEKS                       R4 R30 K0 ["size"]
      205 LOADK                            R32 K36 ["%*--leading-accessory"]
      206 GETTABLEKS                       R34 R2 K9 ["testId"]
      208 NAMECALL                         R32 R32 K11 ["format"]
      210 CALL                             R32 2 1
      211 MOVE                             R31 R32
      212 SETTABLEKS                       R31 R30 K9 ["testId"]
      214 LOADN                            R31 0
      215 SETTABLEKS                       R31 R30 K15 ["LayoutOrder"]
      217 CALL                             R28 2 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R28
      220 SETTABLEKS                       R28 R27 K30 ["LeadingContainer"]
      222 GETUPVAL                         R29 7
      223 GETTABLEKS                       R28 R29 K13 ["createElement"]
      225 GETUPVAL                         R29 8
      226 DUPTABLE                         R30 K37 [{"tag", "LayoutOrder"}]
      227 LOADK                            R31 K38 ["row flex-between align-x-center align-y-center fill gap-medium auto-y"]
      228 SETTABLEKS                       R31 R30 K14 ["tag"]
      230 LOADN                            R31 1
      231 SETTABLEKS                       R31 R30 K15 ["LayoutOrder"]
      233 DUPTABLE                         R31 K42 [{"TextContainer", "TrailingContainer", "ActivatedIconContainer"}]
      234 GETUPVAL                         R33 7
      235 GETTABLEKS                       R32 R33 K13 ["createElement"]
      237 GETUPVAL                         R33 8
      238 DUPTABLE                         R34 K37 [{"tag", "LayoutOrder"}]
      239 LOADK                            R35 K43 ["col fill gap-small auto-y padding-y-xsmall"]
      240 SETTABLEKS                       R35 R34 K14 ["tag"]
      242 LOADN                            R35 1
      243 SETTABLEKS                       R35 R34 K15 ["LayoutOrder"]
      245 DUPTABLE                         R35 K46 [{"TitleContainer", "Description"}]
      246 JUMPIFNOT                        R12 ; [+67]
      247 GETUPVAL                         R37 7
      248 GETTABLEKS                       R36 R37 K13 ["createElement"]
      250 GETUPVAL                         R37 8
      251 DUPTABLE                         R38 K37 [{"tag", "LayoutOrder"}]
      252 LOADK                            R39 K47 ["col gap-xsmall auto-xy"]
      253 SETTABLEKS                       R39 R38 K14 ["tag"]
      255 LOADN                            R39 0
      256 SETTABLEKS                       R39 R38 K15 ["LayoutOrder"]
      258 DUPTABLE                         R39 K50 [{"Title", "Metadata"}]
      259 JUMPIFNOT                        R12 ; [+24]
      260 GETUPVAL                         R41 7
      261 GETTABLEKS                       R40 R41 K13 ["createElement"]
      263 GETUPVAL                         R41 10
      264 DUPTABLE                         R42 K53 [{"Text", "RichText", "tag", "LayoutOrder"}]
      265 GETUPVAL                         R43 11
      266 MOVE                             R44 R12
      267 CALL                             R43 1 1
      268 SETTABLEKS                       R43 R42 K51 ["Text"]
      270 LOADB                            R43 1
      271 SETTABLEKS                       R43 R42 K52 ["RichText"]
      273 GETTABLEKS                       R44 R6 K8 ["title"]
      275 GETTABLEKS                       R43 R44 K14 ["tag"]
      277 SETTABLEKS                       R43 R42 K14 ["tag"]
      279 LOADN                            R43 0
      280 SETTABLEKS                       R43 R42 K15 ["LayoutOrder"]
      282 CALL                             R40 2 1
      283 JUMP                             ; [+1]
      284 LOADNIL                          R40
      285 SETTABLEKS                       R40 R39 K48 ["Title"]
      287 JUMPIFNOT                        R13 ; [+21]
      288 GETUPVAL                         R41 7
      289 GETTABLEKS                       R40 R41 K13 ["createElement"]
      291 GETUPVAL                         R41 10
      292 DUPTABLE                         R42 K53 [{"Text", "RichText", "tag", "LayoutOrder"}]
      293 SETTABLEKS                       R13 R42 K51 ["Text"]
      295 LOADB                            R43 1
      296 SETTABLEKS                       R43 R42 K52 ["RichText"]
      298 GETTABLEKS                       R44 R6 K54 ["metadata"]
      300 GETTABLEKS                       R43 R44 K14 ["tag"]
      302 SETTABLEKS                       R43 R42 K14 ["tag"]
      304 LOADN                            R43 1
      305 SETTABLEKS                       R43 R42 K15 ["LayoutOrder"]
      307 CALL                             R40 2 1
      308 JUMP                             ; [+1]
      309 LOADNIL                          R40
      310 SETTABLEKS                       R40 R39 K49 ["Metadata"]
      312 CALL                             R36 3 1
      313 JUMP                             ; [+1]
      314 LOADNIL                          R36
      315 SETTABLEKS                       R36 R35 K44 ["TitleContainer"]
      317 GETTABLEKS                       R36 R2 K55 ["description"]
      319 JUMPIFNOT                        R36 ; [+22]
      320 GETUPVAL                         R37 7
      321 GETTABLEKS                       R36 R37 K13 ["createElement"]
      323 GETUPVAL                         R37 10
      324 DUPTABLE                         R38 K53 [{"Text", "RichText", "tag", "LayoutOrder"}]
      325 GETTABLEKS                       R39 R2 K55 ["description"]
      327 SETTABLEKS                       R39 R38 K51 ["Text"]
      329 LOADB                            R39 1
      330 SETTABLEKS                       R39 R38 K52 ["RichText"]
      332 GETTABLEKS                       R40 R6 K55 ["description"]
      334 GETTABLEKS                       R39 R40 K14 ["tag"]
      336 SETTABLEKS                       R39 R38 K14 ["tag"]
      338 LOADN                            R39 1
      339 SETTABLEKS                       R39 R38 K15 ["LayoutOrder"]
      341 CALL                             R36 2 1
      342 SETTABLEKS                       R36 R35 K45 ["Description"]
      344 CALL                             R32 3 1
      345 SETTABLEKS                       R32 R31 K39 ["TextContainer"]
      347 GETTABLEKS                       R33 R2 K56 ["trailing"]
      349 JUMPIFNOT                        R33 ; [+15]
      350 GETUPVAL                         R33 7
      351 GETTABLEKS                       R32 R33 K13 ["createElement"]
      353 GETUPVAL                         R33 8
      354 DUPTABLE                         R34 K37 [{"tag", "LayoutOrder"}]
      355 LOADK                            R35 K57 ["align-x-center align-y-center auto-xy"]
      356 SETTABLEKS                       R35 R34 K14 ["tag"]
      358 LOADN                            R35 2
      359 SETTABLEKS                       R35 R34 K15 ["LayoutOrder"]
      361 GETTABLEKS                       R35 R2 K56 ["trailing"]
      363 CALL                             R32 3 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R32
      366 SETTABLEKS                       R32 R31 K40 ["TrailingContainer"]
      368 GETTABLEKS                       R33 R2 K3 ["onActivated"]
      370 JUMPIFNOT                        R33 ; [+113]
      371 GETUPVAL                         R33 7
      372 GETTABLEKS                       R32 R33 K13 ["createElement"]
      374 GETUPVAL                         R33 8
      375 DUPTABLE                         R34 K37 [{"tag", "LayoutOrder"}]
      376 LOADK                            R35 K57 ["align-x-center align-y-center auto-xy"]
      377 SETTABLEKS                       R35 R34 K14 ["tag"]
      379 LOADN                            R35 3
      380 SETTABLEKS                       R35 R34 K15 ["LayoutOrder"]
      382 DUPTABLE                         R35 K59 [{"ActivatedIcon"}]
      383 JUMPIFNOTEQKNIL                  R10 ; [+30]
      385 GETUPVAL                         R37 7
      386 GETTABLEKS                       R36 R37 K13 ["createElement"]
      388 GETUPVAL                         R37 12
      389 DUPTABLE                         R38 K61 [{"name", "size", "testId"}]
      390 GETUPVAL                         R41 13
      391 GETTABLEKS                       R40 R41 K2 ["Icon"]
      393 GETTABLEKS                       R39 R40 K62 ["ChevronLargeRight"]
      395 SETTABLEKS                       R39 R38 K60 ["name"]
      397 GETTABLEKS                       R40 R6 K63 ["icon"]
      399 GETTABLEKS                       R39 R40 K0 ["size"]
      401 SETTABLEKS                       R39 R38 K0 ["size"]
      403 LOADK                            R40 K64 ["%*--activated-icon"]
      404 GETTABLEKS                       R42 R2 K9 ["testId"]
      406 NAMECALL                         R40 R40 K11 ["format"]
      408 CALL                             R40 2 1
      409 MOVE                             R39 R40
      410 SETTABLEKS                       R39 R38 K9 ["testId"]
      412 CALL                             R36 2 1
      413 JUMP                             ; [+66]
      414 GETUPVAL                         R38 14
      415 GETTABLEKS                       R37 R38 K65 ["Radio"]
      417 JUMPIFNOTEQ                      R10 R37 ; [+37]
      419 GETUPVAL                         R37 7
      420 GETTABLEKS                       R36 R37 K13 ["createElement"]
      422 GETUPVAL                         R38 15
      423 GETTABLEKS                       R37 R38 K66 ["Root"]
      425 DUPTABLE                         R38 K70 [{"value", "onValueChanged", "Selectable"}]
      426 JUMPIFNOT                        R11 ; [+2]
      427 LOADK                            R39 K71 ["radio"]
      428 JUMP                             ; [+1]
      429 LOADK                            R39 K72 [""]
      430 SETTABLEKS                       R39 R38 K67 ["value"]
      432 SETTABLEKS                       R15 R38 K68 ["onValueChanged"]
      434 LOADB                            R39 0
      435 SETTABLEKS                       R39 R38 K69 ["Selectable"]
      437 GETUPVAL                         R40 7
      438 GETTABLEKS                       R39 R40 K13 ["createElement"]
      440 GETUPVAL                         R41 15
      441 GETTABLEKS                       R40 R41 K73 ["Item"]
      443 DUPTABLE                         R41 K75 [{"value", "label", "size"}]
      444 LOADK                            R42 K71 ["radio"]
      445 SETTABLEKS                       R42 R41 K67 ["value"]
      447 LOADK                            R42 K72 [""]
      448 SETTABLEKS                       R42 R41 K74 ["label"]
      450 SETTABLEKS                       R4 R41 K0 ["size"]
      452 CALL                             R39 2 -1
      453 CALL                             R36 -1 1
      454 JUMP                             ; [+25]
      455 GETUPVAL                         R37 7
      456 GETTABLEKS                       R36 R37 K13 ["createElement"]
      458 GETUPVAL                         R39 14
      459 GETTABLEKS                       R38 R39 K76 ["Checkbox"]
      461 JUMPIFNOTEQ                      R10 R38 ; [+3]
      463 GETUPVAL                         R37 16
      464 JUMP                             ; [+1]
      465 GETUPVAL                         R37 17
      466 DUPTABLE                         R38 K78 [{"label", "onActivated", "isChecked", "size", "Selectable"}]
      467 LOADK                            R39 K72 [""]
      468 SETTABLEKS                       R39 R38 K74 ["label"]
      470 SETTABLEKS                       R15 R38 K3 ["onActivated"]
      472 SETTABLEKS                       R11 R38 K77 ["isChecked"]
      474 SETTABLEKS                       R4 R38 K0 ["size"]
      476 LOADB                            R39 0
      477 SETTABLEKS                       R39 R38 K69 ["Selectable"]
      479 CALL                             R36 2 1
      480 SETTABLEKS                       R36 R35 K58 ["ActivatedIcon"]
      482 CALL                             R32 3 1
      483 JUMP                             ; [+1]
      484 LOADNIL                          R32
      485 SETTABLEKS                       R32 R31 K41 ["ActivatedIconContainer"]
      487 CALL                             R28 3 1
      488 SETTABLEKS                       R28 R27 K31 ["Content"]
      490 CALL                             R24 3 1
      491 SETTABLEKS                       R24 R23 K24 ["ListItem"]
      493 CALL                             R20 3 1
      494 SETTABLEKS                       R20 R19 K19 ["ListItemContainer"]
      496 GETTABLEKS                       R21 R3 K79 ["hasDivider"]
      498 JUMPIFNOT                        R21 ; [+71]
      499 GETUPVAL                         R21 7
      500 GETTABLEKS                       R20 R21 K13 ["createElement"]
      502 GETUPVAL                         R21 8
      503 DUPTABLE                         R22 K37 [{"tag", "LayoutOrder"}]
      504 NEWTABLE                         R23 2 0
      506 LOADB                            R24 1
      507 SETTABLEKS                       R24 R23 K80 ["row gap-medium size-full-0 auto-y"]
      509 GETTABLEKS                       R24 R3 K28 ["isInset"]
      511 SETTABLEKS                       R24 R23 K29 ["padding-x-large"]
      513 SETTABLEKS                       R23 R22 K14 ["tag"]
      515 LOADN                            R23 2
      516 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      518 DUPTABLE                         R23 K83 [{"LeadingSpacer", "DividerLine"}]
      519 GETTABLEKS                       R25 R2 K33 ["leading"]
      521 JUMPIFNOT                        R25 ; [+24]
      522 GETUPVAL                         R25 7
      523 GETTABLEKS                       R24 R25 K13 ["createElement"]
      525 GETUPVAL                         R25 8
      526 DUPTABLE                         R26 K85 [{"Size", "LayoutOrder"}]
      527 GETIMPORT                        R27 K88 [UDim2.fromOffset]
      529 GETTABLEKS                       R31 R7 K89 ["container"]
      531 GETTABLEKS                       R30 R31 K84 ["Size"]
      533 GETTABLEKS                       R29 R30 K90 ["X"]
      535 GETTABLEKS                       R28 R29 K91 ["Offset"]
      537 LOADN                            R29 0
      538 CALL                             R27 2 1
      539 SETTABLEKS                       R27 R26 K84 ["Size"]
      541 LOADN                            R27 0
      542 SETTABLEKS                       R27 R26 K15 ["LayoutOrder"]
      544 CALL                             R24 2 1
      545 JUMP                             ; [+1]
      546 LOADNIL                          R24
      547 SETTABLEKS                       R24 R23 K81 ["LeadingSpacer"]
      549 GETUPVAL                         R25 7
      550 GETTABLEKS                       R24 R25 K13 ["createElement"]
      552 GETUPVAL                         R25 8
      553 DUPTABLE                         R26 K37 [{"tag", "LayoutOrder"}]
      554 LOADK                            R27 K92 ["fill auto-y"]
      555 SETTABLEKS                       R27 R26 K14 ["tag"]
      557 LOADN                            R27 1
      558 SETTABLEKS                       R27 R26 K15 ["LayoutOrder"]
      560 GETUPVAL                         R28 7
      561 GETTABLEKS                       R27 R28 K13 ["createElement"]
      563 GETUPVAL                         R28 18
      564 CALL                             R27 1 -1
      565 CALL                             R24 -1 1
      566 SETTABLEKS                       R24 R23 K82 ["DividerLine"]
      568 CALL                             R20 3 1
      569 JUMP                             ; [+1]
      570 LOADNIL                          R20
      571 SETTABLEKS                       R20 R19 K20 ["Divider"]
      573 CALL                             R16 3 -1
      574 RETURN                           R16 -1

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
      111 GETIMPORT                        R23 K1 [script]
      113 GETTABLEKS                       R22 R23 K4 ["Parent"]
      115 GETTABLEKS                       R21 R22 K4 ["Parent"]
      117 GETTABLEKS                       R20 R21 K28 ["Accessory"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K6 [require]
      122 GETIMPORT                        R24 K1 [script]
      124 GETTABLEKS                       R23 R24 K4 ["Parent"]
      126 GETTABLEKS                       R22 R23 K4 ["Parent"]
      128 GETTABLEKS                       R21 R22 K29 ["useAccessoryVariants"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K6 [require]
      133 GETIMPORT                        R25 K1 [script]
      135 GETTABLEKS                       R24 R25 K4 ["Parent"]
      137 GETTABLEKS                       R23 R24 K4 ["Parent"]
      139 GETTABLEKS                       R22 R23 K30 ["useList"]
      141 CALL                             R21 1 1
      142 NEWTABLE                         R22 0 0
      144 DUPCLOSURE                       R23 K31 [PROTO_7]
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R6
      164 GETTABLEKS                       R24 R3 K32 ["memo"]
      166 GETTABLEKS                       R25 R3 K33 ["forwardRef"]
      168 MOVE                             R26 R23
      169 CALL                             R25 1 -1
      170 CALL                             R24 -1 -1
      171 RETURN                           R24 -1
