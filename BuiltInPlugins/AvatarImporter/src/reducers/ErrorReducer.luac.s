PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"name", "message"}]
        7 GETTABLEKS                       R5 R1 K2 ["name"]
        9 SETTABLEKS                       R5 R4 K2 ["name"]
       11 GETTABLEKS                       R5 R1 K3 ["message"]
       13 SETTABLEKS                       R5 R4 K3 ["message"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R0 K8 ["src"]
       25 GETTABLEKS                       R3 R4 K9 ["actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["SetError"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R1 K11 ["createReducer"]
       34 NEWTABLE                         R6 0 0
       36 NEWTABLE                         R7 1 0
       38 GETTABLEKS                       R8 R4 K12 ["name"]
       40 DUPCLOSURE                       R9 K13 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 SETTABLE                         R9 R7 R8
       43 CALL                             R5 2 -1
       44 RETURN                           R5 -1
