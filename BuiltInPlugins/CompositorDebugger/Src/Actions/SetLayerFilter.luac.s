PROTO_0:
        0 DUPTABLE                         R2 K1 [{"layerFilters"}]
        1 NEWTABLE                         R3 1 0
        3 SETTABLE                         R1 R3 R0
        4 SETTABLEKS                       R3 R2 K0 ["layerFilters"]
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["Action"]
       18 MOVE                             R3 R2
       19 GETIMPORT                        R5 K1 [script]
       21 GETTABLEKS                       R4 R5 K10 ["Name"]
       23 DUPCLOSURE                       R5 K11 [PROTO_0]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1
