PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isPreviewRunning"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["current"]
       10 GETUPVAL                         R1 3
       11 JUMPIFEQ                         R0 R1 ; [+8]
       13 GETUPVAL                         R0 1
       14 LOADB                            R1 0
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R1 3
       18 SETTABLEKS                       R1 R0 K1 ["current"]
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+12]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["sourceAssetId"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K0 ["current"]
       11 JUMPIFEQ                         R0 R1 ; [+4]
       13 GETUPVAL                         R0 2
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K1 ["sourceAssetId"]
       20 SETTABLEKS                       R1 R0 K0 ["current"]
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createScriptForStarterPlayerAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createScriptForSelectedGraphAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["useContext"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R5 R6 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R6 R7 K2 ["Hooks"]
       31 GETTABLEKS                       R5 R6 K3 ["useTokens"]
       33 CALL                             R5 0 1
       34 GETUPVAL                         R8 6
       35 GETTABLEKS                       R7 R8 K4 ["ContextServices"]
       37 GETTABLEKS                       R6 R7 K5 ["Localization"]
       39 NAMECALL                         R6 R6 K6 ["use"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R3 K7 ["currentAnimationId"]
       44 GETTABLEKS                       R8 R3 K8 ["selectedGraphKey"]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K9 ["useState"]
       49 LOADB                            R10 0
       50 CALL                             R9 1 2
       51 JUMPIFEQKNIL                     R8 ; [+7]
       53 LOADB                            R11 1
       54 GETTABLEKS                       R13 R2 K10 ["playedGraphKeys"]
       56 GETTABLE                         R12 R13 R8
       57 JUMPIFEQKB                       R12 TRUE ; [+5]
       59 GETTABLEKS                       R11 R2 K11 ["wasGraphPlayed"]
       61 MOVE                             R12 R7
       62 CALL                             R11 1 1
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R12 R13 K12 ["useRef"]
       66 MOVE                             R13 R8
       67 CALL                             R12 1 1
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R13 R14 K13 ["useEffect"]
       71 NEWCLOSURE                       R14 P0
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R8
       76 NEWTABLE                         R15 0 2
       78 GETTABLEKS                       R16 R2 K14 ["isPreviewRunning"]
       80 MOVE                             R17 R8
       81 SETLIST                          R15 R16 2 [1]
       83 CALL                             R13 2 0
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R13 R14 K12 ["useRef"]
       87 GETTABLEKS                       R14 R3 K15 ["sourceAssetId"]
       89 CALL                             R13 1 1
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R14 R15 K13 ["useEffect"]
       93 NEWCLOSURE                       R15 P1
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R10
       97 NEWTABLE                         R16 0 1
       99 GETTABLEKS                       R17 R3 K15 ["sourceAssetId"]
      101 SETLIST                          R16 R17 1 [1]
      103 CALL                             R14 2 0
      104 GETUPVAL                         R15 0
      105 GETTABLEKS                       R14 R15 K16 ["useCallback"]
      107 NEWCLOSURE                       R15 P2
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R10
      110 NEWTABLE                         R16 0 1
      112 GETTABLEKS                       R17 R4 K17 ["createScriptForStarterPlayerAsync"]
      114 SETLIST                          R16 R17 1 [1]
      116 CALL                             R14 2 1
      117 GETUPVAL                         R16 0
      118 GETTABLEKS                       R15 R16 K16 ["useCallback"]
      120 NEWCLOSURE                       R16 P3
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R10
      123 NEWTABLE                         R17 0 1
      125 GETTABLEKS                       R18 R4 K18 ["createScriptForSelectedGraphAsync"]
      127 SETLIST                          R17 R18 1 [1]
      129 CALL                             R15 2 1
      130 GETUPVAL                         R17 0
      131 GETTABLEKS                       R16 R17 K16 ["useCallback"]
      133 NEWCLOSURE                       R17 P4
      134 CAPTURE                          VAL R10
      135 NEWTABLE                         R18 0 0
      137 CALL                             R16 2 1
      138 GETTABLEKS                       R17 R2 K19 ["previewHasEnded"]
      140 JUMPIFNOT                        R17 ; [+19]
      141 GETTABLEKS                       R18 R2 K14 ["isPreviewRunning"]
      143 NOT                              R17 R18
      144 JUMPIFNOT                        R17 ; [+15]
      145 GETUPVAL                         R18 7
      146 CALL                             R18 0 1
      147 JUMPIFNOT                        R18 ; [+3]
      148 GETTABLEKS                       R17 R2 K20 ["previewDataModelDidBootstrap"]
      150 JUMPIFNOT                        R17 ; [+9]
      151 LOADB                            R17 0
      152 JUMPIFEQKNIL                     R7 ; [+7]
      154 LOADB                            R17 0
      155 JUMPIFEQKS                       R7 K21 [""] ; [+4]
      157 NOT                              R17 R11
      158 JUMPIFNOT                        R17 ; [+1]
      159 NOT                              R17 R9
      160 GETTABLEKS                       R18 R1 K22 ["selectedTargetName"]
      162 GETUPVAL                         R20 0
      163 GETTABLEKS                       R19 R20 K23 ["createElement"]
      165 GETUPVAL                         R22 5
      166 GETTABLEKS                       R21 R22 K24 ["Popover"]
      168 GETTABLEKS                       R20 R21 K25 ["Root"]
      170 DUPTABLE                         R21 K27 [{"isOpen"}]
      171 SETTABLEKS                       R17 R21 K26 ["isOpen"]
      173 DUPTABLE                         R22 K30 [{"Anchor", "Content"}]
      174 GETUPVAL                         R24 0
      175 GETTABLEKS                       R23 R24 K23 ["createElement"]
      177 GETUPVAL                         R26 5
      178 GETTABLEKS                       R25 R26 K24 ["Popover"]
      180 GETTABLEKS                       R24 R25 K28 ["Anchor"]
      182 DUPTABLE                         R25 K32 [{"anchorRef"}]
      183 GETTABLEKS                       R26 R0 K31 ["anchorRef"]
      185 SETTABLEKS                       R26 R25 K31 ["anchorRef"]
      187 CALL                             R23 2 1
      188 SETTABLEKS                       R23 R22 K28 ["Anchor"]
      190 GETUPVAL                         R24 0
      191 GETTABLEKS                       R23 R24 K23 ["createElement"]
      193 GETUPVAL                         R26 5
      194 GETTABLEKS                       R25 R26 K24 ["Popover"]
      196 GETTABLEKS                       R24 R25 K29 ["Content"]
      198 DUPTABLE                         R25 K36 [{"align", "side", "sideOffset"}]
      199 GETUPVAL                         R29 5
      200 GETTABLEKS                       R28 R29 K37 ["Enums"]
      202 GETTABLEKS                       R27 R28 K38 ["PopoverAlign"]
      204 GETTABLEKS                       R26 R27 K39 ["Center"]
      206 SETTABLEKS                       R26 R25 K33 ["align"]
      208 GETUPVAL                         R29 5
      209 GETTABLEKS                       R28 R29 K37 ["Enums"]
      211 GETTABLEKS                       R27 R28 K40 ["PopoverSide"]
      213 GETTABLEKS                       R26 R27 K41 ["Bottom"]
      215 SETTABLEKS                       R26 R25 K34 ["side"]
      217 LOADN                            R26 232
      218 SETTABLEKS                       R26 R25 K35 ["sideOffset"]
      220 DUPTABLE                         R26 K43 [{"Body"}]
      221 GETUPVAL                         R28 0
      222 GETTABLEKS                       R27 R28 K23 ["createElement"]
      224 GETUPVAL                         R29 5
      225 GETTABLEKS                       R28 R29 K44 ["View"]
      227 DUPTABLE                         R29 K46 [{"tag"}]
      228 LOADK                            R30 K47 ["row gap-small auto-xy padding-large align-y-center radius-medium stroke-standard stroke-default"]
      229 SETTABLEKS                       R30 R29 K45 ["tag"]
      231 DUPTABLE                         R30 K53 [{"Icon", "Message", "StarterPlayerButton", "SelectionButton", "DismissButton"}]
      232 GETUPVAL                         R32 0
      233 GETTABLEKS                       R31 R32 K23 ["createElement"]
      235 GETUPVAL                         R33 5
      236 GETTABLEKS                       R32 R33 K48 ["Icon"]
      238 DUPTABLE                         R33 K58 [{"name", "size", "style", "LayoutOrder"}]
      239 GETUPVAL                         R37 5
      240 GETTABLEKS                       R36 R37 K37 ["Enums"]
      242 GETTABLEKS                       R35 R36 K59 ["IconName"]
      244 GETTABLEKS                       R34 R35 K60 ["CircleI"]
      246 SETTABLEKS                       R34 R33 K54 ["name"]
      248 GETUPVAL                         R37 5
      249 GETTABLEKS                       R36 R37 K37 ["Enums"]
      251 GETTABLEKS                       R35 R36 K61 ["IconSize"]
      253 GETTABLEKS                       R34 R35 K62 ["Small"]
      255 SETTABLEKS                       R34 R33 K55 ["size"]
      257 GETTABLEKS                       R37 R5 K63 ["Color"]
      259 GETTABLEKS                       R36 R37 K64 ["Extended"]
      261 GETTABLEKS                       R35 R36 K65 ["Blue"]
      263 GETTABLEKS                       R34 R35 K66 ["Blue_600"]
      265 SETTABLEKS                       R34 R33 K56 ["style"]
      267 LOADN                            R34 1
      268 SETTABLEKS                       R34 R33 K57 ["LayoutOrder"]
      270 CALL                             R31 2 1
      271 SETTABLEKS                       R31 R30 K48 ["Icon"]
      273 GETUPVAL                         R32 0
      274 GETTABLEKS                       R31 R32 K23 ["createElement"]
      276 GETUPVAL                         R33 5
      277 GETTABLEKS                       R32 R33 K67 ["Text"]
      279 DUPTABLE                         R33 K68 [{"tag", "Text", "LayoutOrder"}]
      280 LOADK                            R34 K69 ["auto-xy"]
      281 SETTABLEKS                       R34 R33 K45 ["tag"]
      283 LOADK                            R36 K70 ["Common"]
      284 LOADK                            R37 K71 ["AnimationEditor"]
      285 LOADK                            R38 K72 ["GraphNotPlayedBanner"]
      286 LOADK                            R39 K73 ["AnimationDidntPlay"]
      287 NAMECALL                         R34 R6 K74 ["getExternalText"]
      289 CALL                             R34 5 1
      290 SETTABLEKS                       R34 R33 K67 ["Text"]
      292 LOADN                            R34 2
      293 SETTABLEKS                       R34 R33 K57 ["LayoutOrder"]
      295 CALL                             R31 2 1
      296 SETTABLEKS                       R31 R30 K49 ["Message"]
      298 GETUPVAL                         R32 0
      299 GETTABLEKS                       R31 R32 K23 ["createElement"]
      301 GETUPVAL                         R33 5
      302 GETTABLEKS                       R32 R33 K75 ["Button"]
      304 DUPTABLE                         R33 K79 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      305 LOADK                            R36 K70 ["Common"]
      306 LOADK                            R37 K71 ["AnimationEditor"]
      307 LOADK                            R38 K72 ["GraphNotPlayedBanner"]
      308 LOADK                            R39 K80 ["OnStarterPlayer"]
      309 NAMECALL                         R34 R6 K74 ["getExternalText"]
      311 CALL                             R34 5 1
      312 SETTABLEKS                       R34 R33 K76 ["text"]
      314 GETUPVAL                         R37 5
      315 GETTABLEKS                       R36 R37 K37 ["Enums"]
      317 GETTABLEKS                       R35 R36 K81 ["InputSize"]
      319 GETTABLEKS                       R34 R35 K62 ["Small"]
      321 SETTABLEKS                       R34 R33 K55 ["size"]
      323 GETUPVAL                         R37 5
      324 GETTABLEKS                       R36 R37 K37 ["Enums"]
      326 GETTABLEKS                       R35 R36 K82 ["ButtonVariant"]
      328 GETTABLEKS                       R34 R35 K83 ["Standard"]
      330 SETTABLEKS                       R34 R33 K77 ["variant"]
      332 SETTABLEKS                       R14 R33 K78 ["onActivated"]
      334 LOADN                            R34 3
      335 SETTABLEKS                       R34 R33 K57 ["LayoutOrder"]
      337 CALL                             R31 2 1
      338 SETTABLEKS                       R31 R30 K50 ["StarterPlayerButton"]
      340 MOVE                             R31 R18
      341 JUMPIFNOT                        R31 ; [+43]
      342 GETUPVAL                         R32 0
      343 GETTABLEKS                       R31 R32 K23 ["createElement"]
      345 GETUPVAL                         R33 5
      346 GETTABLEKS                       R32 R33 K75 ["Button"]
      348 DUPTABLE                         R33 K79 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      349 LOADK                            R36 K70 ["Common"]
      350 LOADK                            R37 K71 ["AnimationEditor"]
      351 LOADK                            R38 K72 ["GraphNotPlayedBanner"]
      352 LOADK                            R39 K84 ["OnSelection"]
      353 DUPTABLE                         R40 K86 [{"selection"}]
      354 SETTABLEKS                       R18 R40 K85 ["selection"]
      356 NAMECALL                         R34 R6 K74 ["getExternalText"]
      358 CALL                             R34 6 1
      359 SETTABLEKS                       R34 R33 K76 ["text"]
      361 GETUPVAL                         R37 5
      362 GETTABLEKS                       R36 R37 K37 ["Enums"]
      364 GETTABLEKS                       R35 R36 K81 ["InputSize"]
      366 GETTABLEKS                       R34 R35 K62 ["Small"]
      368 SETTABLEKS                       R34 R33 K55 ["size"]
      370 GETUPVAL                         R37 5
      371 GETTABLEKS                       R36 R37 K37 ["Enums"]
      373 GETTABLEKS                       R35 R36 K82 ["ButtonVariant"]
      375 GETTABLEKS                       R34 R35 K83 ["Standard"]
      377 SETTABLEKS                       R34 R33 K77 ["variant"]
      379 SETTABLEKS                       R15 R33 K78 ["onActivated"]
      381 LOADN                            R34 4
      382 SETTABLEKS                       R34 R33 K57 ["LayoutOrder"]
      384 CALL                             R31 2 1
      385 SETTABLEKS                       R31 R30 K51 ["SelectionButton"]
      387 GETUPVAL                         R32 0
      388 GETTABLEKS                       R31 R32 K23 ["createElement"]
      390 GETUPVAL                         R33 5
      391 GETTABLEKS                       R32 R33 K75 ["Button"]
      393 DUPTABLE                         R33 K88 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      394 GETUPVAL                         R37 5
      395 GETTABLEKS                       R36 R37 K37 ["Enums"]
      397 GETTABLEKS                       R35 R36 K59 ["IconName"]
      399 GETTABLEKS                       R34 R35 K89 ["X"]
      401 SETTABLEKS                       R34 R33 K87 ["icon"]
      403 GETUPVAL                         R37 5
      404 GETTABLEKS                       R36 R37 K37 ["Enums"]
      406 GETTABLEKS                       R35 R36 K81 ["InputSize"]
      408 GETTABLEKS                       R34 R35 K62 ["Small"]
      410 SETTABLEKS                       R34 R33 K55 ["size"]
      412 GETUPVAL                         R37 5
      413 GETTABLEKS                       R36 R37 K37 ["Enums"]
      415 GETTABLEKS                       R35 R36 K82 ["ButtonVariant"]
      417 GETTABLEKS                       R34 R35 K90 ["Utility"]
      419 SETTABLEKS                       R34 R33 K77 ["variant"]
      421 SETTABLEKS                       R16 R33 K78 ["onActivated"]
      423 LOADN                            R34 5
      424 SETTABLEKS                       R34 R33 K57 ["LayoutOrder"]
      426 CALL                             R31 2 1
      427 SETTABLEKS                       R31 R30 K52 ["DismissButton"]
      429 CALL                             R27 3 1
      430 SETTABLEKS                       R27 R26 K42 ["Body"]
      432 CALL                             R23 3 1
      433 SETTABLEKS                       R23 R22 K29 ["Content"]
      435 CALL                             R19 3 -1
      436 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["getFFlagAnimGraphCheckPreviewBootstrap"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["CreateGraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["CreateScriptContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Contexts"]
       46 GETTABLEKS                       R7 R8 K14 ["GraphPlayedContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Contexts"]
       53 GETTABLEKS                       R8 R9 K15 ["NativeGraphContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Parent"]
       60 GETTABLEKS                       R9 R10 K16 ["React"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K17 [PROTO_7]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R1
       72 RETURN                           R9 1
