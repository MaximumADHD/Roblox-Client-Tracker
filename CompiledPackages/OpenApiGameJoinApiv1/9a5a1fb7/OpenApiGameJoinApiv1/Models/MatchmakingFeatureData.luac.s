PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected table, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETTABLEKS                       R3 R0 K7 ["friendOfFriends"]
       26 JUMPIFEQKNIL                     R3 ; [+74]
       28 GETTABLEKS                       R4 R0 K7 ["friendOfFriends"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       36 LOADK                            R5 K8 ["%*\"friendOfFriends\" > Expected table, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["friendOfFriends"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 JUMP                             ; [+47]
       54 GETTABLEKS                       R3 R0 K7 ["friendOfFriends"]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 FASTCALL1                        TYPEOF R6 ; [+3]
       60 MOVE                             R9 R6
       61 GETIMPORT                        R8 K1 [typeof]
       63 CALL                             R8 1 1
       64 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
       66 LOADK                            R10 K10 ["%*\"friendOfFriends\" > Expected index of type number, got %* as %*"]
       67 MOVE                             R12 R2
       68 MOVE                             R13 R6
       69 FASTCALL1                        TYPEOF R6 ; [+3]
       70 MOVE                             R15 R6
       71 GETIMPORT                        R14 K1 [typeof]
       73 CALL                             R14 1 1
       74 NAMECALL                         R10 R10 K4 ["format"]
       76 CALL                             R10 4 1
       77 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       79 MOVE                             R9 R1
       80 GETIMPORT                        R8 K6 [table.insert]
       82 CALL                             R8 2 0
       83 JUMP                             ; [+15]
       84 GETTABLEKS                       R8 R0 K7 ["friendOfFriends"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
       89 MOVE                             R10 R7
       90 MOVE                             R11 R1
       91 LOADK                            R12 K12 ["%*\"friendOfFriends\" > [%*] > "]
       92 MOVE                             R14 R2
       93 MOVE                             R15 R6
       94 NAMECALL                         R12 R12 K4 ["format"]
       96 CALL                             R12 3 1
       97 CALL                             R9 3 1
       98 SETTABLE                         R9 R8 R6
       99 FORGLOOP                         R3 2 ; [-41]
      101 GETTABLEKS                       R3 R0 K13 ["friendRecommendations"]
      103 JUMPIFEQKNIL                     R3 ; [+74]
      105 GETTABLEKS                       R4 R0 K13 ["friendRecommendations"]
      107 FASTCALL1                        TYPEOF R4 ; [+2]
      108 GETIMPORT                        R3 K1 [typeof]
      110 CALL                             R3 1 1
      111 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      113 LOADK                            R5 K14 ["%*\"friendRecommendations\" > Expected table, got %*"]
      114 MOVE                             R7 R2
      115 GETTABLEKS                       R9 R0 K13 ["friendRecommendations"]
      117 FASTCALL1                        TYPEOF R9 ; [+2]
      118 GETIMPORT                        R8 K1 [typeof]
      120 CALL                             R8 1 1
      121 NAMECALL                         R5 R5 K4 ["format"]
      123 CALL                             R5 3 1
      124 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      126 MOVE                             R4 R1
      127 GETIMPORT                        R3 K6 [table.insert]
      129 CALL                             R3 2 0
      130 JUMP                             ; [+47]
      131 GETTABLEKS                       R3 R0 K13 ["friendRecommendations"]
      133 LOADNIL                          R4
      134 LOADNIL                          R5
      135 FORGPREP                         R3
      136 FASTCALL1                        TYPEOF R6 ; [+3]
      137 MOVE                             R9 R6
      138 GETIMPORT                        R8 K1 [typeof]
      140 CALL                             R8 1 1
      141 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      143 LOADK                            R10 K15 ["%*\"friendRecommendations\" > Expected index of type number, got %* as %*"]
      144 MOVE                             R12 R2
      145 MOVE                             R13 R6
      146 FASTCALL1                        TYPEOF R6 ; [+3]
      147 MOVE                             R15 R6
      148 GETIMPORT                        R14 K1 [typeof]
      150 CALL                             R14 1 1
      151 NAMECALL                         R10 R10 K4 ["format"]
      153 CALL                             R10 4 1
      154 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      156 MOVE                             R9 R1
      157 GETIMPORT                        R8 K6 [table.insert]
      159 CALL                             R8 2 0
      160 JUMP                             ; [+15]
      161 GETTABLEKS                       R8 R0 K13 ["friendRecommendations"]
      163 GETUPVAL                         R9 1
      164 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
      166 MOVE                             R10 R7
      167 MOVE                             R11 R1
      168 LOADK                            R12 K16 ["%*\"friendRecommendations\" > [%*] > "]
      169 MOVE                             R14 R2
      170 MOVE                             R15 R6
      171 NAMECALL                         R12 R12 K4 ["format"]
      173 CALL                             R12 3 1
      174 CALL                             R9 3 1
      175 SETTABLE                         R9 R8 R6
      176 FORGLOOP                         R3 2 ; [-41]
      178 GETTABLEKS                       R3 R0 K17 ["placeHistoricFeatures"]
      180 JUMPIFEQKNIL                     R3 ; [+83]
      182 GETTABLEKS                       R4 R0 K17 ["placeHistoricFeatures"]
      184 FASTCALL1                        TYPEOF R4 ; [+2]
      185 GETIMPORT                        R3 K1 [typeof]
      187 CALL                             R3 1 1
      188 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      190 LOADK                            R5 K18 ["%*\"placeHistoricFeatures\" > Expected table, got %*"]
      191 MOVE                             R7 R2
      192 GETTABLEKS                       R9 R0 K17 ["placeHistoricFeatures"]
      194 FASTCALL1                        TYPEOF R9 ; [+2]
      195 GETIMPORT                        R8 K1 [typeof]
      197 CALL                             R8 1 1
      198 NAMECALL                         R5 R5 K4 ["format"]
      200 CALL                             R5 3 1
      201 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      203 MOVE                             R4 R1
      204 GETIMPORT                        R3 K6 [table.insert]
      206 CALL                             R3 2 0
      207 JUMP                             ; [+56]
      208 GETTABLEKS                       R3 R0 K17 ["placeHistoricFeatures"]
      210 LOADNIL                          R4
      211 LOADNIL                          R5
      212 FORGPREP                         R3
      213 FASTCALL1                        TYPEOF R6 ; [+3]
      214 MOVE                             R9 R6
      215 GETIMPORT                        R8 K1 [typeof]
      217 CALL                             R8 1 1
      218 JUMPIFEQKS                       R8 K19 ["string"] ; [+19]
      220 LOADK                            R10 K20 ["%*\"placeHistoricFeatures\" > Expected key of type string, got %* as %*"]
      221 MOVE                             R12 R2
      222 MOVE                             R13 R6
      223 FASTCALL1                        TYPEOF R6 ; [+3]
      224 MOVE                             R15 R6
      225 GETIMPORT                        R14 K1 [typeof]
      227 CALL                             R14 1 1
      228 NAMECALL                         R10 R10 K4 ["format"]
      230 CALL                             R10 4 1
      231 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      233 MOVE                             R9 R1
      234 GETIMPORT                        R8 K6 [table.insert]
      236 CALL                             R8 2 0
      237 JUMP                             ; [+24]
      238 FASTCALL1                        TYPEOF R7 ; [+3]
      239 MOVE                             R9 R7
      240 GETIMPORT                        R8 K1 [typeof]
      242 CALL                             R8 1 1
      243 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      245 LOADK                            R10 K21 ["%*\"placeHistoricFeatures\" > [\"%*\"] > Expected number, got %*"]
      246 MOVE                             R12 R2
      247 MOVE                             R13 R6
      248 FASTCALL1                        TYPEOF R7 ; [+3]
      249 MOVE                             R15 R7
      250 GETIMPORT                        R14 K1 [typeof]
      252 CALL                             R14 1 1
      253 NAMECALL                         R10 R10 K4 ["format"]
      255 CALL                             R10 4 1
      256 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      258 MOVE                             R9 R1
      259 GETIMPORT                        R8 K6 [table.insert]
      261 CALL                             R8 2 0
      262 FORGLOOP                         R3 2 ; [-50]
      264 GETTABLEKS                       R3 R0 K22 ["userPlaceHistoryFeatures"]
      266 JUMPIFEQKNIL                     R3 ; [+83]
      268 GETTABLEKS                       R4 R0 K22 ["userPlaceHistoryFeatures"]
      270 FASTCALL1                        TYPEOF R4 ; [+2]
      271 GETIMPORT                        R3 K1 [typeof]
      273 CALL                             R3 1 1
      274 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      276 LOADK                            R5 K23 ["%*\"userPlaceHistoryFeatures\" > Expected table, got %*"]
      277 MOVE                             R7 R2
      278 GETTABLEKS                       R9 R0 K22 ["userPlaceHistoryFeatures"]
      280 FASTCALL1                        TYPEOF R9 ; [+2]
      281 GETIMPORT                        R8 K1 [typeof]
      283 CALL                             R8 1 1
      284 NAMECALL                         R5 R5 K4 ["format"]
      286 CALL                             R5 3 1
      287 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      289 MOVE                             R4 R1
      290 GETIMPORT                        R3 K6 [table.insert]
      292 CALL                             R3 2 0
      293 RETURN                           R0 1
      294 GETTABLEKS                       R3 R0 K22 ["userPlaceHistoryFeatures"]
      296 LOADNIL                          R4
      297 LOADNIL                          R5
      298 FORGPREP                         R3
      299 FASTCALL1                        TYPEOF R6 ; [+3]
      300 MOVE                             R9 R6
      301 GETIMPORT                        R8 K1 [typeof]
      303 CALL                             R8 1 1
      304 JUMPIFEQKS                       R8 K19 ["string"] ; [+19]
      306 LOADK                            R10 K24 ["%*\"userPlaceHistoryFeatures\" > Expected key of type string, got %* as %*"]
      307 MOVE                             R12 R2
      308 MOVE                             R13 R6
      309 FASTCALL1                        TYPEOF R6 ; [+3]
      310 MOVE                             R15 R6
      311 GETIMPORT                        R14 K1 [typeof]
      313 CALL                             R14 1 1
      314 NAMECALL                         R10 R10 K4 ["format"]
      316 CALL                             R10 4 1
      317 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      319 MOVE                             R9 R1
      320 GETIMPORT                        R8 K6 [table.insert]
      322 CALL                             R8 2 0
      323 JUMP                             ; [+24]
      324 FASTCALL1                        TYPEOF R7 ; [+3]
      325 MOVE                             R9 R7
      326 GETIMPORT                        R8 K1 [typeof]
      328 CALL                             R8 1 1
      329 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      331 LOADK                            R10 K25 ["%*\"userPlaceHistoryFeatures\" > [\"%*\"] > Expected number, got %*"]
      332 MOVE                             R12 R2
      333 MOVE                             R13 R6
      334 FASTCALL1                        TYPEOF R7 ; [+3]
      335 MOVE                             R15 R7
      336 GETIMPORT                        R14 K1 [typeof]
      338 CALL                             R14 1 1
      339 NAMECALL                         R10 R10 K4 ["format"]
      341 CALL                             R10 4 1
      342 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      344 MOVE                             R9 R1
      345 GETIMPORT                        R8 K6 [table.insert]
      347 CALL                             R8 2 0
      348 FORGLOOP                         R3 2 ; [-50]
      350 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["friendOfFriends"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["friendOfFriends"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["friendOfFriends"]
       15 GETTABLEKS                       R2 R1 K3 ["friendOfFriends"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["friendOfFriends"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 GETTABLEKS                       R2 R1 K5 ["friendRecommendations"]
       32 JUMPIFEQKNIL                     R2 ; [+23]
       34 GETIMPORT                        R2 K2 [table.clone]
       36 GETTABLEKS                       R3 R1 K5 ["friendRecommendations"]
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K5 ["friendRecommendations"]
       41 GETTABLEKS                       R2 R1 K5 ["friendRecommendations"]
       43 LOADNIL                          R3
       44 LOADNIL                          R4
       45 FORGPREP                         R2
       46 GETTABLEKS                       R7 R1 K5 ["friendRecommendations"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       51 MOVE                             R9 R6
       52 CALL                             R8 1 1
       53 SETTABLE                         R8 R7 R5
       54 FORGLOOP                         R2 2 ; [-9]
       56 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiGameJoinApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["FriendOfFriend"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["FriendRecommendation"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 GETIMPORT                        R7 K15 [table.freeze]
       36 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       37 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       39 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       41 CALL                             R7 1 1
       42 RETURN                           R7 1
