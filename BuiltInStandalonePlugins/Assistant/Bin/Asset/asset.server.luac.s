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
       41 GETIMPORT                        R5 K17 [game]
       43 LOADK                            R7 K18 ["RunService"]
       44 NAMECALL                         R5 R5 K19 ["GetService"]
       46 CALL                             R5 2 1
       47 GETIMPORT                        R6 K8 [require]
       49 GETTABLEKS                       R7 R0 K20 ["Bin"]
       51 GETTABLEKS                       R7 R7 K21 ["Common"]
       53 GETTABLEKS                       R7 R7 K22 ["pluginType"]
       55 CALL                             R6 1 1
       56 LOADB                            R7 0
       57 GETTABLEKS                       R8 R6 K23 ["get"]
       59 CALL                             R8 0 1
       60 GETTABLEKS                       R9 R6 K24 ["Asset"]
       62 JUMPIFNOTEQ                      R8 R9 ; [+4]
       64 NAMECALL                         R7 R5 K25 ["IsEdit"]
       66 CALL                             R7 1 1
       67 JUMPIFNOT                        R7 ; [+9]
       68 GETIMPORT                        R8 K8 [require]
       70 GETTABLEKS                       R9 R1 K26 ["ReactDeveloperTools"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R8 K27 ["tryEnableDevtools"]
       75 DUPTABLE                         R10 K31 [{["pluginName"] = "Assistant", ["profileOnStart"] = False}]
       76 CALL                             R9 1 0
       77 GETIMPORT                        R8 K8 [require]
       79 GETTABLEKS                       R9 R1 K32 ["AssistantUI"]
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K8 [require]
       84 GETTABLEKS                       R10 R0 K11 ["Src"]
       86 GETTABLEKS                       R10 R10 K33 ["Util"]
       88 GETTABLEKS                       R10 R10 K34 ["ConsoleOutputManager"]
       90 CALL                             R9 1 1
       91 GETIMPORT                        R10 K8 [require]
       93 GETTABLEKS                       R11 R0 K11 ["Src"]
       95 GETTABLEKS                       R11 R11 K35 ["Flags"]
       97 CALL                             R10 1 1
       98 GETIMPORT                        R11 K8 [require]
      100 GETTABLEKS                       R12 R0 K11 ["Src"]
      102 GETTABLEKS                       R12 R12 K33 ["Util"]
      104 GETTABLEKS                       R12 R12 K36 ["StudioNetworking"]
      106 CALL                             R11 1 1
      107 GETTABLEKS                       R12 R8 K37 ["Utils"]
      109 GETTABLEKS                       R12 R12 K38 ["DataModelType"]
      111 GETTABLEKS                       R13 R12 K39 ["getDataModelType"]
      113 CALL                             R13 0 1
      114 GETTABLEKS                       R14 R8 K37 ["Utils"]
      116 GETTABLEKS                       R14 R14 K40 ["MultiPlayersAgentServer"]
      118 GETTABLEKS                       R15 R8 K37 ["Utils"]
      120 GETTABLEKS                       R15 R15 K41 ["MultiPlayersAgentClient"]
      122 GETTABLEKS                       R16 R11 K42 ["create"]
      124 DUPTABLE                         R17 K48 [{[1], ["isGuest"], ["isHost"] = True, ["identity"], ["useSuspendOverride"] = True}]
      125 GETIMPORT                        R18 K1 [plugin]
      127 SETTABLEKS                       R18 R17 K0 ["plugin"]
      129 SETTABLEKS                       R7 R17 K43 ["isGuest"]
      131 SETTABLEKS                       R13 R17 K46 ["identity"]
      133 CALL                             R16 1 1
      134 GETTABLEKS                       R17 R10 K49 ["FFlagAssistantConsoleOutputTailFromEnd"]
      136 JUMPIFNOT                        R17 ; [+6]
      137 GETTABLEKS                       R17 R9 K50 ["init"]
      139 GETIMPORT                        R18 K1 [plugin]
      141 MOVE                             R19 R16
      142 CALL                             R17 2 0
      143 GETTABLEKS                       R17 R12 K51 ["Types"]
      145 GETTABLEKS                       R17 R17 K52 ["Client"]
      147 JUMPIFNOTEQ                      R13 R17 ; [+33]
      149 GETIMPORT                        R17 K8 [require]
      151 GETTABLEKS                       R18 R0 K11 ["Src"]
      153 GETTABLEKS                       R18 R18 K33 ["Util"]
      155 GETTABLEKS                       R18 R18 K53 ["GameLoadedNotifier"]
      157 CALL                             R17 1 1
      158 GETTABLEKS                       R18 R17 K50 ["init"]
      160 MOVE                             R19 R13
      161 GETIMPORT                        R20 K1 [plugin]
      163 MOVE                             R21 R16
      164 CALL                             R18 3 0
      165 GETTABLEKS                       R18 R10 K54 ["FFlagAssistantMultiPlayerAgents"]
      167 JUMPIFNOT                        R18 ; [+13]
      168 GETTABLEKS                       R18 R15 K50 ["init"]
      170 MOVE                             R19 R16
      171 CALL                             R18 1 0
      172 GETIMPORT                        R18 K1 [plugin]
      174 GETTABLEKS                       R18 R18 K55 ["Unloading"]
      176 DUPCLOSURE                       R20 K56 [PROTO_0]
      177 CAPTURE                          VAL R15
      178 NAMECALL                         R18 R18 K57 ["Connect"]
      180 CALL                             R18 2 0
      181 GETTABLEKS                       R17 R12 K51 ["Types"]
      183 GETTABLEKS                       R17 R17 K58 ["Server"]
      185 JUMPIFNOTEQ                      R13 R17 ; [+17]
      187 GETIMPORT                        R17 K8 [require]
      189 GETTABLEKS                       R18 R0 K11 ["Src"]
      191 GETTABLEKS                       R18 R18 K33 ["Util"]
      193 GETTABLEKS                       R18 R18 K59 ["GameStoppedNotifier"]
      195 CALL                             R17 1 1
      196 GETTABLEKS                       R18 R17 K50 ["init"]
      198 MOVE                             R19 R13
      199 GETIMPORT                        R20 K1 [plugin]
      201 MOVE                             R21 R16
      202 CALL                             R18 3 0
      203 GETTABLEKS                       R17 R10 K60 ["FFlagAssistantEval"]
      205 JUMPIFNOT                        R17 ; [+105]
      206 GETIMPORT                        R17 K8 [require]
      208 GETTABLEKS                       R18 R0 K11 ["Src"]
      210 GETTABLEKS                       R18 R18 K61 ["EvalDriver"]
      212 GETTABLEKS                       R18 R18 K62 ["EvalUtils"]
      214 CALL                             R17 1 1
      215 GETTABLEKS                       R18 R17 K50 ["init"]
      217 GETIMPORT                        R19 K1 [plugin]
      219 CALL                             R18 1 0
      220 GETTABLEKS                       R18 R12 K51 ["Types"]
      222 GETTABLEKS                       R18 R18 K58 ["Server"]
      224 JUMPIFNOTEQ                      R13 R18 ; [+30]
      226 GETIMPORT                        R18 K8 [require]
      228 GETTABLEKS                       R19 R0 K11 ["Src"]
      230 GETTABLEKS                       R19 R19 K61 ["EvalDriver"]
      232 GETTABLEKS                       R19 R19 K63 ["EvalDriverPlaySoloServerDM"]
      234 CALL                             R18 1 1
      235 GETIMPORT                        R19 K8 [require]
      237 GETTABLEKS                       R20 R0 K11 ["Src"]
      239 GETTABLEKS                       R20 R20 K61 ["EvalDriver"]
      241 GETTABLEKS                       R20 R20 K64 ["EvalDriverMultiPlayers"]
      243 CALL                             R19 1 1
      244 GETTABLEKS                       R20 R18 K50 ["init"]
      246 GETIMPORT                        R21 K1 [plugin]
      248 MOVE                             R22 R16
      249 CALL                             R20 2 0
      250 GETTABLEKS                       R20 R19 K50 ["init"]
      252 GETIMPORT                        R21 K1 [plugin]
      254 CALL                             R20 1 0
      255 GETTABLEKS                       R18 R12 K51 ["Types"]
      257 GETTABLEKS                       R18 R18 K52 ["Client"]
      259 JUMPIFNOTEQ                      R13 R18 ; [+30]
      261 GETIMPORT                        R18 K8 [require]
      263 GETTABLEKS                       R19 R0 K11 ["Src"]
      265 GETTABLEKS                       R19 R19 K61 ["EvalDriver"]
      267 GETTABLEKS                       R19 R19 K65 ["EvalDriverPlaySoloClientDM"]
      269 CALL                             R18 1 1
      270 GETIMPORT                        R19 K8 [require]
      272 GETTABLEKS                       R20 R0 K11 ["Src"]
      274 GETTABLEKS                       R20 R20 K61 ["EvalDriver"]
      276 GETTABLEKS                       R20 R20 K64 ["EvalDriverMultiPlayers"]
      278 CALL                             R19 1 1
      279 GETTABLEKS                       R20 R18 K50 ["init"]
      281 GETIMPORT                        R21 K1 [plugin]
      283 MOVE                             R22 R16
      284 CALL                             R20 2 0
      285 GETTABLEKS                       R20 R19 K50 ["init"]
      287 GETIMPORT                        R21 K1 [plugin]
      289 CALL                             R20 1 0
      290 GETTABLEKS                       R18 R12 K51 ["Types"]
      292 GETTABLEKS                       R18 R18 K66 ["Edit"]
      294 JUMPIFNOTEQ                      R13 R18 ; [+16]
      296 GETIMPORT                        R18 K8 [require]
      298 GETTABLEKS                       R19 R0 K11 ["Src"]
      300 GETTABLEKS                       R19 R19 K61 ["EvalDriver"]
      302 GETTABLEKS                       R19 R19 K67 ["EvalDriverEditDM"]
      304 CALL                             R18 1 1
      305 GETTABLEKS                       R19 R18 K50 ["init"]
      307 GETIMPORT                        R20 K1 [plugin]
      309 MOVE                             R21 R16
      310 CALL                             R19 2 0
      311 GETIMPORT                        R17 K8 [require]
      313 GETTABLEKS                       R18 R0 K11 ["Src"]
      315 GETTABLEKS                       R18 R18 K68 ["toolInit"]
      317 CALL                             R17 1 1
      318 MOVE                             R18 R17
      319 GETIMPORT                        R19 K1 [plugin]
      321 MOVE                             R20 R16
      322 CALL                             R18 2 1
      323 GETTABLEKS                       R19 R10 K54 ["FFlagAssistantMultiPlayerAgents"]
      325 JUMPIFNOT                        R19 ; [+32]
      326 GETTABLEKS                       R19 R12 K51 ["Types"]
      328 GETTABLEKS                       R19 R19 K66 ["Edit"]
      330 JUMPIFNOTEQ                      R13 R19 ; [+27]
      332 GETIMPORT                        R19 K8 [require]
      334 GETTABLEKS                       R20 R0 K11 ["Src"]
      336 GETTABLEKS                       R20 R20 K61 ["EvalDriver"]
      338 GETTABLEKS                       R20 R20 K62 ["EvalUtils"]
      340 CALL                             R19 1 1
      341 GETTABLEKS                       R20 R19 K50 ["init"]
      343 GETIMPORT                        R21 K1 [plugin]
      345 CALL                             R20 1 0
      346 GETTABLEKS                       R20 R14 K50 ["init"]
      348 CALL                             R20 0 0
      349 GETIMPORT                        R20 K1 [plugin]
      351 GETTABLEKS                       R20 R20 K55 ["Unloading"]
      353 DUPCLOSURE                       R22 K69 [PROTO_1]
      354 CAPTURE                          VAL R14
      355 NAMECALL                         R20 R20 K57 ["Connect"]
      357 CALL                             R20 2 0
      358 JUMPIFNOT                        R7 ; [+25]
      359 GETIMPORT                        R19 K8 [require]
      361 GETTABLEKS                       R20 R0 K20 ["Bin"]
      363 GETTABLEKS                       R20 R20 K21 ["Common"]
      365 GETTABLEKS                       R20 R20 K70 ["setup"]
      367 CALL                             R19 1 1
      368 GETIMPORT                        R20 K8 [require]
      370 GETTABLEKS                       R21 R0 K20 ["Bin"]
      372 GETTABLEKS                       R21 R21 K21 ["Common"]
      374 GETTABLEKS                       R21 R21 K71 ["setupMain"]
      376 CALL                             R20 1 1
      377 MOVE                             R21 R19
      378 GETIMPORT                        R22 K1 [plugin]
      380 DUPCLOSURE                       R23 K72 [PROTO_2]
      381 CAPTURE                          VAL R20
      382 CAPTURE                          VAL R18
      383 CALL                             R21 2 0
      384 RETURN                           R0 0
