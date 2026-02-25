PROTO_0:
        0 DUPTABLE                         R2 K2 [{"tableName", "pageSize"}]
        1 SETTABLEKS                       R0 R2 K0 ["tableName"]
        3 SETTABLEKS                       R1 R2 K1 ["pageSize"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Util"]
       20 GETTABLEKS                       R3 R2 K8 ["Action"]
       22 MOVE                             R4 R3
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K9 ["Name"]
       27 DUPCLOSURE                       R6 K10 [PROTO_0]
       28 CALL                             R4 2 -1
       29 RETURN                           R4 -1
