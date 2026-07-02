PROTO_0:
        0 DUPTABLE                         R0 K1 [{"Status"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["NOT_MIGRATED"]
        4 SETTABLEKS                       R1 R0 K0 ["Status"]
        6 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"Status"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["NOT_MIGRATED"]
        4 SETTABLEKS                       R3 R2 K0 ["Status"]
        6 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Status"}]
        7 GETTABLEKS                       R5 R1 K4 ["status"]
        9 SETTABLEKS                       R5 R4 K2 ["Status"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["MigrationStatus"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Actions"]
       38 GETTABLEKS                       R5 R5 K12 ["SetGroupMigrationStatus"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K13 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 GETTABLEKS                       R6 R1 K14 ["createReducer"]
       45 DUPTABLE                         R7 K16 [{"Status"}]
       46 GETTABLEKS                       R8 R3 K17 ["NOT_MIGRATED"]
       48 SETTABLEKS                       R8 R7 K15 ["Status"]
       50 NEWTABLE                         R8 2 0
       52 DUPCLOSURE                       R9 K18 [PROTO_1]
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R9 R8 K19 ["ResetStore"]
       56 GETTABLEKS                       R9 R4 K20 ["name"]
       58 DUPCLOSURE                       R10 K21 [PROTO_2]
       59 CAPTURE                          VAL R2
       60 SETTABLE                         R10 R8 R9
       61 CALL                             R6 2 -1
       62 RETURN                           R6 -1
