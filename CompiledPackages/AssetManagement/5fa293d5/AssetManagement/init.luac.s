MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["Enums"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K3 [require]
       10 GETTABLEKS                       R3 R0 K5 ["Types"]
       12 CALL                             R2 1 1
       13 DUPTABLE                         R3 K8 [{"Enums", "Flags", "Types", "Utils"}]
       14 SETTABLEKS                       R1 R3 K4 ["Enums"]
       16 NEWTABLE                         R4 0 0
       18 SETTABLEKS                       R4 R3 K6 ["Flags"]
       20 SETTABLEKS                       R2 R3 K5 ["Types"]
       22 DUPTABLE                         R4 K17 [{"convertTableToCsv", "createAssetUrl", "deepCopy", "deepFreeze", "escapeRichText", "naturalCompare", "parseIsoToUnixMillis", "reportInBrowser"}]
       23 GETIMPORT                        R5 K3 [require]
       25 GETTABLEKS                       R6 R0 K7 ["Utils"]
       27 GETTABLEKS                       R6 R6 K9 ["convertTableToCsv"]
       29 CALL                             R5 1 1
       30 SETTABLEKS                       R5 R4 K9 ["convertTableToCsv"]
       32 GETIMPORT                        R5 K3 [require]
       34 GETTABLEKS                       R6 R0 K7 ["Utils"]
       36 GETTABLEKS                       R6 R6 K10 ["createAssetUrl"]
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K10 ["createAssetUrl"]
       41 GETIMPORT                        R5 K3 [require]
       43 GETTABLEKS                       R6 R0 K7 ["Utils"]
       45 GETTABLEKS                       R6 R6 K11 ["deepCopy"]
       47 CALL                             R5 1 1
       48 SETTABLEKS                       R5 R4 K11 ["deepCopy"]
       50 GETIMPORT                        R5 K3 [require]
       52 GETTABLEKS                       R6 R0 K7 ["Utils"]
       54 GETTABLEKS                       R6 R6 K12 ["deepFreeze"]
       56 CALL                             R5 1 1
       57 SETTABLEKS                       R5 R4 K12 ["deepFreeze"]
       59 GETIMPORT                        R5 K3 [require]
       61 GETTABLEKS                       R6 R0 K7 ["Utils"]
       63 GETTABLEKS                       R6 R6 K13 ["escapeRichText"]
       65 CALL                             R5 1 1
       66 SETTABLEKS                       R5 R4 K13 ["escapeRichText"]
       68 GETIMPORT                        R5 K3 [require]
       70 GETTABLEKS                       R6 R0 K7 ["Utils"]
       72 GETTABLEKS                       R6 R6 K14 ["naturalCompare"]
       74 CALL                             R5 1 1
       75 SETTABLEKS                       R5 R4 K14 ["naturalCompare"]
       77 GETIMPORT                        R5 K3 [require]
       79 GETTABLEKS                       R6 R0 K7 ["Utils"]
       81 GETTABLEKS                       R6 R6 K15 ["parseIsoToUnixMillis"]
       83 CALL                             R5 1 1
       84 SETTABLEKS                       R5 R4 K15 ["parseIsoToUnixMillis"]
       86 GETIMPORT                        R5 K3 [require]
       88 GETTABLEKS                       R6 R0 K7 ["Utils"]
       90 GETTABLEKS                       R6 R6 K16 ["reportInBrowser"]
       92 CALL                             R5 1 1
       93 SETTABLEKS                       R5 R4 K16 ["reportInBrowser"]
       95 SETTABLEKS                       R4 R3 K7 ["Utils"]
       97 RETURN                           R3 1
