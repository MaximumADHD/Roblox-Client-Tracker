PROTO_0:
        0 DUPTABLE                         R1 K1 [{"progressGoal"}]
        1 SETTABLEKS                       R0 R1 K0 ["progressGoal"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["Action"]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K10 ["Name"]
       22 DUPCLOSURE                       R4 K11 [PROTO_0]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1
