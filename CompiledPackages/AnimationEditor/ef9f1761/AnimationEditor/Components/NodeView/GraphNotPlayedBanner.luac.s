PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPreviewRunning"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["current"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+12]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["sourceAssetId"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["current"]
       11 JUMPIFEQ                         R0 R1 ; [+4]
       13 GETUPVAL                         R0 2
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K1 ["sourceAssetId"]
       20 SETTABLEKS                       R1 R0 K0 ["current"]
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createScriptForStarterPlayerAsync"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createScriptForSelectedGraphAsync"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R5 R5 K2 ["Hooks"]
       31 GETTABLEKS                       R5 R5 K3 ["useTokens"]
       33 CALL                             R5 0 1
       34 GETUPVAL                         R6 6
       35 GETTABLEKS                       R6 R6 K4 ["ContextServices"]
       37 GETTABLEKS                       R6 R6 K5 ["Localization"]
       39 NAMECALL                         R6 R6 K6 ["use"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R3 K7 ["selectedGraphKey"]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K8 ["useState"]
       47 LOADB                            R9 0
       48 CALL                             R8 1 2
       49 LOADB                            R10 0
       50 JUMPIFEQKNIL                     R7 ; [+8]
       52 GETTABLEKS                       R12 R2 K9 ["playedGraphKeys"]
       54 GETTABLE                         R11 R12 R7
       55 JUMPIFEQKB                       R11 TRUE ; [+2]
       57 LOADB                            R10 0 +1
       58 LOADB                            R10 1
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K10 ["useRef"]
       62 MOVE                             R12 R7
       63 CALL                             R11 1 1
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K11 ["useEffect"]
       67 NEWCLOSURE                       R13 P0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R7
       72 NEWTABLE                         R14 0 2
       74 GETTABLEKS                       R15 R2 K12 ["isPreviewRunning"]
       76 MOVE                             R16 R7
       77 SETLIST                          R14 R15 2 [1]
       79 CALL                             R12 2 0
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R12 R12 K10 ["useRef"]
       83 GETTABLEKS                       R13 R3 K13 ["sourceAssetId"]
       85 CALL                             R12 1 1
       86 GETUPVAL                         R13 0
       87 GETTABLEKS                       R13 R13 K11 ["useEffect"]
       89 NEWCLOSURE                       R14 P1
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R9
       93 NEWTABLE                         R15 0 1
       95 GETTABLEKS                       R16 R3 K13 ["sourceAssetId"]
       97 SETLIST                          R15 R16 1 [1]
       99 CALL                             R13 2 0
      100 GETUPVAL                         R13 0
      101 GETTABLEKS                       R13 R13 K14 ["useCallback"]
      103 NEWCLOSURE                       R14 P2
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R9
      106 NEWTABLE                         R15 0 1
      108 GETTABLEKS                       R16 R4 K15 ["createScriptForStarterPlayerAsync"]
      110 SETLIST                          R15 R16 1 [1]
      112 CALL                             R13 2 1
      113 GETUPVAL                         R14 0
      114 GETTABLEKS                       R14 R14 K14 ["useCallback"]
      116 NEWCLOSURE                       R15 P3
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R9
      119 NEWTABLE                         R16 0 1
      121 GETTABLEKS                       R17 R4 K16 ["createScriptForSelectedGraphAsync"]
      123 SETLIST                          R16 R17 1 [1]
      125 CALL                             R14 2 1
      126 GETUPVAL                         R15 0
      127 GETTABLEKS                       R15 R15 K14 ["useCallback"]
      129 NEWCLOSURE                       R16 P4
      130 CAPTURE                          VAL R9
      131 NEWTABLE                         R17 0 0
      133 CALL                             R15 2 1
      134 GETTABLEKS                       R16 R2 K17 ["previewHasEnded"]
      136 JUMPIFNOT                        R16 ; [+13]
      137 GETTABLEKS                       R17 R2 K12 ["isPreviewRunning"]
      139 NOT                              R16 R17
      140 JUMPIFNOT                        R16 ; [+9]
      141 GETTABLEKS                       R16 R2 K18 ["previewDataModelDidBootstrap"]
      143 JUMPIFNOT                        R16 ; [+6]
      144 LOADB                            R16 0
      145 JUMPIFEQKNIL                     R7 ; [+4]
      147 NOT                              R16 R10
      148 JUMPIFNOT                        R16 ; [+1]
      149 NOT                              R16 R8
      150 GETTABLEKS                       R17 R1 K19 ["selectedTargetName"]
      152 GETUPVAL                         R18 0
      153 GETTABLEKS                       R18 R18 K20 ["createElement"]
      155 GETUPVAL                         R19 5
      156 GETTABLEKS                       R19 R19 K21 ["Popover"]
      158 GETTABLEKS                       R19 R19 K22 ["Root"]
      160 DUPTABLE                         R20 K24 [{"isOpen"}]
      161 SETTABLEKS                       R16 R20 K23 ["isOpen"]
      163 DUPTABLE                         R21 K27 [{"Anchor", "Content"}]
      164 GETUPVAL                         R22 0
      165 GETTABLEKS                       R22 R22 K20 ["createElement"]
      167 GETUPVAL                         R23 5
      168 GETTABLEKS                       R23 R23 K21 ["Popover"]
      170 GETTABLEKS                       R23 R23 K25 ["Anchor"]
      172 DUPTABLE                         R24 K29 [{"anchorRef"}]
      173 GETTABLEKS                       R25 R0 K28 ["anchorRef"]
      175 SETTABLEKS                       R25 R24 K28 ["anchorRef"]
      177 CALL                             R22 2 1
      178 SETTABLEKS                       R22 R21 K25 ["Anchor"]
      180 GETUPVAL                         R22 0
      181 GETTABLEKS                       R22 R22 K20 ["createElement"]
      183 GETUPVAL                         R23 5
      184 GETTABLEKS                       R23 R23 K21 ["Popover"]
      186 GETTABLEKS                       R23 R23 K26 ["Content"]
      188 DUPTABLE                         R24 K34 [{["align"], ["side"], ["sideOffset"] = -24}]
      189 GETUPVAL                         R25 5
      190 GETTABLEKS                       R25 R25 K35 ["Enums"]
      192 GETTABLEKS                       R25 R25 K36 ["PopoverAlign"]
      194 GETTABLEKS                       R25 R25 K37 ["Center"]
      196 SETTABLEKS                       R25 R24 K30 ["align"]
      198 GETUPVAL                         R25 5
      199 GETTABLEKS                       R25 R25 K35 ["Enums"]
      201 GETTABLEKS                       R25 R25 K38 ["PopoverSide"]
      203 GETTABLEKS                       R25 R25 K39 ["Bottom"]
      205 SETTABLEKS                       R25 R24 K31 ["side"]
      207 DUPTABLE                         R25 K41 [{"Body"}]
      208 GETUPVAL                         R26 0
      209 GETTABLEKS                       R26 R26 K20 ["createElement"]
      211 GETUPVAL                         R27 5
      212 GETTABLEKS                       R27 R27 K42 ["View"]
      214 DUPTABLE                         R28 K45 [{["tag"] = "row align-y-center gap-small auto-xy padding-large stroke-standard stroke-default radius-medium"}]
      215 DUPTABLE                         R29 K51 [{"Icon", "Message", "StarterPlayerButton", "SelectionButton", "DismissButton"}]
      216 GETUPVAL                         R30 0
      217 GETTABLEKS                       R30 R30 K20 ["createElement"]
      219 GETUPVAL                         R31 5
      220 GETTABLEKS                       R31 R31 K46 ["Icon"]
      222 DUPTABLE                         R32 K57 [{["name"], ["size"], ["style"], ["LayoutOrder"] = 1}]
      223 GETUPVAL                         R33 5
      224 GETTABLEKS                       R33 R33 K35 ["Enums"]
      226 GETTABLEKS                       R33 R33 K58 ["IconName"]
      228 GETTABLEKS                       R33 R33 K59 ["CircleI"]
      230 SETTABLEKS                       R33 R32 K52 ["name"]
      232 GETUPVAL                         R33 5
      233 GETTABLEKS                       R33 R33 K35 ["Enums"]
      235 GETTABLEKS                       R33 R33 K60 ["IconSize"]
      237 GETTABLEKS                       R33 R33 K61 ["Small"]
      239 SETTABLEKS                       R33 R32 K53 ["size"]
      241 GETTABLEKS                       R33 R5 K62 ["Color"]
      243 GETTABLEKS                       R33 R33 K63 ["Extended"]
      245 GETTABLEKS                       R33 R33 K64 ["Blue"]
      247 GETTABLEKS                       R33 R33 K65 ["Blue_600"]
      249 SETTABLEKS                       R33 R32 K54 ["style"]
      251 CALL                             R30 2 1
      252 SETTABLEKS                       R30 R29 K46 ["Icon"]
      254 GETUPVAL                         R30 0
      255 GETTABLEKS                       R30 R30 K20 ["createElement"]
      257 GETUPVAL                         R31 5
      258 GETTABLEKS                       R31 R31 K66 ["Text"]
      260 DUPTABLE                         R32 K69 [{["tag"] = "auto-xy", ["Text"], ["LayoutOrder"] = 2}]
      261 LOADK                            R35 K70 ["Common"]
      262 LOADK                            R36 K71 ["AnimationEditor"]
      263 LOADK                            R37 K72 ["GraphNotPlayedBanner"]
      264 LOADK                            R38 K73 ["AnimationDidntPlay"]
      265 NAMECALL                         R33 R6 K74 ["getExternalText"]
      267 CALL                             R33 5 1
      268 SETTABLEKS                       R33 R32 K66 ["Text"]
      270 CALL                             R30 2 1
      271 SETTABLEKS                       R30 R29 K47 ["Message"]
      273 GETUPVAL                         R30 0
      274 GETTABLEKS                       R30 R30 K20 ["createElement"]
      276 GETUPVAL                         R31 5
      277 GETTABLEKS                       R31 R31 K75 ["Button"]
      279 DUPTABLE                         R32 K80 [{["text"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 3}]
      280 LOADK                            R35 K70 ["Common"]
      281 LOADK                            R36 K71 ["AnimationEditor"]
      282 LOADK                            R37 K72 ["GraphNotPlayedBanner"]
      283 LOADK                            R38 K81 ["OnStarterPlayer"]
      284 NAMECALL                         R33 R6 K74 ["getExternalText"]
      286 CALL                             R33 5 1
      287 SETTABLEKS                       R33 R32 K76 ["text"]
      289 GETUPVAL                         R33 5
      290 GETTABLEKS                       R33 R33 K35 ["Enums"]
      292 GETTABLEKS                       R33 R33 K82 ["InputSize"]
      294 GETTABLEKS                       R33 R33 K61 ["Small"]
      296 SETTABLEKS                       R33 R32 K53 ["size"]
      298 GETUPVAL                         R33 5
      299 GETTABLEKS                       R33 R33 K35 ["Enums"]
      301 GETTABLEKS                       R33 R33 K83 ["ButtonVariant"]
      303 GETTABLEKS                       R33 R33 K84 ["Standard"]
      305 SETTABLEKS                       R33 R32 K77 ["variant"]
      307 SETTABLEKS                       R13 R32 K78 ["onActivated"]
      309 CALL                             R30 2 1
      310 SETTABLEKS                       R30 R29 K48 ["StarterPlayerButton"]
      312 MOVE                             R30 R17
      313 JUMPIFNOT                        R30 ; [+40]
      314 GETUPVAL                         R30 0
      315 GETTABLEKS                       R30 R30 K20 ["createElement"]
      317 GETUPVAL                         R31 5
      318 GETTABLEKS                       R31 R31 K75 ["Button"]
      320 DUPTABLE                         R32 K86 [{["text"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 4}]
      321 LOADK                            R35 K70 ["Common"]
      322 LOADK                            R36 K71 ["AnimationEditor"]
      323 LOADK                            R37 K72 ["GraphNotPlayedBanner"]
      324 LOADK                            R38 K87 ["OnSelection"]
      325 DUPTABLE                         R39 K89 [{"selection"}]
      326 SETTABLEKS                       R17 R39 K88 ["selection"]
      328 NAMECALL                         R33 R6 K74 ["getExternalText"]
      330 CALL                             R33 6 1
      331 SETTABLEKS                       R33 R32 K76 ["text"]
      333 GETUPVAL                         R33 5
      334 GETTABLEKS                       R33 R33 K35 ["Enums"]
      336 GETTABLEKS                       R33 R33 K82 ["InputSize"]
      338 GETTABLEKS                       R33 R33 K61 ["Small"]
      340 SETTABLEKS                       R33 R32 K53 ["size"]
      342 GETUPVAL                         R33 5
      343 GETTABLEKS                       R33 R33 K35 ["Enums"]
      345 GETTABLEKS                       R33 R33 K83 ["ButtonVariant"]
      347 GETTABLEKS                       R33 R33 K84 ["Standard"]
      349 SETTABLEKS                       R33 R32 K77 ["variant"]
      351 SETTABLEKS                       R14 R32 K78 ["onActivated"]
      353 CALL                             R30 2 1
      354 SETTABLEKS                       R30 R29 K49 ["SelectionButton"]
      356 GETUPVAL                         R30 0
      357 GETTABLEKS                       R30 R30 K20 ["createElement"]
      359 GETUPVAL                         R31 5
      360 GETTABLEKS                       R31 R31 K75 ["Button"]
      362 DUPTABLE                         R32 K92 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 5}]
      363 GETUPVAL                         R33 5
      364 GETTABLEKS                       R33 R33 K35 ["Enums"]
      366 GETTABLEKS                       R33 R33 K58 ["IconName"]
      368 GETTABLEKS                       R33 R33 K93 ["X"]
      370 SETTABLEKS                       R33 R32 K90 ["icon"]
      372 GETUPVAL                         R33 5
      373 GETTABLEKS                       R33 R33 K35 ["Enums"]
      375 GETTABLEKS                       R33 R33 K82 ["InputSize"]
      377 GETTABLEKS                       R33 R33 K61 ["Small"]
      379 SETTABLEKS                       R33 R32 K53 ["size"]
      381 GETUPVAL                         R33 5
      382 GETTABLEKS                       R33 R33 K35 ["Enums"]
      384 GETTABLEKS                       R33 R33 K83 ["ButtonVariant"]
      386 GETTABLEKS                       R33 R33 K94 ["Utility"]
      388 SETTABLEKS                       R33 R32 K77 ["variant"]
      390 SETTABLEKS                       R15 R32 K78 ["onActivated"]
      392 CALL                             R30 2 1
      393 SETTABLEKS                       R30 R29 K50 ["DismissButton"]
      395 CALL                             R26 3 1
      396 SETTABLEKS                       R26 R25 K40 ["Body"]
      398 CALL                             R22 3 1
      399 SETTABLEKS                       R22 R21 K26 ["Content"]
      401 CALL                             R18 3 -1
      402 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["CreateGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["CreateScriptContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K12 ["GraphPlayedContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K13 ["NativeGraphContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["React"]
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
