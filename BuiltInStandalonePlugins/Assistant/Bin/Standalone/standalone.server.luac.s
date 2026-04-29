MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["isCli"]
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETIMPORT                        R2 K10 [error]
       20 LOADK                            R3 K11 ["roblox-cli should not be loading standalone plugins"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R2 K5 [require]
       25 GETTABLEKS                       R5 R0 K12 ["Src"]
       27 GETTABLEKS                       R4 R5 K13 ["Flags"]
       29 GETTABLEKS                       R3 R4 K14 ["FFlagIsLuobuBuild"]
       31 CALL                             R2 1 1
       32 MOVE                             R3 R2
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+1]
       35 RETURN                           R0 0
       36 GETIMPORT                        R3 K5 [require]
       38 GETTABLEKS                       R6 R0 K15 ["Bin"]
       40 GETTABLEKS                       R5 R6 K16 ["Common"]
       42 GETTABLEKS                       R4 R5 K17 ["pluginType"]
       44 CALL                             R3 1 1
       45 GETTABLEKS                       R5 R3 K18 ["get"]
       47 CALL                             R5 0 1
       48 GETTABLEKS                       R6 R3 K19 ["Standalone"]
       50 JUMPIFEQ                         R5 R6 ; [+2]
       52 LOADB                            R4 0 +1
       53 LOADB                            R4 1
       54 JUMPIFNOT                        R4 ; [+168]
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R7 R0 K6 ["Packages"]
       59 GETTABLEKS                       R6 R7 K20 ["ReactDeveloperTools"]
       61 CALL                             R5 1 1
       62 GETTABLEKS                       R6 R5 K21 ["tryEnableDevtools"]
       64 DUPTABLE                         R7 K24 [{"pluginName", "profileOnStart"}]
       65 LOADK                            R8 K2 ["Assistant"]
       66 SETTABLEKS                       R8 R7 K22 ["pluginName"]
       68 LOADB                            R8 0
       69 SETTABLEKS                       R8 R7 K23 ["profileOnStart"]
       71 CALL                             R6 1 0
       72 GETIMPORT                        R6 K5 [require]
       74 GETTABLEKS                       R8 R0 K6 ["Packages"]
       76 GETTABLEKS                       R7 R8 K25 ["AssistantUI"]
       78 CALL                             R6 1 1
       79 GETTABLEKS                       R9 R6 K13 ["Flags"]
       81 GETTABLEKS                       R8 R9 K26 ["Shared"]
       83 GETTABLEKS                       R7 R8 K27 ["FFlagAssistantAgentModeSystemReminder"]
       85 GETTABLEKS                       R10 R6 K13 ["Flags"]
       87 GETTABLEKS                       R9 R10 K26 ["Shared"]
       89 GETTABLEKS                       R8 R9 K28 ["FFlagAssistantDMNetworkIdentity"]
       91 GETTABLEKS                       R11 R6 K13 ["Flags"]
       93 GETTABLEKS                       R10 R11 K26 ["Shared"]
       95 GETTABLEKS                       R9 R10 K29 ["FFlagAssistantTestAutomation"]
       97 GETTABLEKS                       R12 R6 K13 ["Flags"]
       99 GETTABLEKS                       R11 R12 K26 ["Shared"]
      101 GETTABLEKS                       R10 R11 K30 ["FFlagAssistantTestModeDropdown"]
      103 GETTABLEKS                       R13 R6 K13 ["Flags"]
      105 GETTABLEKS                       R12 R13 K26 ["Shared"]
      107 GETTABLEKS                       R11 R12 K31 ["FFlagPrimGenRetryInPlayTest"]
      109 MOVE                             R12 R9
      110 CALL                             R12 0 1
      111 JUMPIFNOT                        R12 ; [+8]
      112 GETTABLEKS                       R14 R6 K32 ["Utils"]
      114 GETTABLEKS                       R13 R14 K33 ["DataModelType"]
      116 GETTABLEKS                       R12 R13 K34 ["setIsStandalone"]
      118 LOADB                            R13 1
      119 CALL                             R12 1 0
      120 GETIMPORT                        R12 K5 [require]
      122 GETTABLEKS                       R15 R0 K12 ["Src"]
      124 GETTABLEKS                       R14 R15 K35 ["Util"]
      126 GETTABLEKS                       R13 R14 K36 ["StudioNetworking"]
      128 CALL                             R12 1 1
      129 LOADNIL                          R13
      130 MOVE                             R14 R8
      131 CALL                             R14 0 1
      132 JUMPIFNOT                        R14 ; [+24]
      133 GETTABLEKS                       R14 R12 K37 ["create"]
      135 DUPTABLE                         R15 K42 [{"plugin", "isGuest", "isHost", "identity"}]
      136 GETIMPORT                        R16 K43 [plugin]
      138 SETTABLEKS                       R16 R15 K38 ["plugin"]
      140 SETTABLEKS                       R4 R15 K39 ["isGuest"]
      142 LOADB                            R16 0
      143 SETTABLEKS                       R16 R15 K40 ["isHost"]
      145 GETTABLEKS                       R19 R6 K32 ["Utils"]
      147 GETTABLEKS                       R18 R19 K33 ["DataModelType"]
      149 GETTABLEKS                       R17 R18 K44 ["Types"]
      151 GETTABLEKS                       R16 R17 K19 ["Standalone"]
      153 SETTABLEKS                       R16 R15 K41 ["identity"]
      155 CALL                             R14 1 1
      156 MOVE                             R13 R14
      157 MOVE                             R14 R10
      158 CALL                             R14 0 1
      159 JUMPIF                           R14 ; [+6]
      160 MOVE                             R14 R7
      161 CALL                             R14 0 1
      162 JUMPIF                           R14 ; [+3]
      163 MOVE                             R14 R11
      164 CALL                             R14 0 1
      165 JUMPIFNOT                        R14 ; [+15]
      166 GETIMPORT                        R14 K5 [require]
      168 GETTABLEKS                       R17 R0 K12 ["Src"]
      170 GETTABLEKS                       R16 R17 K35 ["Util"]
      172 GETTABLEKS                       R15 R16 K45 ["StudioState"]
      174 CALL                             R14 1 1
      175 GETTABLEKS                       R15 R14 K46 ["init"]
      177 GETIMPORT                        R16 K43 [plugin]
      179 MOVE                             R17 R13
      180 CALL                             R15 2 0
      181 GETIMPORT                        R14 K5 [require]
      183 GETTABLEKS                       R16 R0 K12 ["Src"]
      185 GETTABLEKS                       R15 R16 K47 ["toolInit"]
      187 CALL                             R14 1 1
      188 MOVE                             R15 R14
      189 GETIMPORT                        R16 K43 [plugin]
      191 DUPTABLE                         R17 K48 [{"isGuest", "isHost"}]
      192 SETTABLEKS                       R4 R17 K39 ["isGuest"]
      194 LOADB                            R18 0
      195 SETTABLEKS                       R18 R17 K40 ["isHost"]
      197 MOVE                             R18 R13
      198 CALL                             R15 3 0
      199 GETIMPORT                        R15 K5 [require]
      201 GETTABLEKS                       R18 R0 K15 ["Bin"]
      203 GETTABLEKS                       R17 R18 K16 ["Common"]
      205 GETTABLEKS                       R16 R17 K49 ["setup"]
      207 CALL                             R15 1 1
      208 GETIMPORT                        R16 K5 [require]
      210 GETTABLEKS                       R19 R0 K15 ["Bin"]
      212 GETTABLEKS                       R18 R19 K16 ["Common"]
      214 GETTABLEKS                       R17 R18 K50 ["setupMain"]
      216 CALL                             R16 1 1
      217 MOVE                             R17 R15
      218 GETIMPORT                        R18 K43 [plugin]
      220 MOVE                             R19 R16
      221 LOADB                            R20 1
      222 CALL                             R17 3 0
      223 RETURN                           R0 0
