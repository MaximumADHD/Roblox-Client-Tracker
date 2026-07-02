PROTO_0:
        0 LOADK                            R4 K0 ["D"]
        1 LOADK                            R5 K1 ["en-us"]
        2 NAMECALL                         R2 R0 K2 ["FormatLocalTime"]
        4 CALL                             R2 3 -1
        5 FASTCALL                         TONUMBER ; [+2]
        6 GETIMPORT                        R1 K4 [tonumber]
        8 CALL                             R1 -1 1
        9 GETIMPORT                        R2 K7 [DateTime.fromUnixTimestamp]
       11 GETTABLEKS                       R4 R0 K8 ["UnixTimestamp"]
       13 SUBK                             R6 R1 K10 [1]
       14 MULK                             R5 R6 K9 [86400]
       15 SUB                              R3 R4 R5
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_1:
        0 LOADK                            R4 K0 ["d"]
        1 LOADK                            R5 K1 ["en-us"]
        2 NAMECALL                         R2 R0 K2 ["FormatLocalTime"]
        4 CALL                             R2 3 -1
        5 FASTCALL                         TONUMBER ; [+2]
        6 GETIMPORT                        R1 K4 [tonumber]
        8 CALL                             R1 -1 1
        9 GETIMPORT                        R2 K7 [DateTime.fromUnixTimestamp]
       11 GETTABLEKS                       R4 R0 K8 ["UnixTimestamp"]
       13 MULK                             R5 R1 K9 [86400]
       14 SUB                              R3 R4 R5
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["ToLocalTime"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [DateTime.fromLocalTime]
        5 GETTABLEKS                       R3 R1 K4 ["Year"]
        7 GETTABLEKS                       R4 R1 K5 ["Month"]
        9 GETTABLEKS                       R5 R1 K6 ["Day"]
       11 LOADN                            R6 0
       12 LOADN                            R7 0
       13 LOADN                            R8 0
       14 LOADN                            R9 0
       15 CALL                             R2 7 -1
       16 RETURN                           R2 -1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["ToLocalTime"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [DateTime.fromLocalTime]
        5 GETTABLEKS                       R3 R1 K4 ["Year"]
        7 GETTABLEKS                       R4 R1 K5 ["Month"]
        9 GETTABLEKS                       R5 R1 K6 ["Day"]
       11 LOADN                            R6 23
       12 LOADN                            R7 59
       13 LOADN                            R8 59
       14 LOADN                            R9 999
       15 CALL                             R2 7 -1
       16 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelected"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelected"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelected"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["Today"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelected"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R6 K1 ["d"]
        5 LOADK                            R7 K2 ["en-us"]
        6 NAMECALL                         R4 R2 K3 ["FormatLocalTime"]
        8 CALL                             R4 3 -1
        9 FASTCALL                         TONUMBER ; [+2]
       10 GETIMPORT                        R3 K5 [tonumber]
       12 CALL                             R3 -1 1
       13 GETIMPORT                        R4 K8 [DateTime.fromUnixTimestamp]
       15 GETTABLEKS                       R6 R2 K9 ["UnixTimestamp"]
       17 MULK                             R7 R3 K10 [86400]
       18 SUB                              R5 R6 R7
       19 CALL                             R4 1 1
       20 MOVE                             R1 R4
       21 GETUPVAL                         R2 1
       22 LOADK                            R3 K11 ["ThisWeek"]
       23 CALL                             R0 3 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelected"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R6 K1 ["D"]
        5 LOADK                            R7 K2 ["en-us"]
        6 NAMECALL                         R4 R2 K3 ["FormatLocalTime"]
        8 CALL                             R4 3 -1
        9 FASTCALL                         TONUMBER ; [+2]
       10 GETIMPORT                        R3 K5 [tonumber]
       12 CALL                             R3 -1 1
       13 GETIMPORT                        R4 K8 [DateTime.fromUnixTimestamp]
       15 GETTABLEKS                       R6 R2 K9 ["UnixTimestamp"]
       17 SUBK                             R8 R3 K11 [1]
       18 MULK                             R7 R8 K10 [86400]
       19 SUB                              R5 R6 R7
       20 CALL                             R4 1 1
       21 MOVE                             R1 R4
       22 GETUPVAL                         R2 1
       23 LOADK                            R3 K12 ["ThisMonth"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [1] ; [+9]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 SUBK                             R1 R2 K0 [1]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 LOADN                            R1 12
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R2 0
       13 SUBK                             R1 R2 K0 [1]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [12] ; [+9]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 ADDK                             R1 R2 K1 [1]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 LOADN                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R2 0
       13 ADDK                             R1 R2 K1 [1]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["useState"]
        9 GETTABLEKS                       R4 R0 K2 ["startDate"]
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K1 ["useState"]
       15 GETTABLEKS                       R6 R0 K3 ["endDate"]
       17 CALL                             R5 1 2
       18 GETIMPORT                        R7 K6 [DateTime.now]
       20 CALL                             R7 0 1
       21 GETTABLEKS                       R9 R0 K2 ["startDate"]
       23 JUMPIFNOT                        R9 ; [+6]
       24 GETTABLEKS                       R8 R0 K2 ["startDate"]
       26 NAMECALL                         R8 R8 K7 ["ToLocalTime"]
       28 CALL                             R8 1 1
       29 JUMP                             ; [+3]
       30 NAMECALL                         R8 R7 K7 ["ToLocalTime"]
       32 CALL                             R8 1 1
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R9 R9 K1 ["useState"]
       36 GETTABLEKS                       R10 R8 K8 ["Year"]
       38 CALL                             R9 1 2
       39 GETUPVAL                         R11 2
       40 GETTABLEKS                       R11 R11 K1 ["useState"]
       42 GETTABLEKS                       R12 R8 K9 ["Month"]
       44 CALL                             R11 1 2
       45 GETUPVAL                         R13 3
       46 LOADB                            R14 0
       47 CALL                             R13 1 1
       48 LOADB                            R14 1
       49 GETTABLEKS                       R15 R0 K2 ["startDate"]
       51 JUMPIFNOTEQKNIL                  R15 ; [+7]
       53 GETTABLEKS                       R15 R0 K3 ["endDate"]
       55 JUMPIFNOTEQKNIL                  R15 ; [+2]
       57 LOADB                            R14 0 +1
       58 LOADB                            R14 1
       59 LOADB                            R15 0
       60 GETTABLEKS                       R16 R0 K2 ["startDate"]
       62 JUMPIFNOTEQ                      R16 R3 ; [+7]
       64 GETTABLEKS                       R16 R0 K3 ["endDate"]
       66 JUMPIFEQ                         R16 R5 ; [+2]
       68 LOADB                            R15 0 +1
       69 LOADB                            R15 1
       70 GETUPVAL                         R16 2
       71 GETTABLEKS                       R16 R16 K10 ["useCallback"]
       73 NEWCLOSURE                       R17 P0
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R5
       77 NEWTABLE                         R18 0 2
       79 MOVE                             R19 R3
       80 MOVE                             R20 R5
       81 SETLIST                          R18 R19 2 [1]
       83 CALL                             R16 2 1
       84 GETUPVAL                         R17 2
       85 GETTABLEKS                       R17 R17 K10 ["useCallback"]
       87 NEWCLOSURE                       R18 P1
       88 CAPTURE                          VAL R0
       89 NEWTABLE                         R19 0 0
       91 CALL                             R17 2 1
       92 GETUPVAL                         R18 2
       93 GETTABLEKS                       R18 R18 K10 ["useCallback"]
       95 NEWCLOSURE                       R19 P2
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R7
       98 NEWTABLE                         R20 0 0
      100 CALL                             R18 2 1
      101 GETUPVAL                         R19 2
      102 GETTABLEKS                       R19 R19 K10 ["useCallback"]
      104 NEWCLOSURE                       R20 P3
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R7
      107 NEWTABLE                         R21 0 0
      109 CALL                             R19 2 1
      110 GETUPVAL                         R20 2
      111 GETTABLEKS                       R20 R20 K10 ["useCallback"]
      113 NEWCLOSURE                       R21 P4
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R7
      116 NEWTABLE                         R22 0 0
      118 CALL                             R20 2 1
      119 GETUPVAL                         R21 2
      120 GETTABLEKS                       R21 R21 K10 ["useCallback"]
      122 NEWCLOSURE                       R22 P5
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R12
      127 NEWTABLE                         R23 0 2
      129 MOVE                             R24 R11
      130 MOVE                             R25 R9
      131 SETLIST                          R23 R24 2 [1]
      133 CALL                             R21 2 1
      134 GETUPVAL                         R22 2
      135 GETTABLEKS                       R22 R22 K10 ["useCallback"]
      137 NEWCLOSURE                       R23 P6
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R12
      142 NEWTABLE                         R24 0 2
      144 MOVE                             R25 R11
      145 MOVE                             R26 R9
      146 SETLIST                          R24 R25 2 [1]
      148 CALL                             R22 2 1
      149 GETUPVAL                         R23 2
      150 GETTABLEKS                       R23 R23 K11 ["createElement"]
      152 GETUPVAL                         R24 4
      153 GETTABLEKS                       R24 R24 K12 ["View"]
      155 DUPTABLE                         R25 K16 [{["tag"] = "col align-x-center items-stretch size-0-0 auto-y", ["Size"]}]
      156 GETUPVAL                         R26 5
      157 SETTABLEKS                       R26 R25 K15 ["Size"]
      159 DUPTABLE                         R26 K24 [{"Header", "DividerTop", "Body", "DividerMiddle", "QuickSelect", "DividerBottom", "Footer"}]
      160 GETUPVAL                         R27 2
      161 GETTABLEKS                       R27 R27 K11 ["createElement"]
      163 GETUPVAL                         R28 4
      164 GETTABLEKS                       R28 R28 K12 ["View"]
      166 DUPTABLE                         R29 K26 [{["tag"] = "row align-y-center gap-xsmall size-0-0 auto-xy padding-small"}]
      167 DUPTABLE                         R30 K32 [{"PrevMonthButton", "LeftSpacer", "YearMonthText", "RightSpacer", "NextMonthButton"}]
      168 GETUPVAL                         R31 2
      169 GETTABLEKS                       R31 R31 K11 ["createElement"]
      171 GETUPVAL                         R32 4
      172 GETTABLEKS                       R32 R32 K33 ["Button"]
      174 DUPTABLE                         R33 K41 [{["icon"], ["variant"], ["size"], ["onActivated"], ["testId"] = "--date-range-selector-prev-month", ["LayoutOrder"]}]
      175 GETUPVAL                         R34 4
      176 GETTABLEKS                       R34 R34 K42 ["Enums"]
      178 GETTABLEKS                       R34 R34 K43 ["IconName"]
      180 GETTABLEKS                       R34 R34 K44 ["ChevronLargeLeft"]
      182 SETTABLEKS                       R34 R33 K34 ["icon"]
      184 GETUPVAL                         R34 4
      185 GETTABLEKS                       R34 R34 K42 ["Enums"]
      187 GETTABLEKS                       R34 R34 K45 ["ButtonVariant"]
      189 GETTABLEKS                       R34 R34 K46 ["Text"]
      191 SETTABLEKS                       R34 R33 K35 ["variant"]
      193 GETUPVAL                         R34 4
      194 GETTABLEKS                       R34 R34 K42 ["Enums"]
      196 GETTABLEKS                       R34 R34 K47 ["InputSize"]
      198 GETTABLEKS                       R34 R34 K48 ["XSmall"]
      200 SETTABLEKS                       R34 R33 K36 ["size"]
      202 SETTABLEKS                       R21 R33 K37 ["onActivated"]
      204 MOVE                             R34 R1
      205 CALL                             R34 0 1
      206 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      208 CALL                             R31 2 1
      209 SETTABLEKS                       R31 R30 K27 ["PrevMonthButton"]
      211 GETUPVAL                         R31 2
      212 GETTABLEKS                       R31 R31 K11 ["createElement"]
      214 GETUPVAL                         R32 4
      215 GETTABLEKS                       R32 R32 K12 ["View"]
      217 DUPTABLE                         R33 K50 [{["tag"] = "fill", ["LayoutOrder"]}]
      218 MOVE                             R34 R1
      219 CALL                             R34 0 1
      220 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      222 CALL                             R31 2 1
      223 SETTABLEKS                       R31 R30 K28 ["LeftSpacer"]
      225 GETUPVAL                         R31 2
      226 GETTABLEKS                       R31 R31 K11 ["createElement"]
      228 GETUPVAL                         R32 4
      229 GETTABLEKS                       R32 R32 K46 ["Text"]
      231 DUPTABLE                         R33 K52 [{["tag"] = "size-0-0 auto-xy text-label-small text-no-wrap", ["Text"], ["LayoutOrder"]}]
      232 GETIMPORT                        R34 K54 [DateTime.fromLocalTime]
      234 MOVE                             R35 R9
      235 MOVE                             R36 R11
      236 CALL                             R34 2 1
      237 LOADK                            R36 K55 ["MMMM YYYY"]
      238 NAMECALL                         R37 R2 K56 ["getLocale"]
      240 CALL                             R37 1 -1
      241 NAMECALL                         R34 R34 K57 ["FormatLocalTime"]
      243 CALL                             R34 -1 1
      244 SETTABLEKS                       R34 R33 K46 ["Text"]
      246 MOVE                             R34 R1
      247 CALL                             R34 0 1
      248 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      250 CALL                             R31 2 1
      251 SETTABLEKS                       R31 R30 K29 ["YearMonthText"]
      253 GETUPVAL                         R31 2
      254 GETTABLEKS                       R31 R31 K11 ["createElement"]
      256 GETUPVAL                         R32 4
      257 GETTABLEKS                       R32 R32 K12 ["View"]
      259 DUPTABLE                         R33 K50 [{["tag"] = "fill", ["LayoutOrder"]}]
      260 MOVE                             R34 R1
      261 CALL                             R34 0 1
      262 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      264 CALL                             R31 2 1
      265 SETTABLEKS                       R31 R30 K30 ["RightSpacer"]
      267 GETUPVAL                         R31 2
      268 GETTABLEKS                       R31 R31 K11 ["createElement"]
      270 GETUPVAL                         R32 4
      271 GETTABLEKS                       R32 R32 K33 ["Button"]
      273 DUPTABLE                         R33 K59 [{["icon"], ["variant"], ["size"], ["onActivated"], ["testId"] = "--date-range-selector-next-month", ["LayoutOrder"]}]
      274 GETUPVAL                         R34 4
      275 GETTABLEKS                       R34 R34 K42 ["Enums"]
      277 GETTABLEKS                       R34 R34 K43 ["IconName"]
      279 GETTABLEKS                       R34 R34 K60 ["ChevronLargeRight"]
      281 SETTABLEKS                       R34 R33 K34 ["icon"]
      283 GETUPVAL                         R34 4
      284 GETTABLEKS                       R34 R34 K42 ["Enums"]
      286 GETTABLEKS                       R34 R34 K45 ["ButtonVariant"]
      288 GETTABLEKS                       R34 R34 K46 ["Text"]
      290 SETTABLEKS                       R34 R33 K35 ["variant"]
      292 GETUPVAL                         R34 4
      293 GETTABLEKS                       R34 R34 K42 ["Enums"]
      295 GETTABLEKS                       R34 R34 K47 ["InputSize"]
      297 GETTABLEKS                       R34 R34 K48 ["XSmall"]
      299 SETTABLEKS                       R34 R33 K36 ["size"]
      301 SETTABLEKS                       R22 R33 K37 ["onActivated"]
      303 MOVE                             R34 R1
      304 CALL                             R34 0 1
      305 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      307 CALL                             R31 2 1
      308 SETTABLEKS                       R31 R30 K31 ["NextMonthButton"]
      310 CALL                             R27 3 1
      311 SETTABLEKS                       R27 R26 K17 ["Header"]
      313 GETUPVAL                         R27 2
      314 GETTABLEKS                       R27 R27 K11 ["createElement"]
      316 GETUPVAL                         R28 4
      317 GETTABLEKS                       R28 R28 K61 ["Divider"]
      319 DUPTABLE                         R29 K62 [{"LayoutOrder"}]
      320 MOVE                             R30 R1
      321 CALL                             R30 0 1
      322 SETTABLEKS                       R30 R29 K40 ["LayoutOrder"]
      324 CALL                             R27 2 1
      325 SETTABLEKS                       R27 R26 K18 ["DividerTop"]
      327 GETUPVAL                         R27 2
      328 GETTABLEKS                       R27 R27 K11 ["createElement"]
      330 GETUPVAL                         R28 6
      331 DUPTABLE                         R29 K69 [{"year", "month", "startDate", "onStartDateChanged", "endDate", "onEndDateChanged", "isSelecting", "onSelected", "LayoutOrder"}]
      332 SETTABLEKS                       R9 R29 K63 ["year"]
      334 SETTABLEKS                       R11 R29 K64 ["month"]
      336 SETTABLEKS                       R3 R29 K2 ["startDate"]
      338 SETTABLEKS                       R4 R29 K65 ["onStartDateChanged"]
      340 SETTABLEKS                       R5 R29 K3 ["endDate"]
      342 SETTABLEKS                       R6 R29 K66 ["onEndDateChanged"]
      344 GETTABLEKS                       R30 R13 K70 ["enabled"]
      346 SETTABLEKS                       R30 R29 K67 ["isSelecting"]
      348 GETTABLEKS                       R30 R13 K71 ["toggle"]
      350 SETTABLEKS                       R30 R29 K68 ["onSelected"]
      352 MOVE                             R30 R1
      353 CALL                             R30 0 1
      354 SETTABLEKS                       R30 R29 K40 ["LayoutOrder"]
      356 CALL                             R27 2 1
      357 SETTABLEKS                       R27 R26 K19 ["Body"]
      359 GETUPVAL                         R27 2
      360 GETTABLEKS                       R27 R27 K11 ["createElement"]
      362 GETUPVAL                         R28 4
      363 GETTABLEKS                       R28 R28 K61 ["Divider"]
      365 DUPTABLE                         R29 K62 [{"LayoutOrder"}]
      366 MOVE                             R30 R1
      367 CALL                             R30 0 1
      368 SETTABLEKS                       R30 R29 K40 ["LayoutOrder"]
      370 CALL                             R27 2 1
      371 SETTABLEKS                       R27 R26 K20 ["DividerMiddle"]
      373 GETUPVAL                         R27 2
      374 GETTABLEKS                       R27 R27 K11 ["createElement"]
      376 GETUPVAL                         R28 4
      377 GETTABLEKS                       R28 R28 K12 ["View"]
      379 DUPTABLE                         R29 K73 [{["tag"] = "row wrap align-y-center gap-xsmall size-0-0 auto-xy padding-small", ["LayoutOrder"]}]
      380 MOVE                             R30 R1
      381 CALL                             R30 0 1
      382 SETTABLEKS                       R30 R29 K40 ["LayoutOrder"]
      384 DUPTABLE                         R30 K77 [{"Today", "ThisWeek", "ThisMonth"}]
      385 GETUPVAL                         R31 2
      386 GETTABLEKS                       R31 R31 K11 ["createElement"]
      388 GETUPVAL                         R32 4
      389 GETTABLEKS                       R32 R32 K78 ["Chip"]
      391 DUPTABLE                         R33 K81 [{["text"], ["size"], ["onActivated"], ["testId"] = "--date-range-selector-today", ["LayoutOrder"]}]
      392 LOADK                            R36 K82 ["Label"]
      393 LOADK                            R37 K74 ["Today"]
      394 NAMECALL                         R34 R2 K83 ["getText"]
      396 CALL                             R34 3 1
      397 SETTABLEKS                       R34 R33 K79 ["text"]
      399 GETUPVAL                         R34 4
      400 GETTABLEKS                       R34 R34 K42 ["Enums"]
      402 GETTABLEKS                       R34 R34 K84 ["ChipSize"]
      404 GETTABLEKS                       R34 R34 K85 ["Small"]
      406 SETTABLEKS                       R34 R33 K36 ["size"]
      408 SETTABLEKS                       R18 R33 K37 ["onActivated"]
      410 MOVE                             R34 R1
      411 CALL                             R34 0 1
      412 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      414 CALL                             R31 2 1
      415 SETTABLEKS                       R31 R30 K74 ["Today"]
      417 GETUPVAL                         R31 2
      418 GETTABLEKS                       R31 R31 K11 ["createElement"]
      420 GETUPVAL                         R32 4
      421 GETTABLEKS                       R32 R32 K78 ["Chip"]
      423 DUPTABLE                         R33 K87 [{["text"], ["size"], ["onActivated"], ["testId"] = "--date-range-selector-thisweek", ["LayoutOrder"]}]
      424 LOADK                            R36 K82 ["Label"]
      425 LOADK                            R37 K75 ["ThisWeek"]
      426 NAMECALL                         R34 R2 K83 ["getText"]
      428 CALL                             R34 3 1
      429 SETTABLEKS                       R34 R33 K79 ["text"]
      431 GETUPVAL                         R34 4
      432 GETTABLEKS                       R34 R34 K42 ["Enums"]
      434 GETTABLEKS                       R34 R34 K84 ["ChipSize"]
      436 GETTABLEKS                       R34 R34 K85 ["Small"]
      438 SETTABLEKS                       R34 R33 K36 ["size"]
      440 SETTABLEKS                       R19 R33 K37 ["onActivated"]
      442 MOVE                             R34 R1
      443 CALL                             R34 0 1
      444 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      446 CALL                             R31 2 1
      447 SETTABLEKS                       R31 R30 K75 ["ThisWeek"]
      449 GETUPVAL                         R31 2
      450 GETTABLEKS                       R31 R31 K11 ["createElement"]
      452 GETUPVAL                         R32 4
      453 GETTABLEKS                       R32 R32 K78 ["Chip"]
      455 DUPTABLE                         R33 K89 [{["text"], ["size"], ["onActivated"], ["testId"] = "--date-range-selector-thismonth", ["LayoutOrder"]}]
      456 LOADK                            R36 K82 ["Label"]
      457 LOADK                            R37 K76 ["ThisMonth"]
      458 NAMECALL                         R34 R2 K83 ["getText"]
      460 CALL                             R34 3 1
      461 SETTABLEKS                       R34 R33 K79 ["text"]
      463 GETUPVAL                         R34 4
      464 GETTABLEKS                       R34 R34 K42 ["Enums"]
      466 GETTABLEKS                       R34 R34 K84 ["ChipSize"]
      468 GETTABLEKS                       R34 R34 K85 ["Small"]
      470 SETTABLEKS                       R34 R33 K36 ["size"]
      472 SETTABLEKS                       R20 R33 K37 ["onActivated"]
      474 MOVE                             R34 R1
      475 CALL                             R34 0 1
      476 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      478 CALL                             R31 2 1
      479 SETTABLEKS                       R31 R30 K76 ["ThisMonth"]
      481 CALL                             R27 3 1
      482 SETTABLEKS                       R27 R26 K21 ["QuickSelect"]
      484 GETUPVAL                         R27 2
      485 GETTABLEKS                       R27 R27 K11 ["createElement"]
      487 GETUPVAL                         R28 4
      488 GETTABLEKS                       R28 R28 K61 ["Divider"]
      490 DUPTABLE                         R29 K62 [{"LayoutOrder"}]
      491 MOVE                             R30 R1
      492 CALL                             R30 0 1
      493 SETTABLEKS                       R30 R29 K40 ["LayoutOrder"]
      495 CALL                             R27 2 1
      496 SETTABLEKS                       R27 R26 K22 ["DividerBottom"]
      498 GETUPVAL                         R27 2
      499 GETTABLEKS                       R27 R27 K11 ["createElement"]
      501 GETUPVAL                         R28 4
      502 GETTABLEKS                       R28 R28 K12 ["View"]
      504 DUPTABLE                         R29 K90 [{["tag"] = "row align-y-center gap-xsmall size-0-0 auto-xy padding-small", ["LayoutOrder"]}]
      505 MOVE                             R30 R1
      506 CALL                             R30 0 1
      507 SETTABLEKS                       R30 R29 K40 ["LayoutOrder"]
      509 DUPTABLE                         R30 K93 [{"ResetButton", "ApplyButton"}]
      510 MOVE                             R31 R14
      511 JUMPIFNOT                        R31 ; [+52]
      512 GETUPVAL                         R31 2
      513 GETTABLEKS                       R31 R31 K11 ["createElement"]
      515 GETUPVAL                         R32 4
      516 GETTABLEKS                       R32 R32 K33 ["Button"]
      518 DUPTABLE                         R33 K97 [{["text"], ["variant"], ["size"], ["fillBehavior"], ["isDisabled"], ["onActivated"], ["testId"] = "--date-range-selector-reset", ["LayoutOrder"]}]
      519 LOADK                            R36 K98 ["Action"]
      520 LOADK                            R37 K99 ["Reset"]
      521 NAMECALL                         R34 R2 K83 ["getText"]
      523 CALL                             R34 3 1
      524 SETTABLEKS                       R34 R33 K79 ["text"]
      526 GETUPVAL                         R34 4
      527 GETTABLEKS                       R34 R34 K42 ["Enums"]
      529 GETTABLEKS                       R34 R34 K45 ["ButtonVariant"]
      531 GETTABLEKS                       R34 R34 K46 ["Text"]
      533 SETTABLEKS                       R34 R33 K35 ["variant"]
      535 GETUPVAL                         R34 4
      536 GETTABLEKS                       R34 R34 K42 ["Enums"]
      538 GETTABLEKS                       R34 R34 K47 ["InputSize"]
      540 GETTABLEKS                       R34 R34 K48 ["XSmall"]
      542 SETTABLEKS                       R34 R33 K36 ["size"]
      544 GETUPVAL                         R34 4
      545 GETTABLEKS                       R34 R34 K42 ["Enums"]
      547 GETTABLEKS                       R34 R34 K100 ["FillBehavior"]
      549 GETTABLEKS                       R34 R34 K101 ["Fill"]
      551 SETTABLEKS                       R34 R33 K94 ["fillBehavior"]
      553 GETTABLEKS                       R34 R13 K70 ["enabled"]
      555 SETTABLEKS                       R34 R33 K95 ["isDisabled"]
      557 SETTABLEKS                       R17 R33 K37 ["onActivated"]
      559 MOVE                             R34 R1
      560 CALL                             R34 0 1
      561 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      563 CALL                             R31 2 1
      564 SETTABLEKS                       R31 R30 K91 ["ResetButton"]
      566 GETUPVAL                         R31 2
      567 GETTABLEKS                       R31 R31 K11 ["createElement"]
      569 GETUPVAL                         R32 4
      570 GETTABLEKS                       R32 R32 K33 ["Button"]
      572 DUPTABLE                         R33 K103 [{["text"], ["variant"], ["size"], ["fillBehavior"], ["isDisabled"], ["onActivated"], ["testId"] = "--date-range-selector-apply", ["LayoutOrder"]}]
      573 LOADK                            R36 K98 ["Action"]
      574 LOADK                            R37 K104 ["Apply"]
      575 NAMECALL                         R34 R2 K83 ["getText"]
      577 CALL                             R34 3 1
      578 SETTABLEKS                       R34 R33 K79 ["text"]
      580 GETUPVAL                         R34 4
      581 GETTABLEKS                       R34 R34 K42 ["Enums"]
      583 GETTABLEKS                       R34 R34 K45 ["ButtonVariant"]
      585 GETTABLEKS                       R34 R34 K105 ["Emphasis"]
      587 SETTABLEKS                       R34 R33 K35 ["variant"]
      589 GETUPVAL                         R34 4
      590 GETTABLEKS                       R34 R34 K42 ["Enums"]
      592 GETTABLEKS                       R34 R34 K47 ["InputSize"]
      594 GETTABLEKS                       R34 R34 K48 ["XSmall"]
      596 SETTABLEKS                       R34 R33 K36 ["size"]
      598 GETUPVAL                         R34 4
      599 GETTABLEKS                       R34 R34 K42 ["Enums"]
      601 GETTABLEKS                       R34 R34 K100 ["FillBehavior"]
      603 GETTABLEKS                       R34 R34 K101 ["Fill"]
      605 SETTABLEKS                       R34 R33 K94 ["fillBehavior"]
      607 GETTABLEKS                       R35 R13 K70 ["enabled"]
      609 OR                               R34 R35 R15
      610 SETTABLEKS                       R34 R33 K95 ["isDisabled"]
      612 SETTABLEKS                       R16 R33 K37 ["onActivated"]
      614 MOVE                             R34 R1
      615 CALL                             R34 0 1
      616 SETTABLEKS                       R34 R33 K40 ["LayoutOrder"]
      618 CALL                             R31 2 1
      619 SETTABLEKS                       R31 R30 K92 ["ApplyButton"]
      621 CALL                             R27 3 1
      622 SETTABLEKS                       R27 R26 K23 ["Footer"]
      624 CALL                             R23 3 -1
      625 RETURN                           R23 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKS                    R0 K0 ["Today"] ; [+8]
        6 GETUPVAL                         R0 2
        7 LOADK                            R2 K1 ["Label"]
        8 LOADK                            R3 K0 ["Today"]
        9 NAMECALL                         R0 R0 K2 ["getText"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R0 1
       14 JUMPIFNOTEQKS                    R0 K3 ["ThisWeek"] ; [+8]
       16 GETUPVAL                         R0 2
       17 LOADK                            R2 K1 ["Label"]
       18 LOADK                            R3 K3 ["ThisWeek"]
       19 NAMECALL                         R0 R0 K2 ["getText"]
       21 CALL                             R0 3 -1
       22 RETURN                           R0 -1
       23 GETUPVAL                         R0 1
       24 JUMPIFNOTEQKS                    R0 K4 ["ThisMonth"] ; [+8]
       26 GETUPVAL                         R0 2
       27 LOADK                            R2 K1 ["Label"]
       28 LOADK                            R3 K4 ["ThisMonth"]
       29 NAMECALL                         R0 R0 K2 ["getText"]
       31 CALL                             R0 3 -1
       32 RETURN                           R0 -1
       33 GETUPVAL                         R0 3
       34 GETTABLEKS                       R0 R0 K5 ["startDate"]
       36 JUMPIFNOTEQKNIL                  R0 ; [+13]
       38 GETUPVAL                         R0 3
       39 GETTABLEKS                       R0 R0 K6 ["endDate"]
       41 JUMPIFNOTEQKNIL                  R0 ; [+8]
       43 GETUPVAL                         R0 2
       44 LOADK                            R2 K1 ["Label"]
       45 LOADK                            R3 K7 ["AllTime"]
       46 NAMECALL                         R0 R0 K2 ["getText"]
       48 CALL                             R0 3 -1
       49 RETURN                           R0 -1
       50 GETUPVAL                         R1 3
       51 GETTABLEKS                       R1 R1 K5 ["startDate"]
       53 JUMPIFNOT                        R1 ; [+12]
       54 GETUPVAL                         R0 3
       55 GETTABLEKS                       R0 R0 K5 ["startDate"]
       57 LOADK                            R2 K8 ["ll"]
       58 GETUPVAL                         R3 2
       59 NAMECALL                         R3 R3 K9 ["getLocale"]
       61 CALL                             R3 1 -1
       62 NAMECALL                         R0 R0 K10 ["FormatLocalTime"]
       64 CALL                             R0 -1 1
       65 JUMP                             ; [+1]
       66 LOADK                            R0 K11 [""]
       67 GETUPVAL                         R2 3
       68 GETTABLEKS                       R2 R2 K6 ["endDate"]
       70 JUMPIFNOT                        R2 ; [+12]
       71 GETUPVAL                         R1 3
       72 GETTABLEKS                       R1 R1 K6 ["endDate"]
       74 LOADK                            R3 K8 ["ll"]
       75 GETUPVAL                         R4 2
       76 NAMECALL                         R4 R4 K9 ["getLocale"]
       78 CALL                             R4 1 -1
       79 NAMECALL                         R1 R1 K10 ["FormatLocalTime"]
       81 CALL                             R1 -1 1
       82 JUMP                             ; [+1]
       83 LOADK                            R1 K11 [""]
       84 LOADK                            R3 K12 ["%* - %*"]
       85 MOVE                             R5 R0
       86 MOVE                             R6 R1
       87 NAMECALL                         R3 R3 K13 ["format"]
       89 CALL                             R3 3 1
       90 MOVE                             R2 R3
       91 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["onStartDateChanged"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 NAMECALL                         R5 R0 K1 ["ToLocalTime"]
        6 CALL                             R5 1 1
        7 GETIMPORT                        R6 K4 [DateTime.fromLocalTime]
        9 GETTABLEKS                       R7 R5 K5 ["Year"]
       11 GETTABLEKS                       R8 R5 K6 ["Month"]
       13 GETTABLEKS                       R9 R5 K7 ["Day"]
       15 LOADN                            R10 0
       16 LOADN                            R11 0
       17 LOADN                            R12 0
       18 LOADN                            R13 0
       19 CALL                             R6 7 1
       20 MOVE                             R4 R6
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K8 ["onEndDateChanged"]
       27 JUMPIFNOT                        R1 ; [+18]
       28 NAMECALL                         R5 R1 K1 ["ToLocalTime"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K4 [DateTime.fromLocalTime]
       33 GETTABLEKS                       R7 R5 K5 ["Year"]
       35 GETTABLEKS                       R8 R5 K6 ["Month"]
       37 GETTABLEKS                       R9 R5 K7 ["Day"]
       39 LOADN                            R10 23
       40 LOADN                            R11 59
       41 LOADN                            R12 59
       42 LOADN                            R13 999
       43 CALL                             R6 7 1
       44 MOVE                             R4 R6
       45 JUMP                             ; [+1]
       46 LOADNIL                          R4
       47 CALL                             R3 1 0
       48 GETUPVAL                         R3 1
       49 MOVE                             R4 R2
       50 CALL                             R3 1 0
       51 GETUPVAL                         R3 2
       52 GETTABLEKS                       R3 R3 K9 ["disable"]
       54 CALL                             R3 0 0
       55 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K1 ["useState"]
       11 LOADNIL                          R5
       12 CALL                             R4 1 2
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R5
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R8 0 2
       23 GETTABLEKS                       R9 R0 K3 ["startDate"]
       25 GETTABLEKS                       R10 R0 K4 ["endDate"]
       27 SETLIST                          R8 R9 2 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R3
       37 NEWTABLE                         R9 0 0
       39 CALL                             R7 2 1
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K6 ["createElement"]
       43 GETUPVAL                         R9 4
       44 DUPTABLE                         R10 K10 [{"toggle", "text", "LayoutOrder"}]
       45 SETTABLEKS                       R3 R10 K7 ["toggle"]
       47 SETTABLEKS                       R6 R10 K8 ["text"]
       49 GETTABLEKS                       R11 R0 K9 ["LayoutOrder"]
       51 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       53 DUPTABLE                         R11 K12 [{"Content"}]
       54 GETUPVAL                         R12 3
       55 GETTABLEKS                       R12 R12 K6 ["createElement"]
       57 GETUPVAL                         R13 5
       58 DUPTABLE                         R14 K14 [{"startDate", "endDate", "onSelected", "LayoutOrder"}]
       59 GETTABLEKS                       R15 R0 K3 ["startDate"]
       61 SETTABLEKS                       R15 R14 K3 ["startDate"]
       63 GETTABLEKS                       R15 R0 K4 ["endDate"]
       65 SETTABLEKS                       R15 R14 K4 ["endDate"]
       67 SETTABLEKS                       R7 R14 K13 ["onSelected"]
       69 MOVE                             R15 R1
       70 CALL                             R15 0 1
       71 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K11 ["Content"]
       76 CALL                             R8 3 -1
       77 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R2 K13 ["createNextOrder"]
       41 GETTABLEKS                       R8 R2 K14 ["useToggleState"]
       43 GETTABLEKS                       R9 R0 K15 ["Src"]
       45 GETTABLEKS                       R9 R9 K16 ["Components"]
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R9 K17 ["Dropdown"]
       51 CALL                             R10 1 1
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R12 R9 K18 ["Calendar"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K21 [UDim2.fromOffset]
       59 LOADN                            R13 246
       60 LOADN                            R14 0
       61 CALL                             R12 2 1
       62 DUPCLOSURE                       R13 K22 [PROTO_0]
       63 DUPCLOSURE                       R14 K23 [PROTO_1]
       64 DUPCLOSURE                       R15 K24 [PROTO_2]
       65 DUPCLOSURE                       R16 K25 [PROTO_3]
       66 DUPCLOSURE                       R17 K26 [PROTO_11]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R11
       74 DUPCLOSURE                       R18 K27 [PROTO_14]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R17
       81 RETURN                           R18 1
