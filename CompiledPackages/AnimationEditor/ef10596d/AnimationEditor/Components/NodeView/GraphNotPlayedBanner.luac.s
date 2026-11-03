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
      154 JUMPIFNOT                        R17 ; [+25]
      155 GETTABLEKS                       R18 R2 K14 ["isPreviewRunning"]
      157 NOT                              R17 R18
      158 JUMPIFNOT                        R17 ; [+21]
      159 GETTABLEKS                       R17 R2 K20 ["previewDataModelDidBootstrap"]
      161 JUMPIFNOT                        R17 ; [+18]
      162 GETUPVAL                         R18 7
      163 CALL                             R18 0 1
      164 JUMPIFNOT                        R18 ; [+3]
      165 LOADB                            R17 0
      166 JUMPIFEQKNIL                     R8 ; [+13]
      168 GETUPVAL                         R18 7
      169 CALL                             R18 0 1
      170 JUMPIF                           R18 ; [+6]
      171 LOADB                            R17 0
      172 JUMPIFEQKNIL                     R7 ; [+7]
      174 LOADB                            R17 0
      175 JUMPIFEQKS                       R7 K21 [""] ; [+4]
      177 NOT                              R17 R11
      178 JUMPIFNOT                        R17 ; [+1]
      179 NOT                              R17 R9
      180 GETTABLEKS                       R18 R1 K22 ["selectedTargetName"]
      182 GETUPVAL                         R19 0
      183 GETTABLEKS                       R19 R19 K23 ["createElement"]
      185 GETUPVAL                         R20 5
      186 GETTABLEKS                       R20 R20 K24 ["Popover"]
      188 GETTABLEKS                       R20 R20 K25 ["Root"]
      190 DUPTABLE                         R21 K27 [{"isOpen"}]
      191 SETTABLEKS                       R17 R21 K26 ["isOpen"]
      193 DUPTABLE                         R22 K30 [{"Anchor", "Content"}]
      194 GETUPVAL                         R23 0
      195 GETTABLEKS                       R23 R23 K23 ["createElement"]
      197 GETUPVAL                         R24 5
      198 GETTABLEKS                       R24 R24 K24 ["Popover"]
      200 GETTABLEKS                       R24 R24 K28 ["Anchor"]
      202 DUPTABLE                         R25 K32 [{"anchorRef"}]
      203 GETTABLEKS                       R26 R0 K31 ["anchorRef"]
      205 SETTABLEKS                       R26 R25 K31 ["anchorRef"]
      207 CALL                             R23 2 1
      208 SETTABLEKS                       R23 R22 K28 ["Anchor"]
      210 GETUPVAL                         R23 0
      211 GETTABLEKS                       R23 R23 K23 ["createElement"]
      213 GETUPVAL                         R24 5
      214 GETTABLEKS                       R24 R24 K24 ["Popover"]
      216 GETTABLEKS                       R24 R24 K29 ["Content"]
      218 DUPTABLE                         R25 K37 [{["align"], ["side"], ["sideOffset"] = -24}]
      219 GETUPVAL                         R26 5
      220 GETTABLEKS                       R26 R26 K38 ["Enums"]
      222 GETTABLEKS                       R26 R26 K39 ["PopoverAlign"]
      224 GETTABLEKS                       R26 R26 K40 ["Center"]
      226 SETTABLEKS                       R26 R25 K33 ["align"]
      228 GETUPVAL                         R26 5
      229 GETTABLEKS                       R26 R26 K38 ["Enums"]
      231 GETTABLEKS                       R26 R26 K41 ["PopoverSide"]
      233 GETTABLEKS                       R26 R26 K42 ["Bottom"]
      235 SETTABLEKS                       R26 R25 K34 ["side"]
      237 DUPTABLE                         R26 K44 [{"Body"}]
      238 GETUPVAL                         R27 0
      239 GETTABLEKS                       R27 R27 K23 ["createElement"]
      241 GETUPVAL                         R28 5
      242 GETTABLEKS                       R28 R28 K45 ["View"]
      244 DUPTABLE                         R29 K48 [{["tag"] = "row align-y-center gap-small auto-xy padding-large stroke-standard stroke-default radius-medium"}]
      245 DUPTABLE                         R30 K54 [{"Icon", "Message", "StarterPlayerButton", "SelectionButton", "DismissButton"}]
      246 GETUPVAL                         R31 0
      247 GETTABLEKS                       R31 R31 K23 ["createElement"]
      249 GETUPVAL                         R32 5
      250 GETTABLEKS                       R32 R32 K49 ["Icon"]
      252 DUPTABLE                         R33 K60 [{["name"], ["size"], ["style"], ["LayoutOrder"] = 1}]
      253 GETUPVAL                         R34 5
      254 GETTABLEKS                       R34 R34 K38 ["Enums"]
      256 GETTABLEKS                       R34 R34 K61 ["IconName"]
      258 GETTABLEKS                       R34 R34 K62 ["CircleI"]
      260 SETTABLEKS                       R34 R33 K55 ["name"]
      262 GETUPVAL                         R34 5
      263 GETTABLEKS                       R34 R34 K38 ["Enums"]
      265 GETTABLEKS                       R34 R34 K63 ["IconSize"]
      267 GETTABLEKS                       R34 R34 K64 ["Small"]
      269 SETTABLEKS                       R34 R33 K56 ["size"]
      271 GETTABLEKS                       R34 R5 K65 ["Color"]
      273 GETTABLEKS                       R34 R34 K66 ["Extended"]
      275 GETTABLEKS                       R34 R34 K67 ["Blue"]
      277 GETTABLEKS                       R34 R34 K68 ["Blue_600"]
      279 SETTABLEKS                       R34 R33 K57 ["style"]
      281 CALL                             R31 2 1
      282 SETTABLEKS                       R31 R30 K49 ["Icon"]
      284 GETUPVAL                         R31 0
      285 GETTABLEKS                       R31 R31 K23 ["createElement"]
      287 GETUPVAL                         R32 5
      288 GETTABLEKS                       R32 R32 K69 ["Text"]
      290 DUPTABLE                         R33 K72 [{["tag"] = "auto-xy", ["Text"], ["LayoutOrder"] = 2}]
      291 LOADK                            R36 K73 ["Common"]
      292 LOADK                            R37 K74 ["AnimationEditor"]
      293 LOADK                            R38 K75 ["GraphNotPlayedBanner"]
      294 LOADK                            R39 K76 ["AnimationDidntPlay"]
      295 NAMECALL                         R34 R6 K77 ["getExternalText"]
      297 CALL                             R34 5 1
      298 SETTABLEKS                       R34 R33 K69 ["Text"]
      300 CALL                             R31 2 1
      301 SETTABLEKS                       R31 R30 K50 ["Message"]
      303 GETUPVAL                         R31 0
      304 GETTABLEKS                       R31 R31 K23 ["createElement"]
      306 GETUPVAL                         R32 5
      307 GETTABLEKS                       R32 R32 K78 ["Button"]
      309 DUPTABLE                         R33 K83 [{["text"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 3}]
      310 LOADK                            R36 K73 ["Common"]
      311 LOADK                            R37 K74 ["AnimationEditor"]
      312 LOADK                            R38 K75 ["GraphNotPlayedBanner"]
      313 LOADK                            R39 K84 ["OnStarterPlayer"]
      314 NAMECALL                         R34 R6 K77 ["getExternalText"]
      316 CALL                             R34 5 1
      317 SETTABLEKS                       R34 R33 K79 ["text"]
      319 GETUPVAL                         R34 5
      320 GETTABLEKS                       R34 R34 K38 ["Enums"]
      322 GETTABLEKS                       R34 R34 K85 ["InputSize"]
      324 GETTABLEKS                       R34 R34 K64 ["Small"]
      326 SETTABLEKS                       R34 R33 K56 ["size"]
      328 GETUPVAL                         R34 5
      329 GETTABLEKS                       R34 R34 K38 ["Enums"]
      331 GETTABLEKS                       R34 R34 K86 ["ButtonVariant"]
      333 GETTABLEKS                       R34 R34 K87 ["Standard"]
      335 SETTABLEKS                       R34 R33 K80 ["variant"]
      337 SETTABLEKS                       R14 R33 K81 ["onActivated"]
      339 CALL                             R31 2 1
      340 SETTABLEKS                       R31 R30 K51 ["StarterPlayerButton"]
      342 MOVE                             R31 R18
      343 JUMPIFNOT                        R31 ; [+40]
      344 GETUPVAL                         R31 0
      345 GETTABLEKS                       R31 R31 K23 ["createElement"]
      347 GETUPVAL                         R32 5
      348 GETTABLEKS                       R32 R32 K78 ["Button"]
      350 DUPTABLE                         R33 K89 [{["text"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 4}]
      351 LOADK                            R36 K73 ["Common"]
      352 LOADK                            R37 K74 ["AnimationEditor"]
      353 LOADK                            R38 K75 ["GraphNotPlayedBanner"]
      354 LOADK                            R39 K90 ["OnSelection"]
      355 DUPTABLE                         R40 K92 [{"selection"}]
      356 SETTABLEKS                       R18 R40 K91 ["selection"]
      358 NAMECALL                         R34 R6 K77 ["getExternalText"]
      360 CALL                             R34 6 1
      361 SETTABLEKS                       R34 R33 K79 ["text"]
      363 GETUPVAL                         R34 5
      364 GETTABLEKS                       R34 R34 K38 ["Enums"]
      366 GETTABLEKS                       R34 R34 K85 ["InputSize"]
      368 GETTABLEKS                       R34 R34 K64 ["Small"]
      370 SETTABLEKS                       R34 R33 K56 ["size"]
      372 GETUPVAL                         R34 5
      373 GETTABLEKS                       R34 R34 K38 ["Enums"]
      375 GETTABLEKS                       R34 R34 K86 ["ButtonVariant"]
      377 GETTABLEKS                       R34 R34 K87 ["Standard"]
      379 SETTABLEKS                       R34 R33 K80 ["variant"]
      381 SETTABLEKS                       R15 R33 K81 ["onActivated"]
      383 CALL                             R31 2 1
      384 SETTABLEKS                       R31 R30 K52 ["SelectionButton"]
      386 GETUPVAL                         R31 0
      387 GETTABLEKS                       R31 R31 K23 ["createElement"]
      389 GETUPVAL                         R32 5
      390 GETTABLEKS                       R32 R32 K78 ["Button"]
      392 DUPTABLE                         R33 K95 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 5}]
      393 GETUPVAL                         R34 5
      394 GETTABLEKS                       R34 R34 K38 ["Enums"]
      396 GETTABLEKS                       R34 R34 K61 ["IconName"]
      398 GETTABLEKS                       R34 R34 K96 ["X"]
      400 SETTABLEKS                       R34 R33 K93 ["icon"]
      402 GETUPVAL                         R34 5
      403 GETTABLEKS                       R34 R34 K38 ["Enums"]
      405 GETTABLEKS                       R34 R34 K85 ["InputSize"]
      407 GETTABLEKS                       R34 R34 K64 ["Small"]
      409 SETTABLEKS                       R34 R33 K56 ["size"]
      411 GETUPVAL                         R34 5
      412 GETTABLEKS                       R34 R34 K38 ["Enums"]
      414 GETTABLEKS                       R34 R34 K86 ["ButtonVariant"]
      416 GETTABLEKS                       R34 R34 K97 ["Utility"]
      418 SETTABLEKS                       R34 R33 K80 ["variant"]
      420 SETTABLEKS                       R16 R33 K81 ["onActivated"]
      422 CALL                             R31 2 1
      423 SETTABLEKS                       R31 R30 K53 ["DismissButton"]
      425 CALL                             R27 3 1
      426 SETTABLEKS                       R27 R26 K43 ["Body"]
      428 CALL                             R23 3 1
      429 SETTABLEKS                       R23 R22 K29 ["Content"]
      431 CALL                             R19 3 -1
      432 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["CreateGraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["CreateScriptContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K14 ["GraphPlayedContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K15 ["NativeGraphContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Parent"]
       60 GETTABLEKS                       R9 R9 K16 ["React"]
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
