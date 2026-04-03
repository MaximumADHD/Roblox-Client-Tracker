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
        1 GETTABLEKS                       R0 R1 K0 ["ViewportDisplaySize"]
        3 GETIMPORT                        R1 K4 [Enum.DisplaySize.Small]
        5 JUMPIFEQ                         R0 R1 ; [+3]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
      115 GETUPVAL                         R13 6
      116 JUMPIFNOT                        R13 ; [+16]
      117 GETUPVAL                         R13 3
      118 GETTABLEKS                       R12 R13 K13 ["useCallback"]
      120 NEWCLOSURE                       R13 P2
      121 CAPTURE                          UPVAL U7
      122 CAPTURE                          VAL R11
      123 NEWTABLE                         R14 0 2
      125 MOVE                             R15 R11
      126 GETUPVAL                         R17 7
      127 GETTABLEKS                       R16 R17 K14 ["ViewportDisplaySize"]
      129 SETLIST                          R14 R15 2 [1]
      131 CALL                             R12 2 1
      132 JUMP                             ; [+1]
      133 LOADNIL                          R12
      134 GETUPVAL                         R14 3
      135 GETTABLEKS                       R13 R14 K13 ["useCallback"]
      137 NEWCLOSURE                       R14 P3
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R1
      140 CAPTURE                          UPVAL U4
      141 CAPTURE                          UPVAL U5
      142 NEWTABLE                         R15 0 1
      144 GETTABLEKS                       R16 R1 K15 ["onChanged"]
      146 SETLIST                          R15 R16 1 [1]
      148 CALL                             R13 2 1
      149 GETUPVAL                         R15 3
      150 GETTABLEKS                       R14 R15 K13 ["useCallback"]
      152 NEWCLOSURE                       R15 P4
      153 CAPTURE                          VAL R1
      154 CAPTURE                          UPVAL U4
      155 CAPTURE                          UPVAL U5
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R10
      159 NEWTABLE                         R16 0 2
      161 MOVE                             R17 R8
      162 MOVE                             R18 R10
      163 SETLIST                          R16 R17 2 [1]
      165 CALL                             R14 2 1
      166 NEWCLOSURE                       R15 P5
      167 CAPTURE                          VAL R1
      168 CAPTURE                          UPVAL U4
      169 CAPTURE                          VAL R8
      170 GETUPVAL                         R17 3
      171 GETTABLEKS                       R16 R17 K16 ["createElement"]
      173 GETUPVAL                         R18 8
      174 GETTABLEKS                       R17 R18 K17 ["Root"]
      176 DUPTABLE                         R18 K20 [{"isOpen", "testId"}]
      177 SETTABLEKS                       R3 R18 K18 ["isOpen"]
      179 GETTABLEKS                       R19 R1 K19 ["testId"]
      181 SETTABLEKS                       R19 R18 K19 ["testId"]
      183 DUPTABLE                         R19 K24 [{"DateInput", "Anchor", "Calendar"}]
      184 GETUPVAL                         R21 3
      185 GETTABLEKS                       R20 R21 K16 ["createElement"]
      187 GETUPVAL                         R21 9
      188 GETUPVAL                         R22 10
      189 MOVE                             R23 R1
      190 DUPTABLE                         R24 K39 [{"hasError", "hint", "iconTrailing", "isDisabled", "isRequired", "key", "label", "onChanged", "onFocusGained", "placeholder", "ref", "selectableDateRange", "size", "text", "testId", "width"}]
      191 GETTABLEKS                       R25 R1 K25 ["hasError"]
      193 SETTABLEKS                       R25 R24 K25 ["hasError"]
      195 GETTABLEKS                       R25 R1 K26 ["hint"]
      197 SETTABLEKS                       R25 R24 K26 ["hint"]
      199 DUPTABLE                         R25 K42 [{"name", "onActivated"}]
      200 GETUPVAL                         R27 11
      201 GETTABLEKS                       R26 R27 K23 ["Calendar"]
      203 SETTABLEKS                       R26 R25 K40 ["name"]
      205 SETTABLEKS                       R11 R25 K41 ["onActivated"]
      207 SETTABLEKS                       R25 R24 K27 ["iconTrailing"]
      209 GETTABLEKS                       R25 R1 K28 ["isDisabled"]
      211 SETTABLEKS                       R25 R24 K28 ["isDisabled"]
      213 GETTABLEKS                       R25 R1 K29 ["isRequired"]
      215 SETTABLEKS                       R25 R24 K29 ["isRequired"]
      217 LOADK                            R25 K43 ["date-input"]
      218 SETTABLEKS                       R25 R24 K30 ["key"]
      220 GETTABLEKS                       R25 R1 K31 ["label"]
      222 SETTABLEKS                       R25 R24 K31 ["label"]
      224 SETTABLEKS                       R13 R24 K15 ["onChanged"]
      226 GETUPVAL                         R26 6
      227 JUMPIFNOT                        R26 ; [+2]
      228 MOVE                             R25 R12
      229 JUMP                             ; [+1]
      230 MOVE                             R25 R11
      231 SETTABLEKS                       R25 R24 K32 ["onFocusGained"]
      233 GETUPVAL                         R25 12
      234 LOADK                            R27 K44 ["CommonUI.Controls.Label.SelectDate"]
      235 NAMECALL                         R25 R25 K45 ["FormatByKey"]
      237 CALL                             R25 2 1
      238 SETTABLEKS                       R25 R24 K33 ["placeholder"]
      240 SETTABLEKS                       R5 R24 K34 ["ref"]
      242 GETTABLEKS                       R25 R1 K35 ["selectableDateRange"]
      244 SETTABLEKS                       R25 R24 K35 ["selectableDateRange"]
      246 GETUPVAL                         R26 13
      247 GETTABLEKS                       R25 R26 K46 ["Medium"]
      249 SETTABLEKS                       R25 R24 K36 ["size"]
      251 SETTABLEKS                       R6 R24 K37 ["text"]
      253 LOADK                            R26 K47 ["%*--text-input"]
      254 GETTABLEKS                       R28 R1 K19 ["testId"]
      256 NAMECALL                         R26 R26 K11 ["format"]
      258 CALL                             R26 2 1
      259 MOVE                             R25 R26
      260 SETTABLEKS                       R25 R24 K19 ["testId"]
      262 GETTABLEKS                       R25 R1 K38 ["width"]
      264 SETTABLEKS                       R25 R24 K38 ["width"]
      266 CALL                             R22 2 -1
      267 CALL                             R20 -1 1
      268 SETTABLEKS                       R20 R19 K21 ["DateInput"]
      270 GETUPVAL                         R21 3
      271 GETTABLEKS                       R20 R21 K16 ["createElement"]
      273 GETUPVAL                         R22 8
      274 GETTABLEKS                       R21 R22 K22 ["Anchor"]
      276 DUPTABLE                         R22 K49 [{"anchorRef"}]
      277 SETTABLEKS                       R5 R22 K48 ["anchorRef"]
      279 CALL                             R20 2 1
      280 SETTABLEKS                       R20 R19 K22 ["Anchor"]
      282 GETUPVAL                         R21 3
      283 GETTABLEKS                       R20 R21 K16 ["createElement"]
      285 GETUPVAL                         R22 8
      286 GETTABLEKS                       R21 R22 K50 ["Content"]
      288 DUPTABLE                         R22 K56 [{"hasArrow", "onPressedOutside", "side", "selection", "selectionGroup"}]
      289 LOADB                            R23 0
      290 SETTABLEKS                       R23 R22 K51 ["hasArrow"]
      292 SETTABLEKS                       R10 R22 K52 ["onPressedOutside"]
      294 DUPTABLE                         R23 K59 [{"position", "offset"}]
      295 GETUPVAL                         R25 14
      296 GETTABLEKS                       R24 R25 K60 ["Bottom"]
      298 SETTABLEKS                       R24 R23 K57 ["position"]
      300 GETTABLEKS                       R26 R2 K61 ["Stroke"]
      302 GETTABLEKS                       R25 R26 K62 ["Standard"]
      304 GETTABLEKS                       R27 R2 K63 ["Padding"]
      306 GETTABLEKS                       R26 R27 K64 ["Small"]
      308 ADD                              R24 R25 R26
      309 SETTABLEKS                       R24 R23 K58 ["offset"]
      311 SETTABLEKS                       R23 R22 K53 ["side"]
      313 GETTABLEKS                       R23 R1 K54 ["selection"]
      315 SETTABLEKS                       R23 R22 K54 ["selection"]
      317 GETTABLEKS                       R23 R1 K55 ["selectionGroup"]
      319 SETTABLEKS                       R23 R22 K55 ["selectionGroup"]
      321 MOVE                             R23 R3
      322 JUMPIFNOT                        R23 ; [+191]
      323 GETUPVAL                         R24 3
      324 GETTABLEKS                       R23 R24 K16 ["createElement"]
      326 GETUPVAL                         R24 15
      327 DUPTABLE                         R25 K66 [{"tag"}]
      328 LOADK                            R26 K67 ["padding-large col stroke-default radius-medium auto-xy"]
      329 SETTABLEKS                       R26 R25 K65 ["tag"]
      331 DUPTABLE                         R26 K69 [{"Calendar", "BottomBar"}]
      332 GETUPVAL                         R28 3
      333 GETTABLEKS                       R27 R28 K16 ["createElement"]
      335 GETUPVAL                         R28 16
      336 DUPTABLE                         R29 K75 [{"defaultDates", "LayoutOrder", "onSelectedDateChanged", "selectableDateRange", "showStartDateTimeCalendarInput", "showEndDateTimeCalendarInput", "showTimeDropdown", "testId"}]
      337 SETTABLEKS                       R8 R29 K2 ["defaultDates"]
      339 LOADN                            R30 1
      340 SETTABLEKS                       R30 R29 K70 ["LayoutOrder"]
      342 SETTABLEKS                       R9 R29 K71 ["onSelectedDateChanged"]
      344 GETTABLEKS                       R30 R1 K35 ["selectableDateRange"]
      346 SETTABLEKS                       R30 R29 K35 ["selectableDateRange"]
      348 GETTABLEKS                       R31 R1 K6 ["variant"]
      350 GETUPVAL                         R33 4
      351 GETTABLEKS                       R32 R33 K12 ["SingleWithTime"]
      353 JUMPIFNOTEQ                      R31 R32 ; [+2]
      355 LOADB                            R30 0 +1
      356 LOADB                            R30 1
      357 SETTABLEKS                       R30 R29 K72 ["showStartDateTimeCalendarInput"]
      359 GETTABLEKS                       R31 R1 K6 ["variant"]
      361 GETUPVAL                         R33 4
      362 GETTABLEKS                       R32 R33 K7 ["Dual"]
      364 JUMPIFEQ                         R31 R32 ; [+2]
      366 LOADB                            R30 0 +1
      367 LOADB                            R30 1
      368 SETTABLEKS                       R30 R29 K73 ["showEndDateTimeCalendarInput"]
      370 GETTABLEKS                       R31 R1 K6 ["variant"]
      372 GETUPVAL                         R33 4
      373 GETTABLEKS                       R32 R33 K12 ["SingleWithTime"]
      375 JUMPIFEQ                         R31 R32 ; [+2]
      377 LOADB                            R30 0 +1
      378 LOADB                            R30 1
      379 SETTABLEKS                       R30 R29 K74 ["showTimeDropdown"]
      381 LOADK                            R30 K76 ["--foundation-calendar"]
      382 SETTABLEKS                       R30 R29 K19 ["testId"]
      384 CALL                             R27 2 1
      385 SETTABLEKS                       R27 R26 K23 ["Calendar"]
      387 GETUPVAL                         R28 3
      388 GETTABLEKS                       R27 R28 K16 ["createElement"]
      390 GETUPVAL                         R28 15
      391 DUPTABLE                         R29 K77 [{"LayoutOrder", "tag"}]
      392 LOADN                            R30 2
      393 SETTABLEKS                       R30 R29 K70 ["LayoutOrder"]
      395 LOADK                            R30 K78 ["row size-full-0 auto-y flex-fill gap-small padding-top-large"]
      396 SETTABLEKS                       R30 R29 K65 ["tag"]
      398 DUPTABLE                         R30 K81 [{"ApplyButton", "CancelButton"}]
      399 GETUPVAL                         R32 3
      400 GETTABLEKS                       R31 R32 K16 ["createElement"]
      402 GETUPVAL                         R32 17
      403 DUPTABLE                         R33 K82 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      404 GETTABLEKS                       R35 R1 K6 ["variant"]
      406 GETUPVAL                         R37 4
      407 GETTABLEKS                       R36 R37 K83 ["Single"]
      409 JUMPIFEQ                         R35 R36 ; [+8]
      411 GETTABLEKS                       R35 R1 K6 ["variant"]
      413 GETUPVAL                         R37 4
      414 GETTABLEKS                       R36 R37 K12 ["SingleWithTime"]
      416 JUMPIFNOTEQ                      R35 R36 ; [+7]
      418 GETTABLEN                        R35 R8 1
      419 JUMPIFEQKNIL                     R35 ; [+2]
      421 LOADB                            R34 0 +1
      422 LOADB                            R34 1
      423 JUMP                             ; [+27]
      424 GETTABLEKS                       R35 R1 K6 ["variant"]
      426 GETUPVAL                         R37 4
      427 GETTABLEKS                       R36 R37 K7 ["Dual"]
      429 JUMPIFNOTEQ                      R35 R36 ; [+20]
      431 LOADB                            R34 1
      432 GETTABLEN                        R35 R8 1
      433 JUMPIFEQKNIL                     R35 ; [+17]
      435 LOADB                            R34 1
      436 GETTABLEN                        R35 R8 2
      437 JUMPIFEQKNIL                     R35 ; [+13]
      439 GETTABLEN                        R36 R8 1
      440 GETTABLEKS                       R35 R36 K84 ["UnixTimestamp"]
      442 GETTABLEN                        R37 R8 2
      443 GETTABLEKS                       R36 R37 K84 ["UnixTimestamp"]
      445 JUMPIFLT                         R36 R35 ; [+2]
      447 LOADB                            R34 0 +1
      448 LOADB                            R34 1
      449 JUMP                             ; [+1]
      450 LOADB                            R34 0
      451 SETTABLEKS                       R34 R33 K28 ["isDisabled"]
      453 SETTABLEKS                       R14 R33 K41 ["onActivated"]
      455 GETUPVAL                         R34 12
      456 LOADK                            R36 K85 ["CommonUI.Controls.Action.Apply"]
      457 NAMECALL                         R34 R34 K45 ["FormatByKey"]
      459 CALL                             R34 2 1
      460 SETTABLEKS                       R34 R33 K37 ["text"]
      462 GETUPVAL                         R35 18
      463 GETTABLEKS                       R34 R35 K86 ["Emphasis"]
      465 SETTABLEKS                       R34 R33 K6 ["variant"]
      467 LOADK                            R35 K87 ["%*--apply-button"]
      468 GETTABLEKS                       R37 R1 K19 ["testId"]
      470 NAMECALL                         R35 R35 K11 ["format"]
      472 CALL                             R35 2 1
      473 MOVE                             R34 R35
      474 SETTABLEKS                       R34 R33 K19 ["testId"]
      476 CALL                             R31 2 1
      477 SETTABLEKS                       R31 R30 K79 ["ApplyButton"]
      479 GETUPVAL                         R32 3
      480 GETTABLEKS                       R31 R32 K16 ["createElement"]
      482 GETUPVAL                         R32 17
      483 DUPTABLE                         R33 K88 [{"onActivated", "text", "variant", "testId"}]
      484 SETTABLEKS                       R10 R33 K41 ["onActivated"]
      486 GETUPVAL                         R34 12
      487 LOADK                            R36 K89 ["CommonUI.Controls.Action.Cancel"]
      488 NAMECALL                         R34 R34 K45 ["FormatByKey"]
      490 CALL                             R34 2 1
      491 SETTABLEKS                       R34 R33 K37 ["text"]
      493 GETUPVAL                         R35 18
      494 GETTABLEKS                       R34 R35 K62 ["Standard"]
      496 SETTABLEKS                       R34 R33 K6 ["variant"]
      498 LOADK                            R35 K90 ["%*--cancel-button"]
      499 GETTABLEKS                       R37 R1 K19 ["testId"]
      501 NAMECALL                         R35 R35 K11 ["format"]
      503 CALL                             R35 2 1
      504 MOVE                             R34 R35
      505 SETTABLEKS                       R34 R33 K19 ["testId"]
      507 CALL                             R31 2 1
      508 SETTABLEKS                       R31 R30 K80 ["CancelButton"]
      510 CALL                             R27 3 1
      511 SETTABLEKS                       R27 R26 K68 ["BottomBar"]
      513 CALL                             R23 3 1
      514 CALL                             R20 3 1
      515 SETTABLEKS                       R20 R19 K23 ["Calendar"]
      517 CALL                             R16 3 -1
      518 RETURN                           R16 -1

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
       55 GETTABLEKS                       R11 R0 K16 ["Utility"]
       57 GETTABLEKS                       R10 R11 K17 ["Flags"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETTABLEKS                       R14 R0 K16 ["Utility"]
       64 GETTABLEKS                       R13 R14 K18 ["Wrappers"]
       66 GETTABLEKS                       R12 R13 K19 ["Services"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R10 R11 K20 ["GuiService"]
       71 GETIMPORT                        R11 K6 [require]
       73 GETTABLEKS                       R13 R0 K14 ["Enums"]
       75 GETTABLEKS                       R12 R13 K21 ["InputSize"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R14 R0 K12 ["Components"]
       82 GETTABLEKS                       R13 R14 K22 ["Popover"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R15 R0 K14 ["Enums"]
       89 GETTABLEKS                       R14 R15 K23 ["PopoverSide"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETTABLEKS                       R16 R0 K12 ["Components"]
       96 GETTABLEKS                       R15 R16 K24 ["TextInput"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K6 [require]
      101 GETTABLEKS                       R18 R0 K16 ["Utility"]
      103 GETTABLEKS                       R17 R18 K25 ["Localization"]
      105 GETTABLEKS                       R16 R17 K26 ["Translator"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K6 [require]
      110 GETTABLEKS                       R18 R0 K12 ["Components"]
      112 GETTABLEKS                       R17 R18 K27 ["Types"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K6 [require]
      117 GETTABLEKS                       R19 R0 K12 ["Components"]
      119 GETTABLEKS                       R18 R19 K28 ["View"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K6 [require]
      124 GETTABLEKS                       R21 R0 K29 ["Providers"]
      126 GETTABLEKS                       R20 R21 K30 ["Style"]
      128 GETTABLEKS                       R19 R20 K31 ["useTokens"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K6 [require]
      133 GETTABLEKS                       R21 R0 K16 ["Utility"]
      135 GETTABLEKS                       R20 R21 K32 ["withCommonProps"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K6 [require]
      140 GETTABLEKS                       R22 R0 K16 ["Utility"]
      142 GETTABLEKS                       R21 R22 K33 ["withDefaults"]
      144 CALL                             R20 1 1
      145 GETTABLEKS                       R21 R9 K34 ["FoundationDateTimePickerScreenSize"]
      147 GETIMPORT                        R22 K6 [require]
      149 GETTABLEKS                       R24 R0 K14 ["Enums"]
      151 GETTABLEKS                       R23 R24 K35 ["DateTimePickerVariant"]
      153 CALL                             R22 1 1
      154 DUPTABLE                         R23 K39 [{"defaultDates", "variant", "testId"}]
      155 NEWTABLE                         R24 0 1
      157 GETIMPORT                        R25 K42 [DateTime.now]
      159 CALL                             R25 0 -1
      160 SETLIST                          R24 R25 -1 [1]
      162 SETTABLEKS                       R24 R23 K36 ["defaultDates"]
      164 GETTABLEKS                       R24 R22 K43 ["Single"]
      166 SETTABLEKS                       R24 R23 K37 ["variant"]
      168 LOADK                            R24 K44 ["--foundation-date-time-picker"]
      169 SETTABLEKS                       R24 R23 K38 ["testId"]
      171 DUPCLOSURE                       R24 K45 [PROTO_6]
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R22
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R13
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R8
      191 GETTABLEKS                       R25 R3 K46 ["memo"]
      193 MOVE                             R26 R24
      194 CALL                             R25 1 -1
      195 RETURN                           R25 -1
