PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 LOADK                            R3 K0 ["^%s*$"]
        4 NAMECALL                         R1 R0 K1 ["match"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["variant"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["Dual"]
       15 JUMPIFNOTEQ                      R1 R2 ; [+22]
       17 LOADK                            R3 K4 ["-"]
       18 NAMECALL                         R1 R0 K5 ["split"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K6 ["getDateTimeFromText"]
       24 GETTABLEN                        R3 R1 1
       25 CALL                             R2 1 1
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K6 ["getDateTimeFromText"]
       29 GETTABLEN                        R4 R1 2
       30 CALL                             R3 1 1
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K7 ["onChanged"]
       34 MOVE                             R5 R2
       35 MOVE                             R6 R3
       36 CALL                             R4 2 0
       37 RETURN                           R0 0
       38 LOADK                            R4 K9 ["^%s*(.-)%s*$"]
       39 NAMECALL                         R2 R0 K1 ["match"]
       41 CALL                             R2 2 1
       42 ORK                              R1 R2 K8 [""]
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R2 R2 K6 ["getDateTimeFromText"]
       46 MOVE                             R3 R1
       47 CALL                             R2 1 1
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K7 ["onChanged"]
       51 MOVE                             R4 R2
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["variant"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Dual"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+25]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["formatLocalTime"]
       11 GETUPVAL                         R2 3
       12 GETTABLEN                        R1 R2 1
       13 CALL                             R0 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEN                        R2 R3 2
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K2 ["formatLocalTime"]
       20 GETUPVAL                         R3 3
       21 GETTABLEN                        R2 R3 2
       22 CALL                             R1 1 1
       23 JUMP                             ; [+1]
       24 LOADK                            R1 K3 [""]
       25 GETUPVAL                         R2 4
       26 MOVE                             R4 R0
       27 LOADK                            R5 K4 [" - "]
       28 MOVE                             R6 R1
       29 CONCAT                           R3 R4 R6
       30 CALL                             R2 1 0
       31 JUMP                             ; [+18]
       32 GETUPVAL                         R0 4
       33 GETUPVAL                         R1 2
       34 GETTABLEKS                       R1 R1 K2 ["formatLocalTime"]
       36 GETUPVAL                         R3 3
       37 GETTABLEN                        R2 R3 1
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K0 ["variant"]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K5 ["SingleWithTime"]
       44 JUMPIFEQ                         R4 R5 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 CALL                             R1 2 -1
       49 CALL                             R0 -1 0
       50 GETUPVAL                         R0 5
       51 CALL                             R0 0 0
       52 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["variant"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Single"]
        6 JUMPIFEQ                         R0 R1 ; [+9]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["variant"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K2 ["SingleWithTime"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+8]
       16 GETUPVAL                         R2 2
       17 GETTABLEN                        R1 R2 1
       18 JUMPIFEQKNIL                     R1 ; [+2]
       20 LOADB                            R0 0 +1
       21 LOADB                            R0 1
       22 RETURN                           R0 1
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K0 ["variant"]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K3 ["Dual"]
       29 JUMPIFNOTEQ                      R0 R1 ; [+24]
       31 LOADB                            R0 1
       32 GETUPVAL                         R2 2
       33 GETTABLEN                        R1 R2 1
       34 JUMPIFEQKNIL                     R1 ; [+18]
       36 LOADB                            R0 1
       37 GETUPVAL                         R2 2
       38 GETTABLEN                        R1 R2 2
       39 JUMPIFEQKNIL                     R1 ; [+13]
       41 GETUPVAL                         R2 2
       42 GETTABLEN                        R1 R2 1
       43 GETTABLEKS                       R1 R1 K4 ["UnixTimestamp"]
       45 GETUPVAL                         R3 2
       46 GETTABLEN                        R2 R3 2
       47 GETTABLEKS                       R2 R2 K4 ["UnixTimestamp"]
       49 JUMPIFLT                         R2 R1 ; [+2]
       51 LOADB                            R0 0 +1
       52 LOADB                            R0 1
       53 RETURN                           R0 1
       54 LOADB                            R0 0
       55 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 LOADB                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K1 ["useRef"]
       14 LOADNIL                          R6
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R6 R1 K2 ["defaultDates"]
       18 JUMPIFNOT                        R6 ; [+16]
       19 GETTABLEKS                       R7 R1 K2 ["defaultDates"]
       21 FASTCALL1                        TYPEOF R7 ; [+2]
       22 GETIMPORT                        R6 K4 [typeof]
       24 CALL                             R6 1 1
       25 JUMPIFEQKS                       R6 K5 ["table"] ; [+9]
       27 NEWTABLE                         R6 0 1
       29 GETTABLEKS                       R7 R1 K2 ["defaultDates"]
       31 SETLIST                          R6 R7 1 [1]
       33 SETTABLEKS                       R6 R1 K2 ["defaultDates"]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K0 ["useState"]
       38 GETTABLEKS                       R8 R1 K2 ["defaultDates"]
       40 JUMPIFNOT                        R8 ; [+50]
       41 GETTABLEKS                       R8 R1 K6 ["variant"]
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K7 ["Dual"]
       46 JUMPIFNOTEQ                      R8 R9 ; [+27]
       48 LOADK                            R8 K8 ["%* - %*"]
       49 GETUPVAL                         R10 5
       50 GETTABLEKS                       R10 R10 K9 ["formatLocalTime"]
       52 GETTABLEKS                       R12 R1 K2 ["defaultDates"]
       54 GETTABLEN                        R11 R12 1
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R13 R1 K2 ["defaultDates"]
       58 GETTABLEN                        R12 R13 2
       59 JUMPIFNOT                        R12 ; [+8]
       60 GETUPVAL                         R11 5
       61 GETTABLEKS                       R11 R11 K9 ["formatLocalTime"]
       63 GETTABLEKS                       R13 R1 K2 ["defaultDates"]
       65 GETTABLEN                        R12 R13 2
       66 CALL                             R11 1 1
       67 JUMP                             ; [+1]
       68 LOADK                            R11 K10 [""]
       69 NAMECALL                         R8 R8 K11 ["format"]
       71 CALL                             R8 3 1
       72 MOVE                             R7 R8
       73 JUMP                             ; [+18]
       74 GETUPVAL                         R7 5
       75 GETTABLEKS                       R7 R7 K9 ["formatLocalTime"]
       77 GETTABLEKS                       R9 R1 K2 ["defaultDates"]
       79 GETTABLEN                        R8 R9 1
       80 GETTABLEKS                       R10 R1 K6 ["variant"]
       82 GETUPVAL                         R11 4
       83 GETTABLEKS                       R11 R11 K12 ["SingleWithTime"]
       85 JUMPIFEQ                         R10 R11 ; [+2]
       87 LOADB                            R9 0 +1
       88 LOADB                            R9 1
       89 CALL                             R7 2 1
       90 JUMP                             ; [+1]
       91 LOADK                            R7 K10 [""]
       92 CALL                             R6 1 2
       93 GETUPVAL                         R8 3
       94 GETTABLEKS                       R8 R8 K0 ["useState"]
       96 GETTABLEKS                       R9 R1 K2 ["defaultDates"]
       98 CALL                             R8 1 2
       99 GETUPVAL                         R10 3
      100 GETTABLEKS                       R10 R10 K13 ["useCallback"]
      102 NEWCLOSURE                       R11 P0
      103 CAPTURE                          VAL R4
      104 NEWTABLE                         R12 0 0
      106 CALL                             R10 2 1
      107 GETUPVAL                         R11 3
      108 GETTABLEKS                       R11 R11 K13 ["useCallback"]
      110 NEWCLOSURE                       R12 P1
      111 CAPTURE                          VAL R4
      112 NEWTABLE                         R13 0 0
      114 CALL                             R11 2 1
      115 GETUPVAL                         R12 3
      116 GETTABLEKS                       R12 R12 K13 ["useCallback"]
      118 NEWCLOSURE                       R13 P2
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R1
      121 CAPTURE                          UPVAL U4
      122 CAPTURE                          UPVAL U5
      123 NEWTABLE                         R14 0 1
      125 GETTABLEKS                       R15 R1 K14 ["onChanged"]
      127 SETLIST                          R14 R15 1 [1]
      129 CALL                             R12 2 1
      130 GETUPVAL                         R13 3
      131 GETTABLEKS                       R13 R13 K13 ["useCallback"]
      133 NEWCLOSURE                       R14 P3
      134 CAPTURE                          VAL R1
      135 CAPTURE                          UPVAL U4
      136 CAPTURE                          UPVAL U5
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R10
      140 NEWTABLE                         R15 0 2
      142 MOVE                             R16 R8
      143 MOVE                             R17 R10
      144 SETLIST                          R15 R16 2 [1]
      146 CALL                             R13 2 1
      147 NEWCLOSURE                       R14 P4
      148 CAPTURE                          VAL R1
      149 CAPTURE                          UPVAL U4
      150 CAPTURE                          VAL R8
      151 GETUPVAL                         R15 3
      152 GETTABLEKS                       R15 R15 K15 ["createElement"]
      154 GETUPVAL                         R16 6
      155 GETTABLEKS                       R16 R16 K16 ["Root"]
      157 DUPTABLE                         R17 K19 [{"isOpen", "testId"}]
      158 SETTABLEKS                       R3 R17 K17 ["isOpen"]
      160 GETTABLEKS                       R18 R1 K18 ["testId"]
      162 SETTABLEKS                       R18 R17 K18 ["testId"]
      164 DUPTABLE                         R18 K23 [{"DateInput", "Anchor", "Calendar"}]
      165 GETUPVAL                         R19 3
      166 GETTABLEKS                       R19 R19 K15 ["createElement"]
      168 GETUPVAL                         R20 7
      169 GETUPVAL                         R21 8
      170 MOVE                             R22 R1
      171 DUPTABLE                         R23 K39 [{["hasError"], ["hint"], ["iconTrailing"], ["isDisabled"], ["isRequired"], ["key"] = "date-input", ["label"], ["onChanged"], ["onFocusGained"], ["placeholder"], ["ref"], ["selectableDateRange"], ["size"], ["text"], ["testId"], ["width"]}]
      172 GETTABLEKS                       R24 R1 K24 ["hasError"]
      174 SETTABLEKS                       R24 R23 K24 ["hasError"]
      176 GETTABLEKS                       R24 R1 K25 ["hint"]
      178 SETTABLEKS                       R24 R23 K25 ["hint"]
      180 DUPTABLE                         R24 K42 [{"name", "onActivated"}]
      181 GETUPVAL                         R25 9
      182 GETTABLEKS                       R25 R25 K22 ["Calendar"]
      184 SETTABLEKS                       R25 R24 K40 ["name"]
      186 SETTABLEKS                       R11 R24 K41 ["onActivated"]
      188 SETTABLEKS                       R24 R23 K26 ["iconTrailing"]
      190 GETTABLEKS                       R24 R1 K27 ["isDisabled"]
      192 SETTABLEKS                       R24 R23 K27 ["isDisabled"]
      194 GETTABLEKS                       R24 R1 K28 ["isRequired"]
      196 SETTABLEKS                       R24 R23 K28 ["isRequired"]
      198 GETTABLEKS                       R24 R1 K31 ["label"]
      200 SETTABLEKS                       R24 R23 K31 ["label"]
      202 SETTABLEKS                       R12 R23 K14 ["onChanged"]
      204 SETTABLEKS                       R11 R23 K32 ["onFocusGained"]
      206 GETUPVAL                         R24 10
      207 LOADK                            R26 K43 ["CommonUI.Controls.Label.SelectDate"]
      208 NAMECALL                         R24 R24 K44 ["FormatByKey"]
      210 CALL                             R24 2 1
      211 SETTABLEKS                       R24 R23 K33 ["placeholder"]
      213 SETTABLEKS                       R5 R23 K34 ["ref"]
      215 GETTABLEKS                       R24 R1 K35 ["selectableDateRange"]
      217 SETTABLEKS                       R24 R23 K35 ["selectableDateRange"]
      219 GETUPVAL                         R24 11
      220 GETTABLEKS                       R24 R24 K45 ["Medium"]
      222 SETTABLEKS                       R24 R23 K36 ["size"]
      224 SETTABLEKS                       R6 R23 K37 ["text"]
      226 LOADK                            R25 K46 ["%*--text-input"]
      227 GETTABLEKS                       R27 R1 K18 ["testId"]
      229 NAMECALL                         R25 R25 K11 ["format"]
      231 CALL                             R25 2 1
      232 MOVE                             R24 R25
      233 SETTABLEKS                       R24 R23 K18 ["testId"]
      235 GETTABLEKS                       R24 R1 K38 ["width"]
      237 SETTABLEKS                       R24 R23 K38 ["width"]
      239 CALL                             R21 2 -1
      240 CALL                             R19 -1 1
      241 SETTABLEKS                       R19 R18 K20 ["DateInput"]
      243 GETUPVAL                         R19 3
      244 GETTABLEKS                       R19 R19 K15 ["createElement"]
      246 GETUPVAL                         R20 6
      247 GETTABLEKS                       R20 R20 K21 ["Anchor"]
      249 DUPTABLE                         R21 K48 [{"anchorRef"}]
      250 SETTABLEKS                       R5 R21 K47 ["anchorRef"]
      252 CALL                             R19 2 1
      253 SETTABLEKS                       R19 R18 K21 ["Anchor"]
      255 GETUPVAL                         R19 3
      256 GETTABLEKS                       R19 R19 K15 ["createElement"]
      258 GETUPVAL                         R20 6
      259 GETTABLEKS                       R20 R20 K49 ["Content"]
      261 DUPTABLE                         R21 K56 [{["hasArrow"] = False, ["onPressedOutside"], ["side"], ["selection"], ["selectionGroup"]}]
      262 SETTABLEKS                       R10 R21 K52 ["onPressedOutside"]
      264 DUPTABLE                         R22 K59 [{"position", "offset"}]
      265 GETUPVAL                         R23 12
      266 GETTABLEKS                       R23 R23 K60 ["Bottom"]
      268 SETTABLEKS                       R23 R22 K57 ["position"]
      270 GETTABLEKS                       R24 R2 K61 ["Stroke"]
      272 GETTABLEKS                       R24 R24 K62 ["Standard"]
      274 GETTABLEKS                       R25 R2 K63 ["Padding"]
      276 GETTABLEKS                       R25 R25 K64 ["Small"]
      278 ADD                              R23 R24 R25
      279 SETTABLEKS                       R23 R22 K58 ["offset"]
      281 SETTABLEKS                       R22 R21 K53 ["side"]
      283 GETTABLEKS                       R22 R1 K54 ["selection"]
      285 SETTABLEKS                       R22 R21 K54 ["selection"]
      287 GETTABLEKS                       R22 R1 K55 ["selectionGroup"]
      289 SETTABLEKS                       R22 R21 K55 ["selectionGroup"]
      291 MOVE                             R22 R3
      292 JUMPIFNOT                        R22 ; [+176]
      293 GETUPVAL                         R22 3
      294 GETTABLEKS                       R22 R22 K15 ["createElement"]
      296 GETUPVAL                         R23 13
      297 DUPTABLE                         R24 K67 [{["tag"] = "padding-large col stroke-default radius-medium auto-xy"}]
      298 DUPTABLE                         R25 K69 [{"Calendar", "BottomBar"}]
      299 GETUPVAL                         R26 3
      300 GETTABLEKS                       R26 R26 K15 ["createElement"]
      302 GETUPVAL                         R27 14
      303 DUPTABLE                         R28 K77 [{["defaultDates"], ["LayoutOrder"] = 1, ["onSelectedDateChanged"], ["selectableDateRange"], ["showStartDateTimeCalendarInput"], ["showEndDateTimeCalendarInput"], ["showTimeDropdown"], ["testId"] = "--foundation-calendar"}]
      304 SETTABLEKS                       R8 R28 K2 ["defaultDates"]
      306 SETTABLEKS                       R9 R28 K72 ["onSelectedDateChanged"]
      308 GETTABLEKS                       R29 R1 K35 ["selectableDateRange"]
      310 SETTABLEKS                       R29 R28 K35 ["selectableDateRange"]
      312 GETTABLEKS                       R30 R1 K6 ["variant"]
      314 GETUPVAL                         R31 4
      315 GETTABLEKS                       R31 R31 K12 ["SingleWithTime"]
      317 JUMPIFNOTEQ                      R30 R31 ; [+2]
      319 LOADB                            R29 0 +1
      320 LOADB                            R29 1
      321 SETTABLEKS                       R29 R28 K73 ["showStartDateTimeCalendarInput"]
      323 GETTABLEKS                       R30 R1 K6 ["variant"]
      325 GETUPVAL                         R31 4
      326 GETTABLEKS                       R31 R31 K7 ["Dual"]
      328 JUMPIFEQ                         R30 R31 ; [+2]
      330 LOADB                            R29 0 +1
      331 LOADB                            R29 1
      332 SETTABLEKS                       R29 R28 K74 ["showEndDateTimeCalendarInput"]
      334 GETTABLEKS                       R30 R1 K6 ["variant"]
      336 GETUPVAL                         R31 4
      337 GETTABLEKS                       R31 R31 K12 ["SingleWithTime"]
      339 JUMPIFEQ                         R30 R31 ; [+2]
      341 LOADB                            R29 0 +1
      342 LOADB                            R29 1
      343 SETTABLEKS                       R29 R28 K75 ["showTimeDropdown"]
      345 CALL                             R26 2 1
      346 SETTABLEKS                       R26 R25 K22 ["Calendar"]
      348 GETUPVAL                         R26 3
      349 GETTABLEKS                       R26 R26 K15 ["createElement"]
      351 GETUPVAL                         R27 13
      352 DUPTABLE                         R28 K80 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0 auto-y flex-fill gap-small padding-top-large"}]
      353 DUPTABLE                         R29 K83 [{"ApplyButton", "CancelButton"}]
      354 GETUPVAL                         R30 3
      355 GETTABLEKS                       R30 R30 K15 ["createElement"]
      357 GETUPVAL                         R31 15
      358 DUPTABLE                         R32 K84 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      359 GETTABLEKS                       R34 R1 K6 ["variant"]
      361 GETUPVAL                         R35 4
      362 GETTABLEKS                       R35 R35 K85 ["Single"]
      364 JUMPIFEQ                         R34 R35 ; [+8]
      366 GETTABLEKS                       R34 R1 K6 ["variant"]
      368 GETUPVAL                         R35 4
      369 GETTABLEKS                       R35 R35 K12 ["SingleWithTime"]
      371 JUMPIFNOTEQ                      R34 R35 ; [+7]
      373 GETTABLEN                        R34 R8 1
      374 JUMPIFEQKNIL                     R34 ; [+2]
      376 LOADB                            R33 0 +1
      377 LOADB                            R33 1
      378 JUMP                             ; [+27]
      379 GETTABLEKS                       R34 R1 K6 ["variant"]
      381 GETUPVAL                         R35 4
      382 GETTABLEKS                       R35 R35 K7 ["Dual"]
      384 JUMPIFNOTEQ                      R34 R35 ; [+20]
      386 LOADB                            R33 1
      387 GETTABLEN                        R34 R8 1
      388 JUMPIFEQKNIL                     R34 ; [+17]
      390 LOADB                            R33 1
      391 GETTABLEN                        R34 R8 2
      392 JUMPIFEQKNIL                     R34 ; [+13]
      394 GETTABLEN                        R34 R8 1
      395 GETTABLEKS                       R34 R34 K86 ["UnixTimestamp"]
      397 GETTABLEN                        R35 R8 2
      398 GETTABLEKS                       R35 R35 K86 ["UnixTimestamp"]
      400 JUMPIFLT                         R35 R34 ; [+2]
      402 LOADB                            R33 0 +1
      403 LOADB                            R33 1
      404 JUMP                             ; [+1]
      405 LOADB                            R33 0
      406 SETTABLEKS                       R33 R32 K27 ["isDisabled"]
      408 SETTABLEKS                       R13 R32 K41 ["onActivated"]
      410 GETUPVAL                         R33 10
      411 LOADK                            R35 K87 ["CommonUI.Controls.Action.Apply"]
      412 NAMECALL                         R33 R33 K44 ["FormatByKey"]
      414 CALL                             R33 2 1
      415 SETTABLEKS                       R33 R32 K37 ["text"]
      417 GETUPVAL                         R33 16
      418 GETTABLEKS                       R33 R33 K88 ["Emphasis"]
      420 SETTABLEKS                       R33 R32 K6 ["variant"]
      422 LOADK                            R34 K89 ["%*--apply-button"]
      423 GETTABLEKS                       R36 R1 K18 ["testId"]
      425 NAMECALL                         R34 R34 K11 ["format"]
      427 CALL                             R34 2 1
      428 MOVE                             R33 R34
      429 SETTABLEKS                       R33 R32 K18 ["testId"]
      431 CALL                             R30 2 1
      432 SETTABLEKS                       R30 R29 K81 ["ApplyButton"]
      434 GETUPVAL                         R30 3
      435 GETTABLEKS                       R30 R30 K15 ["createElement"]
      437 GETUPVAL                         R31 15
      438 DUPTABLE                         R32 K90 [{"onActivated", "text", "variant", "testId"}]
      439 SETTABLEKS                       R10 R32 K41 ["onActivated"]
      441 GETUPVAL                         R33 10
      442 LOADK                            R35 K91 ["CommonUI.Controls.Action.Cancel"]
      443 NAMECALL                         R33 R33 K44 ["FormatByKey"]
      445 CALL                             R33 2 1
      446 SETTABLEKS                       R33 R32 K37 ["text"]
      448 GETUPVAL                         R33 16
      449 GETTABLEKS                       R33 R33 K62 ["Standard"]
      451 SETTABLEKS                       R33 R32 K6 ["variant"]
      453 LOADK                            R34 K92 ["%*--cancel-button"]
      454 GETTABLEKS                       R36 R1 K18 ["testId"]
      456 NAMECALL                         R34 R34 K11 ["format"]
      458 CALL                             R34 2 1
      459 MOVE                             R33 R34
      460 SETTABLEKS                       R33 R32 K18 ["testId"]
      462 CALL                             R30 2 1
      463 SETTABLEKS                       R30 R29 K82 ["CancelButton"]
      465 CALL                             R26 3 1
      466 SETTABLEKS                       R26 R25 K68 ["BottomBar"]
      468 CALL                             R22 3 1
      469 CALL                             R19 3 1
      470 SETTABLEKS                       R19 R18 K22 ["Calendar"]
      472 CALL                             R15 3 -1
      473 RETURN                           R15 -1

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
       19 GETTABLEKS                       R4 R2 K9 ["Icon"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R6 R6 K4 ["Parent"]
       27 GETTABLEKS                       R6 R6 K10 ["Calendar"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R7 R7 K4 ["Parent"]
       36 GETTABLEKS                       R7 R7 K11 ["DateTimeUtilities"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Components"]
       43 GETTABLEKS                       R8 R8 K13 ["Button"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Enums"]
       50 GETTABLEKS                       R9 R9 K15 ["ButtonVariant"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K14 ["Enums"]
       57 GETTABLEKS                       R10 R10 K16 ["InputSize"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R0 K12 ["Components"]
       64 GETTABLEKS                       R11 R11 K17 ["Popover"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R0 K14 ["Enums"]
       71 GETTABLEKS                       R12 R12 K18 ["PopoverSide"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R13 R0 K12 ["Components"]
       78 GETTABLEKS                       R13 R13 K19 ["TextInput"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETTABLEKS                       R14 R0 K20 ["Utility"]
       85 GETTABLEKS                       R14 R14 K21 ["Localization"]
       87 GETTABLEKS                       R14 R14 K22 ["Translator"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K6 [require]
       92 GETTABLEKS                       R15 R0 K12 ["Components"]
       94 GETTABLEKS                       R15 R15 K23 ["Types"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R16 R0 K12 ["Components"]
      101 GETTABLEKS                       R16 R16 K24 ["View"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K6 [require]
      106 GETTABLEKS                       R17 R0 K25 ["Providers"]
      108 GETTABLEKS                       R17 R17 K26 ["Style"]
      110 GETTABLEKS                       R17 R17 K27 ["useTokens"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K6 [require]
      115 GETTABLEKS                       R18 R0 K20 ["Utility"]
      117 GETTABLEKS                       R18 R18 K28 ["withCommonProps"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K6 [require]
      122 GETTABLEKS                       R19 R0 K20 ["Utility"]
      124 GETTABLEKS                       R19 R19 K29 ["withDefaults"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K6 [require]
      129 GETTABLEKS                       R20 R0 K14 ["Enums"]
      131 GETTABLEKS                       R20 R20 K30 ["DateTimePickerVariant"]
      133 CALL                             R19 1 1
      134 DUPTABLE                         R20 K35 [{["defaultDates"], ["variant"], ["testId"] = "--foundation-date-time-picker"}]
      135 NEWTABLE                         R21 0 1
      137 GETIMPORT                        R22 K38 [DateTime.now]
      139 CALL                             R22 0 -1
      140 SETLIST                          R21 R22 -1 [1]
      142 SETTABLEKS                       R21 R20 K31 ["defaultDates"]
      144 GETTABLEKS                       R21 R19 K39 ["Single"]
      146 SETTABLEKS                       R21 R20 K32 ["variant"]
      148 DUPCLOSURE                       R21 K40 [PROTO_5]
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R8
      166 GETTABLEKS                       R22 R3 K41 ["memo"]
      168 MOVE                             R23 R21
      169 CALL                             R22 1 -1
      170 RETURN                           R22 -1
