PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["folder"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R6 R4 K1 ["createTime"]
        5 CALL                             R5 1 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R7 R4 K2 ["updateTime"]
        9 CALL                             R6 1 1
       10 DUPTABLE                         R7 K15 [{["AssetId"], ["AssetType"], ["DisplayName"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False, ["SearchRank"], ["Path"]}]
       11 GETTABLEKS                       R8 R4 K16 ["folderId"]
       13 SETTABLEKS                       R8 R7 K3 ["AssetId"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K4 ["AssetType"]
       18 GETTABLEKS                       R8 R8 K17 ["Folder"]
       20 SETTABLEKS                       R8 R7 K4 ["AssetType"]
       22 GETTABLEKS                       R8 R4 K18 ["displayName"]
       24 SETTABLEKS                       R8 R7 K5 ["DisplayName"]
       26 SETTABLEKS                       R5 R7 K6 ["Created"]
       28 SETTABLEKS                       R6 R7 K7 ["Modified"]
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K8 ["ModerationStatus"]
       33 GETTABLEKS                       R8 R8 K19 ["Placeholder"]
       35 SETTABLEKS                       R8 R7 K8 ["ModerationStatus"]
       37 SETTABLEKS                       R1 R7 K9 ["Creator"]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K20 ["AssetSource"]
       42 GETTABLEKS                       R8 R8 K21 ["Uploaded"]
       44 SETTABLEKS                       R8 R7 K10 ["Source"]
       46 SETTABLEKS                       R3 R7 K13 ["SearchRank"]
       48 SETTABLEKS                       R2 R7 K14 ["Path"]
       50 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["parseIsoToUnixMillis"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
