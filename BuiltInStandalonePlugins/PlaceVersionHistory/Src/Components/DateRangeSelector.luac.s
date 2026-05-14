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
       14 LOADN                            R9 231
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
      155 DUPTABLE                         R25 K15 [{"tag", "Size"}]
      156 LOADK                            R26 K16 ["size-0-0 auto-y col align-x-center items-stretch"]
      157 SETTABLEKS                       R26 R25 K13 ["tag"]
      159 GETUPVAL                         R26 5
      160 SETTABLEKS                       R26 R25 K14 ["Size"]
      162 DUPTABLE                         R26 K24 [{"Header", "DividerTop", "Body", "DividerMiddle", "QuickSelect", "DividerBottom", "Footer"}]
      163 GETUPVAL                         R27 2
      164 GETTABLEKS                       R27 R27 K11 ["createElement"]
      166 GETUPVAL                         R28 4
      167 GETTABLEKS                       R28 R28 K12 ["View"]
      169 DUPTABLE                         R29 K25 [{"tag"}]
      170 LOADK                            R30 K26 ["size-0-0 auto-xy row align-y-center padding-small gap-xsmall"]
      171 SETTABLEKS                       R30 R29 K13 ["tag"]
      173 DUPTABLE                         R30 K32 [{"PrevMonthButton", "LeftSpacer", "YearMonthText", "RightSpacer", "NextMonthButton"}]
      174 GETUPVAL                         R31 2
      175 GETTABLEKS                       R31 R31 K11 ["createElement"]
      177 GETUPVAL                         R32 4
      178 GETTABLEKS                       R32 R32 K33 ["Button"]
      180 DUPTABLE                         R33 K40 [{"icon", "variant", "size", "onActivated", "testId", "LayoutOrder"}]
      181 GETUPVAL                         R34 4
      182 GETTABLEKS                       R34 R34 K41 ["Enums"]
      184 GETTABLEKS                       R34 R34 K42 ["IconName"]
      186 GETTABLEKS                       R34 R34 K43 ["ChevronLargeLeft"]
      188 SETTABLEKS                       R34 R33 K34 ["icon"]
      190 GETUPVAL                         R34 4
      191 GETTABLEKS                       R34 R34 K41 ["Enums"]
      193 GETTABLEKS                       R34 R34 K44 ["ButtonVariant"]
      195 GETTABLEKS                       R34 R34 K45 ["Text"]
      197 SETTABLEKS                       R34 R33 K35 ["variant"]
      199 GETUPVAL                         R34 4
      200 GETTABLEKS                       R34 R34 K41 ["Enums"]
      202 GETTABLEKS                       R34 R34 K46 ["InputSize"]
      204 GETTABLEKS                       R34 R34 K47 ["XSmall"]
      206 SETTABLEKS                       R34 R33 K36 ["size"]
      208 SETTABLEKS                       R21 R33 K37 ["onActivated"]
      210 LOADK                            R34 K48 ["--date-range-selector-prev-month"]
      211 SETTABLEKS                       R34 R33 K38 ["testId"]
      213 MOVE                             R34 R1
      214 CALL                             R34 0 1
      215 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      217 CALL                             R31 2 1
      218 SETTABLEKS                       R31 R30 K27 ["PrevMonthButton"]
      220 GETUPVAL                         R31 2
      221 GETTABLEKS                       R31 R31 K11 ["createElement"]
      223 GETUPVAL                         R32 4
      224 GETTABLEKS                       R32 R32 K12 ["View"]
      226 DUPTABLE                         R33 K49 [{"tag", "LayoutOrder"}]
      227 LOADK                            R34 K50 ["fill"]
      228 SETTABLEKS                       R34 R33 K13 ["tag"]
      230 MOVE                             R34 R1
      231 CALL                             R34 0 1
      232 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      234 CALL                             R31 2 1
      235 SETTABLEKS                       R31 R30 K28 ["LeftSpacer"]
      237 GETUPVAL                         R31 2
      238 GETTABLEKS                       R31 R31 K11 ["createElement"]
      240 GETUPVAL                         R32 4
      241 GETTABLEKS                       R32 R32 K45 ["Text"]
      243 DUPTABLE                         R33 K51 [{"tag", "Text", "LayoutOrder"}]
      244 LOADK                            R34 K52 ["size-0-0 auto-xy text-label-small text-no-wrap"]
      245 SETTABLEKS                       R34 R33 K13 ["tag"]
      247 GETIMPORT                        R34 K54 [DateTime.fromLocalTime]
      249 MOVE                             R35 R9
      250 MOVE                             R36 R11
      251 CALL                             R34 2 1
      252 LOADK                            R36 K55 ["MMMM YYYY"]
      253 NAMECALL                         R37 R2 K56 ["getLocale"]
      255 CALL                             R37 1 -1
      256 NAMECALL                         R34 R34 K57 ["FormatLocalTime"]
      258 CALL                             R34 -1 1
      259 SETTABLEKS                       R34 R33 K45 ["Text"]
      261 MOVE                             R34 R1
      262 CALL                             R34 0 1
      263 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      265 CALL                             R31 2 1
      266 SETTABLEKS                       R31 R30 K29 ["YearMonthText"]
      268 GETUPVAL                         R31 2
      269 GETTABLEKS                       R31 R31 K11 ["createElement"]
      271 GETUPVAL                         R32 4
      272 GETTABLEKS                       R32 R32 K12 ["View"]
      274 DUPTABLE                         R33 K49 [{"tag", "LayoutOrder"}]
      275 LOADK                            R34 K50 ["fill"]
      276 SETTABLEKS                       R34 R33 K13 ["tag"]
      278 MOVE                             R34 R1
      279 CALL                             R34 0 1
      280 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      282 CALL                             R31 2 1
      283 SETTABLEKS                       R31 R30 K30 ["RightSpacer"]
      285 GETUPVAL                         R31 2
      286 GETTABLEKS                       R31 R31 K11 ["createElement"]
      288 GETUPVAL                         R32 4
      289 GETTABLEKS                       R32 R32 K33 ["Button"]
      291 DUPTABLE                         R33 K40 [{"icon", "variant", "size", "onActivated", "testId", "LayoutOrder"}]
      292 GETUPVAL                         R34 4
      293 GETTABLEKS                       R34 R34 K41 ["Enums"]
      295 GETTABLEKS                       R34 R34 K42 ["IconName"]
      297 GETTABLEKS                       R34 R34 K58 ["ChevronLargeRight"]
      299 SETTABLEKS                       R34 R33 K34 ["icon"]
      301 GETUPVAL                         R34 4
      302 GETTABLEKS                       R34 R34 K41 ["Enums"]
      304 GETTABLEKS                       R34 R34 K44 ["ButtonVariant"]
      306 GETTABLEKS                       R34 R34 K45 ["Text"]
      308 SETTABLEKS                       R34 R33 K35 ["variant"]
      310 GETUPVAL                         R34 4
      311 GETTABLEKS                       R34 R34 K41 ["Enums"]
      313 GETTABLEKS                       R34 R34 K46 ["InputSize"]
      315 GETTABLEKS                       R34 R34 K47 ["XSmall"]
      317 SETTABLEKS                       R34 R33 K36 ["size"]
      319 SETTABLEKS                       R22 R33 K37 ["onActivated"]
      321 LOADK                            R34 K59 ["--date-range-selector-next-month"]
      322 SETTABLEKS                       R34 R33 K38 ["testId"]
      324 MOVE                             R34 R1
      325 CALL                             R34 0 1
      326 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      328 CALL                             R31 2 1
      329 SETTABLEKS                       R31 R30 K31 ["NextMonthButton"]
      331 CALL                             R27 3 1
      332 SETTABLEKS                       R27 R26 K17 ["Header"]
      334 GETUPVAL                         R27 2
      335 GETTABLEKS                       R27 R27 K11 ["createElement"]
      337 GETUPVAL                         R28 4
      338 GETTABLEKS                       R28 R28 K60 ["Divider"]
      340 DUPTABLE                         R29 K61 [{"LayoutOrder"}]
      341 MOVE                             R30 R1
      342 CALL                             R30 0 1
      343 SETTABLEKS                       R30 R29 K39 ["LayoutOrder"]
      345 CALL                             R27 2 1
      346 SETTABLEKS                       R27 R26 K18 ["DividerTop"]
      348 GETUPVAL                         R27 2
      349 GETTABLEKS                       R27 R27 K11 ["createElement"]
      351 GETUPVAL                         R28 6
      352 DUPTABLE                         R29 K68 [{"year", "month", "startDate", "onStartDateChanged", "endDate", "onEndDateChanged", "isSelecting", "onSelected", "LayoutOrder"}]
      353 SETTABLEKS                       R9 R29 K62 ["year"]
      355 SETTABLEKS                       R11 R29 K63 ["month"]
      357 SETTABLEKS                       R3 R29 K2 ["startDate"]
      359 SETTABLEKS                       R4 R29 K64 ["onStartDateChanged"]
      361 SETTABLEKS                       R5 R29 K3 ["endDate"]
      363 SETTABLEKS                       R6 R29 K65 ["onEndDateChanged"]
      365 GETTABLEKS                       R30 R13 K69 ["enabled"]
      367 SETTABLEKS                       R30 R29 K66 ["isSelecting"]
      369 GETTABLEKS                       R30 R13 K70 ["toggle"]
      371 SETTABLEKS                       R30 R29 K67 ["onSelected"]
      373 MOVE                             R30 R1
      374 CALL                             R30 0 1
      375 SETTABLEKS                       R30 R29 K39 ["LayoutOrder"]
      377 CALL                             R27 2 1
      378 SETTABLEKS                       R27 R26 K19 ["Body"]
      380 GETUPVAL                         R27 2
      381 GETTABLEKS                       R27 R27 K11 ["createElement"]
      383 GETUPVAL                         R28 4
      384 GETTABLEKS                       R28 R28 K60 ["Divider"]
      386 DUPTABLE                         R29 K61 [{"LayoutOrder"}]
      387 MOVE                             R30 R1
      388 CALL                             R30 0 1
      389 SETTABLEKS                       R30 R29 K39 ["LayoutOrder"]
      391 CALL                             R27 2 1
      392 SETTABLEKS                       R27 R26 K20 ["DividerMiddle"]
      394 GETUPVAL                         R27 2
      395 GETTABLEKS                       R27 R27 K11 ["createElement"]
      397 GETUPVAL                         R28 4
      398 GETTABLEKS                       R28 R28 K12 ["View"]
      400 DUPTABLE                         R29 K49 [{"tag", "LayoutOrder"}]
      401 LOADK                            R30 K71 ["size-0-0 auto-xy row align-y-center padding-small gap-xsmall wrap"]
      402 SETTABLEKS                       R30 R29 K13 ["tag"]
      404 MOVE                             R30 R1
      405 CALL                             R30 0 1
      406 SETTABLEKS                       R30 R29 K39 ["LayoutOrder"]
      408 DUPTABLE                         R30 K75 [{"Today", "ThisWeek", "ThisMonth"}]
      409 GETUPVAL                         R31 2
      410 GETTABLEKS                       R31 R31 K11 ["createElement"]
      412 GETUPVAL                         R32 4
      413 GETTABLEKS                       R32 R32 K76 ["Chip"]
      415 DUPTABLE                         R33 K78 [{"text", "size", "onActivated", "testId", "LayoutOrder"}]
      416 LOADK                            R36 K79 ["Label"]
      417 LOADK                            R37 K72 ["Today"]
      418 NAMECALL                         R34 R2 K80 ["getText"]
      420 CALL                             R34 3 1
      421 SETTABLEKS                       R34 R33 K77 ["text"]
      423 GETUPVAL                         R34 4
      424 GETTABLEKS                       R34 R34 K41 ["Enums"]
      426 GETTABLEKS                       R34 R34 K81 ["ChipSize"]
      428 GETTABLEKS                       R34 R34 K82 ["Small"]
      430 SETTABLEKS                       R34 R33 K36 ["size"]
      432 SETTABLEKS                       R18 R33 K37 ["onActivated"]
      434 LOADK                            R34 K83 ["--date-range-selector-today"]
      435 SETTABLEKS                       R34 R33 K38 ["testId"]
      437 MOVE                             R34 R1
      438 CALL                             R34 0 1
      439 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      441 CALL                             R31 2 1
      442 SETTABLEKS                       R31 R30 K72 ["Today"]
      444 GETUPVAL                         R31 2
      445 GETTABLEKS                       R31 R31 K11 ["createElement"]
      447 GETUPVAL                         R32 4
      448 GETTABLEKS                       R32 R32 K76 ["Chip"]
      450 DUPTABLE                         R33 K78 [{"text", "size", "onActivated", "testId", "LayoutOrder"}]
      451 LOADK                            R36 K79 ["Label"]
      452 LOADK                            R37 K73 ["ThisWeek"]
      453 NAMECALL                         R34 R2 K80 ["getText"]
      455 CALL                             R34 3 1
      456 SETTABLEKS                       R34 R33 K77 ["text"]
      458 GETUPVAL                         R34 4
      459 GETTABLEKS                       R34 R34 K41 ["Enums"]
      461 GETTABLEKS                       R34 R34 K81 ["ChipSize"]
      463 GETTABLEKS                       R34 R34 K82 ["Small"]
      465 SETTABLEKS                       R34 R33 K36 ["size"]
      467 SETTABLEKS                       R19 R33 K37 ["onActivated"]
      469 LOADK                            R34 K84 ["--date-range-selector-thisweek"]
      470 SETTABLEKS                       R34 R33 K38 ["testId"]
      472 MOVE                             R34 R1
      473 CALL                             R34 0 1
      474 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      476 CALL                             R31 2 1
      477 SETTABLEKS                       R31 R30 K73 ["ThisWeek"]
      479 GETUPVAL                         R31 2
      480 GETTABLEKS                       R31 R31 K11 ["createElement"]
      482 GETUPVAL                         R32 4
      483 GETTABLEKS                       R32 R32 K76 ["Chip"]
      485 DUPTABLE                         R33 K78 [{"text", "size", "onActivated", "testId", "LayoutOrder"}]
      486 LOADK                            R36 K79 ["Label"]
      487 LOADK                            R37 K74 ["ThisMonth"]
      488 NAMECALL                         R34 R2 K80 ["getText"]
      490 CALL                             R34 3 1
      491 SETTABLEKS                       R34 R33 K77 ["text"]
      493 GETUPVAL                         R34 4
      494 GETTABLEKS                       R34 R34 K41 ["Enums"]
      496 GETTABLEKS                       R34 R34 K81 ["ChipSize"]
      498 GETTABLEKS                       R34 R34 K82 ["Small"]
      500 SETTABLEKS                       R34 R33 K36 ["size"]
      502 SETTABLEKS                       R20 R33 K37 ["onActivated"]
      504 LOADK                            R34 K85 ["--date-range-selector-thismonth"]
      505 SETTABLEKS                       R34 R33 K38 ["testId"]
      507 MOVE                             R34 R1
      508 CALL                             R34 0 1
      509 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      511 CALL                             R31 2 1
      512 SETTABLEKS                       R31 R30 K74 ["ThisMonth"]
      514 CALL                             R27 3 1
      515 SETTABLEKS                       R27 R26 K21 ["QuickSelect"]
      517 GETUPVAL                         R27 2
      518 GETTABLEKS                       R27 R27 K11 ["createElement"]
      520 GETUPVAL                         R28 4
      521 GETTABLEKS                       R28 R28 K60 ["Divider"]
      523 DUPTABLE                         R29 K61 [{"LayoutOrder"}]
      524 MOVE                             R30 R1
      525 CALL                             R30 0 1
      526 SETTABLEKS                       R30 R29 K39 ["LayoutOrder"]
      528 CALL                             R27 2 1
      529 SETTABLEKS                       R27 R26 K22 ["DividerBottom"]
      531 GETUPVAL                         R27 2
      532 GETTABLEKS                       R27 R27 K11 ["createElement"]
      534 GETUPVAL                         R28 4
      535 GETTABLEKS                       R28 R28 K12 ["View"]
      537 DUPTABLE                         R29 K49 [{"tag", "LayoutOrder"}]
      538 LOADK                            R30 K26 ["size-0-0 auto-xy row align-y-center padding-small gap-xsmall"]
      539 SETTABLEKS                       R30 R29 K13 ["tag"]
      541 MOVE                             R30 R1
      542 CALL                             R30 0 1
      543 SETTABLEKS                       R30 R29 K39 ["LayoutOrder"]
      545 DUPTABLE                         R30 K88 [{"ResetButton", "ApplyButton"}]
      546 MOVE                             R31 R14
      547 JUMPIFNOT                        R31 ; [+55]
      548 GETUPVAL                         R31 2
      549 GETTABLEKS                       R31 R31 K11 ["createElement"]
      551 GETUPVAL                         R32 4
      552 GETTABLEKS                       R32 R32 K33 ["Button"]
      554 DUPTABLE                         R33 K91 [{"text", "variant", "size", "fillBehavior", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      555 LOADK                            R36 K92 ["Action"]
      556 LOADK                            R37 K93 ["Reset"]
      557 NAMECALL                         R34 R2 K80 ["getText"]
      559 CALL                             R34 3 1
      560 SETTABLEKS                       R34 R33 K77 ["text"]
      562 GETUPVAL                         R34 4
      563 GETTABLEKS                       R34 R34 K41 ["Enums"]
      565 GETTABLEKS                       R34 R34 K44 ["ButtonVariant"]
      567 GETTABLEKS                       R34 R34 K45 ["Text"]
      569 SETTABLEKS                       R34 R33 K35 ["variant"]
      571 GETUPVAL                         R34 4
      572 GETTABLEKS                       R34 R34 K41 ["Enums"]
      574 GETTABLEKS                       R34 R34 K46 ["InputSize"]
      576 GETTABLEKS                       R34 R34 K47 ["XSmall"]
      578 SETTABLEKS                       R34 R33 K36 ["size"]
      580 GETUPVAL                         R34 4
      581 GETTABLEKS                       R34 R34 K41 ["Enums"]
      583 GETTABLEKS                       R34 R34 K94 ["FillBehavior"]
      585 GETTABLEKS                       R34 R34 K95 ["Fill"]
      587 SETTABLEKS                       R34 R33 K89 ["fillBehavior"]
      589 GETTABLEKS                       R34 R13 K69 ["enabled"]
      591 SETTABLEKS                       R34 R33 K90 ["isDisabled"]
      593 SETTABLEKS                       R17 R33 K37 ["onActivated"]
      595 LOADK                            R34 K96 ["--date-range-selector-reset"]
      596 SETTABLEKS                       R34 R33 K38 ["testId"]
      598 MOVE                             R34 R1
      599 CALL                             R34 0 1
      600 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      602 CALL                             R31 2 1
      603 SETTABLEKS                       R31 R30 K86 ["ResetButton"]
      605 GETUPVAL                         R31 2
      606 GETTABLEKS                       R31 R31 K11 ["createElement"]
      608 GETUPVAL                         R32 4
      609 GETTABLEKS                       R32 R32 K33 ["Button"]
      611 DUPTABLE                         R33 K91 [{"text", "variant", "size", "fillBehavior", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      612 LOADK                            R36 K92 ["Action"]
      613 LOADK                            R37 K97 ["Apply"]
      614 NAMECALL                         R34 R2 K80 ["getText"]
      616 CALL                             R34 3 1
      617 SETTABLEKS                       R34 R33 K77 ["text"]
      619 GETUPVAL                         R34 4
      620 GETTABLEKS                       R34 R34 K41 ["Enums"]
      622 GETTABLEKS                       R34 R34 K44 ["ButtonVariant"]
      624 GETTABLEKS                       R34 R34 K98 ["Emphasis"]
      626 SETTABLEKS                       R34 R33 K35 ["variant"]
      628 GETUPVAL                         R34 4
      629 GETTABLEKS                       R34 R34 K41 ["Enums"]
      631 GETTABLEKS                       R34 R34 K46 ["InputSize"]
      633 GETTABLEKS                       R34 R34 K47 ["XSmall"]
      635 SETTABLEKS                       R34 R33 K36 ["size"]
      637 GETUPVAL                         R34 4
      638 GETTABLEKS                       R34 R34 K41 ["Enums"]
      640 GETTABLEKS                       R34 R34 K94 ["FillBehavior"]
      642 GETTABLEKS                       R34 R34 K95 ["Fill"]
      644 SETTABLEKS                       R34 R33 K89 ["fillBehavior"]
      646 GETTABLEKS                       R35 R13 K69 ["enabled"]
      648 OR                               R34 R35 R15
      649 SETTABLEKS                       R34 R33 K90 ["isDisabled"]
      651 SETTABLEKS                       R16 R33 K37 ["onActivated"]
      653 LOADK                            R34 K99 ["--date-range-selector-apply"]
      654 SETTABLEKS                       R34 R33 K38 ["testId"]
      656 MOVE                             R34 R1
      657 CALL                             R34 0 1
      658 SETTABLEKS                       R34 R33 K39 ["LayoutOrder"]
      660 CALL                             R31 2 1
      661 SETTABLEKS                       R31 R30 K87 ["ApplyButton"]
      663 CALL                             R27 3 1
      664 SETTABLEKS                       R27 R26 K23 ["Footer"]
      666 CALL                             R23 3 -1
      667 RETURN                           R23 -1

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
       42 LOADN                            R13 231
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
