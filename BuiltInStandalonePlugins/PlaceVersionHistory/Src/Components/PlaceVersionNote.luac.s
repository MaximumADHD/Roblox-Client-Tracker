PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["<%*>"]
        2 GETUPVAL                         R3 1
        3 LOADK                            R5 K1 ["Label"]
        4 LOADK                            R6 K2 ["UnknownUser"]
        5 NAMECALL                         R3 R3 K3 ["getText"]
        7 CALL                             R3 3 1
        8 NAMECALL                         R1 R1 K4 ["format"]
       10 CALL                             R1 2 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

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
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["metadata"]
       14 GETTABLEKS                       R3 R3 K4 ["notes"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K2 ["metadata"]
       19 GETTABLEKS                       R5 R5 K5 ["publishStatus"]
       21 JUMPIFNOTEQKNIL                  R5 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K2 ["metadata"]
       28 GETTABLEKS                       R5 R5 K6 ["date"]
       30 CALL                             R0 5 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openEditNotesDialog"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["placeId"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["metadata"]
        9 GETTABLEKS                       R2 R2 K3 ["version"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_4:
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
      105 GETUPVAL                         R16 7
      106 GETTABLEKS                       R16 R16 K17 ["EngineFeaturePVHGenerateNotes"]
      108 JUMPIFNOT                        R16 ; [+29]
      109 GETUPVAL                         R15 3
      110 GETTABLEKS                       R15 R15 K18 ["useCallback"]
      112 NEWCLOSURE                       R16 P1
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R0
      116 NEWTABLE                         R17 0 4
      118 GETTABLEKS                       R18 R0 K7 ["metadata"]
      120 GETTABLEKS                       R18 R18 K19 ["version"]
      122 GETTABLEKS                       R19 R0 K7 ["metadata"]
      124 GETTABLEKS                       R19 R19 K11 ["notes"]
      126 GETTABLEKS                       R20 R0 K7 ["metadata"]
      128 GETTABLEKS                       R20 R20 K15 ["publishStatus"]
      130 GETTABLEKS                       R21 R0 K7 ["metadata"]
      132 GETTABLEKS                       R21 R21 K20 ["date"]
      134 SETLIST                          R17 R18 4 [1]
      136 CALL                             R15 2 1
      137 JUMP                             ; [+20]
      138 GETUPVAL                         R15 3
      139 GETTABLEKS                       R15 R15 K18 ["useCallback"]
      141 NEWCLOSURE                       R16 P2
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R0
      145 NEWTABLE                         R17 0 2
      147 GETTABLEKS                       R18 R0 K7 ["metadata"]
      149 GETTABLEKS                       R18 R18 K19 ["version"]
      151 GETTABLEKS                       R19 R0 K7 ["metadata"]
      153 GETTABLEKS                       R19 R19 K11 ["notes"]
      155 SETLIST                          R17 R18 2 [1]
      157 CALL                             R15 2 1
      158 GETUPVAL                         R16 3
      159 GETTABLEKS                       R16 R16 K21 ["createElement"]
      161 GETUPVAL                         R17 2
      162 GETTABLEKS                       R17 R17 K22 ["View"]
      164 DUPTABLE                         R18 K26 [{["tag"] = "col align-x-left gap-xsmall size-0-0 auto-y", ["LayoutOrder"]}]
      165 GETTABLEKS                       R19 R0 K25 ["LayoutOrder"]
      167 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      169 DUPTABLE                         R19 K30 [{"Title", "AddNotes", "Details"}]
      170 MOVE                             R20 R12
      171 JUMPIFNOT                        R20 ; [+20]
      172 GETUPVAL                         R20 3
      173 GETTABLEKS                       R20 R20 K21 ["createElement"]
      175 GETUPVAL                         R21 2
      176 GETTABLEKS                       R21 R21 K31 ["Text"]
      178 DUPTABLE                         R22 K33 [{["tag"] = "size-0-0 auto-xy text-title-medium text-truncate-split content-emphasis", ["Text"], ["LayoutOrder"]}]
      179 GETTABLEKS                       R23 R0 K7 ["metadata"]
      181 GETTABLEKS                       R23 R23 K11 ["notes"]
      183 GETTABLEKS                       R23 R23 K12 ["title"]
      185 SETTABLEKS                       R23 R22 K31 ["Text"]
      187 MOVE                             R23 R1
      188 CALL                             R23 0 1
      189 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      191 CALL                             R20 2 1
      192 SETTABLEKS                       R20 R19 K27 ["Title"]
      194 NOT                              R20 R12
      195 JUMPIFNOT                        R20 ; [+21]
      196 GETUPVAL                         R20 3
      197 GETTABLEKS                       R20 R20 K21 ["createElement"]
      199 GETUPVAL                         R21 2
      200 GETTABLEKS                       R21 R21 K31 ["Text"]
      202 DUPTABLE                         R22 K36 [{["tag"] = "size-0-0 auto-xy text-title-medium text-truncate-split radius-small content-link", ["Text"], ["onActivated"], ["LayoutOrder"]}]
      203 LOADK                            R25 K37 ["Action"]
      204 LOADK                            R26 K28 ["AddNotes"]
      205 NAMECALL                         R23 R2 K38 ["getText"]
      207 CALL                             R23 3 1
      208 SETTABLEKS                       R23 R22 K31 ["Text"]
      210 SETTABLEKS                       R15 R22 K35 ["onActivated"]
      212 MOVE                             R23 R1
      213 CALL                             R23 0 1
      214 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      216 CALL                             R20 2 1
      217 SETTABLEKS                       R20 R19 K28 ["AddNotes"]
      219 GETUPVAL                         R20 3
      220 GETTABLEKS                       R20 R20 K21 ["createElement"]
      222 GETUPVAL                         R21 2
      223 GETTABLEKS                       R21 R21 K22 ["View"]
      225 DUPTABLE                         R22 K40 [{["tag"] = "row align-y-center size-0-0 auto-xy", ["LayoutOrder"]}]
      226 MOVE                             R23 R1
      227 CALL                             R23 0 1
      228 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      230 DUPTABLE                         R23 K51 [{"DateText", "SaveTypeSeparator", "SaveTypeText", "SaverSeparator", "SaverText", "ContributorsSeparator", "ContributorsIcon", "ContributorsCountText", "PublishedSeparator", "PublishedText"}]
      231 GETUPVAL                         R24 3
      232 GETTABLEKS                       R24 R24 K21 ["createElement"]
      234 GETUPVAL                         R25 2
      235 GETTABLEKS                       R25 R25 K31 ["Text"]
      237 DUPTABLE                         R26 K53 [{["tag"] = "size-0-0 auto-xy text-body-small", ["Text"], ["LayoutOrder"]}]
      238 LOADK                            R27 K54 ["%*"]
      239 GETTABLEKS                       R29 R0 K7 ["metadata"]
      241 GETTABLEKS                       R29 R29 K20 ["date"]
      243 LOADK                            R31 K55 ["LT"]
      244 NAMECALL                         R32 R2 K56 ["getLocale"]
      246 CALL                             R32 1 -1
      247 NAMECALL                         R29 R29 K57 ["FormatLocalTime"]
      249 CALL                             R29 -1 1
      250 NAMECALL                         R27 R27 K58 ["format"]
      252 CALL                             R27 2 1
      253 SETTABLEKS                       R27 R26 K31 ["Text"]
      255 MOVE                             R27 R1
      256 CALL                             R27 0 1
      257 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      259 CALL                             R24 2 1
      260 SETTABLEKS                       R24 R23 K41 ["DateText"]
      262 MOVE                             R24 R10
      263 JUMPIFNOT                        R24 ; [+12]
      264 GETUPVAL                         R24 3
      265 GETTABLEKS                       R24 R24 K21 ["createElement"]
      267 GETUPVAL                         R25 2
      268 GETTABLEKS                       R25 R25 K31 ["Text"]
      270 DUPTABLE                         R26 K61 [{["tag"] = "size-0-0 auto-xy text-body-large", ["Text"] = " • ", ["LayoutOrder"]}]
      271 MOVE                             R27 R1
      272 CALL                             R27 0 1
      273 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      275 CALL                             R24 2 1
      276 SETTABLEKS                       R24 R23 K42 ["SaveTypeSeparator"]
      278 MOVE                             R24 R10
      279 JUMPIFNOT                        R24 ; [+23]
      280 GETUPVAL                         R24 3
      281 GETTABLEKS                       R24 R24 K21 ["createElement"]
      283 GETUPVAL                         R25 2
      284 GETTABLEKS                       R25 R25 K31 ["Text"]
      286 DUPTABLE                         R26 K53 [{["tag"] = "size-0-0 auto-xy text-body-small", ["Text"], ["LayoutOrder"]}]
      287 LOADK                            R27 K62 ["<%*>"]
      288 LOADK                            R31 K63 ["Label"]
      289 LOADK                            R32 K64 ["AutoSave"]
      290 NAMECALL                         R29 R2 K38 ["getText"]
      292 CALL                             R29 3 1
      293 NAMECALL                         R27 R27 K58 ["format"]
      295 CALL                             R27 2 1
      296 SETTABLEKS                       R27 R26 K31 ["Text"]
      298 MOVE                             R27 R1
      299 CALL                             R27 0 1
      300 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      302 CALL                             R24 2 1
      303 SETTABLEKS                       R24 R23 K43 ["SaveTypeText"]
      305 MOVE                             R24 R11
      306 JUMPIFNOT                        R24 ; [+12]
      307 GETUPVAL                         R24 3
      308 GETTABLEKS                       R24 R24 K21 ["createElement"]
      310 GETUPVAL                         R25 2
      311 GETTABLEKS                       R25 R25 K31 ["Text"]
      313 DUPTABLE                         R26 K61 [{["tag"] = "size-0-0 auto-xy text-body-large", ["Text"] = " • ", ["LayoutOrder"]}]
      314 MOVE                             R27 R1
      315 CALL                             R27 0 1
      316 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      318 CALL                             R24 2 1
      319 SETTABLEKS                       R24 R23 K44 ["SaverSeparator"]
      321 MOVE                             R24 R11
      322 JUMPIFNOT                        R24 ; [+19]
      323 GETUPVAL                         R24 3
      324 GETTABLEKS                       R24 R24 K21 ["createElement"]
      326 GETUPVAL                         R25 2
      327 GETTABLEKS                       R25 R25 K31 ["Text"]
      329 DUPTABLE                         R26 K53 [{["tag"] = "size-0-0 auto-xy text-body-small", ["Text"], ["LayoutOrder"]}]
      330 LOADK                            R27 K54 ["%*"]
      331 MOVE                             R29 R7
      332 NAMECALL                         R27 R27 K58 ["format"]
      334 CALL                             R27 2 1
      335 SETTABLEKS                       R27 R26 K31 ["Text"]
      337 MOVE                             R27 R1
      338 CALL                             R27 0 1
      339 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      341 CALL                             R24 2 1
      342 SETTABLEKS                       R24 R23 K45 ["SaverText"]
      344 MOVE                             R24 R13
      345 JUMPIFNOT                        R24 ; [+12]
      346 GETUPVAL                         R24 3
      347 GETTABLEKS                       R24 R24 K21 ["createElement"]
      349 GETUPVAL                         R25 2
      350 GETTABLEKS                       R25 R25 K31 ["Text"]
      352 DUPTABLE                         R26 K61 [{["tag"] = "size-0-0 auto-xy text-body-large", ["Text"] = " • ", ["LayoutOrder"]}]
      353 MOVE                             R27 R1
      354 CALL                             R27 0 1
      355 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      357 CALL                             R24 2 1
      358 SETTABLEKS                       R24 R23 K46 ["ContributorsSeparator"]
      360 MOVE                             R24 R13
      361 JUMPIFNOT                        R24 ; [+30]
      362 GETUPVAL                         R24 3
      363 GETTABLEKS                       R24 R24 K21 ["createElement"]
      365 GETUPVAL                         R25 2
      366 GETTABLEKS                       R25 R25 K65 ["Icon"]
      368 DUPTABLE                         R26 K68 [{"name", "size", "LayoutOrder"}]
      369 GETUPVAL                         R27 2
      370 GETTABLEKS                       R27 R27 K69 ["Enums"]
      372 GETTABLEKS                       R27 R27 K70 ["IconName"]
      374 GETTABLEKS                       R27 R27 K71 ["TwoPeople"]
      376 SETTABLEKS                       R27 R26 K66 ["name"]
      378 GETUPVAL                         R27 2
      379 GETTABLEKS                       R27 R27 K69 ["Enums"]
      381 GETTABLEKS                       R27 R27 K72 ["IconSize"]
      383 GETTABLEKS                       R27 R27 K73 ["XSmall"]
      385 SETTABLEKS                       R27 R26 K67 ["size"]
      387 MOVE                             R27 R1
      388 CALL                             R27 0 1
      389 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      391 CALL                             R24 2 1
      392 SETTABLEKS                       R24 R23 K47 ["ContributorsIcon"]
      394 MOVE                             R24 R13
      395 JUMPIFNOT                        R24 ; [+23]
      396 GETUPVAL                         R24 3
      397 GETTABLEKS                       R24 R24 K21 ["createElement"]
      399 GETUPVAL                         R25 2
      400 GETTABLEKS                       R25 R25 K31 ["Text"]
      402 DUPTABLE                         R26 K53 [{["tag"] = "size-0-0 auto-xy text-body-small", ["Text"], ["LayoutOrder"]}]
      403 LOADK                            R27 K54 ["%*"]
      404 GETTABLEKS                       R30 R0 K7 ["metadata"]
      406 GETTABLEKS                       R30 R30 K13 ["contributors"]
      408 LENGTH                           R29 R30
      409 NAMECALL                         R27 R27 K58 ["format"]
      411 CALL                             R27 2 1
      412 SETTABLEKS                       R27 R26 K31 ["Text"]
      414 MOVE                             R27 R1
      415 CALL                             R27 0 1
      416 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      418 CALL                             R24 2 1
      419 SETTABLEKS                       R24 R23 K48 ["ContributorsCountText"]
      421 MOVE                             R24 R14
      422 JUMPIFNOT                        R24 ; [+12]
      423 GETUPVAL                         R24 3
      424 GETTABLEKS                       R24 R24 K21 ["createElement"]
      426 GETUPVAL                         R25 2
      427 GETTABLEKS                       R25 R25 K31 ["Text"]
      429 DUPTABLE                         R26 K61 [{["tag"] = "size-0-0 auto-xy text-body-large", ["Text"] = " • ", ["LayoutOrder"]}]
      430 MOVE                             R27 R1
      431 CALL                             R27 0 1
      432 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      434 CALL                             R24 2 1
      435 SETTABLEKS                       R24 R23 K49 ["PublishedSeparator"]
      437 MOVE                             R24 R14
      438 JUMPIFNOT                        R24 ; [+65]
      439 GETUPVAL                         R24 3
      440 GETTABLEKS                       R24 R24 K21 ["createElement"]
      442 GETUPVAL                         R25 2
      443 GETTABLEKS                       R25 R25 K31 ["Text"]
      445 DUPTABLE                         R26 K75 [{["tag"] = "size-0-0 auto-xy text-body-small", ["textStyle"], ["Text"], ["LayoutOrder"]}]
      446 GETTABLEKS                       R28 R3 K76 ["Config"]
      448 GETTABLEKS                       R28 R28 K77 ["ColorMode"]
      450 GETTABLEKS                       R28 R28 K78 ["IsDark"]
      452 JUMPIFNOT                        R28 ; [+9]
      453 GETTABLEKS                       R27 R3 K79 ["Color"]
      455 GETTABLEKS                       R27 R27 K80 ["Extended"]
      457 GETTABLEKS                       R27 R27 K81 ["Green"]
      459 GETTABLEKS                       R27 R27 K82 ["Green_500"]
      461 JUMP                             ; [+8]
      462 GETTABLEKS                       R27 R3 K79 ["Color"]
      464 GETTABLEKS                       R27 R27 K80 ["Extended"]
      466 GETTABLEKS                       R27 R27 K81 ["Green"]
      468 GETTABLEKS                       R27 R27 K83 ["Green_800"]
      470 SETTABLEKS                       R27 R26 K74 ["textStyle"]
      472 GETTABLEKS                       R28 R0 K7 ["metadata"]
      474 GETTABLEKS                       R28 R28 K15 ["publishStatus"]
      476 JUMPIFNOTEQKS                    R28 K84 ["Published"] ; [+7]
      478 LOADK                            R29 K63 ["Label"]
      479 LOADK                            R30 K84 ["Published"]
      480 NAMECALL                         R27 R2 K38 ["getText"]
      482 CALL                             R27 3 1
      483 JUMP                             ; [+13]
      484 GETTABLEKS                       R28 R0 K7 ["metadata"]
      486 GETTABLEKS                       R28 R28 K15 ["publishStatus"]
      488 JUMPIFNOTEQKS                    R28 K85 ["PreviouslyPublished"] ; [+7]
      490 LOADK                            R29 K63 ["Label"]
      491 LOADK                            R30 K85 ["PreviouslyPublished"]
      492 NAMECALL                         R27 R2 K38 ["getText"]
      494 CALL                             R27 3 1
      495 JUMP                             ; [+1]
      496 LOADNIL                          R27
      497 SETTABLEKS                       R27 R26 K31 ["Text"]
      499 MOVE                             R27 R1
      500 CALL                             R27 0 1
      501 SETTABLEKS                       R27 R26 K25 ["LayoutOrder"]
      503 CALL                             R24 2 1
      504 SETTABLEKS                       R24 R23 K50 ["PublishedText"]
      506 CALL                             R20 3 1
      507 SETTABLEKS                       R20 R19 K29 ["Details"]
      509 CALL                             R16 3 -1
      510 RETURN                           R16 -1

PROTO_5:
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

PROTO_6:
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
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["Framework"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Localization"]
       48 GETTABLEKS                       R8 R0 K16 ["Src"]
       50 GETTABLEKS                       R8 R8 K17 ["Contexts"]
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R8 K18 ["NetworkContext"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R8 K19 ["DialogContext"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R8 K20 ["ControllerContext"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R8 K21 ["SettingContext"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R13 R0 K16 ["Src"]
       74 GETTABLEKS                       R13 R13 K22 ["Components"]
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R15 R13 K23 ["ContributorList"]
       80 CALL                             R14 1 1
       81 GETTABLEKS                       R15 R3 K24 ["createNextOrder"]
       83 GETIMPORT                        R16 K5 [require]
       85 GETTABLEKS                       R17 R0 K16 ["Src"]
       87 GETTABLEKS                       R17 R17 K25 ["Types"]
       89 CALL                             R16 1 1
       90 DUPCLOSURE                       R17 K26 [PROTO_4]
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R1
       99 DUPCLOSURE                       R18 K27 [PROTO_5]
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R14
      104 DUPCLOSURE                       R19 K28 [PROTO_6]
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R18
      110 RETURN                           R19 1
