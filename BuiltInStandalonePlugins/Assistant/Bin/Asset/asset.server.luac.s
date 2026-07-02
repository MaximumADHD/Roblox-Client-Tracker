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
       68 JUMPIFNOT                        R5 ; [+11]
       69 GETIMPORT                        R6 K7 [require]
       71 GETTABLEKS                       R7 R0 K8 ["Packages"]
       73 GETTABLEKS                       R7 R7 K25 ["ReactDeveloperTools"]
       75 CALL                             R6 1 1
       76 GETTABLEKS                       R7 R6 K26 ["tryEnableDevtools"]
       78 DUPTABLE                         R8 K30 [{["pluginName"] = "Assistant", ["profileOnStart"] = False}]
       79 CALL                             R7 1 0
       80 GETIMPORT                        R6 K7 [require]
       82 GETTABLEKS                       R7 R0 K8 ["Packages"]
       84 GETTABLEKS                       R7 R7 K31 ["AssistantUI"]
       86 CALL                             R6 1 1
       87 GETIMPORT                        R7 K7 [require]
       89 GETTABLEKS                       R8 R0 K11 ["Src"]
       91 GETTABLEKS                       R8 R8 K32 ["Util"]
       93 GETTABLEKS                       R8 R8 K33 ["StudioNetworking"]
       95 CALL                             R7 1 1
       96 GETTABLEKS                       R8 R6 K34 ["Utils"]
       98 GETTABLEKS                       R8 R8 K35 ["DataModelType"]
      100 GETIMPORT                        R9 K7 [require]
      102 GETTABLEKS                       R10 R0 K11 ["Src"]
      104 GETTABLEKS                       R10 R10 K32 ["Util"]
      106 GETTABLEKS                       R10 R10 K36 ["ConsoleOutputManager"]
      108 CALL                             R9 1 1
      109 GETTABLEKS                       R10 R8 K37 ["getDataModelType"]
      111 CALL                             R10 0 1
      112 GETTABLEKS                       R11 R6 K13 ["Flags"]
      114 GETTABLEKS                       R11 R11 K38 ["Shared"]
      116 GETTABLEKS                       R11 R11 K39 ["FFlagAssistantEval"]
      118 GETTABLEKS                       R12 R6 K13 ["Flags"]
      120 GETTABLEKS                       R12 R12 K38 ["Shared"]
      122 GETTABLEKS                       R12 R12 K40 ["FFlagAssistantMultiPlayerAgents"]
      124 GETTABLEKS                       R13 R6 K34 ["Utils"]
      126 GETTABLEKS                       R13 R13 K41 ["MultiPlayersAgentServer"]
      128 GETTABLEKS                       R14 R6 K34 ["Utils"]
      130 GETTABLEKS                       R14 R14 K42 ["MultiPlayersAgentClient"]
      132 GETTABLEKS                       R15 R6 K13 ["Flags"]
      134 GETTABLEKS                       R15 R15 K38 ["Shared"]
      136 GETTABLEKS                       R15 R15 K43 ["FFlagAssistantConsoleOutputTailFromEnd"]
      138 GETTABLEKS                       R16 R7 K44 ["create"]
      140 DUPTABLE                         R17 K50 [{[1], ["isGuest"], ["isHost"] = True, ["identity"], ["useSuspendOverride"] = True}]
      141 GETIMPORT                        R18 K1 [plugin]
      143 SETTABLEKS                       R18 R17 K0 ["plugin"]
      145 SETTABLEKS                       R5 R17 K45 ["isGuest"]
      147 SETTABLEKS                       R10 R17 K48 ["identity"]
      149 CALL                             R16 1 1
      150 MOVE                             R17 R15
      151 CALL                             R17 0 1
      152 JUMPIFNOT                        R17 ; [+6]
      153 GETTABLEKS                       R17 R9 K51 ["init"]
      155 GETIMPORT                        R18 K1 [plugin]
      157 MOVE                             R19 R16
      158 CALL                             R17 2 0
      159 GETTABLEKS                       R17 R8 K52 ["Types"]
      161 GETTABLEKS                       R17 R17 K53 ["Client"]
      163 JUMPIFNOTEQ                      R10 R17 ; [+33]
      165 GETIMPORT                        R17 K7 [require]
      167 GETTABLEKS                       R18 R0 K11 ["Src"]
      169 GETTABLEKS                       R18 R18 K32 ["Util"]
      171 GETTABLEKS                       R18 R18 K54 ["GameLoadedNotifier"]
      173 CALL                             R17 1 1
      174 GETTABLEKS                       R18 R17 K51 ["init"]
      176 MOVE                             R19 R10
      177 GETIMPORT                        R20 K1 [plugin]
      179 MOVE                             R21 R16
      180 CALL                             R18 3 0
      181 MOVE                             R18 R12
      182 CALL                             R18 0 1
      183 JUMPIFNOT                        R18 ; [+13]
      184 GETTABLEKS                       R18 R14 K51 ["init"]
      186 MOVE                             R19 R16
      187 CALL                             R18 1 0
      188 GETIMPORT                        R18 K1 [plugin]
      190 GETTABLEKS                       R18 R18 K55 ["Unloading"]
      192 DUPCLOSURE                       R20 K56 [PROTO_0]
      193 CAPTURE                          VAL R14
      194 NAMECALL                         R18 R18 K57 ["Connect"]
      196 CALL                             R18 2 0
      197 GETTABLEKS                       R17 R8 K52 ["Types"]
      199 GETTABLEKS                       R17 R17 K58 ["Server"]
      201 JUMPIFNOTEQ                      R10 R17 ; [+17]
      203 GETIMPORT                        R17 K7 [require]
      205 GETTABLEKS                       R18 R0 K11 ["Src"]
      207 GETTABLEKS                       R18 R18 K32 ["Util"]
      209 GETTABLEKS                       R18 R18 K59 ["GameStoppedNotifier"]
      211 CALL                             R17 1 1
      212 GETTABLEKS                       R18 R17 K51 ["init"]
      214 MOVE                             R19 R10
      215 GETIMPORT                        R20 K1 [plugin]
      217 MOVE                             R21 R16
      218 CALL                             R18 3 0
      219 MOVE                             R17 R11
      220 CALL                             R17 0 1
      221 JUMPIFNOT                        R17 ; [+105]
      222 GETIMPORT                        R17 K7 [require]
      224 GETTABLEKS                       R18 R0 K11 ["Src"]
      226 GETTABLEKS                       R18 R18 K60 ["EvalDriver"]
      228 GETTABLEKS                       R18 R18 K61 ["EvalUtils"]
      230 CALL                             R17 1 1
      231 GETTABLEKS                       R18 R17 K51 ["init"]
      233 GETIMPORT                        R19 K1 [plugin]
      235 CALL                             R18 1 0
      236 GETTABLEKS                       R18 R8 K52 ["Types"]
      238 GETTABLEKS                       R18 R18 K58 ["Server"]
      240 JUMPIFNOTEQ                      R10 R18 ; [+30]
      242 GETIMPORT                        R18 K7 [require]
      244 GETTABLEKS                       R19 R0 K11 ["Src"]
      246 GETTABLEKS                       R19 R19 K60 ["EvalDriver"]
      248 GETTABLEKS                       R19 R19 K62 ["EvalDriverPlaySoloServerDM"]
      250 CALL                             R18 1 1
      251 GETIMPORT                        R19 K7 [require]
      253 GETTABLEKS                       R20 R0 K11 ["Src"]
      255 GETTABLEKS                       R20 R20 K60 ["EvalDriver"]
      257 GETTABLEKS                       R20 R20 K63 ["EvalDriverMultiPlayers"]
      259 CALL                             R19 1 1
      260 GETTABLEKS                       R20 R18 K51 ["init"]
      262 GETIMPORT                        R21 K1 [plugin]
      264 MOVE                             R22 R16
      265 CALL                             R20 2 0
      266 GETTABLEKS                       R20 R19 K51 ["init"]
      268 GETIMPORT                        R21 K1 [plugin]
      270 CALL                             R20 1 0
      271 GETTABLEKS                       R18 R8 K52 ["Types"]
      273 GETTABLEKS                       R18 R18 K53 ["Client"]
      275 JUMPIFNOTEQ                      R10 R18 ; [+30]
      277 GETIMPORT                        R18 K7 [require]
      279 GETTABLEKS                       R19 R0 K11 ["Src"]
      281 GETTABLEKS                       R19 R19 K60 ["EvalDriver"]
      283 GETTABLEKS                       R19 R19 K64 ["EvalDriverPlaySoloClientDM"]
      285 CALL                             R18 1 1
      286 GETIMPORT                        R19 K7 [require]
      288 GETTABLEKS                       R20 R0 K11 ["Src"]
      290 GETTABLEKS                       R20 R20 K60 ["EvalDriver"]
      292 GETTABLEKS                       R20 R20 K63 ["EvalDriverMultiPlayers"]
      294 CALL                             R19 1 1
      295 GETTABLEKS                       R20 R18 K51 ["init"]
      297 GETIMPORT                        R21 K1 [plugin]
      299 MOVE                             R22 R16
      300 CALL                             R20 2 0
      301 GETTABLEKS                       R20 R19 K51 ["init"]
      303 GETIMPORT                        R21 K1 [plugin]
      305 CALL                             R20 1 0
      306 GETTABLEKS                       R18 R8 K52 ["Types"]
      308 GETTABLEKS                       R18 R18 K65 ["Edit"]
      310 JUMPIFNOTEQ                      R10 R18 ; [+16]
      312 GETIMPORT                        R18 K7 [require]
      314 GETTABLEKS                       R19 R0 K11 ["Src"]
      316 GETTABLEKS                       R19 R19 K60 ["EvalDriver"]
      318 GETTABLEKS                       R19 R19 K66 ["EvalDriverEditDM"]
      320 CALL                             R18 1 1
      321 GETTABLEKS                       R19 R18 K51 ["init"]
      323 GETIMPORT                        R20 K1 [plugin]
      325 MOVE                             R21 R16
      326 CALL                             R19 2 0
      327 GETIMPORT                        R17 K7 [require]
      329 GETTABLEKS                       R18 R0 K11 ["Src"]
      331 GETTABLEKS                       R18 R18 K67 ["toolInit"]
      333 CALL                             R17 1 1
      334 MOVE                             R18 R17
      335 GETIMPORT                        R19 K1 [plugin]
      337 MOVE                             R20 R16
      338 CALL                             R18 2 1
      339 MOVE                             R19 R12
      340 CALL                             R19 0 1
      341 JUMPIFNOT                        R19 ; [+32]
      342 GETTABLEKS                       R19 R8 K52 ["Types"]
      344 GETTABLEKS                       R19 R19 K65 ["Edit"]
      346 JUMPIFNOTEQ                      R10 R19 ; [+27]
      348 GETIMPORT                        R19 K7 [require]
      350 GETTABLEKS                       R20 R0 K11 ["Src"]
      352 GETTABLEKS                       R20 R20 K60 ["EvalDriver"]
      354 GETTABLEKS                       R20 R20 K61 ["EvalUtils"]
      356 CALL                             R19 1 1
      357 GETTABLEKS                       R20 R19 K51 ["init"]
      359 GETIMPORT                        R21 K1 [plugin]
      361 CALL                             R20 1 0
      362 GETTABLEKS                       R20 R13 K51 ["init"]
      364 CALL                             R20 0 0
      365 GETIMPORT                        R20 K1 [plugin]
      367 GETTABLEKS                       R20 R20 K55 ["Unloading"]
      369 DUPCLOSURE                       R22 K68 [PROTO_1]
      370 CAPTURE                          VAL R13
      371 NAMECALL                         R20 R20 K57 ["Connect"]
      373 CALL                             R20 2 0
      374 JUMPIFNOT                        R5 ; [+25]
      375 GETIMPORT                        R19 K7 [require]
      377 GETTABLEKS                       R20 R0 K19 ["Bin"]
      379 GETTABLEKS                       R20 R20 K20 ["Common"]
      381 GETTABLEKS                       R20 R20 K69 ["setup"]
      383 CALL                             R19 1 1
      384 GETIMPORT                        R20 K7 [require]
      386 GETTABLEKS                       R21 R0 K19 ["Bin"]
      388 GETTABLEKS                       R21 R21 K20 ["Common"]
      390 GETTABLEKS                       R21 R21 K70 ["setupMain"]
      392 CALL                             R20 1 1
      393 MOVE                             R21 R19
      394 GETIMPORT                        R22 K1 [plugin]
      396 DUPCLOSURE                       R23 K71 [PROTO_2]
      397 CAPTURE                          VAL R20
      398 CAPTURE                          VAL R18
      399 CALL                             R21 2 0
      400 RETURN                           R0 0
