PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 DUPCLOSURE                       R1 K1 [PROTO_0]
        5 SETTABLEKS                       R1 R0 K2 ["ReportCounter"]
        7 RETURN                           R0 1

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
       18 GETTABLEKS                       R2 R1 K7 ["TestHelpers"]
       20 GETTABLEKS                       R2 R2 K8 ["Instances"]
       22 GETTABLEKS                       R2 R2 K9 ["MockAnalyticsService"]
       24 NEWTABLE                         R3 1 0
       26 DUPCLOSURE                       R4 K10 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R4 R3 K11 ["new"]
       30 RETURN                           R3 1
