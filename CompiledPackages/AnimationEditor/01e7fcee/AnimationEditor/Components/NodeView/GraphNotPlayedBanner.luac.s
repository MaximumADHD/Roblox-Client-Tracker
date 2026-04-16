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
      140 JUMPIFNOT                        R17 ; [+13]
      141 GETTABLEKS                       R18 R2 K14 ["isPreviewRunning"]
      143 NOT                              R17 R18
      144 JUMPIFNOT                        R17 ; [+9]
      145 LOADB                            R17 0
      146 JUMPIFEQKNIL                     R7 ; [+7]
      148 LOADB                            R17 0
      149 JUMPIFEQKS                       R7 K20 [""] ; [+4]
      151 NOT                              R17 R11
      152 JUMPIFNOT                        R17 ; [+1]
      153 NOT                              R17 R9
      154 GETTABLEKS                       R18 R1 K21 ["selectedTargetName"]
      156 GETUPVAL                         R20 0
      157 GETTABLEKS                       R19 R20 K22 ["createElement"]
      159 GETUPVAL                         R22 5
      160 GETTABLEKS                       R21 R22 K23 ["Popover"]
      162 GETTABLEKS                       R20 R21 K24 ["Root"]
      164 DUPTABLE                         R21 K26 [{"isOpen"}]
      165 SETTABLEKS                       R17 R21 K25 ["isOpen"]
      167 DUPTABLE                         R22 K29 [{"Anchor", "Content"}]
      168 GETUPVAL                         R24 0
      169 GETTABLEKS                       R23 R24 K22 ["createElement"]
      171 GETUPVAL                         R26 5
      172 GETTABLEKS                       R25 R26 K23 ["Popover"]
      174 GETTABLEKS                       R24 R25 K27 ["Anchor"]
      176 DUPTABLE                         R25 K31 [{"anchorRef"}]
      177 GETTABLEKS                       R26 R0 K30 ["anchorRef"]
      179 SETTABLEKS                       R26 R25 K30 ["anchorRef"]
      181 CALL                             R23 2 1
      182 SETTABLEKS                       R23 R22 K27 ["Anchor"]
      184 GETUPVAL                         R24 0
      185 GETTABLEKS                       R23 R24 K22 ["createElement"]
      187 GETUPVAL                         R26 5
      188 GETTABLEKS                       R25 R26 K23 ["Popover"]
      190 GETTABLEKS                       R24 R25 K28 ["Content"]
      192 DUPTABLE                         R25 K35 [{"align", "side", "sideOffset"}]
      193 GETUPVAL                         R29 5
      194 GETTABLEKS                       R28 R29 K36 ["Enums"]
      196 GETTABLEKS                       R27 R28 K37 ["PopoverAlign"]
      198 GETTABLEKS                       R26 R27 K38 ["Center"]
      200 SETTABLEKS                       R26 R25 K32 ["align"]
      202 GETUPVAL                         R29 5
      203 GETTABLEKS                       R28 R29 K36 ["Enums"]
      205 GETTABLEKS                       R27 R28 K39 ["PopoverSide"]
      207 GETTABLEKS                       R26 R27 K40 ["Bottom"]
      209 SETTABLEKS                       R26 R25 K33 ["side"]
      211 LOADN                            R26 232
      212 SETTABLEKS                       R26 R25 K34 ["sideOffset"]
      214 DUPTABLE                         R26 K42 [{"Body"}]
      215 GETUPVAL                         R28 0
      216 GETTABLEKS                       R27 R28 K22 ["createElement"]
      218 GETUPVAL                         R29 5
      219 GETTABLEKS                       R28 R29 K43 ["View"]
      221 DUPTABLE                         R29 K45 [{"tag"}]
      222 LOADK                            R30 K46 ["row gap-small auto-xy padding-large align-y-center radius-medium stroke-standard stroke-default"]
      223 SETTABLEKS                       R30 R29 K44 ["tag"]
      225 DUPTABLE                         R30 K52 [{"Icon", "Message", "StarterPlayerButton", "SelectionButton", "DismissButton"}]
      226 GETUPVAL                         R32 0
      227 GETTABLEKS                       R31 R32 K22 ["createElement"]
      229 GETUPVAL                         R33 5
      230 GETTABLEKS                       R32 R33 K47 ["Icon"]
      232 DUPTABLE                         R33 K57 [{"name", "size", "style", "LayoutOrder"}]
      233 GETUPVAL                         R37 5
      234 GETTABLEKS                       R36 R37 K36 ["Enums"]
      236 GETTABLEKS                       R35 R36 K58 ["IconName"]
      238 GETTABLEKS                       R34 R35 K59 ["CircleI"]
      240 SETTABLEKS                       R34 R33 K53 ["name"]
      242 GETUPVAL                         R37 5
      243 GETTABLEKS                       R36 R37 K36 ["Enums"]
      245 GETTABLEKS                       R35 R36 K60 ["IconSize"]
      247 GETTABLEKS                       R34 R35 K61 ["Small"]
      249 SETTABLEKS                       R34 R33 K54 ["size"]
      251 GETTABLEKS                       R37 R5 K62 ["Color"]
      253 GETTABLEKS                       R36 R37 K63 ["Extended"]
      255 GETTABLEKS                       R35 R36 K64 ["Blue"]
      257 GETTABLEKS                       R34 R35 K65 ["Blue_600"]
      259 SETTABLEKS                       R34 R33 K55 ["style"]
      261 LOADN                            R34 1
      262 SETTABLEKS                       R34 R33 K56 ["LayoutOrder"]
      264 CALL                             R31 2 1
      265 SETTABLEKS                       R31 R30 K47 ["Icon"]
      267 GETUPVAL                         R32 0
      268 GETTABLEKS                       R31 R32 K22 ["createElement"]
      270 GETUPVAL                         R33 5
      271 GETTABLEKS                       R32 R33 K66 ["Text"]
      273 DUPTABLE                         R33 K67 [{"tag", "Text", "LayoutOrder"}]
      274 LOADK                            R34 K68 ["auto-xy"]
      275 SETTABLEKS                       R34 R33 K44 ["tag"]
      277 LOADK                            R36 K69 ["Common"]
      278 LOADK                            R37 K70 ["AnimationEditor"]
      279 LOADK                            R38 K71 ["GraphNotPlayedBanner"]
      280 LOADK                            R39 K72 ["AnimationDidntPlay"]
      281 NAMECALL                         R34 R6 K73 ["getExternalText"]
      283 CALL                             R34 5 1
      284 SETTABLEKS                       R34 R33 K66 ["Text"]
      286 LOADN                            R34 2
      287 SETTABLEKS                       R34 R33 K56 ["LayoutOrder"]
      289 CALL                             R31 2 1
      290 SETTABLEKS                       R31 R30 K48 ["Message"]
      292 GETUPVAL                         R32 0
      293 GETTABLEKS                       R31 R32 K22 ["createElement"]
      295 GETUPVAL                         R33 5
      296 GETTABLEKS                       R32 R33 K74 ["Button"]
      298 DUPTABLE                         R33 K78 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      299 LOADK                            R36 K69 ["Common"]
      300 LOADK                            R37 K70 ["AnimationEditor"]
      301 LOADK                            R38 K71 ["GraphNotPlayedBanner"]
      302 LOADK                            R39 K79 ["OnStarterPlayer"]
      303 NAMECALL                         R34 R6 K73 ["getExternalText"]
      305 CALL                             R34 5 1
      306 SETTABLEKS                       R34 R33 K75 ["text"]
      308 GETUPVAL                         R37 5
      309 GETTABLEKS                       R36 R37 K36 ["Enums"]
      311 GETTABLEKS                       R35 R36 K80 ["InputSize"]
      313 GETTABLEKS                       R34 R35 K61 ["Small"]
      315 SETTABLEKS                       R34 R33 K54 ["size"]
      317 GETUPVAL                         R37 5
      318 GETTABLEKS                       R36 R37 K36 ["Enums"]
      320 GETTABLEKS                       R35 R36 K81 ["ButtonVariant"]
      322 GETTABLEKS                       R34 R35 K82 ["Standard"]
      324 SETTABLEKS                       R34 R33 K76 ["variant"]
      326 SETTABLEKS                       R14 R33 K77 ["onActivated"]
      328 LOADN                            R34 3
      329 SETTABLEKS                       R34 R33 K56 ["LayoutOrder"]
      331 CALL                             R31 2 1
      332 SETTABLEKS                       R31 R30 K49 ["StarterPlayerButton"]
      334 MOVE                             R31 R18
      335 JUMPIFNOT                        R31 ; [+43]
      336 GETUPVAL                         R32 0
      337 GETTABLEKS                       R31 R32 K22 ["createElement"]
      339 GETUPVAL                         R33 5
      340 GETTABLEKS                       R32 R33 K74 ["Button"]
      342 DUPTABLE                         R33 K78 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      343 LOADK                            R36 K69 ["Common"]
      344 LOADK                            R37 K70 ["AnimationEditor"]
      345 LOADK                            R38 K71 ["GraphNotPlayedBanner"]
      346 LOADK                            R39 K83 ["OnSelection"]
      347 DUPTABLE                         R40 K85 [{"selection"}]
      348 SETTABLEKS                       R18 R40 K84 ["selection"]
      350 NAMECALL                         R34 R6 K73 ["getExternalText"]
      352 CALL                             R34 6 1
      353 SETTABLEKS                       R34 R33 K75 ["text"]
      355 GETUPVAL                         R37 5
      356 GETTABLEKS                       R36 R37 K36 ["Enums"]
      358 GETTABLEKS                       R35 R36 K80 ["InputSize"]
      360 GETTABLEKS                       R34 R35 K61 ["Small"]
      362 SETTABLEKS                       R34 R33 K54 ["size"]
      364 GETUPVAL                         R37 5
      365 GETTABLEKS                       R36 R37 K36 ["Enums"]
      367 GETTABLEKS                       R35 R36 K81 ["ButtonVariant"]
      369 GETTABLEKS                       R34 R35 K82 ["Standard"]
      371 SETTABLEKS                       R34 R33 K76 ["variant"]
      373 SETTABLEKS                       R15 R33 K77 ["onActivated"]
      375 LOADN                            R34 4
      376 SETTABLEKS                       R34 R33 K56 ["LayoutOrder"]
      378 CALL                             R31 2 1
      379 SETTABLEKS                       R31 R30 K50 ["SelectionButton"]
      381 GETUPVAL                         R32 0
      382 GETTABLEKS                       R31 R32 K22 ["createElement"]
      384 GETUPVAL                         R33 5
      385 GETTABLEKS                       R32 R33 K74 ["Button"]
      387 DUPTABLE                         R33 K87 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      388 GETUPVAL                         R37 5
      389 GETTABLEKS                       R36 R37 K36 ["Enums"]
      391 GETTABLEKS                       R35 R36 K58 ["IconName"]
      393 GETTABLEKS                       R34 R35 K88 ["X"]
      395 SETTABLEKS                       R34 R33 K86 ["icon"]
      397 GETUPVAL                         R37 5
      398 GETTABLEKS                       R36 R37 K36 ["Enums"]
      400 GETTABLEKS                       R35 R36 K80 ["InputSize"]
      402 GETTABLEKS                       R34 R35 K61 ["Small"]
      404 SETTABLEKS                       R34 R33 K54 ["size"]
      406 GETUPVAL                         R37 5
      407 GETTABLEKS                       R36 R37 K36 ["Enums"]
      409 GETTABLEKS                       R35 R36 K81 ["ButtonVariant"]
      411 GETTABLEKS                       R34 R35 K89 ["Utility"]
      413 SETTABLEKS                       R34 R33 K76 ["variant"]
      415 SETTABLEKS                       R16 R33 K77 ["onActivated"]
      417 LOADN                            R34 5
      418 SETTABLEKS                       R34 R33 K56 ["LayoutOrder"]
      420 CALL                             R31 2 1
      421 SETTABLEKS                       R31 R30 K51 ["DismissButton"]
      423 CALL                             R27 3 1
      424 SETTABLEKS                       R27 R26 K41 ["Body"]
      426 CALL                             R23 3 1
      427 SETTABLEKS                       R23 R22 K28 ["Content"]
      429 CALL                             R19 3 -1
      430 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["CreateGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K8 ["CreateScriptContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K12 ["GraphPlayedContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       46 GETTABLEKS                       R7 R8 K13 ["NativeGraphContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K9 ["Parent"]
       53 GETTABLEKS                       R8 R9 K14 ["React"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K15 [PROTO_7]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 RETURN                           R8 1
