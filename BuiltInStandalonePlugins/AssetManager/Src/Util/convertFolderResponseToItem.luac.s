PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["folder"]
        2 GETIMPORT                        R5 K3 [DateTime.fromIsoDate]
        4 GETTABLEKS                       R6 R4 K4 ["createTime"]
        6 CALL                             R5 1 1
        7 JUMPIFNOT                        R5 ; [+3]
        8 GETTABLEKS                       R6 R5 K5 ["UnixTimestampMillis"]
       10 JUMP                             ; [+1]
       11 LOADN                            R6 0
       12 GETIMPORT                        R7 K3 [DateTime.fromIsoDate]
       14 GETTABLEKS                       R8 R4 K6 ["updateTime"]
       16 CALL                             R7 1 1
       17 JUMPIFNOT                        R7 ; [+3]
       18 GETTABLEKS                       R8 R7 K5 ["UnixTimestampMillis"]
       20 JUMP                             ; [+1]
       21 LOADN                            R8 0
       22 DUPTABLE                         R9 K19 [{["AssetId"], ["AssetType"], ["DisplayName"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False, ["SearchRank"], ["Path"]}]
       23 GETTABLEKS                       R10 R4 K20 ["folderId"]
       25 SETTABLEKS                       R10 R9 K7 ["AssetId"]
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K8 ["AssetType"]
       30 GETTABLEKS                       R10 R10 K21 ["Folder"]
       32 SETTABLEKS                       R10 R9 K8 ["AssetType"]
       34 GETTABLEKS                       R10 R4 K22 ["displayName"]
       36 SETTABLEKS                       R10 R9 K9 ["DisplayName"]
       38 SETTABLEKS                       R6 R9 K10 ["Created"]
       40 SETTABLEKS                       R8 R9 K11 ["Modified"]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K12 ["ModerationStatus"]
       45 GETTABLEKS                       R10 R10 K23 ["Placeholder"]
       47 SETTABLEKS                       R10 R9 K12 ["ModerationStatus"]
       49 SETTABLEKS                       R1 R9 K13 ["Creator"]
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K24 ["AssetSource"]
       54 GETTABLEKS                       R10 R10 K25 ["Uploaded"]
       56 SETTABLEKS                       R10 R9 K14 ["Source"]
       58 SETTABLEKS                       R3 R9 K17 ["SearchRank"]
       60 SETTABLEKS                       R2 R9 K18 ["Path"]
       62 RETURN                           R9 1

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
