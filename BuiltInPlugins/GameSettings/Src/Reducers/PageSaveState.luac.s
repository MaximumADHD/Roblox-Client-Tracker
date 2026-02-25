PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 NEWTABLE                         R4 1 0
        8 GETTABLEKS                       R5 R1 K2 ["pageId"]
       10 GETTABLEKS                       R6 R1 K3 ["saveState"]
       12 SETTABLE                         R6 R4 R5
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["createReducer"]
       25 NEWTABLE                         R4 0 0
       27 DUPTABLE                         R5 K11 [{"ResetStore", "SetPageSaveState"}]
       28 DUPCLOSURE                       R6 K12 [PROTO_0]
       29 SETTABLEKS                       R6 R5 K9 ["ResetStore"]
       31 DUPCLOSURE                       R6 K13 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R6 R5 K10 ["SetPageSaveState"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1
