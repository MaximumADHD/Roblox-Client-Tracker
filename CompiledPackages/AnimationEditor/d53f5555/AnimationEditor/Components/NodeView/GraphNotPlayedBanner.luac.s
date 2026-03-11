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
       44 GETTABLEKS                       R8 R3 K8 ["graphPayloadMap"]
       46 JUMPIFNOT                        R8 ; [+3]
       47 GETTABLEKS                       R9 R8 K9 ["graphInstanceId"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 JUMPIFNOT                        R9 ; [+6]
       52 GETTABLEKS                       R10 R2 K10 ["wasGraphPlayed"]
       54 MOVE                             R11 R9
       55 MOVE                             R12 R7
       56 CALL                             R10 2 1
       57 JUMP                             ; [+1]
       58 LOADB                            R10 0
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R11 R12 K11 ["useState"]
       62 LOADB                            R12 0
       63 CALL                             R11 1 2
       64 GETUPVAL                         R14 0
       65 GETTABLEKS                       R13 R14 K11 ["useState"]
       67 LOADNIL                          R14
       68 CALL                             R13 1 2
       69 GETUPVAL                         R16 0
       70 GETTABLEKS                       R15 R16 K12 ["useRef"]
       72 LOADNIL                          R16
       73 CALL                             R15 1 1
       74 GETUPVAL                         R17 0
       75 GETTABLEKS                       R16 R17 K12 ["useRef"]
       77 LOADB                            R17 0
       78 CALL                             R16 1 1
       79 GETUPVAL                         R18 0
       80 GETTABLEKS                       R17 R18 K13 ["useEffect"]
       82 NEWCLOSURE                       R18 P0
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R7
       91 NEWTABLE                         R19 0 5
       93 GETTABLEKS                       R20 R2 K14 ["isPreviewRunning"]
       95 GETTABLEKS                       R21 R2 K15 ["previewHasEnded"]
       97 MOVE                             R22 R9
       98 MOVE                             R23 R13
       99 MOVE                             R24 R7
      100 SETLIST                          R19 R20 5 [1]
      102 CALL                             R17 2 0
      103 GETUPVAL                         R18 0
      104 GETTABLEKS                       R17 R18 K13 ["useEffect"]
      106 NEWCLOSURE                       R18 P1
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R7
      112 NEWTABLE                         R19 0 2
      114 MOVE                             R20 R9
      115 MOVE                             R21 R7
      116 SETLIST                          R19 R20 2 [1]
      118 CALL                             R17 2 0
      119 GETUPVAL                         R18 0
      120 GETTABLEKS                       R17 R18 K13 ["useEffect"]
      122 NEWCLOSURE                       R18 P2
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R12
      126 NEWTABLE                         R19 0 1
      128 MOVE                             R20 R7
      129 SETLIST                          R19 R20 1 [1]
      131 CALL                             R17 2 0
      132 LOADB                            R17 0
      133 JUMPIFEQKNIL                     R9 ; [+5]
      135 JUMPIFEQ                         R9 R13 ; [+2]
      137 LOADB                            R17 0 +1
      138 LOADB                            R17 1
      139 GETUPVAL                         R19 0
      140 GETTABLEKS                       R18 R19 K16 ["useCallback"]
      142 NEWCLOSURE                       R19 P3
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R12
      145 NEWTABLE                         R20 0 1
      147 GETTABLEKS                       R21 R4 K17 ["createScriptForStarterPlayerAsync"]
      149 SETLIST                          R20 R21 1 [1]
      151 CALL                             R18 2 1
      152 GETUPVAL                         R20 0
      153 GETTABLEKS                       R19 R20 K16 ["useCallback"]
      155 NEWCLOSURE                       R20 P4
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R12
      158 NEWTABLE                         R21 0 1
      160 GETTABLEKS                       R22 R4 K18 ["createScriptForSelectedGraphAsync"]
      162 SETLIST                          R21 R22 1 [1]
      164 CALL                             R19 2 1
      165 GETUPVAL                         R21 0
      166 GETTABLEKS                       R20 R21 K16 ["useCallback"]
      168 NEWCLOSURE                       R21 P5
      169 CAPTURE                          VAL R12
      170 NEWTABLE                         R22 0 0
      172 CALL                             R20 2 1
      173 GETTABLEKS                       R21 R2 K15 ["previewHasEnded"]
      175 JUMPIFNOT                        R21 ; [+15]
      176 GETTABLEKS                       R22 R2 K14 ["isPreviewRunning"]
      178 NOT                              R21 R22
      179 JUMPIFNOT                        R21 ; [+11]
      180 LOADB                            R21 0
      181 JUMPIFEQKNIL                     R7 ; [+9]
      183 LOADB                            R21 0
      184 JUMPIFEQKS                       R7 K19 [""] ; [+6]
      186 MOVE                             R21 R17
      187 JUMPIFNOT                        R21 ; [+3]
      188 NOT                              R21 R10
      189 JUMPIFNOT                        R21 ; [+1]
      190 NOT                              R21 R11
      191 GETTABLEKS                       R22 R1 K20 ["selectedTargetName"]
      193 GETUPVAL                         R24 0
      194 GETTABLEKS                       R23 R24 K21 ["createElement"]
      196 GETUPVAL                         R26 5
      197 GETTABLEKS                       R25 R26 K22 ["Popover"]
      199 GETTABLEKS                       R24 R25 K23 ["Root"]
      201 DUPTABLE                         R25 K25 [{"isOpen"}]
      202 SETTABLEKS                       R21 R25 K24 ["isOpen"]
      204 DUPTABLE                         R26 K28 [{"Anchor", "Content"}]
      205 GETUPVAL                         R28 0
      206 GETTABLEKS                       R27 R28 K21 ["createElement"]
      208 GETUPVAL                         R30 5
      209 GETTABLEKS                       R29 R30 K22 ["Popover"]
      211 GETTABLEKS                       R28 R29 K26 ["Anchor"]
      213 DUPTABLE                         R29 K30 [{"anchorRef"}]
      214 GETTABLEKS                       R30 R0 K29 ["anchorRef"]
      216 SETTABLEKS                       R30 R29 K29 ["anchorRef"]
      218 CALL                             R27 2 1
      219 SETTABLEKS                       R27 R26 K26 ["Anchor"]
      221 GETUPVAL                         R28 0
      222 GETTABLEKS                       R27 R28 K21 ["createElement"]
      224 GETUPVAL                         R30 5
      225 GETTABLEKS                       R29 R30 K22 ["Popover"]
      227 GETTABLEKS                       R28 R29 K27 ["Content"]
      229 DUPTABLE                         R29 K34 [{"align", "side", "sideOffset"}]
      230 GETUPVAL                         R33 5
      231 GETTABLEKS                       R32 R33 K35 ["Enums"]
      233 GETTABLEKS                       R31 R32 K36 ["PopoverAlign"]
      235 GETTABLEKS                       R30 R31 K37 ["Center"]
      237 SETTABLEKS                       R30 R29 K31 ["align"]
      239 GETUPVAL                         R33 5
      240 GETTABLEKS                       R32 R33 K35 ["Enums"]
      242 GETTABLEKS                       R31 R32 K38 ["PopoverSide"]
      244 GETTABLEKS                       R30 R31 K39 ["Bottom"]
      246 SETTABLEKS                       R30 R29 K32 ["side"]
      248 LOADN                            R30 232
      249 SETTABLEKS                       R30 R29 K33 ["sideOffset"]
      251 DUPTABLE                         R30 K41 [{"Body"}]
      252 GETUPVAL                         R32 0
      253 GETTABLEKS                       R31 R32 K21 ["createElement"]
      255 GETUPVAL                         R33 5
      256 GETTABLEKS                       R32 R33 K42 ["View"]
      258 DUPTABLE                         R33 K44 [{"tag"}]
      259 LOADK                            R34 K45 ["row gap-small auto-xy padding-large align-y-center radius-medium stroke-standard stroke-default"]
      260 SETTABLEKS                       R34 R33 K43 ["tag"]
      262 DUPTABLE                         R34 K51 [{"Icon", "Message", "StarterPlayerButton", "SelectionButton", "DismissButton"}]
      263 GETUPVAL                         R36 0
      264 GETTABLEKS                       R35 R36 K21 ["createElement"]
      266 GETUPVAL                         R37 5
      267 GETTABLEKS                       R36 R37 K46 ["Icon"]
      269 DUPTABLE                         R37 K56 [{"name", "size", "style", "LayoutOrder"}]
      270 GETUPVAL                         R41 5
      271 GETTABLEKS                       R40 R41 K35 ["Enums"]
      273 GETTABLEKS                       R39 R40 K57 ["IconName"]
      275 GETTABLEKS                       R38 R39 K58 ["CircleI"]
      277 SETTABLEKS                       R38 R37 K52 ["name"]
      279 GETUPVAL                         R41 5
      280 GETTABLEKS                       R40 R41 K35 ["Enums"]
      282 GETTABLEKS                       R39 R40 K59 ["IconSize"]
      284 GETTABLEKS                       R38 R39 K60 ["Small"]
      286 SETTABLEKS                       R38 R37 K53 ["size"]
      288 GETTABLEKS                       R41 R5 K61 ["Color"]
      290 GETTABLEKS                       R40 R41 K62 ["Extended"]
      292 GETTABLEKS                       R39 R40 K63 ["Blue"]
      294 GETTABLEKS                       R38 R39 K64 ["Blue_600"]
      296 SETTABLEKS                       R38 R37 K54 ["style"]
      298 LOADN                            R38 1
      299 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      301 CALL                             R35 2 1
      302 SETTABLEKS                       R35 R34 K46 ["Icon"]
      304 GETUPVAL                         R36 0
      305 GETTABLEKS                       R35 R36 K21 ["createElement"]
      307 GETUPVAL                         R37 5
      308 GETTABLEKS                       R36 R37 K65 ["Text"]
      310 DUPTABLE                         R37 K66 [{"tag", "Text", "LayoutOrder"}]
      311 LOADK                            R38 K67 ["auto-xy"]
      312 SETTABLEKS                       R38 R37 K43 ["tag"]
      314 LOADK                            R40 K68 ["Common"]
      315 LOADK                            R41 K69 ["AnimationEditor"]
      316 LOADK                            R42 K70 ["GraphNotPlayedBanner"]
      317 LOADK                            R43 K71 ["AnimationDidntPlay"]
      318 NAMECALL                         R38 R6 K72 ["getExternalText"]
      320 CALL                             R38 5 1
      321 SETTABLEKS                       R38 R37 K65 ["Text"]
      323 LOADN                            R38 2
      324 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      326 CALL                             R35 2 1
      327 SETTABLEKS                       R35 R34 K47 ["Message"]
      329 GETUPVAL                         R36 0
      330 GETTABLEKS                       R35 R36 K21 ["createElement"]
      332 GETUPVAL                         R37 5
      333 GETTABLEKS                       R36 R37 K73 ["Button"]
      335 DUPTABLE                         R37 K77 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      336 LOADK                            R40 K68 ["Common"]
      337 LOADK                            R41 K69 ["AnimationEditor"]
      338 LOADK                            R42 K70 ["GraphNotPlayedBanner"]
      339 LOADK                            R43 K78 ["OnStarterPlayer"]
      340 NAMECALL                         R38 R6 K72 ["getExternalText"]
      342 CALL                             R38 5 1
      343 SETTABLEKS                       R38 R37 K74 ["text"]
      345 GETUPVAL                         R41 5
      346 GETTABLEKS                       R40 R41 K35 ["Enums"]
      348 GETTABLEKS                       R39 R40 K79 ["InputSize"]
      350 GETTABLEKS                       R38 R39 K60 ["Small"]
      352 SETTABLEKS                       R38 R37 K53 ["size"]
      354 GETUPVAL                         R41 5
      355 GETTABLEKS                       R40 R41 K35 ["Enums"]
      357 GETTABLEKS                       R39 R40 K80 ["ButtonVariant"]
      359 GETTABLEKS                       R38 R39 K81 ["Standard"]
      361 SETTABLEKS                       R38 R37 K75 ["variant"]
      363 SETTABLEKS                       R18 R37 K76 ["onActivated"]
      365 LOADN                            R38 3
      366 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      368 CALL                             R35 2 1
      369 SETTABLEKS                       R35 R34 K48 ["StarterPlayerButton"]
      371 MOVE                             R35 R22
      372 JUMPIFNOT                        R35 ; [+43]
      373 GETUPVAL                         R36 0
      374 GETTABLEKS                       R35 R36 K21 ["createElement"]
      376 GETUPVAL                         R37 5
      377 GETTABLEKS                       R36 R37 K73 ["Button"]
      379 DUPTABLE                         R37 K77 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      380 LOADK                            R40 K68 ["Common"]
      381 LOADK                            R41 K69 ["AnimationEditor"]
      382 LOADK                            R42 K70 ["GraphNotPlayedBanner"]
      383 LOADK                            R43 K82 ["OnSelection"]
      384 DUPTABLE                         R44 K84 [{"selection"}]
      385 SETTABLEKS                       R22 R44 K83 ["selection"]
      387 NAMECALL                         R38 R6 K72 ["getExternalText"]
      389 CALL                             R38 6 1
      390 SETTABLEKS                       R38 R37 K74 ["text"]
      392 GETUPVAL                         R41 5
      393 GETTABLEKS                       R40 R41 K35 ["Enums"]
      395 GETTABLEKS                       R39 R40 K79 ["InputSize"]
      397 GETTABLEKS                       R38 R39 K60 ["Small"]
      399 SETTABLEKS                       R38 R37 K53 ["size"]
      401 GETUPVAL                         R41 5
      402 GETTABLEKS                       R40 R41 K35 ["Enums"]
      404 GETTABLEKS                       R39 R40 K80 ["ButtonVariant"]
      406 GETTABLEKS                       R38 R39 K85 ["Emphasis"]
      408 SETTABLEKS                       R38 R37 K75 ["variant"]
      410 SETTABLEKS                       R19 R37 K76 ["onActivated"]
      412 LOADN                            R38 4
      413 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      415 CALL                             R35 2 1
      416 SETTABLEKS                       R35 R34 K49 ["SelectionButton"]
      418 GETUPVAL                         R36 0
      419 GETTABLEKS                       R35 R36 K21 ["createElement"]
      421 GETUPVAL                         R37 5
      422 GETTABLEKS                       R36 R37 K73 ["Button"]
      424 DUPTABLE                         R37 K87 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      425 GETUPVAL                         R41 5
      426 GETTABLEKS                       R40 R41 K35 ["Enums"]
      428 GETTABLEKS                       R39 R40 K57 ["IconName"]
      430 GETTABLEKS                       R38 R39 K88 ["X"]
      432 SETTABLEKS                       R38 R37 K86 ["icon"]
      434 GETUPVAL                         R41 5
      435 GETTABLEKS                       R40 R41 K35 ["Enums"]
      437 GETTABLEKS                       R39 R40 K79 ["InputSize"]
      439 GETTABLEKS                       R38 R39 K60 ["Small"]
      441 SETTABLEKS                       R38 R37 K53 ["size"]
      443 GETUPVAL                         R41 5
      444 GETTABLEKS                       R40 R41 K35 ["Enums"]
      446 GETTABLEKS                       R39 R40 K80 ["ButtonVariant"]
      448 GETTABLEKS                       R38 R39 K89 ["Utility"]
      450 SETTABLEKS                       R38 R37 K75 ["variant"]
      452 SETTABLEKS                       R20 R37 K76 ["onActivated"]
      454 LOADN                            R38 5
      455 SETTABLEKS                       R38 R37 K55 ["LayoutOrder"]
      457 CALL                             R35 2 1
      458 SETTABLEKS                       R35 R34 K50 ["DismissButton"]
      460 CALL                             R31 3 1
      461 SETTABLEKS                       R31 R30 K40 ["Body"]
      463 CALL                             R27 3 1
      464 SETTABLEKS                       R27 R26 K27 ["Content"]
      466 CALL                             R23 3 -1
      467 RETURN                           R23 -1

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
