PROTO_0:
        0 DUPTABLE                         R2 K2 [{"gamepadEnabled", "context"}]
        1 SETTABLEKS                       R0 R2 K0 ["gamepadEnabled"]
        3 SETTABLEKS                       R1 R2 K1 ["context"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Util"]
       20 GETTABLEKS                       R2 R2 K8 ["Action"]
       22 MOVE                             R3 R2
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Name"]
       27 DUPCLOSURE                       R5 K10 [PROTO_0]
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1
