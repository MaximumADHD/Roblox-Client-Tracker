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
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["Assistant"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K11 ["Src"]
       33 GETTABLEKS                       R3 R3 K13 ["Flags"]
       35 GETTABLEKS                       R3 R3 K14 ["FFlagIsLuobuBuild"]
       37 CALL                             R2 1 1
       38 MOVE                             R3 R2
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K16 [game]
       44 LOADK                            R5 K17 ["RunService"]
       45 NAMECALL                         R3 R3 K18 ["GetService"]
       47 CALL                             R3 2 1
       48 GETIMPORT                        R4 K7 [require]
       50 GETTABLEKS                       R5 R0 K19 ["Bin"]
       52 GETTABLEKS                       R5 R5 K20 ["Common"]
       54 GETTABLEKS                       R5 R5 K21 ["pluginType"]
       56 CALL                             R4 1 1
       57 LOADB                            R5 0
       58 GETTABLEKS                       R6 R4 K22 ["get"]
       60 CALL                             R6 0 1
       61 GETTABLEKS                       R7 R4 K23 ["Asset"]
       63 JUMPIFNOTEQ                      R6 R7 ; [+4]
       65 NAMECALL                         R5 R3 K24 ["IsEdit"]
       67 CALL                             R5 1 1
       68 JUMPIFNOT                        R5 ; [+17]
       69 GETIMPORT                        R6 K7 [require]
       71 GETTABLEKS                       R7 R0 K8 ["Packages"]
       73 GETTABLEKS                       R7 R7 K25 ["ReactDeveloperTools"]
       75 CALL                             R6 1 1
       76 GETTABLEKS                       R7 R6 K26 ["tryEnableDevtools"]
       78 DUPTABLE                         R8 K29 [{"pluginName", "profileOnStart"}]
       79 LOADK                            R9 K4 ["Assistant"]
       80 SETTABLEKS                       R9 R8 K27 ["pluginName"]
       82 LOADB                            R9 0
       83 SETTABLEKS                       R9 R8 K28 ["profileOnStart"]
       85 CALL                             R7 1 0
       86 GETIMPORT                        R6 K7 [require]
       88 GETTABLEKS                       R7 R0 K8 ["Packages"]
       90 GETTABLEKS                       R7 R7 K30 ["AssistantUI"]
       92 CALL                             R6 1 1
       93 GETIMPORT                        R7 K7 [require]
       95 GETTABLEKS                       R8 R0 K11 ["Src"]
       97 GETTABLEKS                       R8 R8 K31 ["Util"]
       99 GETTABLEKS                       R8 R8 K32 ["StudioNetworking"]
      101 CALL                             R7 1 1
      102 GETTABLEKS                       R8 R6 K33 ["Utils"]
      104 GETTABLEKS                       R8 R8 K34 ["DataModelType"]
      106 GETIMPORT                        R9 K7 [require]
      108 GETTABLEKS                       R10 R0 K11 ["Src"]
      110 GETTABLEKS                       R10 R10 K31 ["Util"]
      112 GETTABLEKS                       R10 R10 K35 ["ConsoleOutputManager"]
      114 CALL                             R9 1 1
      115 GETTABLEKS                       R10 R8 K36 ["getDataModelType"]
      117 CALL                             R10 0 1
      118 GETTABLEKS                       R11 R6 K13 ["Flags"]
      120 GETTABLEKS                       R11 R11 K37 ["Shared"]
      122 GETTABLEKS                       R11 R11 K38 ["FFlagAssistantEval"]
      124 GETTABLEKS                       R12 R6 K13 ["Flags"]
      126 GETTABLEKS                       R12 R12 K37 ["Shared"]
      128 GETTABLEKS                       R12 R12 K39 ["FFlagAssistantWhileSuspended"]
      130 GETTABLEKS                       R13 R6 K13 ["Flags"]
      132 GETTABLEKS                       R13 R13 K37 ["Shared"]
      134 GETTABLEKS                       R13 R13 K40 ["FFlagAssistantMultiPlayerAgents"]
      136 GETTABLEKS                       R14 R6 K33 ["Utils"]
      138 GETTABLEKS                       R14 R14 K41 ["MultiPlayersAgentServer"]
      140 GETTABLEKS                       R15 R6 K33 ["Utils"]
      142 GETTABLEKS                       R15 R15 K42 ["MultiPlayersAgentClient"]
      144 GETTABLEKS                       R16 R6 K13 ["Flags"]
      146 GETTABLEKS                       R16 R16 K37 ["Shared"]
      148 GETTABLEKS                       R16 R16 K43 ["FFlagAssistantConsoleOutputTailFromEnd"]
      150 GETTABLEKS                       R17 R7 K44 ["create"]
      152 DUPTABLE                         R18 K49 [{"plugin", "isGuest", "isHost", "identity", "useSuspendOverride"}]
      153 GETIMPORT                        R19 K1 [plugin]
      155 SETTABLEKS                       R19 R18 K0 ["plugin"]
      157 SETTABLEKS                       R5 R18 K45 ["isGuest"]
      159 LOADB                            R19 1
      160 SETTABLEKS                       R19 R18 K46 ["isHost"]
      162 SETTABLEKS                       R10 R18 K47 ["identity"]
      164 MOVE                             R19 R12
      165 CALL                             R19 0 1
      166 SETTABLEKS                       R19 R18 K48 ["useSuspendOverride"]
      168 CALL                             R17 1 1
      169 MOVE                             R18 R16
      170 CALL                             R18 0 1
      171 JUMPIFNOT                        R18 ; [+6]
      172 GETTABLEKS                       R18 R9 K50 ["init"]
      174 GETIMPORT                        R19 K1 [plugin]
      176 MOVE                             R20 R17
      177 CALL                             R18 2 0
      178 GETTABLEKS                       R18 R8 K51 ["Types"]
      180 GETTABLEKS                       R18 R18 K52 ["Client"]
      182 JUMPIFNOTEQ                      R10 R18 ; [+33]
      184 GETIMPORT                        R18 K7 [require]
      186 GETTABLEKS                       R19 R0 K11 ["Src"]
      188 GETTABLEKS                       R19 R19 K31 ["Util"]
      190 GETTABLEKS                       R19 R19 K53 ["GameLoadedNotifier"]
      192 CALL                             R18 1 1
      193 GETTABLEKS                       R19 R18 K50 ["init"]
      195 MOVE                             R20 R10
      196 GETIMPORT                        R21 K1 [plugin]
      198 MOVE                             R22 R17
      199 CALL                             R19 3 0
      200 MOVE                             R19 R13
      201 CALL                             R19 0 1
      202 JUMPIFNOT                        R19 ; [+13]
      203 GETTABLEKS                       R19 R15 K50 ["init"]
      205 MOVE                             R20 R17
      206 CALL                             R19 1 0
      207 GETIMPORT                        R19 K1 [plugin]
      209 GETTABLEKS                       R19 R19 K54 ["Unloading"]
      211 DUPCLOSURE                       R21 K55 [PROTO_0]
      212 CAPTURE                          VAL R15
      213 NAMECALL                         R19 R19 K56 ["Connect"]
      215 CALL                             R19 2 0
      216 GETTABLEKS                       R18 R8 K51 ["Types"]
      218 GETTABLEKS                       R18 R18 K57 ["Server"]
      220 JUMPIFNOTEQ                      R10 R18 ; [+17]
      222 GETIMPORT                        R18 K7 [require]
      224 GETTABLEKS                       R19 R0 K11 ["Src"]
      226 GETTABLEKS                       R19 R19 K31 ["Util"]
      228 GETTABLEKS                       R19 R19 K58 ["GameStoppedNotifier"]
      230 CALL                             R18 1 1
      231 GETTABLEKS                       R19 R18 K50 ["init"]
      233 MOVE                             R20 R10
      234 GETIMPORT                        R21 K1 [plugin]
      236 MOVE                             R22 R17
      237 CALL                             R19 3 0
      238 MOVE                             R18 R11
      239 CALL                             R18 0 1
      240 JUMPIFNOT                        R18 ; [+105]
      241 GETIMPORT                        R18 K7 [require]
      243 GETTABLEKS                       R19 R0 K11 ["Src"]
      245 GETTABLEKS                       R19 R19 K59 ["EvalDriver"]
      247 GETTABLEKS                       R19 R19 K60 ["EvalUtils"]
      249 CALL                             R18 1 1
      250 GETTABLEKS                       R19 R18 K50 ["init"]
      252 GETIMPORT                        R20 K1 [plugin]
      254 CALL                             R19 1 0
      255 GETTABLEKS                       R19 R8 K51 ["Types"]
      257 GETTABLEKS                       R19 R19 K57 ["Server"]
      259 JUMPIFNOTEQ                      R10 R19 ; [+30]
      261 GETIMPORT                        R19 K7 [require]
      263 GETTABLEKS                       R20 R0 K11 ["Src"]
      265 GETTABLEKS                       R20 R20 K59 ["EvalDriver"]
      267 GETTABLEKS                       R20 R20 K61 ["EvalDriverPlaySoloServerDM"]
      269 CALL                             R19 1 1
      270 GETIMPORT                        R20 K7 [require]
      272 GETTABLEKS                       R21 R0 K11 ["Src"]
      274 GETTABLEKS                       R21 R21 K59 ["EvalDriver"]
      276 GETTABLEKS                       R21 R21 K62 ["EvalDriverMultiPlayers"]
      278 CALL                             R20 1 1
      279 GETTABLEKS                       R21 R19 K50 ["init"]
      281 GETIMPORT                        R22 K1 [plugin]
      283 MOVE                             R23 R17
      284 CALL                             R21 2 0
      285 GETTABLEKS                       R21 R20 K50 ["init"]
      287 GETIMPORT                        R22 K1 [plugin]
      289 CALL                             R21 1 0
      290 GETTABLEKS                       R19 R8 K51 ["Types"]
      292 GETTABLEKS                       R19 R19 K52 ["Client"]
      294 JUMPIFNOTEQ                      R10 R19 ; [+30]
      296 GETIMPORT                        R19 K7 [require]
      298 GETTABLEKS                       R20 R0 K11 ["Src"]
      300 GETTABLEKS                       R20 R20 K59 ["EvalDriver"]
      302 GETTABLEKS                       R20 R20 K63 ["EvalDriverPlaySoloClientDM"]
      304 CALL                             R19 1 1
      305 GETIMPORT                        R20 K7 [require]
      307 GETTABLEKS                       R21 R0 K11 ["Src"]
      309 GETTABLEKS                       R21 R21 K59 ["EvalDriver"]
      311 GETTABLEKS                       R21 R21 K62 ["EvalDriverMultiPlayers"]
      313 CALL                             R20 1 1
      314 GETTABLEKS                       R21 R19 K50 ["init"]
      316 GETIMPORT                        R22 K1 [plugin]
      318 MOVE                             R23 R17
      319 CALL                             R21 2 0
      320 GETTABLEKS                       R21 R20 K50 ["init"]
      322 GETIMPORT                        R22 K1 [plugin]
      324 CALL                             R21 1 0
      325 GETTABLEKS                       R19 R8 K51 ["Types"]
      327 GETTABLEKS                       R19 R19 K64 ["Edit"]
      329 JUMPIFNOTEQ                      R10 R19 ; [+16]
      331 GETIMPORT                        R19 K7 [require]
      333 GETTABLEKS                       R20 R0 K11 ["Src"]
      335 GETTABLEKS                       R20 R20 K59 ["EvalDriver"]
      337 GETTABLEKS                       R20 R20 K65 ["EvalDriverEditDM"]
      339 CALL                             R19 1 1
      340 GETTABLEKS                       R20 R19 K50 ["init"]
      342 GETIMPORT                        R21 K1 [plugin]
      344 MOVE                             R22 R17
      345 CALL                             R20 2 0
      346 GETIMPORT                        R18 K7 [require]
      348 GETTABLEKS                       R19 R0 K11 ["Src"]
      350 GETTABLEKS                       R19 R19 K66 ["toolInit"]
      352 CALL                             R18 1 1
      353 MOVE                             R19 R18
      354 GETIMPORT                        R20 K1 [plugin]
      356 MOVE                             R21 R17
      357 CALL                             R19 2 1
      358 MOVE                             R20 R13
      359 CALL                             R20 0 1
      360 JUMPIFNOT                        R20 ; [+32]
      361 GETTABLEKS                       R20 R8 K51 ["Types"]
      363 GETTABLEKS                       R20 R20 K64 ["Edit"]
      365 JUMPIFNOTEQ                      R10 R20 ; [+27]
      367 GETIMPORT                        R20 K7 [require]
      369 GETTABLEKS                       R21 R0 K11 ["Src"]
      371 GETTABLEKS                       R21 R21 K59 ["EvalDriver"]
      373 GETTABLEKS                       R21 R21 K60 ["EvalUtils"]
      375 CALL                             R20 1 1
      376 GETTABLEKS                       R21 R20 K50 ["init"]
      378 GETIMPORT                        R22 K1 [plugin]
      380 CALL                             R21 1 0
      381 GETTABLEKS                       R21 R14 K50 ["init"]
      383 CALL                             R21 0 0
      384 GETIMPORT                        R21 K1 [plugin]
      386 GETTABLEKS                       R21 R21 K54 ["Unloading"]
      388 DUPCLOSURE                       R23 K67 [PROTO_1]
      389 CAPTURE                          VAL R14
      390 NAMECALL                         R21 R21 K56 ["Connect"]
      392 CALL                             R21 2 0
      393 JUMPIFNOT                        R5 ; [+25]
      394 GETIMPORT                        R20 K7 [require]
      396 GETTABLEKS                       R21 R0 K19 ["Bin"]
      398 GETTABLEKS                       R21 R21 K20 ["Common"]
      400 GETTABLEKS                       R21 R21 K68 ["setup"]
      402 CALL                             R20 1 1
      403 GETIMPORT                        R21 K7 [require]
      405 GETTABLEKS                       R22 R0 K19 ["Bin"]
      407 GETTABLEKS                       R22 R22 K20 ["Common"]
      409 GETTABLEKS                       R22 R22 K69 ["setupMain"]
      411 CALL                             R21 1 1
      412 MOVE                             R22 R20
      413 GETIMPORT                        R23 K1 [plugin]
      415 DUPCLOSURE                       R24 K70 [PROTO_2]
      416 CAPTURE                          VAL R21
      417 CAPTURE                          VAL R19
      418 CALL                             R22 2 0
      419 RETURN                           R0 0
