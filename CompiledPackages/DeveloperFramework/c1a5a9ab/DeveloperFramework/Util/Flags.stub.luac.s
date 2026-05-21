PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 DUPTABLE                         R6 K1 [{"shouldFetchLiveValues"}]
        5 LOADB                            R7 0
        6 SETTABLEKS                       R7 R6 K0 ["shouldFetchLiveValues"]
        8 CALL                             R4 2 -1
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["join"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K2 ["Parent"]
       22 GETTABLEKS                       R4 R4 K7 ["Flags_stubbed"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K8 ["new"]
       27 DUPCLOSURE                       R5 K9 [PROTO_0]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R5 R3 K8 ["new"]
       32 RETURN                           R3 1
