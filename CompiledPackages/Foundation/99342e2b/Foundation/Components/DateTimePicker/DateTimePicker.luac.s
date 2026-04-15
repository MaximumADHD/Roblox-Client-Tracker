PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["defaultDates"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFEQKS                       R1 K3 ["table"] ; [+7]
       11 NEWTABLE                         R1 0 1
       13 MOVE                             R2 R0
       14 SETLIST                          R1 R2 1 [1]
       16 RETURN                           R1 1
       17 RETURN                           R0 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ViewportDisplaySize"]
        3 GETIMPORT                        R1 K4 [Enum.DisplaySize.Small]
        5 JUMPIFEQ                         R0 R1 ; [+3]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+2]
        4 LOADB                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K0 ["variant"]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["Single"]
       12 JUMPIFEQ                         R0 R1 ; [+9]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R0 R1 K0 ["variant"]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R1 R2 K2 ["SingleWithTime"]
       20 JUMPIFNOTEQ                      R0 R1 ; [+8]
       22 GETUPVAL                         R2 1
       23 GETTABLEN                        R1 R2 1
       24 JUMPIFEQKNIL                     R1 ; [+2]
       26 LOADB                            R0 0 +1
       27 LOADB                            R0 1
       28 RETURN                           R0 1
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R0 R1 K0 ["variant"]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R1 R2 K3 ["Dual"]
       35 JUMPIFNOTEQ                      R0 R1 ; [+24]
       37 LOADB                            R0 1
       38 GETUPVAL                         R2 1
       39 GETTABLEN                        R1 R2 1
       40 JUMPIFEQKNIL                     R1 ; [+18]
       42 LOADB                            R0 1
       43 GETUPVAL                         R2 1
       44 GETTABLEN                        R1 R2 2
       45 JUMPIFEQKNIL                     R1 ; [+13]
       47 GETUPVAL                         R3 1
       48 GETTABLEN                        R2 R3 1
       49 GETTABLEKS                       R1 R2 K4 ["UnixTimestamp"]
       51 GETUPVAL                         R4 1
       52 GETTABLEN                        R3 R4 2
       53 GETTABLEKS                       R2 R3 K4 ["UnixTimestamp"]
       55 JUMPIFLT                         R2 R1 ; [+2]
       57 LOADB                            R0 0 +1
       58 LOADB                            R0 1
       59 RETURN                           R0 1
       60 LOADB                            R0 0
       61 RETURN                           R0 1

