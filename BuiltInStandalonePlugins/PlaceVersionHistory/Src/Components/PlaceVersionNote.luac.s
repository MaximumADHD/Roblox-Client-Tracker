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
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["refresh"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagPVHUpdatePageOnNotesEdit"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["openEditNotesDialog"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["placeId"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K3 ["metadata"]
       13 GETTABLEKS                       R2 R2 K4 ["version"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K5 ["DEPRECATED_openEditNotesDialog"]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K3 ["metadata"]
       23 GETTABLEKS                       R1 R1 K4 ["version"]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K3 ["metadata"]
       28 GETTABLEKS                       R2 R2 K6 ["notes"]
       30 CALL                             R0 2 1
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R0 R0 K7 ["andThen"]
       35 CALL                             R0 2 1
       36 DUPCLOSURE                       R2 K8 [PROTO_3]
       37 NAMECALL                         R0 R0 K9 ["catch"]
       39 CALL                             R0 2 0
       40 RETURN                           R0 0

PROTO_5:
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
       28 GETTABLEKS                       R7 R7 K3 ["useContext"]
       30 GETUPVAL                         R8 7
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K4 ["useState"]
       35 LOADK                            R9 K5 [". . ."]
       36 CALL                             R8 1 2
       37 GETUPVAL                         R10 3
       38 GETTABLEKS                       R10 R10 K6 ["useRef"]
       40 LOADNIL                          R11
       41 CALL                             R10 1 1
       42 GETTABLEKS                       R12 R0 K7 ["metadata"]
       44 GETTABLEKS                       R12 R12 K8 ["saveType"]
       46 JUMPIFEQKS                       R12 K9 ["Auto"] ; [+2]
       48 LOADB                            R11 0 +1
       49 LOADB                            R11 1
       50 LOADB                            R12 0
       51 GETTABLEKS                       R13 R0 K7 ["metadata"]
       53 GETTABLEKS                       R13 R13 K8 ["saveType"]
       55 JUMPIFEQKS                       R13 K9 ["Auto"] ; [+9]
       57 GETTABLEKS                       R13 R0 K7 ["metadata"]
       59 GETTABLEKS                       R13 R13 K10 ["saver"]
       61 JUMPIFNOTEQKNIL                  R13 ; [+2]
       63 LOADB                            R12 0 +1
       64 LOADB                            R12 1
       65 GETTABLEKS                       R14 R0 K7 ["metadata"]
       67 GETTABLEKS                       R14 R14 K11 ["notes"]
       69 GETTABLEKS                       R14 R14 K12 ["title"]
       71 JUMPIFNOTEQKNIL                  R14 ; [+2]
       73 LOADB                            R13 0 +1
       74 LOADB                            R13 1
       75 GETTABLEKS                       R16 R0 K7 ["metadata"]
       77 GETTABLEKS                       R16 R16 K13 ["contributors"]
       79 LENGTH                           R15 R16
       80 JUMPIFNOTEQKN                    R15 K14 [0] ; [+2]
       82 LOADB                            R14 0 +1
       83 LOADB                            R14 1
       84 GETTABLEKS                       R16 R0 K7 ["metadata"]
       86 GETTABLEKS                       R16 R16 K15 ["publishStatus"]
       88 JUMPIFNOTEQKNIL                  R16 ; [+2]
       90 LOADB                            R15 0 +1
       91 LOADB                            R15 1
       92 GETUPVAL                         R16 3
       93 GETTABLEKS                       R16 R16 K16 ["useEffect"]
       95 NEWCLOSURE                       R17 P0
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R2
      101 NEWTABLE                         R18 0 1
      103 GETTABLEKS                       R19 R0 K7 ["metadata"]
      105 GETTABLEKS                       R19 R19 K10 ["saver"]
      107 SETLIST                          R18 R19 1 [1]
      109 CALL                             R16 2 0
      110 GETUPVAL                         R16 3
      111 GETTABLEKS                       R16 R16 K17 ["useCallback"]
      113 NEWCLOSURE                       R17 P1
      114 CAPTURE                          UPVAL U8
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R6
      119 NEWTABLE                         R18 0 2
      121 GETTABLEKS                       R19 R0 K7 ["metadata"]
      123 GETTABLEKS                       R19 R19 K18 ["version"]
      125 GETTABLEKS                       R20 R0 K7 ["metadata"]
      127 GETTABLEKS                       R20 R20 K11 ["notes"]
      129 SETLIST                          R18 R19 2 [1]
      131 CALL                             R16 2 1
      132 GETUPVAL                         R17 3
      133 GETTABLEKS                       R17 R17 K19 ["createElement"]
      135 GETUPVAL                         R18 2
      136 GETTABLEKS                       R18 R18 K20 ["View"]
      138 DUPTABLE                         R19 K23 [{"tag", "LayoutOrder"}]
      139 LOADK                            R20 K24 ["size-0-0 auto-y col align-x-left gap-xsmall"]
      140 SETTABLEKS                       R20 R19 K21 ["tag"]
      142 GETTABLEKS                       R20 R0 K22 ["LayoutOrder"]
      144 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      146 DUPTABLE                         R20 K28 [{"Title", "AddNotes", "Details"}]
      147 MOVE                             R21 R13
      148 JUMPIFNOT                        R21 ; [+23]
      149 GETUPVAL                         R21 3
      150 GETTABLEKS                       R21 R21 K19 ["createElement"]
      152 GETUPVAL                         R22 2
      153 GETTABLEKS                       R22 R22 K29 ["Text"]
      155 DUPTABLE                         R23 K30 [{"tag", "Text", "LayoutOrder"}]
      156 LOADK                            R24 K31 ["size-0-0 auto-xy text-title-medium content-emphasis text-truncate-split"]
      157 SETTABLEKS                       R24 R23 K21 ["tag"]
      159 GETTABLEKS                       R24 R0 K7 ["metadata"]
      161 GETTABLEKS                       R24 R24 K11 ["notes"]
      163 GETTABLEKS                       R24 R24 K12 ["title"]
      165 SETTABLEKS                       R24 R23 K29 ["Text"]
      167 MOVE                             R24 R1
      168 CALL                             R24 0 1
      169 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      171 CALL                             R21 2 1
      172 SETTABLEKS                       R21 R20 K25 ["Title"]
      174 NOT                              R21 R13
      175 JUMPIFNOT                        R21 ; [+24]
      176 GETUPVAL                         R21 3
      177 GETTABLEKS                       R21 R21 K19 ["createElement"]
      179 GETUPVAL                         R22 2
      180 GETTABLEKS                       R22 R22 K29 ["Text"]
      182 DUPTABLE                         R23 K33 [{"tag", "Text", "onActivated", "LayoutOrder"}]
      183 LOADK                            R24 K34 ["size-0-0 auto-xy text-title-medium content-link text-truncate-split radius-small"]
      184 SETTABLEKS                       R24 R23 K21 ["tag"]
      186 LOADK                            R26 K35 ["Action"]
      187 LOADK                            R27 K26 ["AddNotes"]
      188 NAMECALL                         R24 R2 K36 ["getText"]
      190 CALL                             R24 3 1
      191 SETTABLEKS                       R24 R23 K29 ["Text"]
      193 SETTABLEKS                       R16 R23 K32 ["onActivated"]
      195 MOVE                             R24 R1
      196 CALL                             R24 0 1
      197 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      199 CALL                             R21 2 1
      200 SETTABLEKS                       R21 R20 K26 ["AddNotes"]
      202 GETUPVAL                         R21 3
      203 GETTABLEKS                       R21 R21 K19 ["createElement"]
      205 GETUPVAL                         R22 2
      206 GETTABLEKS                       R22 R22 K20 ["View"]
      208 DUPTABLE                         R23 K23 [{"tag", "LayoutOrder"}]
      209 LOADK                            R24 K37 ["size-0-0 auto-xy row align-y-center"]
      210 SETTABLEKS                       R24 R23 K21 ["tag"]
      212 MOVE                             R24 R1
      213 CALL                             R24 0 1
      214 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      216 DUPTABLE                         R24 K48 [{"DateText", "SaveTypeSeparator", "SaveTypeText", "SaverSeparator", "SaverText", "ContributorsSeparator", "ContributorsIcon", "ContributorsCountText", "PublishedSeparator", "PublishedText"}]
      217 GETUPVAL                         R25 3
      218 GETTABLEKS                       R25 R25 K19 ["createElement"]
      220 GETUPVAL                         R26 2
      221 GETTABLEKS                       R26 R26 K29 ["Text"]
      223 DUPTABLE                         R27 K30 [{"tag", "Text", "LayoutOrder"}]
      224 LOADK                            R28 K49 ["size-0-0 auto-xy text-body-small"]
      225 SETTABLEKS                       R28 R27 K21 ["tag"]
      227 LOADK                            R29 K50 ["%*"]
      228 GETTABLEKS                       R31 R0 K7 ["metadata"]
      230 GETTABLEKS                       R31 R31 K51 ["date"]
      232 LOADK                            R33 K52 ["LT"]
      233 NAMECALL                         R34 R2 K53 ["getLocale"]
      235 CALL                             R34 1 -1
      236 NAMECALL                         R31 R31 K54 ["FormatLocalTime"]
      238 CALL                             R31 -1 1
      239 NAMECALL                         R29 R29 K55 ["format"]
      241 CALL                             R29 2 1
      242 MOVE                             R28 R29
      243 SETTABLEKS                       R28 R27 K29 ["Text"]
      245 MOVE                             R28 R1
      246 CALL                             R28 0 1
      247 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      249 CALL                             R25 2 1
      250 SETTABLEKS                       R25 R24 K38 ["DateText"]
      252 MOVE                             R25 R11
      253 JUMPIFNOT                        R25 ; [+18]
      254 GETUPVAL                         R25 3
      255 GETTABLEKS                       R25 R25 K19 ["createElement"]
      257 GETUPVAL                         R26 2
      258 GETTABLEKS                       R26 R26 K29 ["Text"]
      260 DUPTABLE                         R27 K30 [{"tag", "Text", "LayoutOrder"}]
      261 LOADK                            R28 K56 ["size-0-0 auto-xy text-body-large"]
      262 SETTABLEKS                       R28 R27 K21 ["tag"]
      264 LOADK                            R28 K57 [" • "]
      265 SETTABLEKS                       R28 R27 K29 ["Text"]
      267 MOVE                             R28 R1
      268 CALL                             R28 0 1
      269 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      271 CALL                             R25 2 1
      272 SETTABLEKS                       R25 R24 K39 ["SaveTypeSeparator"]
      274 MOVE                             R25 R11
      275 JUMPIFNOT                        R25 ; [+27]
      276 GETUPVAL                         R25 3
      277 GETTABLEKS                       R25 R25 K19 ["createElement"]
      279 GETUPVAL                         R26 2
      280 GETTABLEKS                       R26 R26 K29 ["Text"]
      282 DUPTABLE                         R27 K30 [{"tag", "Text", "LayoutOrder"}]
      283 LOADK                            R28 K49 ["size-0-0 auto-xy text-body-small"]
      284 SETTABLEKS                       R28 R27 K21 ["tag"]
      286 LOADK                            R29 K58 ["<%*>"]
      287 LOADK                            R33 K59 ["Label"]
      288 LOADK                            R34 K60 ["AutoSave"]
      289 NAMECALL                         R31 R2 K36 ["getText"]
      291 CALL                             R31 3 1
      292 NAMECALL                         R29 R29 K55 ["format"]
      294 CALL                             R29 2 1
      295 MOVE                             R28 R29
      296 SETTABLEKS                       R28 R27 K29 ["Text"]
      298 MOVE                             R28 R1
      299 CALL                             R28 0 1
      300 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      302 CALL                             R25 2 1
      303 SETTABLEKS                       R25 R24 K40 ["SaveTypeText"]
      305 MOVE                             R25 R12
      306 JUMPIFNOT                        R25 ; [+18]
      307 GETUPVAL                         R25 3
      308 GETTABLEKS                       R25 R25 K19 ["createElement"]
      310 GETUPVAL                         R26 2
      311 GETTABLEKS                       R26 R26 K29 ["Text"]
      313 DUPTABLE                         R27 K30 [{"tag", "Text", "LayoutOrder"}]
      314 LOADK                            R28 K56 ["size-0-0 auto-xy text-body-large"]
      315 SETTABLEKS                       R28 R27 K21 ["tag"]
      317 LOADK                            R28 K57 [" • "]
      318 SETTABLEKS                       R28 R27 K29 ["Text"]
      320 MOVE                             R28 R1
      321 CALL                             R28 0 1
      322 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      324 CALL                             R25 2 1
      325 SETTABLEKS                       R25 R24 K41 ["SaverSeparator"]
      327 MOVE                             R25 R12
      328 JUMPIFNOT                        R25 ; [+23]
      329 GETUPVAL                         R25 3
      330 GETTABLEKS                       R25 R25 K19 ["createElement"]
      332 GETUPVAL                         R26 2
      333 GETTABLEKS                       R26 R26 K29 ["Text"]
      335 DUPTABLE                         R27 K30 [{"tag", "Text", "LayoutOrder"}]
      336 LOADK                            R28 K49 ["size-0-0 auto-xy text-body-small"]
      337 SETTABLEKS                       R28 R27 K21 ["tag"]
      339 LOADK                            R29 K50 ["%*"]
      340 MOVE                             R31 R8
      341 NAMECALL                         R29 R29 K55 ["format"]
      343 CALL                             R29 2 1
      344 MOVE                             R28 R29
      345 SETTABLEKS                       R28 R27 K29 ["Text"]
      347 MOVE                             R28 R1
      348 CALL                             R28 0 1
      349 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      351 CALL                             R25 2 1
      352 SETTABLEKS                       R25 R24 K42 ["SaverText"]
      354 MOVE                             R25 R14
      355 JUMPIFNOT                        R25 ; [+18]
      356 GETUPVAL                         R25 3
      357 GETTABLEKS                       R25 R25 K19 ["createElement"]
      359 GETUPVAL                         R26 2
      360 GETTABLEKS                       R26 R26 K29 ["Text"]
      362 DUPTABLE                         R27 K30 [{"tag", "Text", "LayoutOrder"}]
      363 LOADK                            R28 K56 ["size-0-0 auto-xy text-body-large"]
      364 SETTABLEKS                       R28 R27 K21 ["tag"]
      366 LOADK                            R28 K57 [" • "]
      367 SETTABLEKS                       R28 R27 K29 ["Text"]
      369 MOVE                             R28 R1
      370 CALL                             R28 0 1
      371 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      373 CALL                             R25 2 1
      374 SETTABLEKS                       R25 R24 K43 ["ContributorsSeparator"]
      376 MOVE                             R25 R14
      377 JUMPIFNOT                        R25 ; [+30]
      378 GETUPVAL                         R25 3
      379 GETTABLEKS                       R25 R25 K19 ["createElement"]
      381 GETUPVAL                         R26 2
      382 GETTABLEKS                       R26 R26 K61 ["Icon"]
      384 DUPTABLE                         R27 K64 [{"name", "size", "LayoutOrder"}]
      385 GETUPVAL                         R28 2
      386 GETTABLEKS                       R28 R28 K65 ["Enums"]
      388 GETTABLEKS                       R28 R28 K66 ["IconName"]
      390 GETTABLEKS                       R28 R28 K67 ["TwoPeople"]
      392 SETTABLEKS                       R28 R27 K62 ["name"]
      394 GETUPVAL                         R28 2
      395 GETTABLEKS                       R28 R28 K65 ["Enums"]
      397 GETTABLEKS                       R28 R28 K68 ["IconSize"]
      399 GETTABLEKS                       R28 R28 K69 ["XSmall"]
      401 SETTABLEKS                       R28 R27 K63 ["size"]
      403 MOVE                             R28 R1
      404 CALL                             R28 0 1
      405 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      407 CALL                             R25 2 1
      408 SETTABLEKS                       R25 R24 K44 ["ContributorsIcon"]
      410 MOVE                             R25 R14
      411 JUMPIFNOT                        R25 ; [+27]
      412 GETUPVAL                         R25 3
      413 GETTABLEKS                       R25 R25 K19 ["createElement"]
      415 GETUPVAL                         R26 2
      416 GETTABLEKS                       R26 R26 K29 ["Text"]
      418 DUPTABLE                         R27 K30 [{"tag", "Text", "LayoutOrder"}]
      419 LOADK                            R28 K49 ["size-0-0 auto-xy text-body-small"]
      420 SETTABLEKS                       R28 R27 K21 ["tag"]
      422 LOADK                            R29 K50 ["%*"]
      423 GETTABLEKS                       R32 R0 K7 ["metadata"]
      425 GETTABLEKS                       R32 R32 K13 ["contributors"]
      427 LENGTH                           R31 R32
      428 NAMECALL                         R29 R29 K55 ["format"]
      430 CALL                             R29 2 1
      431 MOVE                             R28 R29
      432 SETTABLEKS                       R28 R27 K29 ["Text"]
      434 MOVE                             R28 R1
      435 CALL                             R28 0 1
      436 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      438 CALL                             R25 2 1
      439 SETTABLEKS                       R25 R24 K45 ["ContributorsCountText"]
      441 MOVE                             R25 R15
      442 JUMPIFNOT                        R25 ; [+18]
      443 GETUPVAL                         R25 3
      444 GETTABLEKS                       R25 R25 K19 ["createElement"]
      446 GETUPVAL                         R26 2
      447 GETTABLEKS                       R26 R26 K29 ["Text"]
      449 DUPTABLE                         R27 K30 [{"tag", "Text", "LayoutOrder"}]
      450 LOADK                            R28 K56 ["size-0-0 auto-xy text-body-large"]
      451 SETTABLEKS                       R28 R27 K21 ["tag"]
      453 LOADK                            R28 K57 [" • "]
      454 SETTABLEKS                       R28 R27 K29 ["Text"]
      456 MOVE                             R28 R1
      457 CALL                             R28 0 1
      458 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      460 CALL                             R25 2 1
      461 SETTABLEKS                       R25 R24 K46 ["PublishedSeparator"]
      463 MOVE                             R25 R15
      464 JUMPIFNOT                        R25 ; [+68]
      465 GETUPVAL                         R25 3
      466 GETTABLEKS                       R25 R25 K19 ["createElement"]
      468 GETUPVAL                         R26 2
      469 GETTABLEKS                       R26 R26 K29 ["Text"]
      471 DUPTABLE                         R27 K71 [{"tag", "textStyle", "Text", "LayoutOrder"}]
      472 LOADK                            R28 K49 ["size-0-0 auto-xy text-body-small"]
      473 SETTABLEKS                       R28 R27 K21 ["tag"]
      475 GETTABLEKS                       R29 R3 K72 ["Config"]
      477 GETTABLEKS                       R29 R29 K73 ["ColorMode"]
      479 GETTABLEKS                       R29 R29 K74 ["IsDark"]
      481 JUMPIFNOT                        R29 ; [+9]
      482 GETTABLEKS                       R28 R3 K75 ["Color"]
      484 GETTABLEKS                       R28 R28 K76 ["Extended"]
      486 GETTABLEKS                       R28 R28 K77 ["Green"]
      488 GETTABLEKS                       R28 R28 K78 ["Green_500"]
      490 JUMP                             ; [+8]
      491 GETTABLEKS                       R28 R3 K75 ["Color"]
      493 GETTABLEKS                       R28 R28 K76 ["Extended"]
      495 GETTABLEKS                       R28 R28 K77 ["Green"]
      497 GETTABLEKS                       R28 R28 K79 ["Green_800"]
      499 SETTABLEKS                       R28 R27 K70 ["textStyle"]
      501 GETTABLEKS                       R29 R0 K7 ["metadata"]
      503 GETTABLEKS                       R29 R29 K15 ["publishStatus"]
      505 JUMPIFNOTEQKS                    R29 K80 ["Published"] ; [+7]
      507 LOADK                            R30 K59 ["Label"]
      508 LOADK                            R31 K80 ["Published"]
      509 NAMECALL                         R28 R2 K36 ["getText"]
      511 CALL                             R28 3 1
      512 JUMP                             ; [+13]
      513 GETTABLEKS                       R29 R0 K7 ["metadata"]
      515 GETTABLEKS                       R29 R29 K15 ["publishStatus"]
      517 JUMPIFNOTEQKS                    R29 K81 ["PreviouslyPublished"] ; [+7]
      519 LOADK                            R30 K59 ["Label"]
      520 LOADK                            R31 K81 ["PreviouslyPublished"]
      521 NAMECALL                         R28 R2 K36 ["getText"]
      523 CALL                             R28 3 1
      524 JUMP                             ; [+1]
      525 LOADNIL                          R28
      526 SETTABLEKS                       R28 R27 K29 ["Text"]
      528 MOVE                             R28 R1
      529 CALL                             R28 0 1
      530 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      532 CALL                             R25 2 1
      533 SETTABLEKS                       R25 R24 K47 ["PublishedText"]
      535 CALL                             R21 3 1
      536 SETTABLEKS                       R21 R20 K27 ["Details"]
      538 CALL                             R17 3 -1
      539 RETURN                           R17 -1

PROTO_6:
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
       23 JUMPIFNOT                        R5 ; [+63]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K5 ["createElement"]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K6 ["View"]
       30 DUPTABLE                         R7 K9 [{"tag", "LayoutOrder"}]
       31 LOADK                            R8 K10 ["size-0-0 auto-y col align-x-left gap-small"]
       32 SETTABLEKS                       R8 R7 K7 ["tag"]
       34 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       36 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       38 DUPTABLE                         R8 K13 [{"Description", "ContributorList"}]
       39 MOVE                             R9 R2
       40 JUMPIFNOT                        R9 ; [+23]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K5 ["createElement"]
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R10 R10 K14 ["Text"]
       47 DUPTABLE                         R11 K15 [{"tag", "Text", "LayoutOrder"}]
       48 LOADK                            R12 K16 ["size-0-0 auto-xy text-body-small text-wrap text-align-x-left"]
       49 SETTABLEKS                       R12 R11 K7 ["tag"]
       51 GETTABLEKS                       R12 R0 K0 ["metadata"]
       53 GETTABLEKS                       R12 R12 K1 ["notes"]
       55 GETTABLEKS                       R12 R12 K2 ["description"]
       57 SETTABLEKS                       R12 R11 K14 ["Text"]
       59 MOVE                             R12 R1
       60 CALL                             R12 0 1
       61 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K11 ["Description"]
       66 MOVE                             R9 R3
       67 JUMPIFNOT                        R9 ; [+16]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K5 ["createElement"]
       71 GETUPVAL                         R10 3
       72 DUPTABLE                         R11 K17 [{"contributors", "LayoutOrder"}]
       73 GETTABLEKS                       R12 R0 K0 ["metadata"]
       75 GETTABLEKS                       R12 R12 K3 ["contributors"]
       77 SETTABLEKS                       R12 R11 K3 ["contributors"]
       79 MOVE                             R12 R1
       80 CALL                             R12 0 1
       81 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K12 ["ContributorList"]
       86 CALL                             R5 3 1
       87 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K4 [{"tag", "LayoutOrder"}]
        9 LOADK                            R5 K5 ["size-0-0 auto-y fill col align-x-left gap-small flex-x-fill clip"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       16 DUPTABLE                         R5 K8 [{"Header", "Body"}]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K0 ["createElement"]
       20 GETUPVAL                         R7 3
       21 DUPTABLE                         R8 K10 [{"metadata", "LayoutOrder"}]
       22 GETTABLEKS                       R9 R0 K9 ["metadata"]
       24 SETTABLEKS                       R9 R8 K9 ["metadata"]
       26 MOVE                             R9 R1
       27 CALL                             R9 0 1
       28 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K6 ["Header"]
       33 GETTABLEKS                       R6 R0 K11 ["isExpanded"]
       35 JUMPIFNOT                        R6 ; [+14]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K0 ["createElement"]
       39 GETUPVAL                         R7 4
       40 DUPTABLE                         R8 K10 [{"metadata", "LayoutOrder"}]
       41 GETTABLEKS                       R9 R0 K9 ["metadata"]
       43 SETTABLEKS                       R9 R8 K9 ["metadata"]
       45 MOVE                             R9 R1
       46 CALL                             R9 0 1
       47 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K7 ["Body"]
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1

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
       90 DUPCLOSURE                       R17 K26 [PROTO_5]
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R1
      100 DUPCLOSURE                       R18 K27 [PROTO_6]
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R14
      105 DUPCLOSURE                       R19 K28 [PROTO_7]
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R18
      111 RETURN                           R19 1
