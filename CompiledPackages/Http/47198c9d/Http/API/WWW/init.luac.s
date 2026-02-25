PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Develop", "Studio"}]
        1 GETIMPORT                        R2 K4 [require]
        3 GETIMPORT                        R4 K6 [script]
        5 GETTABLEKS                       R3 R4 K0 ["Develop"]
        7 CALL                             R2 1 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K0 ["Develop"]
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R4 K6 [script]
       16 GETTABLEKS                       R3 R4 K1 ["Studio"]
       18 CALL                             R2 1 1
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R1 K1 ["Studio"]
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
