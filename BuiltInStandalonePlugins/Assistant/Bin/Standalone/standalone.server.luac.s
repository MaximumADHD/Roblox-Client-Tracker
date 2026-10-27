PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["close"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["TestLoader"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["isCli"]
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+5]
       18 GETIMPORT                        R3 K10 [error]
       20 LOADK                            R4 K11 ["roblox-cli should not be loading standalone plugins"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R1 K12 ["SafeFlags"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K13 ["createGetFFlag"]
       30 LOADK                            R5 K14 ["IsLuobuBuild"]
       31 CALL                             R4 1 1
       32 CALL                             R4 0 1
       33 JUMPIFNOT                        R4 ; [+1]
       34 RETURN                           R0 0
       35 GETIMPORT                        R5 K6 [require]
       37 GETTABLEKS                       R6 R0 K15 ["Bin"]
       39 GETTABLEKS                       R6 R6 K16 ["Common"]
       41 GETTABLEKS                       R6 R6 K17 ["isAssistantEnabled"]
       43 CALL                             R5 1 1
       44 MOVE                             R6 R5
       45 CALL                             R6 0 1
       46 JUMPIF                           R6 ; [+1]
       47 RETURN                           R0 0
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K15 ["Bin"]
       52 GETTABLEKS                       R7 R7 K16 ["Common"]
       54 GETTABLEKS                       R7 R7 K18 ["pluginType"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R8 R6 K19 ["get"]
       59 CALL                             R8 0 1
       60 GETTABLEKS                       R9 R6 K20 ["Standalone"]
       62 JUMPIFEQ                         R8 R9 ; [+2]
       64 LOADB                            R7 0 +1
       65 LOADB                            R7 1
       66 JUMPIFNOT                        R7 ; [+238]
       67 GETIMPORT                        R8 K6 [require]
       69 GETTABLEKS                       R9 R1 K21 ["ReactDeveloperTools"]
       71 CALL                             R8 1 1
       72 GETTABLEKS                       R9 R8 K22 ["tryEnableDevtools"]
       74 DUPTABLE                         R10 K26 [{["pluginName"] = "Assistant", ["profileOnStart"] = False}]
       75 CALL                             R9 1 0
       76 GETIMPORT                        R9 K6 [require]
       78 GETTABLEKS                       R10 R1 K27 ["AssistantUI"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K6 [require]
       83 GETTABLEKS                       R11 R0 K28 ["Src"]
       85 GETTABLEKS                       R11 R11 K29 ["Util"]
       87 GETTABLEKS                       R11 R11 K30 ["ConsoleOutputManager"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K6 [require]
       92 GETTABLEKS                       R12 R1 K31 ["DMNetworking"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K6 [require]
       97 GETTABLEKS                       R13 R0 K28 ["Src"]
       99 GETTABLEKS                       R13 R13 K32 ["Flags"]
      101 CALL                             R12 1 1
      102 GETTABLEKS                       R13 R9 K33 ["Utils"]
      104 GETTABLEKS                       R13 R13 K34 ["DataModelType"]
      106 GETTABLEKS                       R13 R13 K35 ["setIsStandalone"]
      108 LOADB                            R14 1
      109 CALL                             R13 1 0
      110 GETIMPORT                        R13 K6 [require]
      112 GETTABLEKS                       R14 R0 K28 ["Src"]
      114 GETTABLEKS                       R14 R14 K29 ["Util"]
      116 GETTABLEKS                       R14 R14 K36 ["StudioNetworkingOLD"]
      118 CALL                             R13 1 1
      119 LOADNIL                          R14
      120 LOADNIL                          R15
      121 GETTABLEKS                       R16 R12 K37 ["FFlagAssistantUseNewDMNetworking"]
      123 JUMPIFNOT                        R16 ; [+44]
      124 LOADNIL                          R16
      125 GETTABLEKS                       R17 R12 K38 ["FFlagDebugLogAssistantUI"]
      127 JUMPIFNOT                        R17 ; [+19]
      128 GETTABLEKS                       R17 R11 K39 ["LogLevel"]
      130 GETTABLEKS                       R18 R12 K40 ["FStringDebugLogAssistantUILogLevel"]
      132 GETTABLE                         R16 R17 R18
      133 JUMPIF                           R16 ; [+13]
      134 GETIMPORT                        R17 K42 [warn]
      136 LOADK                            R18 K43 ["[Assistant] Unknown FStringDebugLogAssistantUILogLevel \"%*\"; using Debug"]
      137 GETTABLEKS                       R20 R12 K40 ["FStringDebugLogAssistantUILogLevel"]
      139 NAMECALL                         R18 R18 K44 ["format"]
      141 CALL                             R18 2 1
      142 CALL                             R17 1 0
      143 GETTABLEKS                       R17 R11 K39 ["LogLevel"]
      145 GETTABLEKS                       R16 R17 K45 ["Debug"]
      147 GETTABLEKS                       R17 R11 K46 ["new"]
      149 DUPTABLE                         R18 K52 [{["plugin"], ["identity"], ["logLevel"], ["useSuspendOverride"] = True}]
      150 GETIMPORT                        R19 K53 [plugin]
      152 SETTABLEKS                       R19 R18 K47 ["plugin"]
      154 GETTABLEKS                       R19 R9 K33 ["Utils"]
      156 GETTABLEKS                       R19 R19 K54 ["NetworkingIdentity"]
      158 GETTABLEKS                       R19 R19 K55 ["getSelfIdentity"]
      160 CALL                             R19 0 1
      161 SETTABLEKS                       R19 R18 K48 ["identity"]
      163 SETTABLEKS                       R16 R18 K49 ["logLevel"]
      165 CALL                             R17 1 1
      166 MOVE                             R15 R17
      167 JUMP                             ; [+21]
      168 GETTABLEKS                       R16 R13 K56 ["create"]
      170 DUPTABLE                         R17 K59 [{["plugin"], ["isGuest"], ["isHost"] = False, ["identity"], ["useSuspendOverride"] = True}]
      171 GETIMPORT                        R18 K53 [plugin]
      173 SETTABLEKS                       R18 R17 K47 ["plugin"]
      175 SETTABLEKS                       R7 R17 K57 ["isGuest"]
      177 GETTABLEKS                       R18 R9 K33 ["Utils"]
      179 GETTABLEKS                       R18 R18 K34 ["DataModelType"]
      181 GETTABLEKS                       R18 R18 K60 ["Types"]
      183 GETTABLEKS                       R18 R18 K20 ["Standalone"]
      185 SETTABLEKS                       R18 R17 K48 ["identity"]
      187 CALL                             R16 1 1
      188 MOVE                             R14 R16
      189 GETTABLEKS                       R16 R12 K61 ["FFlagAssistantConsoleOutputTailFromEnd"]
      191 JUMPIFNOT                        R16 ; [+7]
      192 GETTABLEKS                       R16 R10 K62 ["init"]
      194 GETIMPORT                        R17 K53 [plugin]
      196 MOVE                             R18 R14
      197 MOVE                             R19 R15
      198 CALL                             R16 3 0
      199 GETTABLEKS                       R16 R12 K63 ["FFlagAssistantMultiPlayerAgents"]
      201 JUMPIFNOT                        R16 ; [+18]
      202 GETTABLEKS                       R16 R9 K33 ["Utils"]
      204 GETTABLEKS                       R16 R16 K64 ["MultiPlayersAgentClient"]
      206 GETTABLEKS                       R17 R16 K62 ["init"]
      208 MOVE                             R18 R14
      209 MOVE                             R19 R15
      210 CALL                             R17 2 0
      211 GETIMPORT                        R17 K53 [plugin]
      213 GETTABLEKS                       R17 R17 K65 ["Unloading"]
      215 DUPCLOSURE                       R19 K66 [PROTO_0]
      216 CAPTURE                          VAL R16
      217 NAMECALL                         R17 R17 K67 ["Connect"]
      219 CALL                             R17 2 0
      220 GETIMPORT                        R16 K6 [require]
      222 GETTABLEKS                       R17 R0 K28 ["Src"]
      224 GETTABLEKS                       R17 R17 K29 ["Util"]
      226 GETTABLEKS                       R17 R17 K68 ["StudioState"]
      228 CALL                             R16 1 1
      229 GETTABLEKS                       R17 R16 K62 ["init"]
      231 GETIMPORT                        R18 K53 [plugin]
      233 MOVE                             R19 R14
      234 MOVE                             R20 R15
      235 CALL                             R17 3 0
      236 GETIMPORT                        R17 K6 [require]
      238 GETTABLEKS                       R18 R0 K28 ["Src"]
      240 GETTABLEKS                       R18 R18 K69 ["toolInit"]
      242 CALL                             R17 1 1
      243 MOVE                             R18 R17
      244 GETIMPORT                        R19 K53 [plugin]
      246 MOVE                             R20 R14
      247 MOVE                             R21 R15
      248 MOVE                             R22 R7
      249 CALL                             R18 4 1
      250 GETTABLEKS                       R19 R12 K70 ["FFlagDebugAssistantEval"]
      252 JUMPIFNOT                        R19 ; [+26]
      253 GETTABLEKS                       R19 R9 K71 ["Guest"]
      255 GETTABLEKS                       R19 R19 K72 ["Environment"]
      257 GETIMPORT                        R20 K6 [require]
      259 GETTABLEKS                       R21 R0 K28 ["Src"]
      261 GETTABLEKS                       R21 R21 K73 ["EvalDriver"]
      263 GETTABLEKS                       R21 R21 K74 ["ExternalEvalDriver"]
      265 CALL                             R20 1 1
      266 GETTABLEKS                       R21 R20 K62 ["init"]
      268 GETIMPORT                        R22 K53 [plugin]
      270 MOVE                             R23 R14
      271 MOVE                             R24 R15
      272 GETTABLEKS                       R25 R19 K19 ["get"]
      274 CALL                             R25 0 1
      275 GETTABLEKS                       R25 R25 K75 ["getStudioSessionId"]
      277 CALL                             R25 0 -1
      278 CALL                             R21 -1 0
      279 GETIMPORT                        R19 K6 [require]
      281 GETTABLEKS                       R20 R0 K15 ["Bin"]
      283 GETTABLEKS                       R20 R20 K16 ["Common"]
      285 GETTABLEKS                       R20 R20 K76 ["setup"]
      287 CALL                             R19 1 1
      288 GETIMPORT                        R20 K6 [require]
      290 GETTABLEKS                       R21 R0 K15 ["Bin"]
      292 GETTABLEKS                       R21 R21 K16 ["Common"]
      294 GETTABLEKS                       R21 R21 K77 ["setupMain"]
      296 CALL                             R20 1 1
      297 MOVE                             R21 R19
      298 GETIMPORT                        R22 K53 [plugin]
      300 DUPCLOSURE                       R23 K78 [PROTO_1]
      301 CAPTURE                          VAL R20
      302 CAPTURE                          VAL R18
      303 LOADB                            R24 1
      304 CALL                             R21 3 0
      305 RETURN                           R0 0
