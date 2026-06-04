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
       54 JUMPIFNOT                        R4 ; [+191]
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
      110 GETTABLEKS                       R11 R11 K32 ["FFlagAssistantWhileSuspended"]
      112 GETTABLEKS                       R12 R6 K13 ["Flags"]
      114 GETTABLEKS                       R12 R12 K28 ["Shared"]
      116 GETTABLEKS                       R12 R12 K33 ["FFlagAssistantConsoleOutputTailFromEnd"]
      118 GETTABLEKS                       R13 R6 K34 ["Utils"]
      120 GETTABLEKS                       R13 R13 K35 ["DataModelType"]
      122 GETTABLEKS                       R13 R13 K36 ["setIsStandalone"]
      124 LOADB                            R14 1
      125 CALL                             R13 1 0
      126 GETIMPORT                        R13 K5 [require]
      128 GETTABLEKS                       R14 R0 K12 ["Src"]
      130 GETTABLEKS                       R14 R14 K26 ["Util"]
      132 GETTABLEKS                       R14 R14 K37 ["StudioNetworking"]
      134 CALL                             R13 1 1
      135 GETTABLEKS                       R14 R13 K38 ["create"]
      137 DUPTABLE                         R15 K44 [{"plugin", "isGuest", "isHost", "identity", "useSuspendOverride"}]
      138 GETIMPORT                        R16 K45 [plugin]
      140 SETTABLEKS                       R16 R15 K39 ["plugin"]
      142 SETTABLEKS                       R4 R15 K40 ["isGuest"]
      144 LOADB                            R16 0
      145 SETTABLEKS                       R16 R15 K41 ["isHost"]
      147 GETTABLEKS                       R16 R6 K34 ["Utils"]
      149 GETTABLEKS                       R16 R16 K35 ["DataModelType"]
      151 GETTABLEKS                       R16 R16 K46 ["Types"]
      153 GETTABLEKS                       R16 R16 K19 ["Standalone"]
      155 SETTABLEKS                       R16 R15 K42 ["identity"]
      157 MOVE                             R16 R11
      158 CALL                             R16 0 1
      159 SETTABLEKS                       R16 R15 K43 ["useSuspendOverride"]
      161 CALL                             R14 1 1
      162 MOVE                             R15 R12
      163 CALL                             R15 0 1
      164 JUMPIFNOT                        R15 ; [+6]
      165 GETTABLEKS                       R15 R7 K47 ["init"]
      167 GETIMPORT                        R16 K45 [plugin]
      169 MOVE                             R17 R14
      170 CALL                             R15 2 0
      171 MOVE                             R15 R8
      172 CALL                             R15 0 1
      173 JUMPIF                           R15 ; [+3]
      174 MOVE                             R15 R10
      175 CALL                             R15 0 1
      176 JUMPIFNOT                        R15 ; [+15]
      177 GETIMPORT                        R15 K5 [require]
      179 GETTABLEKS                       R16 R0 K12 ["Src"]
      181 GETTABLEKS                       R16 R16 K26 ["Util"]
      183 GETTABLEKS                       R16 R16 K48 ["StudioState"]
      185 CALL                             R15 1 1
      186 GETTABLEKS                       R16 R15 K47 ["init"]
      188 GETIMPORT                        R17 K45 [plugin]
      190 MOVE                             R18 R14
      191 CALL                             R16 2 0
      192 MOVE                             R15 R9
      193 CALL                             R15 0 1
      194 JUMPIFNOT                        R15 ; [+15]
      195 GETIMPORT                        R15 K5 [require]
      197 GETTABLEKS                       R16 R0 K12 ["Src"]
      199 GETTABLEKS                       R16 R16 K49 ["EvalDriver"]
      201 GETTABLEKS                       R16 R16 K50 ["ExternalEvalDriver"]
      203 CALL                             R15 1 1
      204 GETTABLEKS                       R16 R15 K47 ["init"]
      206 GETIMPORT                        R17 K45 [plugin]
      208 MOVE                             R18 R14
      209 CALL                             R16 2 0
      210 GETIMPORT                        R15 K5 [require]
      212 GETTABLEKS                       R16 R0 K12 ["Src"]
      214 GETTABLEKS                       R16 R16 K51 ["toolInit"]
      216 CALL                             R15 1 1
      217 MOVE                             R16 R15
      218 GETIMPORT                        R17 K45 [plugin]
      220 MOVE                             R18 R14
      221 CALL                             R16 2 0
      222 GETIMPORT                        R16 K5 [require]
      224 GETTABLEKS                       R17 R0 K15 ["Bin"]
      226 GETTABLEKS                       R17 R17 K16 ["Common"]
      228 GETTABLEKS                       R17 R17 K52 ["setup"]
      230 CALL                             R16 1 1
      231 GETIMPORT                        R17 K5 [require]
      233 GETTABLEKS                       R18 R0 K15 ["Bin"]
      235 GETTABLEKS                       R18 R18 K16 ["Common"]
      237 GETTABLEKS                       R18 R18 K53 ["setupMain"]
      239 CALL                             R17 1 1
      240 MOVE                             R18 R16
      241 GETIMPORT                        R19 K45 [plugin]
      243 MOVE                             R20 R17
      244 LOADB                            R21 1
      245 CALL                             R18 3 0
      246 RETURN                           R0 0
