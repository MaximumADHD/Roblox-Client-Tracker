PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["close"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

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
       54 JUMPIFNOT                        R4 ; [+227]
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R6 R0 K6 ["Packages"]
       59 GETTABLEKS                       R6 R6 K20 ["ReactDeveloperTools"]
       61 CALL                             R5 1 1
       62 GETTABLEKS                       R6 R5 K21 ["tryEnableDevtools"]
       64 DUPTABLE                         R7 K24 [{"pluginName", "profileOnStart"}]
       65 LOADK                            R8 K2 ["Assistant"]
       66 SETTABLEKS                       R8 R7 K22 ["pluginName"]
       68 LOADB                            R8 0
       69 SETTABLEKS                       R8 R7 K23 ["profileOnStart"]
       71 CALL                             R6 1 0
       72 GETIMPORT                        R6 K5 [require]
       74 GETTABLEKS                       R7 R0 K6 ["Packages"]
       76 GETTABLEKS                       R7 R7 K25 ["AssistantUI"]
       78 CALL                             R6 1 1
       79 GETIMPORT                        R7 K5 [require]
       81 GETTABLEKS                       R8 R0 K12 ["Src"]
       83 GETTABLEKS                       R8 R8 K26 ["Util"]
       85 GETTABLEKS                       R8 R8 K27 ["ConsoleOutputManager"]
       87 CALL                             R7 1 1
       88 GETTABLEKS                       R8 R6 K13 ["Flags"]
       90 GETTABLEKS                       R8 R8 K28 ["Shared"]
       92 GETTABLEKS                       R8 R8 K29 ["FFlagAssistantStudioStateSystemReminder"]
       94 GETTABLEKS                       R9 R6 K13 ["Flags"]
       96 GETTABLEKS                       R9 R9 K28 ["Shared"]
       98 GETTABLEKS                       R9 R9 K30 ["FFlagAssistantEval"]
      100 GETTABLEKS                       R10 R6 K13 ["Flags"]
      102 GETTABLEKS                       R10 R10 K28 ["Shared"]
      104 GETTABLEKS                       R10 R10 K31 ["FFlagPrimGenRetryInPlayTest"]
      106 GETTABLEKS                       R11 R6 K13 ["Flags"]
      108 GETTABLEKS                       R11 R11 K28 ["Shared"]
      110 GETTABLEKS                       R11 R11 K32 ["FFlagAssistantMultiPlayerAgents"]
      112 GETTABLEKS                       R12 R6 K13 ["Flags"]
      114 GETTABLEKS                       R12 R12 K28 ["Shared"]
      116 GETTABLEKS                       R12 R12 K33 ["FFlagAssistantWhileSuspended"]
      118 GETTABLEKS                       R13 R6 K13 ["Flags"]
      120 GETTABLEKS                       R13 R13 K28 ["Shared"]
      122 GETTABLEKS                       R13 R13 K34 ["FFlagAssistantConsoleOutputTailFromEnd"]
      124 GETTABLEKS                       R14 R6 K35 ["Utils"]
      126 GETTABLEKS                       R14 R14 K36 ["DataModelType"]
      128 GETTABLEKS                       R14 R14 K37 ["setIsStandalone"]
      130 LOADB                            R15 1
      131 CALL                             R14 1 0
      132 GETIMPORT                        R14 K5 [require]
      134 GETTABLEKS                       R15 R0 K12 ["Src"]
      136 GETTABLEKS                       R15 R15 K26 ["Util"]
      138 GETTABLEKS                       R15 R15 K38 ["StudioNetworking"]
      140 CALL                             R14 1 1
      141 GETTABLEKS                       R15 R14 K39 ["create"]
      143 DUPTABLE                         R16 K45 [{"plugin", "isGuest", "isHost", "identity", "useSuspendOverride"}]
      144 GETIMPORT                        R17 K46 [plugin]
      146 SETTABLEKS                       R17 R16 K40 ["plugin"]
      148 SETTABLEKS                       R4 R16 K41 ["isGuest"]
      150 LOADB                            R17 0
      151 SETTABLEKS                       R17 R16 K42 ["isHost"]
      153 GETTABLEKS                       R17 R6 K35 ["Utils"]
      155 GETTABLEKS                       R17 R17 K36 ["DataModelType"]
      157 GETTABLEKS                       R17 R17 K47 ["Types"]
      159 GETTABLEKS                       R17 R17 K19 ["Standalone"]
      161 SETTABLEKS                       R17 R16 K43 ["identity"]
      163 MOVE                             R17 R12
      164 CALL                             R17 0 1
      165 SETTABLEKS                       R17 R16 K44 ["useSuspendOverride"]
      167 CALL                             R15 1 1
      168 MOVE                             R16 R13
      169 CALL                             R16 0 1
      170 JUMPIFNOT                        R16 ; [+6]
      171 GETTABLEKS                       R16 R7 K48 ["init"]
      173 GETIMPORT                        R17 K46 [plugin]
      175 MOVE                             R18 R15
      176 CALL                             R16 2 0
      177 MOVE                             R16 R11
      178 CALL                             R16 0 1
      179 JUMPIFNOT                        R16 ; [+17]
      180 GETTABLEKS                       R16 R6 K35 ["Utils"]
      182 GETTABLEKS                       R16 R16 K49 ["MultiPlayersAgentClient"]
      184 GETTABLEKS                       R17 R16 K48 ["init"]
      186 MOVE                             R18 R15
      187 CALL                             R17 1 0
      188 GETIMPORT                        R17 K46 [plugin]
      190 GETTABLEKS                       R17 R17 K50 ["Unloading"]
      192 DUPCLOSURE                       R19 K51 [PROTO_0]
      193 CAPTURE                          VAL R16
      194 NAMECALL                         R17 R17 K52 ["Connect"]
      196 CALL                             R17 2 0
      197 MOVE                             R16 R8
      198 CALL                             R16 0 1
      199 JUMPIF                           R16 ; [+3]
      200 MOVE                             R16 R10
      201 CALL                             R16 0 1
      202 JUMPIFNOT                        R16 ; [+15]
      203 GETIMPORT                        R16 K5 [require]
      205 GETTABLEKS                       R17 R0 K12 ["Src"]
      207 GETTABLEKS                       R17 R17 K26 ["Util"]
      209 GETTABLEKS                       R17 R17 K53 ["StudioState"]
      211 CALL                             R16 1 1
      212 GETTABLEKS                       R17 R16 K48 ["init"]
      214 GETIMPORT                        R18 K46 [plugin]
      216 MOVE                             R19 R15
      217 CALL                             R17 2 0
      218 GETIMPORT                        R16 K5 [require]
      220 GETTABLEKS                       R17 R0 K12 ["Src"]
      222 GETTABLEKS                       R17 R17 K54 ["toolInit"]
      224 CALL                             R16 1 1
      225 MOVE                             R17 R16
      226 GETIMPORT                        R18 K46 [plugin]
      228 MOVE                             R19 R15
      229 CALL                             R17 2 0
      230 MOVE                             R17 R9
      231 CALL                             R17 0 1
      232 JUMPIFNOT                        R17 ; [+25]
      233 GETTABLEKS                       R17 R6 K55 ["Guest"]
      235 GETTABLEKS                       R17 R17 K56 ["Environment"]
      237 GETIMPORT                        R18 K5 [require]
      239 GETTABLEKS                       R19 R0 K12 ["Src"]
      241 GETTABLEKS                       R19 R19 K57 ["EvalDriver"]
      243 GETTABLEKS                       R19 R19 K58 ["ExternalEvalDriver"]
      245 CALL                             R18 1 1
      246 GETTABLEKS                       R19 R18 K48 ["init"]
      248 GETIMPORT                        R20 K46 [plugin]
      250 MOVE                             R21 R15
      251 GETTABLEKS                       R22 R17 K18 ["get"]
      253 CALL                             R22 0 1
      254 GETTABLEKS                       R22 R22 K59 ["getStudioSessionId"]
      256 CALL                             R22 0 -1
      257 CALL                             R19 -1 0
      258 GETIMPORT                        R17 K5 [require]
      260 GETTABLEKS                       R18 R0 K15 ["Bin"]
      262 GETTABLEKS                       R18 R18 K16 ["Common"]
      264 GETTABLEKS                       R18 R18 K60 ["setup"]
      266 CALL                             R17 1 1
      267 GETIMPORT                        R18 K5 [require]
      269 GETTABLEKS                       R19 R0 K15 ["Bin"]
      271 GETTABLEKS                       R19 R19 K16 ["Common"]
      273 GETTABLEKS                       R19 R19 K61 ["setupMain"]
      275 CALL                             R18 1 1
      276 MOVE                             R19 R17
      277 GETIMPORT                        R20 K46 [plugin]
      279 MOVE                             R21 R18
      280 LOADB                            R22 1
      281 CALL                             R19 3 0
      282 RETURN                           R0 0
