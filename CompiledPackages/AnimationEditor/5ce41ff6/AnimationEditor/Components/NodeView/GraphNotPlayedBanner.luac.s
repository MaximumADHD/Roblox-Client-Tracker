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
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["current"]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R0 R1 K2 ["previewHasEnded"]
       18 JUMPIFNOT                        R0 ; [+10]
       19 GETUPVAL                         R0 4
       20 JUMPIFNOTEQKNIL                  R0 ; [+8]
       22 GETUPVAL                         R0 2
       23 GETUPVAL                         R1 5
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 3
       26 GETUPVAL                         R1 6
       27 SETTABLEKS                       R1 R0 K1 ["current"]
       29 RETURN                           R0 0

PROTO_1:
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
       75 GETTABLEKS                       R16 R17 K13 ["useEffect"]
       77 NEWCLOSURE                       R17 P0
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R7
       85 NEWTABLE                         R18 0 5
       87 GETTABLEKS                       R19 R2 K14 ["isPreviewRunning"]
       89 GETTABLEKS                       R20 R2 K15 ["previewHasEnded"]
       91 MOVE                             R21 R9
       92 MOVE                             R22 R13
       93 MOVE                             R23 R7
       94 SETLIST                          R18 R19 5 [1]
       96 CALL                             R16 2 0
       97 GETUPVAL                         R17 0
       98 GETTABLEKS                       R16 R17 K13 ["useEffect"]
      100 NEWCLOSURE                       R17 P1
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R12
      104 NEWTABLE                         R18 0 1
      106 MOVE                             R19 R7
      107 SETLIST                          R18 R19 1 [1]
      109 CALL                             R16 2 0
      110 LOADB                            R16 0
      111 JUMPIFEQKNIL                     R9 ; [+5]
      113 JUMPIFEQ                         R9 R13 ; [+2]
      115 LOADB                            R16 0 +1
      116 LOADB                            R16 1
      117 GETUPVAL                         R18 0
      118 GETTABLEKS                       R17 R18 K16 ["useCallback"]
      120 NEWCLOSURE                       R18 P2
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R12
      123 NEWTABLE                         R19 0 1
      125 GETTABLEKS                       R20 R4 K17 ["createScriptForStarterPlayerAsync"]
      127 SETLIST                          R19 R20 1 [1]
      129 CALL                             R17 2 1
      130 GETUPVAL                         R19 0
      131 GETTABLEKS                       R18 R19 K16 ["useCallback"]
      133 NEWCLOSURE                       R19 P3
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R12
      136 NEWTABLE                         R20 0 1
      138 GETTABLEKS                       R21 R4 K18 ["createScriptForSelectedGraphAsync"]
      140 SETLIST                          R20 R21 1 [1]
      142 CALL                             R18 2 1
      143 GETUPVAL                         R20 0
      144 GETTABLEKS                       R19 R20 K16 ["useCallback"]
      146 NEWCLOSURE                       R20 P4
      147 CAPTURE                          VAL R12
      148 NEWTABLE                         R21 0 0
      150 CALL                             R19 2 1
      151 GETTABLEKS                       R20 R2 K15 ["previewHasEnded"]
      153 JUMPIFNOT                        R20 ; [+15]
      154 GETTABLEKS                       R21 R2 K14 ["isPreviewRunning"]
      156 NOT                              R20 R21
      157 JUMPIFNOT                        R20 ; [+11]
      158 LOADB                            R20 0
      159 JUMPIFEQKNIL                     R7 ; [+9]
      161 LOADB                            R20 0
      162 JUMPIFEQKS                       R7 K19 [""] ; [+6]
      164 MOVE                             R20 R16
      165 JUMPIFNOT                        R20 ; [+3]
      166 NOT                              R20 R10
      167 JUMPIFNOT                        R20 ; [+1]
      168 NOT                              R20 R11
      169 GETTABLEKS                       R21 R1 K20 ["selectedTargetName"]
      171 GETUPVAL                         R23 0
      172 GETTABLEKS                       R22 R23 K21 ["createElement"]
      174 GETUPVAL                         R25 5
      175 GETTABLEKS                       R24 R25 K22 ["Popover"]
      177 GETTABLEKS                       R23 R24 K23 ["Root"]
      179 DUPTABLE                         R24 K25 [{"isOpen"}]
      180 SETTABLEKS                       R20 R24 K24 ["isOpen"]
      182 DUPTABLE                         R25 K28 [{"Anchor", "Content"}]
      183 GETUPVAL                         R27 0
      184 GETTABLEKS                       R26 R27 K21 ["createElement"]
      186 GETUPVAL                         R29 5
      187 GETTABLEKS                       R28 R29 K22 ["Popover"]
      189 GETTABLEKS                       R27 R28 K26 ["Anchor"]
      191 DUPTABLE                         R28 K30 [{"anchorRef"}]
      192 GETTABLEKS                       R29 R0 K29 ["anchorRef"]
      194 SETTABLEKS                       R29 R28 K29 ["anchorRef"]
      196 CALL                             R26 2 1
      197 SETTABLEKS                       R26 R25 K26 ["Anchor"]
      199 GETUPVAL                         R27 0
      200 GETTABLEKS                       R26 R27 K21 ["createElement"]
      202 GETUPVAL                         R29 5
      203 GETTABLEKS                       R28 R29 K22 ["Popover"]
      205 GETTABLEKS                       R27 R28 K27 ["Content"]
      207 DUPTABLE                         R28 K34 [{"align", "side", "sideOffset"}]
      208 GETUPVAL                         R32 5
      209 GETTABLEKS                       R31 R32 K35 ["Enums"]
      211 GETTABLEKS                       R30 R31 K36 ["PopoverAlign"]
      213 GETTABLEKS                       R29 R30 K37 ["Center"]
      215 SETTABLEKS                       R29 R28 K31 ["align"]
      217 GETUPVAL                         R32 5
      218 GETTABLEKS                       R31 R32 K35 ["Enums"]
      220 GETTABLEKS                       R30 R31 K38 ["PopoverSide"]
      222 GETTABLEKS                       R29 R30 K39 ["Bottom"]
      224 SETTABLEKS                       R29 R28 K32 ["side"]
      226 LOADN                            R29 232
      227 SETTABLEKS                       R29 R28 K33 ["sideOffset"]
      229 DUPTABLE                         R29 K41 [{"Body"}]
      230 GETUPVAL                         R31 0
      231 GETTABLEKS                       R30 R31 K21 ["createElement"]
      233 GETUPVAL                         R32 5
      234 GETTABLEKS                       R31 R32 K42 ["View"]
      236 DUPTABLE                         R32 K44 [{"tag"}]
      237 LOADK                            R33 K45 ["row gap-small auto-xy padding-large align-y-center radius-medium stroke-standard stroke-default"]
      238 SETTABLEKS                       R33 R32 K43 ["tag"]
      240 DUPTABLE                         R33 K51 [{"Icon", "Message", "StarterPlayerButton", "SelectionButton", "DismissButton"}]
      241 GETUPVAL                         R35 0
      242 GETTABLEKS                       R34 R35 K21 ["createElement"]
      244 GETUPVAL                         R36 5
      245 GETTABLEKS                       R35 R36 K46 ["Icon"]
      247 DUPTABLE                         R36 K56 [{"name", "size", "style", "LayoutOrder"}]
      248 GETUPVAL                         R40 5
      249 GETTABLEKS                       R39 R40 K35 ["Enums"]
      251 GETTABLEKS                       R38 R39 K57 ["IconName"]
      253 GETTABLEKS                       R37 R38 K58 ["CircleI"]
      255 SETTABLEKS                       R37 R36 K52 ["name"]
      257 GETUPVAL                         R40 5
      258 GETTABLEKS                       R39 R40 K35 ["Enums"]
      260 GETTABLEKS                       R38 R39 K59 ["IconSize"]
      262 GETTABLEKS                       R37 R38 K60 ["Small"]
      264 SETTABLEKS                       R37 R36 K53 ["size"]
      266 GETTABLEKS                       R40 R5 K61 ["Color"]
      268 GETTABLEKS                       R39 R40 K62 ["Extended"]
      270 GETTABLEKS                       R38 R39 K63 ["Blue"]
      272 GETTABLEKS                       R37 R38 K64 ["Blue_600"]
      274 SETTABLEKS                       R37 R36 K54 ["style"]
      276 LOADN                            R37 1
      277 SETTABLEKS                       R37 R36 K55 ["LayoutOrder"]
      279 CALL                             R34 2 1
      280 SETTABLEKS                       R34 R33 K46 ["Icon"]
      282 GETUPVAL                         R35 0
      283 GETTABLEKS                       R34 R35 K21 ["createElement"]
      285 GETUPVAL                         R36 5
      286 GETTABLEKS                       R35 R36 K65 ["Text"]
      288 DUPTABLE                         R36 K66 [{"tag", "Text", "LayoutOrder"}]
      289 LOADK                            R37 K67 ["auto-xy"]
      290 SETTABLEKS                       R37 R36 K43 ["tag"]
      292 LOADK                            R39 K68 ["Common"]
      293 LOADK                            R40 K69 ["AnimationEditor"]
      294 LOADK                            R41 K70 ["GraphNotPlayedBanner"]
      295 LOADK                            R42 K71 ["AnimationDidntPlay"]
      296 NAMECALL                         R37 R6 K72 ["getExternalText"]
      298 CALL                             R37 5 1
      299 SETTABLEKS                       R37 R36 K65 ["Text"]
      301 LOADN                            R37 2
      302 SETTABLEKS                       R37 R36 K55 ["LayoutOrder"]
      304 CALL                             R34 2 1
      305 SETTABLEKS                       R34 R33 K47 ["Message"]
      307 GETUPVAL                         R35 0
      308 GETTABLEKS                       R34 R35 K21 ["createElement"]
      310 GETUPVAL                         R36 5
      311 GETTABLEKS                       R35 R36 K73 ["Button"]
      313 DUPTABLE                         R36 K77 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      314 LOADK                            R39 K68 ["Common"]
      315 LOADK                            R40 K69 ["AnimationEditor"]
      316 LOADK                            R41 K70 ["GraphNotPlayedBanner"]
      317 LOADK                            R42 K78 ["OnStarterPlayer"]
      318 NAMECALL                         R37 R6 K72 ["getExternalText"]
      320 CALL                             R37 5 1
      321 SETTABLEKS                       R37 R36 K74 ["text"]
      323 GETUPVAL                         R40 5
      324 GETTABLEKS                       R39 R40 K35 ["Enums"]
      326 GETTABLEKS                       R38 R39 K79 ["InputSize"]
      328 GETTABLEKS                       R37 R38 K60 ["Small"]
      330 SETTABLEKS                       R37 R36 K53 ["size"]
      332 GETUPVAL                         R40 5
      333 GETTABLEKS                       R39 R40 K35 ["Enums"]
      335 GETTABLEKS                       R38 R39 K80 ["ButtonVariant"]
      337 GETTABLEKS                       R37 R38 K81 ["Standard"]
      339 SETTABLEKS                       R37 R36 K75 ["variant"]
      341 SETTABLEKS                       R17 R36 K76 ["onActivated"]
      343 LOADN                            R37 3
      344 SETTABLEKS                       R37 R36 K55 ["LayoutOrder"]
      346 CALL                             R34 2 1
      347 SETTABLEKS                       R34 R33 K48 ["StarterPlayerButton"]
      349 MOVE                             R34 R21
      350 JUMPIFNOT                        R34 ; [+43]
      351 GETUPVAL                         R35 0
      352 GETTABLEKS                       R34 R35 K21 ["createElement"]
      354 GETUPVAL                         R36 5
      355 GETTABLEKS                       R35 R36 K73 ["Button"]
      357 DUPTABLE                         R36 K77 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      358 LOADK                            R39 K68 ["Common"]
      359 LOADK                            R40 K69 ["AnimationEditor"]
      360 LOADK                            R41 K70 ["GraphNotPlayedBanner"]
      361 LOADK                            R42 K82 ["OnSelection"]
      362 DUPTABLE                         R43 K84 [{"selection"}]
      363 SETTABLEKS                       R21 R43 K83 ["selection"]
      365 NAMECALL                         R37 R6 K72 ["getExternalText"]
      367 CALL                             R37 6 1
      368 SETTABLEKS                       R37 R36 K74 ["text"]
      370 GETUPVAL                         R40 5
      371 GETTABLEKS                       R39 R40 K35 ["Enums"]
      373 GETTABLEKS                       R38 R39 K79 ["InputSize"]
      375 GETTABLEKS                       R37 R38 K60 ["Small"]
      377 SETTABLEKS                       R37 R36 K53 ["size"]
      379 GETUPVAL                         R40 5
      380 GETTABLEKS                       R39 R40 K35 ["Enums"]
      382 GETTABLEKS                       R38 R39 K80 ["ButtonVariant"]
      384 GETTABLEKS                       R37 R38 K85 ["Emphasis"]
      386 SETTABLEKS                       R37 R36 K75 ["variant"]
      388 SETTABLEKS                       R18 R36 K76 ["onActivated"]
      390 LOADN                            R37 4
      391 SETTABLEKS                       R37 R36 K55 ["LayoutOrder"]
      393 CALL                             R34 2 1
      394 SETTABLEKS                       R34 R33 K49 ["SelectionButton"]
      396 GETUPVAL                         R35 0
      397 GETTABLEKS                       R34 R35 K21 ["createElement"]
      399 GETUPVAL                         R36 5
      400 GETTABLEKS                       R35 R36 K73 ["Button"]
      402 DUPTABLE                         R36 K87 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      403 GETUPVAL                         R40 5
      404 GETTABLEKS                       R39 R40 K35 ["Enums"]
      406 GETTABLEKS                       R38 R39 K57 ["IconName"]
      408 GETTABLEKS                       R37 R38 K88 ["X"]
      410 SETTABLEKS                       R37 R36 K86 ["icon"]
      412 GETUPVAL                         R40 5
      413 GETTABLEKS                       R39 R40 K35 ["Enums"]
      415 GETTABLEKS                       R38 R39 K79 ["InputSize"]
      417 GETTABLEKS                       R37 R38 K60 ["Small"]
      419 SETTABLEKS                       R37 R36 K53 ["size"]
      421 GETUPVAL                         R40 5
      422 GETTABLEKS                       R39 R40 K35 ["Enums"]
      424 GETTABLEKS                       R38 R39 K80 ["ButtonVariant"]
      426 GETTABLEKS                       R37 R38 K89 ["Utility"]
      428 SETTABLEKS                       R37 R36 K75 ["variant"]
      430 SETTABLEKS                       R19 R36 K76 ["onActivated"]
      432 LOADN                            R37 5
      433 SETTABLEKS                       R37 R36 K55 ["LayoutOrder"]
      435 CALL                             R34 2 1
      436 SETTABLEKS                       R34 R33 K50 ["DismissButton"]
      438 CALL                             R30 3 1
      439 SETTABLEKS                       R30 R29 K40 ["Body"]
      441 CALL                             R26 3 1
      442 SETTABLEKS                       R26 R25 K27 ["Content"]
      444 CALL                             R22 3 -1
      445 RETURN                           R22 -1

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
