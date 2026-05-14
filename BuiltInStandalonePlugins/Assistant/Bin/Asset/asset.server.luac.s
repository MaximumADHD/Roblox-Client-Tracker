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
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
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
       31 GETTABLEKS                       R3 R0 K11 ["Src"]
       33 GETTABLEKS                       R3 R3 K13 ["Flags"]
       35 GETTABLEKS                       R3 R3 K14 ["FFlagIsLuobuBuild"]
       37 CALL                             R2 1 1
       38 MOVE                             R3 R2
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K7 [require]
       44 GETTABLEKS                       R4 R0 K15 ["Bin"]
       46 GETTABLEKS                       R4 R4 K16 ["Common"]
       48 GETTABLEKS                       R4 R4 K17 ["pluginType"]
       50 CALL                             R3 1 1
       51 GETTABLEKS                       R5 R3 K18 ["get"]
       53 CALL                             R5 0 1
       54 GETTABLEKS                       R6 R3 K19 ["Asset"]
       56 JUMPIFEQ                         R5 R6 ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 JUMPIFNOT                        R4 ; [+17]
       61 GETIMPORT                        R5 K7 [require]
       63 GETTABLEKS                       R6 R0 K8 ["Packages"]
       65 GETTABLEKS                       R6 R6 K20 ["ReactDeveloperTools"]
       67 CALL                             R5 1 1
       68 GETTABLEKS                       R6 R5 K21 ["tryEnableDevtools"]
       70 DUPTABLE                         R7 K24 [{"pluginName", "profileOnStart"}]
       71 LOADK                            R8 K4 ["Assistant"]
       72 SETTABLEKS                       R8 R7 K22 ["pluginName"]
       74 LOADB                            R8 0
       75 SETTABLEKS                       R8 R7 K23 ["profileOnStart"]
       77 CALL                             R6 1 0
       78 GETIMPORT                        R5 K7 [require]
       80 GETTABLEKS                       R6 R0 K8 ["Packages"]
       82 GETTABLEKS                       R6 R6 K25 ["AssistantUI"]
       84 CALL                             R5 1 1
       85 GETIMPORT                        R6 K7 [require]
       87 GETTABLEKS                       R7 R0 K11 ["Src"]
       89 GETTABLEKS                       R7 R7 K26 ["Util"]
       91 GETTABLEKS                       R7 R7 K27 ["StudioNetworking"]
       93 CALL                             R6 1 1
       94 GETTABLEKS                       R7 R5 K28 ["Utils"]
       96 GETTABLEKS                       R7 R7 K29 ["DataModelType"]
       98 GETTABLEKS                       R8 R7 K30 ["getDataModelType"]
      100 CALL                             R8 0 1
      101 GETTABLEKS                       R9 R5 K13 ["Flags"]
      103 GETTABLEKS                       R9 R9 K31 ["Shared"]
      105 GETTABLEKS                       R9 R9 K32 ["FFlagAssistantEval"]
      107 GETTABLEKS                       R10 R6 K33 ["create"]
      109 DUPTABLE                         R11 K37 [{"plugin", "isGuest", "isHost", "identity"}]
      110 GETIMPORT                        R12 K1 [plugin]
      112 SETTABLEKS                       R12 R11 K0 ["plugin"]
      114 SETTABLEKS                       R4 R11 K34 ["isGuest"]
      116 LOADB                            R12 1
      117 SETTABLEKS                       R12 R11 K35 ["isHost"]
      119 SETTABLEKS                       R8 R11 K36 ["identity"]
      121 CALL                             R10 1 1
      122 GETTABLEKS                       R11 R7 K38 ["Types"]
      124 GETTABLEKS                       R11 R11 K39 ["Client"]
      126 JUMPIFNOTEQ                      R8 R11 ; [+17]
      128 GETIMPORT                        R11 K7 [require]
      130 GETTABLEKS                       R12 R0 K11 ["Src"]
      132 GETTABLEKS                       R12 R12 K26 ["Util"]
      134 GETTABLEKS                       R12 R12 K40 ["GameLoadedNotifier"]
      136 CALL                             R11 1 1
      137 GETTABLEKS                       R12 R11 K41 ["init"]
      139 MOVE                             R13 R8
      140 GETIMPORT                        R14 K1 [plugin]
      142 MOVE                             R15 R10
      143 CALL                             R12 3 0
      144 GETTABLEKS                       R11 R7 K38 ["Types"]
      146 GETTABLEKS                       R11 R11 K42 ["Server"]
      148 JUMPIFNOTEQ                      R8 R11 ; [+17]
      150 GETIMPORT                        R11 K7 [require]
      152 GETTABLEKS                       R12 R0 K11 ["Src"]
      154 GETTABLEKS                       R12 R12 K26 ["Util"]
      156 GETTABLEKS                       R12 R12 K43 ["GameStoppedNotifier"]
      158 CALL                             R11 1 1
      159 GETTABLEKS                       R12 R11 K41 ["init"]
      161 MOVE                             R13 R8
      162 GETIMPORT                        R14 K1 [plugin]
      164 MOVE                             R15 R10
      165 CALL                             R12 3 0
      166 MOVE                             R11 R9
      167 CALL                             R11 0 1
      168 JUMPIFNOT                        R11 ; [+105]
      169 GETIMPORT                        R11 K7 [require]
      171 GETTABLEKS                       R12 R0 K11 ["Src"]
      173 GETTABLEKS                       R12 R12 K44 ["EvalDriver"]
      175 GETTABLEKS                       R12 R12 K45 ["EvalUtils"]
      177 CALL                             R11 1 1
      178 GETTABLEKS                       R12 R11 K41 ["init"]
      180 GETIMPORT                        R13 K1 [plugin]
      182 CALL                             R12 1 0
      183 GETTABLEKS                       R12 R7 K38 ["Types"]
      185 GETTABLEKS                       R12 R12 K42 ["Server"]
      187 JUMPIFNOTEQ                      R8 R12 ; [+30]
      189 GETIMPORT                        R12 K7 [require]
      191 GETTABLEKS                       R13 R0 K11 ["Src"]
      193 GETTABLEKS                       R13 R13 K44 ["EvalDriver"]
      195 GETTABLEKS                       R13 R13 K46 ["EvalDriverPlaySoloServerDM"]
      197 CALL                             R12 1 1
      198 GETIMPORT                        R13 K7 [require]
      200 GETTABLEKS                       R14 R0 K11 ["Src"]
      202 GETTABLEKS                       R14 R14 K44 ["EvalDriver"]
      204 GETTABLEKS                       R14 R14 K47 ["EvalDriverMultiPlayers"]
      206 CALL                             R13 1 1
      207 GETTABLEKS                       R14 R12 K41 ["init"]
      209 GETIMPORT                        R15 K1 [plugin]
      211 MOVE                             R16 R10
      212 CALL                             R14 2 0
      213 GETTABLEKS                       R14 R13 K41 ["init"]
      215 GETIMPORT                        R15 K1 [plugin]
      217 CALL                             R14 1 0
      218 GETTABLEKS                       R12 R7 K38 ["Types"]
      220 GETTABLEKS                       R12 R12 K39 ["Client"]
      222 JUMPIFNOTEQ                      R8 R12 ; [+30]
      224 GETIMPORT                        R12 K7 [require]
      226 GETTABLEKS                       R13 R0 K11 ["Src"]
      228 GETTABLEKS                       R13 R13 K44 ["EvalDriver"]
      230 GETTABLEKS                       R13 R13 K48 ["EvalDriverPlaySoloClientDM"]
      232 CALL                             R12 1 1
      233 GETIMPORT                        R13 K7 [require]
      235 GETTABLEKS                       R14 R0 K11 ["Src"]
      237 GETTABLEKS                       R14 R14 K44 ["EvalDriver"]
      239 GETTABLEKS                       R14 R14 K47 ["EvalDriverMultiPlayers"]
      241 CALL                             R13 1 1
      242 GETTABLEKS                       R14 R12 K41 ["init"]
      244 GETIMPORT                        R15 K1 [plugin]
      246 MOVE                             R16 R10
      247 CALL                             R14 2 0
      248 GETTABLEKS                       R14 R13 K41 ["init"]
      250 GETIMPORT                        R15 K1 [plugin]
      252 CALL                             R14 1 0
      253 GETTABLEKS                       R12 R7 K38 ["Types"]
      255 GETTABLEKS                       R12 R12 K49 ["Edit"]
      257 JUMPIFNOTEQ                      R8 R12 ; [+16]
      259 GETIMPORT                        R12 K7 [require]
      261 GETTABLEKS                       R13 R0 K11 ["Src"]
      263 GETTABLEKS                       R13 R13 K44 ["EvalDriver"]
      265 GETTABLEKS                       R13 R13 K50 ["EvalDriverEditDM"]
      267 CALL                             R12 1 1
      268 GETTABLEKS                       R13 R12 K41 ["init"]
      270 GETIMPORT                        R14 K1 [plugin]
      272 MOVE                             R15 R10
      273 CALL                             R13 2 0
      274 GETIMPORT                        R11 K7 [require]
      276 GETTABLEKS                       R12 R0 K11 ["Src"]
      278 GETTABLEKS                       R12 R12 K51 ["toolInit"]
      280 CALL                             R11 1 1
      281 MOVE                             R12 R11
      282 GETIMPORT                        R13 K1 [plugin]
      284 MOVE                             R14 R10
      285 CALL                             R12 2 0
      286 JUMPIFNOT                        R4 ; [+23]
      287 GETIMPORT                        R12 K7 [require]
      289 GETTABLEKS                       R13 R0 K15 ["Bin"]
      291 GETTABLEKS                       R13 R13 K16 ["Common"]
      293 GETTABLEKS                       R13 R13 K52 ["setup"]
      295 CALL                             R12 1 1
      296 GETIMPORT                        R13 K7 [require]
      298 GETTABLEKS                       R14 R0 K15 ["Bin"]
      300 GETTABLEKS                       R14 R14 K16 ["Common"]
      302 GETTABLEKS                       R14 R14 K53 ["setupMain"]
      304 CALL                             R13 1 1
      305 MOVE                             R14 R12
      306 GETIMPORT                        R15 K1 [plugin]
      308 MOVE                             R16 R13
      309 CALL                             R14 2 0
      310 RETURN                           R0 0
