PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isPreviewRunning"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["current"]
       14 GETUPVAL                         R0 4
       15 LOADB                            R1 0
       16 SETTABLEKS                       R1 R0 K1 ["current"]
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R0 R1 K2 ["previewHasEnded"]
       22 JUMPIFNOT                        R0 ; [+18]
       23 GETUPVAL                         R0 5
       24 JUMPIFNOTEQKNIL                  R0 ; [+16]
       26 GETUPVAL                         R0 6
       27 JUMPIFEQKNIL                     R0 ; [+9]
       29 GETUPVAL                         R0 2
       30 GETUPVAL                         R1 6
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 3
       33 GETUPVAL                         R1 7
       34 SETTABLEKS                       R1 R0 K1 ["current"]
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 4
       38 LOADB                            R1 1
       39 SETTABLEKS                       R1 R0 K1 ["current"]
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+12]
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K0 ["current"]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 1
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 3
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K0 ["current"]
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 JUMPIFEQ                         R0 R1 ; [+4]
       11 GETUPVAL                         R0 2
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createScriptForStarterPlayerAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createScriptForSelectedGraphAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
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
       44 GETTABLEKS                       R8 R3 K8 ["selectedGraphInstanceId"]
       46 GETTABLEKS                       R9 R2 K9 ["wasGraphPlayed"]
       48 MOVE                             R10 R7
       49 CALL                             R9 1 1
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R10 R11 K10 ["useState"]
       53 LOADB                            R11 0
       54 CALL                             R10 1 2
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R12 R13 K10 ["useState"]
       58 LOADNIL                          R13
       59 CALL                             R12 1 2
       60 GETUPVAL                         R15 0
       61 GETTABLEKS                       R14 R15 K11 ["useRef"]
       63 LOADNIL                          R15
       64 CALL                             R14 1 1
       65 GETUPVAL                         R16 0
       66 GETTABLEKS                       R15 R16 K11 ["useRef"]
       68 LOADB                            R16 0
       69 CALL                             R15 1 1
       70 GETUPVAL                         R17 0
       71 GETTABLEKS                       R16 R17 K12 ["useEffect"]
       73 NEWCLOSURE                       R17 P0
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 NEWTABLE                         R18 0 5
       84 GETTABLEKS                       R19 R2 K13 ["isPreviewRunning"]
       86 GETTABLEKS                       R20 R2 K14 ["previewHasEnded"]
       88 MOVE                             R21 R8
       89 MOVE                             R22 R12
       90 MOVE                             R23 R7
       91 SETLIST                          R18 R19 5 [1]
       93 CALL                             R16 2 0
       94 GETUPVAL                         R17 0
       95 GETTABLEKS                       R16 R17 K12 ["useEffect"]
       97 NEWCLOSURE                       R17 P1
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R7
      103 NEWTABLE                         R18 0 2
      105 MOVE                             R19 R8
      106 MOVE                             R20 R7
      107 SETLIST                          R18 R19 2 [1]
      109 CALL                             R16 2 0
      110 GETUPVAL                         R17 0
      111 GETTABLEKS                       R16 R17 K12 ["useEffect"]
      113 NEWCLOSURE                       R17 P2
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R11
      117 NEWTABLE                         R18 0 1
      119 MOVE                             R19 R7
      120 SETLIST                          R18 R19 1 [1]
      122 CALL                             R16 2 0
      123 LOADB                            R16 0
      124 JUMPIFEQKNIL                     R8 ; [+5]
      126 JUMPIFEQ                         R8 R12 ; [+2]
      128 LOADB                            R16 0 +1
      129 LOADB                            R16 1
      130 GETUPVAL                         R18 0
      131 GETTABLEKS                       R17 R18 K15 ["useCallback"]
      133 NEWCLOSURE                       R18 P3
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R11
      136 NEWTABLE                         R19 0 1
      138 GETTABLEKS                       R20 R4 K16 ["createScriptForStarterPlayerAsync"]
      140 SETLIST                          R19 R20 1 [1]
      142 CALL                             R17 2 1
      143 GETUPVAL                         R19 0
      144 GETTABLEKS                       R18 R19 K15 ["useCallback"]
      146 NEWCLOSURE                       R19 P4
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R11
      149 NEWTABLE                         R20 0 1
      151 GETTABLEKS                       R21 R4 K17 ["createScriptForSelectedGraphAsync"]
      153 SETLIST                          R20 R21 1 [1]
      155 CALL                             R18 2 1
      156 GETUPVAL                         R20 0
      157 GETTABLEKS                       R19 R20 K15 ["useCallback"]
      159 NEWCLOSURE                       R20 P5
      160 CAPTURE                          VAL R11
      161 NEWTABLE                         R21 0 0
      163 CALL                             R19 2 1
      164 GETTABLEKS                       R20 R2 K14 ["previewHasEnded"]
      166 JUMPIFNOT                        R20 ; [+15]
      167 GETTABLEKS                       R21 R2 K13 ["isPreviewRunning"]
      169 NOT                              R20 R21
      170 JUMPIFNOT                        R20 ; [+11]
      171 LOADB                            R20 0
      172 JUMPIFEQKNIL                     R7 ; [+9]
      174 LOADB                            R20 0
      175 JUMPIFEQKS                       R7 K18 [""] ; [+6]
      177 MOVE                             R20 R16
      178 JUMPIFNOT                        R20 ; [+3]
      179 NOT                              R20 R9
      180 JUMPIFNOT                        R20 ; [+1]
      181 NOT                              R20 R10
      182 GETTABLEKS                       R21 R1 K19 ["selectedTargetName"]
      184 GETUPVAL                         R23 0
      185 GETTABLEKS                       R22 R23 K20 ["createElement"]
      187 GETUPVAL                         R25 5
      188 GETTABLEKS                       R24 R25 K21 ["Popover"]
      190 GETTABLEKS                       R23 R24 K22 ["Root"]
      192 DUPTABLE                         R24 K24 [{"isOpen"}]
      193 SETTABLEKS                       R20 R24 K23 ["isOpen"]
      195 DUPTABLE                         R25 K27 [{"Anchor", "Content"}]
      196 GETUPVAL                         R27 0
      197 GETTABLEKS                       R26 R27 K20 ["createElement"]
      199 GETUPVAL                         R29 5
      200 GETTABLEKS                       R28 R29 K21 ["Popover"]
      202 GETTABLEKS                       R27 R28 K25 ["Anchor"]
      204 DUPTABLE                         R28 K29 [{"anchorRef"}]
      205 GETTABLEKS                       R29 R0 K28 ["anchorRef"]
      207 SETTABLEKS                       R29 R28 K28 ["anchorRef"]
      209 CALL                             R26 2 1
      210 SETTABLEKS                       R26 R25 K25 ["Anchor"]
      212 GETUPVAL                         R27 0
      213 GETTABLEKS                       R26 R27 K20 ["createElement"]
      215 GETUPVAL                         R29 5
      216 GETTABLEKS                       R28 R29 K21 ["Popover"]
      218 GETTABLEKS                       R27 R28 K26 ["Content"]
      220 DUPTABLE                         R28 K33 [{"align", "side", "sideOffset"}]
      221 GETUPVAL                         R32 5
      222 GETTABLEKS                       R31 R32 K34 ["Enums"]
      224 GETTABLEKS                       R30 R31 K35 ["PopoverAlign"]
      226 GETTABLEKS                       R29 R30 K36 ["Center"]
      228 SETTABLEKS                       R29 R28 K30 ["align"]
      230 GETUPVAL                         R32 5
      231 GETTABLEKS                       R31 R32 K34 ["Enums"]
      233 GETTABLEKS                       R30 R31 K37 ["PopoverSide"]
      235 GETTABLEKS                       R29 R30 K38 ["Bottom"]
      237 SETTABLEKS                       R29 R28 K31 ["side"]
      239 LOADN                            R29 232
      240 SETTABLEKS                       R29 R28 K32 ["sideOffset"]
      242 DUPTABLE                         R29 K40 [{"Body"}]
      243 GETUPVAL                         R31 0
      244 GETTABLEKS                       R30 R31 K20 ["createElement"]
      246 GETUPVAL                         R32 5
      247 GETTABLEKS                       R31 R32 K41 ["View"]
      249 DUPTABLE                         R32 K43 [{"tag"}]
      250 LOADK                            R33 K44 ["row gap-small auto-xy padding-large align-y-center radius-medium stroke-standard stroke-default"]
      251 SETTABLEKS                       R33 R32 K42 ["tag"]
      253 DUPTABLE                         R33 K50 [{"Icon", "Message", "StarterPlayerButton", "SelectionButton", "DismissButton"}]
      254 GETUPVAL                         R35 0
      255 GETTABLEKS                       R34 R35 K20 ["createElement"]
      257 GETUPVAL                         R36 5
      258 GETTABLEKS                       R35 R36 K45 ["Icon"]
      260 DUPTABLE                         R36 K55 [{"name", "size", "style", "LayoutOrder"}]
      261 GETUPVAL                         R40 5
      262 GETTABLEKS                       R39 R40 K34 ["Enums"]
      264 GETTABLEKS                       R38 R39 K56 ["IconName"]
      266 GETTABLEKS                       R37 R38 K57 ["CircleI"]
      268 SETTABLEKS                       R37 R36 K51 ["name"]
      270 GETUPVAL                         R40 5
      271 GETTABLEKS                       R39 R40 K34 ["Enums"]
      273 GETTABLEKS                       R38 R39 K58 ["IconSize"]
      275 GETTABLEKS                       R37 R38 K59 ["Small"]
      277 SETTABLEKS                       R37 R36 K52 ["size"]
      279 GETTABLEKS                       R40 R5 K60 ["Color"]
      281 GETTABLEKS                       R39 R40 K61 ["Extended"]
      283 GETTABLEKS                       R38 R39 K62 ["Blue"]
      285 GETTABLEKS                       R37 R38 K63 ["Blue_600"]
      287 SETTABLEKS                       R37 R36 K53 ["style"]
      289 LOADN                            R37 1
      290 SETTABLEKS                       R37 R36 K54 ["LayoutOrder"]
      292 CALL                             R34 2 1
      293 SETTABLEKS                       R34 R33 K45 ["Icon"]
      295 GETUPVAL                         R35 0
      296 GETTABLEKS                       R34 R35 K20 ["createElement"]
      298 GETUPVAL                         R36 5
      299 GETTABLEKS                       R35 R36 K64 ["Text"]
      301 DUPTABLE                         R36 K65 [{"tag", "Text", "LayoutOrder"}]
      302 LOADK                            R37 K66 ["auto-xy"]
      303 SETTABLEKS                       R37 R36 K42 ["tag"]
      305 LOADK                            R39 K67 ["Common"]
      306 LOADK                            R40 K68 ["AnimationEditor"]
      307 LOADK                            R41 K69 ["GraphNotPlayedBanner"]
      308 LOADK                            R42 K70 ["AnimationDidntPlay"]
      309 NAMECALL                         R37 R6 K71 ["getExternalText"]
      311 CALL                             R37 5 1
      312 SETTABLEKS                       R37 R36 K64 ["Text"]
      314 LOADN                            R37 2
      315 SETTABLEKS                       R37 R36 K54 ["LayoutOrder"]
      317 CALL                             R34 2 1
      318 SETTABLEKS                       R34 R33 K46 ["Message"]
      320 GETUPVAL                         R35 0
      321 GETTABLEKS                       R34 R35 K20 ["createElement"]
      323 GETUPVAL                         R36 5
      324 GETTABLEKS                       R35 R36 K72 ["Button"]
      326 DUPTABLE                         R36 K76 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      327 LOADK                            R39 K67 ["Common"]
      328 LOADK                            R40 K68 ["AnimationEditor"]
      329 LOADK                            R41 K69 ["GraphNotPlayedBanner"]
      330 LOADK                            R42 K77 ["OnStarterPlayer"]
      331 NAMECALL                         R37 R6 K71 ["getExternalText"]
      333 CALL                             R37 5 1
      334 SETTABLEKS                       R37 R36 K73 ["text"]
      336 GETUPVAL                         R40 5
      337 GETTABLEKS                       R39 R40 K34 ["Enums"]
      339 GETTABLEKS                       R38 R39 K78 ["InputSize"]
      341 GETTABLEKS                       R37 R38 K59 ["Small"]
      343 SETTABLEKS                       R37 R36 K52 ["size"]
      345 GETUPVAL                         R40 5
      346 GETTABLEKS                       R39 R40 K34 ["Enums"]
      348 GETTABLEKS                       R38 R39 K79 ["ButtonVariant"]
      350 GETTABLEKS                       R37 R38 K80 ["Standard"]
      352 SETTABLEKS                       R37 R36 K74 ["variant"]
      354 SETTABLEKS                       R17 R36 K75 ["onActivated"]
      356 LOADN                            R37 3
      357 SETTABLEKS                       R37 R36 K54 ["LayoutOrder"]
      359 CALL                             R34 2 1
      360 SETTABLEKS                       R34 R33 K47 ["StarterPlayerButton"]
      362 MOVE                             R34 R21
      363 JUMPIFNOT                        R34 ; [+43]
      364 GETUPVAL                         R35 0
      365 GETTABLEKS                       R34 R35 K20 ["createElement"]
      367 GETUPVAL                         R36 5
      368 GETTABLEKS                       R35 R36 K72 ["Button"]
      370 DUPTABLE                         R36 K76 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      371 LOADK                            R39 K67 ["Common"]
      372 LOADK                            R40 K68 ["AnimationEditor"]
      373 LOADK                            R41 K69 ["GraphNotPlayedBanner"]
      374 LOADK                            R42 K81 ["OnSelection"]
      375 DUPTABLE                         R43 K83 [{"selection"}]
      376 SETTABLEKS                       R21 R43 K82 ["selection"]
      378 NAMECALL                         R37 R6 K71 ["getExternalText"]
      380 CALL                             R37 6 1
      381 SETTABLEKS                       R37 R36 K73 ["text"]
      383 GETUPVAL                         R40 5
      384 GETTABLEKS                       R39 R40 K34 ["Enums"]
      386 GETTABLEKS                       R38 R39 K78 ["InputSize"]
      388 GETTABLEKS                       R37 R38 K59 ["Small"]
      390 SETTABLEKS                       R37 R36 K52 ["size"]
      392 GETUPVAL                         R40 5
      393 GETTABLEKS                       R39 R40 K34 ["Enums"]
      395 GETTABLEKS                       R38 R39 K79 ["ButtonVariant"]
      397 GETTABLEKS                       R37 R38 K80 ["Standard"]
      399 SETTABLEKS                       R37 R36 K74 ["variant"]
      401 SETTABLEKS                       R18 R36 K75 ["onActivated"]
      403 LOADN                            R37 4
      404 SETTABLEKS                       R37 R36 K54 ["LayoutOrder"]
      406 CALL                             R34 2 1
      407 SETTABLEKS                       R34 R33 K48 ["SelectionButton"]
      409 GETUPVAL                         R35 0
      410 GETTABLEKS                       R34 R35 K20 ["createElement"]
      412 GETUPVAL                         R36 5
      413 GETTABLEKS                       R35 R36 K72 ["Button"]
      415 DUPTABLE                         R36 K85 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      416 GETUPVAL                         R40 5
      417 GETTABLEKS                       R39 R40 K34 ["Enums"]
      419 GETTABLEKS                       R38 R39 K56 ["IconName"]
      421 GETTABLEKS                       R37 R38 K86 ["X"]
      423 SETTABLEKS                       R37 R36 K84 ["icon"]
      425 GETUPVAL                         R40 5
      426 GETTABLEKS                       R39 R40 K34 ["Enums"]
      428 GETTABLEKS                       R38 R39 K78 ["InputSize"]
      430 GETTABLEKS                       R37 R38 K59 ["Small"]
      432 SETTABLEKS                       R37 R36 K52 ["size"]
      434 GETUPVAL                         R40 5
      435 GETTABLEKS                       R39 R40 K34 ["Enums"]
      437 GETTABLEKS                       R38 R39 K79 ["ButtonVariant"]
      439 GETTABLEKS                       R37 R38 K87 ["Utility"]
      441 SETTABLEKS                       R37 R36 K74 ["variant"]
      443 SETTABLEKS                       R19 R36 K75 ["onActivated"]
      445 LOADN                            R37 5
      446 SETTABLEKS                       R37 R36 K54 ["LayoutOrder"]
      448 CALL                             R34 2 1
      449 SETTABLEKS                       R34 R33 K49 ["DismissButton"]
      451 CALL                             R30 3 1
      452 SETTABLEKS                       R30 R29 K39 ["Body"]
      454 CALL                             R26 3 1
      455 SETTABLEKS                       R26 R25 K26 ["Content"]
      457 CALL                             R22 3 -1
      458 RETURN                           R22 -1

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
       56 DUPCLOSURE                       R8 K15 [PROTO_8]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 RETURN                           R8 1
