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
      116 GETTABLEKS                       R13 R9 K38 ["Utils"]
      118 GETTABLEKS                       R13 R13 K39 ["DataModelType"]
      120 GETTABLEKS                       R14 R13 K40 ["getDataModelType"]
      122 CALL                             R14 0 1
      123 GETTABLEKS                       R15 R9 K38 ["Utils"]
      125 GETTABLEKS                       R15 R15 K41 ["MultiPlayersAgentServer"]
      127 GETTABLEKS                       R16 R9 K38 ["Utils"]
      129 GETTABLEKS                       R16 R16 K42 ["MultiPlayersAgentClient"]
      131 LOADNIL                          R17
      132 GETTABLEKS                       R18 R12 K43 ["FFlagDebugLogAssistantUI"]
      134 JUMPIFNOT                        R18 ; [+19]
      135 GETTABLEKS                       R18 R11 K44 ["LogLevel"]
      137 GETTABLEKS                       R19 R12 K45 ["FStringDebugLogAssistantUILogLevel"]
      139 GETTABLE                         R17 R18 R19
      140 JUMPIF                           R17 ; [+13]
      141 GETIMPORT                        R18 K47 [warn]
      143 LOADK                            R19 K48 ["[Assistant] Unknown FStringDebugLogAssistantUILogLevel \"%*\"; using Debug"]
      144 GETTABLEKS                       R21 R12 K45 ["FStringDebugLogAssistantUILogLevel"]
      146 NAMECALL                         R19 R19 K49 ["format"]
      148 CALL                             R19 2 1
      149 CALL                             R18 1 0
      150 GETTABLEKS                       R18 R11 K44 ["LogLevel"]
      152 GETTABLEKS                       R17 R18 K50 ["Debug"]
      154 GETTABLEKS                       R18 R11 K51 ["new"]
      156 DUPTABLE                         R19 K56 [{[1], ["identity"], ["logLevel"], ["useSuspendOverride"] = True}]
      157 GETIMPORT                        R20 K1 [plugin]
      159 SETTABLEKS                       R20 R19 K0 ["plugin"]
      161 GETTABLEKS                       R20 R9 K38 ["Utils"]
      163 GETTABLEKS                       R20 R20 K57 ["NetworkingIdentity"]
      165 GETTABLEKS                       R20 R20 K58 ["getSelfIdentity"]
      167 CALL                             R20 0 1
      168 SETTABLEKS                       R20 R19 K52 ["identity"]
      170 SETTABLEKS                       R17 R19 K53 ["logLevel"]
      172 CALL                             R18 1 1
      173 GETTABLEKS                       R19 R12 K59 ["FFlagAssistantConsoleOutputTailFromEnd"]
      175 JUMPIFNOT                        R19 ; [+6]
      176 GETTABLEKS                       R19 R10 K60 ["init"]
      178 GETIMPORT                        R20 K1 [plugin]
      180 MOVE                             R21 R18
      181 CALL                             R19 2 0
      182 GETTABLEKS                       R19 R13 K61 ["Types"]
      184 GETTABLEKS                       R19 R19 K62 ["Client"]
      186 JUMPIFNOTEQ                      R14 R19 ; [+33]
      188 GETIMPORT                        R19 K8 [require]
      190 GETTABLEKS                       R20 R0 K11 ["Src"]
      192 GETTABLEKS                       R20 R20 K34 ["Util"]
      194 GETTABLEKS                       R20 R20 K63 ["GameLoadedNotifier"]
      196 CALL                             R19 1 1
      197 GETTABLEKS                       R20 R19 K60 ["init"]
      199 MOVE                             R21 R14
      200 GETIMPORT                        R22 K1 [plugin]
      202 MOVE                             R23 R18
      203 CALL                             R20 3 0
      204 GETTABLEKS                       R20 R12 K64 ["FFlagAssistantMultiPlayerAgents"]
      206 JUMPIFNOT                        R20 ; [+13]
      207 GETTABLEKS                       R20 R16 K60 ["init"]
      209 MOVE                             R21 R18
      210 CALL                             R20 1 0
      211 GETIMPORT                        R20 K1 [plugin]
      213 GETTABLEKS                       R20 R20 K65 ["Unloading"]
      215 DUPCLOSURE                       R22 K66 [PROTO_0]
      216 CAPTURE                          VAL R16
      217 NAMECALL                         R20 R20 K67 ["Connect"]
      219 CALL                             R20 2 0
      220 GETTABLEKS                       R19 R13 K61 ["Types"]
      222 GETTABLEKS                       R19 R19 K68 ["Server"]
      224 JUMPIFNOTEQ                      R14 R19 ; [+17]
      226 GETIMPORT                        R19 K8 [require]
      228 GETTABLEKS                       R20 R0 K11 ["Src"]
      230 GETTABLEKS                       R20 R20 K34 ["Util"]
      232 GETTABLEKS                       R20 R20 K69 ["GameStoppedNotifier"]
      234 CALL                             R19 1 1
      235 GETTABLEKS                       R20 R19 K60 ["init"]
      237 MOVE                             R21 R14
      238 GETIMPORT                        R22 K1 [plugin]
      240 MOVE                             R23 R18
      241 CALL                             R20 3 0
      242 GETTABLEKS                       R19 R12 K70 ["FFlagDebugAssistantEval"]
      244 JUMPIFNOT                        R19 ; [+105]
      245 GETIMPORT                        R19 K8 [require]
      247 GETTABLEKS                       R20 R0 K11 ["Src"]
      249 GETTABLEKS                       R20 R20 K71 ["EvalDriver"]
      251 GETTABLEKS                       R20 R20 K72 ["EvalUtils"]
      253 CALL                             R19 1 1
      254 GETTABLEKS                       R20 R19 K60 ["init"]
      256 GETIMPORT                        R21 K1 [plugin]
      258 CALL                             R20 1 0
      259 GETTABLEKS                       R20 R13 K61 ["Types"]
      261 GETTABLEKS                       R20 R20 K68 ["Server"]
      263 JUMPIFNOTEQ                      R14 R20 ; [+30]
      265 GETIMPORT                        R20 K8 [require]
      267 GETTABLEKS                       R21 R0 K11 ["Src"]
      269 GETTABLEKS                       R21 R21 K71 ["EvalDriver"]
      271 GETTABLEKS                       R21 R21 K73 ["EvalDriverPlaySoloServerDM"]
      273 CALL                             R20 1 1
      274 GETIMPORT                        R21 K8 [require]
      276 GETTABLEKS                       R22 R0 K11 ["Src"]
      278 GETTABLEKS                       R22 R22 K71 ["EvalDriver"]
      280 GETTABLEKS                       R22 R22 K74 ["EvalDriverMultiPlayers"]
      282 CALL                             R21 1 1
      283 GETTABLEKS                       R22 R20 K60 ["init"]
      285 GETIMPORT                        R23 K1 [plugin]
      287 MOVE                             R24 R18
      288 CALL                             R22 2 0
      289 GETTABLEKS                       R22 R21 K60 ["init"]
      291 GETIMPORT                        R23 K1 [plugin]
      293 CALL                             R22 1 0
      294 GETTABLEKS                       R20 R13 K61 ["Types"]
      296 GETTABLEKS                       R20 R20 K62 ["Client"]
      298 JUMPIFNOTEQ                      R14 R20 ; [+30]
      300 GETIMPORT                        R20 K8 [require]
      302 GETTABLEKS                       R21 R0 K11 ["Src"]
      304 GETTABLEKS                       R21 R21 K71 ["EvalDriver"]
      306 GETTABLEKS                       R21 R21 K75 ["EvalDriverPlaySoloClientDM"]
      308 CALL                             R20 1 1
      309 GETIMPORT                        R21 K8 [require]
      311 GETTABLEKS                       R22 R0 K11 ["Src"]
      313 GETTABLEKS                       R22 R22 K71 ["EvalDriver"]
      315 GETTABLEKS                       R22 R22 K74 ["EvalDriverMultiPlayers"]
      317 CALL                             R21 1 1
      318 GETTABLEKS                       R22 R20 K60 ["init"]
      320 GETIMPORT                        R23 K1 [plugin]
      322 MOVE                             R24 R18
      323 CALL                             R22 2 0
      324 GETTABLEKS                       R22 R21 K60 ["init"]
      326 GETIMPORT                        R23 K1 [plugin]
      328 CALL                             R22 1 0
      329 GETTABLEKS                       R20 R13 K61 ["Types"]
      331 GETTABLEKS                       R20 R20 K76 ["Edit"]
      333 JUMPIFNOTEQ                      R14 R20 ; [+16]
      335 GETIMPORT                        R20 K8 [require]
      337 GETTABLEKS                       R21 R0 K11 ["Src"]
      339 GETTABLEKS                       R21 R21 K71 ["EvalDriver"]
      341 GETTABLEKS                       R21 R21 K77 ["EvalDriverEditDM"]
      343 CALL                             R20 1 1
      344 GETTABLEKS                       R21 R20 K60 ["init"]
      346 GETIMPORT                        R22 K1 [plugin]
      348 MOVE                             R23 R18
      349 CALL                             R21 2 0
      350 GETIMPORT                        R19 K8 [require]
      352 GETTABLEKS                       R20 R0 K11 ["Src"]
      354 GETTABLEKS                       R20 R20 K78 ["toolInit"]
      356 CALL                             R19 1 1
      357 MOVE                             R20 R19
      358 GETIMPORT                        R21 K1 [plugin]
      360 MOVE                             R22 R18
      361 MOVE                             R23 R8
      362 CALL                             R20 3 1
      363 GETTABLEKS                       R21 R12 K64 ["FFlagAssistantMultiPlayerAgents"]
      365 JUMPIFNOT                        R21 ; [+32]
      366 GETTABLEKS                       R21 R13 K61 ["Types"]
      368 GETTABLEKS                       R21 R21 K76 ["Edit"]
      370 JUMPIFNOTEQ                      R14 R21 ; [+27]
      372 GETIMPORT                        R21 K8 [require]
      374 GETTABLEKS                       R22 R0 K11 ["Src"]
      376 GETTABLEKS                       R22 R22 K71 ["EvalDriver"]
      378 GETTABLEKS                       R22 R22 K72 ["EvalUtils"]
      380 CALL                             R21 1 1
      381 GETTABLEKS                       R22 R21 K60 ["init"]
      383 GETIMPORT                        R23 K1 [plugin]
      385 CALL                             R22 1 0
      386 GETTABLEKS                       R22 R15 K60 ["init"]
      388 CALL                             R22 0 0
      389 GETIMPORT                        R22 K1 [plugin]
      391 GETTABLEKS                       R22 R22 K65 ["Unloading"]
      393 DUPCLOSURE                       R24 K79 [PROTO_1]
      394 CAPTURE                          VAL R15
      395 NAMECALL                         R22 R22 K67 ["Connect"]
      397 CALL                             R22 2 0
      398 JUMPIFNOT                        R8 ; [+25]
      399 GETIMPORT                        R21 K8 [require]
      401 GETTABLEKS                       R22 R0 K16 ["Bin"]
      403 GETTABLEKS                       R22 R22 K17 ["Common"]
      405 GETTABLEKS                       R22 R22 K80 ["setup"]
      407 CALL                             R21 1 1
      408 GETIMPORT                        R22 K8 [require]
      410 GETTABLEKS                       R23 R0 K16 ["Bin"]
      412 GETTABLEKS                       R23 R23 K17 ["Common"]
      414 GETTABLEKS                       R23 R23 K81 ["setupMain"]
      416 CALL                             R22 1 1
      417 MOVE                             R23 R21
      418 GETIMPORT                        R24 K1 [plugin]
      420 DUPCLOSURE                       R25 K82 [PROTO_2]
      421 CAPTURE                          VAL R22
      422 CAPTURE                          VAL R20
      423 CALL                             R23 2 0
      424 RETURN                           R0 0
