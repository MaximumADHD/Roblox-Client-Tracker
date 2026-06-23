PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["defaultDates"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ViewportDisplaySize"]
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADB                            R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["variant"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["Single"]
       10 JUMPIFEQ                         R0 R1 ; [+9]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K0 ["variant"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["SingleWithTime"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+8]
       20 GETUPVAL                         R2 0
       21 GETTABLEN                        R1 R2 1
       22 JUMPIFEQKNIL                     R1 ; [+2]
       24 LOADB                            R0 0 +1
       25 LOADB                            R0 1
       26 RETURN                           R0 1
       27 GETUPVAL                         R0 1
       28 GETTABLEKS                       R0 R0 K0 ["variant"]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K3 ["Dual"]
       33 JUMPIFNOTEQ                      R0 R1 ; [+24]
       35 LOADB                            R0 1
       36 GETUPVAL                         R2 0
       37 GETTABLEN                        R1 R2 1
       38 JUMPIFEQKNIL                     R1 ; [+18]
       40 LOADB                            R0 1
       41 GETUPVAL                         R2 0
       42 GETTABLEN                        R1 R2 2
       43 JUMPIFEQKNIL                     R1 ; [+13]
       45 GETUPVAL                         R2 0
       46 GETTABLEN                        R1 R2 1
       47 GETTABLEKS                       R1 R1 K4 ["UnixTimestamp"]
       49 GETUPVAL                         R3 0
       50 GETTABLEN                        R2 R3 2
       51 GETTABLEKS                       R2 R2 K4 ["UnixTimestamp"]
       53 JUMPIFLT                         R2 R1 ; [+2]
       55 LOADB                            R0 0 +1
       56 LOADB                            R0 1
       57 RETURN                           R0 1
       58 LOADB                            R0 0
       59 RETURN                           R0 1

PROTO_7:
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
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R8 0 1
       23 GETTABLEKS                       R9 R1 K3 ["defaultDates"]
       25 SETLIST                          R8 R9 1 [1]
       27 CALL                             R6 2 1
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R7 R7 K0 ["useState"]
       31 JUMPIFNOT                        R6 ; [+42]
       32 GETTABLEKS                       R9 R1 K4 ["variant"]
       34 GETUPVAL                         R10 4
       35 GETTABLEKS                       R10 R10 K5 ["Dual"]
       37 JUMPIFNOTEQ                      R9 R10 ; [+21]
       39 LOADK                            R9 K6 ["%* - %*"]
       40 GETUPVAL                         R11 5
       41 GETTABLEKS                       R11 R11 K7 ["formatLocalTime"]
       43 GETTABLEN                        R12 R6 1
       44 CALL                             R11 1 1
       45 GETTABLEN                        R13 R6 2
       46 JUMPIFNOT                        R13 ; [+6]
       47 GETUPVAL                         R12 5
       48 GETTABLEKS                       R12 R12 K7 ["formatLocalTime"]
       50 GETTABLEN                        R13 R6 2
       51 CALL                             R12 1 1
       52 JUMP                             ; [+1]
       53 LOADK                            R12 K8 [""]
       54 NAMECALL                         R9 R9 K9 ["format"]
       56 CALL                             R9 3 1
       57 MOVE                             R8 R9
       58 JUMP                             ; [+16]
       59 GETUPVAL                         R8 5
       60 GETTABLEKS                       R8 R8 K7 ["formatLocalTime"]
       62 GETTABLEN                        R9 R6 1
       63 GETTABLEKS                       R11 R1 K4 ["variant"]
       65 GETUPVAL                         R12 4
       66 GETTABLEKS                       R12 R12 K10 ["SingleWithTime"]
       68 JUMPIFEQ                         R11 R12 ; [+2]
       70 LOADB                            R10 0 +1
       71 LOADB                            R10 1
       72 CALL                             R8 2 1
       73 JUMP                             ; [+1]
       74 LOADK                            R8 K8 [""]
       75 CALL                             R7 1 2
       76 GETUPVAL                         R9 3
       77 GETTABLEKS                       R9 R9 K0 ["useState"]
       79 MOVE                             R10 R6
       80 CALL                             R9 1 2
       81 GETUPVAL                         R11 3
       82 GETTABLEKS                       R11 R11 K11 ["useCallback"]
       84 NEWCLOSURE                       R12 P1
       85 CAPTURE                          VAL R4
       86 NEWTABLE                         R13 0 0
       88 CALL                             R11 2 1
       89 GETUPVAL                         R12 3
       90 GETTABLEKS                       R12 R12 K11 ["useCallback"]
       92 NEWCLOSURE                       R13 P2
       93 CAPTURE                          VAL R4
       94 NEWTABLE                         R14 0 0
       96 CALL                             R12 2 1
       97 GETUPVAL                         R13 3
       98 GETTABLEKS                       R13 R13 K11 ["useCallback"]
      100 NEWCLOSURE                       R14 P3
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          VAL R12
      103 NEWTABLE                         R15 0 2
      105 MOVE                             R16 R12
      106 GETUPVAL                         R17 6
      107 GETTABLEKS                       R17 R17 K12 ["ViewportDisplaySize"]
      109 SETLIST                          R15 R16 2 [1]
      111 CALL                             R13 2 1
      112 GETUPVAL                         R14 3
      113 GETTABLEKS                       R14 R14 K11 ["useCallback"]
      115 NEWCLOSURE                       R15 P4
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R1
      118 CAPTURE                          UPVAL U4
      119 CAPTURE                          UPVAL U5
      120 NEWTABLE                         R16 0 1
      122 GETTABLEKS                       R17 R1 K13 ["onChanged"]
      124 SETLIST                          R16 R17 1 [1]
      126 CALL                             R14 2 1
      127 GETUPVAL                         R15 3
      128 GETTABLEKS                       R15 R15 K11 ["useCallback"]
      130 NEWCLOSURE                       R16 P5
      131 CAPTURE                          VAL R1
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          UPVAL U5
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R11
      137 NEWTABLE                         R17 0 2
      139 MOVE                             R18 R9
      140 MOVE                             R19 R11
      141 SETLIST                          R17 R18 2 [1]
      143 CALL                             R15 2 1
      144 NEWCLOSURE                       R16 P6
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R1
      147 CAPTURE                          UPVAL U4
      148 GETUPVAL                         R17 3
      149 GETTABLEKS                       R17 R17 K14 ["createElement"]
      151 GETUPVAL                         R18 7
      152 GETTABLEKS                       R18 R18 K15 ["Root"]
      154 DUPTABLE                         R19 K18 [{"isOpen", "testId"}]
      155 SETTABLEKS                       R3 R19 K16 ["isOpen"]
      157 GETTABLEKS                       R20 R1 K17 ["testId"]
      159 SETTABLEKS                       R20 R19 K17 ["testId"]
      161 DUPTABLE                         R20 K22 [{"DateInput", "Anchor", "Calendar"}]
      162 GETUPVAL                         R21 3
      163 GETTABLEKS                       R21 R21 K14 ["createElement"]
      165 GETUPVAL                         R22 8
      166 GETUPVAL                         R23 9
      167 MOVE                             R24 R1
      168 DUPTABLE                         R25 K37 [{"hasError", "hint", "iconTrailing", "isDisabled", "isRequired", "key", "label", "onChanged", "onFocusGained", "placeholder", "ref", "selectableDateRange", "size", "text", "testId", "width"}]
      169 GETTABLEKS                       R26 R1 K23 ["hasError"]
      171 SETTABLEKS                       R26 R25 K23 ["hasError"]
      173 GETTABLEKS                       R26 R1 K24 ["hint"]
      175 SETTABLEKS                       R26 R25 K24 ["hint"]
      177 DUPTABLE                         R26 K40 [{"name", "onActivated"}]
      178 GETUPVAL                         R27 10
      179 GETTABLEKS                       R27 R27 K21 ["Calendar"]
      181 SETTABLEKS                       R27 R26 K38 ["name"]
      183 SETTABLEKS                       R12 R26 K39 ["onActivated"]
      185 SETTABLEKS                       R26 R25 K25 ["iconTrailing"]
      187 GETTABLEKS                       R26 R1 K26 ["isDisabled"]
      189 SETTABLEKS                       R26 R25 K26 ["isDisabled"]
      191 GETTABLEKS                       R26 R1 K27 ["isRequired"]
      193 SETTABLEKS                       R26 R25 K27 ["isRequired"]
      195 LOADK                            R26 K41 ["date-input"]
      196 SETTABLEKS                       R26 R25 K28 ["key"]
      198 GETTABLEKS                       R26 R1 K29 ["label"]
      200 SETTABLEKS                       R26 R25 K29 ["label"]
      202 SETTABLEKS                       R14 R25 K13 ["onChanged"]
      204 SETTABLEKS                       R13 R25 K30 ["onFocusGained"]
      206 GETUPVAL                         R26 11
      207 LOADK                            R28 K42 ["CommonUI.Controls.Label.SelectDate"]
      208 NAMECALL                         R26 R26 K43 ["FormatByKey"]
      210 CALL                             R26 2 1
      211 SETTABLEKS                       R26 R25 K31 ["placeholder"]
      213 SETTABLEKS                       R5 R25 K32 ["ref"]
      215 GETTABLEKS                       R26 R1 K33 ["selectableDateRange"]
      217 SETTABLEKS                       R26 R25 K33 ["selectableDateRange"]
      219 GETUPVAL                         R26 12
      220 GETTABLEKS                       R26 R26 K44 ["Medium"]
      222 SETTABLEKS                       R26 R25 K34 ["size"]
      224 SETTABLEKS                       R7 R25 K35 ["text"]
      226 LOADK                            R27 K45 ["%*--text-input"]
      227 GETTABLEKS                       R29 R1 K17 ["testId"]
      229 NAMECALL                         R27 R27 K9 ["format"]
      231 CALL                             R27 2 1
      232 MOVE                             R26 R27
      233 SETTABLEKS                       R26 R25 K17 ["testId"]
      235 GETTABLEKS                       R26 R1 K36 ["width"]
      237 SETTABLEKS                       R26 R25 K36 ["width"]
      239 CALL                             R23 2 -1
      240 CALL                             R21 -1 1
      241 SETTABLEKS                       R21 R20 K19 ["DateInput"]
      243 GETUPVAL                         R21 3
      244 GETTABLEKS                       R21 R21 K14 ["createElement"]
      246 GETUPVAL                         R22 7
      247 GETTABLEKS                       R22 R22 K20 ["Anchor"]
      249 DUPTABLE                         R23 K47 [{"anchorRef"}]
      250 SETTABLEKS                       R5 R23 K46 ["anchorRef"]
      252 CALL                             R21 2 1
      253 SETTABLEKS                       R21 R20 K20 ["Anchor"]
      255 GETUPVAL                         R21 3
      256 GETTABLEKS                       R21 R21 K14 ["createElement"]
      258 GETUPVAL                         R22 7
      259 GETTABLEKS                       R22 R22 K48 ["Content"]
      261 DUPTABLE                         R23 K54 [{"hasArrow", "onPressedOutside", "side", "selection", "selectionGroup"}]
      262 LOADB                            R24 0
      263 SETTABLEKS                       R24 R23 K49 ["hasArrow"]
      265 SETTABLEKS                       R11 R23 K50 ["onPressedOutside"]
      267 DUPTABLE                         R24 K57 [{"position", "offset"}]
      268 GETUPVAL                         R25 13
      269 GETTABLEKS                       R25 R25 K58 ["Bottom"]
      271 SETTABLEKS                       R25 R24 K55 ["position"]
      273 GETTABLEKS                       R26 R2 K59 ["Stroke"]
      275 GETTABLEKS                       R26 R26 K60 ["Standard"]
      277 GETTABLEKS                       R27 R2 K61 ["Padding"]
      279 GETTABLEKS                       R27 R27 K62 ["Small"]
      281 ADD                              R25 R26 R27
      282 SETTABLEKS                       R25 R24 K56 ["offset"]
      284 SETTABLEKS                       R24 R23 K51 ["side"]
      286 GETTABLEKS                       R24 R1 K52 ["selection"]
      288 SETTABLEKS                       R24 R23 K52 ["selection"]
      290 GETTABLEKS                       R24 R1 K53 ["selectionGroup"]
      292 SETTABLEKS                       R24 R23 K53 ["selectionGroup"]
      294 MOVE                             R24 R3
      295 JUMPIFNOT                        R24 ; [+194]
      296 GETUPVAL                         R24 3
      297 GETTABLEKS                       R24 R24 K14 ["createElement"]
      299 GETUPVAL                         R25 14
      300 DUPTABLE                         R26 K64 [{"tag"}]
      301 LOADK                            R27 K65 ["col auto-xy padding-large stroke-default radius-medium"]
      302 SETTABLEKS                       R27 R26 K63 ["tag"]
      304 DUPTABLE                         R27 K67 [{"Calendar", "BottomBar"}]
      305 GETUPVAL                         R28 3
      306 GETTABLEKS                       R28 R28 K14 ["createElement"]
      308 GETUPVAL                         R29 15
      309 DUPTABLE                         R30 K73 [{"defaultDates", "LayoutOrder", "onSelectedDateChanged", "selectableDateRange", "showStartDateTimeCalendarInput", "showEndDateTimeCalendarInput", "showTimeDropdown", "testId"}]
      310 SETTABLEKS                       R9 R30 K3 ["defaultDates"]
      312 LOADN                            R31 1
      313 SETTABLEKS                       R31 R30 K68 ["LayoutOrder"]
      315 SETTABLEKS                       R10 R30 K69 ["onSelectedDateChanged"]
      317 GETTABLEKS                       R31 R1 K33 ["selectableDateRange"]
      319 SETTABLEKS                       R31 R30 K33 ["selectableDateRange"]
      321 GETTABLEKS                       R32 R1 K4 ["variant"]
      323 GETUPVAL                         R33 4
      324 GETTABLEKS                       R33 R33 K10 ["SingleWithTime"]
      326 JUMPIFNOTEQ                      R32 R33 ; [+2]
      328 LOADB                            R31 0 +1
      329 LOADB                            R31 1
      330 SETTABLEKS                       R31 R30 K70 ["showStartDateTimeCalendarInput"]
      332 GETTABLEKS                       R32 R1 K4 ["variant"]
      334 GETUPVAL                         R33 4
      335 GETTABLEKS                       R33 R33 K5 ["Dual"]
      337 JUMPIFEQ                         R32 R33 ; [+2]
      339 LOADB                            R31 0 +1
      340 LOADB                            R31 1
      341 SETTABLEKS                       R31 R30 K71 ["showEndDateTimeCalendarInput"]
      343 GETTABLEKS                       R32 R1 K4 ["variant"]
      345 GETUPVAL                         R33 4
      346 GETTABLEKS                       R33 R33 K10 ["SingleWithTime"]
      348 JUMPIFEQ                         R32 R33 ; [+2]
      350 LOADB                            R31 0 +1
      351 LOADB                            R31 1
      352 SETTABLEKS                       R31 R30 K72 ["showTimeDropdown"]
      354 LOADK                            R31 K74 ["--foundation-calendar"]
      355 SETTABLEKS                       R31 R30 K17 ["testId"]
      357 CALL                             R28 2 1
      358 SETTABLEKS                       R28 R27 K21 ["Calendar"]
      360 GETUPVAL                         R28 3
      361 GETTABLEKS                       R28 R28 K14 ["createElement"]
      363 GETUPVAL                         R29 14
      364 DUPTABLE                         R30 K75 [{"LayoutOrder", "tag"}]
      365 LOADN                            R31 2
      366 SETTABLEKS                       R31 R30 K68 ["LayoutOrder"]
      368 LOADK                            R31 K76 ["row flex-fill gap-small size-full-0 auto-y padding-top-large"]
      369 SETTABLEKS                       R31 R30 K63 ["tag"]
      371 DUPTABLE                         R31 K79 [{"ApplyButton", "CancelButton"}]
      372 GETUPVAL                         R32 3
      373 GETTABLEKS                       R32 R32 K14 ["createElement"]
      375 GETUPVAL                         R33 16
      376 DUPTABLE                         R34 K80 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      377 JUMPIF                           R9 ; [+2]
      378 LOADB                            R35 0
      379 JUMP                             ; [+47]
      380 GETTABLEKS                       R36 R1 K4 ["variant"]
      382 GETUPVAL                         R37 4
      383 GETTABLEKS                       R37 R37 K81 ["Single"]
      385 JUMPIFEQ                         R36 R37 ; [+8]
      387 GETTABLEKS                       R36 R1 K4 ["variant"]
      389 GETUPVAL                         R37 4
      390 GETTABLEKS                       R37 R37 K10 ["SingleWithTime"]
      392 JUMPIFNOTEQ                      R36 R37 ; [+7]
      394 GETTABLEN                        R36 R9 1
      395 JUMPIFEQKNIL                     R36 ; [+2]
      397 LOADB                            R35 0 +1
      398 LOADB                            R35 1
      399 JUMP                             ; [+27]
      400 GETTABLEKS                       R36 R1 K4 ["variant"]
      402 GETUPVAL                         R37 4
      403 GETTABLEKS                       R37 R37 K5 ["Dual"]
      405 JUMPIFNOTEQ                      R36 R37 ; [+20]
      407 LOADB                            R35 1
      408 GETTABLEN                        R36 R9 1
      409 JUMPIFEQKNIL                     R36 ; [+17]
      411 LOADB                            R35 1
      412 GETTABLEN                        R36 R9 2
      413 JUMPIFEQKNIL                     R36 ; [+13]
      415 GETTABLEN                        R36 R9 1
      416 GETTABLEKS                       R36 R36 K82 ["UnixTimestamp"]
      418 GETTABLEN                        R37 R9 2
      419 GETTABLEKS                       R37 R37 K82 ["UnixTimestamp"]
      421 JUMPIFLT                         R37 R36 ; [+2]
      423 LOADB                            R35 0 +1
      424 LOADB                            R35 1
      425 JUMP                             ; [+1]
      426 LOADB                            R35 0
      427 SETTABLEKS                       R35 R34 K26 ["isDisabled"]
      429 SETTABLEKS                       R15 R34 K39 ["onActivated"]
      431 GETUPVAL                         R35 11
      432 LOADK                            R37 K83 ["CommonUI.Controls.Action.Apply"]
      433 NAMECALL                         R35 R35 K43 ["FormatByKey"]
      435 CALL                             R35 2 1
      436 SETTABLEKS                       R35 R34 K35 ["text"]
      438 GETUPVAL                         R35 17
      439 GETTABLEKS                       R35 R35 K84 ["Emphasis"]
      441 SETTABLEKS                       R35 R34 K4 ["variant"]
      443 LOADK                            R36 K85 ["%*--apply-button"]
      444 GETTABLEKS                       R38 R1 K17 ["testId"]
      446 NAMECALL                         R36 R36 K9 ["format"]
      448 CALL                             R36 2 1
      449 MOVE                             R35 R36
      450 SETTABLEKS                       R35 R34 K17 ["testId"]
      452 CALL                             R32 2 1
      453 SETTABLEKS                       R32 R31 K77 ["ApplyButton"]
      455 GETUPVAL                         R32 3
      456 GETTABLEKS                       R32 R32 K14 ["createElement"]
      458 GETUPVAL                         R33 16
      459 DUPTABLE                         R34 K86 [{"onActivated", "text", "variant", "testId"}]
      460 SETTABLEKS                       R11 R34 K39 ["onActivated"]
      462 GETUPVAL                         R35 11
      463 LOADK                            R37 K87 ["CommonUI.Controls.Action.Cancel"]
      464 NAMECALL                         R35 R35 K43 ["FormatByKey"]
      466 CALL                             R35 2 1
      467 SETTABLEKS                       R35 R34 K35 ["text"]
      469 GETUPVAL                         R35 17
      470 GETTABLEKS                       R35 R35 K60 ["Standard"]
      472 SETTABLEKS                       R35 R34 K4 ["variant"]
      474 LOADK                            R36 K88 ["%*--cancel-button"]
      475 GETTABLEKS                       R38 R1 K17 ["testId"]
      477 NAMECALL                         R36 R36 K9 ["format"]
      479 CALL                             R36 2 1
      480 MOVE                             R35 R36
      481 SETTABLEKS                       R35 R34 K17 ["testId"]
      483 CALL                             R32 2 1
      484 SETTABLEKS                       R32 R31 K78 ["CancelButton"]
      486 CALL                             R28 3 1
      487 SETTABLEKS                       R28 R27 K66 ["BottomBar"]
      489 CALL                             R24 3 1
      490 CALL                             R21 3 1
      491 SETTABLEKS                       R21 R20 K21 ["Calendar"]
      493 CALL                             R17 3 -1
      494 RETURN                           R17 -1

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
       55 GETTABLEKS                       R10 R0 K16 ["Utility"]
       57 GETTABLEKS                       R10 R10 K17 ["Wrappers"]
       59 GETTABLEKS                       R10 R10 K18 ["Services"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R9 R9 K19 ["GuiService"]
       64 GETIMPORT                        R10 K6 [require]
       66 GETTABLEKS                       R11 R0 K14 ["Enums"]
       68 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K6 [require]
       73 GETTABLEKS                       R12 R0 K12 ["Components"]
       75 GETTABLEKS                       R12 R12 K21 ["Popover"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R13 R0 K14 ["Enums"]
       82 GETTABLEKS                       R13 R13 K22 ["PopoverSide"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R14 R0 K12 ["Components"]
       89 GETTABLEKS                       R14 R14 K23 ["TextInput"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETTABLEKS                       R15 R0 K16 ["Utility"]
       96 GETTABLEKS                       R15 R15 K24 ["Localization"]
       98 GETTABLEKS                       R15 R15 K25 ["Translator"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K6 [require]
      103 GETTABLEKS                       R16 R0 K12 ["Components"]
      105 GETTABLEKS                       R16 R16 K26 ["Types"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K6 [require]
      110 GETTABLEKS                       R17 R0 K12 ["Components"]
      112 GETTABLEKS                       R17 R17 K27 ["View"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K6 [require]
      117 GETTABLEKS                       R18 R0 K28 ["Providers"]
      119 GETTABLEKS                       R18 R18 K29 ["Style"]
      121 GETTABLEKS                       R18 R18 K30 ["useTokens"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K6 [require]
      126 GETTABLEKS                       R19 R0 K16 ["Utility"]
      128 GETTABLEKS                       R19 R19 K31 ["withCommonProps"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K6 [require]
      133 GETTABLEKS                       R20 R0 K16 ["Utility"]
      135 GETTABLEKS                       R20 R20 K32 ["withDefaults"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K6 [require]
      140 GETTABLEKS                       R21 R0 K14 ["Enums"]
      142 GETTABLEKS                       R21 R21 K33 ["DateTimePickerVariant"]
      144 CALL                             R20 1 1
      145 DUPTABLE                         R21 K36 [{"variant", "testId"}]
      146 GETTABLEKS                       R22 R20 K37 ["Single"]
      148 SETTABLEKS                       R22 R21 K34 ["variant"]
      150 LOADK                            R22 K38 ["--foundation-date-time-picker"]
      151 SETTABLEKS                       R22 R21 K35 ["testId"]
      153 DUPCLOSURE                       R22 K39 [PROTO_7]
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R8
      172 GETTABLEKS                       R23 R3 K40 ["memo"]
      174 MOVE                             R24 R22
      175 CALL                             R23 1 -1
      176 RETURN                           R23 -1
