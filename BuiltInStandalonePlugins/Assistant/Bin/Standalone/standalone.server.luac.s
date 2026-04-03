MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["FFlagAssistantTestAutomation"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Flags"]
       22 GETTABLEKS                       R3 R4 K9 ["FFlagIsLuobuBuild"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R5 R0 K10 ["Packages"]
       33 GETTABLEKS                       R4 R5 K11 ["TestLoader"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K12 ["isCli"]
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+5]
       40 GETIMPORT                        R4 K14 [error]
       42 LOADK                            R5 K15 ["roblox-cli should not be loading standalone plugins"]
       43 CALL                             R4 1 0
       44 RETURN                           R0 0
       45 MOVE                             R4 R1
       46 CALL                             R4 0 1
       47 JUMPIFNOT                        R4 ; [+15]
       48 GETIMPORT                        R4 K5 [require]
       50 GETTABLEKS                       R6 R0 K10 ["Packages"]
       52 GETTABLEKS                       R5 R6 K16 ["AssistantUI"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R7 R4 K17 ["Utils"]
       57 GETTABLEKS                       R6 R7 K18 ["DataModelType"]
       59 GETTABLEKS                       R5 R6 K19 ["setIsStandalone"]
       61 LOADB                            R6 1
       62 CALL                             R5 1 0
       63 GETIMPORT                        R4 K5 [require]
       65 GETTABLEKS                       R7 R0 K6 ["Src"]
       67 GETTABLEKS                       R6 R7 K20 ["Util"]
       69 GETTABLEKS                       R5 R6 K21 ["StudioState"]
       71 CALL                             R4 1 1
       72 GETIMPORT                        R5 K5 [require]
       74 GETTABLEKS                       R8 R0 K22 ["Bin"]
       76 GETTABLEKS                       R7 R8 K23 ["Common"]
       78 GETTABLEKS                       R6 R7 K24 ["pluginType"]
       80 CALL                             R5 1 1
       81 GETTABLEKS                       R7 R5 K25 ["get"]
       83 CALL                             R7 0 1
       84 GETTABLEKS                       R8 R5 K26 ["Standalone"]
       86 JUMPIFEQ                         R7 R8 ; [+2]
       88 LOADB                            R6 0 +1
       89 LOADB                            R6 1
       90 JUMPIFNOT                        R6 ; [+117]
       91 GETIMPORT                        R7 K5 [require]
       93 GETTABLEKS                       R9 R0 K10 ["Packages"]
       95 GETTABLEKS                       R8 R9 K27 ["ReactDeveloperTools"]
       97 CALL                             R7 1 1
       98 GETTABLEKS                       R8 R7 K28 ["tryEnableDevtools"]
      100 DUPTABLE                         R9 K31 [{"pluginName", "profileOnStart"}]
      101 LOADK                            R10 K2 ["Assistant"]
      102 SETTABLEKS                       R10 R9 K29 ["pluginName"]
      104 LOADB                            R10 0
      105 SETTABLEKS                       R10 R9 K30 ["profileOnStart"]
      107 CALL                             R8 1 0
      108 GETIMPORT                        R8 K5 [require]
      110 GETTABLEKS                       R10 R0 K10 ["Packages"]
      112 GETTABLEKS                       R9 R10 K16 ["AssistantUI"]
      114 CALL                             R8 1 1
      115 GETTABLEKS                       R11 R8 K7 ["Flags"]
      117 GETTABLEKS                       R10 R11 K32 ["Shared"]
      119 GETTABLEKS                       R9 R10 K33 ["FFlagAssistantDMNetworkIdentity"]
      121 GETTABLEKS                       R12 R8 K7 ["Flags"]
      123 GETTABLEKS                       R11 R12 K32 ["Shared"]
      125 GETTABLEKS                       R10 R11 K34 ["FFlagAssistantTestModeDropdown"]
      127 GETIMPORT                        R11 K5 [require]
      129 GETTABLEKS                       R14 R0 K6 ["Src"]
      131 GETTABLEKS                       R13 R14 K20 ["Util"]
      133 GETTABLEKS                       R12 R13 K35 ["StudioNetworking"]
      135 CALL                             R11 1 1
      136 LOADNIL                          R12
      137 MOVE                             R13 R9
      138 CALL                             R13 0 1
      139 JUMPIFNOT                        R13 ; [+17]
      140 GETTABLEKS                       R13 R11 K36 ["create"]
      142 DUPTABLE                         R14 K41 [{"plugin", "isGuest", "isHost", "identity"}]
      143 GETIMPORT                        R15 K42 [plugin]
      145 SETTABLEKS                       R15 R14 K37 ["plugin"]
      147 SETTABLEKS                       R6 R14 K38 ["isGuest"]
      149 LOADB                            R15 0
      150 SETTABLEKS                       R15 R14 K39 ["isHost"]
      152 LOADK                            R15 K26 ["Standalone"]
      153 SETTABLEKS                       R15 R14 K40 ["identity"]
      155 CALL                             R13 1 1
      156 MOVE                             R12 R13
      157 MOVE                             R13 R10
      158 CALL                             R13 0 1
      159 JUMPIFNOT                        R13 ; [+6]
      160 GETTABLEKS                       R13 R4 K43 ["init"]
      162 GETIMPORT                        R14 K42 [plugin]
      164 MOVE                             R15 R12
      165 CALL                             R13 2 0
      166 GETIMPORT                        R13 K5 [require]
      168 GETTABLEKS                       R15 R0 K6 ["Src"]
      170 GETTABLEKS                       R14 R15 K44 ["toolInit"]
      172 CALL                             R13 1 1
      173 MOVE                             R14 R13
      174 GETIMPORT                        R15 K42 [plugin]
      176 DUPTABLE                         R16 K45 [{"isGuest", "isHost"}]
      177 SETTABLEKS                       R6 R16 K38 ["isGuest"]
      179 LOADB                            R17 0
      180 SETTABLEKS                       R17 R16 K39 ["isHost"]
      182 MOVE                             R17 R12
      183 CALL                             R14 3 0
      184 GETIMPORT                        R14 K5 [require]
      186 GETTABLEKS                       R17 R0 K22 ["Bin"]
      188 GETTABLEKS                       R16 R17 K23 ["Common"]
      190 GETTABLEKS                       R15 R16 K46 ["setup"]
      192 CALL                             R14 1 1
      193 GETIMPORT                        R15 K5 [require]
      195 GETTABLEKS                       R18 R0 K22 ["Bin"]
      197 GETTABLEKS                       R17 R18 K23 ["Common"]
      199 GETTABLEKS                       R16 R17 K47 ["setupMain"]
      201 CALL                             R15 1 1
      202 MOVE                             R16 R14
      203 GETIMPORT                        R17 K42 [plugin]
      205 MOVE                             R18 R15
      206 LOADB                            R19 1
      207 CALL                             R16 3 0
      208 RETURN                           R0 0
