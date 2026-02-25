PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GetAdapted"]
        3 CALL                             R0 0 1
        4 DUPTABLE                         R1 K2 [{"adapted"}]
        5 SETTABLEKS                       R0 R1 K1 ["adapted"]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"adapted"}]
        7 GETTABLEKS                       R5 R1 K2 ["adapted"]
        9 SETTABLEKS                       R5 R4 K2 ["adapted"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["GetAdapted"]
        9 CALL                             R4 0 1
       10 DUPTABLE                         R3 K4 [{"adapted"}]
       11 SETTABLEKS                       R4 R3 K3 ["adapted"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R4 K10 ["Actions"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["SetAdapted"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R3 K12 ["ResetAllAdapter"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R9 R0 K9 ["Src"]
       39 GETTABLEKS                       R8 R9 K13 ["Util"]
       41 GETTABLEKS                       R7 R8 K14 ["SaveInterface"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K15 [PROTO_0]
       45 CAPTURE                          VAL R6
       46 GETTABLEKS                       R8 R1 K16 ["createReducer"]
       48 GETTABLEKS                       R10 R6 K17 ["GetAdapted"]
       50 CALL                             R10 0 1
       51 DUPTABLE                         R9 K19 [{"adapted"}]
       52 SETTABLEKS                       R10 R9 K18 ["adapted"]
       54 NEWTABLE                         R10 2 0
       56 GETTABLEKS                       R11 R4 K20 ["name"]
       58 DUPCLOSURE                       R12 K21 [PROTO_1]
       59 CAPTURE                          VAL R2
       60 SETTABLE                         R12 R10 R11
       61 GETTABLEKS                       R11 R5 K20 ["name"]
       63 DUPCLOSURE                       R12 K22 [PROTO_2]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R6
       66 SETTABLE                         R12 R10 R11
       67 CALL                             R8 2 1
       68 RETURN                           R8 1
