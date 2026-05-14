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
       54 JUMPIFNOT                        R4 ; [+166]
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
       79 GETTABLEKS                       R7 R6 K13 ["Flags"]
       81 GETTABLEKS                       R7 R7 K26 ["Shared"]
       83 GETTABLEKS                       R7 R7 K27 ["FFlagAssistantAgentModeSystemReminder"]
       85 GETTABLEKS                       R8 R6 K13 ["Flags"]
       87 GETTABLEKS                       R8 R8 K26 ["Shared"]
       89 GETTABLEKS                       R8 R8 K28 ["FFlagAssistantTestModeDropdown"]
       91 GETTABLEKS                       R9 R6 K13 ["Flags"]
       93 GETTABLEKS                       R9 R9 K26 ["Shared"]
       95 GETTABLEKS                       R9 R9 K29 ["FFlagAssistantEval"]
       97 GETTABLEKS                       R10 R6 K13 ["Flags"]
       99 GETTABLEKS                       R10 R10 K26 ["Shared"]
      101 GETTABLEKS                       R10 R10 K30 ["FFlagPrimGenRetryInPlayTest"]
      103 GETTABLEKS                       R11 R6 K31 ["Utils"]
      105 GETTABLEKS                       R11 R11 K32 ["DataModelType"]
      107 GETTABLEKS                       R11 R11 K33 ["setIsStandalone"]
      109 LOADB                            R12 1
      110 CALL                             R11 1 0
      111 GETIMPORT                        R11 K5 [require]
      113 GETTABLEKS                       R12 R0 K12 ["Src"]
      115 GETTABLEKS                       R12 R12 K34 ["Util"]
      117 GETTABLEKS                       R12 R12 K35 ["StudioNetworking"]
      119 CALL                             R11 1 1
      120 GETTABLEKS                       R12 R11 K36 ["create"]
      122 DUPTABLE                         R13 K41 [{"plugin", "isGuest", "isHost", "identity"}]
      123 GETIMPORT                        R14 K42 [plugin]
      125 SETTABLEKS                       R14 R13 K37 ["plugin"]
      127 SETTABLEKS                       R4 R13 K38 ["isGuest"]
      129 LOADB                            R14 0
      130 SETTABLEKS                       R14 R13 K39 ["isHost"]
      132 GETTABLEKS                       R14 R6 K31 ["Utils"]
      134 GETTABLEKS                       R14 R14 K32 ["DataModelType"]
      136 GETTABLEKS                       R14 R14 K43 ["Types"]
      138 GETTABLEKS                       R14 R14 K19 ["Standalone"]
      140 SETTABLEKS                       R14 R13 K40 ["identity"]
      142 CALL                             R12 1 1
      143 MOVE                             R13 R8
      144 CALL                             R13 0 1
      145 JUMPIF                           R13 ; [+6]
      146 MOVE                             R13 R7
      147 CALL                             R13 0 1
      148 JUMPIF                           R13 ; [+3]
      149 MOVE                             R13 R10
      150 CALL                             R13 0 1
      151 JUMPIFNOT                        R13 ; [+15]
      152 GETIMPORT                        R13 K5 [require]
      154 GETTABLEKS                       R14 R0 K12 ["Src"]
      156 GETTABLEKS                       R14 R14 K34 ["Util"]
      158 GETTABLEKS                       R14 R14 K44 ["StudioState"]
      160 CALL                             R13 1 1
      161 GETTABLEKS                       R14 R13 K45 ["init"]
      163 GETIMPORT                        R15 K42 [plugin]
      165 MOVE                             R16 R12
      166 CALL                             R14 2 0
      167 MOVE                             R13 R9
      168 CALL                             R13 0 1
      169 JUMPIFNOT                        R13 ; [+15]
      170 GETIMPORT                        R13 K5 [require]
      172 GETTABLEKS                       R14 R0 K12 ["Src"]
      174 GETTABLEKS                       R14 R14 K46 ["EvalDriver"]
      176 GETTABLEKS                       R14 R14 K47 ["ExternalEvalDriver"]
      178 CALL                             R13 1 1
      179 GETTABLEKS                       R14 R13 K45 ["init"]
      181 GETIMPORT                        R15 K42 [plugin]
      183 MOVE                             R16 R12
      184 CALL                             R14 2 0
      185 GETIMPORT                        R13 K5 [require]
      187 GETTABLEKS                       R14 R0 K12 ["Src"]
      189 GETTABLEKS                       R14 R14 K48 ["toolInit"]
      191 CALL                             R13 1 1
      192 MOVE                             R14 R13
      193 GETIMPORT                        R15 K42 [plugin]
      195 MOVE                             R16 R12
      196 CALL                             R14 2 0
      197 GETIMPORT                        R14 K5 [require]
      199 GETTABLEKS                       R15 R0 K15 ["Bin"]
      201 GETTABLEKS                       R15 R15 K16 ["Common"]
      203 GETTABLEKS                       R15 R15 K49 ["setup"]
      205 CALL                             R14 1 1
      206 GETIMPORT                        R15 K5 [require]
      208 GETTABLEKS                       R16 R0 K15 ["Bin"]
      210 GETTABLEKS                       R16 R16 K16 ["Common"]
      212 GETTABLEKS                       R16 R16 K50 ["setupMain"]
      214 CALL                             R15 1 1
      215 MOVE                             R16 R14
      216 GETIMPORT                        R17 K42 [plugin]
      218 MOVE                             R18 R15
      219 LOADB                            R19 1
      220 CALL                             R16 3 0
      221 RETURN                           R0 0
