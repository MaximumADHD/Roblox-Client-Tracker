PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["close"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["close"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["Assistant"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETTABLEKS                       R1 R0 K6 ["Packages"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["TestLoader"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K10 ["launch"]
       20 LOADK                            R4 K4 ["Assistant"]
       21 GETTABLEKS                       R5 R0 K11 ["Src"]
       23 CALL                             R3 2 0
       24 GETTABLEKS                       R3 R2 K12 ["isCli"]
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R3 K8 [require]
       31 GETTABLEKS                       R4 R1 K13 ["SafeFlags"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K14 ["createGetFFlag"]
       36 LOADK                            R5 K15 ["IsLuobuBuild"]
       37 CALL                             R4 1 1
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+1]
       40 RETURN                           R0 0
       41 GETIMPORT                        R5 K8 [require]
       43 GETTABLEKS                       R6 R0 K16 ["Bin"]
       45 GETTABLEKS                       R6 R6 K17 ["Common"]
       47 GETTABLEKS                       R6 R6 K18 ["isAssistantEnabled"]
       49 CALL                             R5 1 1
       50 MOVE                             R6 R5
       51 CALL                             R6 0 1
       52 JUMPIF                           R6 ; [+1]
       53 RETURN                           R0 0
       54 GETIMPORT                        R6 K20 [game]
       56 LOADK                            R8 K21 ["RunService"]
       57 NAMECALL                         R6 R6 K22 ["GetService"]
       59 CALL                             R6 2 1
       60 GETIMPORT                        R7 K8 [require]
       62 GETTABLEKS                       R8 R0 K16 ["Bin"]
       64 GETTABLEKS                       R8 R8 K17 ["Common"]
       66 GETTABLEKS                       R8 R8 K23 ["pluginType"]
       68 CALL                             R7 1 1
       69 LOADB                            R8 0
       70 GETTABLEKS                       R9 R7 K24 ["get"]
       72 CALL                             R9 0 1
       73 GETTABLEKS                       R10 R7 K25 ["Asset"]
       75 JUMPIFNOTEQ                      R9 R10 ; [+4]
       77 NAMECALL                         R8 R6 K26 ["IsEdit"]
       79 CALL                             R8 1 1
       80 JUMPIFNOT                        R8 ; [+9]
       81 GETIMPORT                        R9 K8 [require]
       83 GETTABLEKS                       R10 R1 K27 ["ReactDeveloperTools"]
       85 CALL                             R9 1 1
       86 GETTABLEKS                       R10 R9 K28 ["tryEnableDevtools"]
       88 DUPTABLE                         R11 K32 [{["pluginName"] = "Assistant", ["profileOnStart"] = False}]
       89 CALL                             R10 1 0
       90 GETIMPORT                        R9 K8 [require]
       92 GETTABLEKS                       R10 R1 K33 ["AssistantUI"]
       94 CALL                             R9 1 1
       95 GETIMPORT                        R10 K8 [require]
       97 GETTABLEKS                       R11 R0 K11 ["Src"]
       99 GETTABLEKS                       R11 R11 K34 ["Util"]
      101 GETTABLEKS                       R11 R11 K35 ["ConsoleOutputManager"]
      103 CALL                             R10 1 1
      104 GETIMPORT                        R11 K8 [require]
      106 GETTABLEKS                       R12 R1 K36 ["DMNetworking"]
      108 CALL                             R11 1 1
      109 GETIMPORT                        R12 K8 [require]
      111 GETTABLEKS                       R13 R0 K11 ["Src"]
      113 GETTABLEKS                       R13 R13 K37 ["Flags"]
      115 CALL                             R12 1 1
      116 GETIMPORT                        R13 K8 [require]
      118 GETTABLEKS                       R14 R0 K11 ["Src"]
      120 GETTABLEKS                       R14 R14 K34 ["Util"]
      122 GETTABLEKS                       R14 R14 K38 ["StudioNetworkingOLD"]
      124 CALL                             R13 1 1
      125 GETTABLEKS                       R14 R9 K39 ["Utils"]
      127 GETTABLEKS                       R14 R14 K40 ["DataModelType"]
      129 GETTABLEKS                       R15 R14 K41 ["getDataModelType"]
      131 CALL                             R15 0 1
      132 GETTABLEKS                       R16 R9 K39 ["Utils"]
      134 GETTABLEKS                       R16 R16 K42 ["MultiPlayersAgentServer"]
      136 GETTABLEKS                       R17 R9 K39 ["Utils"]
      138 GETTABLEKS                       R17 R17 K43 ["MultiPlayersAgentClient"]
      140 LOADNIL                          R18
      141 LOADNIL                          R19
      142 GETTABLEKS                       R20 R12 K44 ["FFlagAssistantUseNewDMNetworking"]
      144 JUMPIFNOT                        R20 ; [+44]
      145 LOADNIL                          R20
      146 GETTABLEKS                       R21 R12 K45 ["FFlagDebugLogAssistantUI"]
      148 JUMPIFNOT                        R21 ; [+19]
      149 GETTABLEKS                       R21 R11 K46 ["LogLevel"]
      151 GETTABLEKS                       R22 R12 K47 ["FStringDebugLogAssistantUILogLevel"]
      153 GETTABLE                         R20 R21 R22
      154 JUMPIF                           R20 ; [+13]
      155 GETIMPORT                        R21 K49 [warn]
      157 LOADK                            R22 K50 ["[Assistant] Unknown FStringDebugLogAssistantUILogLevel \"%*\"; using Debug"]
      158 GETTABLEKS                       R24 R12 K47 ["FStringDebugLogAssistantUILogLevel"]
      160 NAMECALL                         R22 R22 K51 ["format"]
      162 CALL                             R22 2 1
      163 CALL                             R21 1 0
      164 GETTABLEKS                       R21 R11 K46 ["LogLevel"]
      166 GETTABLEKS                       R20 R21 K52 ["Debug"]
      168 GETTABLEKS                       R21 R11 K53 ["new"]
      170 DUPTABLE                         R22 K58 [{[1], ["identity"], ["logLevel"], ["useSuspendOverride"] = True}]
      171 GETIMPORT                        R23 K1 [plugin]
      173 SETTABLEKS                       R23 R22 K0 ["plugin"]
      175 GETTABLEKS                       R23 R9 K39 ["Utils"]
      177 GETTABLEKS                       R23 R23 K59 ["NetworkingIdentity"]
      179 GETTABLEKS                       R23 R23 K60 ["getSelfIdentity"]
      181 CALL                             R23 0 1
      182 SETTABLEKS                       R23 R22 K54 ["identity"]
      184 SETTABLEKS                       R20 R22 K55 ["logLevel"]
      186 CALL                             R21 1 1
      187 MOVE                             R19 R21
      188 JUMP                             ; [+13]
      189 GETTABLEKS                       R20 R13 K61 ["create"]
      191 DUPTABLE                         R21 K64 [{[1], ["isGuest"], ["isHost"] = True, ["identity"], ["useSuspendOverride"] = True}]
      192 GETIMPORT                        R22 K1 [plugin]
      194 SETTABLEKS                       R22 R21 K0 ["plugin"]
      196 SETTABLEKS                       R8 R21 K62 ["isGuest"]
      198 SETTABLEKS                       R15 R21 K54 ["identity"]
      200 CALL                             R20 1 1
      201 MOVE                             R18 R20
      202 GETTABLEKS                       R20 R12 K65 ["FFlagAssistantConsoleOutputTailFromEnd"]
      204 JUMPIFNOT                        R20 ; [+7]
      205 GETTABLEKS                       R20 R10 K66 ["init"]
      207 GETIMPORT                        R21 K1 [plugin]
      209 MOVE                             R22 R18
      210 MOVE                             R23 R19
      211 CALL                             R20 3 0
      212 GETTABLEKS                       R20 R14 K67 ["Types"]
      214 GETTABLEKS                       R20 R20 K68 ["Client"]
      216 JUMPIFNOTEQ                      R15 R20 ; [+35]
      218 GETIMPORT                        R20 K8 [require]
      220 GETTABLEKS                       R21 R0 K11 ["Src"]
      222 GETTABLEKS                       R21 R21 K34 ["Util"]
      224 GETTABLEKS                       R21 R21 K69 ["GameLoadedNotifier"]
      226 CALL                             R20 1 1
      227 GETTABLEKS                       R21 R20 K66 ["init"]
      229 MOVE                             R22 R15
      230 GETIMPORT                        R23 K1 [plugin]
      232 MOVE                             R24 R18
      233 MOVE                             R25 R19
      234 CALL                             R21 4 0
      235 GETTABLEKS                       R21 R12 K70 ["FFlagAssistantMultiPlayerAgents"]
      237 JUMPIFNOT                        R21 ; [+14]
      238 GETTABLEKS                       R21 R17 K66 ["init"]
      240 MOVE                             R22 R18
      241 MOVE                             R23 R19
      242 CALL                             R21 2 0
      243 GETIMPORT                        R21 K1 [plugin]
      245 GETTABLEKS                       R21 R21 K71 ["Unloading"]
      247 DUPCLOSURE                       R23 K72 [PROTO_0]
      248 CAPTURE                          VAL R17
      249 NAMECALL                         R21 R21 K73 ["Connect"]
      251 CALL                             R21 2 0
      252 GETTABLEKS                       R20 R14 K67 ["Types"]
      254 GETTABLEKS                       R20 R20 K74 ["Server"]
      256 JUMPIFNOTEQ                      R15 R20 ; [+18]
      258 GETIMPORT                        R20 K8 [require]
      260 GETTABLEKS                       R21 R0 K11 ["Src"]
      262 GETTABLEKS                       R21 R21 K34 ["Util"]
      264 GETTABLEKS                       R21 R21 K75 ["GameStoppedNotifier"]
      266 CALL                             R20 1 1
      267 GETTABLEKS                       R21 R20 K66 ["init"]
      269 MOVE                             R22 R15
      270 GETIMPORT                        R23 K1 [plugin]
      272 MOVE                             R24 R18
      273 MOVE                             R25 R19
      274 CALL                             R21 4 0
      275 GETTABLEKS                       R20 R12 K76 ["FFlagAssistantEval"]
      277 JUMPIFNOT                        R20 ; [+108]
      278 GETIMPORT                        R20 K8 [require]
      280 GETTABLEKS                       R21 R0 K11 ["Src"]
      282 GETTABLEKS                       R21 R21 K77 ["EvalDriver"]
      284 GETTABLEKS                       R21 R21 K78 ["EvalUtils"]
      286 CALL                             R20 1 1
      287 GETTABLEKS                       R21 R20 K66 ["init"]
      289 GETIMPORT                        R22 K1 [plugin]
      291 CALL                             R21 1 0
      292 GETTABLEKS                       R21 R14 K67 ["Types"]
      294 GETTABLEKS                       R21 R21 K74 ["Server"]
      296 JUMPIFNOTEQ                      R15 R21 ; [+31]
      298 GETIMPORT                        R21 K8 [require]
      300 GETTABLEKS                       R22 R0 K11 ["Src"]
      302 GETTABLEKS                       R22 R22 K77 ["EvalDriver"]
      304 GETTABLEKS                       R22 R22 K79 ["EvalDriverPlaySoloServerDM"]
      306 CALL                             R21 1 1
      307 GETIMPORT                        R22 K8 [require]
      309 GETTABLEKS                       R23 R0 K11 ["Src"]
      311 GETTABLEKS                       R23 R23 K77 ["EvalDriver"]
      313 GETTABLEKS                       R23 R23 K80 ["EvalDriverMultiPlayers"]
      315 CALL                             R22 1 1
      316 GETTABLEKS                       R23 R21 K66 ["init"]
      318 GETIMPORT                        R24 K1 [plugin]
      320 MOVE                             R25 R18
      321 MOVE                             R26 R19
      322 CALL                             R23 3 0
      323 GETTABLEKS                       R23 R22 K66 ["init"]
      325 GETIMPORT                        R24 K1 [plugin]
      327 CALL                             R23 1 0
      328 GETTABLEKS                       R21 R14 K67 ["Types"]
      330 GETTABLEKS                       R21 R21 K68 ["Client"]
      332 JUMPIFNOTEQ                      R15 R21 ; [+31]
      334 GETIMPORT                        R21 K8 [require]
      336 GETTABLEKS                       R22 R0 K11 ["Src"]
      338 GETTABLEKS                       R22 R22 K77 ["EvalDriver"]
      340 GETTABLEKS                       R22 R22 K81 ["EvalDriverPlaySoloClientDM"]
      342 CALL                             R21 1 1
      343 GETIMPORT                        R22 K8 [require]
      345 GETTABLEKS                       R23 R0 K11 ["Src"]
      347 GETTABLEKS                       R23 R23 K77 ["EvalDriver"]
      349 GETTABLEKS                       R23 R23 K80 ["EvalDriverMultiPlayers"]
      351 CALL                             R22 1 1
      352 GETTABLEKS                       R23 R21 K66 ["init"]
      354 GETIMPORT                        R24 K1 [plugin]
      356 MOVE                             R25 R18
      357 MOVE                             R26 R19
      358 CALL                             R23 3 0
      359 GETTABLEKS                       R23 R22 K66 ["init"]
      361 GETIMPORT                        R24 K1 [plugin]
      363 CALL                             R23 1 0
      364 GETTABLEKS                       R21 R14 K67 ["Types"]
      366 GETTABLEKS                       R21 R21 K82 ["Edit"]
      368 JUMPIFNOTEQ                      R15 R21 ; [+17]
      370 GETIMPORT                        R21 K8 [require]
      372 GETTABLEKS                       R22 R0 K11 ["Src"]
      374 GETTABLEKS                       R22 R22 K77 ["EvalDriver"]
      376 GETTABLEKS                       R22 R22 K83 ["EvalDriverEditDM"]
      378 CALL                             R21 1 1
      379 GETTABLEKS                       R22 R21 K66 ["init"]
      381 GETIMPORT                        R23 K1 [plugin]
      383 MOVE                             R24 R18
      384 MOVE                             R25 R19
      385 CALL                             R22 3 0
      386 GETIMPORT                        R20 K8 [require]
      388 GETTABLEKS                       R21 R0 K11 ["Src"]
      390 GETTABLEKS                       R21 R21 K84 ["toolInit"]
      392 CALL                             R20 1 1
      393 MOVE                             R21 R20
      394 GETIMPORT                        R22 K1 [plugin]
      396 MOVE                             R23 R18
      397 MOVE                             R24 R19
      398 MOVE                             R25 R8
      399 CALL                             R21 4 1
      400 GETTABLEKS                       R22 R12 K70 ["FFlagAssistantMultiPlayerAgents"]
      402 JUMPIFNOT                        R22 ; [+32]
      403 GETTABLEKS                       R22 R14 K67 ["Types"]
      405 GETTABLEKS                       R22 R22 K82 ["Edit"]
      407 JUMPIFNOTEQ                      R15 R22 ; [+27]
      409 GETIMPORT                        R22 K8 [require]
      411 GETTABLEKS                       R23 R0 K11 ["Src"]
      413 GETTABLEKS                       R23 R23 K77 ["EvalDriver"]
      415 GETTABLEKS                       R23 R23 K78 ["EvalUtils"]
      417 CALL                             R22 1 1
      418 GETTABLEKS                       R23 R22 K66 ["init"]
      420 GETIMPORT                        R24 K1 [plugin]
      422 CALL                             R23 1 0
      423 GETTABLEKS                       R23 R16 K66 ["init"]
      425 CALL                             R23 0 0
      426 GETIMPORT                        R23 K1 [plugin]
      428 GETTABLEKS                       R23 R23 K71 ["Unloading"]
      430 DUPCLOSURE                       R25 K85 [PROTO_1]
      431 CAPTURE                          VAL R16
      432 NAMECALL                         R23 R23 K73 ["Connect"]
      434 CALL                             R23 2 0
      435 JUMPIFNOT                        R8 ; [+25]
      436 GETIMPORT                        R22 K8 [require]
      438 GETTABLEKS                       R23 R0 K16 ["Bin"]
      440 GETTABLEKS                       R23 R23 K17 ["Common"]
      442 GETTABLEKS                       R23 R23 K86 ["setup"]
      444 CALL                             R22 1 1
      445 GETIMPORT                        R23 K8 [require]
      447 GETTABLEKS                       R24 R0 K16 ["Bin"]
      449 GETTABLEKS                       R24 R24 K17 ["Common"]
      451 GETTABLEKS                       R24 R24 K87 ["setupMain"]
      453 CALL                             R23 1 1
      454 MOVE                             R24 R22
      455 GETIMPORT                        R25 K1 [plugin]
      457 DUPCLOSURE                       R26 K88 [PROTO_2]
      458 CAPTURE                          VAL R23
      459 CAPTURE                          VAL R21
      460 CALL                             R24 2 0
      461 RETURN                           R0 0
