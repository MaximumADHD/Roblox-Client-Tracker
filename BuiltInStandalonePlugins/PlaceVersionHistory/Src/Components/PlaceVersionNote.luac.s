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
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["useContext"]
        9 GETUPVAL                         R4 3
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K1 ["useContext"]
       14 GETUPVAL                         R5 4
       15 CALL                             R4 1 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K1 ["useContext"]
       19 GETUPVAL                         R6 5
       20 CALL                             R5 1 1
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K2 ["useState"]
       24 LOADK                            R7 K3 [". . ."]
       25 CALL                             R6 1 2
       26 GETUPVAL                         R9 2
       27 GETTABLEKS                       R8 R9 K4 ["useRef"]
       29 LOADNIL                          R9
       30 CALL                             R8 1 1
       31 GETTABLEKS                       R11 R0 K5 ["metadata"]
       33 GETTABLEKS                       R10 R11 K6 ["saveType"]
       35 JUMPIFEQKS                       R10 K7 ["Auto"] ; [+2]
       37 LOADB                            R9 0 +1
       38 LOADB                            R9 1
       39 LOADB                            R10 0
       40 GETTABLEKS                       R12 R0 K5 ["metadata"]
       42 GETTABLEKS                       R11 R12 K6 ["saveType"]
       44 JUMPIFEQKS                       R11 K7 ["Auto"] ; [+9]
       46 GETTABLEKS                       R12 R0 K5 ["metadata"]
       48 GETTABLEKS                       R11 R12 K8 ["saver"]
       50 JUMPIFNOTEQKNIL                  R11 ; [+2]
       52 LOADB                            R10 0 +1
       53 LOADB                            R10 1
       54 GETTABLEKS                       R14 R0 K5 ["metadata"]
       56 GETTABLEKS                       R13 R14 K9 ["notes"]
       58 GETTABLEKS                       R12 R13 K10 ["title"]
       60 JUMPIFNOTEQKNIL                  R12 ; [+2]
       62 LOADB                            R11 0 +1
       63 LOADB                            R11 1
       64 GETTABLEKS                       R15 R0 K5 ["metadata"]
       66 GETTABLEKS                       R14 R15 K11 ["contributors"]
       68 LENGTH                           R13 R14
       69 JUMPIFNOTEQKN                    R13 K12 [0] ; [+2]
       71 LOADB                            R12 0 +1
       72 LOADB                            R12 1
       73 GETTABLEKS                       R14 R0 K5 ["metadata"]
       75 GETTABLEKS                       R13 R14 K13 ["published"]
       77 GETUPVAL                         R15 2
       78 GETTABLEKS                       R14 R15 K14 ["useEffect"]
       80 NEWCLOSURE                       R15 P0
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R2
       86 NEWTABLE                         R16 0 1
       88 GETTABLEKS                       R18 R0 K5 ["metadata"]
       90 GETTABLEKS                       R17 R18 K8 ["saver"]
       92 SETLIST                          R16 R17 1 [1]
       94 CALL                             R14 2 0
       95 GETUPVAL                         R15 2
       96 GETTABLEKS                       R14 R15 K15 ["useCallback"]
       98 NEWCLOSURE                       R15 P1
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R5
      102 NEWTABLE                         R16 0 2
      104 GETTABLEKS                       R18 R0 K5 ["metadata"]
      106 GETTABLEKS                       R17 R18 K16 ["version"]
      108 GETTABLEKS                       R19 R0 K5 ["metadata"]
      110 GETTABLEKS                       R18 R19 K9 ["notes"]
      112 SETLIST                          R16 R17 2 [1]
      114 CALL                             R14 2 1
      115 GETUPVAL                         R16 2
      116 GETTABLEKS                       R15 R16 K17 ["createElement"]
      118 GETUPVAL                         R17 6
      119 GETTABLEKS                       R16 R17 K18 ["View"]
      121 DUPTABLE                         R17 K21 [{"tag", "LayoutOrder"}]
      122 LOADK                            R18 K22 ["size-0-0 auto-y col align-x-left gap-xsmall"]
      123 SETTABLEKS                       R18 R17 K19 ["tag"]
      125 GETTABLEKS                       R18 R0 K20 ["LayoutOrder"]
      127 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      129 DUPTABLE                         R18 K26 [{"Title", "AddNotes", "Details"}]
      130 MOVE                             R19 R11
      131 JUMPIFNOT                        R19 ; [+23]
      132 GETUPVAL                         R20 2
      133 GETTABLEKS                       R19 R20 K17 ["createElement"]
      135 GETUPVAL                         R21 6
      136 GETTABLEKS                       R20 R21 K27 ["Text"]
      138 DUPTABLE                         R21 K28 [{"tag", "Text", "LayoutOrder"}]
      139 LOADK                            R22 K29 ["size-0-0 auto-xy text-title-medium content-emphasis text-truncate-split"]
      140 SETTABLEKS                       R22 R21 K19 ["tag"]
      142 GETTABLEKS                       R24 R0 K5 ["metadata"]
      144 GETTABLEKS                       R23 R24 K9 ["notes"]
      146 GETTABLEKS                       R22 R23 K10 ["title"]
      148 SETTABLEKS                       R22 R21 K27 ["Text"]
      150 MOVE                             R22 R1
      151 CALL                             R22 0 1
      152 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      154 CALL                             R19 2 1
      155 SETTABLEKS                       R19 R18 K23 ["Title"]
      157 NOT                              R19 R11
      158 JUMPIFNOT                        R19 ; [+24]
      159 GETUPVAL                         R20 2
      160 GETTABLEKS                       R19 R20 K17 ["createElement"]
      162 GETUPVAL                         R21 6
      163 GETTABLEKS                       R20 R21 K27 ["Text"]
      165 DUPTABLE                         R21 K31 [{"tag", "Text", "onActivated", "LayoutOrder"}]
      166 LOADK                            R22 K32 ["size-0-0 auto-xy text-title-medium content-link text-truncate-split radius-small"]
      167 SETTABLEKS                       R22 R21 K19 ["tag"]
      169 LOADK                            R24 K33 ["Action"]
      170 LOADK                            R25 K24 ["AddNotes"]
      171 NAMECALL                         R22 R2 K34 ["getText"]
      173 CALL                             R22 3 1
      174 SETTABLEKS                       R22 R21 K27 ["Text"]
      176 SETTABLEKS                       R14 R21 K30 ["onActivated"]
      178 MOVE                             R22 R1
      179 CALL                             R22 0 1
      180 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      182 CALL                             R19 2 1
      183 SETTABLEKS                       R19 R18 K24 ["AddNotes"]
      185 GETUPVAL                         R20 2
      186 GETTABLEKS                       R19 R20 K17 ["createElement"]
      188 GETUPVAL                         R21 6
      189 GETTABLEKS                       R20 R21 K18 ["View"]
      191 DUPTABLE                         R21 K21 [{"tag", "LayoutOrder"}]
      192 LOADK                            R22 K35 ["size-0-0 auto-xy row align-y-center"]
      193 SETTABLEKS                       R22 R21 K19 ["tag"]
      195 MOVE                             R22 R1
      196 CALL                             R22 0 1
      197 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      199 DUPTABLE                         R22 K46 [{"DateText", "SaveTypeSeparator", "SaveTypeText", "SaverSeparator", "SaverText", "ContributorsSeparator", "ContributorsIcon", "ContributorsCountText", "PublishedSeparator", "PublishedText"}]
      200 GETUPVAL                         R24 2
      201 GETTABLEKS                       R23 R24 K17 ["createElement"]
      203 GETUPVAL                         R25 6
      204 GETTABLEKS                       R24 R25 K27 ["Text"]
      206 DUPTABLE                         R25 K28 [{"tag", "Text", "LayoutOrder"}]
      207 LOADK                            R26 K47 ["size-0-0 auto-xy text-body-small"]
      208 SETTABLEKS                       R26 R25 K19 ["tag"]
      210 LOADK                            R27 K48 ["%*"]
      211 GETTABLEKS                       R30 R0 K5 ["metadata"]
      213 GETTABLEKS                       R29 R30 K49 ["date"]
      215 LOADK                            R31 K50 ["LT"]
      216 NAMECALL                         R32 R2 K51 ["getLocale"]
      218 CALL                             R32 1 -1
      219 NAMECALL                         R29 R29 K52 ["FormatLocalTime"]
      221 CALL                             R29 -1 1
      222 NAMECALL                         R27 R27 K53 ["format"]
      224 CALL                             R27 2 1
      225 MOVE                             R26 R27
      226 SETTABLEKS                       R26 R25 K27 ["Text"]
      228 MOVE                             R26 R1
      229 CALL                             R26 0 1
      230 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      232 CALL                             R23 2 1
      233 SETTABLEKS                       R23 R22 K36 ["DateText"]
      235 MOVE                             R23 R9
      236 JUMPIFNOT                        R23 ; [+18]
      237 GETUPVAL                         R24 2
      238 GETTABLEKS                       R23 R24 K17 ["createElement"]
      240 GETUPVAL                         R25 6
      241 GETTABLEKS                       R24 R25 K27 ["Text"]
      243 DUPTABLE                         R25 K28 [{"tag", "Text", "LayoutOrder"}]
      244 LOADK                            R26 K54 ["size-0-0 auto-xy text-body-large"]
      245 SETTABLEKS                       R26 R25 K19 ["tag"]
      247 LOADK                            R26 K55 [" • "]
      248 SETTABLEKS                       R26 R25 K27 ["Text"]
      250 MOVE                             R26 R1
      251 CALL                             R26 0 1
      252 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      254 CALL                             R23 2 1
      255 SETTABLEKS                       R23 R22 K37 ["SaveTypeSeparator"]
      257 MOVE                             R23 R9
      258 JUMPIFNOT                        R23 ; [+27]
      259 GETUPVAL                         R24 2
      260 GETTABLEKS                       R23 R24 K17 ["createElement"]
      262 GETUPVAL                         R25 6
      263 GETTABLEKS                       R24 R25 K27 ["Text"]
      265 DUPTABLE                         R25 K28 [{"tag", "Text", "LayoutOrder"}]
      266 LOADK                            R26 K47 ["size-0-0 auto-xy text-body-small"]
      267 SETTABLEKS                       R26 R25 K19 ["tag"]
      269 LOADK                            R27 K56 ["<%*>"]
      270 LOADK                            R31 K57 ["Label"]
      271 LOADK                            R32 K58 ["AutoSave"]
      272 NAMECALL                         R29 R2 K34 ["getText"]
      274 CALL                             R29 3 1
      275 NAMECALL                         R27 R27 K53 ["format"]
      277 CALL                             R27 2 1
      278 MOVE                             R26 R27
      279 SETTABLEKS                       R26 R25 K27 ["Text"]
      281 MOVE                             R26 R1
      282 CALL                             R26 0 1
      283 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      285 CALL                             R23 2 1
      286 SETTABLEKS                       R23 R22 K38 ["SaveTypeText"]
      288 MOVE                             R23 R10
      289 JUMPIFNOT                        R23 ; [+18]
      290 GETUPVAL                         R24 2
      291 GETTABLEKS                       R23 R24 K17 ["createElement"]
      293 GETUPVAL                         R25 6
      294 GETTABLEKS                       R24 R25 K27 ["Text"]
      296 DUPTABLE                         R25 K28 [{"tag", "Text", "LayoutOrder"}]
      297 LOADK                            R26 K54 ["size-0-0 auto-xy text-body-large"]
      298 SETTABLEKS                       R26 R25 K19 ["tag"]
      300 LOADK                            R26 K55 [" • "]
      301 SETTABLEKS                       R26 R25 K27 ["Text"]
      303 MOVE                             R26 R1
      304 CALL                             R26 0 1
      305 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      307 CALL                             R23 2 1
      308 SETTABLEKS                       R23 R22 K39 ["SaverSeparator"]
      310 MOVE                             R23 R10
      311 JUMPIFNOT                        R23 ; [+23]
      312 GETUPVAL                         R24 2
      313 GETTABLEKS                       R23 R24 K17 ["createElement"]
      315 GETUPVAL                         R25 6
      316 GETTABLEKS                       R24 R25 K27 ["Text"]
      318 DUPTABLE                         R25 K28 [{"tag", "Text", "LayoutOrder"}]
      319 LOADK                            R26 K47 ["size-0-0 auto-xy text-body-small"]
      320 SETTABLEKS                       R26 R25 K19 ["tag"]
      322 LOADK                            R27 K48 ["%*"]
      323 MOVE                             R29 R6
      324 NAMECALL                         R27 R27 K53 ["format"]
      326 CALL                             R27 2 1
      327 MOVE                             R26 R27
      328 SETTABLEKS                       R26 R25 K27 ["Text"]
      330 MOVE                             R26 R1
      331 CALL                             R26 0 1
      332 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      334 CALL                             R23 2 1
      335 SETTABLEKS                       R23 R22 K40 ["SaverText"]
      337 MOVE                             R23 R12
      338 JUMPIFNOT                        R23 ; [+18]
      339 GETUPVAL                         R24 2
      340 GETTABLEKS                       R23 R24 K17 ["createElement"]
      342 GETUPVAL                         R25 6
      343 GETTABLEKS                       R24 R25 K27 ["Text"]
      345 DUPTABLE                         R25 K28 [{"tag", "Text", "LayoutOrder"}]
      346 LOADK                            R26 K54 ["size-0-0 auto-xy text-body-large"]
      347 SETTABLEKS                       R26 R25 K19 ["tag"]
      349 LOADK                            R26 K55 [" • "]
      350 SETTABLEKS                       R26 R25 K27 ["Text"]
      352 MOVE                             R26 R1
      353 CALL                             R26 0 1
      354 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      356 CALL                             R23 2 1
      357 SETTABLEKS                       R23 R22 K41 ["ContributorsSeparator"]
      359 MOVE                             R23 R12
      360 JUMPIFNOT                        R23 ; [+30]
      361 GETUPVAL                         R24 2
      362 GETTABLEKS                       R23 R24 K17 ["createElement"]
      364 GETUPVAL                         R25 6
      365 GETTABLEKS                       R24 R25 K59 ["Icon"]
      367 DUPTABLE                         R25 K62 [{"name", "size", "LayoutOrder"}]
      368 GETUPVAL                         R29 6
      369 GETTABLEKS                       R28 R29 K63 ["Enums"]
      371 GETTABLEKS                       R27 R28 K64 ["IconName"]
      373 GETTABLEKS                       R26 R27 K65 ["TwoPeople"]
      375 SETTABLEKS                       R26 R25 K60 ["name"]
      377 GETUPVAL                         R29 6
      378 GETTABLEKS                       R28 R29 K63 ["Enums"]
      380 GETTABLEKS                       R27 R28 K66 ["IconSize"]
      382 GETTABLEKS                       R26 R27 K67 ["XSmall"]
      384 SETTABLEKS                       R26 R25 K61 ["size"]
      386 MOVE                             R26 R1
      387 CALL                             R26 0 1
      388 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      390 CALL                             R23 2 1
      391 SETTABLEKS                       R23 R22 K42 ["ContributorsIcon"]
      393 MOVE                             R23 R12
      394 JUMPIFNOT                        R23 ; [+27]
      395 GETUPVAL                         R24 2
      396 GETTABLEKS                       R23 R24 K17 ["createElement"]
      398 GETUPVAL                         R25 6
      399 GETTABLEKS                       R24 R25 K27 ["Text"]
      401 DUPTABLE                         R25 K28 [{"tag", "Text", "LayoutOrder"}]
      402 LOADK                            R26 K47 ["size-0-0 auto-xy text-body-small"]
      403 SETTABLEKS                       R26 R25 K19 ["tag"]
      405 LOADK                            R27 K48 ["%*"]
      406 GETTABLEKS                       R31 R0 K5 ["metadata"]
      408 GETTABLEKS                       R30 R31 K11 ["contributors"]
      410 LENGTH                           R29 R30
      411 NAMECALL                         R27 R27 K53 ["format"]
      413 CALL                             R27 2 1
      414 MOVE                             R26 R27
      415 SETTABLEKS                       R26 R25 K27 ["Text"]
      417 MOVE                             R26 R1
      418 CALL                             R26 0 1
      419 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      421 CALL                             R23 2 1
      422 SETTABLEKS                       R23 R22 K43 ["ContributorsCountText"]
      424 MOVE                             R23 R13
      425 JUMPIFNOT                        R23 ; [+18]
      426 GETUPVAL                         R24 2
      427 GETTABLEKS                       R23 R24 K17 ["createElement"]
      429 GETUPVAL                         R25 6
      430 GETTABLEKS                       R24 R25 K27 ["Text"]
      432 DUPTABLE                         R25 K28 [{"tag", "Text", "LayoutOrder"}]
      433 LOADK                            R26 K54 ["size-0-0 auto-xy text-body-large"]
      434 SETTABLEKS                       R26 R25 K19 ["tag"]
      436 LOADK                            R26 K55 [" • "]
      437 SETTABLEKS                       R26 R25 K27 ["Text"]
      439 MOVE                             R26 R1
      440 CALL                             R26 0 1
      441 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      443 CALL                             R23 2 1
      444 SETTABLEKS                       R23 R22 K44 ["PublishedSeparator"]
      446 MOVE                             R23 R13
      447 JUMPIFNOT                        R23 ; [+22]
      448 GETUPVAL                         R24 2
      449 GETTABLEKS                       R23 R24 K17 ["createElement"]
      451 GETUPVAL                         R25 6
      452 GETTABLEKS                       R24 R25 K27 ["Text"]
      454 DUPTABLE                         R25 K28 [{"tag", "Text", "LayoutOrder"}]
      455 LOADK                            R26 K47 ["size-0-0 auto-xy text-body-small"]
      456 SETTABLEKS                       R26 R25 K19 ["tag"]
      458 LOADK                            R28 K57 ["Label"]
      459 LOADK                            R29 K68 ["Published"]
      460 NAMECALL                         R26 R2 K34 ["getText"]
      462 CALL                             R26 3 1
      463 SETTABLEKS                       R26 R25 K27 ["Text"]
      465 MOVE                             R26 R1
      466 CALL                             R26 0 1
      467 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      469 CALL                             R23 2 1
      470 SETTABLEKS                       R23 R22 K45 ["PublishedText"]
      472 CALL                             R19 3 1
      473 SETTABLEKS                       R19 R18 K25 ["Details"]
      475 CALL                             R15 3 -1
      476 RETURN                           R15 -1

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
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R3
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
