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
      221 DUPTABLE                         R25 K37 [{["align"], ["side"], ["sideOffset"] = -24}]
      222 GETUPVAL                         R26 5
      223 GETTABLEKS                       R26 R26 K38 ["Enums"]
      225 GETTABLEKS                       R26 R26 K39 ["PopoverAlign"]
      227 GETTABLEKS                       R26 R26 K40 ["Center"]
      229 SETTABLEKS                       R26 R25 K33 ["align"]
      231 GETUPVAL                         R26 5
      232 GETTABLEKS                       R26 R26 K38 ["Enums"]
      234 GETTABLEKS                       R26 R26 K41 ["PopoverSide"]
      236 GETTABLEKS                       R26 R26 K42 ["Bottom"]
      238 SETTABLEKS                       R26 R25 K34 ["side"]
      240 DUPTABLE                         R26 K44 [{"Body"}]
      241 GETUPVAL                         R27 0
      242 GETTABLEKS                       R27 R27 K23 ["createElement"]
      244 GETUPVAL                         R28 5
      245 GETTABLEKS                       R28 R28 K45 ["View"]
      247 DUPTABLE                         R29 K48 [{["tag"] = "row align-y-center gap-small auto-xy padding-large stroke-standard stroke-default radius-medium"}]
      248 DUPTABLE                         R30 K54 [{"Icon", "Message", "StarterPlayerButton", "SelectionButton", "DismissButton"}]
      249 GETUPVAL                         R31 0
      250 GETTABLEKS                       R31 R31 K23 ["createElement"]
      252 GETUPVAL                         R32 5
      253 GETTABLEKS                       R32 R32 K49 ["Icon"]
      255 DUPTABLE                         R33 K60 [{["name"], ["size"], ["style"], ["LayoutOrder"] = 1}]
      256 GETUPVAL                         R34 5
      257 GETTABLEKS                       R34 R34 K38 ["Enums"]
      259 GETTABLEKS                       R34 R34 K61 ["IconName"]
      261 GETTABLEKS                       R34 R34 K62 ["CircleI"]
      263 SETTABLEKS                       R34 R33 K55 ["name"]
      265 GETUPVAL                         R34 5
      266 GETTABLEKS                       R34 R34 K38 ["Enums"]
      268 GETTABLEKS                       R34 R34 K63 ["IconSize"]
      270 GETTABLEKS                       R34 R34 K64 ["Small"]
      272 SETTABLEKS                       R34 R33 K56 ["size"]
      274 GETTABLEKS                       R34 R5 K65 ["Color"]
      276 GETTABLEKS                       R34 R34 K66 ["Extended"]
      278 GETTABLEKS                       R34 R34 K67 ["Blue"]
      280 GETTABLEKS                       R34 R34 K68 ["Blue_600"]
      282 SETTABLEKS                       R34 R33 K57 ["style"]
      284 CALL                             R31 2 1
      285 SETTABLEKS                       R31 R30 K49 ["Icon"]
      287 GETUPVAL                         R31 0
      288 GETTABLEKS                       R31 R31 K23 ["createElement"]
      290 GETUPVAL                         R32 5
      291 GETTABLEKS                       R32 R32 K69 ["Text"]
      293 DUPTABLE                         R33 K72 [{["tag"] = "auto-xy", ["Text"], ["LayoutOrder"] = 2}]
      294 LOADK                            R36 K73 ["Common"]
      295 LOADK                            R37 K74 ["AnimationEditor"]
      296 LOADK                            R38 K75 ["GraphNotPlayedBanner"]
      297 LOADK                            R39 K76 ["AnimationDidntPlay"]
      298 NAMECALL                         R34 R6 K77 ["getExternalText"]
      300 CALL                             R34 5 1
      301 SETTABLEKS                       R34 R33 K69 ["Text"]
      303 CALL                             R31 2 1
      304 SETTABLEKS                       R31 R30 K50 ["Message"]
      306 GETUPVAL                         R31 0
      307 GETTABLEKS                       R31 R31 K23 ["createElement"]
      309 GETUPVAL                         R32 5
      310 GETTABLEKS                       R32 R32 K78 ["Button"]
      312 DUPTABLE                         R33 K83 [{["text"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 3}]
      313 LOADK                            R36 K73 ["Common"]
      314 LOADK                            R37 K74 ["AnimationEditor"]
      315 LOADK                            R38 K75 ["GraphNotPlayedBanner"]
      316 LOADK                            R39 K84 ["OnStarterPlayer"]
      317 NAMECALL                         R34 R6 K77 ["getExternalText"]
      319 CALL                             R34 5 1
      320 SETTABLEKS                       R34 R33 K79 ["text"]
      322 GETUPVAL                         R34 5
      323 GETTABLEKS                       R34 R34 K38 ["Enums"]
      325 GETTABLEKS                       R34 R34 K85 ["InputSize"]
      327 GETTABLEKS                       R34 R34 K64 ["Small"]
      329 SETTABLEKS                       R34 R33 K56 ["size"]
      331 GETUPVAL                         R34 5
      332 GETTABLEKS                       R34 R34 K38 ["Enums"]
      334 GETTABLEKS                       R34 R34 K86 ["ButtonVariant"]
      336 GETTABLEKS                       R34 R34 K87 ["Standard"]
      338 SETTABLEKS                       R34 R33 K80 ["variant"]
      340 SETTABLEKS                       R14 R33 K81 ["onActivated"]
      342 CALL                             R31 2 1
      343 SETTABLEKS                       R31 R30 K51 ["StarterPlayerButton"]
      345 MOVE                             R31 R18
      346 JUMPIFNOT                        R31 ; [+40]
      347 GETUPVAL                         R31 0
      348 GETTABLEKS                       R31 R31 K23 ["createElement"]
      350 GETUPVAL                         R32 5
      351 GETTABLEKS                       R32 R32 K78 ["Button"]
      353 DUPTABLE                         R33 K89 [{["text"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 4}]
      354 LOADK                            R36 K73 ["Common"]
      355 LOADK                            R37 K74 ["AnimationEditor"]
      356 LOADK                            R38 K75 ["GraphNotPlayedBanner"]
      357 LOADK                            R39 K90 ["OnSelection"]
      358 DUPTABLE                         R40 K92 [{"selection"}]
      359 SETTABLEKS                       R18 R40 K91 ["selection"]
      361 NAMECALL                         R34 R6 K77 ["getExternalText"]
      363 CALL                             R34 6 1
      364 SETTABLEKS                       R34 R33 K79 ["text"]
      366 GETUPVAL                         R34 5
      367 GETTABLEKS                       R34 R34 K38 ["Enums"]
      369 GETTABLEKS                       R34 R34 K85 ["InputSize"]
      371 GETTABLEKS                       R34 R34 K64 ["Small"]
      373 SETTABLEKS                       R34 R33 K56 ["size"]
      375 GETUPVAL                         R34 5
      376 GETTABLEKS                       R34 R34 K38 ["Enums"]
      378 GETTABLEKS                       R34 R34 K86 ["ButtonVariant"]
      380 GETTABLEKS                       R34 R34 K87 ["Standard"]
      382 SETTABLEKS                       R34 R33 K80 ["variant"]
      384 SETTABLEKS                       R15 R33 K81 ["onActivated"]
      386 CALL                             R31 2 1
      387 SETTABLEKS                       R31 R30 K52 ["SelectionButton"]
      389 GETUPVAL                         R31 0
      390 GETTABLEKS                       R31 R31 K23 ["createElement"]
      392 GETUPVAL                         R32 5
      393 GETTABLEKS                       R32 R32 K78 ["Button"]
      395 DUPTABLE                         R33 K95 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 5}]
      396 GETUPVAL                         R34 5
      397 GETTABLEKS                       R34 R34 K38 ["Enums"]
      399 GETTABLEKS                       R34 R34 K61 ["IconName"]
      401 GETTABLEKS                       R34 R34 K96 ["X"]
      403 SETTABLEKS                       R34 R33 K93 ["icon"]
      405 GETUPVAL                         R34 5
      406 GETTABLEKS                       R34 R34 K38 ["Enums"]
      408 GETTABLEKS                       R34 R34 K85 ["InputSize"]
      410 GETTABLEKS                       R34 R34 K64 ["Small"]
      412 SETTABLEKS                       R34 R33 K56 ["size"]
      414 GETUPVAL                         R34 5
      415 GETTABLEKS                       R34 R34 K38 ["Enums"]
      417 GETTABLEKS                       R34 R34 K86 ["ButtonVariant"]
      419 GETTABLEKS                       R34 R34 K97 ["Utility"]
      421 SETTABLEKS                       R34 R33 K80 ["variant"]
      423 SETTABLEKS                       R16 R33 K81 ["onActivated"]
      425 CALL                             R31 2 1
      426 SETTABLEKS                       R31 R30 K53 ["DismissButton"]
      428 CALL                             R27 3 1
      429 SETTABLEKS                       R27 R26 K43 ["Body"]
      431 CALL                             R23 3 1
      432 SETTABLEKS                       R23 R22 K29 ["Content"]
      434 CALL                             R19 3 -1
      435 RETURN                           R19 -1

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
