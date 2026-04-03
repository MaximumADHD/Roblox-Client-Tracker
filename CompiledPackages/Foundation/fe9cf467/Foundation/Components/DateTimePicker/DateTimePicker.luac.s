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
        6 JUMPIFNOTEQ                      R0 R1 ; [+57]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R0 R1 K3 ["formatLocalTime"]
       15 GETUPVAL                         R2 4
       16 GETTABLEN                        R1 R2 1
       17 CALL                             R0 1 1
       18 JUMP                             ; [+11]
       19 GETUPVAL                         R1 4
       20 GETTABLEN                        R0 R1 1
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R2 R3 K4 ["DATE_COMPOSITE_TOKEN"]
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R3 R4 K5 ["RobloxLocaleId"]
       27 NAMECALL                         R0 R0 K6 ["FormatLocalTime"]
       29 CALL                             R0 3 1
       30 GETUPVAL                         R3 4
       31 GETTABLEN                        R2 R3 2
       32 JUMPIFNOT                        R2 ; [+23]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R2 R3 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       36 JUMPIFNOT                        R2 ; [+7]
       37 GETUPVAL                         R2 3
       38 GETTABLEKS                       R1 R2 K3 ["formatLocalTime"]
       40 GETUPVAL                         R3 4
       41 GETTABLEN                        R2 R3 2
       42 CALL                             R1 1 1
       43 JUMP                             ; [+13]
       44 GETUPVAL                         R2 4
       45 GETTABLEN                        R1 R2 2
       46 GETUPVAL                         R4 3
       47 GETTABLEKS                       R3 R4 K4 ["DATE_COMPOSITE_TOKEN"]
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R4 R5 K5 ["RobloxLocaleId"]
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
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R2 R3 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       68 JUMPIFNOT                        R2 ; [+17]
       69 GETUPVAL                         R2 3
       70 GETTABLEKS                       R1 R2 K3 ["formatLocalTime"]
       72 GETUPVAL                         R3 4
       73 GETTABLEN                        R2 R3 1
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R4 R5 K0 ["variant"]
       77 GETUPVAL                         R6 1
       78 GETTABLEKS                       R5 R6 K9 ["SingleWithTime"]
       80 JUMPIFEQ                         R4 R5 ; [+2]
       82 LOADB                            R3 0 +1
       83 LOADB                            R3 1
       84 CALL                             R1 2 1
       85 JUMP                             ; [+11]
       86 GETUPVAL                         R2 4
       87 GETTABLEN                        R1 R2 1
       88 GETUPVAL                         R4 3
       89 GETTABLEKS                       R3 R4 K4 ["DATE_COMPOSITE_TOKEN"]
       91 GETUPVAL                         R5 5
       92 GETTABLEKS                       R4 R5 K5 ["RobloxLocaleId"]
       94 NAMECALL                         R1 R1 K6 ["FormatLocalTime"]
       96 CALL                             R1 3 1
       97 CALL                             R0 1 0
       98 GETUPVAL                         R1 2
       99 GETTABLEKS                       R0 R1 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
      101 JUMPIF                           R0 ; [+8]
      102 GETUPVAL                         R1 0
      103 GETTABLEKS                       R0 R1 K10 ["onChanged"]
      105 GETUPVAL                         R2 4
      106 GETTABLEN                        R1 R2 1
      107 GETUPVAL                         R3 4
      108 GETTABLEN                        R2 R3 2
      109 CALL                             R0 2 0
      110 GETUPVAL                         R0 7
      111 CALL                             R0 0 0
      112 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["variant"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Single"]
        6 JUMPIFEQ                         R0 R1 ; [+13]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       11 JUMPIFNOT                        R0 ; [+15]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["variant"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K3 ["SingleWithTime"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+8]
       20 GETUPVAL                         R2 3
       21 GETTABLEN                        R1 R2 1
       22 JUMPIFEQKNIL                     R1 ; [+2]
       24 LOADB                            R0 0 +1
       25 LOADB                            R0 1
       26 RETURN                           R0 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R0 R1 K0 ["variant"]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R1 R2 K4 ["Dual"]
       33 JUMPIFNOTEQ                      R0 R1 ; [+24]
       35 LOADB                            R0 1
       36 GETUPVAL                         R2 3
       37 GETTABLEN                        R1 R2 1
       38 JUMPIFEQKNIL                     R1 ; [+18]
       40 LOADB                            R0 1
       41 GETUPVAL                         R2 3
       42 GETTABLEN                        R1 R2 2
       43 JUMPIFEQKNIL                     R1 ; [+13]
       45 GETUPVAL                         R3 3
       46 GETTABLEN                        R2 R3 1
       47 GETTABLEKS                       R1 R2 K5 ["UnixTimestamp"]
       49 GETUPVAL                         R4 3
       50 GETTABLEN                        R3 R4 2
       51 GETTABLEKS                       R2 R3 K5 ["UnixTimestamp"]
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
      140 CAPTURE                          UPVAL U4
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          VAL R8
      143 CAPTURE                          UPVAL U7
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R10
      146 NEWTABLE                         R15 0 3
      148 MOVE                             R16 R8
      149 MOVE                             R17 R10
      150 GETUPVAL                         R20 4
      151 GETTABLEKS                       R19 R20 K16 ["FoundationDateTimePickerTimeVariantEnabled"]
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
      166 GETUPVAL                         R16 3
      167 GETTABLEKS                       R15 R16 K17 ["createElement"]
      169 GETUPVAL                         R17 8
      170 GETTABLEKS                       R16 R17 K18 ["Root"]
      172 DUPTABLE                         R17 K21 [{"isOpen", "testId"}]
      173 SETTABLEKS                       R3 R17 K19 ["isOpen"]
      175 GETTABLEKS                       R18 R1 K20 ["testId"]
      177 SETTABLEKS                       R18 R17 K20 ["testId"]
      179 DUPTABLE                         R18 K25 [{"DateInput", "Anchor", "Calendar"}]
      180 GETUPVAL                         R21 4
      181 GETTABLEKS                       R20 R21 K26 ["FoundationDateTimePickerAnchorBugFixEnabled"]
      183 JUMPIFNOT                        R20 ; [+80]
      184 GETUPVAL                         R20 3
      185 GETTABLEKS                       R19 R20 K17 ["createElement"]
      187 GETUPVAL                         R20 9
      188 GETUPVAL                         R21 10
      189 MOVE                             R22 R1
      190 DUPTABLE                         R23 K41 [{"hasError", "hint", "iconTrailing", "isDisabled", "isRequired", "key", "label", "onChanged", "onFocusGained", "placeholder", "ref", "selectableDateRange", "size", "text", "testId", "width"}]
      191 GETTABLEKS                       R24 R1 K27 ["hasError"]
      193 SETTABLEKS                       R24 R23 K27 ["hasError"]
      195 GETTABLEKS                       R24 R1 K28 ["hint"]
      197 SETTABLEKS                       R24 R23 K28 ["hint"]
      199 DUPTABLE                         R24 K44 [{"name", "onActivated"}]
      200 GETUPVAL                         R26 11
      201 GETTABLEKS                       R25 R26 K24 ["Calendar"]
      203 SETTABLEKS                       R25 R24 K42 ["name"]
      205 SETTABLEKS                       R11 R24 K43 ["onActivated"]
      207 SETTABLEKS                       R24 R23 K29 ["iconTrailing"]
      209 GETTABLEKS                       R24 R1 K30 ["isDisabled"]
      211 SETTABLEKS                       R24 R23 K30 ["isDisabled"]
      213 GETTABLEKS                       R24 R1 K31 ["isRequired"]
      215 SETTABLEKS                       R24 R23 K31 ["isRequired"]
      217 LOADK                            R24 K45 ["date-input"]
      218 SETTABLEKS                       R24 R23 K32 ["key"]
      220 GETTABLEKS                       R24 R1 K33 ["label"]
      222 SETTABLEKS                       R24 R23 K33 ["label"]
      224 SETTABLEKS                       R12 R23 K15 ["onChanged"]
      226 SETTABLEKS                       R11 R23 K34 ["onFocusGained"]
      228 GETUPVAL                         R24 12
      229 LOADK                            R26 K46 ["CommonUI.Controls.Label.SelectDate"]
      230 NAMECALL                         R24 R24 K47 ["FormatByKey"]
      232 CALL                             R24 2 1
      233 SETTABLEKS                       R24 R23 K35 ["placeholder"]
      235 SETTABLEKS                       R5 R23 K36 ["ref"]
      237 GETTABLEKS                       R24 R1 K37 ["selectableDateRange"]
      239 SETTABLEKS                       R24 R23 K37 ["selectableDateRange"]
      241 GETUPVAL                         R25 13
      242 GETTABLEKS                       R24 R25 K48 ["Medium"]
      244 SETTABLEKS                       R24 R23 K38 ["size"]
      246 SETTABLEKS                       R6 R23 K39 ["text"]
      248 LOADK                            R25 K49 ["%*--text-input"]
      249 GETTABLEKS                       R27 R1 K20 ["testId"]
      251 NAMECALL                         R25 R25 K12 ["format"]
      253 CALL                             R25 2 1
      254 MOVE                             R24 R25
      255 SETTABLEKS                       R24 R23 K20 ["testId"]
      257 GETTABLEKS                       R24 R1 K40 ["width"]
      259 SETTABLEKS                       R24 R23 K40 ["width"]
      261 CALL                             R21 2 -1
      262 CALL                             R19 -1 1
      263 JUMP                             ; [+86]
      264 GETUPVAL                         R20 3
      265 GETTABLEKS                       R19 R20 K17 ["createElement"]
      267 GETUPVAL                         R21 8
      268 GETTABLEKS                       R20 R21 K23 ["Anchor"]
      270 LOADNIL                          R21
      271 NEWTABLE                         R22 0 1
      273 GETUPVAL                         R24 3
      274 GETTABLEKS                       R23 R24 K17 ["createElement"]
      276 GETUPVAL                         R24 9
      277 DUPTABLE                         R25 K50 [{"hasError", "hint", "iconTrailing", "isDisabled", "isRequired", "key", "label", "onChanged", "onFocusGained", "placeholder", "selectableDateRange", "size", "text", "width", "testId"}]
      278 GETTABLEKS                       R26 R1 K27 ["hasError"]
      280 SETTABLEKS                       R26 R25 K27 ["hasError"]
      282 GETTABLEKS                       R26 R1 K28 ["hint"]
      284 SETTABLEKS                       R26 R25 K28 ["hint"]
      286 DUPTABLE                         R26 K44 [{"name", "onActivated"}]
      287 GETUPVAL                         R28 11
      288 GETTABLEKS                       R27 R28 K24 ["Calendar"]
      290 SETTABLEKS                       R27 R26 K42 ["name"]
      292 SETTABLEKS                       R11 R26 K43 ["onActivated"]
      294 SETTABLEKS                       R26 R25 K29 ["iconTrailing"]
      296 GETTABLEKS                       R26 R1 K30 ["isDisabled"]
      298 SETTABLEKS                       R26 R25 K30 ["isDisabled"]
      300 GETTABLEKS                       R26 R1 K31 ["isRequired"]
      302 SETTABLEKS                       R26 R25 K31 ["isRequired"]
      304 LOADK                            R26 K45 ["date-input"]
      305 SETTABLEKS                       R26 R25 K32 ["key"]
      307 GETTABLEKS                       R26 R1 K33 ["label"]
      309 SETTABLEKS                       R26 R25 K33 ["label"]
      311 SETTABLEKS                       R12 R25 K15 ["onChanged"]
      313 SETTABLEKS                       R11 R25 K34 ["onFocusGained"]
      315 GETUPVAL                         R26 12
      316 LOADK                            R28 K46 ["CommonUI.Controls.Label.SelectDate"]
      317 NAMECALL                         R26 R26 K47 ["FormatByKey"]
      319 CALL                             R26 2 1
      320 SETTABLEKS                       R26 R25 K35 ["placeholder"]
      322 GETTABLEKS                       R26 R1 K37 ["selectableDateRange"]
      324 SETTABLEKS                       R26 R25 K37 ["selectableDateRange"]
      326 GETUPVAL                         R27 13
      327 GETTABLEKS                       R26 R27 K48 ["Medium"]
      329 SETTABLEKS                       R26 R25 K38 ["size"]
      331 SETTABLEKS                       R6 R25 K39 ["text"]
      333 GETTABLEKS                       R26 R1 K40 ["width"]
      335 SETTABLEKS                       R26 R25 K40 ["width"]
      337 LOADK                            R27 K49 ["%*--text-input"]
      338 GETTABLEKS                       R29 R1 K20 ["testId"]
      340 NAMECALL                         R27 R27 K12 ["format"]
      342 CALL                             R27 2 1
      343 MOVE                             R26 R27
      344 SETTABLEKS                       R26 R25 K20 ["testId"]
      346 CALL                             R23 2 -1
      347 SETLIST                          R22 R23 -1 [1]
      349 CALL                             R19 3 1
      350 SETTABLEKS                       R19 R18 K22 ["DateInput"]
      352 GETUPVAL                         R21 4
      353 GETTABLEKS                       R20 R21 K26 ["FoundationDateTimePickerAnchorBugFixEnabled"]
      355 JUMPIFNOT                        R20 ; [+11]
      356 GETUPVAL                         R20 3
      357 GETTABLEKS                       R19 R20 K17 ["createElement"]
      359 GETUPVAL                         R21 8
      360 GETTABLEKS                       R20 R21 K23 ["Anchor"]
      362 DUPTABLE                         R21 K52 [{"anchorRef"}]
      363 SETTABLEKS                       R5 R21 K51 ["anchorRef"]
      365 CALL                             R19 2 1
      366 JUMP                             ; [+1]
      367 LOADNIL                          R19
      368 SETTABLEKS                       R19 R18 K23 ["Anchor"]
      370 GETUPVAL                         R20 3
      371 GETTABLEKS                       R19 R20 K17 ["createElement"]
      373 GETUPVAL                         R21 8
      374 GETTABLEKS                       R20 R21 K53 ["Content"]
      376 DUPTABLE                         R21 K59 [{"hasArrow", "onPressedOutside", "side", "selection", "selectionGroup"}]
      377 LOADB                            R22 0
      378 SETTABLEKS                       R22 R21 K54 ["hasArrow"]
      380 SETTABLEKS                       R10 R21 K55 ["onPressedOutside"]
      382 DUPTABLE                         R22 K62 [{"position", "offset"}]
      383 GETUPVAL                         R24 14
      384 GETTABLEKS                       R23 R24 K63 ["Bottom"]
      386 SETTABLEKS                       R23 R22 K60 ["position"]
      388 GETTABLEKS                       R25 R2 K64 ["Stroke"]
      390 GETTABLEKS                       R24 R25 K65 ["Standard"]
      392 GETTABLEKS                       R26 R2 K66 ["Padding"]
      394 GETTABLEKS                       R25 R26 K67 ["Small"]
      396 ADD                              R23 R24 R25
      397 SETTABLEKS                       R23 R22 K61 ["offset"]
      399 SETTABLEKS                       R22 R21 K56 ["side"]
      401 GETTABLEKS                       R22 R1 K57 ["selection"]
      403 SETTABLEKS                       R22 R21 K57 ["selection"]
      405 GETTABLEKS                       R22 R1 K58 ["selectionGroup"]
      407 SETTABLEKS                       R22 R21 K58 ["selectionGroup"]
      409 MOVE                             R22 R3
      410 JUMPIFNOT                        R22 ; [+221]
      411 GETUPVAL                         R23 3
      412 GETTABLEKS                       R22 R23 K17 ["createElement"]
      414 GETUPVAL                         R23 15
      415 DUPTABLE                         R24 K69 [{"tag"}]
      416 LOADK                            R25 K70 ["padding-large col stroke-default radius-medium auto-xy"]
      417 SETTABLEKS                       R25 R24 K68 ["tag"]
      419 DUPTABLE                         R25 K72 [{"Calendar", "BottomBar"}]
      420 GETUPVAL                         R27 3
      421 GETTABLEKS                       R26 R27 K17 ["createElement"]
      423 GETUPVAL                         R27 16
      424 DUPTABLE                         R28 K78 [{"defaultDates", "LayoutOrder", "onSelectedDateChanged", "selectableDateRange", "showStartDateTimeCalendarInput", "showEndDateTimeCalendarInput", "showTimeDropdown", "testId"}]
      425 SETTABLEKS                       R8 R28 K2 ["defaultDates"]
      427 LOADN                            R29 1
      428 SETTABLEKS                       R29 R28 K73 ["LayoutOrder"]
      430 SETTABLEKS                       R9 R28 K74 ["onSelectedDateChanged"]
      432 GETTABLEKS                       R29 R1 K37 ["selectableDateRange"]
      434 SETTABLEKS                       R29 R28 K37 ["selectableDateRange"]
      436 GETUPVAL                         R31 4
      437 GETTABLEKS                       R30 R31 K16 ["FoundationDateTimePickerTimeVariantEnabled"]
      439 JUMPIFNOT                        R30 ; [+10]
      440 GETTABLEKS                       R30 R1 K7 ["variant"]
      442 GETUPVAL                         R32 5
      443 GETTABLEKS                       R31 R32 K13 ["SingleWithTime"]
      445 JUMPIFNOTEQ                      R30 R31 ; [+2]
      447 LOADB                            R29 0 +1
      448 LOADB                            R29 1
      449 JUMP                             ; [+17]
      450 LOADB                            R29 1
      451 GETTABLEKS                       R30 R1 K7 ["variant"]
      453 GETUPVAL                         R32 5
      454 GETTABLEKS                       R31 R32 K79 ["Single"]
      456 JUMPIFEQ                         R30 R31 ; [+10]
      458 GETTABLEKS                       R30 R1 K7 ["variant"]
      460 GETUPVAL                         R32 5
      461 GETTABLEKS                       R31 R32 K8 ["Dual"]
      463 JUMPIFEQ                         R30 R31 ; [+2]
      465 LOADB                            R29 0 +1
      466 LOADB                            R29 1
      467 SETTABLEKS                       R29 R28 K75 ["showStartDateTimeCalendarInput"]
      469 GETTABLEKS                       R30 R1 K7 ["variant"]
      471 GETUPVAL                         R32 5
      472 GETTABLEKS                       R31 R32 K8 ["Dual"]
      474 JUMPIFEQ                         R30 R31 ; [+2]
      476 LOADB                            R29 0 +1
      477 LOADB                            R29 1
      478 SETTABLEKS                       R29 R28 K76 ["showEndDateTimeCalendarInput"]
      480 GETUPVAL                         R30 4
      481 GETTABLEKS                       R29 R30 K16 ["FoundationDateTimePickerTimeVariantEnabled"]
      483 JUMPIFNOT                        R29 ; [+9]
      484 GETTABLEKS                       R30 R1 K7 ["variant"]
      486 GETUPVAL                         R32 5
      487 GETTABLEKS                       R31 R32 K13 ["SingleWithTime"]
      489 JUMPIFEQ                         R30 R31 ; [+2]
      491 LOADB                            R29 0 +1
      492 LOADB                            R29 1
      493 SETTABLEKS                       R29 R28 K77 ["showTimeDropdown"]
      495 LOADK                            R29 K80 ["--foundation-calendar"]
      496 SETTABLEKS                       R29 R28 K20 ["testId"]
      498 CALL                             R26 2 1
      499 SETTABLEKS                       R26 R25 K24 ["Calendar"]
      501 GETUPVAL                         R27 3
      502 GETTABLEKS                       R26 R27 K17 ["createElement"]
      504 GETUPVAL                         R27 15
      505 DUPTABLE                         R28 K81 [{"LayoutOrder", "tag"}]
      506 LOADN                            R29 2
      507 SETTABLEKS                       R29 R28 K73 ["LayoutOrder"]
      509 LOADK                            R29 K82 ["row size-full-0 auto-y flex-fill gap-small padding-top-large"]
      510 SETTABLEKS                       R29 R28 K68 ["tag"]
      512 DUPTABLE                         R29 K85 [{"ApplyButton", "CancelButton"}]
      513 GETUPVAL                         R31 3
      514 GETTABLEKS                       R30 R31 K17 ["createElement"]
      516 GETUPVAL                         R31 17
      517 DUPTABLE                         R32 K86 [{"isDisabled", "onActivated", "text", "variant", "testId"}]
      518 GETTABLEKS                       R34 R1 K7 ["variant"]
      520 GETUPVAL                         R36 5
      521 GETTABLEKS                       R35 R36 K79 ["Single"]
      523 JUMPIFEQ                         R34 R35 ; [+12]
      525 GETUPVAL                         R35 4
      526 GETTABLEKS                       R34 R35 K16 ["FoundationDateTimePickerTimeVariantEnabled"]
      528 JUMPIFNOT                        R34 ; [+13]
      529 GETTABLEKS                       R34 R1 K7 ["variant"]
      531 GETUPVAL                         R36 5
      532 GETTABLEKS                       R35 R36 K13 ["SingleWithTime"]
      534 JUMPIFNOTEQ                      R34 R35 ; [+7]
      536 GETTABLEN                        R34 R8 1
      537 JUMPIFEQKNIL                     R34 ; [+2]
      539 LOADB                            R33 0 +1
      540 LOADB                            R33 1
      541 JUMP                             ; [+27]
      542 GETTABLEKS                       R34 R1 K7 ["variant"]
      544 GETUPVAL                         R36 5
      545 GETTABLEKS                       R35 R36 K8 ["Dual"]
      547 JUMPIFNOTEQ                      R34 R35 ; [+20]
      549 LOADB                            R33 1
      550 GETTABLEN                        R34 R8 1
      551 JUMPIFEQKNIL                     R34 ; [+17]
      553 LOADB                            R33 1
      554 GETTABLEN                        R34 R8 2
      555 JUMPIFEQKNIL                     R34 ; [+13]
      557 GETTABLEN                        R35 R8 1
      558 GETTABLEKS                       R34 R35 K87 ["UnixTimestamp"]
      560 GETTABLEN                        R36 R8 2
      561 GETTABLEKS                       R35 R36 K87 ["UnixTimestamp"]
      563 JUMPIFLT                         R35 R34 ; [+2]
      565 LOADB                            R33 0 +1
      566 LOADB                            R33 1
      567 JUMP                             ; [+1]
      568 LOADB                            R33 0
      569 SETTABLEKS                       R33 R32 K30 ["isDisabled"]
      571 SETTABLEKS                       R13 R32 K43 ["onActivated"]
      573 GETUPVAL                         R33 12
      574 LOADK                            R35 K88 ["CommonUI.Controls.Action.Apply"]
      575 NAMECALL                         R33 R33 K47 ["FormatByKey"]
      577 CALL                             R33 2 1
      578 SETTABLEKS                       R33 R32 K39 ["text"]
      580 GETUPVAL                         R34 18
      581 GETTABLEKS                       R33 R34 K89 ["Emphasis"]
      583 SETTABLEKS                       R33 R32 K7 ["variant"]
      585 LOADK                            R34 K90 ["%*--apply-button"]
      586 GETTABLEKS                       R36 R1 K20 ["testId"]
      588 NAMECALL                         R34 R34 K12 ["format"]
      590 CALL                             R34 2 1
      591 MOVE                             R33 R34
      592 SETTABLEKS                       R33 R32 K20 ["testId"]
      594 CALL                             R30 2 1
      595 SETTABLEKS                       R30 R29 K83 ["ApplyButton"]
      597 GETUPVAL                         R31 3
      598 GETTABLEKS                       R30 R31 K17 ["createElement"]
      600 GETUPVAL                         R31 17
      601 DUPTABLE                         R32 K91 [{"onActivated", "text", "variant", "testId"}]
      602 SETTABLEKS                       R10 R32 K43 ["onActivated"]
      604 GETUPVAL                         R33 12
      605 LOADK                            R35 K92 ["CommonUI.Controls.Action.Cancel"]
      606 NAMECALL                         R33 R33 K47 ["FormatByKey"]
      608 CALL                             R33 2 1
      609 SETTABLEKS                       R33 R32 K39 ["text"]
      611 GETUPVAL                         R34 18
      612 GETTABLEKS                       R33 R34 K65 ["Standard"]
      614 SETTABLEKS                       R33 R32 K7 ["variant"]
      616 LOADK                            R34 K93 ["%*--cancel-button"]
      617 GETTABLEKS                       R36 R1 K20 ["testId"]
      619 NAMECALL                         R34 R34 K12 ["format"]
      621 CALL                             R34 2 1
      622 MOVE                             R33 R34
      623 SETTABLEKS                       R33 R32 K20 ["testId"]
      625 CALL                             R30 2 1
      626 SETTABLEKS                       R30 R29 K84 ["CancelButton"]
      628 CALL                             R26 3 1
      629 SETTABLEKS                       R26 R25 K71 ["BottomBar"]
      631 CALL                             R22 3 1
      632 CALL                             R19 3 1
      633 SETTABLEKS                       R19 R18 K24 ["Calendar"]
      635 CALL                             R15 3 -1
      636 RETURN                           R15 -1

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
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R15 R0 K16 ["Utility"]
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
      145 GETIMPORT                        R21 K6 [require]
      147 GETTABLEKS                       R23 R0 K14 ["Enums"]
      149 GETTABLEKS                       R22 R23 K34 ["DateTimePickerVariant"]
      151 CALL                             R21 1 1
      152 DUPTABLE                         R22 K38 [{"defaultDates", "variant", "testId"}]
      153 NEWTABLE                         R23 0 1
      155 GETIMPORT                        R24 K41 [DateTime.now]
      157 CALL                             R24 0 -1
      158 SETLIST                          R23 R24 -1 [1]
      160 SETTABLEKS                       R23 R22 K35 ["defaultDates"]
      162 GETTABLEKS                       R23 R21 K42 ["Single"]
      164 SETTABLEKS                       R23 R22 K36 ["variant"]
      166 LOADK                            R23 K43 ["--foundation-date-time-picker"]
      167 SETTABLEKS                       R23 R22 K37 ["testId"]
      169 DUPCLOSURE                       R23 K44 [PROTO_5]
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R8
      189 GETTABLEKS                       R24 R3 K45 ["memo"]
      191 MOVE                             R25 R23
      192 CALL                             R24 1 -1
      193 RETURN                           R24 -1
