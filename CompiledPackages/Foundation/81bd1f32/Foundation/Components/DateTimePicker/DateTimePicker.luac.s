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
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R8 R9 K6 ["FoundationDateTimePickerDefaultInputText"]
       41 JUMPIFNOT                        R8 ; [+53]
       42 GETTABLEKS                       R8 R1 K2 ["defaultDates"]
       44 JUMPIFNOT                        R8 ; [+50]
       45 GETTABLEKS                       R8 R1 K7 ["variant"]
       47 GETUPVAL                         R10 5
       48 GETTABLEKS                       R9 R10 K8 ["Dual"]
       50 JUMPIFNOTEQ                      R8 R9 ; [+27]
       52 LOADK                            R8 K9 ["%* - %*"]
       53 GETUPVAL                         R11 6
       54 GETTABLEKS                       R10 R11 K10 ["formatLocalTime"]
       56 GETTABLEKS                       R12 R1 K2 ["defaultDates"]
       58 GETTABLEN                        R11 R12 1
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R13 R1 K2 ["defaultDates"]
       62 GETTABLEN                        R12 R13 2
       63 JUMPIFNOT                        R12 ; [+8]
       64 GETUPVAL                         R12 6
       65 GETTABLEKS                       R11 R12 K10 ["formatLocalTime"]
       67 GETTABLEKS                       R13 R1 K2 ["defaultDates"]
       69 GETTABLEN                        R12 R13 2
       70 CALL                             R11 1 1
       71 JUMP                             ; [+1]
       72 LOADK                            R11 K11 [""]
       73 NAMECALL                         R8 R8 K12 ["format"]
       75 CALL                             R8 3 1
       76 MOVE                             R7 R8
       77 JUMP                             ; [+18]
       78 GETUPVAL                         R8 6
       79 GETTABLEKS                       R7 R8 K10 ["formatLocalTime"]
       81 GETTABLEKS                       R9 R1 K2 ["defaultDates"]
       83 GETTABLEN                        R8 R9 1
       84 GETTABLEKS                       R10 R1 K7 ["variant"]
       86 GETUPVAL                         R12 5
       87 GETTABLEKS                       R11 R12 K13 ["SingleWithTime"]
       89 JUMPIFEQ                         R10 R11 ; [+2]
       91 LOADB                            R9 0 +1
       92 LOADB                            R9 1
       93 CALL                             R7 2 1
       94 JUMP                             ; [+1]
       95 LOADK                            R7 K11 [""]
       96 CALL                             R6 1 2
       97 GETUPVAL                         R9 3
       98 GETTABLEKS                       R8 R9 K0 ["useState"]
      100 GETTABLEKS                       R9 R1 K2 ["defaultDates"]
      102 CALL                             R8 1 2
      103 GETUPVAL                         R11 3
      104 GETTABLEKS                       R10 R11 K14 ["useCallback"]
      106 NEWCLOSURE                       R11 P0
      107 CAPTURE                          VAL R4
      108 NEWTABLE                         R12 0 0
      110 CALL                             R10 2 1
      111 GETUPVAL                         R12 3
      112 GETTABLEKS                       R11 R12 K14 ["useCallback"]
      114 NEWCLOSURE                       R12 P1
      115 CAPTURE                          VAL R4
      116 NEWTABLE                         R13 0 0
      118 CALL                             R11 2 1
      119 GETUPVAL                         R13 3
      120 GETTABLEKS                       R12 R13 K14 ["useCallback"]
      122 NEWCLOSURE                       R13 P2
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R1
      125 CAPTURE                          UPVAL U5
      126 CAPTURE                          UPVAL U6
      127 NEWTABLE                         R14 0 1
      129 GETTABLEKS                       R15 R1 K15 ["onChanged"]
      131 SETLIST                          R14 R15 1 [1]
      133 CALL                             R12 2 1
      134 GETUPVAL                         R14 3
      135 GETTABLEKS                       R13 R14 K14 ["useCallback"]
      137 NEWCLOSURE                       R14 P3
      138 CAPTURE                          VAL R1
      139 CAPTURE                          UPVAL U5
      140 CAPTURE                          UPVAL U6
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R10
      144 NEWTABLE                         R15 0 2
      146 MOVE                             R16 R8
      147 MOVE                             R17 R10
      148 SETLIST                          R15 R16 2 [1]
      150 CALL                             R13 2 1
      151 NEWCLOSURE                       R14 P4
      152 CAPTURE                          VAL R1
      153 CAPTURE                          UPVAL U5
      154 CAPTURE                          VAL R8
      155 GETUPVAL                         R16 3
      156 GETTABLEKS                       R15 R16 K16 ["createElement"]
      158 GETUPVAL                         R17 7
      159 GETTABLEKS                       R16 R17 K17 ["Root"]
      161 DUPTABLE                         R17 K20 [{"isOpen", "testId"}]
      162 SETTABLEKS                       R3 R17 K18 ["isOpen"]
      164 GETTABLEKS                       R18 R1 K19 ["testId"]
      166 SETTABLEKS                       R18 R17 K19 ["testId"]
      168 DUPTABLE                         R18 K24 [{"DateInput", "Anchor", "Calendar"}]
      169 GETUPVAL                         R20 3
      170 GETTABLEKS                       R19 R20 K16 ["createElement"]
      172 GETUPVAL                         R20 8
      173 GETUPVAL                         R21 9
      174 MOVE                             R22 R1
      175 DUPTABLE                         R23 K39 [{"hasError", "hint", "iconTrailing", "isDisabled", "isRequired", "key", "label", "onChanged", "onFocusGained", "placeholder", "ref", "selectableDateRange", "size", "text", "testId", "width"}]
      176 GETTABLEKS                       R24 R1 K25 ["hasError"]
      178 SETTABLEKS                       R24 R23 K25 ["hasError"]
      180 GETTABLEKS                       R24 R1 K26 ["hint"]
      182 SETTABLEKS                       R24 R23 K26 ["hint"]
      184 DUPTABLE                         R24 K42 [{"name", "onActivated"}]
      185 GETUPVAL                         R26 10
      186 GETTABLEKS                       R25 R26 K23 ["Calendar"]
      188 SETTABLEKS                       R25 R24 K40 ["name"]
      190 SETTABLEKS                       R11 R24 K41 ["onActivated"]
      192 SETTABLEKS                       R24 R23 K27 ["iconTrailing"]
      194 GETTABLEKS                       R24 R1 K28 ["isDisabled"]
      196 SETTABLEKS                       R24 R23 K28 ["isDisabled"]
      198 GETTABLEKS                       R24 R1 K29 ["isRequired"]
      200 SETTABLEKS                       R24 R23 K29 ["isRequired"]
      202 LOADK                            R24 K43 ["date-input"]
      203 SETTABLEKS                       R24 R23 K30 ["key"]
      205 GETTABLEKS                       R24 R1 K31 ["label"]
      207 SETTABLEKS                       R24 R23 K31 ["label"]
      209 SETTABLEKS                       R12 R23 K15 ["onChanged"]
      211 SETTABLEKS                       R11 R23 K32 ["onFocusGained"]
      213 GETUPVAL                         R24 11
      214 LOADK                            R26 K44 ["CommonUI.Controls.Label.SelectDate"]
      215 NAMECALL                         R24 R24 K45 ["FormatByKey"]
      217 CALL                             R24 2 1
      218 SETTABLEKS                       R24 R23 K33 ["placeholder"]
      220 SETTABLEKS                       R5 R23 K34 ["ref"]
      222 GETTABLEKS                       R24 R1 K35 ["selectableDateRange"]
      224 SETTABLEKS                       R24 R23 K35 ["selectableDateRange"]
      226 GETUPVAL                         R25 12
      227 GETTABLEKS                       R24 R25 K46 ["Medium"]
      229 SETTABLEKS                       R24 R23 K36 ["size"]
      231 SETTABLEKS                       R6 R23 K37 ["text"]
      233 LOADK                            R25 K47 ["%*--text-input"]
      234 GETTABLEKS                       R27 R1 K19 ["testId"]
      236 NAMECALL                         R25 R25 K12 ["format"]
      238 CALL                             R25 2 1
      239 MOVE                             R24 R25
      240 SETTABLEKS                       R24 R23 K19 ["testId"]
      242 GETTABLEKS                       R24 R1 K38 ["width"]
      244 SETTABLEKS                       R24 R23 K38 ["width"]
      246 CALL                             R21 2 -1
      247 CALL                             R19 -1 1
      248 SETTABLEKS                       R19 R18 K21 ["DateInput"]
      250 GETUPVAL                         R20 3
      251 GETTABLEKS                       R19 R20 K16 ["createElement"]
      253 GETUPVAL                         R21 7
      254 GETTABLEKS                       R20 R21 K22 ["Anchor"]
      256 DUPTABLE                         R21 K49 [{"anchorRef"}]
      257 SETTABLEKS                       R5 R21 K48 ["anchorRef"]
      259 CALL                             R19 2 1
      260 SETTABLEKS                       R19 R18 K22 ["Anchor"]
      262 GETUPVAL                         R20 3
      263 GETTABLEKS                       R19 R20 K16 ["createElement"]
      265 GETUPVAL                         R21 7
      266 GETTABLEKS                       R20 R21 K50 ["Content"]
      268 DUPTABLE                         R21 K56 [{"hasArrow", "onPressedOutside", "side", "selection", "selectionGroup"}]
      269 LOADB                            R22 0
      270 SETTABLEKS                       R22 R21 K51 ["hasArrow"]
      272 SETTABLEKS                       R10 R21 K52 ["onPressedOutside"]
      274 DUPTABLE                         R22 K59 [{"position", "offset"}]
      275 GETUPVAL                         R24 13
      276 GETTABLEKS                       R23 R24 K60 ["Bottom"]
      278 SETTABLEKS                       R23 R22 K57 ["position"]
      280 GETTABLEKS                       R25 R2 K61 ["Stroke"]
      282 GETTABLEKS                       R24 R25 K62 ["Standard"]
      284 GETTABLEKS                       R26 R2 K63 ["Padding"]
      286 GETTABLEKS                       R25 R26 K64 ["Small"]
      288 ADD                              R23 R24 R25
      289 SETTABLEKS                       R23 R22 K58 ["offset"]
      291 SETTABLEKS                       R22 R21 K53 ["side"]
      293 GETTABLEKS                       R22 R1 K54 ["selection"]
      295 SETTABLEKS                       R22 R21 K54 ["selection"]
      297 GETTABLEKS                       R22 R1 K55 ["selectionGroup"]
      299 SETTABLEKS                       R22 R21 K55 ["selectionGroup"]
      301 MOVE                             R22 R3
      302 JUMPIFNOT                        R22 ; [+191]
      303 GETUPVAL                         R23 3
      304 GETTABLEKS                       R22 R23 K16 ["createElement"]
      306 GETUPVAL                         R23 14
      307 DUPTABLE                         R24 K66 [{"tag"}]
      308 LOADK                            R25 K67 ["padding-large col stroke-default radius-medium auto-xy"]
      309 SETTABLEKS                       R25 R24 K65 ["tag"]
      311 DUPTABLE                         R25 K69 [{"Calendar", "BottomBar"}]
      312 GETUPVAL                         R27 3
      313 GETTABLEKS                       R26 R27 K16 ["createElement"]
      315 GETUPVAL                         R27 15
      316 DUPTABLE                         R28 K75 [{"defaultDates", "LayoutOrder", "onSelectedDateChanged", "selectableDateRange", "showStartDateTimeCalendarInput", "showEndDateTimeCalendarInput", "showTimeDropdown", "testId"}]
      317 SETTABLEKS                       R8 R28 K2 ["defaultDates"]
      319 LOADN                            R29 1
      320 SETTABLEKS                       R29 R28 K70 ["LayoutOrder"]
      322 SETTABLEKS                       R9 R28 K71 ["onSelectedDateChanged"]
      324 GETTABLEKS                       R29 R1 K35 ["selectableDateRange"]
      326 SETTABLEKS                       R29 R28 K35 ["selectableDateRange"]
      328 GETTABLEKS                       R30 R1 K7 ["variant"]
      330 GETUPVAL                         R32 5
      331 GETTABLEKS                       R31 R32 K13 ["SingleWithTime"]
      333 JUMPIFNOTEQ                      R30 R31 ; [+2]
      335 LOADB                            R29 0 +1
      336 LOADB                            R29 1
      337 SETTABLEKS                       R29 R28 K72 ["showStartDateTimeCalendarInput"]
      339 GETTABLEKS                       R30 R1 K7 ["variant"]
      341 GETUPVAL                         R32 5
      342 GETTABLEKS                       R31 R32 K8 ["Dual"]
      344 JUMPIFEQ                         R30 R31 ; [+2]
      346 LOADB                            R29 0 +1
      347 LOADB                            R29 1
      348 SETTABLEKS                       R29 R28 K73 ["showEndDateTimeCalendarInput"]
      350 GETTABLEKS                       R30 R1 K7 ["variant"]
      352 GETUPVAL                         R32 5
      353 GETTABLEKS                       R31 R32 K13 ["SingleWithTime"]
      355 JUMPIFEQ                         R30 R31 ; [+2]
      357 LOADB                            R29 0 +1
      358 LOADB                            R29 1
      359 SETTABLEKS                       R29 R28 K74 ["showTimeDropdown"]
      361 LOADK                            R29 K76 ["--foundation-calendar"]
      362 SETTABLEKS                       R29 R28 K19 ["testId"]
      364 CALL                             R26 2 1
      365 SETTABLEKS                       R26 R25 K23 ["Calendar"]
      367 GETUPVAL                         R27 3
      368 GETTABLEKS                       R26 R27 K16 ["createElement"]
      370 GETUPVAL                         R27 14
      371 DUPTABLE                         R28 K77 [{"LayoutOrder", "tag"}]
      372 LOADN                            R29 2
      373 SETTABLEKS                       R29 R28 K70 ["LayoutOrder"]
      375 LOADK                            R29 K78 ["row size-full-0 auto-y flex-fill gap-small padding-top-large"]
      376 SETTABLEKS                       R29 R28 K65 ["tag"]
      378 DUPTABLE                         R29 K81 [{"ApplyButton", "CancelButton"}]
      379 GETUPVAL                         R31 3
      380 GETTABLEKS                       R30 R31 K16 ["createElement"]
      382 GETUPVAL                         R31 16
      383 DUPTABLE                         R32 K82 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      384 GETTABLEKS                       R34 R1 K7 ["variant"]
      386 GETUPVAL                         R36 5
      387 GETTABLEKS                       R35 R36 K83 ["Single"]
      389 JUMPIFEQ                         R34 R35 ; [+8]
      391 GETTABLEKS                       R34 R1 K7 ["variant"]
      393 GETUPVAL                         R36 5
      394 GETTABLEKS                       R35 R36 K13 ["SingleWithTime"]
      396 JUMPIFNOTEQ                      R34 R35 ; [+7]
      398 GETTABLEN                        R34 R8 1
      399 JUMPIFEQKNIL                     R34 ; [+2]
      401 LOADB                            R33 0 +1
      402 LOADB                            R33 1
      403 JUMP                             ; [+27]
      404 GETTABLEKS                       R34 R1 K7 ["variant"]
      406 GETUPVAL                         R36 5
      407 GETTABLEKS                       R35 R36 K8 ["Dual"]
      409 JUMPIFNOTEQ                      R34 R35 ; [+20]
      411 LOADB                            R33 1
      412 GETTABLEN                        R34 R8 1
      413 JUMPIFEQKNIL                     R34 ; [+17]
      415 LOADB                            R33 1
      416 GETTABLEN                        R34 R8 2
      417 JUMPIFEQKNIL                     R34 ; [+13]
      419 GETTABLEN                        R35 R8 1
      420 GETTABLEKS                       R34 R35 K84 ["UnixTimestamp"]
      422 GETTABLEN                        R36 R8 2
      423 GETTABLEKS                       R35 R36 K84 ["UnixTimestamp"]
      425 JUMPIFLT                         R35 R34 ; [+2]
      427 LOADB                            R33 0 +1
      428 LOADB                            R33 1
      429 JUMP                             ; [+1]
      430 LOADB                            R33 0
      431 SETTABLEKS                       R33 R32 K28 ["isDisabled"]
      433 SETTABLEKS                       R13 R32 K41 ["onActivated"]
      435 GETUPVAL                         R33 11
      436 LOADK                            R35 K85 ["CommonUI.Controls.Action.Apply"]
      437 NAMECALL                         R33 R33 K45 ["FormatByKey"]
      439 CALL                             R33 2 1
      440 SETTABLEKS                       R33 R32 K37 ["text"]
      442 GETUPVAL                         R34 17
      443 GETTABLEKS                       R33 R34 K86 ["Emphasis"]
      445 SETTABLEKS                       R33 R32 K7 ["variant"]
      447 LOADK                            R34 K87 ["%*--apply-button"]
      448 GETTABLEKS                       R36 R1 K19 ["testId"]
      450 NAMECALL                         R34 R34 K12 ["format"]
      452 CALL                             R34 2 1
      453 MOVE                             R33 R34
      454 SETTABLEKS                       R33 R32 K19 ["testId"]
      456 CALL                             R30 2 1
      457 SETTABLEKS                       R30 R29 K79 ["ApplyButton"]
      459 GETUPVAL                         R31 3
      460 GETTABLEKS                       R30 R31 K16 ["createElement"]
      462 GETUPVAL                         R31 16
      463 DUPTABLE                         R32 K88 [{"onActivated", "text", "variant", "testId"}]
      464 SETTABLEKS                       R10 R32 K41 ["onActivated"]
      466 GETUPVAL                         R33 11
      467 LOADK                            R35 K89 ["CommonUI.Controls.Action.Cancel"]
      468 NAMECALL                         R33 R33 K45 ["FormatByKey"]
      470 CALL                             R33 2 1
      471 SETTABLEKS                       R33 R32 K37 ["text"]
      473 GETUPVAL                         R34 17
      474 GETTABLEKS                       R33 R34 K62 ["Standard"]
      476 SETTABLEKS                       R33 R32 K7 ["variant"]
      478 LOADK                            R34 K90 ["%*--cancel-button"]
      479 GETTABLEKS                       R36 R1 K19 ["testId"]
      481 NAMECALL                         R34 R34 K12 ["format"]
      483 CALL                             R34 2 1
      484 MOVE                             R33 R34
      485 SETTABLEKS                       R33 R32 K19 ["testId"]
      487 CALL                             R30 2 1
      488 SETTABLEKS                       R30 R29 K80 ["CancelButton"]
      490 CALL                             R26 3 1
      491 SETTABLEKS                       R26 R25 K68 ["BottomBar"]
      493 CALL                             R22 3 1
      494 CALL                             R19 3 1
      495 SETTABLEKS                       R19 R18 K23 ["Calendar"]
      497 CALL                             R15 3 -1
      498 RETURN                           R15 -1

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
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R12 R0 K14 ["Enums"]
       64 GETTABLEKS                       R11 R12 K18 ["InputSize"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R13 R0 K12 ["Components"]
       71 GETTABLEKS                       R12 R13 K19 ["Popover"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R14 R0 K14 ["Enums"]
       78 GETTABLEKS                       R13 R14 K20 ["PopoverSide"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETTABLEKS                       R15 R0 K12 ["Components"]
       85 GETTABLEKS                       R14 R15 K21 ["TextInput"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K6 [require]
       90 GETTABLEKS                       R17 R0 K16 ["Utility"]
       92 GETTABLEKS                       R16 R17 K22 ["Localization"]
       94 GETTABLEKS                       R15 R16 K23 ["Translator"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R17 R0 K12 ["Components"]
      101 GETTABLEKS                       R16 R17 K24 ["Types"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K6 [require]
      106 GETTABLEKS                       R18 R0 K12 ["Components"]
      108 GETTABLEKS                       R17 R18 K25 ["View"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K6 [require]
      113 GETTABLEKS                       R20 R0 K26 ["Providers"]
      115 GETTABLEKS                       R19 R20 K27 ["Style"]
      117 GETTABLEKS                       R18 R19 K28 ["useTokens"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K6 [require]
      122 GETTABLEKS                       R20 R0 K16 ["Utility"]
      124 GETTABLEKS                       R19 R20 K29 ["withCommonProps"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K6 [require]
      129 GETTABLEKS                       R21 R0 K16 ["Utility"]
      131 GETTABLEKS                       R20 R21 K30 ["withDefaults"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K6 [require]
      136 GETTABLEKS                       R22 R0 K14 ["Enums"]
      138 GETTABLEKS                       R21 R22 K31 ["DateTimePickerVariant"]
      140 CALL                             R20 1 1
      141 DUPTABLE                         R21 K35 [{"defaultDates", "variant", "testId"}]
      142 NEWTABLE                         R22 0 1
      144 GETIMPORT                        R23 K38 [DateTime.now]
      146 CALL                             R23 0 -1
      147 SETLIST                          R22 R23 -1 [1]
      149 SETTABLEKS                       R22 R21 K32 ["defaultDates"]
      151 GETTABLEKS                       R22 R20 K39 ["Single"]
      153 SETTABLEKS                       R22 R21 K33 ["variant"]
      155 LOADK                            R22 K40 ["--foundation-date-time-picker"]
      156 SETTABLEKS                       R22 R21 K34 ["testId"]
      158 DUPCLOSURE                       R22 K41 [PROTO_5]
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R21
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R8
      177 GETTABLEKS                       R23 R3 K42 ["memo"]
      179 MOVE                             R24 R22
      180 CALL                             R23 1 -1
      181 RETURN                           R23 -1
