PROTO_0:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["COLLABORATORTYPE_USER"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLE                         R2 R0 R1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["COLLABORATORTYPE_GROUP"]
       11 NEWTABLE                         R2 0 0
       13 SETTABLE                         R2 R0 R1
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Actions"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R3 K11 ["SetSearchItemLogs"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Util"]
       36 GETTABLEKS                       R6 R6 K13 ["Constants"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K14 [PROTO_0]
       40 CAPTURE                          VAL R5
       41 GETTABLEKS                       R7 R1 K15 ["createReducer"]
       43 NEWTABLE                         R8 0 0
       45 NEWTABLE                         R9 2 0
       47 DUPCLOSURE                       R10 K16 [PROTO_1]
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R10 R9 K17 ["ResetStore"]
       51 GETTABLEKS                       R10 R4 K18 ["name"]
       53 DUPCLOSURE                       R11 K19 [PROTO_2]
       54 CAPTURE                          VAL R2
       55 SETTABLE                         R11 R9 R10
       56 CALL                             R7 2 -1
       57 RETURN                           R7 -1
