PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"IsBusy"}]
        7 GETTABLEKS                       R5 R1 K4 ["isBusy"]
        9 SETTABLEKS                       R5 R4 K2 ["IsBusy"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

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
       25 DUPTABLE                         R4 K10 [{"IsBusy"}]
       26 LOADB                            R5 0
       27 SETTABLEKS                       R5 R4 K9 ["IsBusy"]
       29 DUPTABLE                         R5 K12 [{"SetIsBusy"}]
       30 DUPCLOSURE                       R6 K13 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K11 ["SetIsBusy"]
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1
