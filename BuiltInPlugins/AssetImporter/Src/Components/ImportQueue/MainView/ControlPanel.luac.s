PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["activeSessionCount"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["sessionCount"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["parsing"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["uploading"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["searchTerm"]
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onPluginButtonClicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["removeAllQueuedFiles"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["cancelUpload"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R0 3
       10 NAMECALL                         R0 R0 K1 ["stopImportQueueParse"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 NAMECALL                         R0 R0 K2 ["uploadQueue"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Export"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openExisting"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 DUPCLOSURE                       R3 K0 [PROTO_0]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 DUPCLOSURE                       R4 K1 [PROTO_1]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 1
        9 DUPCLOSURE                       R5 K2 [PROTO_2]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 1
       12 DUPCLOSURE                       R6 K3 [PROTO_3]
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 1
       15 DUPCLOSURE                       R7 K4 [PROTO_4]
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K5 ["use"]
       20 CALL                             R7 0 1
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K5 ["use"]
       24 CALL                             R8 0 1
       25 GETUPVAL                         R9 4
       26 GETTABLEKS                       R9 R9 K5 ["use"]
       28 CALL                             R9 0 1
       29 GETUPVAL                         R10 5
       30 GETTABLEKS                       R10 R10 K5 ["use"]
       32 CALL                             R10 0 1
       33 GETUPVAL                         R11 6
       34 GETTABLEKS                       R11 R11 K6 ["Plugin"]
       36 GETTABLEKS                       R11 R11 K5 ["use"]
       38 CALL                             R11 0 1
       39 NAMECALL                         R11 R11 K7 ["get"]
       41 CALL                             R11 1 1
       42 GETUPVAL                         R12 7
       43 CALL                             R12 0 1
       44 JUMPIFNOT                        R12 ; [+2]
       45 GETUPVAL                         R12 8
       46 CALL                             R12 0 1
       47 GETUPVAL                         R13 9
       48 GETTABLEKS                       R13 R13 K8 ["useCallback"]
       50 NEWCLOSURE                       R14 P5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U10
       53 CALL                             R13 1 1
       54 GETUPVAL                         R14 9
       55 GETTABLEKS                       R14 R14 K8 ["useCallback"]
       57 NEWCLOSURE                       R15 P6
       58 CAPTURE                          VAL R7
       59 NEWTABLE                         R16 0 1
       61 MOVE                             R17 R7
       62 SETLIST                          R16 R17 1 [1]
       64 CALL                             R14 2 1
       65 GETUPVAL                         R15 9
       66 GETTABLEKS                       R15 R15 K8 ["useCallback"]
       68 NEWCLOSURE                       R16 P7
       69 CAPTURE                          VAL R8
       70 NEWTABLE                         R17 0 1
       72 MOVE                             R18 R8
       73 SETLIST                          R17 R18 1 [1]
       75 CALL                             R15 2 1
       76 NEWCLOSURE                       R16 P8
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R8
       81 NOT                              R17 R5
       82 JUMPIFNOT                        R17 ; [+4]
       83 JUMPIFEQKN                       R2 K9 [0] ; [+2]
       85 LOADB                            R17 0 +1
       86 LOADB                            R17 1
       87 JUMPIFNOT                        R5 ; [+6]
       88 LOADK                            R20 K10 ["ImportQueue"]
       89 LOADK                            R21 K11 ["StopQueue"]
       90 NAMECALL                         R18 R10 K12 ["getText"]
       92 CALL                             R18 3 1
       93 JUMP                             ; [+12]
       94 JUMPIFNOT                        R4 ; [+6]
       95 LOADK                            R20 K10 ["ImportQueue"]
       96 LOADK                            R21 K13 ["StopParsing"]
       97 NAMECALL                         R18 R10 K12 ["getText"]
       99 CALL                             R18 3 1
      100 JUMP                             ; [+5]
      101 LOADK                            R20 K6 ["Plugin"]
      102 LOADK                            R21 K14 ["Import"]
      103 NAMECALL                         R18 R10 K12 ["getText"]
      105 CALL                             R18 3 1
      106 GETUPVAL                         R19 11
      107 GETTABLEKS                       R19 R19 K15 ["new"]
      109 CALL                             R19 0 1
      110 GETUPVAL                         R20 12
      111 GETUPVAL                         R21 13
      112 GETTABLEKS                       R21 R21 K16 ["View"]
      114 DUPTABLE                         R22 K18 [{"tag"}]
      115 LOADK                            R23 K19 ["row size-full-0 auto-y align-x-left align-y-center padding-small gap-large"]
      116 SETTABLEKS                       R23 R22 K17 ["tag"]
      118 DUPTABLE                         R23 K25 [{"ButtonView", "SearchView", "StartImportButton", "ExportAvatarButton", "ConfigureAvatarButton"}]
      119 GETUPVAL                         R24 12
      120 GETUPVAL                         R25 13
      121 GETTABLEKS                       R25 R25 K16 ["View"]
      123 DUPTABLE                         R26 K27 [{"tag", "LayoutOrder"}]
      124 LOADK                            R27 K28 ["row auto-xy align-y-center gap-small"]
      125 SETTABLEKS                       R27 R26 K17 ["tag"]
      127 NAMECALL                         R27 R19 K29 ["getNextOrder"]
      129 CALL                             R27 1 1
      130 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      132 DUPTABLE                         R27 K32 [{"OpenFileButton", "CleanupButton"}]
      133 GETUPVAL                         R28 12
      134 GETUPVAL                         R29 13
      135 GETTABLEKS                       R29 R29 K33 ["Tooltip"]
      137 DUPTABLE                         R30 K35 [{"title"}]
      138 LOADK                            R33 K10 ["ImportQueue"]
      139 LOADK                            R34 K36 ["AddFile"]
      140 NAMECALL                         R31 R10 K12 ["getText"]
      142 CALL                             R31 3 1
      143 SETTABLEKS                       R31 R30 K34 ["title"]
      145 DUPTABLE                         R31 K38 [{"OpenFileView"}]
      146 GETUPVAL                         R32 12
      147 GETUPVAL                         R33 13
      148 GETTABLEKS                       R33 R33 K16 ["View"]
      150 DUPTABLE                         R34 K41 [{"tag", "isDisabled", "onActivated", "LayoutOrder"}]
      151 LOADK                            R35 K42 ["auto-xy padding-xsmall radius-small data-testid=open-file-button"]
      152 SETTABLEKS                       R35 R34 K17 ["tag"]
      154 MOVE                             R35 R4
      155 JUMPIF                           R35 ; [+3]
      156 MOVE                             R35 R5
      157 JUMPIF                           R35 ; [+1]
      158 LOADB                            R35 0
      159 SETTABLEKS                       R35 R34 K39 ["isDisabled"]
      161 SETTABLEKS                       R14 R34 K40 ["onActivated"]
      163 LOADN                            R35 1
      164 SETTABLEKS                       R35 R34 K26 ["LayoutOrder"]
      166 GETUPVAL                         R35 12
      167 GETUPVAL                         R36 13
      168 GETTABLEKS                       R36 R36 K43 ["Image"]
      170 DUPTABLE                         R37 K44 [{"tag", "Image"}]
      171 LOADK                            R38 K45 ["size-400-400"]
      172 SETTABLEKS                       R38 R37 K17 ["tag"]
      174 GETUPVAL                         R38 14
      175 GETTABLEKS                       R38 R38 K7 ["get"]
      177 GETUPVAL                         R39 14
      178 GETTABLEKS                       R39 R39 K46 ["AvailableImages"]
      180 GETTABLEKS                       R39 R39 K47 ["Open"]
      182 CALL                             R38 1 1
      183 SETTABLEKS                       R38 R37 K43 ["Image"]
      185 CALL                             R35 2 -1
      186 CALL                             R32 -1 1
      187 SETTABLEKS                       R32 R31 K37 ["OpenFileView"]
      189 CALL                             R28 3 1
      190 SETTABLEKS                       R28 R27 K30 ["OpenFileButton"]
      192 GETUPVAL                         R28 12
      193 GETUPVAL                         R29 13
      194 GETTABLEKS                       R29 R29 K33 ["Tooltip"]
      196 DUPTABLE                         R30 K35 [{"title"}]
      197 LOADK                            R33 K10 ["ImportQueue"]
      198 LOADK                            R34 K48 ["ClearQueue"]
      199 NAMECALL                         R31 R10 K12 ["getText"]
      201 CALL                             R31 3 1
      202 SETTABLEKS                       R31 R30 K34 ["title"]
      204 DUPTABLE                         R31 K50 [{"CleanupView"}]
      205 GETUPVAL                         R32 12
      206 GETUPVAL                         R33 13
      207 GETTABLEKS                       R33 R33 K16 ["View"]
      209 DUPTABLE                         R34 K41 [{"tag", "isDisabled", "onActivated", "LayoutOrder"}]
      210 LOADK                            R35 K51 ["auto-xy padding-xsmall radius-small data-testid=cleanup-view-button"]
      211 SETTABLEKS                       R35 R34 K17 ["tag"]
      213 MOVE                             R35 R4
      214 JUMPIF                           R35 ; [+3]
      215 MOVE                             R35 R5
      216 JUMPIF                           R35 ; [+1]
      217 LOADB                            R35 0
      218 SETTABLEKS                       R35 R34 K39 ["isDisabled"]
      220 SETTABLEKS                       R15 R34 K40 ["onActivated"]
      222 LOADN                            R35 2
      223 SETTABLEKS                       R35 R34 K26 ["LayoutOrder"]
      225 GETUPVAL                         R35 12
      226 GETUPVAL                         R36 13
      227 GETTABLEKS                       R36 R36 K43 ["Image"]
      229 DUPTABLE                         R37 K44 [{"tag", "Image"}]
      230 LOADK                            R38 K52 ["size-400-400 padding-xsmall"]
      231 SETTABLEKS                       R38 R37 K17 ["tag"]
      233 GETUPVAL                         R38 14
      234 GETTABLEKS                       R38 R38 K7 ["get"]
      236 GETUPVAL                         R39 14
      237 GETTABLEKS                       R39 R39 K46 ["AvailableImages"]
      239 GETTABLEKS                       R39 R39 K53 ["Cleanup"]
      241 CALL                             R38 1 1
      242 SETTABLEKS                       R38 R37 K43 ["Image"]
      244 CALL                             R35 2 -1
      245 CALL                             R32 -1 1
      246 SETTABLEKS                       R32 R31 K49 ["CleanupView"]
      248 CALL                             R28 3 1
      249 SETTABLEKS                       R28 R27 K31 ["CleanupButton"]
      251 CALL                             R24 3 1
      252 SETTABLEKS                       R24 R23 K20 ["ButtonView"]
      254 GETUPVAL                         R24 12
      255 GETUPVAL                         R25 13
      256 GETTABLEKS                       R25 R25 K16 ["View"]
      258 DUPTABLE                         R26 K27 [{"tag", "LayoutOrder"}]
      259 LOADK                            R27 K54 ["size-full-0 auto-y fill"]
      260 SETTABLEKS                       R27 R26 K17 ["tag"]
      262 NAMECALL                         R27 R19 K29 ["getNextOrder"]
      264 CALL                             R27 1 1
      265 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      267 DUPTABLE                         R27 K56 [{"SearchBar"}]
      268 GETUPVAL                         R28 12
      269 GETUPVAL                         R29 13
      270 GETTABLEKS                       R29 R29 K57 ["TextInput"]
      272 DUPTABLE                         R30 K65 [{"label", "width", "size", "leadingIcon", "placeholder", "text", "onChanged"}]
      273 LOADK                            R31 K66 [""]
      274 SETTABLEKS                       R31 R30 K58 ["label"]
      276 GETIMPORT                        R31 K68 [UDim.new]
      278 LOADN                            R32 1
      279 LOADN                            R33 0
      280 CALL                             R31 2 1
      281 SETTABLEKS                       R31 R30 K59 ["width"]
      283 GETUPVAL                         R31 15
      284 GETTABLEKS                       R31 R31 K69 ["InputSize"]
      286 GETTABLEKS                       R31 R31 K70 ["XSmall"]
      288 SETTABLEKS                       R31 R30 K60 ["size"]
      290 GETUPVAL                         R31 15
      291 GETTABLEKS                       R31 R31 K71 ["IconName"]
      293 GETTABLEKS                       R31 R31 K72 ["MagnifyingGlass"]
      295 SETTABLEKS                       R31 R30 K61 ["leadingIcon"]
      297 LOADK                            R33 K10 ["ImportQueue"]
      298 LOADK                            R34 K55 ["SearchBar"]
      299 NAMECALL                         R31 R10 K12 ["getText"]
      301 CALL                             R31 3 1
      302 SETTABLEKS                       R31 R30 K62 ["placeholder"]
      304 SETTABLEKS                       R6 R30 K63 ["text"]
      306 SETTABLEKS                       R13 R30 K64 ["onChanged"]
      308 CALL                             R28 2 1
      309 SETTABLEKS                       R28 R27 K55 ["SearchBar"]
      311 CALL                             R24 3 1
      312 SETTABLEKS                       R24 R23 K21 ["SearchView"]
      314 GETUPVAL                         R24 12
      315 GETUPVAL                         R25 13
      316 GETTABLEKS                       R25 R25 K33 ["Tooltip"]
      318 DUPTABLE                         R26 K73 [{"title", "LayoutOrder"}]
      319 LOADK                            R29 K10 ["ImportQueue"]
      320 LOADK                            R30 K74 ["StartQueue2"]
      321 DUPTABLE                         R31 K77 [{"filesImporting", "totalFiles"}]
      322 FASTCALL1                        TOSTRING R2 ; [+3]
      323 MOVE                             R33 R2
      324 GETIMPORT                        R32 K79 [tostring]
      326 CALL                             R32 1 1
      327 SETTABLEKS                       R32 R31 K75 ["filesImporting"]
      329 FASTCALL1                        TOSTRING R3 ; [+3]
      330 MOVE                             R33 R3
      331 GETIMPORT                        R32 K79 [tostring]
      333 CALL                             R32 1 1
      334 SETTABLEKS                       R32 R31 K76 ["totalFiles"]
      336 NAMECALL                         R27 R10 K12 ["getText"]
      338 CALL                             R27 4 1
      339 SETTABLEKS                       R27 R26 K34 ["title"]
      341 NAMECALL                         R27 R19 K29 ["getNextOrder"]
      343 CALL                             R27 1 1
      344 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      346 NEWTABLE                         R27 0 1
      348 GETUPVAL                         R28 12
      349 GETUPVAL                         R29 13
      350 GETTABLEKS                       R29 R29 K80 ["Button"]
      352 DUPTABLE                         R30 K83 [{"tag", "testId", "size", "text", "variant", "onActivated", "isDisabled"}]
      353 LOADK                            R31 K84 ["size-full-0 auto-y"]
      354 SETTABLEKS                       R31 R30 K17 ["tag"]
      356 LOADK                            R31 K85 ["start-import-button"]
      357 SETTABLEKS                       R31 R30 K81 ["testId"]
      359 GETUPVAL                         R31 15
      360 GETTABLEKS                       R31 R31 K69 ["InputSize"]
      362 GETTABLEKS                       R31 R31 K70 ["XSmall"]
      364 SETTABLEKS                       R31 R30 K60 ["size"]
      366 SETTABLEKS                       R18 R30 K63 ["text"]
      368 GETUPVAL                         R31 15
      369 GETTABLEKS                       R31 R31 K86 ["ButtonVariant"]
      371 GETTABLEKS                       R31 R31 K87 ["Emphasis"]
      373 SETTABLEKS                       R31 R30 K82 ["variant"]
      375 SETTABLEKS                       R16 R30 K40 ["onActivated"]
      377 SETTABLEKS                       R17 R30 K39 ["isDisabled"]
      379 CALL                             R28 2 -1
      380 SETLIST                          R27 R28 -1 [1]
      382 CALL                             R24 3 1
      383 SETTABLEKS                       R24 R23 K22 ["StartImportButton"]
      385 JUMPIFNOT                        R12 ; [+33]
      386 GETUPVAL                         R24 12
      387 GETUPVAL                         R25 13
      388 GETTABLEKS                       R25 R25 K80 ["Button"]
      390 DUPTABLE                         R26 K88 [{"tag", "testId", "size", "text", "onActivated", "LayoutOrder"}]
      391 LOADK                            R27 K84 ["size-full-0 auto-y"]
      392 SETTABLEKS                       R27 R26 K17 ["tag"]
      394 LOADK                            R27 K89 ["export-avatar-button"]
      395 SETTABLEKS                       R27 R26 K81 ["testId"]
      397 GETUPVAL                         R27 15
      398 GETTABLEKS                       R27 R27 K69 ["InputSize"]
      400 GETTABLEKS                       R27 R27 K70 ["XSmall"]
      402 SETTABLEKS                       R27 R26 K60 ["size"]
      404 LOADK                            R27 K90 ["Export Avatar"]
      405 SETTABLEKS                       R27 R26 K63 ["text"]
      407 NEWCLOSURE                       R27 P9
      408 CAPTURE                          UPVAL U16
      409 CAPTURE                          VAL R11
      410 SETTABLEKS                       R27 R26 K40 ["onActivated"]
      412 NAMECALL                         R27 R19 K29 ["getNextOrder"]
      414 CALL                             R27 1 1
      415 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      417 CALL                             R24 2 1
      418 JUMP                             ; [+1]
      419 LOADNIL                          R24
      420 SETTABLEKS                       R24 R23 K23 ["ExportAvatarButton"]
      422 JUMPIFNOT                        R12 ; [+32]
      423 GETUPVAL                         R24 12
      424 GETUPVAL                         R25 13
      425 GETTABLEKS                       R25 R25 K80 ["Button"]
      427 DUPTABLE                         R26 K88 [{"tag", "testId", "size", "text", "onActivated", "LayoutOrder"}]
      428 LOADK                            R27 K84 ["size-full-0 auto-y"]
      429 SETTABLEKS                       R27 R26 K17 ["tag"]
      431 LOADK                            R27 K91 ["configure-avatar-button"]
      432 SETTABLEKS                       R27 R26 K81 ["testId"]
      434 GETUPVAL                         R27 15
      435 GETTABLEKS                       R27 R27 K69 ["InputSize"]
      437 GETTABLEKS                       R27 R27 K70 ["XSmall"]
      439 SETTABLEKS                       R27 R26 K60 ["size"]
      441 LOADK                            R27 K92 ["Configure Avatar"]
      442 SETTABLEKS                       R27 R26 K63 ["text"]
      444 DUPCLOSURE                       R27 K93 [PROTO_10]
      445 CAPTURE                          UPVAL U17
      446 SETTABLEKS                       R27 R26 K40 ["onActivated"]
      448 NAMECALL                         R27 R19 K29 ["getNextOrder"]
      450 CALL                             R27 1 1
      451 SETTABLEKS                       R27 R26 K26 ["LayoutOrder"]
      453 CALL                             R24 2 1
      454 JUMP                             ; [+1]
      455 LOADNIL                          R24
      456 SETTABLEKS                       R24 R23 K24 ["ConfigureAvatarButton"]
      458 CALL                             R20 3 -1
      459 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K13 ["Localization"]
       36 GETTABLEKS                       R8 R5 K14 ["Util"]
       38 GETTABLEKS                       R8 R8 K15 ["LayoutOrderIterator"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R10 R0 K16 ["Src"]
       44 GETTABLEKS                       R10 R10 K17 ["Actions"]
       46 GETTABLEKS                       R10 R10 K18 ["SetSearchTerm"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R11 R0 K16 ["Src"]
       53 GETTABLEKS                       R11 R11 K19 ["Controllers"]
       55 GETTABLEKS                       R11 R11 K20 ["FileController"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R0 K16 ["Src"]
       62 GETTABLEKS                       R12 R12 K19 ["Controllers"]
       64 GETTABLEKS                       R12 R12 K21 ["QueueController"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R0 K16 ["Src"]
       71 GETTABLEKS                       R13 R13 K19 ["Controllers"]
       73 GETTABLEKS                       R13 R13 K22 ["UploadController"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R14 R0 K16 ["Src"]
       80 GETTABLEKS                       R14 R14 K23 ["Flags"]
       82 GETTABLEKS                       R14 R14 K24 ["getFFlagInternalAvatarImportTools"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R0 K16 ["Src"]
       89 GETTABLEKS                       R15 R15 K25 ["Utility"]
       91 GETTABLEKS                       R15 R15 K26 ["hasInternalPermission"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K5 [require]
       96 GETTABLEKS                       R16 R0 K16 ["Src"]
       98 GETTABLEKS                       R16 R16 K25 ["Utility"]
      100 GETTABLEKS                       R16 R16 K27 ["RigSetup"]
      102 GETTABLEKS                       R16 R16 K27 ["RigSetup"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R0 K16 ["Src"]
      109 GETTABLEKS                       R17 R17 K25 ["Utility"]
      111 GETTABLEKS                       R17 R17 K27 ["RigSetup"]
      113 GETTABLEKS                       R17 R17 K28 ["AvatarConfigurer"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R18 R0 K16 ["Src"]
      120 GETTABLEKS                       R18 R18 K29 ["Hooks"]
      122 GETTABLEKS                       R18 R18 K30 ["useDispatch"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K5 [require]
      127 GETTABLEKS                       R19 R0 K16 ["Src"]
      129 GETTABLEKS                       R19 R19 K29 ["Hooks"]
      131 GETTABLEKS                       R19 R19 K31 ["useSelector"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K5 [require]
      136 GETTABLEKS                       R20 R0 K16 ["Src"]
      138 GETTABLEKS                       R20 R20 K32 ["Resources"]
      140 GETTABLEKS                       R20 R20 K33 ["Images"]
      142 CALL                             R19 1 1
      143 DUPCLOSURE                       R20 K34 [PROTO_11]
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R16
      162 RETURN                           R20 1
