PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["activeSessionCount"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["sessionCount"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["parsing"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["uploading"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["searchTerm"]
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
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R7 R8 K5 ["use"]
       20 CALL                             R7 0 1
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R8 R9 K5 ["use"]
       24 CALL                             R8 0 1
       25 GETUPVAL                         R10 4
       26 GETTABLEKS                       R9 R10 K5 ["use"]
       28 CALL                             R9 0 1
       29 GETUPVAL                         R11 5
       30 GETTABLEKS                       R10 R11 K5 ["use"]
       32 CALL                             R10 0 1
       33 GETUPVAL                         R12 6
       34 GETTABLEKS                       R11 R12 K6 ["useCallback"]
       36 NEWCLOSURE                       R12 P5
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U7
       39 CALL                             R11 1 1
       40 GETUPVAL                         R13 6
       41 GETTABLEKS                       R12 R13 K6 ["useCallback"]
       43 NEWCLOSURE                       R13 P6
       44 CAPTURE                          VAL R7
       45 NEWTABLE                         R14 0 1
       47 MOVE                             R15 R7
       48 SETLIST                          R14 R15 1 [1]
       50 CALL                             R12 2 1
       51 GETUPVAL                         R14 6
       52 GETTABLEKS                       R13 R14 K6 ["useCallback"]
       54 NEWCLOSURE                       R14 P7
       55 CAPTURE                          VAL R8
       56 NEWTABLE                         R15 0 1
       58 MOVE                             R16 R8
       59 SETLIST                          R15 R16 1 [1]
       61 CALL                             R13 2 1
       62 NEWCLOSURE                       R14 P8
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R8
       67 NOT                              R15 R5
       68 JUMPIFNOT                        R15 ; [+4]
       69 JUMPIFEQKN                       R2 K7 [0] ; [+2]
       71 LOADB                            R15 0 +1
       72 LOADB                            R15 1
       73 JUMPIFNOT                        R5 ; [+6]
       74 LOADK                            R18 K8 ["ImportQueue"]
       75 LOADK                            R19 K9 ["StopQueue"]
       76 NAMECALL                         R16 R10 K10 ["getText"]
       78 CALL                             R16 3 1
       79 JUMP                             ; [+12]
       80 JUMPIFNOT                        R4 ; [+6]
       81 LOADK                            R18 K8 ["ImportQueue"]
       82 LOADK                            R19 K11 ["StopParsing"]
       83 NAMECALL                         R16 R10 K10 ["getText"]
       85 CALL                             R16 3 1
       86 JUMP                             ; [+5]
       87 LOADK                            R18 K12 ["Plugin"]
       88 LOADK                            R19 K13 ["Import"]
       89 NAMECALL                         R16 R10 K10 ["getText"]
       91 CALL                             R16 3 1
       92 GETUPVAL                         R18 8
       93 GETTABLEKS                       R17 R18 K14 ["new"]
       95 CALL                             R17 0 1
       96 GETUPVAL                         R18 9
       97 GETUPVAL                         R20 10
       98 GETTABLEKS                       R19 R20 K15 ["View"]
      100 DUPTABLE                         R20 K17 [{"tag"}]
      101 LOADK                            R21 K18 ["row size-full-0 auto-y align-x-left align-y-center padding-small gap-large"]
      102 SETTABLEKS                       R21 R20 K16 ["tag"]
      104 DUPTABLE                         R21 K22 [{"ButtonView", "SearchView", "StartImportButton"}]
      105 GETUPVAL                         R22 9
      106 GETUPVAL                         R24 10
      107 GETTABLEKS                       R23 R24 K15 ["View"]
      109 DUPTABLE                         R24 K24 [{"tag", "LayoutOrder"}]
      110 LOADK                            R25 K25 ["row auto-xy align-y-center gap-small"]
      111 SETTABLEKS                       R25 R24 K16 ["tag"]
      113 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      115 CALL                             R25 1 1
      116 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      118 DUPTABLE                         R25 K29 [{"OpenFileButton", "CleanupButton"}]
      119 GETUPVAL                         R26 9
      120 GETUPVAL                         R28 10
      121 GETTABLEKS                       R27 R28 K30 ["Tooltip"]
      123 DUPTABLE                         R28 K32 [{"title"}]
      124 LOADK                            R31 K8 ["ImportQueue"]
      125 LOADK                            R32 K33 ["AddFile"]
      126 NAMECALL                         R29 R10 K10 ["getText"]
      128 CALL                             R29 3 1
      129 SETTABLEKS                       R29 R28 K31 ["title"]
      131 DUPTABLE                         R29 K35 [{"OpenFileView"}]
      132 GETUPVAL                         R30 9
      133 GETUPVAL                         R32 10
      134 GETTABLEKS                       R31 R32 K15 ["View"]
      136 DUPTABLE                         R32 K38 [{"tag", "isDisabled", "onActivated", "LayoutOrder"}]
      137 LOADK                            R33 K39 ["auto-xy padding-xsmall radius-small data-testid=open-file-button"]
      138 SETTABLEKS                       R33 R32 K16 ["tag"]
      140 MOVE                             R33 R4
      141 JUMPIF                           R33 ; [+3]
      142 MOVE                             R33 R5
      143 JUMPIF                           R33 ; [+1]
      144 LOADB                            R33 0
      145 SETTABLEKS                       R33 R32 K36 ["isDisabled"]
      147 SETTABLEKS                       R12 R32 K37 ["onActivated"]
      149 LOADN                            R33 1
      150 SETTABLEKS                       R33 R32 K23 ["LayoutOrder"]
      152 GETUPVAL                         R33 9
      153 GETUPVAL                         R35 10
      154 GETTABLEKS                       R34 R35 K40 ["Image"]
      156 DUPTABLE                         R35 K41 [{"tag", "Image"}]
      157 LOADK                            R36 K42 ["size-400-400"]
      158 SETTABLEKS                       R36 R35 K16 ["tag"]
      160 GETUPVAL                         R37 11
      161 GETTABLEKS                       R36 R37 K43 ["get"]
      163 GETUPVAL                         R39 11
      164 GETTABLEKS                       R38 R39 K44 ["AvailableImages"]
      166 GETTABLEKS                       R37 R38 K45 ["Open"]
      168 CALL                             R36 1 1
      169 SETTABLEKS                       R36 R35 K40 ["Image"]
      171 CALL                             R33 2 -1
      172 CALL                             R30 -1 1
      173 SETTABLEKS                       R30 R29 K34 ["OpenFileView"]
      175 CALL                             R26 3 1
      176 SETTABLEKS                       R26 R25 K27 ["OpenFileButton"]
      178 GETUPVAL                         R26 9
      179 GETUPVAL                         R28 10
      180 GETTABLEKS                       R27 R28 K30 ["Tooltip"]
      182 DUPTABLE                         R28 K32 [{"title"}]
      183 LOADK                            R31 K8 ["ImportQueue"]
      184 LOADK                            R32 K46 ["ClearQueue"]
      185 NAMECALL                         R29 R10 K10 ["getText"]
      187 CALL                             R29 3 1
      188 SETTABLEKS                       R29 R28 K31 ["title"]
      190 DUPTABLE                         R29 K48 [{"CleanupView"}]
      191 GETUPVAL                         R30 9
      192 GETUPVAL                         R32 10
      193 GETTABLEKS                       R31 R32 K15 ["View"]
      195 DUPTABLE                         R32 K38 [{"tag", "isDisabled", "onActivated", "LayoutOrder"}]
      196 LOADK                            R33 K49 ["auto-xy padding-xsmall radius-small data-testid=cleanup-view-button"]
      197 SETTABLEKS                       R33 R32 K16 ["tag"]
      199 MOVE                             R33 R4
      200 JUMPIF                           R33 ; [+3]
      201 MOVE                             R33 R5
      202 JUMPIF                           R33 ; [+1]
      203 LOADB                            R33 0
      204 SETTABLEKS                       R33 R32 K36 ["isDisabled"]
      206 SETTABLEKS                       R13 R32 K37 ["onActivated"]
      208 LOADN                            R33 2
      209 SETTABLEKS                       R33 R32 K23 ["LayoutOrder"]
      211 GETUPVAL                         R33 9
      212 GETUPVAL                         R35 10
      213 GETTABLEKS                       R34 R35 K40 ["Image"]
      215 DUPTABLE                         R35 K41 [{"tag", "Image"}]
      216 LOADK                            R36 K50 ["size-400-400 padding-xsmall"]
      217 SETTABLEKS                       R36 R35 K16 ["tag"]
      219 GETUPVAL                         R37 11
      220 GETTABLEKS                       R36 R37 K43 ["get"]
      222 GETUPVAL                         R39 11
      223 GETTABLEKS                       R38 R39 K44 ["AvailableImages"]
      225 GETTABLEKS                       R37 R38 K51 ["Cleanup"]
      227 CALL                             R36 1 1
      228 SETTABLEKS                       R36 R35 K40 ["Image"]
      230 CALL                             R33 2 -1
      231 CALL                             R30 -1 1
      232 SETTABLEKS                       R30 R29 K47 ["CleanupView"]
      234 CALL                             R26 3 1
      235 SETTABLEKS                       R26 R25 K28 ["CleanupButton"]
      237 CALL                             R22 3 1
      238 SETTABLEKS                       R22 R21 K19 ["ButtonView"]
      240 GETUPVAL                         R22 9
      241 GETUPVAL                         R24 10
      242 GETTABLEKS                       R23 R24 K15 ["View"]
      244 DUPTABLE                         R24 K24 [{"tag", "LayoutOrder"}]
      245 LOADK                            R25 K52 ["size-full-0 auto-y fill"]
      246 SETTABLEKS                       R25 R24 K16 ["tag"]
      248 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      250 CALL                             R25 1 1
      251 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      253 DUPTABLE                         R25 K54 [{"SearchBar"}]
      254 GETUPVAL                         R26 9
      255 GETUPVAL                         R28 10
      256 GETTABLEKS                       R27 R28 K55 ["TextInput"]
      258 DUPTABLE                         R28 K63 [{"label", "width", "size", "leadingIcon", "placeholder", "text", "onChanged"}]
      259 LOADK                            R29 K64 [""]
      260 SETTABLEKS                       R29 R28 K56 ["label"]
      262 GETIMPORT                        R29 K66 [UDim.new]
      264 LOADN                            R30 1
      265 LOADN                            R31 0
      266 CALL                             R29 2 1
      267 SETTABLEKS                       R29 R28 K57 ["width"]
      269 GETUPVAL                         R31 12
      270 GETTABLEKS                       R30 R31 K67 ["InputSize"]
      272 GETTABLEKS                       R29 R30 K68 ["XSmall"]
      274 SETTABLEKS                       R29 R28 K58 ["size"]
      276 GETUPVAL                         R31 12
      277 GETTABLEKS                       R30 R31 K69 ["IconName"]
      279 GETTABLEKS                       R29 R30 K70 ["MagnifyingGlass"]
      281 SETTABLEKS                       R29 R28 K59 ["leadingIcon"]
      283 LOADK                            R31 K8 ["ImportQueue"]
      284 LOADK                            R32 K53 ["SearchBar"]
      285 NAMECALL                         R29 R10 K10 ["getText"]
      287 CALL                             R29 3 1
      288 SETTABLEKS                       R29 R28 K60 ["placeholder"]
      290 SETTABLEKS                       R6 R28 K61 ["text"]
      292 SETTABLEKS                       R11 R28 K62 ["onChanged"]
      294 CALL                             R26 2 1
      295 SETTABLEKS                       R26 R25 K53 ["SearchBar"]
      297 CALL                             R22 3 1
      298 SETTABLEKS                       R22 R21 K20 ["SearchView"]
      300 GETUPVAL                         R22 9
      301 GETUPVAL                         R24 10
      302 GETTABLEKS                       R23 R24 K30 ["Tooltip"]
      304 DUPTABLE                         R24 K71 [{"title", "LayoutOrder"}]
      305 LOADK                            R27 K8 ["ImportQueue"]
      306 LOADK                            R28 K72 ["StartQueue2"]
      307 DUPTABLE                         R29 K75 [{"filesImporting", "totalFiles"}]
      308 FASTCALL1                        TOSTRING R2 ; [+3]
      309 MOVE                             R31 R2
      310 GETIMPORT                        R30 K77 [tostring]
      312 CALL                             R30 1 1
      313 SETTABLEKS                       R30 R29 K73 ["filesImporting"]
      315 FASTCALL1                        TOSTRING R3 ; [+3]
      316 MOVE                             R31 R3
      317 GETIMPORT                        R30 K77 [tostring]
      319 CALL                             R30 1 1
      320 SETTABLEKS                       R30 R29 K74 ["totalFiles"]
      322 NAMECALL                         R25 R10 K10 ["getText"]
      324 CALL                             R25 4 1
      325 SETTABLEKS                       R25 R24 K31 ["title"]
      327 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      329 CALL                             R25 1 1
      330 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      332 NEWTABLE                         R25 0 1
      334 GETUPVAL                         R26 9
      335 GETUPVAL                         R28 10
      336 GETTABLEKS                       R27 R28 K78 ["Button"]
      338 DUPTABLE                         R28 K81 [{"tag", "testId", "size", "text", "variant", "onActivated", "isDisabled"}]
      339 LOADK                            R29 K82 ["size-full-0 auto-y"]
      340 SETTABLEKS                       R29 R28 K16 ["tag"]
      342 LOADK                            R29 K83 ["start-import-button"]
      343 SETTABLEKS                       R29 R28 K79 ["testId"]
      345 GETUPVAL                         R31 12
      346 GETTABLEKS                       R30 R31 K67 ["InputSize"]
      348 GETTABLEKS                       R29 R30 K68 ["XSmall"]
      350 SETTABLEKS                       R29 R28 K58 ["size"]
      352 SETTABLEKS                       R16 R28 K61 ["text"]
      354 GETUPVAL                         R31 12
      355 GETTABLEKS                       R30 R31 K84 ["ButtonVariant"]
      357 GETTABLEKS                       R29 R30 K85 ["Emphasis"]
      359 SETTABLEKS                       R29 R28 K80 ["variant"]
      361 SETTABLEKS                       R14 R28 K37 ["onActivated"]
      363 SETTABLEKS                       R15 R28 K36 ["isDisabled"]
      365 CALL                             R26 2 -1
      366 SETLIST                          R25 R26 -1 [1]
      368 CALL                             R22 3 1
      369 SETTABLEKS                       R22 R21 K21 ["StartImportButton"]
      371 CALL                             R18 3 -1
      372 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K13 ["Localization"]
       36 GETTABLEKS                       R9 R5 K14 ["Util"]
       38 GETTABLEKS                       R8 R9 K15 ["LayoutOrderIterator"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R12 R0 K16 ["Src"]
       44 GETTABLEKS                       R11 R12 K17 ["Actions"]
       46 GETTABLEKS                       R10 R11 K18 ["SetSearchTerm"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R13 R0 K16 ["Src"]
       53 GETTABLEKS                       R12 R13 K19 ["Controllers"]
       55 GETTABLEKS                       R11 R12 K20 ["FileController"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R14 R0 K16 ["Src"]
       62 GETTABLEKS                       R13 R14 K19 ["Controllers"]
       64 GETTABLEKS                       R12 R13 K21 ["QueueController"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R15 R0 K16 ["Src"]
       71 GETTABLEKS                       R14 R15 K19 ["Controllers"]
       73 GETTABLEKS                       R13 R14 K22 ["UploadController"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R16 R0 K16 ["Src"]
       80 GETTABLEKS                       R15 R16 K23 ["Hooks"]
       82 GETTABLEKS                       R14 R15 K24 ["useDispatch"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R17 R0 K16 ["Src"]
       89 GETTABLEKS                       R16 R17 K23 ["Hooks"]
       91 GETTABLEKS                       R15 R16 K25 ["useSelector"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K5 [require]
       96 GETTABLEKS                       R18 R0 K16 ["Src"]
       98 GETTABLEKS                       R17 R18 K26 ["Resources"]
      100 GETTABLEKS                       R16 R17 K27 ["Images"]
      102 CALL                             R15 1 1
      103 DUPCLOSURE                       R16 K28 [PROTO_9]
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R4
      117 RETURN                           R16 1
