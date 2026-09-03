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
       53 JUMPIFNOT                        R6 ; [+177]
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
      150 GETIMPORT                        R13 K6 [require]
      152 GETTABLEKS                       R14 R0 K27 ["Src"]
      154 GETTABLEKS                       R14 R14 K28 ["Util"]
      156 GETTABLEKS                       R14 R14 K52 ["StudioState"]
      158 CALL                             R13 1 1
      159 GETTABLEKS                       R14 R13 K46 ["init"]
      161 GETIMPORT                        R15 K43 [plugin]
      163 MOVE                             R16 R12
      164 CALL                             R14 2 0
      165 GETIMPORT                        R14 K6 [require]
      167 GETTABLEKS                       R15 R0 K27 ["Src"]
      169 GETTABLEKS                       R15 R15 K53 ["toolInit"]
      171 CALL                             R14 1 1
      172 MOVE                             R15 R14
      173 GETIMPORT                        R16 K43 [plugin]
      175 MOVE                             R17 R12
      176 CALL                             R15 2 1
      177 GETTABLEKS                       R16 R10 K54 ["FFlagAssistantEval"]
      179 JUMPIFNOT                        R16 ; [+25]
      180 GETTABLEKS                       R16 R8 K55 ["Guest"]
      182 GETTABLEKS                       R16 R16 K56 ["Environment"]
      184 GETIMPORT                        R17 K6 [require]
      186 GETTABLEKS                       R18 R0 K27 ["Src"]
      188 GETTABLEKS                       R18 R18 K57 ["EvalDriver"]
      190 GETTABLEKS                       R18 R18 K58 ["ExternalEvalDriver"]
      192 CALL                             R17 1 1
      193 GETTABLEKS                       R18 R17 K46 ["init"]
      195 GETIMPORT                        R19 K43 [plugin]
      197 MOVE                             R20 R12
      198 GETTABLEKS                       R21 R16 K18 ["get"]
      200 CALL                             R21 0 1
      201 GETTABLEKS                       R21 R21 K59 ["getStudioSessionId"]
      203 CALL                             R21 0 -1
      204 CALL                             R18 -1 0
      205 GETIMPORT                        R16 K6 [require]
      207 GETTABLEKS                       R17 R0 K15 ["Bin"]
      209 GETTABLEKS                       R17 R17 K16 ["Common"]
      211 GETTABLEKS                       R17 R17 K60 ["setup"]
      213 CALL                             R16 1 1
      214 GETIMPORT                        R17 K6 [require]
      216 GETTABLEKS                       R18 R0 K15 ["Bin"]
      218 GETTABLEKS                       R18 R18 K16 ["Common"]
      220 GETTABLEKS                       R18 R18 K61 ["setupMain"]
      222 CALL                             R17 1 1
      223 MOVE                             R18 R16
      224 GETIMPORT                        R19 K43 [plugin]
      226 DUPCLOSURE                       R20 K62 [PROTO_1]
      227 CAPTURE                          VAL R17
      228 CAPTURE                          VAL R15
      229 LOADB                            R21 1
      230 CALL                             R18 3 0
      231 RETURN                           R0 0
