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
       20 GETTABLEKS                       R3 R4 K9 ["createScopeUid"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K10 ["Flags"]
       29 GETTABLEKS                       R4 R5 K11 ["getFIntAmrAssetFetchCount"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K10 ["Flags"]
       38 GETTABLEKS                       R5 R6 K12 ["getFIntAmrRecentUploadsMax"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 4 0
       43 DUPTABLE                         R6 K17 [{"Name", "Type", "Id", "Uid"}]
       44 LOADK                            R7 K18 [""]
       45 SETTABLEKS                       R7 R6 K13 ["Name"]
       47 GETTABLEKS                       R8 R1 K19 ["ScopeType"]
       49 GETTABLEKS                       R7 R8 K20 ["RecentUploads"]
       51 SETTABLEKS                       R7 R6 K14 ["Type"]
       53 LOADN                            R7 0
       54 SETTABLEKS                       R7 R6 K15 ["Id"]
       56 MOVE                             R7 R2
       57 GETTABLEKS                       R9 R1 K19 ["ScopeType"]
       59 GETTABLEKS                       R8 R9 K20 ["RecentUploads"]
       61 LOADN                            R9 0
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K16 ["Uid"]
       65 SETTABLEKS                       R6 R5 K20 ["RecentUploads"]
       67 MOVE                             R6 R4
       68 CALL                             R6 0 1
       69 SETTABLEKS                       R6 R5 K21 ["RecentMax"]
       71 MOVE                             R6 R3
       72 CALL                             R6 0 1
       73 SETTABLEKS                       R6 R5 K22 ["ItemFetchMax"]
       75 RETURN                           R5 1
