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
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K6 ["FoundationDateTimePickerDefaultInputText"]
       41 JUMPIFNOT                        R8 ; [+53]
       42 GETTABLEKS                       R8 R1 K2 ["defaultDates"]
       44 JUMPIFNOT                        R8 ; [+50]
       45 GETTABLEKS                       R8 R1 K7 ["variant"]
       47 GETUPVAL                         R9 5
       48 GETTABLEKS                       R9 R9 K8 ["Dual"]
       50 JUMPIFNOTEQ                      R8 R9 ; [+27]
       52 LOADK                            R8 K9 ["%* - %*"]
       53 GETUPVAL                         R10 6
       54 GETTABLEKS                       R10 R10 K10 ["formatLocalTime"]
       56 GETTABLEKS                       R12 R1 K2 ["defaultDates"]
       58 GETTABLEN                        R11 R12 1
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R13 R1 K2 ["defaultDates"]
       62 GETTABLEN                        R12 R13 2
       63 JUMPIFNOT                        R12 ; [+8]
       64 GETUPVAL                         R11 6
       65 GETTABLEKS                       R11 R11 K10 ["formatLocalTime"]
       67 GETTABLEKS                       R13 R1 K2 ["defaultDates"]
       69 GETTABLEN                        R12 R13 2
       70 CALL                             R11 1 1
       71 JUMP                             ; [+1]
       72 LOADK                            R11 K11 [""]
       73 NAMECALL                         R8 R8 K12 ["format"]
       75 CALL                             R8 3 1
       76 MOVE                             R7 R8
       77 JUMP                             ; [+18]
       78 GETUPVAL                         R7 6
       79 GETTABLEKS                       R7 R7 K10 ["formatLocalTime"]
       81 GETTABLEKS                       R9 R1 K2 ["defaultDates"]
       83 GETTABLEN                        R8 R9 1
       84 GETTABLEKS                       R10 R1 K7 ["variant"]
       86 GETUPVAL                         R11 5
       87 GETTABLEKS                       R11 R11 K13 ["SingleWithTime"]
       89 JUMPIFEQ                         R10 R11 ; [+2]
       91 LOADB                            R9 0 +1
       92 LOADB                            R9 1
       93 CALL                             R7 2 1
       94 JUMP                             ; [+1]
       95 LOADK                            R7 K11 [""]
       96 CALL                             R6 1 2
       97 GETUPVAL                         R8 3
       98 GETTABLEKS                       R8 R8 K0 ["useState"]
      100 GETTABLEKS                       R9 R1 K2 ["defaultDates"]
      102 CALL                             R8 1 2
      103 GETUPVAL                         R10 3
      104 GETTABLEKS                       R10 R10 K14 ["useCallback"]
      106 NEWCLOSURE                       R11 P0
      107 CAPTURE                          VAL R4
      108 NEWTABLE                         R12 0 0
      110 CALL                             R10 2 1
      111 GETUPVAL                         R11 3
      112 GETTABLEKS                       R11 R11 K14 ["useCallback"]
      114 NEWCLOSURE                       R12 P1
      115 CAPTURE                          VAL R4
      116 NEWTABLE                         R13 0 0
      118 CALL                             R11 2 1
      119 GETUPVAL                         R12 3
      120 GETTABLEKS                       R12 R12 K14 ["useCallback"]
      122 NEWCLOSURE                       R13 P2
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R1
      125 CAPTURE                          UPVAL U5
      126 CAPTURE                          UPVAL U6
      127 NEWTABLE                         R14 0 1
      129 GETTABLEKS                       R15 R1 K15 ["onChanged"]
      131 SETLIST                          R14 R15 1 [1]
      133 CALL                             R12 2 1
      134 GETUPVAL                         R13 3
      135 GETTABLEKS                       R13 R13 K14 ["useCallback"]
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
      155 GETUPVAL                         R15 3
      156 GETTABLEKS                       R15 R15 K16 ["createElement"]
      158 GETUPVAL                         R16 7
      159 GETTABLEKS                       R16 R16 K17 ["Root"]
      161 DUPTABLE                         R17 K20 [{"isOpen", "testId"}]
      162 SETTABLEKS                       R3 R17 K18 ["isOpen"]
      164 GETTABLEKS                       R18 R1 K19 ["testId"]
      166 SETTABLEKS                       R18 R17 K19 ["testId"]
      168 DUPTABLE                         R18 K24 [{"DateInput", "Anchor", "Calendar"}]
      169 GETUPVAL                         R19 3
      170 GETTABLEKS                       R19 R19 K16 ["createElement"]
      172 GETUPVAL                         R20 8
      173 GETUPVAL                         R21 9
      174 MOVE                             R22 R1
      175 DUPTABLE                         R23 K40 [{["hasError"], ["hint"], ["iconTrailing"], ["isDisabled"], ["isRequired"], ["key"] = "date-input", ["label"], ["onChanged"], ["onFocusGained"], ["placeholder"], ["ref"], ["selectableDateRange"], ["size"], ["text"], ["testId"], ["width"]}]
      176 GETTABLEKS                       R24 R1 K25 ["hasError"]
      178 SETTABLEKS                       R24 R23 K25 ["hasError"]
      180 GETTABLEKS                       R24 R1 K26 ["hint"]
      182 SETTABLEKS                       R24 R23 K26 ["hint"]
      184 DUPTABLE                         R24 K43 [{"name", "onActivated"}]
      185 GETUPVAL                         R25 10
      186 GETTABLEKS                       R25 R25 K23 ["Calendar"]
      188 SETTABLEKS                       R25 R24 K41 ["name"]
      190 SETTABLEKS                       R11 R24 K42 ["onActivated"]
      192 SETTABLEKS                       R24 R23 K27 ["iconTrailing"]
      194 GETTABLEKS                       R24 R1 K28 ["isDisabled"]
      196 SETTABLEKS                       R24 R23 K28 ["isDisabled"]
      198 GETTABLEKS                       R24 R1 K29 ["isRequired"]
      200 SETTABLEKS                       R24 R23 K29 ["isRequired"]
      202 GETTABLEKS                       R24 R1 K32 ["label"]
      204 SETTABLEKS                       R24 R23 K32 ["label"]
      206 SETTABLEKS                       R12 R23 K15 ["onChanged"]
      208 SETTABLEKS                       R11 R23 K33 ["onFocusGained"]
      210 GETUPVAL                         R24 11
      211 LOADK                            R26 K44 ["CommonUI.Controls.Label.SelectDate"]
      212 NAMECALL                         R24 R24 K45 ["FormatByKey"]
      214 CALL                             R24 2 1
      215 SETTABLEKS                       R24 R23 K34 ["placeholder"]
      217 SETTABLEKS                       R5 R23 K35 ["ref"]
      219 GETTABLEKS                       R24 R1 K36 ["selectableDateRange"]
      221 SETTABLEKS                       R24 R23 K36 ["selectableDateRange"]
      223 GETUPVAL                         R24 12
      224 GETTABLEKS                       R24 R24 K46 ["Medium"]
      226 SETTABLEKS                       R24 R23 K37 ["size"]
      228 SETTABLEKS                       R6 R23 K38 ["text"]
      230 LOADK                            R25 K47 ["%*--text-input"]
      231 GETTABLEKS                       R27 R1 K19 ["testId"]
      233 NAMECALL                         R25 R25 K12 ["format"]
      235 CALL                             R25 2 1
      236 MOVE                             R24 R25
      237 SETTABLEKS                       R24 R23 K19 ["testId"]
      239 GETTABLEKS                       R24 R1 K39 ["width"]
      241 SETTABLEKS                       R24 R23 K39 ["width"]
      243 CALL                             R21 2 -1
      244 CALL                             R19 -1 1
      245 SETTABLEKS                       R19 R18 K21 ["DateInput"]
      247 GETUPVAL                         R19 3
      248 GETTABLEKS                       R19 R19 K16 ["createElement"]
      250 GETUPVAL                         R20 7
      251 GETTABLEKS                       R20 R20 K22 ["Anchor"]
      253 DUPTABLE                         R21 K49 [{"anchorRef"}]
      254 SETTABLEKS                       R5 R21 K48 ["anchorRef"]
      256 CALL                             R19 2 1
      257 SETTABLEKS                       R19 R18 K22 ["Anchor"]
      259 GETUPVAL                         R19 3
      260 GETTABLEKS                       R19 R19 K16 ["createElement"]
      262 GETUPVAL                         R20 7
      263 GETTABLEKS                       R20 R20 K50 ["Content"]
      265 DUPTABLE                         R21 K57 [{["hasArrow"] = False, ["onPressedOutside"], ["side"], ["selection"], ["selectionGroup"]}]
      266 SETTABLEKS                       R10 R21 K53 ["onPressedOutside"]
      268 DUPTABLE                         R22 K60 [{"position", "offset"}]
      269 GETUPVAL                         R23 13
      270 GETTABLEKS                       R23 R23 K61 ["Bottom"]
      272 SETTABLEKS                       R23 R22 K58 ["position"]
      274 GETTABLEKS                       R24 R2 K62 ["Stroke"]
      276 GETTABLEKS                       R24 R24 K63 ["Standard"]
      278 GETTABLEKS                       R25 R2 K64 ["Padding"]
      280 GETTABLEKS                       R25 R25 K65 ["Small"]
      282 ADD                              R23 R24 R25
      283 SETTABLEKS                       R23 R22 K59 ["offset"]
      285 SETTABLEKS                       R22 R21 K54 ["side"]
      287 GETTABLEKS                       R22 R1 K55 ["selection"]
      289 SETTABLEKS                       R22 R21 K55 ["selection"]
      291 GETTABLEKS                       R22 R1 K56 ["selectionGroup"]
      293 SETTABLEKS                       R22 R21 K56 ["selectionGroup"]
      295 MOVE                             R22 R3
      296 JUMPIFNOT                        R22 ; [+176]
      297 GETUPVAL                         R22 3
      298 GETTABLEKS                       R22 R22 K16 ["createElement"]
      300 GETUPVAL                         R23 14
      301 DUPTABLE                         R24 K68 [{["tag"] = "padding-large col stroke-default radius-medium auto-xy"}]
      302 DUPTABLE                         R25 K70 [{"Calendar", "BottomBar"}]
      303 GETUPVAL                         R26 3
      304 GETTABLEKS                       R26 R26 K16 ["createElement"]
      306 GETUPVAL                         R27 15
      307 DUPTABLE                         R28 K78 [{["defaultDates"], ["LayoutOrder"] = 1, ["onSelectedDateChanged"], ["selectableDateRange"], ["showStartDateTimeCalendarInput"], ["showEndDateTimeCalendarInput"], ["showTimeDropdown"], ["testId"] = "--foundation-calendar"}]
      308 SETTABLEKS                       R8 R28 K2 ["defaultDates"]
      310 SETTABLEKS                       R9 R28 K73 ["onSelectedDateChanged"]
      312 GETTABLEKS                       R29 R1 K36 ["selectableDateRange"]
      314 SETTABLEKS                       R29 R28 K36 ["selectableDateRange"]
      316 GETTABLEKS                       R30 R1 K7 ["variant"]
      318 GETUPVAL                         R31 5
      319 GETTABLEKS                       R31 R31 K13 ["SingleWithTime"]
      321 JUMPIFNOTEQ                      R30 R31 ; [+2]
      323 LOADB                            R29 0 +1
      324 LOADB                            R29 1
      325 SETTABLEKS                       R29 R28 K74 ["showStartDateTimeCalendarInput"]
      327 GETTABLEKS                       R30 R1 K7 ["variant"]
      329 GETUPVAL                         R31 5
      330 GETTABLEKS                       R31 R31 K8 ["Dual"]
      332 JUMPIFEQ                         R30 R31 ; [+2]
      334 LOADB                            R29 0 +1
      335 LOADB                            R29 1
      336 SETTABLEKS                       R29 R28 K75 ["showEndDateTimeCalendarInput"]
      338 GETTABLEKS                       R30 R1 K7 ["variant"]
      340 GETUPVAL                         R31 5
      341 GETTABLEKS                       R31 R31 K13 ["SingleWithTime"]
      343 JUMPIFEQ                         R30 R31 ; [+2]
      345 LOADB                            R29 0 +1
      346 LOADB                            R29 1
      347 SETTABLEKS                       R29 R28 K76 ["showTimeDropdown"]
      349 CALL                             R26 2 1
      350 SETTABLEKS                       R26 R25 K23 ["Calendar"]
      352 GETUPVAL                         R26 3
      353 GETTABLEKS                       R26 R26 K16 ["createElement"]
      355 GETUPVAL                         R27 14
      356 DUPTABLE                         R28 K81 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0 auto-y flex-fill gap-small padding-top-large"}]
      357 DUPTABLE                         R29 K84 [{"ApplyButton", "CancelButton"}]
      358 GETUPVAL                         R30 3
      359 GETTABLEKS                       R30 R30 K16 ["createElement"]
      361 GETUPVAL                         R31 16
      362 DUPTABLE                         R32 K85 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      363 GETTABLEKS                       R34 R1 K7 ["variant"]
      365 GETUPVAL                         R35 5
      366 GETTABLEKS                       R35 R35 K86 ["Single"]
      368 JUMPIFEQ                         R34 R35 ; [+8]
      370 GETTABLEKS                       R34 R1 K7 ["variant"]
      372 GETUPVAL                         R35 5
      373 GETTABLEKS                       R35 R35 K13 ["SingleWithTime"]
      375 JUMPIFNOTEQ                      R34 R35 ; [+7]
      377 GETTABLEN                        R34 R8 1
      378 JUMPIFEQKNIL                     R34 ; [+2]
      380 LOADB                            R33 0 +1
      381 LOADB                            R33 1
      382 JUMP                             ; [+27]
      383 GETTABLEKS                       R34 R1 K7 ["variant"]
      385 GETUPVAL                         R35 5
      386 GETTABLEKS                       R35 R35 K8 ["Dual"]
      388 JUMPIFNOTEQ                      R34 R35 ; [+20]
      390 LOADB                            R33 1
      391 GETTABLEN                        R34 R8 1
      392 JUMPIFEQKNIL                     R34 ; [+17]
      394 LOADB                            R33 1
      395 GETTABLEN                        R34 R8 2
      396 JUMPIFEQKNIL                     R34 ; [+13]
      398 GETTABLEN                        R34 R8 1
      399 GETTABLEKS                       R34 R34 K87 ["UnixTimestamp"]
      401 GETTABLEN                        R35 R8 2
      402 GETTABLEKS                       R35 R35 K87 ["UnixTimestamp"]
      404 JUMPIFLT                         R35 R34 ; [+2]
      406 LOADB                            R33 0 +1
      407 LOADB                            R33 1
      408 JUMP                             ; [+1]
      409 LOADB                            R33 0
      410 SETTABLEKS                       R33 R32 K28 ["isDisabled"]
      412 SETTABLEKS                       R13 R32 K42 ["onActivated"]
      414 GETUPVAL                         R33 11
      415 LOADK                            R35 K88 ["CommonUI.Controls.Action.Apply"]
      416 NAMECALL                         R33 R33 K45 ["FormatByKey"]
      418 CALL                             R33 2 1
      419 SETTABLEKS                       R33 R32 K38 ["text"]
      421 GETUPVAL                         R33 17
      422 GETTABLEKS                       R33 R33 K89 ["Emphasis"]
      424 SETTABLEKS                       R33 R32 K7 ["variant"]
      426 LOADK                            R34 K90 ["%*--apply-button"]
      427 GETTABLEKS                       R36 R1 K19 ["testId"]
      429 NAMECALL                         R34 R34 K12 ["format"]
      431 CALL                             R34 2 1
      432 MOVE                             R33 R34
      433 SETTABLEKS                       R33 R32 K19 ["testId"]
      435 CALL                             R30 2 1
      436 SETTABLEKS                       R30 R29 K82 ["ApplyButton"]
      438 GETUPVAL                         R30 3
      439 GETTABLEKS                       R30 R30 K16 ["createElement"]
      441 GETUPVAL                         R31 16
      442 DUPTABLE                         R32 K91 [{"onActivated", "text", "variant", "testId"}]
      443 SETTABLEKS                       R10 R32 K42 ["onActivated"]
      445 GETUPVAL                         R33 11
      446 LOADK                            R35 K92 ["CommonUI.Controls.Action.Cancel"]
      447 NAMECALL                         R33 R33 K45 ["FormatByKey"]
      449 CALL                             R33 2 1
      450 SETTABLEKS                       R33 R32 K38 ["text"]
      452 GETUPVAL                         R33 17
      453 GETTABLEKS                       R33 R33 K63 ["Standard"]
      455 SETTABLEKS                       R33 R32 K7 ["variant"]
      457 LOADK                            R34 K93 ["%*--cancel-button"]
      458 GETTABLEKS                       R36 R1 K19 ["testId"]
      460 NAMECALL                         R34 R34 K12 ["format"]
      462 CALL                             R34 2 1
      463 MOVE                             R33 R34
      464 SETTABLEKS                       R33 R32 K19 ["testId"]
      466 CALL                             R30 2 1
      467 SETTABLEKS                       R30 R29 K83 ["CancelButton"]
      469 CALL                             R26 3 1
      470 SETTABLEKS                       R26 R25 K69 ["BottomBar"]
      472 CALL                             R22 3 1
      473 CALL                             R19 3 1
      474 SETTABLEKS                       R19 R18 K23 ["Calendar"]
      476 CALL                             R15 3 -1
      477 RETURN                           R15 -1

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
       57 GETTABLEKS                       R10 R10 K17 ["Flags"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R0 K14 ["Enums"]
       64 GETTABLEKS                       R11 R11 K18 ["InputSize"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R0 K12 ["Components"]
       71 GETTABLEKS                       R12 R12 K19 ["Popover"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R13 R0 K14 ["Enums"]
       78 GETTABLEKS                       R13 R13 K20 ["PopoverSide"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETTABLEKS                       R14 R0 K12 ["Components"]
       85 GETTABLEKS                       R14 R14 K21 ["TextInput"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K6 [require]
       90 GETTABLEKS                       R15 R0 K16 ["Utility"]
       92 GETTABLEKS                       R15 R15 K22 ["Localization"]
       94 GETTABLEKS                       R15 R15 K23 ["Translator"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R16 R0 K12 ["Components"]
      101 GETTABLEKS                       R16 R16 K24 ["Types"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K6 [require]
      106 GETTABLEKS                       R17 R0 K12 ["Components"]
      108 GETTABLEKS                       R17 R17 K25 ["View"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K6 [require]
      113 GETTABLEKS                       R18 R0 K26 ["Providers"]
      115 GETTABLEKS                       R18 R18 K27 ["Style"]
      117 GETTABLEKS                       R18 R18 K28 ["useTokens"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K6 [require]
      122 GETTABLEKS                       R19 R0 K16 ["Utility"]
      124 GETTABLEKS                       R19 R19 K29 ["withCommonProps"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K6 [require]
      129 GETTABLEKS                       R20 R0 K16 ["Utility"]
      131 GETTABLEKS                       R20 R20 K30 ["withDefaults"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K6 [require]
      136 GETTABLEKS                       R21 R0 K14 ["Enums"]
      138 GETTABLEKS                       R21 R21 K31 ["DateTimePickerVariant"]
      140 CALL                             R20 1 1
      141 DUPTABLE                         R21 K36 [{["defaultDates"], ["variant"], ["testId"] = "--foundation-date-time-picker"}]
      142 NEWTABLE                         R22 0 1
      144 GETIMPORT                        R23 K39 [DateTime.now]
      146 CALL                             R23 0 -1
      147 SETLIST                          R22 R23 -1 [1]
      149 SETTABLEKS                       R22 R21 K32 ["defaultDates"]
      151 GETTABLEKS                       R22 R20 K40 ["Single"]
      153 SETTABLEKS                       R22 R21 K33 ["variant"]
      155 DUPCLOSURE                       R22 K41 [PROTO_5]
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R8
      174 GETTABLEKS                       R23 R3 K42 ["memo"]
      176 MOVE                             R24 R22
      177 CALL                             R23 1 -1
      178 RETURN                           R23 -1
