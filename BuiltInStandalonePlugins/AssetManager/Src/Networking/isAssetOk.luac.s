PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["assetItem"]
        2 GETTABLEKS                       R1 R2 K1 ["asset"]
        4 MOVE                             R2 R1
        5 JUMPIFNOT                        R2 ; [+15]
        6 GETTABLEKS                       R3 R1 K2 ["creationContext"]
        8 GETTABLEKS                       R2 R3 K3 ["creator"]
       10 JUMPIFNOT                        R2 ; [+10]
       11 GETTABLEKS                       R2 R1 K4 ["createTime"]
       13 JUMPIFNOT                        R2 ; [+7]
       14 GETTABLEKS                       R2 R1 K5 ["updateTime"]
       16 JUMPIFNOT                        R2 ; [+4]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R3 R1 K6 ["assetType"]
       20 CALL                             R2 1 1
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["convertAssetTypeStringToEnum"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
