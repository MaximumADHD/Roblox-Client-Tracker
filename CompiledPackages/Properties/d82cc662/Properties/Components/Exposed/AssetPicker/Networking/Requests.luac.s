PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Develop"]
        3 GETTABLEKS                       R1 R1 K1 ["V1"]
        5 GETTABLEKS                       R1 R1 K2 ["Universes"]
        7 GETTABLEKS                       R1 R1 K3 ["get"]
        9 GETTABLEKS                       R2 R0 K4 ["gameId"]
       11 CALL                             R1 1 1
       12 NAMECALL                         R2 R1 K5 ["makeRequest"]
       14 CALL                             R2 1 1
       15 NAMECALL                         R2 R2 K6 ["await"]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["APIS"]
        3 GETTABLEKS                       R1 R1 K1 ["CreatorHomeApi"]
        5 GETTABLEKS                       R1 R1 K2 ["V1"]
        7 GETTABLEKS                       R1 R1 K3 ["groups"]
        9 GETTABLEKS                       R2 R0 K4 ["source"]
       11 CALL                             R1 1 1
       12 NAMECALL                         R2 R1 K5 ["makeRequest"]
       14 CALL                             R2 1 1
       15 NAMECALL                         R2 R2 K6 ["await"]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["userId"]
        6 SETLIST                          R2 R3 1 [1]
        8 NAMECALL                         R0 R0 K1 ["GetUserInfosByUserIdsAsync"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+11]
        7 LOADB                            R3 1
        8 DUPTABLE                         R4 K3 [{"responseBody"}]
        9 DUPTABLE                         R5 K5 [{"displayName"}]
       10 GETTABLEN                        R6 R2 1
       11 GETTABLEKS                       R6 R6 K6 ["DisplayName"]
       13 SETTABLEKS                       R6 R5 K4 ["displayName"]
       15 SETTABLEKS                       R5 R4 K2 ["responseBody"]
       17 RETURN                           R3 2
       18 LOADB                            R3 0
       19 DUPTABLE                         R4 K3 [{"responseBody"}]
       20 DUPTABLE                         R5 K8 [{["displayName"] = ""}]
       21 SETTABLEKS                       R5 R4 K2 ["responseBody"]
       23 RETURN                           R3 2

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R1 K0 ["makeRequest"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R2 R2 K1 ["await"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["assetId"]
        3 GETIMPORT                        R4 K4 [Enum.InfoType.Asset]
        5 NAMECALL                         R1 R1 K5 ["GetProductInfoAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MarketplaceService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UserService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Properties"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K9 ["Parent"]
       21 GETIMPORT                        R4 K6 [script]
       23 LOADK                            R6 K10 ["AssetPicker"]
       24 NAMECALL                         R4 R4 K8 ["FindFirstAncestor"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K12 [require]
       29 GETTABLEKS                       R6 R3 K13 ["Networking"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K12 [require]
       34 GETTABLEKS                       R7 R4 K14 ["Types"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K12 [require]
       39 GETTABLEKS                       R8 R4 K13 ["Networking"]
       41 GETTABLEKS                       R8 R8 K15 ["createAssetItemsSearchRequest"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R5 K16 ["RobloxAPI"]
       46 GETTABLEKS                       R8 R8 K17 ["new"]
       48 GETTABLEKS                       R9 R5 K18 ["Http"]
       50 GETTABLEKS                       R9 R9 K13 ["Networking"]
       52 GETTABLEKS                       R9 R9 K17 ["new"]
       54 CALL                             R9 0 1
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K19 [PROTO_0]
       57 CAPTURE                          VAL R8
       58 DUPCLOSURE                       R10 K20 [PROTO_1]
       59 CAPTURE                          VAL R8
       60 DUPCLOSURE                       R11 K21 [PROTO_3]
       61 CAPTURE                          VAL R1
       62 DUPCLOSURE                       R12 K22 [PROTO_4]
       63 CAPTURE                          VAL R7
       64 DUPCLOSURE                       R13 K23 [PROTO_5]
       65 CAPTURE                          VAL R0
       66 DUPTABLE                         R14 K29 [{"requestUniverseInfoAsync", "requestGroupsAsync", "requestUserDisplayNameAsync", "requestAssetItemsAsync", "getAssetProductInfoAsync"}]
       67 SETTABLEKS                       R9 R14 K24 ["requestUniverseInfoAsync"]
       69 SETTABLEKS                       R10 R14 K25 ["requestGroupsAsync"]
       71 SETTABLEKS                       R11 R14 K26 ["requestUserDisplayNameAsync"]
       73 SETTABLEKS                       R12 R14 K27 ["requestAssetItemsAsync"]
       75 SETTABLEKS                       R13 R14 K28 ["getAssetProductInfoAsync"]
       77 RETURN                           R14 1
