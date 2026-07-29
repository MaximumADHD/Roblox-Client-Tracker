PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["splitOn"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["/"]
        5 CALL                             R1 2 1
        6 GETTABLEN                        R2 R1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["universes"] ; [+16]
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K3 ["ScopeType"]
       15 GETTABLEKS                       R2 R3 K4 ["Universe"]
       17 JUMP                             ; [+33]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K3 ["ScopeType"]
       21 GETTABLEKS                       R2 R3 K5 ["ProjectShared"]
       23 JUMP                             ; [+27]
       24 JUMPIFNOTEQKS                    R2 K6 ["groups"] ; [+7]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K3 ["ScopeType"]
       29 GETTABLEKS                       R2 R3 K7 ["Group"]
       31 JUMP                             ; [+19]
       32 JUMPIFNOTEQKS                    R2 K8 ["users"] ; [+7]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K3 ["ScopeType"]
       37 GETTABLEKS                       R2 R3 K9 ["User"]
       39 JUMP                             ; [+11]
       40 GETUPVAL                         R3 3
       41 LOADK                            R5 K10 ["createAccountUidFromPath - Unrecognized account type %* in path %*"]
       42 MOVE                             R7 R2
       43 MOVE                             R8 R0
       44 NAMECALL                         R5 R5 K11 ["format"]
       46 CALL                             R5 3 1
       47 MOVE                             R4 R5
       48 CALL                             R3 1 0
       49 LOADNIL                          R3
       50 RETURN                           R3 1
       51 GETTABLEN                        R4 R1 2
       52 FASTCALL1                        TONUMBER R4 ; [+2]
       53 GETIMPORT                        R3 K13 [tonumber]
       55 CALL                             R3 1 1
       56 JUMPIF                           R3 ; [+11]
       57 GETUPVAL                         R4 3
       58 LOADK                            R6 K14 ["createAccountUidFromPath - Invalid account id %* in path %*"]
       59 GETTABLEN                        R8 R1 2
       60 MOVE                             R9 R0
       61 NAMECALL                         R6 R6 K11 ["format"]
       63 CALL                             R6 3 1
       64 MOVE                             R5 R6
       65 CALL                             R4 1 0
       66 LOADNIL                          R4
       67 RETURN                           R4 1
       68 GETUPVAL                         R4 4
       69 MOVE                             R5 R2
       70 MOVE                             R6 R3
       71 CALL                             R4 2 1
       72 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["createScopeUid"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["logIfDebug"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Flags"]
       45 GETTABLEKS                       R6 R6 K14 ["getFFlagAmrUnifyGameScopeType"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 RETURN                           R6 1
