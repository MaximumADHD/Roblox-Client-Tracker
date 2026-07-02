PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 2 0
        2 NEWTABLE                         R1 0 0
        4 SETTABLEKS                       R1 R0 K0 ["_mockProductInfos"]
        6 DUPCLOSURE                       R1 K1 [PROTO_0]
        7 SETTABLEKS                       R1 R0 K2 ["_productInfoFetcher"]
        9 GETUPVAL                         R3 0
       10 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K4 [setmetatable]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_mockProductInfos"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEKS                       R3 R0 K0 ["_mockProductInfos"]
        6 GETTABLE                         R2 R3 R1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K1 ["_productInfoFetcher"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R2 R0 K1 ["_productInfoFetcher"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1
       16 GETIMPORT                        R2 K3 [error]
       18 LOADK                            R3 K4 ["No product info for asset id"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_mockProductInfos"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["_productInfoFetcher"]
        2 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K24 [{[1], ["AssetTypeId"], ["ContentRatingTypeId"] = 0, ["Created"] = "2026-04-10T00:00:00Z", ["Creator"], ["Description"] = "", ["IconImageAssetId"] = 0, ["IsForSale"] = False, ["IsLimited"] = False, ["IsLimitedUnique"] = False, ["IsNew"] = False, ["IsPublicDomain"] = True, ["MinimumMembershipLevel"] = 0, ["Name"] = "foo", ["ProductId"] = 0, ["Sales"] = 0, ["TargetId"], ["Updated"] = "2026-04-10T00:00:00Z"}]
        1 SETTABLEKS                       R0 R2 K0 ["AssetId"]
        3 GETIMPORT                        R3 K28 [Enum.AssetType.Plugin]
        5 GETTABLEKS                       R3 R3 K29 ["Value"]
        7 SETTABLEKS                       R3 R2 K1 ["AssetTypeId"]
        9 DUPTABLE                         R3 K35 [{["CreatorTargetId"], ["CreatorType"] = "User", ["HasVerifiedBadge"] = False, ["Id"], ["Name"]}]
       10 GETTABLEKS                       R4 R1 K34 ["Id"]
       12 SETTABLEKS                       R4 R3 K30 ["CreatorTargetId"]
       14 GETTABLEKS                       R4 R1 K34 ["Id"]
       16 SETTABLEKS                       R4 R3 K34 ["Id"]
       18 GETTABLEKS                       R4 R1 K18 ["Name"]
       20 SETTABLEKS                       R4 R3 K18 ["Name"]
       22 SETTABLEKS                       R3 R2 K6 ["Creator"]
       24 SETTABLEKS                       R0 R2 K22 ["TargetId"]
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_1]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K4 ["Destroy"]
       12 DUPCLOSURE                       R1 K5 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K6 ["GetProductInfoAsync"]
       15 DUPCLOSURE                       R1 K7 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K8 ["setMockProductInfo"]
       18 DUPCLOSURE                       R1 K9 [PROTO_5]
       19 SETTABLEKS                       R1 R0 K10 ["setProductInfoFetcher"]
       21 DUPCLOSURE                       R1 K11 [PROTO_6]
       22 SETTABLEKS                       R1 R0 K12 ["generateProductInfo"]
       24 RETURN                           R0 1
