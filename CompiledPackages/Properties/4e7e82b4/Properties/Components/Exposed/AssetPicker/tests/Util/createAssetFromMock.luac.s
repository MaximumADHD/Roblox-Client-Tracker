PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["assetId"]
        2 GETTABLEKS                       R2 R0 K0 ["assetId"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 0
        8 ADDK                             R2 R2 K1 [1]
        9 SETUPVAL                         R2 0
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 GETTABLEKS                       R4 R0 K2 ["assetType"]
       14 JUMPIFEQKNIL                     R4 ; [+13]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R5 R0 K2 ["assetType"]
       19 CALL                             R4 1 1
       20 JUMPIFNOT                        R4 ; [+7]
       21 LOADK                            R2 K3 ["ASSET_TYPE_ANIMATION"]
       22 GETTABLEKS                       R4 R0 K2 ["assetType"]
       24 JUMPIFNOTEQKS                    R4 K4 ["AnimationGraph"] ; [+9]
       26 LOADK                            R3 K4 ["AnimationGraph"]
       27 JUMP                             ; [+6]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R6 R0 K2 ["assetType"]
       31 ORK                              R5 R6 K5 ["Image"]
       32 CALL                             R4 1 1
       33 MOVE                             R2 R4
       34 DUPTABLE                         R4 K12 [{"assetId", "assetType", "assetSubType", "createTime", "creationContext", "description", "displayName", "updateTime"}]
       35 SETTABLEKS                       R1 R4 K0 ["assetId"]
       37 SETTABLEKS                       R2 R4 K2 ["assetType"]
       39 SETTABLEKS                       R3 R4 K6 ["assetSubType"]
       41 GETTABLEKS                       R6 R0 K7 ["createTime"]
       43 ORK                              R5 R6 K13 ["2024-06-13"]
       44 SETTABLEKS                       R5 R4 K7 ["createTime"]
       46 GETTABLEKS                       R5 R0 K8 ["creationContext"]
       48 JUMPIF                           R5 ; [+10]
       49 DUPTABLE                         R5 K15 [{"creator"}]
       50 DUPTABLE                         R6 K18 [{"userId", "name"}]
       51 LOADN                            R7 0
       52 SETTABLEKS                       R7 R6 K16 ["userId"]
       54 LOADK                            R7 K19 ["MeowMeowCat"]
       55 SETTABLEKS                       R7 R6 K17 ["name"]
       57 SETTABLEKS                       R6 R5 K14 ["creator"]
       59 SETTABLEKS                       R5 R4 K8 ["creationContext"]
       61 GETTABLEKS                       R6 R0 K9 ["description"]
       63 ORK                              R5 R6 K20 ["A cute tabby cat eating the moon"]
       64 SETTABLEKS                       R5 R4 K9 ["description"]
       66 GETTABLEKS                       R6 R0 K10 ["displayName"]
       68 ORK                              R5 R6 K21 ["MeowMeowAsset"]
       69 SETTABLEKS                       R5 R4 K10 ["displayName"]
       71 GETTABLEKS                       R6 R0 K11 ["updateTime"]
       73 ORK                              R5 R6 K13 ["2024-06-13"]
       74 SETTABLEKS                       R5 R4 K11 ["updateTime"]
       76 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["isAnimationAssetType"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Util"]
       23 GETTABLEKS                       R4 R4 K9 ["toInternalAssetType"]
       25 CALL                             R3 1 1
       26 LOADN                            R4 0
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          REF R4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CLOSEUPVALS                      R4
       32 RETURN                           R5 1
