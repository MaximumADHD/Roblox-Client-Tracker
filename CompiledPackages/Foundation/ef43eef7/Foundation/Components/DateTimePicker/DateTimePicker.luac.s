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
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["variant"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K3 ["Dual"]
       15 JUMPIFNOTEQ                      R1 R2 ; [+22]
       17 LOADK                            R3 K4 ["-"]
       18 NAMECALL                         R1 R0 K5 ["split"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R2 R3 K6 ["getDateTimeFromText"]
       24 GETTABLEN                        R3 R1 1
       25 CALL                             R2 1 1
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R3 R4 K6 ["getDateTimeFromText"]
       29 GETTABLEN                        R4 R1 2
       30 CALL                             R3 1 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K7 ["onChanged"]
       34 MOVE                             R5 R2
       35 MOVE                             R6 R3
       36 CALL                             R4 2 0
       37 RETURN                           R0 0
       38 LOADK                            R4 K9 ["^%s*(.-)%s*$"]
       39 NAMECALL                         R2 R0 K1 ["match"]
       41 CALL                             R2 2 1
       42 ORK                              R1 R2 K8 [""]
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R2 R3 K6 ["getDateTimeFromText"]
       46 MOVE                             R3 R1
       47 CALL                             R2 1 1
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R3 R4 K7 ["onChanged"]
       51 MOVE                             R4 R2
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["variant"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Dual"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+25]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K2 ["formatLocalTime"]
       11 GETUPVAL                         R2 3
       12 GETTABLEN                        R1 R2 1
       13 CALL                             R0 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEN                        R2 R3 2
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K2 ["formatLocalTime"]
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
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R1 R2 K2 ["formatLocalTime"]
       36 GETUPVAL                         R3 3
       37 GETTABLEN                        R2 R3 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R4 R5 K0 ["variant"]
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R5 R6 K5 ["SingleWithTime"]
       44 JUMPIFEQ                         R4 R5 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 CALL                             R1 2 -1
       49 CALL                             R0 -1 0
       50 GETUPVAL                         R0 5
       51 CALL                             R0 0 0
       52 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["variant"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Single"]
        6 JUMPIFEQ                         R0 R1 ; [+9]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K0 ["variant"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K2 ["SingleWithTime"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+8]
       16 GETUPVAL                         R2 2
       17 GETTABLEN                        R1 R2 1
       18 JUMPIFEQKNIL                     R1 ; [+2]
       20 LOADB                            R0 0 +1
       21 LOADB                            R0 1
       22 RETURN                           R0 1
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R0 R1 K0 ["variant"]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R1 R2 K3 ["Dual"]
       29 JUMPIFNOTEQ                      R0 R1 ; [+24]
       31 LOADB                            R0 1
       32 GETUPVAL                         R2 2
       33 GETTABLEN                        R1 R2 1
       34 JUMPIFEQKNIL                     R1 ; [+18]
       36 LOADB                            R0 1
       37 GETUPVAL                         R2 2
       38 GETTABLEN                        R1 R2 2
       39 JUMPIFEQKNIL                     R1 ; [+13]
       41 GETUPVAL                         R3 2
       42 GETTABLEN                        R2 R3 1
       43 GETTABLEKS                       R1 R2 K4 ["UnixTimestamp"]
       45 GETUPVAL                         R4 2
       46 GETTABLEN                        R3 R4 2
       47 GETTABLEKS                       R2 R3 K4 ["UnixTimestamp"]
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
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R3 R4 K0 ["useState"]
        9 LOADB                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K1 ["useRef"]
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
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R6 R7 K0 ["useState"]
       38 GETTABLEKS                       R8 R1 K2 ["defaultDates"]
       40 JUMPIFNOT                        R8 ; [+50]
       41 GETTABLEKS                       R8 R1 K6 ["variant"]
       43 GETUPVAL                         R10 4
       44 GETTABLEKS                       R9 R10 K7 ["Dual"]
       46 JUMPIFNOTEQ                      R8 R9 ; [+27]
       48 LOADK                            R8 K8 ["%* - %*"]
       49 GETUPVAL                         R11 5
       50 GETTABLEKS                       R10 R11 K9 ["formatLocalTime"]
       52 GETTABLEKS                       R12 R1 K2 ["defaultDates"]
       54 GETTABLEN                        R11 R12 1
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R13 R1 K2 ["defaultDates"]
       58 GETTABLEN                        R12 R13 2
       59 JUMPIFNOT                        R12 ; [+8]
       60 GETUPVAL                         R12 5
       61 GETTABLEKS                       R11 R12 K9 ["formatLocalTime"]
       63 GETTABLEKS                       R13 R1 K2 ["defaultDates"]
       65 GETTABLEN                        R12 R13 2
       66 CALL                             R11 1 1
       67 JUMP                             ; [+1]
       68 LOADK                            R11 K10 [""]
       69 NAMECALL                         R8 R8 K11 ["format"]
       71 CALL                             R8 3 1
       72 MOVE                             R7 R8
       73 JUMP                             ; [+18]
       74 GETUPVAL                         R8 5
       75 GETTABLEKS                       R7 R8 K9 ["formatLocalTime"]
       77 GETTABLEKS                       R9 R1 K2 ["defaultDates"]
       79 GETTABLEN                        R8 R9 1
       80 GETTABLEKS                       R10 R1 K6 ["variant"]
       82 GETUPVAL                         R12 4
       83 GETTABLEKS                       R11 R12 K12 ["SingleWithTime"]
       85 JUMPIFEQ                         R10 R11 ; [+2]
       87 LOADB                            R9 0 +1
       88 LOADB                            R9 1
       89 CALL                             R7 2 1
       90 JUMP                             ; [+1]
       91 LOADK                            R7 K10 [""]
       92 CALL                             R6 1 2
       93 GETUPVAL                         R9 3
       94 GETTABLEKS                       R8 R9 K0 ["useState"]
       96 GETTABLEKS                       R9 R1 K2 ["defaultDates"]
       98 CALL                             R8 1 2
       99 GETUPVAL                         R11 3
      100 GETTABLEKS                       R10 R11 K13 ["useCallback"]
      102 NEWCLOSURE                       R11 P0
      103 CAPTURE                          VAL R4
      104 NEWTABLE                         R12 0 0
      106 CALL                             R10 2 1
      107 GETUPVAL                         R12 3
      108 GETTABLEKS                       R11 R12 K13 ["useCallback"]
      110 NEWCLOSURE                       R12 P1
      111 CAPTURE                          VAL R4
      112 NEWTABLE                         R13 0 0
      114 CALL                             R11 2 1
      115 GETUPVAL                         R13 3
      116 GETTABLEKS                       R12 R13 K13 ["useCallback"]
      118 NEWCLOSURE                       R13 P2
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R1
      121 CAPTURE                          UPVAL U4
      122 CAPTURE                          UPVAL U5
      123 NEWTABLE                         R14 0 1
      125 GETTABLEKS                       R15 R1 K14 ["onChanged"]
      127 SETLIST                          R14 R15 1 [1]
      129 CALL                             R12 2 1
      130 GETUPVAL                         R14 3
      131 GETTABLEKS                       R13 R14 K13 ["useCallback"]
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
      151 GETUPVAL                         R16 3
      152 GETTABLEKS                       R15 R16 K15 ["createElement"]
      154 GETUPVAL                         R17 6
      155 GETTABLEKS                       R16 R17 K16 ["Root"]
      157 DUPTABLE                         R17 K19 [{"isOpen", "testId"}]
      158 SETTABLEKS                       R3 R17 K17 ["isOpen"]
      160 GETTABLEKS                       R18 R1 K18 ["testId"]
      162 SETTABLEKS                       R18 R17 K18 ["testId"]
      164 DUPTABLE                         R18 K23 [{"DateInput", "Anchor", "Calendar"}]
      165 GETUPVAL                         R20 3
      166 GETTABLEKS                       R19 R20 K15 ["createElement"]
      168 GETUPVAL                         R20 7
      169 GETUPVAL                         R21 8
      170 MOVE                             R22 R1
      171 DUPTABLE                         R23 K38 [{"hasError", "hint", "iconTrailing", "isDisabled", "isRequired", "key", "label", "onChanged", "onFocusGained", "placeholder", "ref", "selectableDateRange", "size", "text", "testId", "width"}]
      172 GETTABLEKS                       R24 R1 K24 ["hasError"]
      174 SETTABLEKS                       R24 R23 K24 ["hasError"]
      176 GETTABLEKS                       R24 R1 K25 ["hint"]
      178 SETTABLEKS                       R24 R23 K25 ["hint"]
      180 DUPTABLE                         R24 K41 [{"name", "onActivated"}]
      181 GETUPVAL                         R26 9
      182 GETTABLEKS                       R25 R26 K22 ["Calendar"]
      184 SETTABLEKS                       R25 R24 K39 ["name"]
      186 SETTABLEKS                       R11 R24 K40 ["onActivated"]
      188 SETTABLEKS                       R24 R23 K26 ["iconTrailing"]
      190 GETTABLEKS                       R24 R1 K27 ["isDisabled"]
      192 SETTABLEKS                       R24 R23 K27 ["isDisabled"]
      194 GETTABLEKS                       R24 R1 K28 ["isRequired"]
      196 SETTABLEKS                       R24 R23 K28 ["isRequired"]
      198 LOADK                            R24 K42 ["date-input"]
      199 SETTABLEKS                       R24 R23 K29 ["key"]
      201 GETTABLEKS                       R24 R1 K30 ["label"]
      203 SETTABLEKS                       R24 R23 K30 ["label"]
      205 SETTABLEKS                       R12 R23 K14 ["onChanged"]
      207 SETTABLEKS                       R11 R23 K31 ["onFocusGained"]
      209 GETUPVAL                         R24 10
      210 LOADK                            R26 K43 ["CommonUI.Controls.Label.SelectDate"]
      211 NAMECALL                         R24 R24 K44 ["FormatByKey"]
      213 CALL                             R24 2 1
      214 SETTABLEKS                       R24 R23 K32 ["placeholder"]
      216 SETTABLEKS                       R5 R23 K33 ["ref"]
      218 GETTABLEKS                       R24 R1 K34 ["selectableDateRange"]
      220 SETTABLEKS                       R24 R23 K34 ["selectableDateRange"]
      222 GETUPVAL                         R25 11
      223 GETTABLEKS                       R24 R25 K45 ["Medium"]
      225 SETTABLEKS                       R24 R23 K35 ["size"]
      227 SETTABLEKS                       R6 R23 K36 ["text"]
      229 LOADK                            R25 K46 ["%*--text-input"]
      230 GETTABLEKS                       R27 R1 K18 ["testId"]
      232 NAMECALL                         R25 R25 K11 ["format"]
      234 CALL                             R25 2 1
      235 MOVE                             R24 R25
      236 SETTABLEKS                       R24 R23 K18 ["testId"]
      238 GETTABLEKS                       R24 R1 K37 ["width"]
      240 SETTABLEKS                       R24 R23 K37 ["width"]
      242 CALL                             R21 2 -1
      243 CALL                             R19 -1 1
      244 SETTABLEKS                       R19 R18 K20 ["DateInput"]
      246 GETUPVAL                         R20 3
      247 GETTABLEKS                       R19 R20 K15 ["createElement"]
      249 GETUPVAL                         R21 6
      250 GETTABLEKS                       R20 R21 K21 ["Anchor"]
      252 DUPTABLE                         R21 K48 [{"anchorRef"}]
      253 SETTABLEKS                       R5 R21 K47 ["anchorRef"]
      255 CALL                             R19 2 1
      256 SETTABLEKS                       R19 R18 K21 ["Anchor"]
      258 GETUPVAL                         R20 3
      259 GETTABLEKS                       R19 R20 K15 ["createElement"]
      261 GETUPVAL                         R21 6
      262 GETTABLEKS                       R20 R21 K49 ["Content"]
      264 DUPTABLE                         R21 K55 [{"hasArrow", "onPressedOutside", "side", "selection", "selectionGroup"}]
      265 LOADB                            R22 0
      266 SETTABLEKS                       R22 R21 K50 ["hasArrow"]
      268 SETTABLEKS                       R10 R21 K51 ["onPressedOutside"]
      270 DUPTABLE                         R22 K58 [{"position", "offset"}]
      271 GETUPVAL                         R24 12
      272 GETTABLEKS                       R23 R24 K59 ["Bottom"]
      274 SETTABLEKS                       R23 R22 K56 ["position"]
      276 GETTABLEKS                       R25 R2 K60 ["Stroke"]
      278 GETTABLEKS                       R24 R25 K61 ["Standard"]
      280 GETTABLEKS                       R26 R2 K62 ["Padding"]
      282 GETTABLEKS                       R25 R26 K63 ["Small"]
      284 ADD                              R23 R24 R25
      285 SETTABLEKS                       R23 R22 K57 ["offset"]
      287 SETTABLEKS                       R22 R21 K52 ["side"]
      289 GETTABLEKS                       R22 R1 K53 ["selection"]
      291 SETTABLEKS                       R22 R21 K53 ["selection"]
      293 GETTABLEKS                       R22 R1 K54 ["selectionGroup"]
      295 SETTABLEKS                       R22 R21 K54 ["selectionGroup"]
      297 MOVE                             R22 R3
      298 JUMPIFNOT                        R22 ; [+191]
      299 GETUPVAL                         R23 3
      300 GETTABLEKS                       R22 R23 K15 ["createElement"]
      302 GETUPVAL                         R23 13
      303 DUPTABLE                         R24 K65 [{"tag"}]
      304 LOADK                            R25 K66 ["padding-large col stroke-default radius-medium auto-xy"]
      305 SETTABLEKS                       R25 R24 K64 ["tag"]
      307 DUPTABLE                         R25 K68 [{"Calendar", "BottomBar"}]
      308 GETUPVAL                         R27 3
      309 GETTABLEKS                       R26 R27 K15 ["createElement"]
      311 GETUPVAL                         R27 14
      312 DUPTABLE                         R28 K74 [{"defaultDates", "LayoutOrder", "onSelectedDateChanged", "selectableDateRange", "showStartDateTimeCalendarInput", "showEndDateTimeCalendarInput", "showTimeDropdown", "testId"}]
      313 SETTABLEKS                       R8 R28 K2 ["defaultDates"]
      315 LOADN                            R29 1
      316 SETTABLEKS                       R29 R28 K69 ["LayoutOrder"]
      318 SETTABLEKS                       R9 R28 K70 ["onSelectedDateChanged"]
      320 GETTABLEKS                       R29 R1 K34 ["selectableDateRange"]
      322 SETTABLEKS                       R29 R28 K34 ["selectableDateRange"]
      324 GETTABLEKS                       R30 R1 K6 ["variant"]
      326 GETUPVAL                         R32 4
      327 GETTABLEKS                       R31 R32 K12 ["SingleWithTime"]
      329 JUMPIFNOTEQ                      R30 R31 ; [+2]
      331 LOADB                            R29 0 +1
      332 LOADB                            R29 1
      333 SETTABLEKS                       R29 R28 K71 ["showStartDateTimeCalendarInput"]
      335 GETTABLEKS                       R30 R1 K6 ["variant"]
      337 GETUPVAL                         R32 4
      338 GETTABLEKS                       R31 R32 K7 ["Dual"]
      340 JUMPIFEQ                         R30 R31 ; [+2]
      342 LOADB                            R29 0 +1
      343 LOADB                            R29 1
      344 SETTABLEKS                       R29 R28 K72 ["showEndDateTimeCalendarInput"]
      346 GETTABLEKS                       R30 R1 K6 ["variant"]
      348 GETUPVAL                         R32 4
      349 GETTABLEKS                       R31 R32 K12 ["SingleWithTime"]
      351 JUMPIFEQ                         R30 R31 ; [+2]
      353 LOADB                            R29 0 +1
      354 LOADB                            R29 1
      355 SETTABLEKS                       R29 R28 K73 ["showTimeDropdown"]
      357 LOADK                            R29 K75 ["--foundation-calendar"]
      358 SETTABLEKS                       R29 R28 K18 ["testId"]
      360 CALL                             R26 2 1
      361 SETTABLEKS                       R26 R25 K22 ["Calendar"]
      363 GETUPVAL                         R27 3
      364 GETTABLEKS                       R26 R27 K15 ["createElement"]
      366 GETUPVAL                         R27 13
      367 DUPTABLE                         R28 K76 [{"LayoutOrder", "tag"}]
      368 LOADN                            R29 2
      369 SETTABLEKS                       R29 R28 K69 ["LayoutOrder"]
      371 LOADK                            R29 K77 ["row size-full-0 auto-y flex-fill gap-small padding-top-large"]
      372 SETTABLEKS                       R29 R28 K64 ["tag"]
      374 DUPTABLE                         R29 K80 [{"ApplyButton", "CancelButton"}]
      375 GETUPVAL                         R31 3
      376 GETTABLEKS                       R30 R31 K15 ["createElement"]
      378 GETUPVAL                         R31 15
      379 DUPTABLE                         R32 K81 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      380 GETTABLEKS                       R34 R1 K6 ["variant"]
      382 GETUPVAL                         R36 4
      383 GETTABLEKS                       R35 R36 K82 ["Single"]
      385 JUMPIFEQ                         R34 R35 ; [+8]
      387 GETTABLEKS                       R34 R1 K6 ["variant"]
      389 GETUPVAL                         R36 4
      390 GETTABLEKS                       R35 R36 K12 ["SingleWithTime"]
      392 JUMPIFNOTEQ                      R34 R35 ; [+7]
      394 GETTABLEN                        R34 R8 1
      395 JUMPIFEQKNIL                     R34 ; [+2]
      397 LOADB                            R33 0 +1
      398 LOADB                            R33 1
      399 JUMP                             ; [+27]
      400 GETTABLEKS                       R34 R1 K6 ["variant"]
      402 GETUPVAL                         R36 4
      403 GETTABLEKS                       R35 R36 K7 ["Dual"]
      405 JUMPIFNOTEQ                      R34 R35 ; [+20]
      407 LOADB                            R33 1
      408 GETTABLEN                        R34 R8 1
      409 JUMPIFEQKNIL                     R34 ; [+17]
      411 LOADB                            R33 1
      412 GETTABLEN                        R34 R8 2
      413 JUMPIFEQKNIL                     R34 ; [+13]
      415 GETTABLEN                        R35 R8 1
      416 GETTABLEKS                       R34 R35 K83 ["UnixTimestamp"]
      418 GETTABLEN                        R36 R8 2
      419 GETTABLEKS                       R35 R36 K83 ["UnixTimestamp"]
      421 JUMPIFLT                         R35 R34 ; [+2]
      423 LOADB                            R33 0 +1
      424 LOADB                            R33 1
      425 JUMP                             ; [+1]
      426 LOADB                            R33 0
      427 SETTABLEKS                       R33 R32 K27 ["isDisabled"]
      429 SETTABLEKS                       R13 R32 K40 ["onActivated"]
      431 GETUPVAL                         R33 10
      432 LOADK                            R35 K84 ["CommonUI.Controls.Action.Apply"]
      433 NAMECALL                         R33 R33 K44 ["FormatByKey"]
      435 CALL                             R33 2 1
      436 SETTABLEKS                       R33 R32 K36 ["text"]
      438 GETUPVAL                         R34 16
      439 GETTABLEKS                       R33 R34 K85 ["Emphasis"]
      441 SETTABLEKS                       R33 R32 K6 ["variant"]
      443 LOADK                            R34 K86 ["%*--apply-button"]
      444 GETTABLEKS                       R36 R1 K18 ["testId"]
      446 NAMECALL                         R34 R34 K11 ["format"]
      448 CALL                             R34 2 1
      449 MOVE                             R33 R34
      450 SETTABLEKS                       R33 R32 K18 ["testId"]
      452 CALL                             R30 2 1
      453 SETTABLEKS                       R30 R29 K78 ["ApplyButton"]
      455 GETUPVAL                         R31 3
      456 GETTABLEKS                       R30 R31 K15 ["createElement"]
      458 GETUPVAL                         R31 15
      459 DUPTABLE                         R32 K87 [{"onActivated", "text", "variant", "testId"}]
      460 SETTABLEKS                       R10 R32 K40 ["onActivated"]
      462 GETUPVAL                         R33 10
      463 LOADK                            R35 K88 ["CommonUI.Controls.Action.Cancel"]
      464 NAMECALL                         R33 R33 K44 ["FormatByKey"]
      466 CALL                             R33 2 1
      467 SETTABLEKS                       R33 R32 K36 ["text"]
      469 GETUPVAL                         R34 16
      470 GETTABLEKS                       R33 R34 K61 ["Standard"]
      472 SETTABLEKS                       R33 R32 K6 ["variant"]
      474 LOADK                            R34 K89 ["%*--cancel-button"]
      475 GETTABLEKS                       R36 R1 K18 ["testId"]
      477 NAMECALL                         R34 R34 K11 ["format"]
      479 CALL                             R34 2 1
      480 MOVE                             R33 R34
      481 SETTABLEKS                       R33 R32 K18 ["testId"]
      483 CALL                             R30 2 1
      484 SETTABLEKS                       R30 R29 K79 ["CancelButton"]
      486 CALL                             R26 3 1
      487 SETTABLEKS                       R26 R25 K67 ["BottomBar"]
      489 CALL                             R22 3 1
      490 CALL                             R19 3 1
      491 SETTABLEKS                       R19 R18 K22 ["Calendar"]
      493 CALL                             R15 3 -1
      494 RETURN                           R15 -1

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
       23 GETIMPORT                        R8 K1 [script]
       25 GETTABLEKS                       R7 R8 K4 ["Parent"]
       27 GETTABLEKS                       R6 R7 K10 ["Calendar"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETIMPORT                        R9 K1 [script]
       34 GETTABLEKS                       R8 R9 K4 ["Parent"]
       36 GETTABLEKS                       R7 R8 K11 ["DateTimeUtilities"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R9 R0 K12 ["Components"]
       43 GETTABLEKS                       R8 R9 K13 ["Button"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R10 R0 K14 ["Enums"]
       50 GETTABLEKS                       R9 R10 K15 ["ButtonVariant"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R11 R0 K14 ["Enums"]
       57 GETTABLEKS                       R10 R11 K16 ["InputSize"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R12 R0 K12 ["Components"]
       64 GETTABLEKS                       R11 R12 K17 ["Popover"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R13 R0 K14 ["Enums"]
       71 GETTABLEKS                       R12 R13 K18 ["PopoverSide"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R14 R0 K12 ["Components"]
       78 GETTABLEKS                       R13 R14 K19 ["TextInput"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETTABLEKS                       R16 R0 K20 ["Utility"]
       85 GETTABLEKS                       R15 R16 K21 ["Localization"]
       87 GETTABLEKS                       R14 R15 K22 ["Translator"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K6 [require]
       92 GETTABLEKS                       R16 R0 K12 ["Components"]
       94 GETTABLEKS                       R15 R16 K23 ["Types"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R17 R0 K12 ["Components"]
      101 GETTABLEKS                       R16 R17 K24 ["View"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K6 [require]
      106 GETTABLEKS                       R19 R0 K25 ["Providers"]
      108 GETTABLEKS                       R18 R19 K26 ["Style"]
      110 GETTABLEKS                       R17 R18 K27 ["useTokens"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K6 [require]
      115 GETTABLEKS                       R19 R0 K20 ["Utility"]
      117 GETTABLEKS                       R18 R19 K28 ["withCommonProps"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K6 [require]
      122 GETTABLEKS                       R20 R0 K20 ["Utility"]
      124 GETTABLEKS                       R19 R20 K29 ["withDefaults"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K6 [require]
      129 GETTABLEKS                       R21 R0 K14 ["Enums"]
      131 GETTABLEKS                       R20 R21 K30 ["DateTimePickerVariant"]
      133 CALL                             R19 1 1
      134 DUPTABLE                         R20 K34 [{"defaultDates", "variant", "testId"}]
      135 NEWTABLE                         R21 0 1
      137 GETIMPORT                        R22 K37 [DateTime.now]
      139 CALL                             R22 0 -1
      140 SETLIST                          R21 R22 -1 [1]
      142 SETTABLEKS                       R21 R20 K31 ["defaultDates"]
      144 GETTABLEKS                       R21 R19 K38 ["Single"]
      146 SETTABLEKS                       R21 R20 K32 ["variant"]
      148 LOADK                            R21 K39 ["--foundation-date-time-picker"]
      149 SETTABLEKS                       R21 R20 K33 ["testId"]
      151 DUPCLOSURE                       R21 K40 [PROTO_5]
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R8
      169 GETTABLEKS                       R22 R3 K41 ["memo"]
      171 MOVE                             R23 R21
      172 CALL                             R22 1 -1
      173 RETURN                           R22 -1
