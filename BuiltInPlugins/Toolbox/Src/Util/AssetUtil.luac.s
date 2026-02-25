PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["shouldShowPrices"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+17]
        7 GETIMPORT                        R3 K3 [UDim2.new]
        9 LOADN                            R4 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K4 ["ASSET_WIDTH_NO_PADDING"]
       13 LOADN                            R6 0
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R8 R9 K5 ["ASSET_HEIGHT"]
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R9 R10 K6 ["PRICE_HEIGHT"]
       20 ADD                              R7 R8 R9
       21 CALL                             R3 4 1
       22 MOVE                             R1 R3
       23 RETURN                           R1 1
       24 GETIMPORT                        R3 K3 [UDim2.new]
       26 LOADN                            R4 0
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K4 ["ASSET_WIDTH_NO_PADDING"]
       30 LOADN                            R6 0
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K5 ["ASSET_HEIGHT"]
       34 CALL                             R3 4 1
       35 MOVE                             R1 R3
       36 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKN                    R0 K0 [1] ; [+7]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["ASSET_STATUS"]
        5 GETTABLEKS                       R2 R3 K2 ["ReviewPending"]
        7 RETURN                           R2 1
        8 JUMPIFNOTEQKN                    R0 K3 [2] ; [+7]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K1 ["ASSET_STATUS"]
       13 GETTABLEKS                       R2 R3 K4 ["Moderated"]
       15 RETURN                           R2 1
       16 JUMPIFNOTEQKN                    R0 K5 [3] ; [+7]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K1 ["ASSET_STATUS"]
       21 GETTABLEKS                       R2 R3 K6 ["ReviewApproved"]
       23 RETURN                           R2 1
       24 JUMPIFNOTEQKN                    R1 K7 [0] ; [+7]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K1 ["ASSET_STATUS"]
       29 GETTABLEKS                       R2 R3 K8 ["OnSale"]
       31 RETURN                           R2 1
       32 JUMPIFNOTEQKN                    R1 K0 [1] ; [+7]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K1 ["ASSET_STATUS"]
       37 GETTABLEKS                       R2 R3 K9 ["OffSale"]
       39 RETURN                           R2 1
       40 JUMPIFNOTEQKN                    R1 K3 [2] ; [+7]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K1 ["ASSET_STATUS"]
       45 GETTABLEKS                       R2 R3 K10 ["Free"]
       47 RETURN                           R2 1
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K1 ["ASSET_STATUS"]
       51 GETTABLEKS                       R2 R3 K11 ["Unknown"]
       53 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Types"]
       13 GETTABLEKS                       R2 R3 K8 ["Category"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K9 ["Util"]
       31 GETTABLEKS                       R4 R5 K11 ["AssetConfigConstants"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 2 0
       36 DUPCLOSURE                       R5 K12 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R5 R4 K13 ["getAssetSize"]
       41 DUPCLOSURE                       R5 K14 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R5 R4 K15 ["getStatus"]
       45 RETURN                           R4 1
