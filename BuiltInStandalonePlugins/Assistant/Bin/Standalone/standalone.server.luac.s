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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["isCli"]
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETIMPORT                        R2 K10 [error]
       20 LOADK                            R3 K11 ["roblox-cli should not be loading standalone plugins"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R2 K5 [require]
       25 GETTABLEKS                       R3 R0 K12 ["Src"]
       27 GETTABLEKS                       R3 R3 K13 ["Flags"]
       29 GETTABLEKS                       R3 R3 K14 ["FFlagIsLuobuBuild"]
       31 CALL                             R2 1 1
       32 MOVE                             R3 R2
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+1]
       35 RETURN                           R0 0
       36 GETIMPORT                        R3 K5 [require]
       38 GETTABLEKS                       R4 R0 K15 ["Bin"]
       40 GETTABLEKS                       R4 R4 K16 ["Common"]
       42 GETTABLEKS                       R4 R4 K17 ["pluginType"]
       44 CALL                             R3 1 1
       45 GETTABLEKS                       R5 R3 K18 ["get"]
       47 CALL                             R5 0 1
       48 GETTABLEKS                       R6 R3 K19 ["Standalone"]
       50 JUMPIFEQ                         R5 R6 ; [+2]
       52 LOADB                            R4 0 +1
       53 LOADB                            R4 1
       54 JUMPIFNOT                        R4 ; [+210]
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R6 R0 K6 ["Packages"]
       59 GETTABLEKS                       R6 R6 K20 ["ReactDeveloperTools"]
       61 CALL                             R5 1 1
       62 GETTABLEKS                       R6 R5 K21 ["tryEnableDevtools"]
       64 DUPTABLE                         R7 K25 [{["pluginName"] = "Assistant", ["profileOnStart"] = False}]
       65 CALL                             R6 1 0
       66 GETIMPORT                        R6 K5 [require]
       68 GETTABLEKS                       R7 R0 K6 ["Packages"]
       70 GETTABLEKS                       R7 R7 K26 ["AssistantUI"]
       72 CALL                             R6 1 1
       73 GETIMPORT                        R7 K5 [require]
       75 GETTABLEKS                       R8 R0 K12 ["Src"]
       77 GETTABLEKS                       R8 R8 K27 ["Util"]
       79 GETTABLEKS                       R8 R8 K28 ["ConsoleOutputManager"]
       81 CALL                             R7 1 1
       82 GETTABLEKS                       R8 R6 K13 ["Flags"]
       84 GETTABLEKS                       R8 R8 K29 ["Shared"]
       86 GETTABLEKS                       R8 R8 K30 ["FFlagAssistantStudioStateSystemReminder"]
       88 GETTABLEKS                       R9 R6 K13 ["Flags"]
       90 GETTABLEKS                       R9 R9 K29 ["Shared"]
       92 GETTABLEKS                       R9 R9 K31 ["FFlagAssistantEval"]
       94 GETTABLEKS                       R10 R6 K13 ["Flags"]
       96 GETTABLEKS                       R10 R10 K29 ["Shared"]
       98 GETTABLEKS                       R10 R10 K32 ["FFlagPrimGenRetryInPlayTest"]
      100 GETTABLEKS                       R11 R6 K13 ["Flags"]
      102 GETTABLEKS                       R11 R11 K29 ["Shared"]
      104 GETTABLEKS                       R11 R11 K33 ["FFlagAssistantMultiPlayerAgents"]
      106 GETTABLEKS                       R12 R6 K13 ["Flags"]
      108 GETTABLEKS                       R12 R12 K29 ["Shared"]
      110 GETTABLEKS                       R12 R12 K34 ["FFlagAssistantConsoleOutputTailFromEnd"]
      112 GETTABLEKS                       R13 R6 K35 ["Utils"]
      114 GETTABLEKS                       R13 R13 K36 ["DataModelType"]
      116 GETTABLEKS                       R13 R13 K37 ["setIsStandalone"]
      118 LOADB                            R14 1
      119 CALL                             R13 1 0
      120 GETIMPORT                        R13 K5 [require]
      122 GETTABLEKS                       R14 R0 K12 ["Src"]
      124 GETTABLEKS                       R14 R14 K27 ["Util"]
      126 GETTABLEKS                       R14 R14 K38 ["StudioNetworking"]
      128 CALL                             R13 1 1
      129 GETTABLEKS                       R14 R13 K39 ["create"]
      131 DUPTABLE                         R15 K46 [{["plugin"], ["isGuest"], ["isHost"] = False, ["identity"], ["useSuspendOverride"] = True}]
      132 GETIMPORT                        R16 K47 [plugin]
      134 SETTABLEKS                       R16 R15 K40 ["plugin"]
      136 SETTABLEKS                       R4 R15 K41 ["isGuest"]
      138 GETTABLEKS                       R16 R6 K35 ["Utils"]
      140 GETTABLEKS                       R16 R16 K36 ["DataModelType"]
      142 GETTABLEKS                       R16 R16 K48 ["Types"]
      144 GETTABLEKS                       R16 R16 K19 ["Standalone"]
      146 SETTABLEKS                       R16 R15 K43 ["identity"]
      148 CALL                             R14 1 1
      149 MOVE                             R15 R12
      150 CALL                             R15 0 1
      151 JUMPIFNOT                        R15 ; [+6]
      152 GETTABLEKS                       R15 R7 K49 ["init"]
      154 GETIMPORT                        R16 K47 [plugin]
      156 MOVE                             R17 R14
      157 CALL                             R15 2 0
      158 MOVE                             R15 R11
      159 CALL                             R15 0 1
      160 JUMPIFNOT                        R15 ; [+17]
      161 GETTABLEKS                       R15 R6 K35 ["Utils"]
      163 GETTABLEKS                       R15 R15 K50 ["MultiPlayersAgentClient"]
      165 GETTABLEKS                       R16 R15 K49 ["init"]
      167 MOVE                             R17 R14
      168 CALL                             R16 1 0
      169 GETIMPORT                        R16 K47 [plugin]
      171 GETTABLEKS                       R16 R16 K51 ["Unloading"]
      173 DUPCLOSURE                       R18 K52 [PROTO_0]
      174 CAPTURE                          VAL R15
      175 NAMECALL                         R16 R16 K53 ["Connect"]
      177 CALL                             R16 2 0
      178 MOVE                             R15 R8
      179 CALL                             R15 0 1
      180 JUMPIF                           R15 ; [+3]
      181 MOVE                             R15 R10
      182 CALL                             R15 0 1
      183 JUMPIFNOT                        R15 ; [+15]
      184 GETIMPORT                        R15 K5 [require]
      186 GETTABLEKS                       R16 R0 K12 ["Src"]
      188 GETTABLEKS                       R16 R16 K27 ["Util"]
      190 GETTABLEKS                       R16 R16 K54 ["StudioState"]
      192 CALL                             R15 1 1
      193 GETTABLEKS                       R16 R15 K49 ["init"]
      195 GETIMPORT                        R17 K47 [plugin]
      197 MOVE                             R18 R14
      198 CALL                             R16 2 0
      199 GETIMPORT                        R15 K5 [require]
      201 GETTABLEKS                       R16 R0 K12 ["Src"]
      203 GETTABLEKS                       R16 R16 K55 ["toolInit"]
      205 CALL                             R15 1 1
      206 MOVE                             R16 R15
      207 GETIMPORT                        R17 K47 [plugin]
      209 MOVE                             R18 R14
      210 CALL                             R16 2 1
      211 MOVE                             R17 R9
      212 CALL                             R17 0 1
      213 JUMPIFNOT                        R17 ; [+25]
      214 GETTABLEKS                       R17 R6 K56 ["Guest"]
      216 GETTABLEKS                       R17 R17 K57 ["Environment"]
      218 GETIMPORT                        R18 K5 [require]
      220 GETTABLEKS                       R19 R0 K12 ["Src"]
      222 GETTABLEKS                       R19 R19 K58 ["EvalDriver"]
      224 GETTABLEKS                       R19 R19 K59 ["ExternalEvalDriver"]
      226 CALL                             R18 1 1
      227 GETTABLEKS                       R19 R18 K49 ["init"]
      229 GETIMPORT                        R20 K47 [plugin]
      231 MOVE                             R21 R14
      232 GETTABLEKS                       R22 R17 K18 ["get"]
      234 CALL                             R22 0 1
      235 GETTABLEKS                       R22 R22 K60 ["getStudioSessionId"]
      237 CALL                             R22 0 -1
      238 CALL                             R19 -1 0
      239 GETIMPORT                        R17 K5 [require]
      241 GETTABLEKS                       R18 R0 K15 ["Bin"]
      243 GETTABLEKS                       R18 R18 K16 ["Common"]
      245 GETTABLEKS                       R18 R18 K61 ["setup"]
      247 CALL                             R17 1 1
      248 GETIMPORT                        R18 K5 [require]
      250 GETTABLEKS                       R19 R0 K15 ["Bin"]
      252 GETTABLEKS                       R19 R19 K16 ["Common"]
      254 GETTABLEKS                       R19 R19 K62 ["setupMain"]
      256 CALL                             R18 1 1
      257 MOVE                             R19 R17
      258 GETIMPORT                        R20 K47 [plugin]
      260 DUPCLOSURE                       R21 K63 [PROTO_1]
      261 CAPTURE                          VAL R18
      262 CAPTURE                          VAL R16
      263 LOADB                            R22 1
      264 CALL                             R19 3 0
      265 RETURN                           R0 0
