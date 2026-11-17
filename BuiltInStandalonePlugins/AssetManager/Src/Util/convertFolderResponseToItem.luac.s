PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["folder"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["Utils"]
        5 GETTABLEKS                       R5 R5 K2 ["parseIsoToUnixMillis"]
        7 GETTABLEKS                       R6 R4 K3 ["createTime"]
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K1 ["Utils"]
       13 GETTABLEKS                       R6 R6 K2 ["parseIsoToUnixMillis"]
       15 GETTABLEKS                       R7 R4 K4 ["updateTime"]
       17 CALL                             R6 1 1
       18 DUPTABLE                         R7 K17 [{["AssetId"], ["AssetType"], ["DisplayName"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False, ["SearchRank"], ["Path"]}]
       19 GETTABLEKS                       R8 R4 K18 ["folderId"]
       21 SETTABLEKS                       R8 R7 K5 ["AssetId"]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K6 ["AssetType"]
       26 GETTABLEKS                       R8 R8 K19 ["Folder"]
       28 SETTABLEKS                       R8 R7 K6 ["AssetType"]
       30 GETTABLEKS                       R8 R4 K20 ["displayName"]
       32 SETTABLEKS                       R8 R7 K7 ["DisplayName"]
       34 SETTABLEKS                       R5 R7 K8 ["Created"]
       36 SETTABLEKS                       R6 R7 K9 ["Modified"]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K10 ["ModerationStatus"]
       41 GETTABLEKS                       R8 R8 K21 ["Placeholder"]
       43 SETTABLEKS                       R8 R7 K10 ["ModerationStatus"]
       45 SETTABLEKS                       R1 R7 K11 ["Creator"]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K22 ["AssetSource"]
       50 GETTABLEKS                       R8 R8 K23 ["Uploaded"]
       52 SETTABLEKS                       R8 R7 K12 ["Source"]
       54 SETTABLEKS                       R3 R7 K15 ["SearchRank"]
       56 SETTABLEKS                       R2 R7 K16 ["Path"]
       58 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
