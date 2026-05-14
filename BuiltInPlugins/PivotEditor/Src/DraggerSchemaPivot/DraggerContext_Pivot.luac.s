PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PivotSnapToGeometry"]
        3 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["new"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 1
        6 DUPCLOSURE                       R1 K1 [PROTO_0]
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R1 R0 K2 ["shouldSnapPivotToGeometry"]
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["DraggerFramework"]
       21 GETTABLEKS                       R3 R3 K11 ["Implementation"]
       23 GETTABLEKS                       R3 R3 K12 ["DraggerContext_PluginImpl"]
       25 CALL                             R2 1 1
       26 NEWTABLE                         R3 1 0
       28 DUPCLOSURE                       R4 K13 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R4 R3 K14 ["new"]
       33 RETURN                           R3 1
