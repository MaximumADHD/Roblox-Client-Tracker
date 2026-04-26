PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["splitOn"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["/"]
        5 CALL                             R1 2 1
        6 GETTABLEN                        R2 R1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["universes"] ; [+7]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["ScopeType"]
       12 GETTABLEKS                       R2 R3 K4 ["ProjectShared"]
       14 JUMP                             ; [+27]
       15 JUMPIFNOTEQKS                    R2 K5 ["groups"] ; [+7]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K3 ["ScopeType"]
       20 GETTABLEKS                       R2 R3 K6 ["Group"]
       22 JUMP                             ; [+19]
       23 JUMPIFNOTEQKS                    R2 K7 ["users"] ; [+7]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K3 ["ScopeType"]
       28 GETTABLEKS                       R2 R3 K8 ["User"]
       30 JUMP                             ; [+11]
       31 GETUPVAL                         R3 2
       32 LOADK                            R5 K9 ["createAccountUidFromPath - Unrecognized account type %* in path %*"]
       33 MOVE                             R7 R2
       34 MOVE                             R8 R0
       35 NAMECALL                         R5 R5 K10 ["format"]
       37 CALL                             R5 3 1
       38 MOVE                             R4 R5
       39 CALL                             R3 1 0
       40 LOADNIL                          R3
       41 RETURN                           R3 1
       42 GETTABLEN                        R4 R1 2
       43 FASTCALL1                        TONUMBER R4 ; [+2]
       44 GETIMPORT                        R3 K12 [tonumber]
       46 CALL                             R3 1 1
       47 JUMPIF                           R3 ; [+11]
       48 GETUPVAL                         R4 2
       49 LOADK                            R6 K13 ["createAccountUidFromPath - Invalid account id %* in path %*"]
       50 GETTABLEN                        R8 R1 2
       51 MOVE                             R9 R0
       52 NAMECALL                         R6 R6 K10 ["format"]
       54 CALL                             R6 3 1
       55 MOVE                             R5 R6
       56 CALL                             R4 1 0
       57 LOADNIL                          R4
       58 RETURN                           R4 1
       59 GETUPVAL                         R4 3
       60 MOVE                             R5 R2
       61 MOVE                             R6 R3
       62 CALL                             R4 2 1
       63 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K6 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["createScopeUid"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["logIfDebug"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K13 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 RETURN                           R5 1
