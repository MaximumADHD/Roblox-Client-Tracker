MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["Assistant"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R3 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["Assistant"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R5 R0 K11 ["Src"]
       33 GETTABLEKS                       R4 R5 K13 ["Flags"]
       35 GETTABLEKS                       R3 R4 K14 ["FFlagIsLuobuBuild"]
       37 CALL                             R2 1 1
       38 MOVE                             R3 R2
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K7 [require]
       44 GETTABLEKS                       R6 R0 K15 ["Bin"]
       46 GETTABLEKS                       R5 R6 K16 ["Common"]
       48 GETTABLEKS                       R4 R5 K17 ["pluginType"]
       50 CALL                             R3 1 1
       51 GETTABLEKS                       R5 R3 K18 ["get"]
       53 CALL                             R5 0 1
       54 GETTABLEKS                       R6 R3 K19 ["Asset"]
       56 JUMPIFEQ                         R5 R6 ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 JUMPIFNOT                        R4 ; [+17]
       61 GETIMPORT                        R5 K7 [require]
       63 GETTABLEKS                       R7 R0 K8 ["Packages"]
       65 GETTABLEKS                       R6 R7 K20 ["ReactDeveloperTools"]
       67 CALL                             R5 1 1
       68 GETTABLEKS                       R6 R5 K21 ["tryEnableDevtools"]
       70 DUPTABLE                         R7 K24 [{"pluginName", "profileOnStart"}]
       71 LOADK                            R8 K4 ["Assistant"]
       72 SETTABLEKS                       R8 R7 K22 ["pluginName"]
       74 LOADB                            R8 0
       75 SETTABLEKS                       R8 R7 K23 ["profileOnStart"]
       77 CALL                             R6 1 0
       78 GETIMPORT                        R5 K7 [require]
       80 GETTABLEKS                       R7 R0 K8 ["Packages"]
       82 GETTABLEKS                       R6 R7 K25 ["AssistantUI"]
       84 CALL                             R5 1 1
       85 GETIMPORT                        R6 K7 [require]
       87 GETTABLEKS                       R9 R0 K11 ["Src"]
       89 GETTABLEKS                       R8 R9 K26 ["Util"]
       91 GETTABLEKS                       R7 R8 K27 ["StudioNetworking"]
       93 CALL                             R6 1 1
       94 GETIMPORT                        R7 K7 [require]
       96 GETTABLEKS                       R10 R0 K11 ["Src"]
       98 GETTABLEKS                       R9 R10 K13 ["Flags"]
      100 GETTABLEKS                       R8 R9 K28 ["FFlagAssistantDebugMode"]
      102 CALL                             R7 1 1
      103 GETTABLEKS                       R10 R5 K13 ["Flags"]
      105 GETTABLEKS                       R9 R10 K29 ["Shared"]
      107 GETTABLEKS                       R8 R9 K30 ["FFlagAssistantDMNetworkIdentity"]
      109 GETTABLEKS                       R11 R5 K13 ["Flags"]
      111 GETTABLEKS                       R10 R11 K29 ["Shared"]
      113 GETTABLEKS                       R9 R10 K31 ["FFlagAssistantTestAutomation"]
      115 GETTABLEKS                       R11 R5 K32 ["Utils"]
      117 GETTABLEKS                       R10 R11 K33 ["DataModelType"]
      119 GETTABLEKS                       R11 R10 K34 ["getDataModelType"]
      121 CALL                             R11 0 1
      122 LOADNIL                          R12
      123 MOVE                             R13 R8
      124 CALL                             R13 0 1
      125 JUMPIFNOT                        R13 ; [+16]
      126 GETTABLEKS                       R13 R6 K35 ["create"]
      128 DUPTABLE                         R14 K39 [{"plugin", "isGuest", "isHost", "identity"}]
      129 GETIMPORT                        R15 K1 [plugin]
      131 SETTABLEKS                       R15 R14 K0 ["plugin"]
      133 SETTABLEKS                       R4 R14 K36 ["isGuest"]
      135 LOADB                            R15 1
      136 SETTABLEKS                       R15 R14 K37 ["isHost"]
      138 SETTABLEKS                       R11 R14 K38 ["identity"]
      140 CALL                             R13 1 1
      141 MOVE                             R12 R13
      142 MOVE                             R13 R7
      143 CALL                             R13 0 1
      144 JUMPIF                           R13 ; [+3]
      145 MOVE                             R13 R9
      146 CALL                             R13 0 1
      147 JUMPIFNOT                        R13 ; [+22]
      148 GETTABLEKS                       R14 R10 K40 ["Types"]
      150 GETTABLEKS                       R13 R14 K41 ["Client"]
      152 JUMPIFNOTEQ                      R11 R13 ; [+17]
      154 GETIMPORT                        R13 K7 [require]
      156 GETTABLEKS                       R16 R0 K11 ["Src"]
      158 GETTABLEKS                       R15 R16 K26 ["Util"]
      160 GETTABLEKS                       R14 R15 K42 ["GameLoadedNotifier"]
      162 CALL                             R13 1 1
      163 GETTABLEKS                       R14 R13 K43 ["init"]
      165 MOVE                             R15 R11
      166 GETIMPORT                        R16 K1 [plugin]
      168 MOVE                             R17 R12
      169 CALL                             R14 3 0
      170 MOVE                             R13 R9
      171 CALL                             R13 0 1
      172 JUMPIFNOT                        R13 ; [+22]
      173 GETTABLEKS                       R14 R10 K40 ["Types"]
      175 GETTABLEKS                       R13 R14 K44 ["Server"]
      177 JUMPIFNOTEQ                      R11 R13 ; [+17]
      179 GETIMPORT                        R13 K7 [require]
      181 GETTABLEKS                       R16 R0 K11 ["Src"]
      183 GETTABLEKS                       R15 R16 K26 ["Util"]
      185 GETTABLEKS                       R14 R15 K45 ["GameStoppedNotifier"]
      187 CALL                             R13 1 1
      188 GETTABLEKS                       R14 R13 K43 ["init"]
      190 MOVE                             R15 R11
      191 GETIMPORT                        R16 K1 [plugin]
      193 MOVE                             R17 R12
      194 CALL                             R14 3 0
      195 MOVE                             R13 R9
      196 CALL                             R13 0 1
      197 JUMPIF                           R13 ; [+7]
      198 GETTABLEKS                       R14 R10 K40 ["Types"]
      200 GETTABLEKS                       R13 R14 K46 ["Edit"]
      202 JUMPIFEQ                         R11 R13 ; [+2]
      204 RETURN                           R0 0
      205 GETIMPORT                        R13 K7 [require]
      207 GETTABLEKS                       R15 R0 K11 ["Src"]
      209 GETTABLEKS                       R14 R15 K47 ["toolInit"]
      211 CALL                             R13 1 1
      212 MOVE                             R14 R13
      213 GETIMPORT                        R15 K1 [plugin]
      215 DUPTABLE                         R16 K48 [{"isGuest", "isHost"}]
      216 SETTABLEKS                       R4 R16 K36 ["isGuest"]
      218 LOADB                            R17 1
      219 SETTABLEKS                       R17 R16 K37 ["isHost"]
      221 MOVE                             R17 R12
      222 CALL                             R14 3 0
      223 JUMPIFNOT                        R4 ; [+23]
      224 GETIMPORT                        R14 K7 [require]
      226 GETTABLEKS                       R17 R0 K15 ["Bin"]
      228 GETTABLEKS                       R16 R17 K16 ["Common"]
      230 GETTABLEKS                       R15 R16 K49 ["setup"]
      232 CALL                             R14 1 1
      233 GETIMPORT                        R15 K7 [require]
      235 GETTABLEKS                       R18 R0 K15 ["Bin"]
      237 GETTABLEKS                       R17 R18 K16 ["Common"]
      239 GETTABLEKS                       R16 R17 K50 ["setupMain"]
      241 CALL                             R15 1 1
      242 MOVE                             R16 R14
      243 GETIMPORT                        R17 K1 [plugin]
      245 MOVE                             R18 R15
      246 CALL                             R16 2 0
      247 RETURN                           R0 0
