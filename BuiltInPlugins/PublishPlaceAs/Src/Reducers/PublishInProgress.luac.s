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
       24 DUPTABLE                         R4 K15 [{"universe", "place", "isPublish", "failCount", "requestInFlight"}]
       25 NEWTABLE                         R5 0 0
       27 SETTABLEKS                       R5 R4 K10 ["universe"]
       29 NEWTABLE                         R5 0 0
       31 SETTABLEKS                       R5 R4 K11 ["place"]
       33 LOADB                            R5 0
       34 SETTABLEKS                       R5 R4 K12 ["isPublish"]
       36 LOADN                            R5 0
       37 SETTABLEKS                       R5 R4 K13 ["failCount"]
       39 LOADB                            R5 0
       40 SETTABLEKS                       R5 R4 K14 ["requestInFlight"]
       42 SETTABLEKS                       R4 R3 K8 ["publishInProgress"]
       44 GETTABLEKS                       R4 R1 K16 ["createReducer"]
       46 MOVE                             R5 R3
       47 DUPTABLE                         R6 K18 [{"SetPublishInProgress"}]
       48 DUPCLOSURE                       R7 K19 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R7 R6 K17 ["SetPublishInProgress"]
       52 CALL                             R4 2 -1
       53 RETURN                           R4 -1
