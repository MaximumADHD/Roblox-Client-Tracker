PROTO_0:
        0 DUPTABLE                         R1 K1 [{"sellerStatusData"}]
        1 SETTABLEKS                       R0 R1 K0 ["sellerStatusData"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R2 R2 K8 ["Util"]
       16 GETTABLEKS                       R3 R2 K9 ["Action"]
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Types"]
       24 GETTABLEKS                       R5 R5 K12 ["MarketplaceFiatServiceTypes"]
       26 CALL                             R4 1 1
       27 MOVE                             R5 R3
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K13 ["Name"]
       32 DUPCLOSURE                       R7 K14 [PROTO_0]
       33 CALL                             R5 2 -1
       34 RETURN                           R5 -1
