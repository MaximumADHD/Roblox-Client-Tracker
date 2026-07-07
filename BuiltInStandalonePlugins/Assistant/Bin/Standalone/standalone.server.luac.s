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
       41 GETTABLEKS                       R6 R6 K17 ["pluginType"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R7 R5 K18 ["get"]
       46 CALL                             R7 0 1
       47 GETTABLEKS                       R8 R5 K19 ["Standalone"]
       49 JUMPIFEQ                         R7 R8 ; [+2]
       51 LOADB                            R6 0 +1
       52 LOADB                            R6 1
       53 JUMPIFNOT                        R6 ; [+183]
       54 GETIMPORT                        R7 K6 [require]
       56 GETTABLEKS                       R8 R1 K20 ["ReactDeveloperTools"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R7 K21 ["tryEnableDevtools"]
       61 DUPTABLE                         R9 K25 [{["pluginName"] = "Assistant", ["profileOnStart"] = False}]
       62 CALL                             R8 1 0
       63 GETIMPORT                        R8 K6 [require]
       65 GETTABLEKS                       R9 R1 K26 ["AssistantUI"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K6 [require]
       70 GETTABLEKS                       R10 R0 K27 ["Src"]
       72 GETTABLEKS                       R10 R10 K28 ["Util"]
       74 GETTABLEKS                       R10 R10 K29 ["ConsoleOutputManager"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K6 [require]
       79 GETTABLEKS                       R11 R0 K27 ["Src"]
       81 GETTABLEKS                       R11 R11 K30 ["Flags"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R11 R8 K31 ["Utils"]
       86 GETTABLEKS                       R11 R11 K32 ["DataModelType"]
       88 GETTABLEKS                       R11 R11 K33 ["setIsStandalone"]
       90 LOADB                            R12 1
       91 CALL                             R11 1 0
       92 GETIMPORT                        R11 K6 [require]
       94 GETTABLEKS                       R12 R0 K27 ["Src"]
       96 GETTABLEKS                       R12 R12 K28 ["Util"]
       98 GETTABLEKS                       R12 R12 K34 ["StudioNetworking"]
      100 CALL                             R11 1 1
      101 GETTABLEKS                       R12 R11 K35 ["create"]
      103 DUPTABLE                         R13 K42 [{["plugin"], ["isGuest"], ["isHost"] = False, ["identity"], ["useSuspendOverride"] = True}]
      104 GETIMPORT                        R14 K43 [plugin]
      106 SETTABLEKS                       R14 R13 K36 ["plugin"]
      108 SETTABLEKS                       R6 R13 K37 ["isGuest"]
      110 GETTABLEKS                       R14 R8 K31 ["Utils"]
      112 GETTABLEKS                       R14 R14 K32 ["DataModelType"]
      114 GETTABLEKS                       R14 R14 K44 ["Types"]
      116 GETTABLEKS                       R14 R14 K19 ["Standalone"]
      118 SETTABLEKS                       R14 R13 K39 ["identity"]
      120 CALL                             R12 1 1
      121 GETTABLEKS                       R13 R10 K45 ["FFlagAssistantConsoleOutputTailFromEnd"]
      123 JUMPIFNOT                        R13 ; [+6]
      124 GETTABLEKS                       R13 R9 K46 ["init"]
      126 GETIMPORT                        R14 K43 [plugin]
      128 MOVE                             R15 R12
      129 CALL                             R13 2 0
      130 GETTABLEKS                       R13 R10 K47 ["FFlagAssistantMultiPlayerAgents"]
      132 JUMPIFNOT                        R13 ; [+17]
      133 GETTABLEKS                       R13 R8 K31 ["Utils"]
      135 GETTABLEKS                       R13 R13 K48 ["MultiPlayersAgentClient"]
      137 GETTABLEKS                       R14 R13 K46 ["init"]
      139 MOVE                             R15 R12
      140 CALL                             R14 1 0
      141 GETIMPORT                        R14 K43 [plugin]
      143 GETTABLEKS                       R14 R14 K49 ["Unloading"]
      145 DUPCLOSURE                       R16 K50 [PROTO_0]
      146 CAPTURE                          VAL R13
      147 NAMECALL                         R14 R14 K51 ["Connect"]
      149 CALL                             R14 2 0
      150 GETTABLEKS                       R13 R10 K52 ["FFlagAssistantStudioStateSystemReminder"]
      152 JUMPIF                           R13 ; [+3]
      153 GETTABLEKS                       R13 R10 K53 ["FFlagPrimGenRetryInPlayTest"]
      155 JUMPIFNOT                        R13 ; [+15]
      156 GETIMPORT                        R13 K6 [require]
      158 GETTABLEKS                       R14 R0 K27 ["Src"]
      160 GETTABLEKS                       R14 R14 K28 ["Util"]
      162 GETTABLEKS                       R14 R14 K54 ["StudioState"]
      164 CALL                             R13 1 1
      165 GETTABLEKS                       R14 R13 K46 ["init"]
      167 GETIMPORT                        R15 K43 [plugin]
      169 MOVE                             R16 R12
      170 CALL                             R14 2 0
      171 GETIMPORT                        R13 K6 [require]
      173 GETTABLEKS                       R14 R0 K27 ["Src"]
      175 GETTABLEKS                       R14 R14 K55 ["toolInit"]
      177 CALL                             R13 1 1
      178 MOVE                             R14 R13
      179 GETIMPORT                        R15 K43 [plugin]
      181 MOVE                             R16 R12
      182 CALL                             R14 2 1
      183 GETTABLEKS                       R15 R10 K56 ["FFlagAssistantEval"]
      185 JUMPIFNOT                        R15 ; [+25]
      186 GETTABLEKS                       R15 R8 K57 ["Guest"]
      188 GETTABLEKS                       R15 R15 K58 ["Environment"]
      190 GETIMPORT                        R16 K6 [require]
      192 GETTABLEKS                       R17 R0 K27 ["Src"]
      194 GETTABLEKS                       R17 R17 K59 ["EvalDriver"]
      196 GETTABLEKS                       R17 R17 K60 ["ExternalEvalDriver"]
      198 CALL                             R16 1 1
      199 GETTABLEKS                       R17 R16 K46 ["init"]
      201 GETIMPORT                        R18 K43 [plugin]
      203 MOVE                             R19 R12
      204 GETTABLEKS                       R20 R15 K18 ["get"]
      206 CALL                             R20 0 1
      207 GETTABLEKS                       R20 R20 K61 ["getStudioSessionId"]
      209 CALL                             R20 0 -1
      210 CALL                             R17 -1 0
      211 GETIMPORT                        R15 K6 [require]
      213 GETTABLEKS                       R16 R0 K15 ["Bin"]
      215 GETTABLEKS                       R16 R16 K16 ["Common"]
      217 GETTABLEKS                       R16 R16 K62 ["setup"]
      219 CALL                             R15 1 1
      220 GETIMPORT                        R16 K6 [require]
      222 GETTABLEKS                       R17 R0 K15 ["Bin"]
      224 GETTABLEKS                       R17 R17 K16 ["Common"]
      226 GETTABLEKS                       R17 R17 K63 ["setupMain"]
      228 CALL                             R16 1 1
      229 MOVE                             R17 R15
      230 GETIMPORT                        R18 K43 [plugin]
      232 DUPCLOSURE                       R19 K64 [PROTO_1]
      233 CAPTURE                          VAL R16
      234 CAPTURE                          VAL R14
      235 LOADB                            R20 1
      236 CALL                             R17 3 0
      237 RETURN                           R0 0
