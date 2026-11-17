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
       66 JUMPIFNOT                        R7 ; [+196]
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
      110 LOADNIL                          R13
      111 GETTABLEKS                       R14 R12 K36 ["FFlagDebugLogAssistantUI"]
      113 JUMPIFNOT                        R14 ; [+19]
      114 GETTABLEKS                       R14 R11 K37 ["LogLevel"]
      116 GETTABLEKS                       R15 R12 K38 ["FStringDebugLogAssistantUILogLevel"]
      118 GETTABLE                         R13 R14 R15
      119 JUMPIF                           R13 ; [+13]
      120 GETIMPORT                        R14 K40 [warn]
      122 LOADK                            R15 K41 ["[Assistant] Unknown FStringDebugLogAssistantUILogLevel \"%*\"; using Debug"]
      123 GETTABLEKS                       R17 R12 K38 ["FStringDebugLogAssistantUILogLevel"]
      125 NAMECALL                         R15 R15 K42 ["format"]
      127 CALL                             R15 2 1
      128 CALL                             R14 1 0
      129 GETTABLEKS                       R14 R11 K37 ["LogLevel"]
      131 GETTABLEKS                       R13 R14 K43 ["Debug"]
      133 GETTABLEKS                       R14 R11 K44 ["new"]
      135 DUPTABLE                         R15 K50 [{["plugin"], ["identity"], ["logLevel"], ["useSuspendOverride"] = True}]
      136 GETIMPORT                        R16 K51 [plugin]
      138 SETTABLEKS                       R16 R15 K45 ["plugin"]
      140 GETTABLEKS                       R16 R9 K33 ["Utils"]
      142 GETTABLEKS                       R16 R16 K52 ["NetworkingIdentity"]
      144 GETTABLEKS                       R16 R16 K53 ["getSelfIdentity"]
      146 CALL                             R16 0 1
      147 SETTABLEKS                       R16 R15 K46 ["identity"]
      149 SETTABLEKS                       R13 R15 K47 ["logLevel"]
      151 CALL                             R14 1 1
      152 GETTABLEKS                       R15 R12 K54 ["FFlagAssistantConsoleOutputTailFromEnd"]
      154 JUMPIFNOT                        R15 ; [+6]
      155 GETTABLEKS                       R15 R10 K55 ["init"]
      157 GETIMPORT                        R16 K51 [plugin]
      159 MOVE                             R17 R14
      160 CALL                             R15 2 0
      161 GETTABLEKS                       R15 R12 K56 ["FFlagAssistantMultiPlayerAgents"]
      163 JUMPIFNOT                        R15 ; [+17]
      164 GETTABLEKS                       R15 R9 K33 ["Utils"]
      166 GETTABLEKS                       R15 R15 K57 ["MultiPlayersAgentClient"]
      168 GETTABLEKS                       R16 R15 K55 ["init"]
      170 MOVE                             R17 R14
      171 CALL                             R16 1 0
      172 GETIMPORT                        R16 K51 [plugin]
      174 GETTABLEKS                       R16 R16 K58 ["Unloading"]
      176 DUPCLOSURE                       R18 K59 [PROTO_0]
      177 CAPTURE                          VAL R15
      178 NAMECALL                         R16 R16 K60 ["Connect"]
      180 CALL                             R16 2 0
      181 GETIMPORT                        R15 K6 [require]
      183 GETTABLEKS                       R16 R0 K28 ["Src"]
      185 GETTABLEKS                       R16 R16 K29 ["Util"]
      187 GETTABLEKS                       R16 R16 K61 ["StudioState"]
      189 CALL                             R15 1 1
      190 GETTABLEKS                       R16 R15 K55 ["init"]
      192 GETIMPORT                        R17 K51 [plugin]
      194 MOVE                             R18 R14
      195 CALL                             R16 2 0
      196 GETIMPORT                        R16 K6 [require]
      198 GETTABLEKS                       R17 R0 K28 ["Src"]
      200 GETTABLEKS                       R17 R17 K62 ["toolInit"]
      202 CALL                             R16 1 1
      203 MOVE                             R17 R16
      204 GETIMPORT                        R18 K51 [plugin]
      206 MOVE                             R19 R14
      207 MOVE                             R20 R7
      208 CALL                             R17 3 1
      209 GETTABLEKS                       R18 R12 K63 ["FFlagDebugAssistantEval"]
      211 JUMPIFNOT                        R18 ; [+25]
      212 GETTABLEKS                       R18 R9 K64 ["Guest"]
      214 GETTABLEKS                       R18 R18 K65 ["Environment"]
      216 GETIMPORT                        R19 K6 [require]
      218 GETTABLEKS                       R20 R0 K28 ["Src"]
      220 GETTABLEKS                       R20 R20 K66 ["EvalDriver"]
      222 GETTABLEKS                       R20 R20 K67 ["ExternalEvalDriver"]
      224 CALL                             R19 1 1
      225 GETTABLEKS                       R20 R19 K55 ["init"]
      227 GETIMPORT                        R21 K51 [plugin]
      229 MOVE                             R22 R14
      230 GETTABLEKS                       R23 R18 K19 ["get"]
      232 CALL                             R23 0 1
      233 GETTABLEKS                       R23 R23 K68 ["getStudioSessionId"]
      235 CALL                             R23 0 -1
      236 CALL                             R20 -1 0
      237 GETIMPORT                        R18 K6 [require]
      239 GETTABLEKS                       R19 R0 K15 ["Bin"]
      241 GETTABLEKS                       R19 R19 K16 ["Common"]
      243 GETTABLEKS                       R19 R19 K69 ["setup"]
      245 CALL                             R18 1 1
      246 GETIMPORT                        R19 K6 [require]
      248 GETTABLEKS                       R20 R0 K15 ["Bin"]
      250 GETTABLEKS                       R20 R20 K16 ["Common"]
      252 GETTABLEKS                       R20 R20 K70 ["setupMain"]
      254 CALL                             R19 1 1
      255 MOVE                             R20 R18
      256 GETIMPORT                        R21 K51 [plugin]
      258 DUPCLOSURE                       R22 K71 [PROTO_1]
      259 CAPTURE                          VAL R19
      260 CAPTURE                          VAL R17
      261 LOADB                            R23 1
      262 CALL                             R20 3 0
      263 RETURN                           R0 0
