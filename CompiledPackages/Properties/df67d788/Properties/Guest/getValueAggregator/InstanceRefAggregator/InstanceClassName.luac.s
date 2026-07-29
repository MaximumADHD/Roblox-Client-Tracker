PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        2 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R2 K0 [PROTO_1]
        1 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["FieldTypes"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K8 [{"getValue", "watch"}]
       11 DUPCLOSURE                       R2 K9 [PROTO_0]
       12 SETTABLEKS                       R2 R1 K6 ["getValue"]
       14 DUPCLOSURE                       R2 K10 [PROTO_2]
       15 SETTABLEKS                       R2 R1 K7 ["watch"]
       17 RETURN                           R1 1
