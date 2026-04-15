PROTO_0:
        0 DUPTABLE                         R2 K3 [{"value", "source", "stack"}]
        1 SETTABLEKS                       R0 R2 K0 ["value"]
        3 SETTABLEKS                       R1 R2 K1 ["source"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K2 ["stack"]
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["ReactInternalTypes"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R2 K1 [require]
       12 GETIMPORT                        R5 K3 [script]
       14 GETTABLEKS                       R4 R5 K4 ["Parent"]
       16 GETTABLEKS                       R3 R4 K6 ["ReactFiberComponentStack"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R1 R2 K7 ["getStackByFiberInDevAndProd"]
       21 NEWTABLE                         R2 1 0
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R2 K9 ["createCapturedValue"]
       27 RETURN                           R2 1
