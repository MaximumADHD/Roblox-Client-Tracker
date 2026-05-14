PROTO_0:
        0 DUPTABLE                         R1 K1 [{"skipCounter"}]
        1 SETTABLEKS                       R0 R1 K0 ["skipCounter"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["Action"]
       18 MOVE                             R3 R2
       19 GETIMPORT                        R4 K1 [script]
       21 GETTABLEKS                       R4 R4 K10 ["Name"]
       23 DUPCLOSURE                       R5 K11 [PROTO_0]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1
