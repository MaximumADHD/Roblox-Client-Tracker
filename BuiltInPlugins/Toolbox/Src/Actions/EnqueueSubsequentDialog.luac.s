PROTO_0:
        0 DUPTABLE                         R2 K2 [{"assetData", "status"}]
        1 SETTABLEKS                       R0 R2 K0 ["assetData"]
        3 SETTABLEKS                       R1 R2 K1 ["status"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R3 K6 [require]
       11 GETTABLEKS                       R4 R1 K7 ["Framework"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R2 R3 K8 ["Util"]
       16 GETTABLEKS                       R3 R2 K9 ["Action"]
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R7 R0 K10 ["Src"]
       22 GETTABLEKS                       R6 R7 K11 ["Models"]
       24 GETTABLEKS                       R5 R6 K12 ["AssetInfo"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R8 R0 K10 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Types"]
       33 GETTABLEKS                       R6 R7 K14 ["SubsequentDialogStatus"]
       35 CALL                             R5 1 1
       36 MOVE                             R6 R3
       37 GETIMPORT                        R8 K1 [script]
       39 GETTABLEKS                       R7 R8 K15 ["Name"]
       41 DUPCLOSURE                       R8 K16 [PROTO_0]
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1
