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
       66 JUMPIFNOT                        R7 ; [+177]
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
       92 GETTABLEKS                       R12 R0 K28 ["Src"]
       94 GETTABLEKS                       R12 R12 K31 ["Flags"]
       96 CALL                             R11 1 1
       97 GETTABLEKS                       R12 R9 K32 ["Utils"]
       99 GETTABLEKS                       R12 R12 K33 ["DataModelType"]
      101 GETTABLEKS                       R12 R12 K34 ["setIsStandalone"]
      103 LOADB                            R13 1
      104 CALL                             R12 1 0
      105 GETIMPORT                        R12 K6 [require]
      107 GETTABLEKS                       R13 R0 K28 ["Src"]
      109 GETTABLEKS                       R13 R13 K29 ["Util"]
      111 GETTABLEKS                       R13 R13 K35 ["StudioNetworking"]
      113 CALL                             R12 1 1
      114 GETTABLEKS                       R13 R12 K36 ["create"]
      116 DUPTABLE                         R14 K43 [{["plugin"], ["isGuest"], ["isHost"] = False, ["identity"], ["useSuspendOverride"] = True}]
      117 GETIMPORT                        R15 K44 [plugin]
      119 SETTABLEKS                       R15 R14 K37 ["plugin"]
      121 SETTABLEKS                       R7 R14 K38 ["isGuest"]
      123 GETTABLEKS                       R15 R9 K32 ["Utils"]
      125 GETTABLEKS                       R15 R15 K33 ["DataModelType"]
      127 GETTABLEKS                       R15 R15 K45 ["Types"]
      129 GETTABLEKS                       R15 R15 K20 ["Standalone"]
      131 SETTABLEKS                       R15 R14 K40 ["identity"]
      133 CALL                             R13 1 1
      134 GETTABLEKS                       R14 R11 K46 ["FFlagAssistantConsoleOutputTailFromEnd"]
      136 JUMPIFNOT                        R14 ; [+6]
      137 GETTABLEKS                       R14 R10 K47 ["init"]
      139 GETIMPORT                        R15 K44 [plugin]
      141 MOVE                             R16 R13
      142 CALL                             R14 2 0
      143 GETTABLEKS                       R14 R11 K48 ["FFlagAssistantMultiPlayerAgents"]
      145 JUMPIFNOT                        R14 ; [+17]
      146 GETTABLEKS                       R14 R9 K32 ["Utils"]
      148 GETTABLEKS                       R14 R14 K49 ["MultiPlayersAgentClient"]
      150 GETTABLEKS                       R15 R14 K47 ["init"]
      152 MOVE                             R16 R13
      153 CALL                             R15 1 0
      154 GETIMPORT                        R15 K44 [plugin]
      156 GETTABLEKS                       R15 R15 K50 ["Unloading"]
      158 DUPCLOSURE                       R17 K51 [PROTO_0]
      159 CAPTURE                          VAL R14
      160 NAMECALL                         R15 R15 K52 ["Connect"]
      162 CALL                             R15 2 0
      163 GETIMPORT                        R14 K6 [require]
      165 GETTABLEKS                       R15 R0 K28 ["Src"]
      167 GETTABLEKS                       R15 R15 K29 ["Util"]
      169 GETTABLEKS                       R15 R15 K53 ["StudioState"]
      171 CALL                             R14 1 1
      172 GETTABLEKS                       R15 R14 K47 ["init"]
      174 GETIMPORT                        R16 K44 [plugin]
      176 MOVE                             R17 R13
      177 CALL                             R15 2 0
      178 GETIMPORT                        R15 K6 [require]
      180 GETTABLEKS                       R16 R0 K28 ["Src"]
      182 GETTABLEKS                       R16 R16 K54 ["toolInit"]
      184 CALL                             R15 1 1
      185 MOVE                             R16 R15
      186 GETIMPORT                        R17 K44 [plugin]
      188 MOVE                             R18 R13
      189 CALL                             R16 2 1
      190 GETTABLEKS                       R17 R11 K55 ["FFlagAssistantEval"]
      192 JUMPIFNOT                        R17 ; [+25]
      193 GETTABLEKS                       R17 R9 K56 ["Guest"]
      195 GETTABLEKS                       R17 R17 K57 ["Environment"]
      197 GETIMPORT                        R18 K6 [require]
      199 GETTABLEKS                       R19 R0 K28 ["Src"]
      201 GETTABLEKS                       R19 R19 K58 ["EvalDriver"]
      203 GETTABLEKS                       R19 R19 K59 ["ExternalEvalDriver"]
      205 CALL                             R18 1 1
      206 GETTABLEKS                       R19 R18 K47 ["init"]
      208 GETIMPORT                        R20 K44 [plugin]
      210 MOVE                             R21 R13
      211 GETTABLEKS                       R22 R17 K19 ["get"]
      213 CALL                             R22 0 1
      214 GETTABLEKS                       R22 R22 K60 ["getStudioSessionId"]
      216 CALL                             R22 0 -1
      217 CALL                             R19 -1 0
      218 GETIMPORT                        R17 K6 [require]
      220 GETTABLEKS                       R18 R0 K15 ["Bin"]
      222 GETTABLEKS                       R18 R18 K16 ["Common"]
      224 GETTABLEKS                       R18 R18 K61 ["setup"]
      226 CALL                             R17 1 1
      227 GETIMPORT                        R18 K6 [require]
      229 GETTABLEKS                       R19 R0 K15 ["Bin"]
      231 GETTABLEKS                       R19 R19 K16 ["Common"]
      233 GETTABLEKS                       R19 R19 K62 ["setupMain"]
      235 CALL                             R18 1 1
      236 MOVE                             R19 R17
      237 GETIMPORT                        R20 K44 [plugin]
      239 DUPCLOSURE                       R21 K63 [PROTO_1]
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R16
      242 LOADB                            R22 1
      243 CALL                             R19 3 0
      244 RETURN                           R0 0
