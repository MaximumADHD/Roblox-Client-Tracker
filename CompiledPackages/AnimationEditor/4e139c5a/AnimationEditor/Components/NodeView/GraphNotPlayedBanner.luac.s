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
       42 GETTABLEKS                       R7 R3 K7 ["currentAnimationId"]
       44 GETTABLEKS                       R8 R3 K8 ["selectedGraphKey"]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K9 ["useState"]
       49 LOADB                            R10 0
       50 CALL                             R9 1 2
       51 GETUPVAL                         R12 7
       52 CALL                             R12 0 1
       53 JUMPIFNOT                        R12 ; [+11]
       54 LOADB                            R11 0
       55 JUMPIFEQKNIL                     R8 ; [+21]
       57 GETTABLEKS                       R13 R2 K10 ["playedGraphKeys"]
       59 GETTABLE                         R12 R13 R8
       60 JUMPIFEQKB                       R12 TRUE ; [+2]
       62 LOADB                            R11 0 +1
       63 LOADB                            R11 1
       64 JUMP                             ; [+12]
       65 JUMPIFEQKNIL                     R8 ; [+7]
       67 LOADB                            R11 1
       68 GETTABLEKS                       R13 R2 K10 ["playedGraphKeys"]
       70 GETTABLE                         R12 R13 R8
       71 JUMPIFEQKB                       R12 TRUE ; [+5]
       73 GETTABLEKS                       R11 R2 K11 ["DEPRECATED_wasGraphPlayed"]
       75 MOVE                             R12 R7
       76 CALL                             R11 1 1
       77 GETUPVAL                         R12 0
       78 GETTABLEKS                       R12 R12 K12 ["useRef"]
       80 MOVE                             R13 R8
       81 CALL                             R12 1 1
       82 GETUPVAL                         R13 0
       83 GETTABLEKS                       R13 R13 K13 ["useEffect"]
       85 NEWCLOSURE                       R14 P0
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R8
       90 NEWTABLE                         R15 0 2
       92 GETTABLEKS                       R16 R2 K14 ["isPreviewRunning"]
       94 MOVE                             R17 R8
       95 SETLIST                          R15 R16 2 [1]
       97 CALL                             R13 2 0
       98 GETUPVAL                         R13 0
       99 GETTABLEKS                       R13 R13 K12 ["useRef"]
      101 GETTABLEKS                       R14 R3 K15 ["sourceAssetId"]
      103 CALL                             R13 1 1
      104 GETUPVAL                         R14 0
      105 GETTABLEKS                       R14 R14 K13 ["useEffect"]
      107 NEWCLOSURE                       R15 P1
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R10
      111 NEWTABLE                         R16 0 1
      113 GETTABLEKS                       R17 R3 K15 ["sourceAssetId"]
      115 SETLIST                          R16 R17 1 [1]
      117 CALL                             R14 2 0
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R14 R14 K16 ["useCallback"]
      121 NEWCLOSURE                       R15 P2
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R10
      124 NEWTABLE                         R16 0 1
      126 GETTABLEKS                       R17 R4 K17 ["createScriptForStarterPlayerAsync"]
      128 SETLIST                          R16 R17 1 [1]
      130 CALL                             R14 2 1
      131 GETUPVAL                         R15 0
      132 GETTABLEKS                       R15 R15 K16 ["useCallback"]
      134 NEWCLOSURE                       R16 P3
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R10
      137 NEWTABLE                         R17 0 1
      139 GETTABLEKS                       R18 R4 K18 ["createScriptForSelectedGraphAsync"]
      141 SETLIST                          R17 R18 1 [1]
      143 CALL                             R15 2 1
      144 GETUPVAL                         R16 0
      145 GETTABLEKS                       R16 R16 K16 ["useCallback"]
      147 NEWCLOSURE                       R17 P4
      148 CAPTURE                          VAL R10
      149 NEWTABLE                         R18 0 0
      151 CALL                             R16 2 1
      152 GETTABLEKS                       R17 R2 K19 ["previewHasEnded"]
      154 JUMPIFNOT                        R17 ; [+28]
      155 GETTABLEKS                       R18 R2 K14 ["isPreviewRunning"]
      157 NOT                              R17 R18
      158 JUMPIFNOT                        R17 ; [+24]
      159 GETUPVAL                         R18 8
      160 CALL                             R18 0 1
      161 JUMPIFNOT                        R18 ; [+3]
      162 GETTABLEKS                       R17 R2 K20 ["previewDataModelDidBootstrap"]
      164 JUMPIFNOT                        R17 ; [+18]
      165 GETUPVAL                         R18 7
      166 CALL                             R18 0 1
      167 JUMPIFNOT                        R18 ; [+3]
      168 LOADB                            R17 0
      169 JUMPIFEQKNIL                     R8 ; [+13]
      171 GETUPVAL                         R18 7
      172 CALL                             R18 0 1
      173 JUMPIF                           R18 ; [+6]
      174 LOADB                            R17 0
      175 JUMPIFEQKNIL                     R7 ; [+7]
      177 LOADB                            R17 0
      178 JUMPIFEQKS                       R7 K21 [""] ; [+4]
      180 NOT                              R17 R11
      181 JUMPIFNOT                        R17 ; [+1]
      182 NOT                              R17 R9
      183 GETTABLEKS                       R18 R1 K22 ["selectedTargetName"]
      185 GETUPVAL                         R19 0
      186 GETTABLEKS                       R19 R19 K23 ["createElement"]
      188 GETUPVAL                         R20 5
      189 GETTABLEKS                       R20 R20 K24 ["Popover"]
      191 GETTABLEKS                       R20 R20 K25 ["Root"]
      193 DUPTABLE                         R21 K27 [{"isOpen"}]
      194 SETTABLEKS                       R17 R21 K26 ["isOpen"]
      196 DUPTABLE                         R22 K30 [{"Anchor", "Content"}]
      197 GETUPVAL                         R23 0
      198 GETTABLEKS                       R23 R23 K23 ["createElement"]
      200 GETUPVAL                         R24 5
      201 GETTABLEKS                       R24 R24 K24 ["Popover"]
      203 GETTABLEKS                       R24 R24 K28 ["Anchor"]
      205 DUPTABLE                         R25 K32 [{"anchorRef"}]
      206 GETTABLEKS                       R26 R0 K31 ["anchorRef"]
      208 SETTABLEKS                       R26 R25 K31 ["anchorRef"]
      210 CALL                             R23 2 1
      211 SETTABLEKS                       R23 R22 K28 ["Anchor"]
      213 GETUPVAL                         R23 0
      214 GETTABLEKS                       R23 R23 K23 ["createElement"]
      216 GETUPVAL                         R24 5
      217 GETTABLEKS                       R24 R24 K24 ["Popover"]
      219 GETTABLEKS                       R24 R24 K29 ["Content"]
      221 DUPTABLE                         R25 K36 [{"align", "side", "sideOffset"}]
      222 GETUPVAL                         R26 5
      223 GETTABLEKS                       R26 R26 K37 ["Enums"]
      225 GETTABLEKS                       R26 R26 K38 ["PopoverAlign"]
      227 GETTABLEKS                       R26 R26 K39 ["Center"]
      229 SETTABLEKS                       R26 R25 K33 ["align"]
      231 GETUPVAL                         R26 5
      232 GETTABLEKS                       R26 R26 K37 ["Enums"]
      234 GETTABLEKS                       R26 R26 K40 ["PopoverSide"]
      236 GETTABLEKS                       R26 R26 K41 ["Bottom"]
      238 SETTABLEKS                       R26 R25 K34 ["side"]
      240 LOADN                            R26 232
      241 SETTABLEKS                       R26 R25 K35 ["sideOffset"]
      243 DUPTABLE                         R26 K43 [{"Body"}]
      244 GETUPVAL                         R27 0
      245 GETTABLEKS                       R27 R27 K23 ["createElement"]
      247 GETUPVAL                         R28 5
      248 GETTABLEKS                       R28 R28 K44 ["View"]
      250 DUPTABLE                         R29 K46 [{"tag"}]
      251 LOADK                            R30 K47 ["row gap-small auto-xy padding-large align-y-center radius-medium stroke-standard stroke-default"]
      252 SETTABLEKS                       R30 R29 K45 ["tag"]
      254 DUPTABLE                         R30 K53 [{"Icon", "Message", "StarterPlayerButton", "SelectionButton", "DismissButton"}]
      255 GETUPVAL                         R31 0
      256 GETTABLEKS                       R31 R31 K23 ["createElement"]
      258 GETUPVAL                         R32 5
      259 GETTABLEKS                       R32 R32 K48 ["Icon"]
      261 DUPTABLE                         R33 K58 [{"name", "size", "style", "LayoutOrder"}]
      262 GETUPVAL                         R34 5
      263 GETTABLEKS                       R34 R34 K37 ["Enums"]
      265 GETTABLEKS                       R34 R34 K59 ["IconName"]
      267 GETTABLEKS                       R34 R34 K60 ["CircleI"]
      269 SETTABLEKS                       R34 R33 K54 ["name"]
      271 GETUPVAL                         R34 5
      272 GETTABLEKS                       R34 R34 K37 ["Enums"]
      274 GETTABLEKS                       R34 R34 K61 ["IconSize"]
      276 GETTABLEKS                       R34 R34 K62 ["Small"]
      278 SETTABLEKS                       R34 R33 K55 ["size"]
      280 GETTABLEKS                       R34 R5 K63 ["Color"]
      282 GETTABLEKS                       R34 R34 K64 ["Extended"]
      284 GETTABLEKS                       R34 R34 K65 ["Blue"]
      286 GETTABLEKS                       R34 R34 K66 ["Blue_600"]
      288 SETTABLEKS                       R34 R33 K56 ["style"]
      290 LOADN                            R34 1
      291 SETTABLEKS                       R34 R33 K57 ["LayoutOrder"]
      293 CALL                             R31 2 1
      294 SETTABLEKS                       R31 R30 K48 ["Icon"]
      296 GETUPVAL                         R31 0
      297 GETTABLEKS                       R31 R31 K23 ["createElement"]
      299 GETUPVAL                         R32 5
      300 GETTABLEKS                       R32 R32 K67 ["Text"]
      302 DUPTABLE                         R33 K68 [{"tag", "Text", "LayoutOrder"}]
      303 LOADK                            R34 K69 ["auto-xy"]
      304 SETTABLEKS                       R34 R33 K45 ["tag"]
      306 LOADK                            R36 K70 ["Common"]
      307 LOADK                            R37 K71 ["AnimationEditor"]
      308 LOADK                            R38 K72 ["GraphNotPlayedBanner"]
      309 LOADK                            R39 K73 ["AnimationDidntPlay"]
      310 NAMECALL                         R34 R6 K74 ["getExternalText"]
      312 CALL                             R34 5 1
      313 SETTABLEKS                       R34 R33 K67 ["Text"]
      315 LOADN                            R34 2
      316 SETTABLEKS                       R34 R33 K57 ["LayoutOrder"]
      318 CALL                             R31 2 1
      319 SETTABLEKS                       R31 R30 K49 ["Message"]
      321 GETUPVAL                         R31 0
      322 GETTABLEKS                       R31 R31 K23 ["createElement"]
      324 GETUPVAL                         R32 5
      325 GETTABLEKS                       R32 R32 K75 ["Button"]
      327 DUPTABLE                         R33 K79 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      328 LOADK                            R36 K70 ["Common"]
      329 LOADK                            R37 K71 ["AnimationEditor"]
      330 LOADK                            R38 K72 ["GraphNotPlayedBanner"]
      331 LOADK                            R39 K80 ["OnStarterPlayer"]
      332 NAMECALL                         R34 R6 K74 ["getExternalText"]
      334 CALL                             R34 5 1
      335 SETTABLEKS                       R34 R33 K76 ["text"]
      337 GETUPVAL                         R34 5
      338 GETTABLEKS                       R34 R34 K37 ["Enums"]
      340 GETTABLEKS                       R34 R34 K81 ["InputSize"]
      342 GETTABLEKS                       R34 R34 K62 ["Small"]
      344 SETTABLEKS                       R34 R33 K55 ["size"]
      346 GETUPVAL                         R34 5
      347 GETTABLEKS                       R34 R34 K37 ["Enums"]
      349 GETTABLEKS                       R34 R34 K82 ["ButtonVariant"]
      351 GETTABLEKS                       R34 R34 K83 ["Standard"]
      353 SETTABLEKS                       R34 R33 K77 ["variant"]
      355 SETTABLEKS                       R14 R33 K78 ["onActivated"]
      357 LOADN                            R34 3
      358 SETTABLEKS                       R34 R33 K57 ["LayoutOrder"]
      360 CALL                             R31 2 1
      361 SETTABLEKS                       R31 R30 K50 ["StarterPlayerButton"]
      363 MOVE                             R31 R18
      364 JUMPIFNOT                        R31 ; [+43]
      365 GETUPVAL                         R31 0
      366 GETTABLEKS                       R31 R31 K23 ["createElement"]
      368 GETUPVAL                         R32 5
      369 GETTABLEKS                       R32 R32 K75 ["Button"]
      371 DUPTABLE                         R33 K79 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      372 LOADK                            R36 K70 ["Common"]
      373 LOADK                            R37 K71 ["AnimationEditor"]
      374 LOADK                            R38 K72 ["GraphNotPlayedBanner"]
      375 LOADK                            R39 K84 ["OnSelection"]
      376 DUPTABLE                         R40 K86 [{"selection"}]
      377 SETTABLEKS                       R18 R40 K85 ["selection"]
      379 NAMECALL                         R34 R6 K74 ["getExternalText"]
      381 CALL                             R34 6 1
      382 SETTABLEKS                       R34 R33 K76 ["text"]
      384 GETUPVAL                         R34 5
      385 GETTABLEKS                       R34 R34 K37 ["Enums"]
      387 GETTABLEKS                       R34 R34 K81 ["InputSize"]
      389 GETTABLEKS                       R34 R34 K62 ["Small"]
      391 SETTABLEKS                       R34 R33 K55 ["size"]
      393 GETUPVAL                         R34 5
      394 GETTABLEKS                       R34 R34 K37 ["Enums"]
      396 GETTABLEKS                       R34 R34 K82 ["ButtonVariant"]
      398 GETTABLEKS                       R34 R34 K83 ["Standard"]
      400 SETTABLEKS                       R34 R33 K77 ["variant"]
      402 SETTABLEKS                       R15 R33 K78 ["onActivated"]
      404 LOADN                            R34 4
      405 SETTABLEKS                       R34 R33 K57 ["LayoutOrder"]
      407 CALL                             R31 2 1
      408 SETTABLEKS                       R31 R30 K51 ["SelectionButton"]
      410 GETUPVAL                         R31 0
      411 GETTABLEKS                       R31 R31 K23 ["createElement"]
      413 GETUPVAL                         R32 5
      414 GETTABLEKS                       R32 R32 K75 ["Button"]
      416 DUPTABLE                         R33 K88 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      417 GETUPVAL                         R34 5
      418 GETTABLEKS                       R34 R34 K37 ["Enums"]
      420 GETTABLEKS                       R34 R34 K59 ["IconName"]
      422 GETTABLEKS                       R34 R34 K89 ["X"]
      424 SETTABLEKS                       R34 R33 K87 ["icon"]
      426 GETUPVAL                         R34 5
      427 GETTABLEKS                       R34 R34 K37 ["Enums"]
      429 GETTABLEKS                       R34 R34 K81 ["InputSize"]
      431 GETTABLEKS                       R34 R34 K62 ["Small"]
      433 SETTABLEKS                       R34 R33 K55 ["size"]
      435 GETUPVAL                         R34 5
      436 GETTABLEKS                       R34 R34 K37 ["Enums"]
      438 GETTABLEKS                       R34 R34 K82 ["ButtonVariant"]
      440 GETTABLEKS                       R34 R34 K90 ["Utility"]
      442 SETTABLEKS                       R34 R33 K77 ["variant"]
      444 SETTABLEKS                       R16 R33 K78 ["onActivated"]
      446 LOADN                            R34 5
      447 SETTABLEKS                       R34 R33 K57 ["LayoutOrder"]
      449 CALL                             R31 2 1
      450 SETTABLEKS                       R31 R30 K52 ["DismissButton"]
      452 CALL                             R27 3 1
      453 SETTABLEKS                       R27 R26 K42 ["Body"]
      455 CALL                             R23 3 1
      456 SETTABLEKS                       R23 R22 K29 ["Content"]
      458 CALL                             R19 3 -1
      459 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAnimGraphCheckPreviewBootstrap"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Flags"]
       18 GETTABLEKS                       R3 R3 K8 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["CreateGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["CreateScriptContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["Framework"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K15 ["GraphPlayedContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K9 ["Contexts"]
       60 GETTABLEKS                       R9 R9 K16 ["NativeGraphContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K12 ["Parent"]
       67 GETTABLEKS                       R10 R10 K17 ["React"]
       69 CALL                             R9 1 1
       70 DUPCLOSURE                       R10 K18 [PROTO_7]
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R1
       80 RETURN                           R10 1
