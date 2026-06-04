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
       42 GETIMPORT                        R3 K16 [game]
       44 LOADK                            R5 K17 ["RunService"]
       45 NAMECALL                         R3 R3 K18 ["GetService"]
       47 CALL                             R3 2 1
       48 GETIMPORT                        R4 K7 [require]
       50 GETTABLEKS                       R5 R0 K19 ["Bin"]
       52 GETTABLEKS                       R5 R5 K20 ["Common"]
       54 GETTABLEKS                       R5 R5 K21 ["pluginType"]
       56 CALL                             R4 1 1
       57 LOADB                            R5 0
       58 GETTABLEKS                       R6 R4 K22 ["get"]
       60 CALL                             R6 0 1
       61 GETTABLEKS                       R7 R4 K23 ["Asset"]
       63 JUMPIFNOTEQ                      R6 R7 ; [+4]
       65 NAMECALL                         R5 R3 K24 ["IsEdit"]
       67 CALL                             R5 1 1
       68 JUMPIFNOT                        R5 ; [+17]
       69 GETIMPORT                        R6 K7 [require]
       71 GETTABLEKS                       R7 R0 K8 ["Packages"]
       73 GETTABLEKS                       R7 R7 K25 ["ReactDeveloperTools"]
       75 CALL                             R6 1 1
       76 GETTABLEKS                       R7 R6 K26 ["tryEnableDevtools"]
       78 DUPTABLE                         R8 K29 [{"pluginName", "profileOnStart"}]
       79 LOADK                            R9 K4 ["Assistant"]
       80 SETTABLEKS                       R9 R8 K27 ["pluginName"]
       82 LOADB                            R9 0
       83 SETTABLEKS                       R9 R8 K28 ["profileOnStart"]
       85 CALL                             R7 1 0
       86 GETIMPORT                        R6 K7 [require]
       88 GETTABLEKS                       R7 R0 K8 ["Packages"]
       90 GETTABLEKS                       R7 R7 K30 ["AssistantUI"]
       92 CALL                             R6 1 1
       93 GETIMPORT                        R7 K7 [require]
       95 GETTABLEKS                       R8 R0 K11 ["Src"]
       97 GETTABLEKS                       R8 R8 K31 ["Util"]
       99 GETTABLEKS                       R8 R8 K32 ["StudioNetworking"]
      101 CALL                             R7 1 1
      102 GETTABLEKS                       R8 R6 K33 ["Utils"]
      104 GETTABLEKS                       R8 R8 K34 ["DataModelType"]
      106 GETIMPORT                        R9 K7 [require]
      108 GETTABLEKS                       R10 R0 K11 ["Src"]
      110 GETTABLEKS                       R10 R10 K31 ["Util"]
      112 GETTABLEKS                       R10 R10 K35 ["ConsoleOutputManager"]
      114 CALL                             R9 1 1
      115 GETTABLEKS                       R10 R8 K36 ["getDataModelType"]
      117 CALL                             R10 0 1
      118 GETTABLEKS                       R11 R6 K13 ["Flags"]
      120 GETTABLEKS                       R11 R11 K37 ["Shared"]
      122 GETTABLEKS                       R11 R11 K38 ["FFlagAssistantEval"]
      124 GETTABLEKS                       R12 R6 K13 ["Flags"]
      126 GETTABLEKS                       R12 R12 K37 ["Shared"]
      128 GETTABLEKS                       R12 R12 K39 ["FFlagAssistantWhileSuspended"]
      130 GETTABLEKS                       R13 R6 K13 ["Flags"]
      132 GETTABLEKS                       R13 R13 K37 ["Shared"]
      134 GETTABLEKS                       R13 R13 K40 ["FFlagAssistantConsoleOutputTailFromEnd"]
      136 GETTABLEKS                       R14 R7 K41 ["create"]
      138 DUPTABLE                         R15 K46 [{"plugin", "isGuest", "isHost", "identity", "useSuspendOverride"}]
      139 GETIMPORT                        R16 K1 [plugin]
      141 SETTABLEKS                       R16 R15 K0 ["plugin"]
      143 SETTABLEKS                       R5 R15 K42 ["isGuest"]
      145 LOADB                            R16 1
      146 SETTABLEKS                       R16 R15 K43 ["isHost"]
      148 SETTABLEKS                       R10 R15 K44 ["identity"]
      150 MOVE                             R16 R12
      151 CALL                             R16 0 1
      152 SETTABLEKS                       R16 R15 K45 ["useSuspendOverride"]
      154 CALL                             R14 1 1
      155 MOVE                             R15 R13
      156 CALL                             R15 0 1
      157 JUMPIFNOT                        R15 ; [+6]
      158 GETTABLEKS                       R15 R9 K47 ["init"]
      160 GETIMPORT                        R16 K1 [plugin]
      162 MOVE                             R17 R14
      163 CALL                             R15 2 0
      164 GETTABLEKS                       R15 R8 K48 ["Types"]
      166 GETTABLEKS                       R15 R15 K49 ["Client"]
      168 JUMPIFNOTEQ                      R10 R15 ; [+17]
      170 GETIMPORT                        R15 K7 [require]
      172 GETTABLEKS                       R16 R0 K11 ["Src"]
      174 GETTABLEKS                       R16 R16 K31 ["Util"]
      176 GETTABLEKS                       R16 R16 K50 ["GameLoadedNotifier"]
      178 CALL                             R15 1 1
      179 GETTABLEKS                       R16 R15 K47 ["init"]
      181 MOVE                             R17 R10
      182 GETIMPORT                        R18 K1 [plugin]
      184 MOVE                             R19 R14
      185 CALL                             R16 3 0
      186 GETTABLEKS                       R15 R8 K48 ["Types"]
      188 GETTABLEKS                       R15 R15 K51 ["Server"]
      190 JUMPIFNOTEQ                      R10 R15 ; [+17]
      192 GETIMPORT                        R15 K7 [require]
      194 GETTABLEKS                       R16 R0 K11 ["Src"]
      196 GETTABLEKS                       R16 R16 K31 ["Util"]
      198 GETTABLEKS                       R16 R16 K52 ["GameStoppedNotifier"]
      200 CALL                             R15 1 1
      201 GETTABLEKS                       R16 R15 K47 ["init"]
      203 MOVE                             R17 R10
      204 GETIMPORT                        R18 K1 [plugin]
      206 MOVE                             R19 R14
      207 CALL                             R16 3 0
      208 MOVE                             R15 R11
      209 CALL                             R15 0 1
      210 JUMPIFNOT                        R15 ; [+105]
      211 GETIMPORT                        R15 K7 [require]
      213 GETTABLEKS                       R16 R0 K11 ["Src"]
      215 GETTABLEKS                       R16 R16 K53 ["EvalDriver"]
      217 GETTABLEKS                       R16 R16 K54 ["EvalUtils"]
      219 CALL                             R15 1 1
      220 GETTABLEKS                       R16 R15 K47 ["init"]
      222 GETIMPORT                        R17 K1 [plugin]
      224 CALL                             R16 1 0
      225 GETTABLEKS                       R16 R8 K48 ["Types"]
      227 GETTABLEKS                       R16 R16 K51 ["Server"]
      229 JUMPIFNOTEQ                      R10 R16 ; [+30]
      231 GETIMPORT                        R16 K7 [require]
      233 GETTABLEKS                       R17 R0 K11 ["Src"]
      235 GETTABLEKS                       R17 R17 K53 ["EvalDriver"]
      237 GETTABLEKS                       R17 R17 K55 ["EvalDriverPlaySoloServerDM"]
      239 CALL                             R16 1 1
      240 GETIMPORT                        R17 K7 [require]
      242 GETTABLEKS                       R18 R0 K11 ["Src"]
      244 GETTABLEKS                       R18 R18 K53 ["EvalDriver"]
      246 GETTABLEKS                       R18 R18 K56 ["EvalDriverMultiPlayers"]
      248 CALL                             R17 1 1
      249 GETTABLEKS                       R18 R16 K47 ["init"]
      251 GETIMPORT                        R19 K1 [plugin]
      253 MOVE                             R20 R14
      254 CALL                             R18 2 0
      255 GETTABLEKS                       R18 R17 K47 ["init"]
      257 GETIMPORT                        R19 K1 [plugin]
      259 CALL                             R18 1 0
      260 GETTABLEKS                       R16 R8 K48 ["Types"]
      262 GETTABLEKS                       R16 R16 K49 ["Client"]
      264 JUMPIFNOTEQ                      R10 R16 ; [+30]
      266 GETIMPORT                        R16 K7 [require]
      268 GETTABLEKS                       R17 R0 K11 ["Src"]
      270 GETTABLEKS                       R17 R17 K53 ["EvalDriver"]
      272 GETTABLEKS                       R17 R17 K57 ["EvalDriverPlaySoloClientDM"]
      274 CALL                             R16 1 1
      275 GETIMPORT                        R17 K7 [require]
      277 GETTABLEKS                       R18 R0 K11 ["Src"]
      279 GETTABLEKS                       R18 R18 K53 ["EvalDriver"]
      281 GETTABLEKS                       R18 R18 K56 ["EvalDriverMultiPlayers"]
      283 CALL                             R17 1 1
      284 GETTABLEKS                       R18 R16 K47 ["init"]
      286 GETIMPORT                        R19 K1 [plugin]
      288 MOVE                             R20 R14
      289 CALL                             R18 2 0
      290 GETTABLEKS                       R18 R17 K47 ["init"]
      292 GETIMPORT                        R19 K1 [plugin]
      294 CALL                             R18 1 0
      295 GETTABLEKS                       R16 R8 K48 ["Types"]
      297 GETTABLEKS                       R16 R16 K58 ["Edit"]
      299 JUMPIFNOTEQ                      R10 R16 ; [+16]
      301 GETIMPORT                        R16 K7 [require]
      303 GETTABLEKS                       R17 R0 K11 ["Src"]
      305 GETTABLEKS                       R17 R17 K53 ["EvalDriver"]
      307 GETTABLEKS                       R17 R17 K59 ["EvalDriverEditDM"]
      309 CALL                             R16 1 1
      310 GETTABLEKS                       R17 R16 K47 ["init"]
      312 GETIMPORT                        R18 K1 [plugin]
      314 MOVE                             R19 R14
      315 CALL                             R17 2 0
      316 GETIMPORT                        R15 K7 [require]
      318 GETTABLEKS                       R16 R0 K11 ["Src"]
      320 GETTABLEKS                       R16 R16 K60 ["toolInit"]
      322 CALL                             R15 1 1
      323 MOVE                             R16 R15
      324 GETIMPORT                        R17 K1 [plugin]
      326 MOVE                             R18 R14
      327 CALL                             R16 2 0
      328 JUMPIFNOT                        R5 ; [+23]
      329 GETIMPORT                        R16 K7 [require]
      331 GETTABLEKS                       R17 R0 K19 ["Bin"]
      333 GETTABLEKS                       R17 R17 K20 ["Common"]
      335 GETTABLEKS                       R17 R17 K61 ["setup"]
      337 CALL                             R16 1 1
      338 GETIMPORT                        R17 K7 [require]
      340 GETTABLEKS                       R18 R0 K19 ["Bin"]
      342 GETTABLEKS                       R18 R18 K20 ["Common"]
      344 GETTABLEKS                       R18 R18 K62 ["setupMain"]
      346 CALL                             R17 1 1
      347 MOVE                             R18 R16
      348 GETIMPORT                        R19 K1 [plugin]
      350 MOVE                             R20 R17
      351 CALL                             R18 2 0
      352 RETURN                           R0 0
