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
       54 JUMPIFNOT                        R4 ; [+159]
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
      103 MOVE                             R11 R9
      104 CALL                             R11 0 1
      105 JUMPIFNOT                        R11 ; [+8]
      106 GETTABLEKS                       R13 R6 K31 ["Utils"]
      108 GETTABLEKS                       R12 R13 K32 ["DataModelType"]
      110 GETTABLEKS                       R11 R12 K33 ["setIsStandalone"]
      112 LOADB                            R12 1
      113 CALL                             R11 1 0
      114 GETIMPORT                        R11 K5 [require]
      116 GETTABLEKS                       R14 R0 K12 ["Src"]
      118 GETTABLEKS                       R13 R14 K34 ["Util"]
      120 GETTABLEKS                       R12 R13 K35 ["StudioNetworking"]
      122 CALL                             R11 1 1
      123 LOADNIL                          R12
      124 MOVE                             R13 R8
      125 CALL                             R13 0 1
      126 JUMPIFNOT                        R13 ; [+24]
      127 GETTABLEKS                       R13 R11 K36 ["create"]
      129 DUPTABLE                         R14 K41 [{"plugin", "isGuest", "isHost", "identity"}]
      130 GETIMPORT                        R15 K42 [plugin]
      132 SETTABLEKS                       R15 R14 K37 ["plugin"]
      134 SETTABLEKS                       R4 R14 K38 ["isGuest"]
      136 LOADB                            R15 0
      137 SETTABLEKS                       R15 R14 K39 ["isHost"]
      139 GETTABLEKS                       R18 R6 K31 ["Utils"]
      141 GETTABLEKS                       R17 R18 K32 ["DataModelType"]
      143 GETTABLEKS                       R16 R17 K43 ["Types"]
      145 GETTABLEKS                       R15 R16 K19 ["Standalone"]
      147 SETTABLEKS                       R15 R14 K40 ["identity"]
      149 CALL                             R13 1 1
      150 MOVE                             R12 R13
      151 MOVE                             R13 R10
      152 CALL                             R13 0 1
      153 JUMPIF                           R13 ; [+3]
      154 MOVE                             R13 R7
      155 CALL                             R13 0 1
      156 JUMPIFNOT                        R13 ; [+15]
      157 GETIMPORT                        R13 K5 [require]
      159 GETTABLEKS                       R16 R0 K12 ["Src"]
      161 GETTABLEKS                       R15 R16 K34 ["Util"]
      163 GETTABLEKS                       R14 R15 K44 ["StudioState"]
      165 CALL                             R13 1 1
      166 GETTABLEKS                       R14 R13 K45 ["init"]
      168 GETIMPORT                        R15 K42 [plugin]
      170 MOVE                             R16 R12
      171 CALL                             R14 2 0
      172 GETIMPORT                        R13 K5 [require]
      174 GETTABLEKS                       R15 R0 K12 ["Src"]
      176 GETTABLEKS                       R14 R15 K46 ["toolInit"]
      178 CALL                             R13 1 1
      179 MOVE                             R14 R13
      180 GETIMPORT                        R15 K42 [plugin]
      182 DUPTABLE                         R16 K47 [{"isGuest", "isHost"}]
      183 SETTABLEKS                       R4 R16 K38 ["isGuest"]
      185 LOADB                            R17 0
      186 SETTABLEKS                       R17 R16 K39 ["isHost"]
      188 MOVE                             R17 R12
      189 CALL                             R14 3 0
      190 GETIMPORT                        R14 K5 [require]
      192 GETTABLEKS                       R17 R0 K15 ["Bin"]
      194 GETTABLEKS                       R16 R17 K16 ["Common"]
      196 GETTABLEKS                       R15 R16 K48 ["setup"]
      198 CALL                             R14 1 1
      199 GETIMPORT                        R15 K5 [require]
      201 GETTABLEKS                       R18 R0 K15 ["Bin"]
      203 GETTABLEKS                       R17 R18 K16 ["Common"]
      205 GETTABLEKS                       R16 R17 K49 ["setupMain"]
      207 CALL                             R15 1 1
      208 MOVE                             R16 R14
      209 GETIMPORT                        R17 K42 [plugin]
      211 MOVE                             R18 R15
      212 LOADB                            R19 1
      213 CALL                             R16 3 0
      214 RETURN                           R0 0
