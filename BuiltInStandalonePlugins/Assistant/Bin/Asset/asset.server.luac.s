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
      106 GETTABLEKS                       R12 R0 K11 ["Src"]
      108 GETTABLEKS                       R12 R12 K36 ["Flags"]
      110 CALL                             R11 1 1
      111 GETIMPORT                        R12 K8 [require]
      113 GETTABLEKS                       R13 R0 K11 ["Src"]
      115 GETTABLEKS                       R13 R13 K34 ["Util"]
      117 GETTABLEKS                       R13 R13 K37 ["StudioNetworking"]
      119 CALL                             R12 1 1
      120 GETTABLEKS                       R13 R9 K38 ["Utils"]
      122 GETTABLEKS                       R13 R13 K39 ["DataModelType"]
      124 GETTABLEKS                       R14 R13 K40 ["getDataModelType"]
      126 CALL                             R14 0 1
      127 GETTABLEKS                       R15 R9 K38 ["Utils"]
      129 GETTABLEKS                       R15 R15 K41 ["MultiPlayersAgentServer"]
      131 GETTABLEKS                       R16 R9 K38 ["Utils"]
      133 GETTABLEKS                       R16 R16 K42 ["MultiPlayersAgentClient"]
      135 GETTABLEKS                       R17 R12 K43 ["create"]
      137 DUPTABLE                         R18 K49 [{[1], ["isGuest"], ["isHost"] = True, ["identity"], ["useSuspendOverride"] = True}]
      138 GETIMPORT                        R19 K1 [plugin]
      140 SETTABLEKS                       R19 R18 K0 ["plugin"]
      142 SETTABLEKS                       R8 R18 K44 ["isGuest"]
      144 SETTABLEKS                       R14 R18 K47 ["identity"]
      146 CALL                             R17 1 1
      147 GETTABLEKS                       R18 R11 K50 ["FFlagAssistantConsoleOutputTailFromEnd"]
      149 JUMPIFNOT                        R18 ; [+6]
      150 GETTABLEKS                       R18 R10 K51 ["init"]
      152 GETIMPORT                        R19 K1 [plugin]
      154 MOVE                             R20 R17
      155 CALL                             R18 2 0
      156 GETTABLEKS                       R18 R13 K52 ["Types"]
      158 GETTABLEKS                       R18 R18 K53 ["Client"]
      160 JUMPIFNOTEQ                      R14 R18 ; [+33]
      162 GETIMPORT                        R18 K8 [require]
      164 GETTABLEKS                       R19 R0 K11 ["Src"]
      166 GETTABLEKS                       R19 R19 K34 ["Util"]
      168 GETTABLEKS                       R19 R19 K54 ["GameLoadedNotifier"]
      170 CALL                             R18 1 1
      171 GETTABLEKS                       R19 R18 K51 ["init"]
      173 MOVE                             R20 R14
      174 GETIMPORT                        R21 K1 [plugin]
      176 MOVE                             R22 R17
      177 CALL                             R19 3 0
      178 GETTABLEKS                       R19 R11 K55 ["FFlagAssistantMultiPlayerAgents"]
      180 JUMPIFNOT                        R19 ; [+13]
      181 GETTABLEKS                       R19 R16 K51 ["init"]
      183 MOVE                             R20 R17
      184 CALL                             R19 1 0
      185 GETIMPORT                        R19 K1 [plugin]
      187 GETTABLEKS                       R19 R19 K56 ["Unloading"]
      189 DUPCLOSURE                       R21 K57 [PROTO_0]
      190 CAPTURE                          VAL R16
      191 NAMECALL                         R19 R19 K58 ["Connect"]
      193 CALL                             R19 2 0
      194 GETTABLEKS                       R18 R13 K52 ["Types"]
      196 GETTABLEKS                       R18 R18 K59 ["Server"]
      198 JUMPIFNOTEQ                      R14 R18 ; [+17]
      200 GETIMPORT                        R18 K8 [require]
      202 GETTABLEKS                       R19 R0 K11 ["Src"]
      204 GETTABLEKS                       R19 R19 K34 ["Util"]
      206 GETTABLEKS                       R19 R19 K60 ["GameStoppedNotifier"]
      208 CALL                             R18 1 1
      209 GETTABLEKS                       R19 R18 K51 ["init"]
      211 MOVE                             R20 R14
      212 GETIMPORT                        R21 K1 [plugin]
      214 MOVE                             R22 R17
      215 CALL                             R19 3 0
      216 GETTABLEKS                       R18 R11 K61 ["FFlagAssistantEval"]
      218 JUMPIFNOT                        R18 ; [+105]
      219 GETIMPORT                        R18 K8 [require]
      221 GETTABLEKS                       R19 R0 K11 ["Src"]
      223 GETTABLEKS                       R19 R19 K62 ["EvalDriver"]
      225 GETTABLEKS                       R19 R19 K63 ["EvalUtils"]
      227 CALL                             R18 1 1
      228 GETTABLEKS                       R19 R18 K51 ["init"]
      230 GETIMPORT                        R20 K1 [plugin]
      232 CALL                             R19 1 0
      233 GETTABLEKS                       R19 R13 K52 ["Types"]
      235 GETTABLEKS                       R19 R19 K59 ["Server"]
      237 JUMPIFNOTEQ                      R14 R19 ; [+30]
      239 GETIMPORT                        R19 K8 [require]
      241 GETTABLEKS                       R20 R0 K11 ["Src"]
      243 GETTABLEKS                       R20 R20 K62 ["EvalDriver"]
      245 GETTABLEKS                       R20 R20 K64 ["EvalDriverPlaySoloServerDM"]
      247 CALL                             R19 1 1
      248 GETIMPORT                        R20 K8 [require]
      250 GETTABLEKS                       R21 R0 K11 ["Src"]
      252 GETTABLEKS                       R21 R21 K62 ["EvalDriver"]
      254 GETTABLEKS                       R21 R21 K65 ["EvalDriverMultiPlayers"]
      256 CALL                             R20 1 1
      257 GETTABLEKS                       R21 R19 K51 ["init"]
      259 GETIMPORT                        R22 K1 [plugin]
      261 MOVE                             R23 R17
      262 CALL                             R21 2 0
      263 GETTABLEKS                       R21 R20 K51 ["init"]
      265 GETIMPORT                        R22 K1 [plugin]
      267 CALL                             R21 1 0
      268 GETTABLEKS                       R19 R13 K52 ["Types"]
      270 GETTABLEKS                       R19 R19 K53 ["Client"]
      272 JUMPIFNOTEQ                      R14 R19 ; [+30]
      274 GETIMPORT                        R19 K8 [require]
      276 GETTABLEKS                       R20 R0 K11 ["Src"]
      278 GETTABLEKS                       R20 R20 K62 ["EvalDriver"]
      280 GETTABLEKS                       R20 R20 K66 ["EvalDriverPlaySoloClientDM"]
      282 CALL                             R19 1 1
      283 GETIMPORT                        R20 K8 [require]
      285 GETTABLEKS                       R21 R0 K11 ["Src"]
      287 GETTABLEKS                       R21 R21 K62 ["EvalDriver"]
      289 GETTABLEKS                       R21 R21 K65 ["EvalDriverMultiPlayers"]
      291 CALL                             R20 1 1
      292 GETTABLEKS                       R21 R19 K51 ["init"]
      294 GETIMPORT                        R22 K1 [plugin]
      296 MOVE                             R23 R17
      297 CALL                             R21 2 0
      298 GETTABLEKS                       R21 R20 K51 ["init"]
      300 GETIMPORT                        R22 K1 [plugin]
      302 CALL                             R21 1 0
      303 GETTABLEKS                       R19 R13 K52 ["Types"]
      305 GETTABLEKS                       R19 R19 K67 ["Edit"]
      307 JUMPIFNOTEQ                      R14 R19 ; [+16]
      309 GETIMPORT                        R19 K8 [require]
      311 GETTABLEKS                       R20 R0 K11 ["Src"]
      313 GETTABLEKS                       R20 R20 K62 ["EvalDriver"]
      315 GETTABLEKS                       R20 R20 K68 ["EvalDriverEditDM"]
      317 CALL                             R19 1 1
      318 GETTABLEKS                       R20 R19 K51 ["init"]
      320 GETIMPORT                        R21 K1 [plugin]
      322 MOVE                             R22 R17
      323 CALL                             R20 2 0
      324 GETIMPORT                        R18 K8 [require]
      326 GETTABLEKS                       R19 R0 K11 ["Src"]
      328 GETTABLEKS                       R19 R19 K69 ["toolInit"]
      330 CALL                             R18 1 1
      331 MOVE                             R19 R18
      332 GETIMPORT                        R20 K1 [plugin]
      334 MOVE                             R21 R17
      335 CALL                             R19 2 1
      336 GETTABLEKS                       R20 R11 K55 ["FFlagAssistantMultiPlayerAgents"]
      338 JUMPIFNOT                        R20 ; [+32]
      339 GETTABLEKS                       R20 R13 K52 ["Types"]
      341 GETTABLEKS                       R20 R20 K67 ["Edit"]
      343 JUMPIFNOTEQ                      R14 R20 ; [+27]
      345 GETIMPORT                        R20 K8 [require]
      347 GETTABLEKS                       R21 R0 K11 ["Src"]
      349 GETTABLEKS                       R21 R21 K62 ["EvalDriver"]
      351 GETTABLEKS                       R21 R21 K63 ["EvalUtils"]
      353 CALL                             R20 1 1
      354 GETTABLEKS                       R21 R20 K51 ["init"]
      356 GETIMPORT                        R22 K1 [plugin]
      358 CALL                             R21 1 0
      359 GETTABLEKS                       R21 R15 K51 ["init"]
      361 CALL                             R21 0 0
      362 GETIMPORT                        R21 K1 [plugin]
      364 GETTABLEKS                       R21 R21 K56 ["Unloading"]
      366 DUPCLOSURE                       R23 K70 [PROTO_1]
      367 CAPTURE                          VAL R15
      368 NAMECALL                         R21 R21 K58 ["Connect"]
      370 CALL                             R21 2 0
      371 JUMPIFNOT                        R8 ; [+25]
      372 GETIMPORT                        R20 K8 [require]
      374 GETTABLEKS                       R21 R0 K16 ["Bin"]
      376 GETTABLEKS                       R21 R21 K17 ["Common"]
      378 GETTABLEKS                       R21 R21 K71 ["setup"]
      380 CALL                             R20 1 1
      381 GETIMPORT                        R21 K8 [require]
      383 GETTABLEKS                       R22 R0 K16 ["Bin"]
      385 GETTABLEKS                       R22 R22 K17 ["Common"]
      387 GETTABLEKS                       R22 R22 K72 ["setupMain"]
      389 CALL                             R21 1 1
      390 MOVE                             R22 R20
      391 GETIMPORT                        R23 K1 [plugin]
      393 DUPCLOSURE                       R24 K73 [PROTO_2]
      394 CAPTURE                          VAL R21
      395 CAPTURE                          VAL R19
      396 CALL                             R22 2 0
      397 RETURN                           R0 0
