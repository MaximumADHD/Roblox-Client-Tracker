PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["<%*>"]
        2 GETUPVAL                         R4 1
        3 LOADK                            R6 K1 ["Label"]
        4 LOADK                            R7 K2 ["UnknownUser"]
        5 NAMECALL                         R4 R4 K3 ["getText"]
        7 CALL                             R4 3 1
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 MOVE                             R1 R2
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["cancel"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K2 ["metadata"]
       17 GETTABLEKS                       R0 R0 K3 ["saver"]
       19 JUMPIFNOT                        R0 ; [+22]
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K4 ["getUserName"]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K2 ["metadata"]
       27 GETTABLEKS                       R2 R2 K3 ["saver"]
       29 CALL                             R1 1 1
       30 GETUPVAL                         R3 3
       31 NAMECALL                         R1 R1 K5 ["andThen"]
       33 CALL                             R1 2 1
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 NAMECALL                         R1 R1 K6 ["catch"]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K0 ["current"]
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openEditNotesDialog"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["placeId"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["metadata"]
        9 GETTABLEKS                       R2 R2 K3 ["version"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Hooks"]
        9 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["useContext"]
       15 GETUPVAL                         R5 4
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K3 ["useContext"]
       20 GETUPVAL                         R6 5
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K3 ["useContext"]
       25 GETUPVAL                         R7 6
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K4 ["useState"]
       30 LOADK                            R8 K5 [". . ."]
       31 CALL                             R7 1 2
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R9 R9 K6 ["useRef"]
       35 LOADNIL                          R10
       36 CALL                             R9 1 1
       37 GETTABLEKS                       R11 R0 K7 ["metadata"]
       39 GETTABLEKS                       R11 R11 K8 ["saveType"]
       41 JUMPIFEQKS                       R11 K9 ["Auto"] ; [+2]
       43 LOADB                            R10 0 +1
       44 LOADB                            R10 1
       45 LOADB                            R11 0
       46 GETTABLEKS                       R12 R0 K7 ["metadata"]
       48 GETTABLEKS                       R12 R12 K8 ["saveType"]
       50 JUMPIFEQKS                       R12 K9 ["Auto"] ; [+9]
       52 GETTABLEKS                       R12 R0 K7 ["metadata"]
       54 GETTABLEKS                       R12 R12 K10 ["saver"]
       56 JUMPIFNOTEQKNIL                  R12 ; [+2]
       58 LOADB                            R11 0 +1
       59 LOADB                            R11 1
       60 GETTABLEKS                       R13 R0 K7 ["metadata"]
       62 GETTABLEKS                       R13 R13 K11 ["notes"]
       64 GETTABLEKS                       R13 R13 K12 ["title"]
       66 JUMPIFNOTEQKNIL                  R13 ; [+2]
       68 LOADB                            R12 0 +1
       69 LOADB                            R12 1
       70 GETTABLEKS                       R15 R0 K7 ["metadata"]
       72 GETTABLEKS                       R15 R15 K13 ["contributors"]
       74 LENGTH                           R14 R15
       75 JUMPIFNOTEQKN                    R14 K14 [0] ; [+2]
       77 LOADB                            R13 0 +1
       78 LOADB                            R13 1
       79 GETTABLEKS                       R15 R0 K7 ["metadata"]
       81 GETTABLEKS                       R15 R15 K15 ["publishStatus"]
       83 JUMPIFNOTEQKNIL                  R15 ; [+2]
       85 LOADB                            R14 0 +1
       86 LOADB                            R14 1
       87 GETUPVAL                         R15 3
       88 GETTABLEKS                       R15 R15 K16 ["useEffect"]
       90 NEWCLOSURE                       R16 P0
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R2
       96 NEWTABLE                         R17 0 1
       98 GETTABLEKS                       R18 R0 K7 ["metadata"]
      100 GETTABLEKS                       R18 R18 K10 ["saver"]
      102 SETLIST                          R17 R18 1 [1]
      104 CALL                             R15 2 0
      105 GETUPVAL                         R15 3
      106 GETTABLEKS                       R15 R15 K17 ["useCallback"]
      108 NEWCLOSURE                       R16 P1
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R0
      112 NEWTABLE                         R17 0 2
      114 GETTABLEKS                       R18 R0 K7 ["metadata"]
      116 GETTABLEKS                       R18 R18 K18 ["version"]
      118 GETTABLEKS                       R19 R0 K7 ["metadata"]
      120 GETTABLEKS                       R19 R19 K11 ["notes"]
      122 SETLIST                          R17 R18 2 [1]
      124 CALL                             R15 2 1
      125 GETUPVAL                         R16 3
      126 GETTABLEKS                       R16 R16 K19 ["createElement"]
      128 GETUPVAL                         R17 2
      129 GETTABLEKS                       R17 R17 K20 ["View"]
      131 DUPTABLE                         R18 K24 [{["tag"] = "col align-x-left gap-xsmall size-0-0 auto-y", ["LayoutOrder"]}]
      132 GETTABLEKS                       R19 R0 K23 ["LayoutOrder"]
      134 SETTABLEKS                       R19 R18 K23 ["LayoutOrder"]
      136 DUPTABLE                         R19 K28 [{"Title", "AddNotes", "Details"}]
      137 MOVE                             R20 R12
      138 JUMPIFNOT                        R20 ; [+20]
      139 GETUPVAL                         R20 3
      140 GETTABLEKS                       R20 R20 K19 ["createElement"]
      142 GETUPVAL                         R21 2
      143 GETTABLEKS                       R21 R21 K29 ["Text"]
      145 DUPTABLE                         R22 K31 [{["tag"] = "size-0-0 auto-xy text-title-medium text-truncate-split content-emphasis", ["Text"], ["LayoutOrder"]}]
      146 GETTABLEKS                       R23 R0 K7 ["metadata"]
      148 GETTABLEKS                       R23 R23 K11 ["notes"]
      150 GETTABLEKS                       R23 R23 K12 ["title"]
      152 SETTABLEKS                       R23 R22 K29 ["Text"]
      154 MOVE                             R23 R1
      155 CALL                             R23 0 1
      156 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      158 CALL                             R20 2 1
      159 SETTABLEKS                       R20 R19 K25 ["Title"]
      161 NOT                              R20 R12
      162 JUMPIFNOT                        R20 ; [+21]
      163 GETUPVAL                         R20 3
      164 GETTABLEKS                       R20 R20 K19 ["createElement"]
      166 GETUPVAL                         R21 2
      167 GETTABLEKS                       R21 R21 K29 ["Text"]
      169 DUPTABLE                         R22 K34 [{["tag"] = "size-0-0 auto-xy text-title-medium text-truncate-split radius-small content-link", ["Text"], ["onActivated"], ["LayoutOrder"]}]
      170 LOADK                            R25 K35 ["Action"]
      171 LOADK                            R26 K26 ["AddNotes"]
      172 NAMECALL                         R23 R2 K36 ["getText"]
      174 CALL                             R23 3 1
      175 SETTABLEKS                       R23 R22 K29 ["Text"]
      177 SETTABLEKS                       R15 R22 K33 ["onActivated"]
      179 MOVE                             R23 R1
      180 CALL                             R23 0 1
      181 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      183 CALL                             R20 2 1
      184 SETTABLEKS                       R20 R19 K26 ["AddNotes"]
      186 GETUPVAL                         R20 3
      187 GETTABLEKS                       R20 R20 K19 ["createElement"]
      189 GETUPVAL                         R21 2
      190 GETTABLEKS                       R21 R21 K20 ["View"]
      192 DUPTABLE                         R22 K38 [{["tag"] = "row align-y-center size-0-0 auto-xy", ["LayoutOrder"]}]
      193 MOVE                             R23 R1
      194 CALL                             R23 0 1
      195 SETTABLEKS                       R23 R22 K23 ["LayoutOrder"]
      197 DUPTABLE                         R23 K49 [{"DateText", "SaveTypeSeparator", "SaveTypeText", "SaverSeparator", "SaverText", "ContributorsSeparator", "ContributorsIcon", "ContributorsCountText", "PublishedSeparator", "PublishedText"}]
      198 GETUPVAL                         R24 3
      199 GETTABLEKS                       R24 R24 K19 ["createElement"]
      201 GETUPVAL                         R25 2
      202 GETTABLEKS                       R25 R25 K29 ["Text"]
      204 DUPTABLE                         R26 K51 [{["tag"] = "size-0-0 auto-xy text-body-small", ["Text"], ["LayoutOrder"]}]
      205 LOADK                            R28 K52 ["%*"]
      206 GETTABLEKS                       R30 R0 K7 ["metadata"]
      208 GETTABLEKS                       R30 R30 K53 ["date"]
      210 LOADK                            R32 K54 ["LT"]
      211 NAMECALL                         R33 R2 K55 ["getLocale"]
      213 CALL                             R33 1 -1
      214 NAMECALL                         R30 R30 K56 ["FormatLocalTime"]
      216 CALL                             R30 -1 1
      217 NAMECALL                         R28 R28 K57 ["format"]
      219 CALL                             R28 2 1
      220 MOVE                             R27 R28
      221 SETTABLEKS                       R27 R26 K29 ["Text"]
      223 MOVE                             R27 R1
      224 CALL                             R27 0 1
      225 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      227 CALL                             R24 2 1
      228 SETTABLEKS                       R24 R23 K39 ["DateText"]
      230 MOVE                             R24 R10
      231 JUMPIFNOT                        R24 ; [+12]
      232 GETUPVAL                         R24 3
      233 GETTABLEKS                       R24 R24 K19 ["createElement"]
      235 GETUPVAL                         R25 2
      236 GETTABLEKS                       R25 R25 K29 ["Text"]
      238 DUPTABLE                         R26 K60 [{["tag"] = "size-0-0 auto-xy text-body-large", ["Text"] = " • ", ["LayoutOrder"]}]
      239 MOVE                             R27 R1
      240 CALL                             R27 0 1
      241 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      243 CALL                             R24 2 1
      244 SETTABLEKS                       R24 R23 K40 ["SaveTypeSeparator"]
      246 MOVE                             R24 R10
      247 JUMPIFNOT                        R24 ; [+24]
      248 GETUPVAL                         R24 3
      249 GETTABLEKS                       R24 R24 K19 ["createElement"]
      251 GETUPVAL                         R25 2
      252 GETTABLEKS                       R25 R25 K29 ["Text"]
      254 DUPTABLE                         R26 K51 [{["tag"] = "size-0-0 auto-xy text-body-small", ["Text"], ["LayoutOrder"]}]
      255 LOADK                            R28 K61 ["<%*>"]
      256 LOADK                            R32 K62 ["Label"]
      257 LOADK                            R33 K63 ["AutoSave"]
      258 NAMECALL                         R30 R2 K36 ["getText"]
      260 CALL                             R30 3 1
      261 NAMECALL                         R28 R28 K57 ["format"]
      263 CALL                             R28 2 1
      264 MOVE                             R27 R28
      265 SETTABLEKS                       R27 R26 K29 ["Text"]
      267 MOVE                             R27 R1
      268 CALL                             R27 0 1
      269 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      271 CALL                             R24 2 1
      272 SETTABLEKS                       R24 R23 K41 ["SaveTypeText"]
      274 MOVE                             R24 R11
      275 JUMPIFNOT                        R24 ; [+12]
      276 GETUPVAL                         R24 3
      277 GETTABLEKS                       R24 R24 K19 ["createElement"]
      279 GETUPVAL                         R25 2
      280 GETTABLEKS                       R25 R25 K29 ["Text"]
      282 DUPTABLE                         R26 K60 [{["tag"] = "size-0-0 auto-xy text-body-large", ["Text"] = " • ", ["LayoutOrder"]}]
      283 MOVE                             R27 R1
      284 CALL                             R27 0 1
      285 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      287 CALL                             R24 2 1
      288 SETTABLEKS                       R24 R23 K42 ["SaverSeparator"]
      290 MOVE                             R24 R11
      291 JUMPIFNOT                        R24 ; [+20]
      292 GETUPVAL                         R24 3
      293 GETTABLEKS                       R24 R24 K19 ["createElement"]
      295 GETUPVAL                         R25 2
      296 GETTABLEKS                       R25 R25 K29 ["Text"]
      298 DUPTABLE                         R26 K51 [{["tag"] = "size-0-0 auto-xy text-body-small", ["Text"], ["LayoutOrder"]}]
      299 LOADK                            R28 K52 ["%*"]
      300 MOVE                             R30 R7
      301 NAMECALL                         R28 R28 K57 ["format"]
      303 CALL                             R28 2 1
      304 MOVE                             R27 R28
      305 SETTABLEKS                       R27 R26 K29 ["Text"]
      307 MOVE                             R27 R1
      308 CALL                             R27 0 1
      309 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      311 CALL                             R24 2 1
      312 SETTABLEKS                       R24 R23 K43 ["SaverText"]
      314 MOVE                             R24 R13
      315 JUMPIFNOT                        R24 ; [+12]
      316 GETUPVAL                         R24 3
      317 GETTABLEKS                       R24 R24 K19 ["createElement"]
      319 GETUPVAL                         R25 2
      320 GETTABLEKS                       R25 R25 K29 ["Text"]
      322 DUPTABLE                         R26 K60 [{["tag"] = "size-0-0 auto-xy text-body-large", ["Text"] = " • ", ["LayoutOrder"]}]
      323 MOVE                             R27 R1
      324 CALL                             R27 0 1
      325 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      327 CALL                             R24 2 1
      328 SETTABLEKS                       R24 R23 K44 ["ContributorsSeparator"]
      330 MOVE                             R24 R13
      331 JUMPIFNOT                        R24 ; [+30]
      332 GETUPVAL                         R24 3
      333 GETTABLEKS                       R24 R24 K19 ["createElement"]
      335 GETUPVAL                         R25 2
      336 GETTABLEKS                       R25 R25 K64 ["Icon"]
      338 DUPTABLE                         R26 K67 [{"name", "size", "LayoutOrder"}]
      339 GETUPVAL                         R27 2
      340 GETTABLEKS                       R27 R27 K68 ["Enums"]
      342 GETTABLEKS                       R27 R27 K69 ["IconName"]
      344 GETTABLEKS                       R27 R27 K70 ["TwoPeople"]
      346 SETTABLEKS                       R27 R26 K65 ["name"]
      348 GETUPVAL                         R27 2
      349 GETTABLEKS                       R27 R27 K68 ["Enums"]
      351 GETTABLEKS                       R27 R27 K71 ["IconSize"]
      353 GETTABLEKS                       R27 R27 K72 ["XSmall"]
      355 SETTABLEKS                       R27 R26 K66 ["size"]
      357 MOVE                             R27 R1
      358 CALL                             R27 0 1
      359 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      361 CALL                             R24 2 1
      362 SETTABLEKS                       R24 R23 K45 ["ContributorsIcon"]
      364 MOVE                             R24 R13
      365 JUMPIFNOT                        R24 ; [+24]
      366 GETUPVAL                         R24 3
      367 GETTABLEKS                       R24 R24 K19 ["createElement"]
      369 GETUPVAL                         R25 2
      370 GETTABLEKS                       R25 R25 K29 ["Text"]
      372 DUPTABLE                         R26 K51 [{["tag"] = "size-0-0 auto-xy text-body-small", ["Text"], ["LayoutOrder"]}]
      373 LOADK                            R28 K52 ["%*"]
      374 GETTABLEKS                       R31 R0 K7 ["metadata"]
      376 GETTABLEKS                       R31 R31 K13 ["contributors"]
      378 LENGTH                           R30 R31
      379 NAMECALL                         R28 R28 K57 ["format"]
      381 CALL                             R28 2 1
      382 MOVE                             R27 R28
      383 SETTABLEKS                       R27 R26 K29 ["Text"]
      385 MOVE                             R27 R1
      386 CALL                             R27 0 1
      387 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      389 CALL                             R24 2 1
      390 SETTABLEKS                       R24 R23 K46 ["ContributorsCountText"]
      392 MOVE                             R24 R14
      393 JUMPIFNOT                        R24 ; [+12]
      394 GETUPVAL                         R24 3
      395 GETTABLEKS                       R24 R24 K19 ["createElement"]
      397 GETUPVAL                         R25 2
      398 GETTABLEKS                       R25 R25 K29 ["Text"]
      400 DUPTABLE                         R26 K60 [{["tag"] = "size-0-0 auto-xy text-body-large", ["Text"] = " • ", ["LayoutOrder"]}]
      401 MOVE                             R27 R1
      402 CALL                             R27 0 1
      403 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      405 CALL                             R24 2 1
      406 SETTABLEKS                       R24 R23 K47 ["PublishedSeparator"]
      408 MOVE                             R24 R14
      409 JUMPIFNOT                        R24 ; [+65]
      410 GETUPVAL                         R24 3
      411 GETTABLEKS                       R24 R24 K19 ["createElement"]
      413 GETUPVAL                         R25 2
      414 GETTABLEKS                       R25 R25 K29 ["Text"]
      416 DUPTABLE                         R26 K74 [{["tag"] = "size-0-0 auto-xy text-body-small", ["textStyle"], ["Text"], ["LayoutOrder"]}]
      417 GETTABLEKS                       R28 R3 K75 ["Config"]
      419 GETTABLEKS                       R28 R28 K76 ["ColorMode"]
      421 GETTABLEKS                       R28 R28 K77 ["IsDark"]
      423 JUMPIFNOT                        R28 ; [+9]
      424 GETTABLEKS                       R27 R3 K78 ["Color"]
      426 GETTABLEKS                       R27 R27 K79 ["Extended"]
      428 GETTABLEKS                       R27 R27 K80 ["Green"]
      430 GETTABLEKS                       R27 R27 K81 ["Green_500"]
      432 JUMP                             ; [+8]
      433 GETTABLEKS                       R27 R3 K78 ["Color"]
      435 GETTABLEKS                       R27 R27 K79 ["Extended"]
      437 GETTABLEKS                       R27 R27 K80 ["Green"]
      439 GETTABLEKS                       R27 R27 K82 ["Green_800"]
      441 SETTABLEKS                       R27 R26 K73 ["textStyle"]
      443 GETTABLEKS                       R28 R0 K7 ["metadata"]
      445 GETTABLEKS                       R28 R28 K15 ["publishStatus"]
      447 JUMPIFNOTEQKS                    R28 K83 ["Published"] ; [+7]
      449 LOADK                            R29 K62 ["Label"]
      450 LOADK                            R30 K83 ["Published"]
      451 NAMECALL                         R27 R2 K36 ["getText"]
      453 CALL                             R27 3 1
      454 JUMP                             ; [+13]
      455 GETTABLEKS                       R28 R0 K7 ["metadata"]
      457 GETTABLEKS                       R28 R28 K15 ["publishStatus"]
      459 JUMPIFNOTEQKS                    R28 K84 ["PreviouslyPublished"] ; [+7]
      461 LOADK                            R29 K62 ["Label"]
      462 LOADK                            R30 K84 ["PreviouslyPublished"]
      463 NAMECALL                         R27 R2 K36 ["getText"]
      465 CALL                             R27 3 1
      466 JUMP                             ; [+1]
      467 LOADNIL                          R27
      468 SETTABLEKS                       R27 R26 K29 ["Text"]
      470 MOVE                             R27 R1
      471 CALL                             R27 0 1
      472 SETTABLEKS                       R27 R26 K23 ["LayoutOrder"]
      474 CALL                             R24 2 1
      475 SETTABLEKS                       R24 R23 K48 ["PublishedText"]
      477 CALL                             R20 3 1
      478 SETTABLEKS                       R20 R19 K27 ["Details"]
      480 CALL                             R16 3 -1
      481 RETURN                           R16 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["metadata"]
        4 GETTABLEKS                       R3 R3 K1 ["notes"]
        6 GETTABLEKS                       R3 R3 K2 ["description"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETTABLEKS                       R5 R0 K0 ["metadata"]
       14 GETTABLEKS                       R5 R5 K3 ["contributors"]
       16 LENGTH                           R4 R5
       17 JUMPIFNOTEQKN                    R4 K4 [0] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 OR                               R4 R2 R3
       22 MOVE                             R5 R4
       23 JUMPIFNOT                        R5 ; [+57]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K5 ["createElement"]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K6 ["View"]
       30 DUPTABLE                         R7 K10 [{["tag"] = "col align-x-left gap-small size-0-0 auto-y", ["LayoutOrder"]}]
       31 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       33 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       35 DUPTABLE                         R8 K13 [{"Description", "ContributorList"}]
       36 MOVE                             R9 R2
       37 JUMPIFNOT                        R9 ; [+20]
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K5 ["createElement"]
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K14 ["Text"]
       44 DUPTABLE                         R11 K16 [{["tag"] = "size-0-0 auto-xy text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
       45 GETTABLEKS                       R12 R0 K0 ["metadata"]
       47 GETTABLEKS                       R12 R12 K1 ["notes"]
       49 GETTABLEKS                       R12 R12 K2 ["description"]
       51 SETTABLEKS                       R12 R11 K14 ["Text"]
       53 MOVE                             R12 R1
       54 CALL                             R12 0 1
       55 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K11 ["Description"]
       60 MOVE                             R9 R3
       61 JUMPIFNOT                        R9 ; [+16]
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K5 ["createElement"]
       65 GETUPVAL                         R10 3
       66 DUPTABLE                         R11 K17 [{"contributors", "LayoutOrder"}]
       67 GETTABLEKS                       R12 R0 K0 ["metadata"]
       69 GETTABLEKS                       R12 R12 K3 ["contributors"]
       71 SETTABLEKS                       R12 R11 K3 ["contributors"]
       73 MOVE                             R12 R1
       74 CALL                             R12 0 1
       75 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K12 ["ContributorList"]
       80 CALL                             R5 3 1
       81 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K5 [{["tag"] = "col flex-x-fill align-x-left fill gap-small size-0-0 auto-y clip", ["LayoutOrder"]}]
        9 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K8 [{"Header", "Body"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K0 ["createElement"]
       17 GETUPVAL                         R7 3
       18 DUPTABLE                         R8 K10 [{"metadata", "LayoutOrder"}]
       19 GETTABLEKS                       R9 R0 K9 ["metadata"]
       21 SETTABLEKS                       R9 R8 K9 ["metadata"]
       23 MOVE                             R9 R1
       24 CALL                             R9 0 1
       25 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K6 ["Header"]
       30 GETTABLEKS                       R6 R0 K11 ["isExpanded"]
       32 JUMPIFNOT                        R6 ; [+14]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K0 ["createElement"]
       36 GETUPVAL                         R7 4
       37 DUPTABLE                         R8 K10 [{"metadata", "LayoutOrder"}]
       38 GETTABLEKS                       R9 R0 K9 ["metadata"]
       40 SETTABLEKS                       R9 R8 K9 ["metadata"]
       42 MOVE                             R9 R1
       43 CALL                             R9 0 1
       44 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K7 ["Body"]
       49 CALL                             R2 3 -1
       50 RETURN                           R2 -1

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
       39 GETTABLEKS                       R7 R0 K13 ["Src"]
       41 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R7 K15 ["NetworkContext"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R10 R7 K16 ["DialogContext"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K5 [require]
       55 GETTABLEKS                       R11 R7 K17 ["ControllerContext"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R7 K18 ["SettingContext"]
       62 CALL                             R11 1 1
       63 GETTABLEKS                       R12 R0 K13 ["Src"]
       65 GETTABLEKS                       R12 R12 K19 ["Components"]
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R12 K20 ["ContributorList"]
       71 CALL                             R13 1 1
       72 GETTABLEKS                       R14 R2 K21 ["createNextOrder"]
       74 GETIMPORT                        R15 K5 [require]
       76 GETTABLEKS                       R16 R0 K13 ["Src"]
       78 GETTABLEKS                       R16 R16 K22 ["Types"]
       80 CALL                             R15 1 1
       81 DUPCLOSURE                       R16 K23 [PROTO_3]
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R11
       89 DUPCLOSURE                       R17 K24 [PROTO_4]
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R13
       94 DUPCLOSURE                       R18 K25 [PROTO_5]
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R17
      100 RETURN                           R18 1
