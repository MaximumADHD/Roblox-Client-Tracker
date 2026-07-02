PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        5 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["onActivated"]
       11 JUMPIFEQKNIL                     R0 ; [+5]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K0 ["onActivated"]
       16 RETURN                           R0 1
       17 LOADNIL                          R0
       18 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        5 GETTABLEKS                       R0 R0 K1 ["inputType"]
        7 RETURN                           R0 1
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        5 GETTABLEKS                       R0 R0 K1 ["isChecked"]
        7 RETURN                           R0 1
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["title"]
        3 FASTCALL1                        TYPEOF R1 ; [+2]
        4 GETIMPORT                        R0 K2 [typeof]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["string"] ; [+5]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["title"]
       12 RETURN                           R0 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["title"]
       16 FASTCALL1                        TYPEOF R1 ; [+2]
       17 GETIMPORT                        R0 K2 [typeof]
       19 CALL                             R0 1 1
       20 JUMPIFNOTEQKS                    R0 K4 ["table"] ; [+7]
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["title"]
       25 GETTABLEKS                       R0 R0 K0 ["title"]
       27 RETURN                           R0 1
       28 LOADNIL                          R0
       29 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["title"]
        3 FASTCALL1                        TYPEOF R1 ; [+2]
        4 GETIMPORT                        R0 K2 [typeof]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["table"] ; [+16]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["title"]
       12 GETTABLEKS                       R1 R1 K0 ["title"]
       14 JUMPIFEQKNIL                     R1 ; [+7]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["title"]
       19 GETTABLEKS                       R0 R0 K4 ["metadata"]
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
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K1 ["Medium"]
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
       32 GETTABLEKS                       R9 R2 K3 ["onActivated"]
       34 GETTABLEKS                       R9 R9 K3 ["onActivated"]
       36 JUMPIFNOTEQKNIL                  R9 ; [+2]
       38 LOADB                            R8 0 +1
       39 LOADB                            R8 1
       40 GETUPVAL                         R9 7
       41 GETTABLEKS                       R9 R9 K7 ["useMemo"]
       43 NEWCLOSURE                       R10 P0
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R11 0 2
       48 GETTABLEKS                       R12 R2 K3 ["onActivated"]
       50 MOVE                             R13 R8
       51 SETLIST                          R11 R12 2 [1]
       53 CALL                             R9 2 1
       54 GETUPVAL                         R10 7
       55 GETTABLEKS                       R10 R10 K7 ["useMemo"]
       57 NEWCLOSURE                       R11 P1
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 NEWTABLE                         R12 0 2
       62 GETTABLEKS                       R13 R2 K3 ["onActivated"]
       64 MOVE                             R14 R8
       65 SETLIST                          R12 R13 2 [1]
       67 CALL                             R10 2 1
       68 GETUPVAL                         R11 7
       69 GETTABLEKS                       R11 R11 K7 ["useMemo"]
       71 NEWCLOSURE                       R12 P2
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R2
       74 NEWTABLE                         R13 0 2
       76 GETTABLEKS                       R14 R2 K3 ["onActivated"]
       78 MOVE                             R15 R8
       79 SETLIST                          R13 R14 2 [1]
       81 CALL                             R11 2 1
       82 GETUPVAL                         R12 7
       83 GETTABLEKS                       R12 R12 K7 ["useMemo"]
       85 NEWCLOSURE                       R13 P3
       86 CAPTURE                          VAL R2
       87 NEWTABLE                         R14 0 1
       89 GETTABLEKS                       R15 R2 K8 ["title"]
       91 SETLIST                          R14 R15 1 [1]
       93 CALL                             R12 2 1
       94 GETUPVAL                         R13 7
       95 GETTABLEKS                       R13 R13 K7 ["useMemo"]
       97 NEWCLOSURE                       R14 P4
       98 CAPTURE                          VAL R2
       99 NEWTABLE                         R15 0 1
      101 GETTABLEKS                       R16 R2 K8 ["title"]
      103 SETLIST                          R15 R16 1 [1]
      105 CALL                             R13 2 1
      106 GETUPVAL                         R14 7
      107 GETTABLEKS                       R14 R14 K7 ["useMemo"]
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
      133 GETUPVAL                         R15 7
      134 GETTABLEKS                       R15 R15 K12 ["useCallback"]
      136 NEWCLOSURE                       R16 P6
      137 CAPTURE                          VAL R9
      138 NEWTABLE                         R17 0 1
      140 MOVE                             R18 R9
      141 SETLIST                          R17 R18 1 [1]
      143 CALL                             R15 2 1
      144 GETUPVAL                         R16 7
      145 GETTABLEKS                       R16 R16 K13 ["createElement"]
      147 GETUPVAL                         R17 8
      148 DUPTABLE                         R18 K18 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"], ["ref"]}]
      149 GETTABLEKS                       R19 R2 K16 ["LayoutOrder"]
      151 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      153 SETTABLEKS                       R1 R18 K17 ["ref"]
      155 DUPTABLE                         R19 K21 [{"HoverWrapper", "Divider"}]
      156 GETUPVAL                         R20 7
      157 GETTABLEKS                       R20 R20 K13 ["createElement"]
      159 GETUPVAL                         R21 8
      160 DUPTABLE                         R22 K25 [{["padding"], ["tag"] = "size-full-0 auto-y padding-y-xsmall", ["LayoutOrder"] = 1}]
      161 GETTABLEKS                       R24 R3 K26 ["isContained"]
      163 JUMPIFNOT                        R24 ; [+5]
      164 GETTABLEKS                       R23 R5 K27 ["Padding"]
      166 GETTABLEKS                       R23 R23 K28 ["Small"]
      168 JUMP                             ; [+39]
      169 DUPTABLE                         R23 K31 [{"left", "right"}]
      170 GETIMPORT                        R24 K34 [UDim.new]
      172 LOADN                            R25 0
      173 GETTABLEKS                       R27 R3 K35 ["hasMargin"]
      175 JUMPIFNOT                        R27 ; [+5]
      176 GETTABLEKS                       R26 R5 K27 ["Padding"]
      178 GETTABLEKS                       R26 R26 K28 ["Small"]
      180 JUMP                             ; [+5]
      181 GETTABLEKS                       R27 R5 K27 ["Padding"]
      183 GETTABLEKS                       R27 R27 K28 ["Small"]
      185 MINUS                            R26 R27
      186 CALL                             R24 2 1
      187 SETTABLEKS                       R24 R23 K29 ["left"]
      189 GETIMPORT                        R24 K34 [UDim.new]
      191 LOADN                            R25 0
      192 GETTABLEKS                       R27 R3 K35 ["hasMargin"]
      194 JUMPIFNOT                        R27 ; [+5]
      195 GETTABLEKS                       R26 R5 K27 ["Padding"]
      197 GETTABLEKS                       R26 R26 K28 ["Small"]
      199 JUMP                             ; [+5]
      200 GETTABLEKS                       R27 R5 K27 ["Padding"]
      202 GETTABLEKS                       R27 R27 K28 ["Small"]
      204 MINUS                            R26 R27
      205 CALL                             R24 2 1
      206 SETTABLEKS                       R24 R23 K30 ["right"]
      208 SETTABLEKS                       R23 R22 K22 ["padding"]
      210 DUPTABLE                         R23 K37 [{"ListItemContainer"}]
      211 GETUPVAL                         R24 7
      212 GETTABLEKS                       R24 R24 K13 ["createElement"]
      214 GETUPVAL                         R25 8
      215 DUPTABLE                         R26 K38 [{"onActivated", "tag"}]
      216 SETTABLEKS                       R9 R26 K3 ["onActivated"]
      218 NEWTABLE                         R27 4 0
      220 LOADB                            R28 1
      221 SETTABLEKS                       R28 R27 K39 ["size-full-0 auto-y radius-medium"]
      223 GETTABLEKS                       R28 R3 K35 ["hasMargin"]
      225 SETTABLEKS                       R28 R27 K40 ["margin-x-small"]
      227 GETTABLEKS                       R29 R3 K35 ["hasMargin"]
      229 NOT                              R28 R29
      230 SETTABLEKS                       R28 R27 K41 ["padding-x-small"]
      232 SETTABLEKS                       R27 R26 K14 ["tag"]
      234 DUPTABLE                         R27 K43 [{"ListItem"}]
      235 GETUPVAL                         R28 7
      236 GETTABLEKS                       R28 R28 K13 ["createElement"]
      238 GETUPVAL                         R29 8
      239 DUPTABLE                         R30 K45 [{["testId"], ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-y-small radius-medium"}]
      240 GETTABLEKS                       R31 R2 K9 ["testId"]
      242 SETTABLEKS                       R31 R30 K9 ["testId"]
      244 DUPTABLE                         R31 K48 [{"LeadingContainer", "Content"}]
      245 GETTABLEKS                       R33 R2 K49 ["leading"]
      247 JUMPIFNOT                        R33 ; [+22]
      248 GETUPVAL                         R32 7
      249 GETTABLEKS                       R32 R32 K13 ["createElement"]
      251 GETUPVAL                         R33 9
      252 DUPTABLE                         R34 K52 [{["config"], [2], ["testId"], ["LayoutOrder"] = 0}]
      253 GETTABLEKS                       R35 R2 K49 ["leading"]
      255 SETTABLEKS                       R35 R34 K50 ["config"]
      257 SETTABLEKS                       R4 R34 K0 ["size"]
      259 LOADK                            R36 K53 ["%*--leading-accessory"]
      260 GETTABLEKS                       R38 R2 K9 ["testId"]
      262 NAMECALL                         R36 R36 K11 ["format"]
      264 CALL                             R36 2 1
      265 MOVE                             R35 R36
      266 SETTABLEKS                       R35 R34 K9 ["testId"]
      268 CALL                             R32 2 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R32
      271 SETTABLEKS                       R32 R31 K46 ["LeadingContainer"]
      273 GETUPVAL                         R32 7
      274 GETTABLEKS                       R32 R32 K13 ["createElement"]
      276 GETUPVAL                         R33 8
      277 DUPTABLE                         R34 K55 [{["tag"] = "row flex-between align-x-center align-y-center fill gap-medium auto-y", ["LayoutOrder"] = 1}]
      278 DUPTABLE                         R35 K59 [{"TextContainer", "TrailingContainer", "ActivatedIconContainer"}]
      279 GETUPVAL                         R36 7
      280 GETTABLEKS                       R36 R36 K13 ["createElement"]
      282 GETUPVAL                         R37 8
      283 DUPTABLE                         R38 K61 [{["tag"] = "col fill gap-small auto-y padding-y-xsmall", ["LayoutOrder"] = 1}]
      284 DUPTABLE                         R39 K64 [{"TitleContainer", "Description"}]
      285 JUMPIFNOT                        R12 ; [+49]
      286 GETUPVAL                         R40 7
      287 GETTABLEKS                       R40 R40 K13 ["createElement"]
      289 GETUPVAL                         R41 8
      290 DUPTABLE                         R42 K66 [{["tag"] = "col gap-xsmall auto-xy", ["LayoutOrder"] = 0}]
      291 DUPTABLE                         R43 K69 [{"Title", "Metadata"}]
      292 JUMPIFNOT                        R12 ; [+18]
      293 GETUPVAL                         R44 7
      294 GETTABLEKS                       R44 R44 K13 ["createElement"]
      296 GETUPVAL                         R45 10
      297 DUPTABLE                         R46 K73 [{["Text"], ["RichText"] = True, ["tag"], ["LayoutOrder"] = 0}]
      298 GETUPVAL                         R47 11
      299 MOVE                             R48 R12
      300 CALL                             R47 1 1
      301 SETTABLEKS                       R47 R46 K70 ["Text"]
      303 GETTABLEKS                       R47 R6 K8 ["title"]
      305 GETTABLEKS                       R47 R47 K14 ["tag"]
      307 SETTABLEKS                       R47 R46 K14 ["tag"]
      309 CALL                             R44 2 1
      310 JUMP                             ; [+1]
      311 LOADNIL                          R44
      312 SETTABLEKS                       R44 R43 K67 ["Title"]
      314 JUMPIFNOT                        R13 ; [+15]
      315 GETUPVAL                         R44 7
      316 GETTABLEKS                       R44 R44 K13 ["createElement"]
      318 GETUPVAL                         R45 10
      319 DUPTABLE                         R46 K74 [{["Text"], ["RichText"] = True, ["tag"], ["LayoutOrder"] = 1}]
      320 SETTABLEKS                       R13 R46 K70 ["Text"]
      322 GETTABLEKS                       R47 R6 K75 ["metadata"]
      324 GETTABLEKS                       R47 R47 K14 ["tag"]
      326 SETTABLEKS                       R47 R46 K14 ["tag"]
      328 CALL                             R44 2 1
      329 JUMP                             ; [+1]
      330 LOADNIL                          R44
      331 SETTABLEKS                       R44 R43 K68 ["Metadata"]
      333 CALL                             R40 3 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R40
      336 SETTABLEKS                       R40 R39 K62 ["TitleContainer"]
      338 GETTABLEKS                       R40 R2 K76 ["description"]
      340 JUMPIFNOT                        R40 ; [+16]
      341 GETUPVAL                         R40 7
      342 GETTABLEKS                       R40 R40 K13 ["createElement"]
      344 GETUPVAL                         R41 10
      345 DUPTABLE                         R42 K74 [{["Text"], ["RichText"] = True, ["tag"], ["LayoutOrder"] = 1}]
      346 GETTABLEKS                       R43 R2 K76 ["description"]
      348 SETTABLEKS                       R43 R42 K70 ["Text"]
      350 GETTABLEKS                       R43 R6 K76 ["description"]
      352 GETTABLEKS                       R43 R43 K14 ["tag"]
      354 SETTABLEKS                       R43 R42 K14 ["tag"]
      356 CALL                             R40 2 1
      357 SETTABLEKS                       R40 R39 K63 ["Description"]
      359 CALL                             R36 3 1
      360 SETTABLEKS                       R36 R35 K56 ["TextContainer"]
      362 GETTABLEKS                       R37 R2 K77 ["trailing"]
      364 JUMPIFNOT                        R37 ; [+9]
      365 GETUPVAL                         R36 7
      366 GETTABLEKS                       R36 R36 K13 ["createElement"]
      368 GETUPVAL                         R37 8
      369 DUPTABLE                         R38 K80 [{["tag"] = "align-x-center align-y-center auto-xy", ["LayoutOrder"] = 2}]
      370 GETTABLEKS                       R39 R2 K77 ["trailing"]
      372 CALL                             R36 3 1
      373 JUMP                             ; [+1]
      374 LOADNIL                          R36
      375 SETTABLEKS                       R36 R35 K57 ["TrailingContainer"]
      377 GETTABLEKS                       R37 R2 K3 ["onActivated"]
      379 JUMPIFNOT                        R37 ; [+92]
      380 GETUPVAL                         R36 7
      381 GETTABLEKS                       R36 R36 K13 ["createElement"]
      383 GETUPVAL                         R37 8
      384 DUPTABLE                         R38 K82 [{["tag"] = "align-x-center align-y-center auto-xy", ["LayoutOrder"] = 3}]
      385 DUPTABLE                         R39 K84 [{"ActivatedIcon"}]
      386 JUMPIFNOTEQKNIL                  R10 ; [+30]
      388 GETUPVAL                         R40 7
      389 GETTABLEKS                       R40 R40 K13 ["createElement"]
      391 GETUPVAL                         R41 12
      392 DUPTABLE                         R42 K86 [{"name", "size", "testId"}]
      393 GETUPVAL                         R43 13
      394 GETTABLEKS                       R43 R43 K2 ["Icon"]
      396 GETTABLEKS                       R43 R43 K87 ["ChevronLargeRight"]
      398 SETTABLEKS                       R43 R42 K85 ["name"]
      400 GETTABLEKS                       R43 R6 K88 ["icon"]
      402 GETTABLEKS                       R43 R43 K0 ["size"]
      404 SETTABLEKS                       R43 R42 K0 ["size"]
      406 LOADK                            R44 K89 ["%*--activated-icon"]
      407 GETTABLEKS                       R46 R2 K9 ["testId"]
      409 NAMECALL                         R44 R44 K11 ["format"]
      411 CALL                             R44 2 1
      412 MOVE                             R43 R44
      413 SETTABLEKS                       R43 R42 K9 ["testId"]
      415 CALL                             R40 2 1
      416 JUMP                             ; [+51]
      417 GETUPVAL                         R41 14
      418 GETTABLEKS                       R41 R41 K90 ["Radio"]
      420 JUMPIFNOTEQ                      R10 R41 ; [+28]
      422 GETUPVAL                         R40 7
      423 GETTABLEKS                       R40 R40 K13 ["createElement"]
      425 GETUPVAL                         R41 15
      426 GETTABLEKS                       R41 R41 K91 ["Root"]
      428 DUPTABLE                         R42 K96 [{["value"], ["onValueChanged"], ["Selectable"] = False}]
      429 JUMPIFNOT                        R11 ; [+2]
      430 LOADK                            R43 K97 ["radio"]
      431 JUMP                             ; [+1]
      432 LOADK                            R43 K98 [""]
      433 SETTABLEKS                       R43 R42 K92 ["value"]
      435 SETTABLEKS                       R15 R42 K93 ["onValueChanged"]
      437 GETUPVAL                         R43 7
      438 GETTABLEKS                       R43 R43 K13 ["createElement"]
      440 GETUPVAL                         R44 15
      441 GETTABLEKS                       R44 R44 K99 ["Item"]
      443 DUPTABLE                         R45 K101 [{["value"] = "radio", ["label"] = "", [3]}]
      444 SETTABLEKS                       R4 R45 K0 ["size"]
      446 CALL                             R43 2 -1
      447 CALL                             R40 -1 1
      448 JUMP                             ; [+19]
      449 GETUPVAL                         R40 7
      450 GETTABLEKS                       R40 R40 K13 ["createElement"]
      452 GETUPVAL                         R42 14
      453 GETTABLEKS                       R42 R42 K102 ["Checkbox"]
      455 JUMPIFNOTEQ                      R10 R42 ; [+3]
      457 GETUPVAL                         R41 16
      458 JUMP                             ; [+1]
      459 GETUPVAL                         R41 17
      460 DUPTABLE                         R42 K104 [{["label"] = "", ["onActivated"], ["isChecked"], [4], ["Selectable"] = False}]
      461 SETTABLEKS                       R15 R42 K3 ["onActivated"]
      463 SETTABLEKS                       R11 R42 K103 ["isChecked"]
      465 SETTABLEKS                       R4 R42 K0 ["size"]
      467 CALL                             R40 2 1
      468 SETTABLEKS                       R40 R39 K83 ["ActivatedIcon"]
      470 CALL                             R36 3 1
      471 JUMP                             ; [+1]
      472 LOADNIL                          R36
      473 SETTABLEKS                       R36 R35 K58 ["ActivatedIconContainer"]
      475 CALL                             R32 3 1
      476 SETTABLEKS                       R32 R31 K47 ["Content"]
      478 CALL                             R28 3 1
      479 SETTABLEKS                       R28 R27 K42 ["ListItem"]
      481 CALL                             R24 3 1
      482 SETTABLEKS                       R24 R23 K36 ["ListItemContainer"]
      484 CALL                             R20 3 1
      485 SETTABLEKS                       R20 R19 K19 ["HoverWrapper"]
      487 GETTABLEKS                       R21 R3 K105 ["hasDivider"]
      489 JUMPIFNOT                        R21 ; [+84]
      490 GETTABLEKS                       R21 R2 K16 ["LayoutOrder"]
      492 GETTABLEKS                       R22 R3 K106 ["lastLayoutOrder"]
      494 JUMPIFEQ                         R21 R22 ; [+79]
      496 GETTABLEKS                       R21 R3 K107 ["isInset"]
      498 JUMPIFNOT                        R21 ; [+68]
      499 GETUPVAL                         R20 7
      500 GETTABLEKS                       R20 R20 K13 ["createElement"]
      502 GETUPVAL                         R21 8
      503 DUPTABLE                         R22 K109 [{["tag"] = "row size-full-0 auto-y", ["LayoutOrder"] = 2}]
      504 DUPTABLE                         R23 K112 [{"LeadingSpacer", "DividerLine"}]
      505 GETUPVAL                         R24 7
      506 GETTABLEKS                       R24 R24 K13 ["createElement"]
      508 GETUPVAL                         R25 8
      509 DUPTABLE                         R26 K114 [{["Size"], ["LayoutOrder"] = 0}]
      510 GETIMPORT                        R27 K117 [UDim2.fromOffset]
      512 GETTABLEKS                       R30 R3 K35 ["hasMargin"]
      514 JUMPIFNOT                        R30 ; [+10]
      515 GETTABLEKS                       R30 R5 K27 ["Padding"]
      517 GETTABLEKS                       R30 R30 K28 ["Small"]
      519 GETTABLEKS                       R31 R5 K118 ["Margin"]
      521 GETTABLEKS                       R31 R31 K28 ["Small"]
      523 ADD                              R29 R30 R31
      524 JUMP                             ; [+1]
      525 LOADN                            R29 0
      526 GETTABLEKS                       R31 R2 K49 ["leading"]
      528 JUMPIFNOT                        R31 ; [+14]
      529 GETTABLEKS                       R31 R7 K119 ["container"]
      531 GETTABLEKS                       R31 R31 K113 ["Size"]
      533 GETTABLEKS                       R31 R31 K120 ["X"]
      535 GETTABLEKS                       R31 R31 K121 ["Offset"]
      537 GETTABLEKS                       R32 R5 K122 ["Gap"]
      539 GETTABLEKS                       R32 R32 K1 ["Medium"]
      541 ADD                              R30 R31 R32
      542 JUMP                             ; [+1]
      543 LOADN                            R30 0
      544 ADD                              R28 R29 R30
      545 LOADN                            R29 0
      546 CALL                             R27 2 1
      547 SETTABLEKS                       R27 R26 K113 ["Size"]
      549 CALL                             R24 2 1
      550 SETTABLEKS                       R24 R23 K110 ["LeadingSpacer"]
      552 GETUPVAL                         R24 7
      553 GETTABLEKS                       R24 R24 K13 ["createElement"]
      555 GETUPVAL                         R25 8
      556 DUPTABLE                         R26 K124 [{["tag"] = "fill auto-y", ["LayoutOrder"] = 1}]
      557 GETUPVAL                         R27 7
      558 GETTABLEKS                       R27 R27 K13 ["createElement"]
      560 GETUPVAL                         R28 18
      561 CALL                             R27 1 -1
      562 CALL                             R24 -1 1
      563 SETTABLEKS                       R24 R23 K111 ["DividerLine"]
      565 CALL                             R20 3 1
      566 JUMP                             ; [+8]
      567 GETUPVAL                         R20 7
      568 GETTABLEKS                       R20 R20 K13 ["createElement"]
      570 GETUPVAL                         R21 18
      571 DUPTABLE                         R22 K125 [{["LayoutOrder"] = 2}]
      572 CALL                             R20 2 1
      573 JUMP                             ; [+1]
      574 LOADNIL                          R20
      575 SETTABLEKS                       R20 R19 K20 ["Divider"]
      577 CALL                             R16 3 -1
      578 RETURN                           R16 -1

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
       38 GETTABLEKS                       R9 R0 K13 ["Enums"]
       40 GETTABLEKS                       R9 R9 K14 ["InputSize"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K13 ["Enums"]
       47 GETTABLEKS                       R10 R10 K15 ["ListItemInputType"]
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
       67 GETTABLEKS                       R14 R0 K9 ["Components"]
       69 GETTABLEKS                       R14 R14 K19 ["Types"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K6 [require]
       74 GETTABLEKS                       R15 R4 K20 ["View"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K6 [require]
       79 GETTABLEKS                       R16 R0 K21 ["Utility"]
       81 GETTABLEKS                       R16 R16 K22 ["escapeRichText"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K6 [require]
       86 GETTABLEKS                       R17 R0 K23 ["Providers"]
       88 GETTABLEKS                       R17 R17 K24 ["Style"]
       90 GETTABLEKS                       R17 R17 K25 ["useTokens"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R18 R0 K21 ["Utility"]
       97 GETTABLEKS                       R18 R18 K26 ["withDefaults"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K6 [require]
      102 GETIMPORT                        R19 K1 [script]
      104 GETTABLEKS                       R19 R19 K4 ["Parent"]
      106 GETTABLEKS                       R19 R19 K27 ["useListItemVariants"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K6 [require]
      111 GETIMPORT                        R20 K1 [script]
      113 GETTABLEKS                       R20 R20 K4 ["Parent"]
      115 GETTABLEKS                       R20 R20 K28 ["ListAccessory"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K6 [require]
      120 GETIMPORT                        R21 K1 [script]
      122 GETTABLEKS                       R21 R21 K4 ["Parent"]
      124 GETTABLEKS                       R21 R21 K29 ["useListAccessoryVariants"]
      126 CALL                             R20 1 1
      127 GETIMPORT                        R21 K6 [require]
      129 GETIMPORT                        R22 K1 [script]
      131 GETTABLEKS                       R22 R22 K4 ["Parent"]
      133 GETTABLEKS                       R22 R22 K4 ["Parent"]
      135 GETTABLEKS                       R22 R22 K30 ["useList"]
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
