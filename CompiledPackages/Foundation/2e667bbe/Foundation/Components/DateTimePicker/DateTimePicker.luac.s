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
        6 JUMPIFNOTEQ                      R0 R1 ; [+35]
        8 GETUPVAL                         R1 2
        9 GETTABLEN                        R0 R1 1
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K2 ["DATE_COMPOSITE_TOKEN"]
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R3 R4 K3 ["RobloxLocaleId"]
       16 NAMECALL                         R0 R0 K4 ["FormatLocalTime"]
       18 CALL                             R0 3 1
       19 GETUPVAL                         R3 2
       20 GETTABLEN                        R2 R3 2
       21 JUMPIFNOT                        R2 ; [+12]
       22 GETUPVAL                         R2 2
       23 GETTABLEN                        R1 R2 2
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R3 R4 K2 ["DATE_COMPOSITE_TOKEN"]
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R4 R5 K3 ["RobloxLocaleId"]
       30 NAMECALL                         R1 R1 K4 ["FormatLocalTime"]
       32 CALL                             R1 3 1
       33 JUMP                             ; [+1]
       34 LOADK                            R1 K5 [""]
       35 GETUPVAL                         R2 5
       36 MOVE                             R4 R0
       37 LOADK                            R5 K6 [" - "]
       38 MOVE                             R6 R1
       39 CONCAT                           R3 R4 R6
       40 CALL                             R2 1 0
       41 JUMP                             ; [+13]
       42 GETUPVAL                         R0 5
       43 GETUPVAL                         R2 2
       44 GETTABLEN                        R1 R2 1
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R3 R4 K2 ["DATE_COMPOSITE_TOKEN"]
       48 GETUPVAL                         R5 4
       49 GETTABLEKS                       R4 R5 K3 ["RobloxLocaleId"]
       51 NAMECALL                         R1 R1 K4 ["FormatLocalTime"]
       53 CALL                             R1 3 -1
       54 CALL                             R0 -1 0
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R0 R1 K7 ["onChanged"]
       58 GETUPVAL                         R2 2
       59 GETTABLEN                        R1 R2 1
       60 GETUPVAL                         R3 2
       61 GETTABLEN                        R2 R3 2
       62 CALL                             R0 2 0
       63 GETUPVAL                         R0 6
       64 CALL                             R0 0 0
       65 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["variant"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Single"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+8]
        8 GETUPVAL                         R2 2
        9 GETTABLEN                        R1 R2 1
       10 JUMPIFEQKNIL                     R1 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R0 R1 K0 ["variant"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K2 ["Dual"]
       21 JUMPIFNOTEQ                      R0 R1 ; [+24]
       23 LOADB                            R0 1
       24 GETUPVAL                         R2 2
       25 GETTABLEN                        R1 R2 1
       26 JUMPIFEQKNIL                     R1 ; [+18]
       28 LOADB                            R0 1
       29 GETUPVAL                         R2 2
       30 GETTABLEN                        R1 R2 2
       31 JUMPIFEQKNIL                     R1 ; [+13]
       33 GETUPVAL                         R3 2
       34 GETTABLEN                        R2 R3 1
       35 GETTABLEKS                       R1 R2 K3 ["UnixTimestamp"]
       37 GETUPVAL                         R4 2
       38 GETTABLEN                        R3 R4 2
       39 GETTABLEKS                       R2 R3 K3 ["UnixTimestamp"]
       41 JUMPIFLT                         R2 R1 ; [+2]
       43 LOADB                            R0 0 +1
       44 LOADB                            R0 1
       45 RETURN                           R0 1
       46 LOADB                            R0 0
       47 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R3 R4 K0 ["useState"]
        9 LOADK                            R4 K1 [""]
       10 CALL                             R3 1 2
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K0 ["useState"]
       14 LOADB                            R6 0
       15 CALL                             R5 1 2
       16 GETTABLEKS                       R7 R1 K2 ["defaultDates"]
       18 JUMPIFNOT                        R7 ; [+16]
       19 GETTABLEKS                       R8 R1 K2 ["defaultDates"]
       21 FASTCALL1                        TYPEOF R8 ; [+2]
       22 GETIMPORT                        R7 K4 [typeof]
       24 CALL                             R7 1 1
       25 JUMPIFEQKS                       R7 K5 ["table"] ; [+9]
       27 NEWTABLE                         R7 0 1
       29 GETTABLEKS                       R8 R1 K2 ["defaultDates"]
       31 SETLIST                          R7 R8 1 [1]
       33 SETTABLEKS                       R7 R1 K2 ["defaultDates"]
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R7 R8 K0 ["useState"]
       38 GETTABLEKS                       R8 R1 K2 ["defaultDates"]
       40 CALL                             R7 1 2
       41 GETUPVAL                         R10 3
       42 GETTABLEKS                       R9 R10 K6 ["useCallback"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R6
       46 NEWTABLE                         R11 0 0
       48 CALL                             R9 2 1
       49 GETUPVAL                         R11 3
       50 GETTABLEKS                       R10 R11 K6 ["useCallback"]
       52 NEWCLOSURE                       R11 P1
       53 CAPTURE                          VAL R6
       54 NEWTABLE                         R12 0 0
       56 CALL                             R10 2 1
       57 GETUPVAL                         R12 3
       58 GETTABLEKS                       R11 R12 K6 ["useCallback"]
       60 NEWCLOSURE                       R12 P2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U5
       65 NEWTABLE                         R13 0 1
       67 GETTABLEKS                       R14 R1 K7 ["onChanged"]
       69 SETLIST                          R13 R14 1 [1]
       71 CALL                             R11 2 1
       72 GETUPVAL                         R13 3
       73 GETTABLEKS                       R12 R13 K6 ["useCallback"]
       75 NEWCLOSURE                       R13 P3
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          VAL R7
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R9
       83 NEWTABLE                         R14 0 3
       85 MOVE                             R15 R7
       86 MOVE                             R16 R9
       87 GETTABLEKS                       R17 R1 K7 ["onChanged"]
       89 SETLIST                          R14 R15 3 [1]
       91 CALL                             R12 2 1
       92 NEWCLOSURE                       R13 P4
       93 CAPTURE                          VAL R1
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          VAL R7
       96 GETUPVAL                         R15 3
       97 GETTABLEKS                       R14 R15 K8 ["createElement"]
       99 GETUPVAL                         R15 7
      100 GETUPVAL                         R16 8
      101 MOVE                             R17 R1
      102 NEWTABLE                         R18 0 0
      104 CALL                             R16 2 1
      105 DUPTABLE                         R17 K10 [{"DateTimePicker"}]
      106 GETUPVAL                         R19 3
      107 GETTABLEKS                       R18 R19 K8 ["createElement"]
      109 GETUPVAL                         R20 9
      110 GETTABLEKS                       R19 R20 K11 ["Root"]
      112 DUPTABLE                         R20 K13 [{"isOpen"}]
      113 SETTABLEKS                       R5 R20 K12 ["isOpen"]
      115 DUPTABLE                         R21 K16 [{"DateInput", "Calendar"}]
      116 GETUPVAL                         R23 3
      117 GETTABLEKS                       R22 R23 K8 ["createElement"]
      119 GETUPVAL                         R24 9
      120 GETTABLEKS                       R23 R24 K17 ["Anchor"]
      122 LOADNIL                          R24
      123 NEWTABLE                         R25 0 1
      125 GETUPVAL                         R27 3
      126 GETTABLEKS                       R26 R27 K8 ["createElement"]
      128 GETUPVAL                         R27 10
      129 DUPTABLE                         R28 K32 [{"hasError", "hint", "iconTrailing", "isDisabled", "isRequired", "key", "label", "onChanged", "onFocusGained", "placeholder", "selectableDateRange", "size", "text", "width", "testId"}]
      130 GETTABLEKS                       R29 R1 K18 ["hasError"]
      132 SETTABLEKS                       R29 R28 K18 ["hasError"]
      134 GETTABLEKS                       R29 R1 K19 ["hint"]
      136 SETTABLEKS                       R29 R28 K19 ["hint"]
      138 DUPTABLE                         R29 K35 [{"name", "onActivated"}]
      139 GETUPVAL                         R31 11
      140 GETTABLEKS                       R30 R31 K15 ["Calendar"]
      142 SETTABLEKS                       R30 R29 K33 ["name"]
      144 SETTABLEKS                       R10 R29 K34 ["onActivated"]
      146 SETTABLEKS                       R29 R28 K20 ["iconTrailing"]
      148 GETTABLEKS                       R29 R1 K21 ["isDisabled"]
      150 SETTABLEKS                       R29 R28 K21 ["isDisabled"]
      152 GETTABLEKS                       R29 R1 K22 ["isRequired"]
      154 SETTABLEKS                       R29 R28 K22 ["isRequired"]
      156 LOADK                            R29 K36 ["date-input"]
      157 SETTABLEKS                       R29 R28 K23 ["key"]
      159 GETTABLEKS                       R29 R1 K24 ["label"]
      161 SETTABLEKS                       R29 R28 K24 ["label"]
      163 SETTABLEKS                       R11 R28 K7 ["onChanged"]
      165 SETTABLEKS                       R10 R28 K25 ["onFocusGained"]
      167 GETUPVAL                         R29 12
      168 LOADK                            R31 K37 ["CommonUI.Controls.Label.SelectDate"]
      169 NAMECALL                         R29 R29 K38 ["FormatByKey"]
      171 CALL                             R29 2 1
      172 SETTABLEKS                       R29 R28 K26 ["placeholder"]
      174 GETTABLEKS                       R29 R1 K27 ["selectableDateRange"]
      176 SETTABLEKS                       R29 R28 K27 ["selectableDateRange"]
      178 GETUPVAL                         R30 13
      179 GETTABLEKS                       R29 R30 K39 ["Medium"]
      181 SETTABLEKS                       R29 R28 K28 ["size"]
      183 SETTABLEKS                       R3 R28 K29 ["text"]
      185 GETTABLEKS                       R29 R1 K30 ["width"]
      187 SETTABLEKS                       R29 R28 K30 ["width"]
      189 LOADK                            R30 K40 ["%*--text-input"]
      190 GETTABLEKS                       R32 R1 K31 ["testId"]
      192 NAMECALL                         R30 R30 K41 ["format"]
      194 CALL                             R30 2 1
      195 MOVE                             R29 R30
      196 SETTABLEKS                       R29 R28 K31 ["testId"]
      198 CALL                             R26 2 -1
      199 SETLIST                          R25 R26 -1 [1]
      201 CALL                             R22 3 1
      202 SETTABLEKS                       R22 R21 K14 ["DateInput"]
      204 GETUPVAL                         R23 3
      205 GETTABLEKS                       R22 R23 K8 ["createElement"]
      207 GETUPVAL                         R24 9
      208 GETTABLEKS                       R23 R24 K42 ["Content"]
      210 DUPTABLE                         R24 K46 [{"hasArrow", "onPressedOutside", "side"}]
      211 LOADB                            R25 0
      212 SETTABLEKS                       R25 R24 K43 ["hasArrow"]
      214 SETTABLEKS                       R9 R24 K44 ["onPressedOutside"]
      216 DUPTABLE                         R25 K49 [{"position", "offset"}]
      217 GETUPVAL                         R27 14
      218 GETTABLEKS                       R26 R27 K50 ["Bottom"]
      220 SETTABLEKS                       R26 R25 K47 ["position"]
      222 GETTABLEKS                       R28 R2 K51 ["Stroke"]
      224 GETTABLEKS                       R27 R28 K52 ["Standard"]
      226 GETTABLEKS                       R29 R2 K53 ["Padding"]
      228 GETTABLEKS                       R28 R29 K54 ["Small"]
      230 ADD                              R26 R27 R28
      231 SETTABLEKS                       R26 R25 K48 ["offset"]
      233 SETTABLEKS                       R25 R24 K45 ["side"]
      235 MOVE                             R25 R5
      236 JUMPIFNOT                        R25 ; [+181]
      237 GETUPVAL                         R26 3
      238 GETTABLEKS                       R25 R26 K8 ["createElement"]
      240 GETUPVAL                         R26 7
      241 DUPTABLE                         R27 K56 [{"tag"}]
      242 LOADK                            R28 K57 ["padding-large col stroke-default radius-medium auto-xy"]
      243 SETTABLEKS                       R28 R27 K55 ["tag"]
      245 DUPTABLE                         R28 K59 [{"Calendar", "BottomBar"}]
      246 GETUPVAL                         R30 3
      247 GETTABLEKS                       R29 R30 K8 ["createElement"]
      249 GETUPVAL                         R30 15
      250 DUPTABLE                         R31 K64 [{"defaultDates", "LayoutOrder", "onSelectedDateChanged", "selectableDateRange", "showStartDateTimeCalendarInput", "showEndDateTimeCalendarInput", "testId"}]
      251 SETTABLEKS                       R7 R31 K2 ["defaultDates"]
      253 LOADN                            R32 1
      254 SETTABLEKS                       R32 R31 K60 ["LayoutOrder"]
      256 SETTABLEKS                       R8 R31 K61 ["onSelectedDateChanged"]
      258 GETTABLEKS                       R32 R1 K27 ["selectableDateRange"]
      260 SETTABLEKS                       R32 R31 K27 ["selectableDateRange"]
      262 LOADB                            R32 1
      263 GETTABLEKS                       R33 R1 K65 ["variant"]
      265 GETUPVAL                         R35 4
      266 GETTABLEKS                       R34 R35 K66 ["Single"]
      268 JUMPIFEQ                         R33 R34 ; [+10]
      270 GETTABLEKS                       R33 R1 K65 ["variant"]
      272 GETUPVAL                         R35 4
      273 GETTABLEKS                       R34 R35 K67 ["Dual"]
      275 JUMPIFEQ                         R33 R34 ; [+2]
      277 LOADB                            R32 0 +1
      278 LOADB                            R32 1
      279 SETTABLEKS                       R32 R31 K62 ["showStartDateTimeCalendarInput"]
      281 GETTABLEKS                       R33 R1 K65 ["variant"]
      283 GETUPVAL                         R35 4
      284 GETTABLEKS                       R34 R35 K67 ["Dual"]
      286 JUMPIFEQ                         R33 R34 ; [+2]
      288 LOADB                            R32 0 +1
      289 LOADB                            R32 1
      290 SETTABLEKS                       R32 R31 K63 ["showEndDateTimeCalendarInput"]
      292 LOADK                            R32 K68 ["--foundation-calendar"]
      293 SETTABLEKS                       R32 R31 K31 ["testId"]
      295 CALL                             R29 2 1
      296 SETTABLEKS                       R29 R28 K15 ["Calendar"]
      298 GETUPVAL                         R30 3
      299 GETTABLEKS                       R29 R30 K8 ["createElement"]
      301 GETUPVAL                         R30 7
      302 DUPTABLE                         R31 K69 [{"LayoutOrder", "tag"}]
      303 LOADN                            R32 2
      304 SETTABLEKS                       R32 R31 K60 ["LayoutOrder"]
      306 LOADK                            R32 K70 ["row size-full-0 auto-y flex-fill gap-small padding-top-large"]
      307 SETTABLEKS                       R32 R31 K55 ["tag"]
      309 DUPTABLE                         R32 K73 [{"ApplyButton", "CancelButton"}]
      310 GETUPVAL                         R34 3
      311 GETTABLEKS                       R33 R34 K8 ["createElement"]
      313 GETUPVAL                         R34 16
      314 DUPTABLE                         R35 K74 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      315 GETTABLEKS                       R37 R1 K65 ["variant"]
      317 GETUPVAL                         R39 4
      318 GETTABLEKS                       R38 R39 K66 ["Single"]
      320 JUMPIFNOTEQ                      R37 R38 ; [+7]
      322 GETTABLEN                        R37 R7 1
      323 JUMPIFEQKNIL                     R37 ; [+2]
      325 LOADB                            R36 0 +1
      326 LOADB                            R36 1
      327 JUMP                             ; [+27]
      328 GETTABLEKS                       R37 R1 K65 ["variant"]
      330 GETUPVAL                         R39 4
      331 GETTABLEKS                       R38 R39 K67 ["Dual"]
      333 JUMPIFNOTEQ                      R37 R38 ; [+20]
      335 LOADB                            R36 1
      336 GETTABLEN                        R37 R7 1
      337 JUMPIFEQKNIL                     R37 ; [+17]
      339 LOADB                            R36 1
      340 GETTABLEN                        R37 R7 2
      341 JUMPIFEQKNIL                     R37 ; [+13]
      343 GETTABLEN                        R38 R7 1
      344 GETTABLEKS                       R37 R38 K75 ["UnixTimestamp"]
      346 GETTABLEN                        R39 R7 2
      347 GETTABLEKS                       R38 R39 K75 ["UnixTimestamp"]
      349 JUMPIFLT                         R38 R37 ; [+2]
      351 LOADB                            R36 0 +1
      352 LOADB                            R36 1
      353 JUMP                             ; [+1]
      354 LOADB                            R36 0
      355 SETTABLEKS                       R36 R35 K21 ["isDisabled"]
      357 SETTABLEKS                       R12 R35 K34 ["onActivated"]
      359 GETUPVAL                         R36 12
      360 LOADK                            R38 K76 ["CommonUI.Controls.Action.Apply"]
      361 NAMECALL                         R36 R36 K38 ["FormatByKey"]
      363 CALL                             R36 2 1
      364 SETTABLEKS                       R36 R35 K29 ["text"]
      366 GETUPVAL                         R37 17
      367 GETTABLEKS                       R36 R37 K77 ["Emphasis"]
      369 SETTABLEKS                       R36 R35 K65 ["variant"]
      371 LOADK                            R37 K78 ["%*--apply-button"]
      372 GETTABLEKS                       R39 R1 K31 ["testId"]
      374 NAMECALL                         R37 R37 K41 ["format"]
      376 CALL                             R37 2 1
      377 MOVE                             R36 R37
      378 SETTABLEKS                       R36 R35 K31 ["testId"]
      380 CALL                             R33 2 1
      381 SETTABLEKS                       R33 R32 K71 ["ApplyButton"]
      383 GETUPVAL                         R34 3
      384 GETTABLEKS                       R33 R34 K8 ["createElement"]
      386 GETUPVAL                         R34 16
      387 DUPTABLE                         R35 K79 [{"onActivated", "text", "variant", "testId"}]
      388 SETTABLEKS                       R9 R35 K34 ["onActivated"]
      390 GETUPVAL                         R36 12
      391 LOADK                            R38 K80 ["CommonUI.Controls.Action.Cancel"]
      392 NAMECALL                         R36 R36 K38 ["FormatByKey"]
      394 CALL                             R36 2 1
      395 SETTABLEKS                       R36 R35 K29 ["text"]
      397 GETUPVAL                         R37 17
      398 GETTABLEKS                       R36 R37 K52 ["Standard"]
      400 SETTABLEKS                       R36 R35 K65 ["variant"]
      402 LOADK                            R37 K81 ["%*--cancel-button"]
      403 GETTABLEKS                       R39 R1 K31 ["testId"]
      405 NAMECALL                         R37 R37 K41 ["format"]
      407 CALL                             R37 2 1
      408 MOVE                             R36 R37
      409 SETTABLEKS                       R36 R35 K31 ["testId"]
      411 CALL                             R33 2 1
      412 SETTABLEKS                       R33 R32 K72 ["CancelButton"]
      414 CALL                             R29 3 1
      415 SETTABLEKS                       R29 R28 K58 ["BottomBar"]
      417 CALL                             R25 3 1
      418 CALL                             R22 3 1
      419 SETTABLEKS                       R22 R21 K15 ["Calendar"]
      421 CALL                             R18 3 1
      422 SETTABLEKS                       R18 R17 K9 ["DateTimePicker"]
      424 CALL                             R14 3 -1
      425 RETURN                           R14 -1

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
       57 GETTABLEKS                       R10 R11 K16 ["DateTimePickerVariant"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R12 R0 K14 ["Enums"]
       64 GETTABLEKS                       R11 R12 K17 ["InputSize"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R15 R0 K18 ["Utility"]
       71 GETTABLEKS                       R14 R15 K19 ["Wrappers"]
       73 CALL                             R13 1 1
       74 GETTABLEKS                       R12 R13 K20 ["Services"]
       76 GETTABLEKS                       R11 R12 K21 ["LocalizationService"]
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
      101 GETTABLEKS                       R18 R0 K18 ["Utility"]
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
      133 GETTABLEKS                       R21 R0 K18 ["Utility"]
      135 GETTABLEKS                       R20 R21 K32 ["withCommonProps"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K6 [require]
      140 GETTABLEKS                       R22 R0 K18 ["Utility"]
      142 GETTABLEKS                       R21 R22 K33 ["withDefaults"]
      144 CALL                             R20 1 1
      145 DUPTABLE                         R21 K37 [{"defaultDates", "variant", "testId"}]
      146 NEWTABLE                         R22 0 1
      148 GETIMPORT                        R23 K40 [DateTime.now]
      150 CALL                             R23 0 -1
      151 SETLIST                          R22 R23 -1 [1]
      153 SETTABLEKS                       R22 R21 K34 ["defaultDates"]
      155 GETTABLEKS                       R22 R9 K41 ["Single"]
      157 SETTABLEKS                       R22 R21 K35 ["variant"]
      159 LOADK                            R22 K42 ["--foundation-date-time-picker"]
      160 SETTABLEKS                       R22 R21 K36 ["testId"]
      162 DUPCLOSURE                       R22 K43 [PROTO_5]
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R5
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R8
      181 GETTABLEKS                       R23 R3 K44 ["memo"]
      183 MOVE                             R24 R22
      184 CALL                             R23 1 -1
      185 RETURN                           R23 -1
