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
      136 DUPTABLE                         R32 K37 [{"tag", "onActivated", "LayoutOrder"}]
      137 LOADK                            R33 K38 ["auto-xy padding-xsmall data-testid=open-file-button"]
      138 SETTABLEKS                       R33 R32 K16 ["tag"]
      140 SETTABLEKS                       R12 R32 K36 ["onActivated"]
      142 LOADN                            R33 1
      143 SETTABLEKS                       R33 R32 K23 ["LayoutOrder"]
      145 GETUPVAL                         R33 9
      146 GETUPVAL                         R35 10
      147 GETTABLEKS                       R34 R35 K39 ["Image"]
      149 DUPTABLE                         R35 K40 [{"tag", "Image"}]
      150 LOADK                            R36 K41 ["size-400-400"]
      151 SETTABLEKS                       R36 R35 K16 ["tag"]
      153 GETUPVAL                         R37 11
      154 GETTABLEKS                       R36 R37 K42 ["get"]
      156 GETUPVAL                         R39 11
      157 GETTABLEKS                       R38 R39 K43 ["AvailableImages"]
      159 GETTABLEKS                       R37 R38 K44 ["Open"]
      161 CALL                             R36 1 1
      162 SETTABLEKS                       R36 R35 K39 ["Image"]
      164 CALL                             R33 2 -1
      165 CALL                             R30 -1 1
      166 SETTABLEKS                       R30 R29 K34 ["OpenFileView"]
      168 CALL                             R26 3 1
      169 SETTABLEKS                       R26 R25 K27 ["OpenFileButton"]
      171 GETUPVAL                         R26 9
      172 GETUPVAL                         R28 10
      173 GETTABLEKS                       R27 R28 K30 ["Tooltip"]
      175 DUPTABLE                         R28 K32 [{"title"}]
      176 LOADK                            R31 K8 ["ImportQueue"]
      177 LOADK                            R32 K45 ["ClearQueue"]
      178 NAMECALL                         R29 R10 K10 ["getText"]
      180 CALL                             R29 3 1
      181 SETTABLEKS                       R29 R28 K31 ["title"]
      183 DUPTABLE                         R29 K47 [{"CleanupView"}]
      184 GETUPVAL                         R30 9
      185 GETUPVAL                         R32 10
      186 GETTABLEKS                       R31 R32 K15 ["View"]
      188 DUPTABLE                         R32 K37 [{"tag", "onActivated", "LayoutOrder"}]
      189 LOADK                            R33 K48 ["auto-xy padding-xsmall data-testid=cleanup-view-button"]
      190 SETTABLEKS                       R33 R32 K16 ["tag"]
      192 SETTABLEKS                       R13 R32 K36 ["onActivated"]
      194 LOADN                            R33 2
      195 SETTABLEKS                       R33 R32 K23 ["LayoutOrder"]
      197 GETUPVAL                         R33 9
      198 GETUPVAL                         R35 10
      199 GETTABLEKS                       R34 R35 K39 ["Image"]
      201 DUPTABLE                         R35 K40 [{"tag", "Image"}]
      202 LOADK                            R36 K49 ["size-400-400 padding-xsmall"]
      203 SETTABLEKS                       R36 R35 K16 ["tag"]
      205 GETUPVAL                         R37 11
      206 GETTABLEKS                       R36 R37 K42 ["get"]
      208 GETUPVAL                         R39 11
      209 GETTABLEKS                       R38 R39 K43 ["AvailableImages"]
      211 GETTABLEKS                       R37 R38 K50 ["Cleanup"]
      213 CALL                             R36 1 1
      214 SETTABLEKS                       R36 R35 K39 ["Image"]
      216 CALL                             R33 2 -1
      217 CALL                             R30 -1 1
      218 SETTABLEKS                       R30 R29 K46 ["CleanupView"]
      220 CALL                             R26 3 1
      221 SETTABLEKS                       R26 R25 K28 ["CleanupButton"]
      223 CALL                             R22 3 1
      224 SETTABLEKS                       R22 R21 K19 ["ButtonView"]
      226 GETUPVAL                         R22 9
      227 GETUPVAL                         R24 10
      228 GETTABLEKS                       R23 R24 K15 ["View"]
      230 DUPTABLE                         R24 K24 [{"tag", "LayoutOrder"}]
      231 LOADK                            R25 K51 ["size-full-0 auto-y fill"]
      232 SETTABLEKS                       R25 R24 K16 ["tag"]
      234 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      236 CALL                             R25 1 1
      237 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      239 DUPTABLE                         R25 K53 [{"SearchBar"}]
      240 GETUPVAL                         R26 9
      241 GETUPVAL                         R28 10
      242 GETTABLEKS                       R27 R28 K54 ["TextInput"]
      244 DUPTABLE                         R28 K62 [{"label", "width", "size", "leadingIcon", "placeholder", "text", "onChanged"}]
      245 LOADK                            R29 K63 [""]
      246 SETTABLEKS                       R29 R28 K55 ["label"]
      248 GETIMPORT                        R29 K65 [UDim.new]
      250 LOADN                            R30 1
      251 LOADN                            R31 0
      252 CALL                             R29 2 1
      253 SETTABLEKS                       R29 R28 K56 ["width"]
      255 GETUPVAL                         R31 12
      256 GETTABLEKS                       R30 R31 K66 ["InputSize"]
      258 GETTABLEKS                       R29 R30 K67 ["XSmall"]
      260 SETTABLEKS                       R29 R28 K57 ["size"]
      262 GETUPVAL                         R31 12
      263 GETTABLEKS                       R30 R31 K68 ["IconName"]
      265 GETTABLEKS                       R29 R30 K69 ["MagnifyingGlass"]
      267 SETTABLEKS                       R29 R28 K58 ["leadingIcon"]
      269 LOADK                            R31 K8 ["ImportQueue"]
      270 LOADK                            R32 K52 ["SearchBar"]
      271 NAMECALL                         R29 R10 K10 ["getText"]
      273 CALL                             R29 3 1
      274 SETTABLEKS                       R29 R28 K59 ["placeholder"]
      276 SETTABLEKS                       R6 R28 K60 ["text"]
      278 SETTABLEKS                       R11 R28 K61 ["onChanged"]
      280 CALL                             R26 2 1
      281 SETTABLEKS                       R26 R25 K52 ["SearchBar"]
      283 CALL                             R22 3 1
      284 SETTABLEKS                       R22 R21 K20 ["SearchView"]
      286 GETUPVAL                         R22 9
      287 GETUPVAL                         R24 10
      288 GETTABLEKS                       R23 R24 K30 ["Tooltip"]
      290 DUPTABLE                         R24 K70 [{"title", "LayoutOrder"}]
      291 LOADK                            R27 K8 ["ImportQueue"]
      292 LOADK                            R28 K71 ["StartQueue2"]
      293 DUPTABLE                         R29 K74 [{"filesImporting", "totalFiles"}]
      294 FASTCALL1                        TOSTRING R2 ; [+3]
      295 MOVE                             R31 R2
      296 GETIMPORT                        R30 K76 [tostring]
      298 CALL                             R30 1 1
      299 SETTABLEKS                       R30 R29 K72 ["filesImporting"]
      301 FASTCALL1                        TOSTRING R3 ; [+3]
      302 MOVE                             R31 R3
      303 GETIMPORT                        R30 K76 [tostring]
      305 CALL                             R30 1 1
      306 SETTABLEKS                       R30 R29 K73 ["totalFiles"]
      308 NAMECALL                         R25 R10 K10 ["getText"]
      310 CALL                             R25 4 1
      311 SETTABLEKS                       R25 R24 K31 ["title"]
      313 NAMECALL                         R25 R17 K26 ["getNextOrder"]
      315 CALL                             R25 1 1
      316 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      318 NEWTABLE                         R25 0 1
      320 GETUPVAL                         R26 9
      321 GETUPVAL                         R28 10
      322 GETTABLEKS                       R27 R28 K77 ["Button"]
      324 DUPTABLE                         R28 K81 [{"tag", "testId", "size", "text", "variant", "onActivated", "isDisabled"}]
      325 LOADK                            R29 K82 ["size-full-0 auto-y"]
      326 SETTABLEKS                       R29 R28 K16 ["tag"]
      328 LOADK                            R29 K83 ["start-import-button"]
      329 SETTABLEKS                       R29 R28 K78 ["testId"]
      331 GETUPVAL                         R31 12
      332 GETTABLEKS                       R30 R31 K66 ["InputSize"]
      334 GETTABLEKS                       R29 R30 K67 ["XSmall"]
      336 SETTABLEKS                       R29 R28 K57 ["size"]
      338 SETTABLEKS                       R16 R28 K60 ["text"]
      340 GETUPVAL                         R31 12
      341 GETTABLEKS                       R30 R31 K84 ["ButtonVariant"]
      343 GETTABLEKS                       R29 R30 K85 ["Emphasis"]
      345 SETTABLEKS                       R29 R28 K79 ["variant"]
      347 SETTABLEKS                       R14 R28 K36 ["onActivated"]
      349 SETTABLEKS                       R15 R28 K80 ["isDisabled"]
      351 CALL                             R26 2 -1
      352 SETLIST                          R25 R26 -1 [1]
      354 CALL                             R22 3 1
      355 SETTABLEKS                       R22 R21 K21 ["StartImportButton"]
      357 CALL                             R18 3 -1
      358 RETURN                           R18 -1

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
