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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["cancel"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K2 ["metadata"]
       17 GETTABLEKS                       R0 R1 K3 ["saver"]
       19 JUMPIFNOT                        R0 ; [+22]
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R1 R2 K4 ["getUserName"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K2 ["metadata"]
       27 GETTABLEKS                       R2 R3 K3 ["saver"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["refresh"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["openEditNotesDialog"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["metadata"]
        6 GETTABLEKS                       R1 R2 K2 ["version"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["metadata"]
       11 GETTABLEKS                       R2 R3 K3 ["notes"]
       13 CALL                             R0 2 1
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U2
       16 NAMECALL                         R0 R0 K4 ["andThen"]
       18 CALL                             R0 2 1
       19 DUPCLOSURE                       R2 K5 [PROTO_3]
       20 NAMECALL                         R0 R0 K6 ["catch"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K1 ["Hooks"]
        9 GETTABLEKS                       R3 R4 K2 ["useTokens"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K3 ["useContext"]
       15 GETUPVAL                         R5 4
       16 CALL                             R4 1 1
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K3 ["useContext"]
       20 GETUPVAL                         R6 5
       21 CALL                             R5 1 1
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R6 R7 K3 ["useContext"]
       25 GETUPVAL                         R7 6
       26 CALL                             R6 1 1
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R7 R8 K4 ["useState"]
       30 LOADK                            R8 K5 [". . ."]
       31 CALL                             R7 1 2
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R9 R10 K6 ["useRef"]
       35 LOADNIL                          R10
       36 CALL                             R9 1 1
       37 GETTABLEKS                       R12 R0 K7 ["metadata"]
       39 GETTABLEKS                       R11 R12 K8 ["saveType"]
       41 JUMPIFEQKS                       R11 K9 ["Auto"] ; [+2]
       43 LOADB                            R10 0 +1
       44 LOADB                            R10 1
       45 LOADB                            R11 0
       46 GETTABLEKS                       R13 R0 K7 ["metadata"]
       48 GETTABLEKS                       R12 R13 K8 ["saveType"]
       50 JUMPIFEQKS                       R12 K9 ["Auto"] ; [+9]
       52 GETTABLEKS                       R13 R0 K7 ["metadata"]
       54 GETTABLEKS                       R12 R13 K10 ["saver"]
       56 JUMPIFNOTEQKNIL                  R12 ; [+2]
       58 LOADB                            R11 0 +1
       59 LOADB                            R11 1
       60 GETTABLEKS                       R15 R0 K7 ["metadata"]
       62 GETTABLEKS                       R14 R15 K11 ["notes"]
       64 GETTABLEKS                       R13 R14 K12 ["title"]
       66 JUMPIFNOTEQKNIL                  R13 ; [+2]
       68 LOADB                            R12 0 +1
       69 LOADB                            R12 1
       70 GETTABLEKS                       R16 R0 K7 ["metadata"]
       72 GETTABLEKS                       R15 R16 K13 ["contributors"]
       74 LENGTH                           R14 R15
       75 JUMPIFNOTEQKN                    R14 K14 [0] ; [+2]
       77 LOADB                            R13 0 +1
       78 LOADB                            R13 1
       79 GETTABLEKS                       R16 R0 K7 ["metadata"]
       81 GETTABLEKS                       R15 R16 K15 ["publishStatus"]
       83 JUMPIFNOTEQKNIL                  R15 ; [+2]
       85 LOADB                            R14 0 +1
       86 LOADB                            R14 1
       87 GETUPVAL                         R16 3
       88 GETTABLEKS                       R15 R16 K16 ["useEffect"]
       90 NEWCLOSURE                       R16 P0
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R2
       96 NEWTABLE                         R17 0 1
       98 GETTABLEKS                       R19 R0 K7 ["metadata"]
      100 GETTABLEKS                       R18 R19 K10 ["saver"]
      102 SETLIST                          R17 R18 1 [1]
      104 CALL                             R15 2 0
      105 GETUPVAL                         R16 3
      106 GETTABLEKS                       R15 R16 K17 ["useCallback"]
      108 NEWCLOSURE                       R16 P1
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R6
      112 NEWTABLE                         R17 0 2
      114 GETTABLEKS                       R19 R0 K7 ["metadata"]
      116 GETTABLEKS                       R18 R19 K18 ["version"]
      118 GETTABLEKS                       R20 R0 K7 ["metadata"]
      120 GETTABLEKS                       R19 R20 K11 ["notes"]
      122 SETLIST                          R17 R18 2 [1]
      124 CALL                             R15 2 1
      125 GETUPVAL                         R17 3
      126 GETTABLEKS                       R16 R17 K19 ["createElement"]
      128 GETUPVAL                         R18 2
      129 GETTABLEKS                       R17 R18 K20 ["View"]
      131 DUPTABLE                         R18 K23 [{"tag", "LayoutOrder"}]
      132 LOADK                            R19 K24 ["size-0-0 auto-y col align-x-left gap-xsmall"]
      133 SETTABLEKS                       R19 R18 K21 ["tag"]
      135 GETTABLEKS                       R19 R0 K22 ["LayoutOrder"]
      137 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      139 DUPTABLE                         R19 K28 [{"Title", "AddNotes", "Details"}]
      140 MOVE                             R20 R12
      141 JUMPIFNOT                        R20 ; [+23]
      142 GETUPVAL                         R21 3
      143 GETTABLEKS                       R20 R21 K19 ["createElement"]
      145 GETUPVAL                         R22 2
      146 GETTABLEKS                       R21 R22 K29 ["Text"]
      148 DUPTABLE                         R22 K30 [{"tag", "Text", "LayoutOrder"}]
      149 LOADK                            R23 K31 ["size-0-0 auto-xy text-title-medium content-emphasis text-truncate-split"]
      150 SETTABLEKS                       R23 R22 K21 ["tag"]
      152 GETTABLEKS                       R25 R0 K7 ["metadata"]
      154 GETTABLEKS                       R24 R25 K11 ["notes"]
      156 GETTABLEKS                       R23 R24 K12 ["title"]
      158 SETTABLEKS                       R23 R22 K29 ["Text"]
      160 MOVE                             R23 R1
      161 CALL                             R23 0 1
      162 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      164 CALL                             R20 2 1
      165 SETTABLEKS                       R20 R19 K25 ["Title"]
      167 NOT                              R20 R12
      168 JUMPIFNOT                        R20 ; [+24]
      169 GETUPVAL                         R21 3
      170 GETTABLEKS                       R20 R21 K19 ["createElement"]
      172 GETUPVAL                         R22 2
      173 GETTABLEKS                       R21 R22 K29 ["Text"]
      175 DUPTABLE                         R22 K33 [{"tag", "Text", "onActivated", "LayoutOrder"}]
      176 LOADK                            R23 K34 ["size-0-0 auto-xy text-title-medium content-link text-truncate-split radius-small"]
      177 SETTABLEKS                       R23 R22 K21 ["tag"]
      179 LOADK                            R25 K35 ["Action"]
      180 LOADK                            R26 K26 ["AddNotes"]
      181 NAMECALL                         R23 R2 K36 ["getText"]
      183 CALL                             R23 3 1
      184 SETTABLEKS                       R23 R22 K29 ["Text"]
      186 SETTABLEKS                       R15 R22 K32 ["onActivated"]
      188 MOVE                             R23 R1
      189 CALL                             R23 0 1
      190 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      192 CALL                             R20 2 1
      193 SETTABLEKS                       R20 R19 K26 ["AddNotes"]
      195 GETUPVAL                         R21 3
      196 GETTABLEKS                       R20 R21 K19 ["createElement"]
      198 GETUPVAL                         R22 2
      199 GETTABLEKS                       R21 R22 K20 ["View"]
      201 DUPTABLE                         R22 K23 [{"tag", "LayoutOrder"}]
      202 LOADK                            R23 K37 ["size-0-0 auto-xy row align-y-center"]
      203 SETTABLEKS                       R23 R22 K21 ["tag"]
      205 MOVE                             R23 R1
      206 CALL                             R23 0 1
      207 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      209 DUPTABLE                         R23 K48 [{"DateText", "SaveTypeSeparator", "SaveTypeText", "SaverSeparator", "SaverText", "ContributorsSeparator", "ContributorsIcon", "ContributorsCountText", "PublishedSeparator", "PublishedText"}]
      210 GETUPVAL                         R25 3
      211 GETTABLEKS                       R24 R25 K19 ["createElement"]
      213 GETUPVAL                         R26 2
      214 GETTABLEKS                       R25 R26 K29 ["Text"]
      216 DUPTABLE                         R26 K30 [{"tag", "Text", "LayoutOrder"}]
      217 LOADK                            R27 K49 ["size-0-0 auto-xy text-body-small"]
      218 SETTABLEKS                       R27 R26 K21 ["tag"]
      220 LOADK                            R28 K50 ["%*"]
      221 GETTABLEKS                       R31 R0 K7 ["metadata"]
      223 GETTABLEKS                       R30 R31 K51 ["date"]
      225 LOADK                            R32 K52 ["LT"]
      226 NAMECALL                         R33 R2 K53 ["getLocale"]
      228 CALL                             R33 1 -1
      229 NAMECALL                         R30 R30 K54 ["FormatLocalTime"]
      231 CALL                             R30 -1 1
      232 NAMECALL                         R28 R28 K55 ["format"]
      234 CALL                             R28 2 1
      235 MOVE                             R27 R28
      236 SETTABLEKS                       R27 R26 K29 ["Text"]
      238 MOVE                             R27 R1
      239 CALL                             R27 0 1
      240 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      242 CALL                             R24 2 1
      243 SETTABLEKS                       R24 R23 K38 ["DateText"]
      245 MOVE                             R24 R10
      246 JUMPIFNOT                        R24 ; [+18]
      247 GETUPVAL                         R25 3
      248 GETTABLEKS                       R24 R25 K19 ["createElement"]
      250 GETUPVAL                         R26 2
      251 GETTABLEKS                       R25 R26 K29 ["Text"]
      253 DUPTABLE                         R26 K30 [{"tag", "Text", "LayoutOrder"}]
      254 LOADK                            R27 K56 ["size-0-0 auto-xy text-body-large"]
      255 SETTABLEKS                       R27 R26 K21 ["tag"]
      257 LOADK                            R27 K57 [" • "]
      258 SETTABLEKS                       R27 R26 K29 ["Text"]
      260 MOVE                             R27 R1
      261 CALL                             R27 0 1
      262 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      264 CALL                             R24 2 1
      265 SETTABLEKS                       R24 R23 K39 ["SaveTypeSeparator"]
      267 MOVE                             R24 R10
      268 JUMPIFNOT                        R24 ; [+27]
      269 GETUPVAL                         R25 3
      270 GETTABLEKS                       R24 R25 K19 ["createElement"]
      272 GETUPVAL                         R26 2
      273 GETTABLEKS                       R25 R26 K29 ["Text"]
      275 DUPTABLE                         R26 K30 [{"tag", "Text", "LayoutOrder"}]
      276 LOADK                            R27 K49 ["size-0-0 auto-xy text-body-small"]
      277 SETTABLEKS                       R27 R26 K21 ["tag"]
      279 LOADK                            R28 K58 ["<%*>"]
      280 LOADK                            R32 K59 ["Label"]
      281 LOADK                            R33 K60 ["AutoSave"]
      282 NAMECALL                         R30 R2 K36 ["getText"]
      284 CALL                             R30 3 1
      285 NAMECALL                         R28 R28 K55 ["format"]
      287 CALL                             R28 2 1
      288 MOVE                             R27 R28
      289 SETTABLEKS                       R27 R26 K29 ["Text"]
      291 MOVE                             R27 R1
      292 CALL                             R27 0 1
      293 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      295 CALL                             R24 2 1
      296 SETTABLEKS                       R24 R23 K40 ["SaveTypeText"]
      298 MOVE                             R24 R11
      299 JUMPIFNOT                        R24 ; [+18]
      300 GETUPVAL                         R25 3
      301 GETTABLEKS                       R24 R25 K19 ["createElement"]
      303 GETUPVAL                         R26 2
      304 GETTABLEKS                       R25 R26 K29 ["Text"]
      306 DUPTABLE                         R26 K30 [{"tag", "Text", "LayoutOrder"}]
      307 LOADK                            R27 K56 ["size-0-0 auto-xy text-body-large"]
      308 SETTABLEKS                       R27 R26 K21 ["tag"]
      310 LOADK                            R27 K57 [" • "]
      311 SETTABLEKS                       R27 R26 K29 ["Text"]
      313 MOVE                             R27 R1
      314 CALL                             R27 0 1
      315 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      317 CALL                             R24 2 1
      318 SETTABLEKS                       R24 R23 K41 ["SaverSeparator"]
      320 MOVE                             R24 R11
      321 JUMPIFNOT                        R24 ; [+23]
      322 GETUPVAL                         R25 3
      323 GETTABLEKS                       R24 R25 K19 ["createElement"]
      325 GETUPVAL                         R26 2
      326 GETTABLEKS                       R25 R26 K29 ["Text"]
      328 DUPTABLE                         R26 K30 [{"tag", "Text", "LayoutOrder"}]
      329 LOADK                            R27 K49 ["size-0-0 auto-xy text-body-small"]
      330 SETTABLEKS                       R27 R26 K21 ["tag"]
      332 LOADK                            R28 K50 ["%*"]
      333 MOVE                             R30 R7
      334 NAMECALL                         R28 R28 K55 ["format"]
      336 CALL                             R28 2 1
      337 MOVE                             R27 R28
      338 SETTABLEKS                       R27 R26 K29 ["Text"]
      340 MOVE                             R27 R1
      341 CALL                             R27 0 1
      342 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      344 CALL                             R24 2 1
      345 SETTABLEKS                       R24 R23 K42 ["SaverText"]
      347 MOVE                             R24 R13
      348 JUMPIFNOT                        R24 ; [+18]
      349 GETUPVAL                         R25 3
      350 GETTABLEKS                       R24 R25 K19 ["createElement"]
      352 GETUPVAL                         R26 2
      353 GETTABLEKS                       R25 R26 K29 ["Text"]
      355 DUPTABLE                         R26 K30 [{"tag", "Text", "LayoutOrder"}]
      356 LOADK                            R27 K56 ["size-0-0 auto-xy text-body-large"]
      357 SETTABLEKS                       R27 R26 K21 ["tag"]
      359 LOADK                            R27 K57 [" • "]
      360 SETTABLEKS                       R27 R26 K29 ["Text"]
      362 MOVE                             R27 R1
      363 CALL                             R27 0 1
      364 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      366 CALL                             R24 2 1
      367 SETTABLEKS                       R24 R23 K43 ["ContributorsSeparator"]
      369 MOVE                             R24 R13
      370 JUMPIFNOT                        R24 ; [+30]
      371 GETUPVAL                         R25 3
      372 GETTABLEKS                       R24 R25 K19 ["createElement"]
      374 GETUPVAL                         R26 2
      375 GETTABLEKS                       R25 R26 K61 ["Icon"]
      377 DUPTABLE                         R26 K64 [{"name", "size", "LayoutOrder"}]
      378 GETUPVAL                         R30 2
      379 GETTABLEKS                       R29 R30 K65 ["Enums"]
      381 GETTABLEKS                       R28 R29 K66 ["IconName"]
      383 GETTABLEKS                       R27 R28 K67 ["TwoPeople"]
      385 SETTABLEKS                       R27 R26 K62 ["name"]
      387 GETUPVAL                         R30 2
      388 GETTABLEKS                       R29 R30 K65 ["Enums"]
      390 GETTABLEKS                       R28 R29 K68 ["IconSize"]
      392 GETTABLEKS                       R27 R28 K69 ["XSmall"]
      394 SETTABLEKS                       R27 R26 K63 ["size"]
      396 MOVE                             R27 R1
      397 CALL                             R27 0 1
      398 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      400 CALL                             R24 2 1
      401 SETTABLEKS                       R24 R23 K44 ["ContributorsIcon"]
      403 MOVE                             R24 R13
      404 JUMPIFNOT                        R24 ; [+27]
      405 GETUPVAL                         R25 3
      406 GETTABLEKS                       R24 R25 K19 ["createElement"]
      408 GETUPVAL                         R26 2
      409 GETTABLEKS                       R25 R26 K29 ["Text"]
      411 DUPTABLE                         R26 K30 [{"tag", "Text", "LayoutOrder"}]
      412 LOADK                            R27 K49 ["size-0-0 auto-xy text-body-small"]
      413 SETTABLEKS                       R27 R26 K21 ["tag"]
      415 LOADK                            R28 K50 ["%*"]
      416 GETTABLEKS                       R32 R0 K7 ["metadata"]
      418 GETTABLEKS                       R31 R32 K13 ["contributors"]
      420 LENGTH                           R30 R31
      421 NAMECALL                         R28 R28 K55 ["format"]
      423 CALL                             R28 2 1
      424 MOVE                             R27 R28
      425 SETTABLEKS                       R27 R26 K29 ["Text"]
      427 MOVE                             R27 R1
      428 CALL                             R27 0 1
      429 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      431 CALL                             R24 2 1
      432 SETTABLEKS                       R24 R23 K45 ["ContributorsCountText"]
      434 MOVE                             R24 R14
      435 JUMPIFNOT                        R24 ; [+18]
      436 GETUPVAL                         R25 3
      437 GETTABLEKS                       R24 R25 K19 ["createElement"]
      439 GETUPVAL                         R26 2
      440 GETTABLEKS                       R25 R26 K29 ["Text"]
      442 DUPTABLE                         R26 K30 [{"tag", "Text", "LayoutOrder"}]
      443 LOADK                            R27 K56 ["size-0-0 auto-xy text-body-large"]
      444 SETTABLEKS                       R27 R26 K21 ["tag"]
      446 LOADK                            R27 K57 [" • "]
      447 SETTABLEKS                       R27 R26 K29 ["Text"]
      449 MOVE                             R27 R1
      450 CALL                             R27 0 1
      451 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      453 CALL                             R24 2 1
      454 SETTABLEKS                       R24 R23 K46 ["PublishedSeparator"]
      456 MOVE                             R24 R14
      457 JUMPIFNOT                        R24 ; [+68]
      458 GETUPVAL                         R25 3
      459 GETTABLEKS                       R24 R25 K19 ["createElement"]
      461 GETUPVAL                         R26 2
      462 GETTABLEKS                       R25 R26 K29 ["Text"]
      464 DUPTABLE                         R26 K71 [{"tag", "textStyle", "Text", "LayoutOrder"}]
      465 LOADK                            R27 K49 ["size-0-0 auto-xy text-body-small"]
      466 SETTABLEKS                       R27 R26 K21 ["tag"]
      468 GETTABLEKS                       R30 R3 K72 ["Config"]
      470 GETTABLEKS                       R29 R30 K73 ["ColorMode"]
      472 GETTABLEKS                       R28 R29 K74 ["IsDark"]
      474 JUMPIFNOT                        R28 ; [+9]
      475 GETTABLEKS                       R30 R3 K75 ["Color"]
      477 GETTABLEKS                       R29 R30 K76 ["Extended"]
      479 GETTABLEKS                       R28 R29 K77 ["Green"]
      481 GETTABLEKS                       R27 R28 K78 ["Green_500"]
      483 JUMP                             ; [+8]
      484 GETTABLEKS                       R30 R3 K75 ["Color"]
      486 GETTABLEKS                       R29 R30 K76 ["Extended"]
      488 GETTABLEKS                       R28 R29 K77 ["Green"]
      490 GETTABLEKS                       R27 R28 K79 ["Green_800"]
      492 SETTABLEKS                       R27 R26 K70 ["textStyle"]
      494 GETTABLEKS                       R29 R0 K7 ["metadata"]
      496 GETTABLEKS                       R28 R29 K15 ["publishStatus"]
      498 JUMPIFNOTEQKS                    R28 K80 ["Published"] ; [+7]
      500 LOADK                            R29 K59 ["Label"]
      501 LOADK                            R30 K80 ["Published"]
      502 NAMECALL                         R27 R2 K36 ["getText"]
      504 CALL                             R27 3 1
      505 JUMP                             ; [+13]
      506 GETTABLEKS                       R29 R0 K7 ["metadata"]
      508 GETTABLEKS                       R28 R29 K15 ["publishStatus"]
      510 JUMPIFNOTEQKS                    R28 K81 ["PreviouslyPublished"] ; [+7]
      512 LOADK                            R29 K59 ["Label"]
      513 LOADK                            R30 K81 ["PreviouslyPublished"]
      514 NAMECALL                         R27 R2 K36 ["getText"]
      516 CALL                             R27 3 1
      517 JUMP                             ; [+1]
      518 LOADNIL                          R27
      519 SETTABLEKS                       R27 R26 K29 ["Text"]
      521 MOVE                             R27 R1
      522 CALL                             R27 0 1
      523 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      525 CALL                             R24 2 1
      526 SETTABLEKS                       R24 R23 K47 ["PublishedText"]
      528 CALL                             R20 3 1
      529 SETTABLEKS                       R20 R19 K27 ["Details"]
      531 CALL                             R16 3 -1
      532 RETURN                           R16 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R5 R0 K0 ["metadata"]
        4 GETTABLEKS                       R4 R5 K1 ["notes"]
        6 GETTABLEKS                       R3 R4 K2 ["description"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETTABLEKS                       R6 R0 K0 ["metadata"]
       14 GETTABLEKS                       R5 R6 K3 ["contributors"]
       16 LENGTH                           R4 R5
       17 JUMPIFNOTEQKN                    R4 K4 [0] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 OR                               R4 R2 R3
       22 MOVE                             R5 R4
       23 JUMPIFNOT                        R5 ; [+63]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K5 ["createElement"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R6 R7 K6 ["View"]
       30 DUPTABLE                         R7 K9 [{"tag", "LayoutOrder"}]
       31 LOADK                            R8 K10 ["size-0-0 auto-y col align-x-left gap-small"]
       32 SETTABLEKS                       R8 R7 K7 ["tag"]
       34 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       36 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       38 DUPTABLE                         R8 K13 [{"Description", "ContributorList"}]
       39 MOVE                             R9 R2
       40 JUMPIFNOT                        R9 ; [+23]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R9 R10 K5 ["createElement"]
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R10 R11 K14 ["Text"]
       47 DUPTABLE                         R11 K15 [{"tag", "Text", "LayoutOrder"}]
       48 LOADK                            R12 K16 ["size-0-0 auto-xy text-body-small text-wrap text-align-x-left"]
       49 SETTABLEKS                       R12 R11 K7 ["tag"]
       51 GETTABLEKS                       R14 R0 K0 ["metadata"]
       53 GETTABLEKS                       R13 R14 K1 ["notes"]
       55 GETTABLEKS                       R12 R13 K2 ["description"]
       57 SETTABLEKS                       R12 R11 K14 ["Text"]
       59 MOVE                             R12 R1
       60 CALL                             R12 0 1
       61 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K11 ["Description"]
       66 MOVE                             R9 R3
       67 JUMPIFNOT                        R9 ; [+16]
       68 GETUPVAL                         R10 1
       69 GETTABLEKS                       R9 R10 K5 ["createElement"]
       71 GETUPVAL                         R10 3
       72 DUPTABLE                         R11 K17 [{"contributors", "LayoutOrder"}]
       73 GETTABLEKS                       R13 R0 K0 ["metadata"]
       75 GETTABLEKS                       R12 R13 K3 ["contributors"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["View"]
        8 DUPTABLE                         R4 K4 [{"tag", "LayoutOrder"}]
        9 LOADK                            R5 K5 ["size-0-0 auto-y fill col align-x-left gap-small flex-x-fill clip"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       16 DUPTABLE                         R5 K8 [{"Header", "Body"}]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K0 ["createElement"]
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
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K0 ["createElement"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R8 R0 K13 ["Src"]
       41 GETTABLEKS                       R7 R8 K14 ["Contexts"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R7 K15 ["NetworkContext"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R10 R7 K16 ["DialogContext"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K5 [require]
       55 GETTABLEKS                       R11 R7 K17 ["ControllerContext"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R12 R0 K13 ["Src"]
       60 GETTABLEKS                       R11 R12 K18 ["Components"]
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R11 K19 ["ContributorList"]
       66 CALL                             R12 1 1
       67 GETTABLEKS                       R13 R2 K20 ["createNextOrder"]
       69 GETIMPORT                        R14 K5 [require]
       71 GETTABLEKS                       R16 R0 K13 ["Src"]
       73 GETTABLEKS                       R15 R16 K21 ["Types"]
       75 CALL                             R14 1 1
       76 DUPCLOSURE                       R15 K22 [PROTO_5]
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 DUPCLOSURE                       R16 K23 [PROTO_6]
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R12
       89 DUPCLOSURE                       R17 K24 [PROTO_7]
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R16
       95 RETURN                           R17 1
