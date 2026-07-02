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
        6 JUMPIFNOTEQ                      R0 R1 ; [+57]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K3 ["formatLocalTime"]
       15 GETUPVAL                         R2 4
       16 GETTABLEN                        R1 R2 1
       17 CALL                             R0 1 1
       18 JUMP                             ; [+11]
       19 GETUPVAL                         R1 4
       20 GETTABLEN                        R0 R1 1
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K4 ["DATE_COMPOSITE_TOKEN"]
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R3 R3 K5 ["RobloxLocaleId"]
       27 NAMECALL                         R0 R0 K6 ["FormatLocalTime"]
       29 CALL                             R0 3 1
       30 GETUPVAL                         R3 4
       31 GETTABLEN                        R2 R3 2
       32 JUMPIFNOT                        R2 ; [+23]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       36 JUMPIFNOT                        R2 ; [+7]
       37 GETUPVAL                         R1 3
       38 GETTABLEKS                       R1 R1 K3 ["formatLocalTime"]
       40 GETUPVAL                         R3 4
       41 GETTABLEN                        R2 R3 2
       42 CALL                             R1 1 1
       43 JUMP                             ; [+13]
       44 GETUPVAL                         R2 4
       45 GETTABLEN                        R1 R2 2
       46 GETUPVAL                         R3 3
       47 GETTABLEKS                       R3 R3 K4 ["DATE_COMPOSITE_TOKEN"]
       49 GETUPVAL                         R4 5
       50 GETTABLEKS                       R4 R4 K5 ["RobloxLocaleId"]
       52 NAMECALL                         R1 R1 K6 ["FormatLocalTime"]
       54 CALL                             R1 3 1
       55 JUMP                             ; [+1]
       56 LOADK                            R1 K7 [""]
       57 GETUPVAL                         R2 6
       58 MOVE                             R4 R0
       59 LOADK                            R5 K8 [" - "]
       60 MOVE                             R6 R1
       61 CONCAT                           R3 R4 R6
       62 CALL                             R2 1 0
       63 JUMP                             ; [+34]
       64 GETUPVAL                         R0 6
       65 GETUPVAL                         R2 2
       66 GETTABLEKS                       R2 R2 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       68 JUMPIFNOT                        R2 ; [+17]
       69 GETUPVAL                         R1 3
       70 GETTABLEKS                       R1 R1 K3 ["formatLocalTime"]
       72 GETUPVAL                         R3 4
       73 GETTABLEN                        R2 R3 1
       74 GETUPVAL                         R4 0
       75 GETTABLEKS                       R4 R4 K0 ["variant"]
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R5 R5 K9 ["SingleWithTime"]
       80 JUMPIFEQ                         R4 R5 ; [+2]
       82 LOADB                            R3 0 +1
       83 LOADB                            R3 1
       84 CALL                             R1 2 1
       85 JUMP                             ; [+11]
       86 GETUPVAL                         R2 4
       87 GETTABLEN                        R1 R2 1
       88 GETUPVAL                         R3 3
       89 GETTABLEKS                       R3 R3 K4 ["DATE_COMPOSITE_TOKEN"]
       91 GETUPVAL                         R4 5
       92 GETTABLEKS                       R4 R4 K5 ["RobloxLocaleId"]
       94 NAMECALL                         R1 R1 K6 ["FormatLocalTime"]
       96 CALL                             R1 3 1
       97 CALL                             R0 1 0
       98 GETUPVAL                         R0 2
       99 GETTABLEKS                       R0 R0 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
      101 JUMPIF                           R0 ; [+8]
      102 GETUPVAL                         R0 0
      103 GETTABLEKS                       R0 R0 K10 ["onChanged"]
      105 GETUPVAL                         R2 4
      106 GETTABLEN                        R1 R2 1
      107 GETUPVAL                         R3 4
      108 GETTABLEN                        R2 R3 2
      109 CALL                             R0 2 0
      110 GETUPVAL                         R0 7
      111 CALL                             R0 0 0
      112 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["variant"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Single"]
        6 JUMPIFEQ                         R0 R1 ; [+13]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       11 JUMPIFNOT                        R0 ; [+15]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["variant"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K3 ["SingleWithTime"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+8]
       20 GETUPVAL                         R2 3
       21 GETTABLEN                        R1 R2 1
       22 JUMPIFEQKNIL                     R1 ; [+2]
       24 LOADB                            R0 0 +1
       25 LOADB                            R0 1
       26 RETURN                           R0 1
       27 GETUPVAL                         R0 0
       28 GETTABLEKS                       R0 R0 K0 ["variant"]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K4 ["Dual"]
       33 JUMPIFNOTEQ                      R0 R1 ; [+24]
       35 LOADB                            R0 1
       36 GETUPVAL                         R2 3
       37 GETTABLEN                        R1 R2 1
       38 JUMPIFEQKNIL                     R1 ; [+18]
       40 LOADB                            R0 1
       41 GETUPVAL                         R2 3
       42 GETTABLEN                        R1 R2 2
       43 JUMPIFEQKNIL                     R1 ; [+13]
       45 GETUPVAL                         R2 3
       46 GETTABLEN                        R1 R2 1
       47 GETTABLEKS                       R1 R1 K5 ["UnixTimestamp"]
       49 GETUPVAL                         R3 3
       50 GETTABLEN                        R2 R3 2
       51 GETTABLEKS                       R2 R2 K5 ["UnixTimestamp"]
       53 JUMPIFLT                         R2 R1 ; [+2]
       55 LOADB                            R0 0 +1
       56 LOADB                            R0 1
       57 RETURN                           R0 1
       58 LOADB                            R0 0
       59 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 LOADK                            R4 K1 [""]
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K0 ["useState"]
       14 LOADB                            R6 0
       15 CALL                             R5 1 2
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K2 ["useRef"]
       19 LOADNIL                          R8
       20 CALL                             R7 1 1
       21 GETTABLEKS                       R8 R1 K3 ["defaultDates"]
       23 JUMPIFNOT                        R8 ; [+16]
       24 GETTABLEKS                       R9 R1 K3 ["defaultDates"]
       26 FASTCALL1                        TYPEOF R9 ; [+2]
       27 GETIMPORT                        R8 K5 [typeof]
       29 CALL                             R8 1 1
       30 JUMPIFEQKS                       R8 K6 ["table"] ; [+9]
       32 NEWTABLE                         R8 0 1
       34 GETTABLEKS                       R9 R1 K3 ["defaultDates"]
       36 SETLIST                          R8 R9 1 [1]
       38 SETTABLEKS                       R8 R1 K3 ["defaultDates"]
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K0 ["useState"]
       43 GETTABLEKS                       R9 R1 K3 ["defaultDates"]
       45 CALL                             R8 1 2
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       49 NEWCLOSURE                       R11 P0
       50 CAPTURE                          VAL R6
       51 NEWTABLE                         R12 0 0
       53 CALL                             R10 2 1
       54 GETUPVAL                         R11 3
       55 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       57 NEWCLOSURE                       R12 P1
       58 CAPTURE                          VAL R6
       59 NEWTABLE                         R13 0 0
       61 CALL                             R11 2 1
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R12 R12 K7 ["useCallback"]
       65 NEWCLOSURE                       R13 P2
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          UPVAL U5
       70 NEWTABLE                         R14 0 1
       72 GETTABLEKS                       R15 R1 K8 ["onChanged"]
       74 SETLIST                          R14 R15 1 [1]
       76 CALL                             R12 2 1
       77 GETUPVAL                         R13 3
       78 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       80 NEWCLOSURE                       R14 P3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R8
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R10
       89 NEWTABLE                         R15 0 3
       91 MOVE                             R16 R8
       92 MOVE                             R17 R10
       93 GETUPVAL                         R19 6
       94 GETTABLEKS                       R19 R19 K9 ["FoundationDateTimePickerTimeVariantEnabled"]
       96 JUMPIF                           R19 ; [+3]
       97 GETTABLEKS                       R18 R1 K8 ["onChanged"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R18
      101 SETLIST                          R15 R16 3 [1]
      103 CALL                             R13 2 1
      104 NEWCLOSURE                       R14 P4
      105 CAPTURE                          VAL R1
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R8
      109 GETUPVAL                         R15 3
      110 GETTABLEKS                       R15 R15 K10 ["createElement"]
      112 GETUPVAL                         R16 8
      113 GETTABLEKS                       R16 R16 K11 ["Root"]
      115 DUPTABLE                         R17 K14 [{"isOpen", "testId"}]
      116 SETTABLEKS                       R5 R17 K12 ["isOpen"]
      118 GETTABLEKS                       R18 R1 K13 ["testId"]
      120 SETTABLEKS                       R18 R17 K13 ["testId"]
      122 DUPTABLE                         R18 K18 [{"DateInput", "Anchor", "Calendar"}]
      123 GETUPVAL                         R20 6
      124 GETTABLEKS                       R20 R20 K19 ["FoundationDateTimePickerAnchorBugFixEnabled"]
      126 JUMPIFNOT                        R20 ; [+77]
      127 GETUPVAL                         R19 3
      128 GETTABLEKS                       R19 R19 K10 ["createElement"]
      130 GETUPVAL                         R20 9
      131 GETUPVAL                         R21 10
      132 MOVE                             R22 R1
      133 DUPTABLE                         R23 K35 [{["hasError"], ["hint"], ["iconTrailing"], ["isDisabled"], ["isRequired"], ["key"] = "date-input", ["label"], ["onChanged"], ["onFocusGained"], ["placeholder"], ["ref"], ["selectableDateRange"], ["size"], ["text"], ["testId"], ["width"]}]
      134 GETTABLEKS                       R24 R1 K20 ["hasError"]
      136 SETTABLEKS                       R24 R23 K20 ["hasError"]
      138 GETTABLEKS                       R24 R1 K21 ["hint"]
      140 SETTABLEKS                       R24 R23 K21 ["hint"]
      142 DUPTABLE                         R24 K38 [{"name", "onActivated"}]
      143 GETUPVAL                         R25 11
      144 GETTABLEKS                       R25 R25 K17 ["Calendar"]
      146 SETTABLEKS                       R25 R24 K36 ["name"]
      148 SETTABLEKS                       R11 R24 K37 ["onActivated"]
      150 SETTABLEKS                       R24 R23 K22 ["iconTrailing"]
      152 GETTABLEKS                       R24 R1 K23 ["isDisabled"]
      154 SETTABLEKS                       R24 R23 K23 ["isDisabled"]
      156 GETTABLEKS                       R24 R1 K24 ["isRequired"]
      158 SETTABLEKS                       R24 R23 K24 ["isRequired"]
      160 GETTABLEKS                       R24 R1 K27 ["label"]
      162 SETTABLEKS                       R24 R23 K27 ["label"]
      164 SETTABLEKS                       R12 R23 K8 ["onChanged"]
      166 SETTABLEKS                       R11 R23 K28 ["onFocusGained"]
      168 GETUPVAL                         R24 12
      169 LOADK                            R26 K39 ["CommonUI.Controls.Label.SelectDate"]
      170 NAMECALL                         R24 R24 K40 ["FormatByKey"]
      172 CALL                             R24 2 1
      173 SETTABLEKS                       R24 R23 K29 ["placeholder"]
      175 SETTABLEKS                       R7 R23 K30 ["ref"]
      177 GETTABLEKS                       R24 R1 K31 ["selectableDateRange"]
      179 SETTABLEKS                       R24 R23 K31 ["selectableDateRange"]
      181 GETUPVAL                         R24 13
      182 GETTABLEKS                       R24 R24 K41 ["Medium"]
      184 SETTABLEKS                       R24 R23 K32 ["size"]
      186 SETTABLEKS                       R3 R23 K33 ["text"]
      188 LOADK                            R25 K42 ["%*--text-input"]
      189 GETTABLEKS                       R27 R1 K13 ["testId"]
      191 NAMECALL                         R25 R25 K43 ["format"]
      193 CALL                             R25 2 1
      194 MOVE                             R24 R25
      195 SETTABLEKS                       R24 R23 K13 ["testId"]
      197 GETTABLEKS                       R24 R1 K34 ["width"]
      199 SETTABLEKS                       R24 R23 K34 ["width"]
      201 CALL                             R21 2 -1
      202 CALL                             R19 -1 1
      203 JUMP                             ; [+83]
      204 GETUPVAL                         R19 3
      205 GETTABLEKS                       R19 R19 K10 ["createElement"]
      207 GETUPVAL                         R20 8
      208 GETTABLEKS                       R20 R20 K16 ["Anchor"]
      210 LOADNIL                          R21
      211 NEWTABLE                         R22 0 1
      213 GETUPVAL                         R23 3
      214 GETTABLEKS                       R23 R23 K10 ["createElement"]
      216 GETUPVAL                         R24 9
      217 DUPTABLE                         R25 K44 [{["hasError"], ["hint"], ["iconTrailing"], ["isDisabled"], ["isRequired"], ["key"] = "date-input", ["label"], ["onChanged"], ["onFocusGained"], ["placeholder"], ["selectableDateRange"], ["size"], ["text"], ["width"], ["testId"]}]
      218 GETTABLEKS                       R26 R1 K20 ["hasError"]
      220 SETTABLEKS                       R26 R25 K20 ["hasError"]
      222 GETTABLEKS                       R26 R1 K21 ["hint"]
      224 SETTABLEKS                       R26 R25 K21 ["hint"]
      226 DUPTABLE                         R26 K38 [{"name", "onActivated"}]
      227 GETUPVAL                         R27 11
      228 GETTABLEKS                       R27 R27 K17 ["Calendar"]
      230 SETTABLEKS                       R27 R26 K36 ["name"]
      232 SETTABLEKS                       R11 R26 K37 ["onActivated"]
      234 SETTABLEKS                       R26 R25 K22 ["iconTrailing"]
      236 GETTABLEKS                       R26 R1 K23 ["isDisabled"]
      238 SETTABLEKS                       R26 R25 K23 ["isDisabled"]
      240 GETTABLEKS                       R26 R1 K24 ["isRequired"]
      242 SETTABLEKS                       R26 R25 K24 ["isRequired"]
      244 GETTABLEKS                       R26 R1 K27 ["label"]
      246 SETTABLEKS                       R26 R25 K27 ["label"]
      248 SETTABLEKS                       R12 R25 K8 ["onChanged"]
      250 SETTABLEKS                       R11 R25 K28 ["onFocusGained"]
      252 GETUPVAL                         R26 12
      253 LOADK                            R28 K39 ["CommonUI.Controls.Label.SelectDate"]
      254 NAMECALL                         R26 R26 K40 ["FormatByKey"]
      256 CALL                             R26 2 1
      257 SETTABLEKS                       R26 R25 K29 ["placeholder"]
      259 GETTABLEKS                       R26 R1 K31 ["selectableDateRange"]
      261 SETTABLEKS                       R26 R25 K31 ["selectableDateRange"]
      263 GETUPVAL                         R26 13
      264 GETTABLEKS                       R26 R26 K41 ["Medium"]
      266 SETTABLEKS                       R26 R25 K32 ["size"]
      268 SETTABLEKS                       R3 R25 K33 ["text"]
      270 GETTABLEKS                       R26 R1 K34 ["width"]
      272 SETTABLEKS                       R26 R25 K34 ["width"]
      274 LOADK                            R27 K42 ["%*--text-input"]
      275 GETTABLEKS                       R29 R1 K13 ["testId"]
      277 NAMECALL                         R27 R27 K43 ["format"]
      279 CALL                             R27 2 1
      280 MOVE                             R26 R27
      281 SETTABLEKS                       R26 R25 K13 ["testId"]
      283 CALL                             R23 2 -1
      284 SETLIST                          R22 R23 -1 [1]
      286 CALL                             R19 3 1
      287 SETTABLEKS                       R19 R18 K15 ["DateInput"]
      289 GETUPVAL                         R20 6
      290 GETTABLEKS                       R20 R20 K19 ["FoundationDateTimePickerAnchorBugFixEnabled"]
      292 JUMPIFNOT                        R20 ; [+11]
      293 GETUPVAL                         R19 3
      294 GETTABLEKS                       R19 R19 K10 ["createElement"]
      296 GETUPVAL                         R20 8
      297 GETTABLEKS                       R20 R20 K16 ["Anchor"]
      299 DUPTABLE                         R21 K46 [{"anchorRef"}]
      300 SETTABLEKS                       R7 R21 K45 ["anchorRef"]
      302 CALL                             R19 2 1
      303 JUMP                             ; [+1]
      304 LOADNIL                          R19
      305 SETTABLEKS                       R19 R18 K16 ["Anchor"]
      307 GETUPVAL                         R19 3
      308 GETTABLEKS                       R19 R19 K10 ["createElement"]
      310 GETUPVAL                         R20 8
      311 GETTABLEKS                       R20 R20 K47 ["Content"]
      313 DUPTABLE                         R21 K54 [{["hasArrow"] = False, ["onPressedOutside"], ["side"], ["selection"], ["selectionGroup"]}]
      314 SETTABLEKS                       R10 R21 K50 ["onPressedOutside"]
      316 DUPTABLE                         R22 K57 [{"position", "offset"}]
      317 GETUPVAL                         R23 14
      318 GETTABLEKS                       R23 R23 K58 ["Bottom"]
      320 SETTABLEKS                       R23 R22 K55 ["position"]
      322 GETTABLEKS                       R24 R2 K59 ["Stroke"]
      324 GETTABLEKS                       R24 R24 K60 ["Standard"]
      326 GETTABLEKS                       R25 R2 K61 ["Padding"]
      328 GETTABLEKS                       R25 R25 K62 ["Small"]
      330 ADD                              R23 R24 R25
      331 SETTABLEKS                       R23 R22 K56 ["offset"]
      333 SETTABLEKS                       R22 R21 K51 ["side"]
      335 GETTABLEKS                       R22 R1 K52 ["selection"]
      337 SETTABLEKS                       R22 R21 K52 ["selection"]
      339 GETTABLEKS                       R22 R1 K53 ["selectionGroup"]
      341 SETTABLEKS                       R22 R21 K53 ["selectionGroup"]
      343 MOVE                             R22 R5
      344 JUMPIFNOT                        R22 ; [+206]
      345 GETUPVAL                         R22 3
      346 GETTABLEKS                       R22 R22 K10 ["createElement"]
      348 GETUPVAL                         R23 15
      349 DUPTABLE                         R24 K65 [{["tag"] = "padding-large col stroke-default radius-medium auto-xy"}]
      350 DUPTABLE                         R25 K67 [{"Calendar", "BottomBar"}]
      351 GETUPVAL                         R26 3
      352 GETTABLEKS                       R26 R26 K10 ["createElement"]
      354 GETUPVAL                         R27 16
      355 DUPTABLE                         R28 K75 [{["defaultDates"], ["LayoutOrder"] = 1, ["onSelectedDateChanged"], ["selectableDateRange"], ["showStartDateTimeCalendarInput"], ["showEndDateTimeCalendarInput"], ["showTimeDropdown"], ["testId"] = "--foundation-calendar"}]
      356 SETTABLEKS                       R8 R28 K3 ["defaultDates"]
      358 SETTABLEKS                       R9 R28 K70 ["onSelectedDateChanged"]
      360 GETTABLEKS                       R29 R1 K31 ["selectableDateRange"]
      362 SETTABLEKS                       R29 R28 K31 ["selectableDateRange"]
      364 GETUPVAL                         R30 6
      365 GETTABLEKS                       R30 R30 K9 ["FoundationDateTimePickerTimeVariantEnabled"]
      367 JUMPIFNOT                        R30 ; [+10]
      368 GETTABLEKS                       R30 R1 K76 ["variant"]
      370 GETUPVAL                         R31 4
      371 GETTABLEKS                       R31 R31 K77 ["SingleWithTime"]
      373 JUMPIFNOTEQ                      R30 R31 ; [+2]
      375 LOADB                            R29 0 +1
      376 LOADB                            R29 1
      377 JUMP                             ; [+17]
      378 LOADB                            R29 1
      379 GETTABLEKS                       R30 R1 K76 ["variant"]
      381 GETUPVAL                         R31 4
      382 GETTABLEKS                       R31 R31 K78 ["Single"]
      384 JUMPIFEQ                         R30 R31 ; [+10]
      386 GETTABLEKS                       R30 R1 K76 ["variant"]
      388 GETUPVAL                         R31 4
      389 GETTABLEKS                       R31 R31 K79 ["Dual"]
      391 JUMPIFEQ                         R30 R31 ; [+2]
      393 LOADB                            R29 0 +1
      394 LOADB                            R29 1
      395 SETTABLEKS                       R29 R28 K71 ["showStartDateTimeCalendarInput"]
      397 GETTABLEKS                       R30 R1 K76 ["variant"]
      399 GETUPVAL                         R31 4
      400 GETTABLEKS                       R31 R31 K79 ["Dual"]
      402 JUMPIFEQ                         R30 R31 ; [+2]
      404 LOADB                            R29 0 +1
      405 LOADB                            R29 1
      406 SETTABLEKS                       R29 R28 K72 ["showEndDateTimeCalendarInput"]
      408 GETUPVAL                         R29 6
      409 GETTABLEKS                       R29 R29 K9 ["FoundationDateTimePickerTimeVariantEnabled"]
      411 JUMPIFNOT                        R29 ; [+9]
      412 GETTABLEKS                       R30 R1 K76 ["variant"]
      414 GETUPVAL                         R31 4
      415 GETTABLEKS                       R31 R31 K77 ["SingleWithTime"]
      417 JUMPIFEQ                         R30 R31 ; [+2]
      419 LOADB                            R29 0 +1
      420 LOADB                            R29 1
      421 SETTABLEKS                       R29 R28 K73 ["showTimeDropdown"]
      423 CALL                             R26 2 1
      424 SETTABLEKS                       R26 R25 K17 ["Calendar"]
      426 GETUPVAL                         R26 3
      427 GETTABLEKS                       R26 R26 K10 ["createElement"]
      429 GETUPVAL                         R27 15
      430 DUPTABLE                         R28 K82 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0 auto-y flex-fill gap-small padding-top-large"}]
      431 DUPTABLE                         R29 K85 [{"ApplyButton", "CancelButton"}]
      432 GETUPVAL                         R30 3
      433 GETTABLEKS                       R30 R30 K10 ["createElement"]
      435 GETUPVAL                         R31 17
      436 DUPTABLE                         R32 K86 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      437 GETTABLEKS                       R34 R1 K76 ["variant"]
      439 GETUPVAL                         R35 4
      440 GETTABLEKS                       R35 R35 K78 ["Single"]
      442 JUMPIFEQ                         R34 R35 ; [+12]
      444 GETUPVAL                         R34 6
      445 GETTABLEKS                       R34 R34 K9 ["FoundationDateTimePickerTimeVariantEnabled"]
      447 JUMPIFNOT                        R34 ; [+13]
      448 GETTABLEKS                       R34 R1 K76 ["variant"]
      450 GETUPVAL                         R35 4
      451 GETTABLEKS                       R35 R35 K77 ["SingleWithTime"]
      453 JUMPIFNOTEQ                      R34 R35 ; [+7]
      455 GETTABLEN                        R34 R8 1
      456 JUMPIFEQKNIL                     R34 ; [+2]
      458 LOADB                            R33 0 +1
      459 LOADB                            R33 1
      460 JUMP                             ; [+27]
      461 GETTABLEKS                       R34 R1 K76 ["variant"]
      463 GETUPVAL                         R35 4
      464 GETTABLEKS                       R35 R35 K79 ["Dual"]
      466 JUMPIFNOTEQ                      R34 R35 ; [+20]
      468 LOADB                            R33 1
      469 GETTABLEN                        R34 R8 1
      470 JUMPIFEQKNIL                     R34 ; [+17]
      472 LOADB                            R33 1
      473 GETTABLEN                        R34 R8 2
      474 JUMPIFEQKNIL                     R34 ; [+13]
      476 GETTABLEN                        R34 R8 1
      477 GETTABLEKS                       R34 R34 K87 ["UnixTimestamp"]
      479 GETTABLEN                        R35 R8 2
      480 GETTABLEKS                       R35 R35 K87 ["UnixTimestamp"]
      482 JUMPIFLT                         R35 R34 ; [+2]
      484 LOADB                            R33 0 +1
      485 LOADB                            R33 1
      486 JUMP                             ; [+1]
      487 LOADB                            R33 0
      488 SETTABLEKS                       R33 R32 K23 ["isDisabled"]
      490 SETTABLEKS                       R13 R32 K37 ["onActivated"]
      492 GETUPVAL                         R33 12
      493 LOADK                            R35 K88 ["CommonUI.Controls.Action.Apply"]
      494 NAMECALL                         R33 R33 K40 ["FormatByKey"]
      496 CALL                             R33 2 1
      497 SETTABLEKS                       R33 R32 K33 ["text"]
      499 GETUPVAL                         R33 18
      500 GETTABLEKS                       R33 R33 K89 ["Emphasis"]
      502 SETTABLEKS                       R33 R32 K76 ["variant"]
      504 LOADK                            R34 K90 ["%*--apply-button"]
      505 GETTABLEKS                       R36 R1 K13 ["testId"]
      507 NAMECALL                         R34 R34 K43 ["format"]
      509 CALL                             R34 2 1
      510 MOVE                             R33 R34
      511 SETTABLEKS                       R33 R32 K13 ["testId"]
      513 CALL                             R30 2 1
      514 SETTABLEKS                       R30 R29 K83 ["ApplyButton"]
      516 GETUPVAL                         R30 3
      517 GETTABLEKS                       R30 R30 K10 ["createElement"]
      519 GETUPVAL                         R31 17
      520 DUPTABLE                         R32 K91 [{"onActivated", "text", "variant", "testId"}]
      521 SETTABLEKS                       R10 R32 K37 ["onActivated"]
      523 GETUPVAL                         R33 12
      524 LOADK                            R35 K92 ["CommonUI.Controls.Action.Cancel"]
      525 NAMECALL                         R33 R33 K40 ["FormatByKey"]
      527 CALL                             R33 2 1
      528 SETTABLEKS                       R33 R32 K33 ["text"]
      530 GETUPVAL                         R33 18
      531 GETTABLEKS                       R33 R33 K60 ["Standard"]
      533 SETTABLEKS                       R33 R32 K76 ["variant"]
      535 LOADK                            R34 K93 ["%*--cancel-button"]
      536 GETTABLEKS                       R36 R1 K13 ["testId"]
      538 NAMECALL                         R34 R34 K43 ["format"]
      540 CALL                             R34 2 1
      541 MOVE                             R33 R34
      542 SETTABLEKS                       R33 R32 K13 ["testId"]
      544 CALL                             R30 2 1
      545 SETTABLEKS                       R30 R29 K84 ["CancelButton"]
      547 CALL                             R26 3 1
      548 SETTABLEKS                       R26 R25 K66 ["BottomBar"]
      550 CALL                             R22 3 1
      551 CALL                             R19 3 1
      552 SETTABLEKS                       R19 R18 K17 ["Calendar"]
      554 CALL                             R15 3 -1
      555 RETURN                           R15 -1

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
       69 GETTABLEKS                       R12 R0 K16 ["Utility"]
       71 GETTABLEKS                       R12 R12 K19 ["Wrappers"]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R11 R11 K20 ["Services"]
       76 GETTABLEKS                       R11 R11 K21 ["LocalizationService"]
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R13 R0 K12 ["Components"]
       82 GETTABLEKS                       R13 R13 K22 ["Popover"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R14 R0 K14 ["Enums"]
       89 GETTABLEKS                       R14 R14 K23 ["PopoverSide"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETTABLEKS                       R15 R0 K12 ["Components"]
       96 GETTABLEKS                       R15 R15 K24 ["TextInput"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K6 [require]
      101 GETTABLEKS                       R16 R0 K16 ["Utility"]
      103 GETTABLEKS                       R16 R16 K25 ["Localization"]
      105 GETTABLEKS                       R16 R16 K26 ["Translator"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K6 [require]
      110 GETTABLEKS                       R17 R0 K12 ["Components"]
      112 GETTABLEKS                       R17 R17 K27 ["Types"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K6 [require]
      117 GETTABLEKS                       R18 R0 K12 ["Components"]
      119 GETTABLEKS                       R18 R18 K28 ["View"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K6 [require]
      124 GETTABLEKS                       R19 R0 K29 ["Providers"]
      126 GETTABLEKS                       R19 R19 K30 ["Style"]
      128 GETTABLEKS                       R19 R19 K31 ["useTokens"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K6 [require]
      133 GETTABLEKS                       R20 R0 K16 ["Utility"]
      135 GETTABLEKS                       R20 R20 K32 ["withCommonProps"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K6 [require]
      140 GETTABLEKS                       R21 R0 K16 ["Utility"]
      142 GETTABLEKS                       R21 R21 K33 ["withDefaults"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K6 [require]
      147 GETTABLEKS                       R22 R0 K14 ["Enums"]
      149 GETTABLEKS                       R22 R22 K34 ["DateTimePickerVariant"]
      151 CALL                             R21 1 1
      152 DUPTABLE                         R22 K39 [{["defaultDates"], ["variant"], ["testId"] = "--foundation-date-time-picker"}]
      153 NEWTABLE                         R23 0 1
      155 GETIMPORT                        R24 K42 [DateTime.now]
      157 CALL                             R24 0 -1
      158 SETLIST                          R23 R24 -1 [1]
      160 SETTABLEKS                       R23 R22 K35 ["defaultDates"]
      162 GETTABLEKS                       R23 R21 K43 ["Single"]
      164 SETTABLEKS                       R23 R22 K36 ["variant"]
      166 DUPCLOSURE                       R23 K44 [PROTO_5]
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R22
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R21
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R8
      186 GETTABLEKS                       R24 R3 K45 ["memo"]
      188 MOVE                             R25 R23
      189 CALL                             R24 1 -1
      190 RETURN                           R24 -1
