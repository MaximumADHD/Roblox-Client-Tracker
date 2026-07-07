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
      114 DUPTABLE                         R22 K19 [{["tag"] = "row align-x-left align-y-center gap-large size-full-0 auto-y padding-small"}]
      115 DUPTABLE                         R23 K25 [{"ButtonView", "SearchView", "StartImportButton", "ExportAvatarButton", "ConfigureAvatarButton"}]
      116 GETUPVAL                         R24 12
      117 GETUPVAL                         R25 13
      118 GETTABLEKS                       R25 R25 K16 ["View"]
      120 DUPTABLE                         R26 K28 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      121 NAMECALL                         R27 R19 K29 ["getNextOrder"]
      123 CALL                             R27 1 1
      124 SETTABLEKS                       R27 R26 K27 ["LayoutOrder"]
      126 DUPTABLE                         R27 K32 [{"OpenFileButton", "CleanupButton"}]
      127 GETUPVAL                         R28 12
      128 GETUPVAL                         R29 13
      129 GETTABLEKS                       R29 R29 K33 ["Tooltip"]
      131 DUPTABLE                         R30 K35 [{"title"}]
      132 LOADK                            R33 K10 ["ImportQueue"]
      133 LOADK                            R34 K36 ["AddFile"]
      134 NAMECALL                         R31 R10 K12 ["getText"]
      136 CALL                             R31 3 1
      137 SETTABLEKS                       R31 R30 K34 ["title"]
      139 DUPTABLE                         R31 K38 [{"OpenFileView"}]
      140 GETUPVAL                         R32 12
      141 GETUPVAL                         R33 13
      142 GETTABLEKS                       R33 R33 K16 ["View"]
      144 DUPTABLE                         R34 K45 [{["tag"] = "auto-xy padding-xsmall radius-small", ["testId"] = "open-file-button", ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 1}]
      145 MOVE                             R35 R4
      146 JUMPIF                           R35 ; [+3]
      147 MOVE                             R35 R5
      148 JUMPIF                           R35 ; [+1]
      149 LOADB                            R35 0
      150 SETTABLEKS                       R35 R34 K42 ["isDisabled"]
      152 SETTABLEKS                       R14 R34 K43 ["onActivated"]
      154 GETUPVAL                         R35 12
      155 GETUPVAL                         R36 13
      156 GETTABLEKS                       R36 R36 K46 ["Image"]
      158 DUPTABLE                         R37 K48 [{["tag"] = "size-400-400", ["Image"]}]
      159 GETUPVAL                         R38 14
      160 GETTABLEKS                       R38 R38 K7 ["get"]
      162 GETUPVAL                         R39 14
      163 GETTABLEKS                       R39 R39 K49 ["AvailableImages"]
      165 GETTABLEKS                       R39 R39 K50 ["Open"]
      167 CALL                             R38 1 1
      168 SETTABLEKS                       R38 R37 K46 ["Image"]
      170 CALL                             R35 2 -1
      171 CALL                             R32 -1 1
      172 SETTABLEKS                       R32 R31 K37 ["OpenFileView"]
      174 CALL                             R28 3 1
      175 SETTABLEKS                       R28 R27 K30 ["OpenFileButton"]
      177 GETUPVAL                         R28 12
      178 GETUPVAL                         R29 13
      179 GETTABLEKS                       R29 R29 K33 ["Tooltip"]
      181 DUPTABLE                         R30 K35 [{"title"}]
      182 LOADK                            R33 K10 ["ImportQueue"]
      183 LOADK                            R34 K51 ["ClearQueue"]
      184 NAMECALL                         R31 R10 K12 ["getText"]
      186 CALL                             R31 3 1
      187 SETTABLEKS                       R31 R30 K34 ["title"]
      189 DUPTABLE                         R31 K53 [{"CleanupView"}]
      190 GETUPVAL                         R32 12
      191 GETUPVAL                         R33 13
      192 GETTABLEKS                       R33 R33 K16 ["View"]
      194 DUPTABLE                         R34 K56 [{["tag"] = "auto-xy padding-xsmall radius-small", ["testId"] = "cleanup-view-button", ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 2}]
      195 MOVE                             R35 R4
      196 JUMPIF                           R35 ; [+3]
      197 MOVE                             R35 R5
      198 JUMPIF                           R35 ; [+1]
      199 LOADB                            R35 0
      200 SETTABLEKS                       R35 R34 K42 ["isDisabled"]
      202 SETTABLEKS                       R15 R34 K43 ["onActivated"]
      204 GETUPVAL                         R35 12
      205 GETUPVAL                         R36 13
      206 GETTABLEKS                       R36 R36 K46 ["Image"]
      208 DUPTABLE                         R37 K58 [{["tag"] = "size-400-400 padding-xsmall", ["Image"]}]
      209 GETUPVAL                         R38 14
      210 GETTABLEKS                       R38 R38 K7 ["get"]
      212 GETUPVAL                         R39 14
      213 GETTABLEKS                       R39 R39 K49 ["AvailableImages"]
      215 GETTABLEKS                       R39 R39 K59 ["Cleanup"]
      217 CALL                             R38 1 1
      218 SETTABLEKS                       R38 R37 K46 ["Image"]
      220 CALL                             R35 2 -1
      221 CALL                             R32 -1 1
      222 SETTABLEKS                       R32 R31 K52 ["CleanupView"]
      224 CALL                             R28 3 1
      225 SETTABLEKS                       R28 R27 K31 ["CleanupButton"]
      227 CALL                             R24 3 1
      228 SETTABLEKS                       R24 R23 K20 ["ButtonView"]
      230 GETUPVAL                         R24 12
      231 GETUPVAL                         R25 13
      232 GETTABLEKS                       R25 R25 K16 ["View"]
      234 DUPTABLE                         R26 K61 [{["tag"] = "fill size-full-0 auto-y", ["LayoutOrder"]}]
      235 NAMECALL                         R27 R19 K29 ["getNextOrder"]
      237 CALL                             R27 1 1
      238 SETTABLEKS                       R27 R26 K27 ["LayoutOrder"]
      240 DUPTABLE                         R27 K63 [{"SearchBar"}]
      241 GETUPVAL                         R28 12
      242 GETUPVAL                         R29 13
      243 GETTABLEKS                       R29 R29 K64 ["TextInput"]
      245 DUPTABLE                         R30 K73 [{["label"] = "", ["width"], ["size"], ["leadingIcon"], ["placeholder"], ["text"], ["onChanged"]}]
      246 GETIMPORT                        R31 K75 [UDim.new]
      248 LOADN                            R32 1
      249 LOADN                            R33 0
      250 CALL                             R31 2 1
      251 SETTABLEKS                       R31 R30 K67 ["width"]
      253 GETUPVAL                         R31 15
      254 GETTABLEKS                       R31 R31 K76 ["InputSize"]
      256 GETTABLEKS                       R31 R31 K77 ["XSmall"]
      258 SETTABLEKS                       R31 R30 K68 ["size"]
      260 GETUPVAL                         R31 15
      261 GETTABLEKS                       R31 R31 K78 ["IconName"]
      263 GETTABLEKS                       R31 R31 K79 ["MagnifyingGlass"]
      265 SETTABLEKS                       R31 R30 K69 ["leadingIcon"]
      267 LOADK                            R33 K10 ["ImportQueue"]
      268 LOADK                            R34 K62 ["SearchBar"]
      269 NAMECALL                         R31 R10 K12 ["getText"]
      271 CALL                             R31 3 1
      272 SETTABLEKS                       R31 R30 K70 ["placeholder"]
      274 SETTABLEKS                       R6 R30 K71 ["text"]
      276 SETTABLEKS                       R13 R30 K72 ["onChanged"]
      278 CALL                             R28 2 1
      279 SETTABLEKS                       R28 R27 K62 ["SearchBar"]
      281 CALL                             R24 3 1
      282 SETTABLEKS                       R24 R23 K21 ["SearchView"]
      284 GETUPVAL                         R24 12
      285 GETUPVAL                         R25 13
      286 GETTABLEKS                       R25 R25 K33 ["Tooltip"]
      288 DUPTABLE                         R26 K80 [{"title", "LayoutOrder"}]
      289 LOADK                            R29 K10 ["ImportQueue"]
      290 LOADK                            R30 K81 ["StartQueue2"]
      291 DUPTABLE                         R31 K84 [{"filesImporting", "totalFiles"}]
      292 FASTCALL1                        TOSTRING R2 ; [+3]
      293 MOVE                             R33 R2
      294 GETIMPORT                        R32 K86 [tostring]
      296 CALL                             R32 1 1
      297 SETTABLEKS                       R32 R31 K82 ["filesImporting"]
      299 FASTCALL1                        TOSTRING R3 ; [+3]
      300 MOVE                             R33 R3
      301 GETIMPORT                        R32 K86 [tostring]
      303 CALL                             R32 1 1
      304 SETTABLEKS                       R32 R31 K83 ["totalFiles"]
      306 NAMECALL                         R27 R10 K12 ["getText"]
      308 CALL                             R27 4 1
      309 SETTABLEKS                       R27 R26 K34 ["title"]
      311 NAMECALL                         R27 R19 K29 ["getNextOrder"]
      313 CALL                             R27 1 1
      314 SETTABLEKS                       R27 R26 K27 ["LayoutOrder"]
      316 NEWTABLE                         R27 0 1
      318 GETUPVAL                         R28 12
      319 GETUPVAL                         R29 13
      320 GETTABLEKS                       R29 R29 K87 ["Button"]
      322 DUPTABLE                         R30 K91 [{["tag"] = "size-full-0 auto-y", ["testId"] = "start-import-button", ["size"], ["text"], ["variant"], ["onActivated"], ["isDisabled"]}]
      323 GETUPVAL                         R31 15
      324 GETTABLEKS                       R31 R31 K76 ["InputSize"]
      326 GETTABLEKS                       R31 R31 K77 ["XSmall"]
      328 SETTABLEKS                       R31 R30 K68 ["size"]
      330 SETTABLEKS                       R18 R30 K71 ["text"]
      332 GETUPVAL                         R31 15
      333 GETTABLEKS                       R31 R31 K92 ["ButtonVariant"]
      335 GETTABLEKS                       R31 R31 K93 ["Emphasis"]
      337 SETTABLEKS                       R31 R30 K90 ["variant"]
      339 SETTABLEKS                       R16 R30 K43 ["onActivated"]
      341 SETTABLEKS                       R17 R30 K42 ["isDisabled"]
      343 CALL                             R28 2 -1
      344 SETLIST                          R27 R28 -1 [1]
      346 CALL                             R24 3 1
      347 SETTABLEKS                       R24 R23 K22 ["StartImportButton"]
      349 JUMPIFNOT                        R12 ; [+24]
      350 GETUPVAL                         R24 12
      351 GETUPVAL                         R25 13
      352 GETTABLEKS                       R25 R25 K87 ["Button"]
      354 DUPTABLE                         R26 K96 [{["tag"] = "size-full-0 auto-y", ["testId"] = "export-avatar-button", ["size"], ["text"] = "Export Avatar", ["onActivated"], ["LayoutOrder"]}]
      355 GETUPVAL                         R27 15
      356 GETTABLEKS                       R27 R27 K76 ["InputSize"]
      358 GETTABLEKS                       R27 R27 K77 ["XSmall"]
      360 SETTABLEKS                       R27 R26 K68 ["size"]
      362 NEWCLOSURE                       R27 P9
      363 CAPTURE                          UPVAL U16
      364 CAPTURE                          VAL R11
      365 SETTABLEKS                       R27 R26 K43 ["onActivated"]
      367 NAMECALL                         R27 R19 K29 ["getNextOrder"]
      369 CALL                             R27 1 1
      370 SETTABLEKS                       R27 R26 K27 ["LayoutOrder"]
      372 CALL                             R24 2 1
      373 JUMP                             ; [+1]
      374 LOADNIL                          R24
      375 SETTABLEKS                       R24 R23 K23 ["ExportAvatarButton"]
      377 JUMPIFNOT                        R12 ; [+23]
      378 GETUPVAL                         R24 12
      379 GETUPVAL                         R25 13
      380 GETTABLEKS                       R25 R25 K87 ["Button"]
      382 DUPTABLE                         R26 K99 [{["tag"] = "size-full-0 auto-y", ["testId"] = "configure-avatar-button", ["size"], ["text"] = "Configure Avatar", ["onActivated"], ["LayoutOrder"]}]
      383 GETUPVAL                         R27 15
      384 GETTABLEKS                       R27 R27 K76 ["InputSize"]
      386 GETTABLEKS                       R27 R27 K77 ["XSmall"]
      388 SETTABLEKS                       R27 R26 K68 ["size"]
      390 DUPCLOSURE                       R27 K100 [PROTO_10]
      391 CAPTURE                          UPVAL U17
      392 SETTABLEKS                       R27 R26 K43 ["onActivated"]
      394 NAMECALL                         R27 R19 K29 ["getNextOrder"]
      396 CALL                             R27 1 1
      397 SETTABLEKS                       R27 R26 K27 ["LayoutOrder"]
      399 CALL                             R24 2 1
      400 JUMP                             ; [+1]
      401 LOADNIL                          R24
      402 SETTABLEKS                       R24 R23 K24 ["ConfigureAvatarButton"]
      404 CALL                             R20 3 -1
      405 RETURN                           R20 -1

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
