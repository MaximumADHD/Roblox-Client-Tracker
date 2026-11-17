PROTO_0:
        0 DUPTABLE                         R1 K1 [{"rig"}]
        1 SETTABLEKS                       R0 R1 K0 ["rig"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K8 ["Util"]
       16 GETTABLEKS                       R1 R1 K9 ["Action"]
       18 MOVE                             R2 R1
       19 GETIMPORT                        R3 K1 [script]
       21 GETTABLEKS                       R3 R3 K10 ["Name"]
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1
