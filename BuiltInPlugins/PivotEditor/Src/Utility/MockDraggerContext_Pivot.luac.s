PROTO_0:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["new"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 1
        6 DUPCLOSURE                       R1 K1 [PROTO_0]
        7 SETTABLEKS                       R1 R0 K2 ["shouldSnapPivotToGeometry"]
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETTABLEKS                       R1 R1 K4 ["DraggerFramework"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["Implementation"]
       17 GETTABLEKS                       R3 R3 K8 ["DraggerContext_FixtureImpl"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 1 0
       22 DUPCLOSURE                       R4 K9 [PROTO_1]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R4 R3 K10 ["new"]
       26 RETURN                           R3 1
