PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 1 0
        2 DUPCLOSURE                       R1 K0 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K1 ["_productInfoFetcher"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_productInfoFetcher"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 -1
        4 RETURN                           R2 -1

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["_productInfoFetcher"]
        2 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K18 [{"AssetId", "AssetTypeId", "ContentRatingTypeId", "Created", "Creator", "Description", "IconImageAssetId", "IsForSale", "IsLimited", "IsLimitedUnique", "IsNew", "IsPublicDomain", "MinimumMembershipLevel", "Name", "ProductId", "Sales", "TargetId", "Updated"}]
        1 SETTABLEKS                       R0 R2 K0 ["AssetId"]
        3 GETIMPORT                        R3 K22 [Enum.AssetType.Plugin]
        5 GETTABLEKS                       R3 R3 K23 ["Value"]
        7 SETTABLEKS                       R3 R2 K1 ["AssetTypeId"]
        9 LOADN                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["ContentRatingTypeId"]
       12 LOADK                            R3 K24 ["2026-04-10T00:00:00Z"]
       13 SETTABLEKS                       R3 R2 K3 ["Created"]
       15 DUPTABLE                         R3 K29 [{"CreatorTargetId", "CreatorType", "HasVerifiedBadge", "Id", "Name"}]
       16 GETTABLEKS                       R4 R1 K28 ["Id"]
       18 SETTABLEKS                       R4 R3 K25 ["CreatorTargetId"]
       20 LOADK                            R4 K30 ["User"]
       21 SETTABLEKS                       R4 R3 K26 ["CreatorType"]
       23 LOADB                            R4 0
       24 SETTABLEKS                       R4 R3 K27 ["HasVerifiedBadge"]
       26 GETTABLEKS                       R4 R1 K28 ["Id"]
       28 SETTABLEKS                       R4 R3 K28 ["Id"]
       30 GETTABLEKS                       R4 R1 K13 ["Name"]
       32 SETTABLEKS                       R4 R3 K13 ["Name"]
       34 SETTABLEKS                       R3 R2 K4 ["Creator"]
       36 LOADK                            R3 K31 [""]
       37 SETTABLEKS                       R3 R2 K5 ["Description"]
       39 LOADN                            R3 0
       40 SETTABLEKS                       R3 R2 K6 ["IconImageAssetId"]
       42 LOADB                            R3 0
       43 SETTABLEKS                       R3 R2 K7 ["IsForSale"]
       45 LOADB                            R3 0
       46 SETTABLEKS                       R3 R2 K8 ["IsLimited"]
       48 LOADB                            R3 0
       49 SETTABLEKS                       R3 R2 K9 ["IsLimitedUnique"]
       51 LOADB                            R3 0
       52 SETTABLEKS                       R3 R2 K10 ["IsNew"]
       54 LOADB                            R3 1
       55 SETTABLEKS                       R3 R2 K11 ["IsPublicDomain"]
       57 LOADN                            R3 0
       58 SETTABLEKS                       R3 R2 K12 ["MinimumMembershipLevel"]
       60 LOADK                            R3 K32 ["foo"]
       61 SETTABLEKS                       R3 R2 K13 ["Name"]
       63 LOADN                            R3 0
       64 SETTABLEKS                       R3 R2 K14 ["ProductId"]
       66 LOADN                            R3 0
       67 SETTABLEKS                       R3 R2 K15 ["Sales"]
       69 SETTABLEKS                       R0 R2 K16 ["TargetId"]
       71 LOADK                            R3 K24 ["2026-04-10T00:00:00Z"]
       72 SETTABLEKS                       R3 R2 K17 ["Updated"]
       74 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_1]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K4 ["GetProductInfoAsync"]
       12 DUPCLOSURE                       R1 K5 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K6 ["setProductInfoFetcher"]
       15 DUPCLOSURE                       R1 K7 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K8 ["generateProductInfo"]
       18 RETURN                           R0 1
