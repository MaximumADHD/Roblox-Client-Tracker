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
       93 JUMP                             ; [+21]
       94 JUMPIFNOT                        R4 ; [+6]
       95 LOADK                            R20 K10 ["ImportQueue"]
       96 LOADK                            R21 K13 ["StopParsing"]
       97 NAMECALL                         R18 R10 K12 ["getText"]
       99 CALL                             R18 3 1
      100 JUMP                             ; [+14]
      101 GETUPVAL                         R19 11
      102 CALL                             R19 0 1
      103 JUMPIFNOT                        R19 ; [+6]
      104 LOADK                            R20 K10 ["ImportQueue"]
      105 LOADK                            R21 K14 ["StartImport"]
      106 NAMECALL                         R18 R10 K12 ["getText"]
      108 CALL                             R18 3 1
      109 JUMP                             ; [+5]
      110 LOADK                            R20 K6 ["Plugin"]
      111 LOADK                            R21 K15 ["Import"]
      112 NAMECALL                         R18 R10 K12 ["getText"]
      114 CALL                             R18 3 1
      115 GETUPVAL                         R19 12
      116 GETTABLEKS                       R19 R19 K16 ["new"]
      118 CALL                             R19 0 1
      119 GETUPVAL                         R20 13
      120 GETUPVAL                         R21 14
      121 GETTABLEKS                       R21 R21 K17 ["View"]
      123 DUPTABLE                         R22 K20 [{["tag"] = "row align-x-left align-y-center gap-large size-full-0 auto-y padding-small"}]
      124 DUPTABLE                         R23 K26 [{"ButtonView", "SearchView", "StartImportButton", "ExportAvatarButton", "ConfigureAvatarButton"}]
      125 GETUPVAL                         R24 13
      126 GETUPVAL                         R25 14
      127 GETTABLEKS                       R25 R25 K17 ["View"]
      129 DUPTABLE                         R26 K29 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      130 NAMECALL                         R27 R19 K30 ["getNextOrder"]
      132 CALL                             R27 1 1
      133 SETTABLEKS                       R27 R26 K28 ["LayoutOrder"]
      135 DUPTABLE                         R27 K33 [{"OpenFileButton", "CleanupButton"}]
      136 GETUPVAL                         R28 13
      137 GETUPVAL                         R29 14
      138 GETTABLEKS                       R29 R29 K34 ["Tooltip"]
      140 DUPTABLE                         R30 K36 [{"title"}]
      141 LOADK                            R33 K10 ["ImportQueue"]
      142 LOADK                            R34 K37 ["AddFile"]
      143 NAMECALL                         R31 R10 K12 ["getText"]
      145 CALL                             R31 3 1
      146 SETTABLEKS                       R31 R30 K35 ["title"]
      148 DUPTABLE                         R31 K39 [{"OpenFileView"}]
      149 GETUPVAL                         R32 13
      150 GETUPVAL                         R33 14
      151 GETTABLEKS                       R33 R33 K17 ["View"]
      153 DUPTABLE                         R34 K46 [{["tag"] = "auto-xy padding-xsmall radius-small", ["testId"] = "open-file-button", ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 1}]
      154 MOVE                             R35 R4
      155 JUMPIF                           R35 ; [+3]
      156 MOVE                             R35 R5
      157 JUMPIF                           R35 ; [+1]
      158 LOADB                            R35 0
      159 SETTABLEKS                       R35 R34 K43 ["isDisabled"]
      161 SETTABLEKS                       R14 R34 K44 ["onActivated"]
      163 GETUPVAL                         R35 13
      164 GETUPVAL                         R36 14
      165 GETTABLEKS                       R36 R36 K47 ["Image"]
      167 DUPTABLE                         R37 K49 [{["tag"] = "size-400-400", ["Image"]}]
      168 GETUPVAL                         R38 15
      169 GETTABLEKS                       R38 R38 K7 ["get"]
      171 GETUPVAL                         R39 15
      172 GETTABLEKS                       R39 R39 K50 ["AvailableImages"]
      174 GETTABLEKS                       R39 R39 K51 ["Open"]
      176 CALL                             R38 1 1
      177 SETTABLEKS                       R38 R37 K47 ["Image"]
      179 CALL                             R35 2 -1
      180 CALL                             R32 -1 1
      181 SETTABLEKS                       R32 R31 K38 ["OpenFileView"]
      183 CALL                             R28 3 1
      184 SETTABLEKS                       R28 R27 K31 ["OpenFileButton"]
      186 GETUPVAL                         R28 13
      187 GETUPVAL                         R29 14
      188 GETTABLEKS                       R29 R29 K34 ["Tooltip"]
      190 DUPTABLE                         R30 K36 [{"title"}]
      191 LOADK                            R33 K10 ["ImportQueue"]
      192 LOADK                            R34 K52 ["ClearQueue"]
      193 NAMECALL                         R31 R10 K12 ["getText"]
      195 CALL                             R31 3 1
      196 SETTABLEKS                       R31 R30 K35 ["title"]
      198 DUPTABLE                         R31 K54 [{"CleanupView"}]
      199 GETUPVAL                         R32 13
      200 GETUPVAL                         R33 14
      201 GETTABLEKS                       R33 R33 K17 ["View"]
      203 DUPTABLE                         R34 K57 [{["tag"] = "auto-xy padding-xsmall radius-small", ["testId"] = "cleanup-view-button", ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 2}]
      204 MOVE                             R35 R4
      205 JUMPIF                           R35 ; [+3]
      206 MOVE                             R35 R5
      207 JUMPIF                           R35 ; [+1]
      208 LOADB                            R35 0
      209 SETTABLEKS                       R35 R34 K43 ["isDisabled"]
      211 SETTABLEKS                       R15 R34 K44 ["onActivated"]
      213 GETUPVAL                         R35 13
      214 GETUPVAL                         R36 14
      215 GETTABLEKS                       R36 R36 K47 ["Image"]
      217 DUPTABLE                         R37 K59 [{["tag"] = "size-400-400 padding-xsmall", ["Image"]}]
      218 GETUPVAL                         R38 15
      219 GETTABLEKS                       R38 R38 K7 ["get"]
      221 GETUPVAL                         R39 15
      222 GETTABLEKS                       R39 R39 K50 ["AvailableImages"]
      224 GETTABLEKS                       R39 R39 K60 ["Cleanup"]
      226 CALL                             R38 1 1
      227 SETTABLEKS                       R38 R37 K47 ["Image"]
      229 CALL                             R35 2 -1
      230 CALL                             R32 -1 1
      231 SETTABLEKS                       R32 R31 K53 ["CleanupView"]
      233 CALL                             R28 3 1
      234 SETTABLEKS                       R28 R27 K32 ["CleanupButton"]
      236 CALL                             R24 3 1
      237 SETTABLEKS                       R24 R23 K21 ["ButtonView"]
      239 GETUPVAL                         R24 13
      240 GETUPVAL                         R25 14
      241 GETTABLEKS                       R25 R25 K17 ["View"]
      243 DUPTABLE                         R26 K62 [{["tag"] = "fill size-full-0 auto-y", ["LayoutOrder"]}]
      244 NAMECALL                         R27 R19 K30 ["getNextOrder"]
      246 CALL                             R27 1 1
      247 SETTABLEKS                       R27 R26 K28 ["LayoutOrder"]
      249 DUPTABLE                         R27 K64 [{"SearchBar"}]
      250 GETUPVAL                         R28 13
      251 GETUPVAL                         R29 14
      252 GETTABLEKS                       R29 R29 K65 ["TextInput"]
      254 DUPTABLE                         R30 K74 [{["label"] = "", ["width"], ["size"], ["leadingIcon"], ["placeholder"], ["text"], ["onChanged"]}]
      255 GETIMPORT                        R31 K76 [UDim.new]
      257 LOADN                            R32 1
      258 LOADN                            R33 0
      259 CALL                             R31 2 1
      260 SETTABLEKS                       R31 R30 K68 ["width"]
      262 GETUPVAL                         R31 16
      263 GETTABLEKS                       R31 R31 K77 ["InputSize"]
      265 GETTABLEKS                       R31 R31 K78 ["XSmall"]
      267 SETTABLEKS                       R31 R30 K69 ["size"]
      269 GETUPVAL                         R31 16
      270 GETTABLEKS                       R31 R31 K79 ["IconName"]
      272 GETTABLEKS                       R31 R31 K80 ["MagnifyingGlass"]
      274 SETTABLEKS                       R31 R30 K70 ["leadingIcon"]
      276 LOADK                            R33 K10 ["ImportQueue"]
      277 LOADK                            R34 K63 ["SearchBar"]
      278 NAMECALL                         R31 R10 K12 ["getText"]
      280 CALL                             R31 3 1
      281 SETTABLEKS                       R31 R30 K71 ["placeholder"]
      283 SETTABLEKS                       R6 R30 K72 ["text"]
      285 SETTABLEKS                       R13 R30 K73 ["onChanged"]
      287 CALL                             R28 2 1
      288 SETTABLEKS                       R28 R27 K63 ["SearchBar"]
      290 CALL                             R24 3 1
      291 SETTABLEKS                       R24 R23 K22 ["SearchView"]
      293 GETUPVAL                         R24 13
      294 GETUPVAL                         R25 14
      295 GETTABLEKS                       R25 R25 K34 ["Tooltip"]
      297 DUPTABLE                         R26 K83 [{"title", "align", "side", "LayoutOrder"}]
      298 LOADK                            R29 K10 ["ImportQueue"]
      299 LOADK                            R30 K84 ["StartQueue2"]
      300 DUPTABLE                         R31 K87 [{"filesImporting", "totalFiles"}]
      301 FASTCALL1                        TOSTRING R2 ; [+3]
      302 MOVE                             R33 R2
      303 GETIMPORT                        R32 K89 [tostring]
      305 CALL                             R32 1 1
      306 SETTABLEKS                       R32 R31 K85 ["filesImporting"]
      308 FASTCALL1                        TOSTRING R3 ; [+3]
      309 MOVE                             R33 R3
      310 GETIMPORT                        R32 K89 [tostring]
      312 CALL                             R32 1 1
      313 SETTABLEKS                       R32 R31 K86 ["totalFiles"]
      315 NAMECALL                         R27 R10 K12 ["getText"]
      317 CALL                             R27 4 1
      318 SETTABLEKS                       R27 R26 K35 ["title"]
      320 GETUPVAL                         R27 14
      321 GETTABLEKS                       R27 R27 K90 ["Enums"]
      323 GETTABLEKS                       R27 R27 K91 ["PopoverAlign"]
      325 GETTABLEKS                       R27 R27 K92 ["End"]
      327 SETTABLEKS                       R27 R26 K81 ["align"]
      329 GETUPVAL                         R27 14
      330 GETTABLEKS                       R27 R27 K90 ["Enums"]
      332 GETTABLEKS                       R27 R27 K93 ["PopoverSide"]
      334 GETTABLEKS                       R27 R27 K94 ["Bottom"]
      336 SETTABLEKS                       R27 R26 K82 ["side"]
      338 NAMECALL                         R27 R19 K30 ["getNextOrder"]
      340 CALL                             R27 1 1
      341 SETTABLEKS                       R27 R26 K28 ["LayoutOrder"]
      343 NEWTABLE                         R27 0 1
      345 GETUPVAL                         R28 13
      346 GETUPVAL                         R29 14
      347 GETTABLEKS                       R29 R29 K95 ["Button"]
      349 DUPTABLE                         R30 K99 [{["tag"] = "size-full-0 auto-y", ["testId"] = "start-import-button", ["size"], ["text"], ["variant"], ["onActivated"], ["isDisabled"]}]
      350 GETUPVAL                         R31 16
      351 GETTABLEKS                       R31 R31 K77 ["InputSize"]
      353 GETTABLEKS                       R31 R31 K78 ["XSmall"]
      355 SETTABLEKS                       R31 R30 K69 ["size"]
      357 SETTABLEKS                       R18 R30 K72 ["text"]
      359 GETUPVAL                         R31 16
      360 GETTABLEKS                       R31 R31 K100 ["ButtonVariant"]
      362 GETTABLEKS                       R31 R31 K101 ["Emphasis"]
      364 SETTABLEKS                       R31 R30 K98 ["variant"]
      366 SETTABLEKS                       R16 R30 K44 ["onActivated"]
      368 SETTABLEKS                       R17 R30 K43 ["isDisabled"]
      370 CALL                             R28 2 -1
      371 SETLIST                          R27 R28 -1 [1]
      373 CALL                             R24 3 1
      374 SETTABLEKS                       R24 R23 K23 ["StartImportButton"]
      376 JUMPIFNOT                        R12 ; [+24]
      377 GETUPVAL                         R24 13
      378 GETUPVAL                         R25 14
      379 GETTABLEKS                       R25 R25 K95 ["Button"]
      381 DUPTABLE                         R26 K104 [{["tag"] = "size-full-0 auto-y", ["testId"] = "export-avatar-button", ["size"], ["text"] = "Export Avatar", ["onActivated"], ["LayoutOrder"]}]
      382 GETUPVAL                         R27 16
      383 GETTABLEKS                       R27 R27 K77 ["InputSize"]
      385 GETTABLEKS                       R27 R27 K78 ["XSmall"]
      387 SETTABLEKS                       R27 R26 K69 ["size"]
      389 NEWCLOSURE                       R27 P9
      390 CAPTURE                          UPVAL U17
      391 CAPTURE                          VAL R11
      392 SETTABLEKS                       R27 R26 K44 ["onActivated"]
      394 NAMECALL                         R27 R19 K30 ["getNextOrder"]
      396 CALL                             R27 1 1
      397 SETTABLEKS                       R27 R26 K28 ["LayoutOrder"]
      399 CALL                             R24 2 1
      400 JUMP                             ; [+1]
      401 LOADNIL                          R24
      402 SETTABLEKS                       R24 R23 K24 ["ExportAvatarButton"]
      404 JUMPIFNOT                        R12 ; [+23]
      405 GETUPVAL                         R24 13
      406 GETUPVAL                         R25 14
      407 GETTABLEKS                       R25 R25 K95 ["Button"]
      409 DUPTABLE                         R26 K107 [{["tag"] = "size-full-0 auto-y", ["testId"] = "configure-avatar-button", ["size"], ["text"] = "Configure Avatar", ["onActivated"], ["LayoutOrder"]}]
      410 GETUPVAL                         R27 16
      411 GETTABLEKS                       R27 R27 K77 ["InputSize"]
      413 GETTABLEKS                       R27 R27 K78 ["XSmall"]
      415 SETTABLEKS                       R27 R26 K69 ["size"]
      417 DUPCLOSURE                       R27 K108 [PROTO_10]
      418 CAPTURE                          UPVAL U18
      419 SETTABLEKS                       R27 R26 K44 ["onActivated"]
      421 NAMECALL                         R27 R19 K30 ["getNextOrder"]
      423 CALL                             R27 1 1
      424 SETTABLEKS                       R27 R26 K28 ["LayoutOrder"]
      426 CALL                             R24 2 1
      427 JUMP                             ; [+1]
      428 LOADNIL                          R24
      429 SETTABLEKS                       R24 R23 K25 ["ConfigureAvatarButton"]
      431 CALL                             R20 3 -1
      432 RETURN                           R20 -1

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
      143 GETIMPORT                        R20 K5 [require]
      145 GETTABLEKS                       R21 R0 K16 ["Src"]
      147 GETTABLEKS                       R21 R21 K23 ["Flags"]
      149 GETTABLEKS                       R21 R21 K34 ["getFFlagImportQueueUXClarity"]
      151 CALL                             R20 1 1
      152 DUPCLOSURE                       R21 K35 [PROTO_11]
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R16
      172 RETURN                           R21 1
