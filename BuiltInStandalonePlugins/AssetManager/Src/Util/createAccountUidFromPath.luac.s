PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["splitOn"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["/"]
        5 CALL                             R1 2 1
        6 GETTABLEN                        R2 R1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["universes"] ; [+7]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["ScopeType"]
       12 GETTABLEKS                       R2 R3 K4 ["Universe"]
       14 JUMP                             ; [+26]
       15 JUMPIFNOTEQKS                    R2 K5 ["groups"] ; [+7]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K3 ["ScopeType"]
       20 GETTABLEKS                       R2 R3 K6 ["Group"]
       22 JUMP                             ; [+18]
       23 JUMPIFNOTEQKS                    R2 K7 ["users"] ; [+7]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K3 ["ScopeType"]
       28 GETTABLEKS                       R2 R3 K8 ["User"]
       30 JUMP                             ; [+10]
       31 GETUPVAL                         R3 2
       32 LOADK                            R4 K9 ["createAccountUidFromPath - Unrecognized account type %* in path %*"]
       33 MOVE                             R6 R2
       34 MOVE                             R7 R0
       35 NAMECALL                         R4 R4 K10 ["format"]
       37 CALL                             R4 3 1
       38 CALL                             R3 1 0
       39 LOADNIL                          R3
       40 RETURN                           R3 1
       41 GETTABLEN                        R4 R1 2
       42 FASTCALL1                        TONUMBER R4 ; [+2]
       43 GETIMPORT                        R3 K12 [tonumber]
       45 CALL                             R3 1 1
       46 JUMPIF                           R3 ; [+10]
       47 GETUPVAL                         R4 2
       48 LOADK                            R5 K13 ["createAccountUidFromPath - Invalid account id %* in path %*"]
       49 GETTABLEN                        R7 R1 2
       50 MOVE                             R8 R0
       51 NAMECALL                         R5 R5 K10 ["format"]
       53 CALL                             R5 3 1
       54 CALL                             R4 1 0
       55 LOADNIL                          R4
       56 RETURN                           R4 1
       57 GETUPVAL                         R4 3
       58 MOVE                             R5 R2
       59 MOVE                             R6 R3
       60 CALL                             R4 2 1
       61 RETURN                           R4 1

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
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["AssetManagement"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["Utils"]
       30 GETTABLEKS                       R4 R4 K12 ["createScopeUid"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Util"]
       38 GETTABLEKS                       R6 R6 K14 ["logIfDebug"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K15 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 RETURN                           R6 1
