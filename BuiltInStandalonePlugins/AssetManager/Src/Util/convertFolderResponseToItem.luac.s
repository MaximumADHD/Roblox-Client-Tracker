PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["folder"]
        2 DUPTABLE                         R5 K12 [{"AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "SearchRank", "Path"}]
        3 GETTABLEKS                       R6 R4 K13 ["folderId"]
        5 SETTABLEKS                       R6 R5 K1 ["AssetId"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K2 ["AssetType"]
       10 GETTABLEKS                       R6 R6 K14 ["Folder"]
       12 SETTABLEKS                       R6 R5 K2 ["AssetType"]
       14 GETTABLEKS                       R6 R4 K15 ["displayName"]
       16 SETTABLEKS                       R6 R5 K3 ["DisplayName"]
       18 GETTABLEKS                       R6 R4 K16 ["createTime"]
       20 SETTABLEKS                       R6 R5 K4 ["Created"]
       22 GETTABLEKS                       R6 R4 K17 ["updateTime"]
       24 SETTABLEKS                       R6 R5 K5 ["Modified"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K6 ["ModerationStatus"]
       29 GETTABLEKS                       R6 R6 K18 ["Placeholder"]
       31 SETTABLEKS                       R6 R5 K6 ["ModerationStatus"]
       33 SETTABLEKS                       R1 R5 K7 ["Creator"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K19 ["AssetSource"]
       38 GETTABLEKS                       R6 R6 K20 ["Uploaded"]
       40 SETTABLEKS                       R6 R5 K8 ["Source"]
       42 LOADB                            R6 0
       43 SETTABLEKS                       R6 R5 K9 ["Archived"]
       45 SETTABLEKS                       R3 R5 K10 ["SearchRank"]
       47 SETTABLEKS                       R2 R5 K11 ["Path"]
       49 RETURN                           R5 1

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
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