PROTO_7:
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
       16 LOADNIL                          R6
       17 GETUPVAL                         R7 4
       18 JUMPIFNOT                        R7 ; [+14]
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R7 R8 K2 ["useMemo"]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R9 0 1
       26 GETTABLEKS                       R10 R1 K3 ["defaultDates"]
       28 SETLIST                          R9 R10 1 [1]
       30 CALL                             R7 2 1
       31 MOVE                             R6 R7
       32 JUMP                             ; [+20]
       33 GETTABLEKS                       R6 R1 K3 ["defaultDates"]
       35 GETTABLEKS                       R7 R1 K3 ["defaultDates"]
       37 JUMPIFNOT                        R7 ; [+15]
       38 GETTABLEKS                       R8 R1 K3 ["defaultDates"]
       40 FASTCALL1                        TYPEOF R8 ; [+2]
       41 GETIMPORT                        R7 K5 [typeof]
       43 CALL                             R7 1 1
       44 JUMPIFEQKS                       R7 K6 ["table"] ; [+8]
       46 NEWTABLE                         R7 0 1
       48 GETTABLEKS                       R8 R1 K3 ["defaultDates"]
       50 SETLIST                          R7 R8 1 [1]
       52 MOVE                             R6 R7
       53 GETUPVAL                         R8 3
       54 GETTABLEKS                       R7 R8 K0 ["useState"]
       56 JUMPIFNOT                        R6 ; [+42]
       57 GETTABLEKS                       R9 R1 K7 ["variant"]
       59 GETUPVAL                         R11 5
       60 GETTABLEKS                       R10 R11 K8 ["Dual"]
       62 JUMPIFNOTEQ                      R9 R10 ; [+21]
       64 LOADK                            R9 K9 ["%* - %*"]
       65 GETUPVAL                         R12 6
       66 GETTABLEKS                       R11 R12 K10 ["formatLocalTime"]
       68 GETTABLEN                        R12 R6 1
       69 CALL                             R11 1 1
       70 GETTABLEN                        R13 R6 2
       71 JUMPIFNOT                        R13 ; [+6]
       72 GETUPVAL                         R13 6
       73 GETTABLEKS                       R12 R13 K10 ["formatLocalTime"]
       75 GETTABLEN                        R13 R6 2
       76 CALL                             R12 1 1
       77 JUMP                             ; [+1]
       78 LOADK                            R12 K11 [""]
       79 NAMECALL                         R9 R9 K12 ["format"]
       81 CALL                             R9 3 1
       82 MOVE                             R8 R9
       83 JUMP                             ; [+16]
       84 GETUPVAL                         R9 6
       85 GETTABLEKS                       R8 R9 K10 ["formatLocalTime"]
       87 GETTABLEN                        R9 R6 1
       88 GETTABLEKS                       R11 R1 K7 ["variant"]
       90 GETUPVAL                         R13 5
       91 GETTABLEKS                       R12 R13 K13 ["SingleWithTime"]
       93 JUMPIFEQ                         R11 R12 ; [+2]
       95 LOADB                            R10 0 +1
       96 LOADB                            R10 1
       97 CALL                             R8 2 1
       98 JUMP                             ; [+1]
       99 LOADK                            R8 K11 [""]
      100 CALL                             R7 1 2
      101 GETUPVAL                         R10 3
      102 GETTABLEKS                       R9 R10 K0 ["useState"]
      104 MOVE                             R10 R6
      105 CALL                             R9 1 2
      106 GETUPVAL                         R12 3
      107 GETTABLEKS                       R11 R12 K14 ["useCallback"]
      109 NEWCLOSURE                       R12 P1
      110 CAPTURE                          VAL R4
      111 NEWTABLE                         R13 0 0
      113 CALL                             R11 2 1
      114 GETUPVAL                         R13 3
      115 GETTABLEKS                       R12 R13 K14 ["useCallback"]
      117 NEWCLOSURE                       R13 P2
      118 CAPTURE                          VAL R4
      119 NEWTABLE                         R14 0 0
      121 CALL                             R12 2 1
      122 GETUPVAL                         R14 7
      123 JUMPIFNOT                        R14 ; [+16]
      124 GETUPVAL                         R14 3
      125 GETTABLEKS                       R13 R14 K14 ["useCallback"]
      127 NEWCLOSURE                       R14 P3
      128 CAPTURE                          UPVAL U8
      129 CAPTURE                          VAL R12
      130 NEWTABLE                         R15 0 2
      132 MOVE                             R16 R12
      133 GETUPVAL                         R18 8
      134 GETTABLEKS                       R17 R18 K15 ["ViewportDisplaySize"]
      136 SETLIST                          R15 R16 2 [1]
      138 CALL                             R13 2 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R13
      141 GETUPVAL                         R15 3
      142 GETTABLEKS                       R14 R15 K14 ["useCallback"]
      144 NEWCLOSURE                       R15 P4
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R1
      147 CAPTURE                          UPVAL U5
      148 CAPTURE                          UPVAL U6
      149 NEWTABLE                         R16 0 1
      151 GETTABLEKS                       R17 R1 K16 ["onChanged"]
      153 SETLIST                          R16 R17 1 [1]
      155 CALL                             R14 2 1
      156 GETUPVAL                         R16 3
      157 GETTABLEKS                       R15 R16 K14 ["useCallback"]
      159 NEWCLOSURE                       R16 P5
      160 CAPTURE                          VAL R1
      161 CAPTURE                          UPVAL U5
      162 CAPTURE                          UPVAL U6
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R11
      166 NEWTABLE                         R17 0 2
      168 MOVE                             R18 R9
      169 MOVE                             R19 R11
      170 SETLIST                          R17 R18 2 [1]
      172 CALL                             R15 2 1
      173 NEWCLOSURE                       R16 P6
      174 CAPTURE                          UPVAL U4
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R1
      177 CAPTURE                          UPVAL U5
      178 GETUPVAL                         R18 3
      179 GETTABLEKS                       R17 R18 K17 ["createElement"]
      181 GETUPVAL                         R19 9
      182 GETTABLEKS                       R18 R19 K18 ["Root"]
      184 DUPTABLE                         R19 K21 [{"isOpen", "testId"}]
      185 SETTABLEKS                       R3 R19 K19 ["isOpen"]
      187 GETTABLEKS                       R20 R1 K20 ["testId"]
      189 SETTABLEKS                       R20 R19 K20 ["testId"]
      191 DUPTABLE                         R20 K25 [{"DateInput", "Anchor", "Calendar"}]
      192 GETUPVAL                         R22 3
      193 GETTABLEKS                       R21 R22 K17 ["createElement"]
      195 GETUPVAL                         R22 10
      196 GETUPVAL                         R23 11
      197 MOVE                             R24 R1
      198 DUPTABLE                         R25 K40 [{"hasError", "hint", "iconTrailing", "isDisabled", "isRequired", "key", "label", "onChanged", "onFocusGained", "placeholder", "ref", "selectableDateRange", "size", "text", "testId", "width"}]
      199 GETTABLEKS                       R26 R1 K26 ["hasError"]
      201 SETTABLEKS                       R26 R25 K26 ["hasError"]
      203 GETTABLEKS                       R26 R1 K27 ["hint"]
      205 SETTABLEKS                       R26 R25 K27 ["hint"]
      207 DUPTABLE                         R26 K43 [{"name", "onActivated"}]
      208 GETUPVAL                         R28 12
      209 GETTABLEKS                       R27 R28 K24 ["Calendar"]
      211 SETTABLEKS                       R27 R26 K41 ["name"]
      213 SETTABLEKS                       R12 R26 K42 ["onActivated"]
      215 SETTABLEKS                       R26 R25 K28 ["iconTrailing"]
      217 GETTABLEKS                       R26 R1 K29 ["isDisabled"]
      219 SETTABLEKS                       R26 R25 K29 ["isDisabled"]
      221 GETTABLEKS                       R26 R1 K30 ["isRequired"]
      223 SETTABLEKS                       R26 R25 K30 ["isRequired"]
      225 LOADK                            R26 K44 ["date-input"]
      226 SETTABLEKS                       R26 R25 K31 ["key"]
      228 GETTABLEKS                       R26 R1 K32 ["label"]
      230 SETTABLEKS                       R26 R25 K32 ["label"]
      232 SETTABLEKS                       R14 R25 K16 ["onChanged"]
      234 GETUPVAL                         R27 7
      235 JUMPIFNOT                        R27 ; [+2]
      236 MOVE                             R26 R13
      237 JUMP                             ; [+1]
      238 MOVE                             R26 R12
      239 SETTABLEKS                       R26 R25 K33 ["onFocusGained"]
      241 GETUPVAL                         R26 13
      242 LOADK                            R28 K45 ["CommonUI.Controls.Label.SelectDate"]
      243 NAMECALL                         R26 R26 K46 ["FormatByKey"]
      245 CALL                             R26 2 1
      246 SETTABLEKS                       R26 R25 K34 ["placeholder"]
      248 SETTABLEKS                       R5 R25 K35 ["ref"]
      250 GETTABLEKS                       R26 R1 K36 ["selectableDateRange"]
      252 SETTABLEKS                       R26 R25 K36 ["selectableDateRange"]
      254 GETUPVAL                         R27 14
      255 GETTABLEKS                       R26 R27 K47 ["Medium"]
      257 SETTABLEKS                       R26 R25 K37 ["size"]
      259 SETTABLEKS                       R7 R25 K38 ["text"]
      261 LOADK                            R27 K48 ["%*--text-input"]
      262 GETTABLEKS                       R29 R1 K20 ["testId"]
      264 NAMECALL                         R27 R27 K12 ["format"]
      266 CALL                             R27 2 1
      267 MOVE                             R26 R27
      268 SETTABLEKS                       R26 R25 K20 ["testId"]
      270 GETTABLEKS                       R26 R1 K39 ["width"]
      272 SETTABLEKS                       R26 R25 K39 ["width"]
      274 CALL                             R23 2 -1
      275 CALL                             R21 -1 1
      276 SETTABLEKS                       R21 R20 K22 ["DateInput"]
      278 GETUPVAL                         R22 3
      279 GETTABLEKS                       R21 R22 K17 ["createElement"]
      281 GETUPVAL                         R23 9
      282 GETTABLEKS                       R22 R23 K23 ["Anchor"]
      284 DUPTABLE                         R23 K50 [{"anchorRef"}]
      285 SETTABLEKS                       R5 R23 K49 ["anchorRef"]
      287 CALL                             R21 2 1
      288 SETTABLEKS                       R21 R20 K23 ["Anchor"]
      290 GETUPVAL                         R22 3
      291 GETTABLEKS                       R21 R22 K17 ["createElement"]
      293 GETUPVAL                         R23 9
      294 GETTABLEKS                       R22 R23 K51 ["Content"]
      296 DUPTABLE                         R23 K57 [{"hasArrow", "onPressedOutside", "side", "selection", "selectionGroup"}]
      297 LOADB                            R24 0
      298 SETTABLEKS                       R24 R23 K52 ["hasArrow"]
      300 SETTABLEKS                       R11 R23 K53 ["onPressedOutside"]
      302 DUPTABLE                         R24 K60 [{"position", "offset"}]
      303 GETUPVAL                         R26 15
      304 GETTABLEKS                       R25 R26 K61 ["Bottom"]
      306 SETTABLEKS                       R25 R24 K58 ["position"]
      308 GETTABLEKS                       R27 R2 K62 ["Stroke"]
      310 GETTABLEKS                       R26 R27 K63 ["Standard"]
      312 GETTABLEKS                       R28 R2 K64 ["Padding"]
      314 GETTABLEKS                       R27 R28 K65 ["Small"]
      316 ADD                              R25 R26 R27
      317 SETTABLEKS                       R25 R24 K59 ["offset"]
      319 SETTABLEKS                       R24 R23 K54 ["side"]
      321 GETTABLEKS                       R24 R1 K55 ["selection"]
      323 SETTABLEKS                       R24 R23 K55 ["selection"]
      325 GETTABLEKS                       R24 R1 K56 ["selectionGroup"]
      327 SETTABLEKS                       R24 R23 K56 ["selectionGroup"]
      329 MOVE                             R24 R3
      330 JUMPIFNOT                        R24 ; [+146]
      331 GETUPVAL                         R25 3
      332 GETTABLEKS                       R24 R25 K17 ["createElement"]
      334 GETUPVAL                         R25 16
      335 DUPTABLE                         R26 K67 [{"tag"}]
      336 LOADK                            R27 K68 ["col auto-xy padding-large stroke-default radius-medium"]
      337 SETTABLEKS                       R27 R26 K66 ["tag"]
      339 DUPTABLE                         R27 K70 [{"Calendar", "BottomBar"}]
      340 GETUPVAL                         R29 3
      341 GETTABLEKS                       R28 R29 K17 ["createElement"]
      343 GETUPVAL                         R29 17
      344 DUPTABLE                         R30 K76 [{"defaultDates", "LayoutOrder", "onSelectedDateChanged", "selectableDateRange", "showStartDateTimeCalendarInput", "showEndDateTimeCalendarInput", "showTimeDropdown", "testId"}]
      345 SETTABLEKS                       R9 R30 K3 ["defaultDates"]
      347 LOADN                            R31 1
      348 SETTABLEKS                       R31 R30 K71 ["LayoutOrder"]
      350 SETTABLEKS                       R10 R30 K72 ["onSelectedDateChanged"]
      352 GETTABLEKS                       R31 R1 K36 ["selectableDateRange"]
      354 SETTABLEKS                       R31 R30 K36 ["selectableDateRange"]
      356 GETTABLEKS                       R32 R1 K7 ["variant"]
      358 GETUPVAL                         R34 5
      359 GETTABLEKS                       R33 R34 K13 ["SingleWithTime"]
      361 JUMPIFNOTEQ                      R32 R33 ; [+2]
      363 LOADB                            R31 0 +1
      364 LOADB                            R31 1
      365 SETTABLEKS                       R31 R30 K73 ["showStartDateTimeCalendarInput"]
      367 GETTABLEKS                       R32 R1 K7 ["variant"]
      369 GETUPVAL                         R34 5
      370 GETTABLEKS                       R33 R34 K8 ["Dual"]
      372 JUMPIFEQ                         R32 R33 ; [+2]
      374 LOADB                            R31 0 +1
      375 LOADB                            R31 1
      376 SETTABLEKS                       R31 R30 K74 ["showEndDateTimeCalendarInput"]
      378 GETTABLEKS                       R32 R1 K7 ["variant"]
      380 GETUPVAL                         R34 5
      381 GETTABLEKS                       R33 R34 K13 ["SingleWithTime"]
      383 JUMPIFEQ                         R32 R33 ; [+2]
      385 LOADB                            R31 0 +1
      386 LOADB                            R31 1
      387 SETTABLEKS                       R31 R30 K75 ["showTimeDropdown"]
      389 LOADK                            R31 K77 ["--foundation-calendar"]
      390 SETTABLEKS                       R31 R30 K20 ["testId"]
      392 CALL                             R28 2 1
      393 SETTABLEKS                       R28 R27 K24 ["Calendar"]
      395 GETUPVAL                         R29 3
      396 GETTABLEKS                       R28 R29 K17 ["createElement"]
      398 GETUPVAL                         R29 16
      399 DUPTABLE                         R30 K78 [{"LayoutOrder", "tag"}]
      400 LOADN                            R31 2
      401 SETTABLEKS                       R31 R30 K71 ["LayoutOrder"]
      403 LOADK                            R31 K79 ["row flex-fill gap-small size-full-0 auto-y padding-top-large"]
      404 SETTABLEKS                       R31 R30 K66 ["tag"]
      406 DUPTABLE                         R31 K82 [{"ApplyButton", "CancelButton"}]
      407 GETUPVAL                         R33 3
      408 GETTABLEKS                       R32 R33 K17 ["createElement"]
      410 GETUPVAL                         R33 18
      411 DUPTABLE                         R34 K83 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      412 MOVE                             R35 R16
      413 CALL                             R35 0 1
      414 SETTABLEKS                       R35 R34 K29 ["isDisabled"]
      416 SETTABLEKS                       R15 R34 K42 ["onActivated"]
      418 GETUPVAL                         R35 13
      419 LOADK                            R37 K84 ["CommonUI.Controls.Action.Apply"]
      420 NAMECALL                         R35 R35 K46 ["FormatByKey"]
      422 CALL                             R35 2 1
      423 SETTABLEKS                       R35 R34 K38 ["text"]
      425 GETUPVAL                         R36 19
      426 GETTABLEKS                       R35 R36 K85 ["Emphasis"]
      428 SETTABLEKS                       R35 R34 K7 ["variant"]
      430 LOADK                            R36 K86 ["%*--apply-button"]
      431 GETTABLEKS                       R38 R1 K20 ["testId"]
      433 NAMECALL                         R36 R36 K12 ["format"]
      435 CALL                             R36 2 1
      436 MOVE                             R35 R36
      437 SETTABLEKS                       R35 R34 K20 ["testId"]
      439 CALL                             R32 2 1
      440 SETTABLEKS                       R32 R31 K80 ["ApplyButton"]
      442 GETUPVAL                         R33 3
      443 GETTABLEKS                       R32 R33 K17 ["createElement"]
      445 GETUPVAL                         R33 18
      446 DUPTABLE                         R34 K87 [{"onActivated", "text", "variant", "testId"}]
      447 SETTABLEKS                       R11 R34 K42 ["onActivated"]
      449 GETUPVAL                         R35 13
      450 LOADK                            R37 K88 ["CommonUI.Controls.Action.Cancel"]
      451 NAMECALL                         R35 R35 K46 ["FormatByKey"]
      453 CALL                             R35 2 1
      454 SETTABLEKS                       R35 R34 K38 ["text"]
      456 GETUPVAL                         R36 19
      457 GETTABLEKS                       R35 R36 K63 ["Standard"]
      459 SETTABLEKS                       R35 R34 K7 ["variant"]
      461 LOADK                            R36 K89 ["%*--cancel-button"]
      462 GETTABLEKS                       R38 R1 K20 ["testId"]
      464 NAMECALL                         R36 R36 K12 ["format"]
      466 CALL                             R36 2 1
      467 MOVE                             R35 R36
      468 SETTABLEKS                       R35 R34 K20 ["testId"]
      470 CALL                             R32 2 1
      471 SETTABLEKS                       R32 R31 K81 ["CancelButton"]
      473 CALL                             R28 3 1
      474 SETTABLEKS                       R28 R27 K69 ["BottomBar"]
      476 CALL                             R24 3 1
      477 CALL                             R21 3 1
      478 SETTABLEKS                       R21 R20 K24 ["Calendar"]
      480 CALL                             R17 3 -1
      481 RETURN                           R17 -1

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
      147 GETTABLEKS                       R22 R9 K35 ["FoundationDateTimePickerDefaultDateFix"]
      149 GETIMPORT                        R23 K6 [require]
      151 GETTABLEKS                       R25 R0 K14 ["Enums"]
      153 GETTABLEKS                       R24 R25 K36 ["DateTimePickerVariant"]
      155 CALL                             R23 1 1
      156 DUPTABLE                         R24 K40 [{"defaultDates", "variant", "testId"}]
      157 JUMPIFNOT                        R22 ; [+2]
      158 LOADNIL                          R25
      159 JUMP                             ; [+7]
      160 NEWTABLE                         R25 0 1
      162 GETIMPORT                        R26 K43 [DateTime.now]
      164 CALL                             R26 0 -1
      165 SETLIST                          R25 R26 -1 [1]
      167 SETTABLEKS                       R25 R24 K37 ["defaultDates"]
      169 GETTABLEKS                       R25 R23 K44 ["Single"]
      171 SETTABLEKS                       R25 R24 K38 ["variant"]
      173 LOADK                            R25 K45 ["--foundation-date-time-picker"]
      174 SETTABLEKS                       R25 R24 K39 ["testId"]
      176 DUPCLOSURE                       R25 K46 [PROTO_7]
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R24
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R8
      197 GETTABLEKS                       R26 R3 K47 ["memo"]
      199 MOVE                             R27 R25
      200 CALL                             R26 1 -1
      201 RETURN                           R26 -1
