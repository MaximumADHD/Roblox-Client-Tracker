PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["composeUrl"]
        3 GETUPVAL                         R5 1
        4 LOADK                            R6 K1 ["asset/"]
        5 DUPTABLE                         R7 K4 [{"id", "assetName"}]
        6 SETTABLEKS                       R0 R7 K2 ["id"]
        8 SETTABLEKS                       R1 R7 K3 ["assetName"]
       10 CALL                             R4 3 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K5 ["makeQueryString"]
       14 DUPTABLE                         R6 K8 [{"assetTypeId", "isPackage"}]
       15 GETTABLEKS                       R7 R2 K9 ["Value"]
       17 SETTABLEKS                       R7 R6 K6 ["assetTypeId"]
       19 SETTABLEKS                       R3 R6 K7 ["isPackage"]
       21 LOADK                            R7 K10 ["#"]
       22 CALL                             R5 2 1
       23 MOVE                             R7 R4
       24 MOVE                             R8 R5
       25 CONCAT                           R6 R7 R8
       26 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Url"]
       16 GETTABLEKS                       R4 R2 K7 ["new"]
       18 CALL                             R4 0 1
       19 GETTABLEKS                       R3 R4 K8 ["ASSET_GAME_URL"]
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 SETGLOBAL                        R4 K10 ["constructAssetGameAssetIdUrl"]
       26 GETGLOBAL                        R4 K10 ["constructAssetGameAssetIdUrl"]
       28 RETURN                           R4 1
