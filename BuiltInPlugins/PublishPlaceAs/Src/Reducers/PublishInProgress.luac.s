PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"publishInProgress"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["publishInProgress"]
       14 GETTABLEKS                       R7 R1 K2 ["publishInProgress"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["publishInProgress"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

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
       23 DUPTABLE                         R3 K9 [{"publishInProgress"}]
       24 DUPTABLE                         R4 K17 [{["universe"], ["place"], ["isPublish"] = False, ["failCount"] = 0, ["requestInFlight"] = False}]
       25 NEWTABLE                         R5 0 0
       27 SETTABLEKS                       R5 R4 K10 ["universe"]
       29 NEWTABLE                         R5 0 0
       31 SETTABLEKS                       R5 R4 K11 ["place"]
       33 SETTABLEKS                       R4 R3 K8 ["publishInProgress"]
       35 GETTABLEKS                       R4 R1 K18 ["createReducer"]
       37 MOVE                             R5 R3
       38 DUPTABLE                         R6 K20 [{"SetPublishInProgress"}]
       39 DUPCLOSURE                       R7 K21 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R7 R6 K19 ["SetPublishInProgress"]
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1
