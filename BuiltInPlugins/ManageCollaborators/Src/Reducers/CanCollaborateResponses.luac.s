PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
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
       27 GETTABLEKS                       R5 R3 K11 ["SetCanCollaborateResponses"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_0]
       31 GETTABLEKS                       R6 R1 K13 ["createReducer"]
       33 NEWTABLE                         R7 0 0
       35 NEWTABLE                         R8 2 0
       37 DUPCLOSURE                       R9 K14 [PROTO_1]
       38 SETTABLEKS                       R9 R8 K15 ["ResetStore"]
       40 GETTABLEKS                       R9 R4 K16 ["name"]
       42 DUPCLOSURE                       R10 K17 [PROTO_2]
       43 CAPTURE                          VAL R2
       44 SETTABLE                         R10 R8 R9
       45 CALL                             R6 2 -1
       46 RETURN                           R6 -1
