PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isPreviewRunning"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K1 ["current"]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R0 R1 K2 ["previewHasEnded"]
       18 JUMPIFNOT                        R0 ; [+14]
       19 GETUPVAL                         R0 4
       20 JUMPIFNOTEQKNIL                  R0 ; [+12]
       22 GETUPVAL                         R0 5
       23 JUMPIFEQKNIL                     R0 ; [+5]
       25 GETUPVAL                         R0 2
       26 GETUPVAL                         R1 5
       27 CALL                             R0 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R0 3
       30 LOADB                            R1 1
       31 SETTABLEKS                       R1 R0 K1 ["current"]
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+8]
        7 GETUPVAL                         R0 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K0 ["current"]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
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
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K9 ["useState"]
       49 LOADB                            R10 0
       50 CALL                             R9 1 2
       51 GETUPVAL                         R12 0
       52 GETTABLEKS                       R11 R12 K9 ["useState"]
       54 LOADNIL                          R12
       55 CALL                             R11 1 2
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R13 R14 K10 ["useRef"]
       59 LOADB                            R14 0
       60 CALL                             R13 1 1
       61 GETTABLEKS                       R14 R2 K11 ["graphAnimationWasPlayed"]
       63 JUMPIF                           R14 ; [+4]
       64 GETTABLEKS                       R14 R2 K12 ["wasGraphPlayed"]
       66 MOVE                             R15 R7
       67 CALL                             R14 1 1
       68 GETUPVAL                         R16 0
       69 GETTABLEKS                       R15 R16 K13 ["useEffect"]
       71 NEWCLOSURE                       R16 P0
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R8
       78 NEWTABLE                         R17 0 4
       80 GETTABLEKS                       R18 R2 K14 ["isPreviewRunning"]
       82 GETTABLEKS                       R19 R2 K15 ["previewHasEnded"]
       84 MOVE                             R20 R8
       85 MOVE                             R21 R11
       86 SETLIST                          R17 R18 4 [1]
       88 CALL                             R15 2 0
       89 GETUPVAL                         R16 0
       90 GETTABLEKS                       R15 R16 K13 ["useEffect"]
       92 NEWCLOSURE                       R16 P1
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R12
       96 NEWTABLE                         R17 0 1
       98 MOVE                             R18 R8
       99 SETLIST                          R17 R18 1 [1]
      101 CALL                             R15 2 0
      102 GETUPVAL                         R16 0
      103 GETTABLEKS                       R15 R16 K10 ["useRef"]
      105 GETTABLEKS                       R16 R3 K16 ["sourceAssetId"]
      107 CALL                             R15 1 1
      108 GETUPVAL                         R17 0
      109 GETTABLEKS                       R16 R17 K13 ["useEffect"]
      111 NEWCLOSURE                       R17 P2
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R10
      115 NEWTABLE                         R18 0 1
      117 GETTABLEKS                       R19 R3 K16 ["sourceAssetId"]
      119 SETLIST                          R18 R19 1 [1]
      121 CALL                             R16 2 0
      122 LOADB                            R16 0
      123 JUMPIFEQKNIL                     R8 ; [+5]
      125 JUMPIFEQ                         R8 R11 ; [+2]
      127 LOADB                            R16 0 +1
      128 LOADB                            R16 1
      129 GETUPVAL                         R18 0
      130 GETTABLEKS                       R17 R18 K17 ["useCallback"]
      132 NEWCLOSURE                       R18 P3
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R10
      135 NEWTABLE                         R19 0 1
      137 GETTABLEKS                       R20 R4 K18 ["createScriptForStarterPlayerAsync"]
      139 SETLIST                          R19 R20 1 [1]
      141 CALL                             R17 2 1
      142 GETUPVAL                         R19 0
      143 GETTABLEKS                       R18 R19 K17 ["useCallback"]
      145 NEWCLOSURE                       R19 P4
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R10
      148 NEWTABLE                         R20 0 1
      150 GETTABLEKS                       R21 R4 K19 ["createScriptForSelectedGraphAsync"]
      152 SETLIST                          R20 R21 1 [1]
      154 CALL                             R18 2 1
      155 GETUPVAL                         R20 0
      156 GETTABLEKS                       R19 R20 K17 ["useCallback"]
      158 NEWCLOSURE                       R20 P5
      159 CAPTURE                          VAL R10
      160 NEWTABLE                         R21 0 0
      162 CALL                             R19 2 1
      163 GETTABLEKS                       R20 R2 K15 ["previewHasEnded"]
      165 JUMPIFNOT                        R20 ; [+15]
      166 GETTABLEKS                       R21 R2 K14 ["isPreviewRunning"]
      168 NOT                              R20 R21
      169 JUMPIFNOT                        R20 ; [+11]
      170 LOADB                            R20 0
      171 JUMPIFEQKNIL                     R7 ; [+9]
      173 LOADB                            R20 0
      174 JUMPIFEQKS                       R7 K20 [""] ; [+6]
      176 MOVE                             R20 R16
      177 JUMPIFNOT                        R20 ; [+3]
      178 NOT                              R20 R14
      179 JUMPIFNOT                        R20 ; [+1]
      180 NOT                              R20 R9
      181 GETTABLEKS                       R21 R1 K21 ["selectedTargetName"]
      183 GETUPVAL                         R23 0
      184 GETTABLEKS                       R22 R23 K22 ["createElement"]
      186 GETUPVAL                         R25 5
      187 GETTABLEKS                       R24 R25 K23 ["Popover"]
      189 GETTABLEKS                       R23 R24 K24 ["Root"]
      191 DUPTABLE                         R24 K26 [{"isOpen"}]
      192 SETTABLEKS                       R20 R24 K25 ["isOpen"]
      194 DUPTABLE                         R25 K29 [{"Anchor", "Content"}]
      195 GETUPVAL                         R27 0
      196 GETTABLEKS                       R26 R27 K22 ["createElement"]
      198 GETUPVAL                         R29 5
      199 GETTABLEKS                       R28 R29 K23 ["Popover"]
      201 GETTABLEKS                       R27 R28 K27 ["Anchor"]
      203 DUPTABLE                         R28 K31 [{"anchorRef"}]
      204 GETTABLEKS                       R29 R0 K30 ["anchorRef"]
      206 SETTABLEKS                       R29 R28 K30 ["anchorRef"]
      208 CALL                             R26 2 1
      209 SETTABLEKS                       R26 R25 K27 ["Anchor"]
      211 GETUPVAL                         R27 0
      212 GETTABLEKS                       R26 R27 K22 ["createElement"]
      214 GETUPVAL                         R29 5
      215 GETTABLEKS                       R28 R29 K23 ["Popover"]
      217 GETTABLEKS                       R27 R28 K28 ["Content"]
      219 DUPTABLE                         R28 K35 [{"align", "side", "sideOffset"}]
      220 GETUPVAL                         R32 5
      221 GETTABLEKS                       R31 R32 K36 ["Enums"]
      223 GETTABLEKS                       R30 R31 K37 ["PopoverAlign"]
      225 GETTABLEKS                       R29 R30 K38 ["Center"]
      227 SETTABLEKS                       R29 R28 K32 ["align"]
      229 GETUPVAL                         R32 5
      230 GETTABLEKS                       R31 R32 K36 ["Enums"]
      232 GETTABLEKS                       R30 R31 K39 ["PopoverSide"]
      234 GETTABLEKS                       R29 R30 K40 ["Bottom"]
      236 SETTABLEKS                       R29 R28 K33 ["side"]
      238 LOADN                            R29 232
      239 SETTABLEKS                       R29 R28 K34 ["sideOffset"]
      241 DUPTABLE                         R29 K42 [{"Body"}]
      242 GETUPVAL                         R31 0
      243 GETTABLEKS                       R30 R31 K22 ["createElement"]
      245 GETUPVAL                         R32 5
      246 GETTABLEKS                       R31 R32 K43 ["View"]
      248 DUPTABLE                         R32 K45 [{"tag"}]
      249 LOADK                            R33 K46 ["row gap-small auto-xy padding-large align-y-center radius-medium stroke-standard stroke-default"]
      250 SETTABLEKS                       R33 R32 K44 ["tag"]
      252 DUPTABLE                         R33 K52 [{"Icon", "Message", "StarterPlayerButton", "SelectionButton", "DismissButton"}]
      253 GETUPVAL                         R35 0
      254 GETTABLEKS                       R34 R35 K22 ["createElement"]
      256 GETUPVAL                         R36 5
      257 GETTABLEKS                       R35 R36 K47 ["Icon"]
      259 DUPTABLE                         R36 K57 [{"name", "size", "style", "LayoutOrder"}]
      260 GETUPVAL                         R40 5
      261 GETTABLEKS                       R39 R40 K36 ["Enums"]
      263 GETTABLEKS                       R38 R39 K58 ["IconName"]
      265 GETTABLEKS                       R37 R38 K59 ["CircleI"]
      267 SETTABLEKS                       R37 R36 K53 ["name"]
      269 GETUPVAL                         R40 5
      270 GETTABLEKS                       R39 R40 K36 ["Enums"]
      272 GETTABLEKS                       R38 R39 K60 ["IconSize"]
      274 GETTABLEKS                       R37 R38 K61 ["Small"]
      276 SETTABLEKS                       R37 R36 K54 ["size"]
      278 GETTABLEKS                       R40 R5 K62 ["Color"]
      280 GETTABLEKS                       R39 R40 K63 ["Extended"]
      282 GETTABLEKS                       R38 R39 K64 ["Blue"]
      284 GETTABLEKS                       R37 R38 K65 ["Blue_600"]
      286 SETTABLEKS                       R37 R36 K55 ["style"]
      288 LOADN                            R37 1
      289 SETTABLEKS                       R37 R36 K56 ["LayoutOrder"]
      291 CALL                             R34 2 1
      292 SETTABLEKS                       R34 R33 K47 ["Icon"]
      294 GETUPVAL                         R35 0
      295 GETTABLEKS                       R34 R35 K22 ["createElement"]
      297 GETUPVAL                         R36 5
      298 GETTABLEKS                       R35 R36 K66 ["Text"]
      300 DUPTABLE                         R36 K67 [{"tag", "Text", "LayoutOrder"}]
      301 LOADK                            R37 K68 ["auto-xy"]
      302 SETTABLEKS                       R37 R36 K44 ["tag"]
      304 LOADK                            R39 K69 ["Common"]
      305 LOADK                            R40 K70 ["AnimationEditor"]
      306 LOADK                            R41 K71 ["GraphNotPlayedBanner"]
      307 LOADK                            R42 K72 ["AnimationDidntPlay"]
      308 NAMECALL                         R37 R6 K73 ["getExternalText"]
      310 CALL                             R37 5 1
      311 SETTABLEKS                       R37 R36 K66 ["Text"]
      313 LOADN                            R37 2
      314 SETTABLEKS                       R37 R36 K56 ["LayoutOrder"]
      316 CALL                             R34 2 1
      317 SETTABLEKS                       R34 R33 K48 ["Message"]
      319 GETUPVAL                         R35 0
      320 GETTABLEKS                       R34 R35 K22 ["createElement"]
      322 GETUPVAL                         R36 5
      323 GETTABLEKS                       R35 R36 K74 ["Button"]
      325 DUPTABLE                         R36 K78 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      326 LOADK                            R39 K69 ["Common"]
      327 LOADK                            R40 K70 ["AnimationEditor"]
      328 LOADK                            R41 K71 ["GraphNotPlayedBanner"]
      329 LOADK                            R42 K79 ["OnStarterPlayer"]
      330 NAMECALL                         R37 R6 K73 ["getExternalText"]
      332 CALL                             R37 5 1
      333 SETTABLEKS                       R37 R36 K75 ["text"]
      335 GETUPVAL                         R40 5
      336 GETTABLEKS                       R39 R40 K36 ["Enums"]
      338 GETTABLEKS                       R38 R39 K80 ["InputSize"]
      340 GETTABLEKS                       R37 R38 K61 ["Small"]
      342 SETTABLEKS                       R37 R36 K54 ["size"]
      344 GETUPVAL                         R40 5
      345 GETTABLEKS                       R39 R40 K36 ["Enums"]
      347 GETTABLEKS                       R38 R39 K81 ["ButtonVariant"]
      349 GETTABLEKS                       R37 R38 K82 ["Standard"]
      351 SETTABLEKS                       R37 R36 K76 ["variant"]
      353 SETTABLEKS                       R17 R36 K77 ["onActivated"]
      355 LOADN                            R37 3
      356 SETTABLEKS                       R37 R36 K56 ["LayoutOrder"]
      358 CALL                             R34 2 1
      359 SETTABLEKS                       R34 R33 K49 ["StarterPlayerButton"]
      361 MOVE                             R34 R21
      362 JUMPIFNOT                        R34 ; [+43]
      363 GETUPVAL                         R35 0
      364 GETTABLEKS                       R34 R35 K22 ["createElement"]
      366 GETUPVAL                         R36 5
      367 GETTABLEKS                       R35 R36 K74 ["Button"]
      369 DUPTABLE                         R36 K78 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      370 LOADK                            R39 K69 ["Common"]
      371 LOADK                            R40 K70 ["AnimationEditor"]
      372 LOADK                            R41 K71 ["GraphNotPlayedBanner"]
      373 LOADK                            R42 K83 ["OnSelection"]
      374 DUPTABLE                         R43 K85 [{"selection"}]
      375 SETTABLEKS                       R21 R43 K84 ["selection"]
      377 NAMECALL                         R37 R6 K73 ["getExternalText"]
      379 CALL                             R37 6 1
      380 SETTABLEKS                       R37 R36 K75 ["text"]
      382 GETUPVAL                         R40 5
      383 GETTABLEKS                       R39 R40 K36 ["Enums"]
      385 GETTABLEKS                       R38 R39 K80 ["InputSize"]
      387 GETTABLEKS                       R37 R38 K61 ["Small"]
      389 SETTABLEKS                       R37 R36 K54 ["size"]
      391 GETUPVAL                         R40 5
      392 GETTABLEKS                       R39 R40 K36 ["Enums"]
      394 GETTABLEKS                       R38 R39 K81 ["ButtonVariant"]
      396 GETTABLEKS                       R37 R38 K82 ["Standard"]
      398 SETTABLEKS                       R37 R36 K76 ["variant"]
      400 SETTABLEKS                       R18 R36 K77 ["onActivated"]
      402 LOADN                            R37 4
      403 SETTABLEKS                       R37 R36 K56 ["LayoutOrder"]
      405 CALL                             R34 2 1
      406 SETTABLEKS                       R34 R33 K50 ["SelectionButton"]
      408 GETUPVAL                         R35 0
      409 GETTABLEKS                       R34 R35 K22 ["createElement"]
      411 GETUPVAL                         R36 5
      412 GETTABLEKS                       R35 R36 K74 ["Button"]
      414 DUPTABLE                         R36 K87 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      415 GETUPVAL                         R40 5
      416 GETTABLEKS                       R39 R40 K36 ["Enums"]
      418 GETTABLEKS                       R38 R39 K58 ["IconName"]
      420 GETTABLEKS                       R37 R38 K88 ["X"]
      422 SETTABLEKS                       R37 R36 K86 ["icon"]
      424 GETUPVAL                         R40 5
      425 GETTABLEKS                       R39 R40 K36 ["Enums"]
      427 GETTABLEKS                       R38 R39 K80 ["InputSize"]
      429 GETTABLEKS                       R37 R38 K61 ["Small"]
      431 SETTABLEKS                       R37 R36 K54 ["size"]
      433 GETUPVAL                         R40 5
      434 GETTABLEKS                       R39 R40 K36 ["Enums"]
      436 GETTABLEKS                       R38 R39 K81 ["ButtonVariant"]
      438 GETTABLEKS                       R37 R38 K89 ["Utility"]
      440 SETTABLEKS                       R37 R36 K76 ["variant"]
      442 SETTABLEKS                       R19 R36 K77 ["onActivated"]
      444 LOADN                            R37 5
      445 SETTABLEKS                       R37 R36 K56 ["LayoutOrder"]
      447 CALL                             R34 2 1
      448 SETTABLEKS                       R34 R33 K51 ["DismissButton"]
      450 CALL                             R30 3 1
      451 SETTABLEKS                       R30 R29 K41 ["Body"]
      453 CALL                             R26 3 1
      454 SETTABLEKS                       R26 R25 K28 ["Content"]
      456 CALL                             R22 3 -1
      457 RETURN                           R22 -1

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
