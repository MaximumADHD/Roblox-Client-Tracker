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
      140 CAPTURE                          UPVAL U4
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          VAL R8
      143 CAPTURE                          UPVAL U7
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R10
      146 NEWTABLE                         R15 0 3
      148 MOVE                             R16 R8
      149 MOVE                             R17 R10
      150 GETUPVAL                         R19 4
      151 GETTABLEKS                       R19 R19 K16 ["FoundationDateTimePickerTimeVariantEnabled"]
      153 JUMPIF                           R19 ; [+3]
      154 GETTABLEKS                       R18 R1 K15 ["onChanged"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R18
      158 SETLIST                          R15 R16 3 [1]
      160 CALL                             R13 2 1
      161 NEWCLOSURE                       R14 P4
      162 CAPTURE                          VAL R1
      163 CAPTURE                          UPVAL U5
      164 CAPTURE                          UPVAL U4
      165 CAPTURE                          VAL R8
      166 GETUPVAL                         R15 3
      167 GETTABLEKS                       R15 R15 K17 ["createElement"]
      169 GETUPVAL                         R16 8
      170 GETTABLEKS                       R16 R16 K18 ["Root"]
      172 DUPTABLE                         R17 K21 [{"isOpen", "testId"}]
      173 SETTABLEKS                       R3 R17 K19 ["isOpen"]
      175 GETTABLEKS                       R18 R1 K20 ["testId"]
      177 SETTABLEKS                       R18 R17 K20 ["testId"]
      179 DUPTABLE                         R18 K25 [{"DateInput", "Anchor", "Calendar"}]
      180 GETUPVAL                         R20 4
      181 GETTABLEKS                       R20 R20 K26 ["FoundationDateTimePickerAnchorBugFixEnabled"]
      183 JUMPIFNOT                        R20 ; [+77]
      184 GETUPVAL                         R19 3
      185 GETTABLEKS                       R19 R19 K17 ["createElement"]
      187 GETUPVAL                         R20 9
      188 GETUPVAL                         R21 10
      189 MOVE                             R22 R1
      190 DUPTABLE                         R23 K42 [{["hasError"], ["hint"], ["iconTrailing"], ["isDisabled"], ["isRequired"], ["key"] = "date-input", ["label"], ["onChanged"], ["onFocusGained"], ["placeholder"], ["ref"], ["selectableDateRange"], ["size"], ["text"], ["testId"], ["width"]}]
      191 GETTABLEKS                       R24 R1 K27 ["hasError"]
      193 SETTABLEKS                       R24 R23 K27 ["hasError"]
      195 GETTABLEKS                       R24 R1 K28 ["hint"]
      197 SETTABLEKS                       R24 R23 K28 ["hint"]
      199 DUPTABLE                         R24 K45 [{"name", "onActivated"}]
      200 GETUPVAL                         R25 11
      201 GETTABLEKS                       R25 R25 K24 ["Calendar"]
      203 SETTABLEKS                       R25 R24 K43 ["name"]
      205 SETTABLEKS                       R11 R24 K44 ["onActivated"]
      207 SETTABLEKS                       R24 R23 K29 ["iconTrailing"]
      209 GETTABLEKS                       R24 R1 K30 ["isDisabled"]
      211 SETTABLEKS                       R24 R23 K30 ["isDisabled"]
      213 GETTABLEKS                       R24 R1 K31 ["isRequired"]
      215 SETTABLEKS                       R24 R23 K31 ["isRequired"]
      217 GETTABLEKS                       R24 R1 K34 ["label"]
      219 SETTABLEKS                       R24 R23 K34 ["label"]
      221 SETTABLEKS                       R12 R23 K15 ["onChanged"]
      223 SETTABLEKS                       R11 R23 K35 ["onFocusGained"]
      225 GETUPVAL                         R24 12
      226 LOADK                            R26 K46 ["CommonUI.Controls.Label.SelectDate"]
      227 NAMECALL                         R24 R24 K47 ["FormatByKey"]
      229 CALL                             R24 2 1
      230 SETTABLEKS                       R24 R23 K36 ["placeholder"]
      232 SETTABLEKS                       R5 R23 K37 ["ref"]
      234 GETTABLEKS                       R24 R1 K38 ["selectableDateRange"]
      236 SETTABLEKS                       R24 R23 K38 ["selectableDateRange"]
      238 GETUPVAL                         R24 13
      239 GETTABLEKS                       R24 R24 K48 ["Medium"]
      241 SETTABLEKS                       R24 R23 K39 ["size"]
      243 SETTABLEKS                       R6 R23 K40 ["text"]
      245 LOADK                            R25 K49 ["%*--text-input"]
      246 GETTABLEKS                       R27 R1 K20 ["testId"]
      248 NAMECALL                         R25 R25 K12 ["format"]
      250 CALL                             R25 2 1
      251 MOVE                             R24 R25
      252 SETTABLEKS                       R24 R23 K20 ["testId"]
      254 GETTABLEKS                       R24 R1 K41 ["width"]
      256 SETTABLEKS                       R24 R23 K41 ["width"]
      258 CALL                             R21 2 -1
      259 CALL                             R19 -1 1
      260 JUMP                             ; [+83]
      261 GETUPVAL                         R19 3
      262 GETTABLEKS                       R19 R19 K17 ["createElement"]
      264 GETUPVAL                         R20 8
      265 GETTABLEKS                       R20 R20 K23 ["Anchor"]
      267 LOADNIL                          R21
      268 NEWTABLE                         R22 0 1
      270 GETUPVAL                         R23 3
      271 GETTABLEKS                       R23 R23 K17 ["createElement"]
      273 GETUPVAL                         R24 9
      274 DUPTABLE                         R25 K50 [{["hasError"], ["hint"], ["iconTrailing"], ["isDisabled"], ["isRequired"], ["key"] = "date-input", ["label"], ["onChanged"], ["onFocusGained"], ["placeholder"], ["selectableDateRange"], ["size"], ["text"], ["width"], ["testId"]}]
      275 GETTABLEKS                       R26 R1 K27 ["hasError"]
      277 SETTABLEKS                       R26 R25 K27 ["hasError"]
      279 GETTABLEKS                       R26 R1 K28 ["hint"]
      281 SETTABLEKS                       R26 R25 K28 ["hint"]
      283 DUPTABLE                         R26 K45 [{"name", "onActivated"}]
      284 GETUPVAL                         R27 11
      285 GETTABLEKS                       R27 R27 K24 ["Calendar"]
      287 SETTABLEKS                       R27 R26 K43 ["name"]
      289 SETTABLEKS                       R11 R26 K44 ["onActivated"]
      291 SETTABLEKS                       R26 R25 K29 ["iconTrailing"]
      293 GETTABLEKS                       R26 R1 K30 ["isDisabled"]
      295 SETTABLEKS                       R26 R25 K30 ["isDisabled"]
      297 GETTABLEKS                       R26 R1 K31 ["isRequired"]
      299 SETTABLEKS                       R26 R25 K31 ["isRequired"]
      301 GETTABLEKS                       R26 R1 K34 ["label"]
      303 SETTABLEKS                       R26 R25 K34 ["label"]
      305 SETTABLEKS                       R12 R25 K15 ["onChanged"]
      307 SETTABLEKS                       R11 R25 K35 ["onFocusGained"]
      309 GETUPVAL                         R26 12
      310 LOADK                            R28 K46 ["CommonUI.Controls.Label.SelectDate"]
      311 NAMECALL                         R26 R26 K47 ["FormatByKey"]
      313 CALL                             R26 2 1
      314 SETTABLEKS                       R26 R25 K36 ["placeholder"]
      316 GETTABLEKS                       R26 R1 K38 ["selectableDateRange"]
      318 SETTABLEKS                       R26 R25 K38 ["selectableDateRange"]
      320 GETUPVAL                         R26 13
      321 GETTABLEKS                       R26 R26 K48 ["Medium"]
      323 SETTABLEKS                       R26 R25 K39 ["size"]
      325 SETTABLEKS                       R6 R25 K40 ["text"]
      327 GETTABLEKS                       R26 R1 K41 ["width"]
      329 SETTABLEKS                       R26 R25 K41 ["width"]
      331 LOADK                            R27 K49 ["%*--text-input"]
      332 GETTABLEKS                       R29 R1 K20 ["testId"]
      334 NAMECALL                         R27 R27 K12 ["format"]
      336 CALL                             R27 2 1
      337 MOVE                             R26 R27
      338 SETTABLEKS                       R26 R25 K20 ["testId"]
      340 CALL                             R23 2 -1
      341 SETLIST                          R22 R23 -1 [1]
      343 CALL                             R19 3 1
      344 SETTABLEKS                       R19 R18 K22 ["DateInput"]
      346 GETUPVAL                         R20 4
      347 GETTABLEKS                       R20 R20 K26 ["FoundationDateTimePickerAnchorBugFixEnabled"]
      349 JUMPIFNOT                        R20 ; [+11]
      350 GETUPVAL                         R19 3
      351 GETTABLEKS                       R19 R19 K17 ["createElement"]
      353 GETUPVAL                         R20 8
      354 GETTABLEKS                       R20 R20 K23 ["Anchor"]
      356 DUPTABLE                         R21 K52 [{"anchorRef"}]
      357 SETTABLEKS                       R5 R21 K51 ["anchorRef"]
      359 CALL                             R19 2 1
      360 JUMP                             ; [+1]
      361 LOADNIL                          R19
      362 SETTABLEKS                       R19 R18 K23 ["Anchor"]
      364 GETUPVAL                         R19 3
      365 GETTABLEKS                       R19 R19 K17 ["createElement"]
      367 GETUPVAL                         R20 8
      368 GETTABLEKS                       R20 R20 K53 ["Content"]
      370 DUPTABLE                         R21 K60 [{["hasArrow"] = False, ["onPressedOutside"], ["side"], ["selection"], ["selectionGroup"]}]
      371 SETTABLEKS                       R10 R21 K56 ["onPressedOutside"]
      373 DUPTABLE                         R22 K63 [{"position", "offset"}]
      374 GETUPVAL                         R23 14
      375 GETTABLEKS                       R23 R23 K64 ["Bottom"]
      377 SETTABLEKS                       R23 R22 K61 ["position"]
      379 GETTABLEKS                       R24 R2 K65 ["Stroke"]
      381 GETTABLEKS                       R24 R24 K66 ["Standard"]
      383 GETTABLEKS                       R25 R2 K67 ["Padding"]
      385 GETTABLEKS                       R25 R25 K68 ["Small"]
      387 ADD                              R23 R24 R25
      388 SETTABLEKS                       R23 R22 K62 ["offset"]
      390 SETTABLEKS                       R22 R21 K57 ["side"]
      392 GETTABLEKS                       R22 R1 K58 ["selection"]
      394 SETTABLEKS                       R22 R21 K58 ["selection"]
      396 GETTABLEKS                       R22 R1 K59 ["selectionGroup"]
      398 SETTABLEKS                       R22 R21 K59 ["selectionGroup"]
      400 MOVE                             R22 R3
      401 JUMPIFNOT                        R22 ; [+206]
      402 GETUPVAL                         R22 3
      403 GETTABLEKS                       R22 R22 K17 ["createElement"]
      405 GETUPVAL                         R23 15
      406 DUPTABLE                         R24 K71 [{["tag"] = "padding-large col stroke-default radius-medium auto-xy"}]
      407 DUPTABLE                         R25 K73 [{"Calendar", "BottomBar"}]
      408 GETUPVAL                         R26 3
      409 GETTABLEKS                       R26 R26 K17 ["createElement"]
      411 GETUPVAL                         R27 16
      412 DUPTABLE                         R28 K81 [{["defaultDates"], ["LayoutOrder"] = 1, ["onSelectedDateChanged"], ["selectableDateRange"], ["showStartDateTimeCalendarInput"], ["showEndDateTimeCalendarInput"], ["showTimeDropdown"], ["testId"] = "--foundation-calendar"}]
      413 SETTABLEKS                       R8 R28 K2 ["defaultDates"]
      415 SETTABLEKS                       R9 R28 K76 ["onSelectedDateChanged"]
      417 GETTABLEKS                       R29 R1 K38 ["selectableDateRange"]
      419 SETTABLEKS                       R29 R28 K38 ["selectableDateRange"]
      421 GETUPVAL                         R30 4
      422 GETTABLEKS                       R30 R30 K16 ["FoundationDateTimePickerTimeVariantEnabled"]
      424 JUMPIFNOT                        R30 ; [+10]
      425 GETTABLEKS                       R30 R1 K7 ["variant"]
      427 GETUPVAL                         R31 5
      428 GETTABLEKS                       R31 R31 K13 ["SingleWithTime"]
      430 JUMPIFNOTEQ                      R30 R31 ; [+2]
      432 LOADB                            R29 0 +1
      433 LOADB                            R29 1
      434 JUMP                             ; [+17]
      435 LOADB                            R29 1
      436 GETTABLEKS                       R30 R1 K7 ["variant"]
      438 GETUPVAL                         R31 5
      439 GETTABLEKS                       R31 R31 K82 ["Single"]
      441 JUMPIFEQ                         R30 R31 ; [+10]
      443 GETTABLEKS                       R30 R1 K7 ["variant"]
      445 GETUPVAL                         R31 5
      446 GETTABLEKS                       R31 R31 K8 ["Dual"]
      448 JUMPIFEQ                         R30 R31 ; [+2]
      450 LOADB                            R29 0 +1
      451 LOADB                            R29 1
      452 SETTABLEKS                       R29 R28 K77 ["showStartDateTimeCalendarInput"]
      454 GETTABLEKS                       R30 R1 K7 ["variant"]
      456 GETUPVAL                         R31 5
      457 GETTABLEKS                       R31 R31 K8 ["Dual"]
      459 JUMPIFEQ                         R30 R31 ; [+2]
      461 LOADB                            R29 0 +1
      462 LOADB                            R29 1
      463 SETTABLEKS                       R29 R28 K78 ["showEndDateTimeCalendarInput"]
      465 GETUPVAL                         R29 4
      466 GETTABLEKS                       R29 R29 K16 ["FoundationDateTimePickerTimeVariantEnabled"]
      468 JUMPIFNOT                        R29 ; [+9]
      469 GETTABLEKS                       R30 R1 K7 ["variant"]
      471 GETUPVAL                         R31 5
      472 GETTABLEKS                       R31 R31 K13 ["SingleWithTime"]
      474 JUMPIFEQ                         R30 R31 ; [+2]
      476 LOADB                            R29 0 +1
      477 LOADB                            R29 1
      478 SETTABLEKS                       R29 R28 K79 ["showTimeDropdown"]
      480 CALL                             R26 2 1
      481 SETTABLEKS                       R26 R25 K24 ["Calendar"]
      483 GETUPVAL                         R26 3
      484 GETTABLEKS                       R26 R26 K17 ["createElement"]
      486 GETUPVAL                         R27 15
      487 DUPTABLE                         R28 K85 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0 auto-y flex-fill gap-small padding-top-large"}]
      488 DUPTABLE                         R29 K88 [{"ApplyButton", "CancelButton"}]
      489 GETUPVAL                         R30 3
      490 GETTABLEKS                       R30 R30 K17 ["createElement"]
      492 GETUPVAL                         R31 17
      493 DUPTABLE                         R32 K89 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      494 GETTABLEKS                       R34 R1 K7 ["variant"]
      496 GETUPVAL                         R35 5
      497 GETTABLEKS                       R35 R35 K82 ["Single"]
      499 JUMPIFEQ                         R34 R35 ; [+12]
      501 GETUPVAL                         R34 4
      502 GETTABLEKS                       R34 R34 K16 ["FoundationDateTimePickerTimeVariantEnabled"]
      504 JUMPIFNOT                        R34 ; [+13]
      505 GETTABLEKS                       R34 R1 K7 ["variant"]
      507 GETUPVAL                         R35 5
      508 GETTABLEKS                       R35 R35 K13 ["SingleWithTime"]
      510 JUMPIFNOTEQ                      R34 R35 ; [+7]
      512 GETTABLEN                        R34 R8 1
      513 JUMPIFEQKNIL                     R34 ; [+2]
      515 LOADB                            R33 0 +1
      516 LOADB                            R33 1
      517 JUMP                             ; [+27]
      518 GETTABLEKS                       R34 R1 K7 ["variant"]
      520 GETUPVAL                         R35 5
      521 GETTABLEKS                       R35 R35 K8 ["Dual"]
      523 JUMPIFNOTEQ                      R34 R35 ; [+20]
      525 LOADB                            R33 1
      526 GETTABLEN                        R34 R8 1
      527 JUMPIFEQKNIL                     R34 ; [+17]
      529 LOADB                            R33 1
      530 GETTABLEN                        R34 R8 2
      531 JUMPIFEQKNIL                     R34 ; [+13]
      533 GETTABLEN                        R34 R8 1
      534 GETTABLEKS                       R34 R34 K90 ["UnixTimestamp"]
      536 GETTABLEN                        R35 R8 2
      537 GETTABLEKS                       R35 R35 K90 ["UnixTimestamp"]
      539 JUMPIFLT                         R35 R34 ; [+2]
      541 LOADB                            R33 0 +1
      542 LOADB                            R33 1
      543 JUMP                             ; [+1]
      544 LOADB                            R33 0
      545 SETTABLEKS                       R33 R32 K30 ["isDisabled"]
      547 SETTABLEKS                       R13 R32 K44 ["onActivated"]
      549 GETUPVAL                         R33 12
      550 LOADK                            R35 K91 ["CommonUI.Controls.Action.Apply"]
      551 NAMECALL                         R33 R33 K47 ["FormatByKey"]
      553 CALL                             R33 2 1
      554 SETTABLEKS                       R33 R32 K40 ["text"]
      556 GETUPVAL                         R33 18
      557 GETTABLEKS                       R33 R33 K92 ["Emphasis"]
      559 SETTABLEKS                       R33 R32 K7 ["variant"]
      561 LOADK                            R34 K93 ["%*--apply-button"]
      562 GETTABLEKS                       R36 R1 K20 ["testId"]
      564 NAMECALL                         R34 R34 K12 ["format"]
      566 CALL                             R34 2 1
      567 MOVE                             R33 R34
      568 SETTABLEKS                       R33 R32 K20 ["testId"]
      570 CALL                             R30 2 1
      571 SETTABLEKS                       R30 R29 K86 ["ApplyButton"]
      573 GETUPVAL                         R30 3
      574 GETTABLEKS                       R30 R30 K17 ["createElement"]
      576 GETUPVAL                         R31 17
      577 DUPTABLE                         R32 K94 [{"onActivated", "text", "variant", "testId"}]
      578 SETTABLEKS                       R10 R32 K44 ["onActivated"]
      580 GETUPVAL                         R33 12
      581 LOADK                            R35 K95 ["CommonUI.Controls.Action.Cancel"]
      582 NAMECALL                         R33 R33 K47 ["FormatByKey"]
      584 CALL                             R33 2 1
      585 SETTABLEKS                       R33 R32 K40 ["text"]
      587 GETUPVAL                         R33 18
      588 GETTABLEKS                       R33 R33 K66 ["Standard"]
      590 SETTABLEKS                       R33 R32 K7 ["variant"]
      592 LOADK                            R34 K96 ["%*--cancel-button"]
      593 GETTABLEKS                       R36 R1 K20 ["testId"]
      595 NAMECALL                         R34 R34 K12 ["format"]
      597 CALL                             R34 2 1
      598 MOVE                             R33 R34
      599 SETTABLEKS                       R33 R32 K20 ["testId"]
      601 CALL                             R30 2 1
      602 SETTABLEKS                       R30 R29 K87 ["CancelButton"]
      604 CALL                             R26 3 1
      605 SETTABLEKS                       R26 R25 K72 ["BottomBar"]
      607 CALL                             R22 3 1
      608 CALL                             R19 3 1
      609 SETTABLEKS                       R19 R18 K24 ["Calendar"]
      611 CALL                             R15 3 -1
      612 RETURN                           R15 -1

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
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R6
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
