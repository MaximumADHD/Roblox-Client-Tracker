PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["folder"]
        2 GETIMPORT                        R5 K3 [DateTime.fromIsoDate]
        4 GETTABLEKS                       R6 R4 K4 ["createTime"]
        6 CALL                             R5 1 1
        7 GETUPVAL                         R7 0
        8 CALL                             R7 0 1
        9 JUMPIFNOT                        R7 ; [+4]
       10 JUMPIFNOT                        R5 ; [+3]
       11 GETTABLEKS                       R6 R5 K5 ["UnixTimestampMillis"]
       13 JUMP                             ; [+1]
       14 LOADN                            R6 0
       15 GETIMPORT                        R7 K3 [DateTime.fromIsoDate]
       17 GETTABLEKS                       R8 R4 K6 ["updateTime"]
       19 CALL                             R7 1 1
       20 GETUPVAL                         R9 0
       21 CALL                             R9 0 1
       22 JUMPIFNOT                        R9 ; [+4]
       23 JUMPIFNOT                        R7 ; [+3]
       24 GETTABLEKS                       R8 R7 K5 ["UnixTimestampMillis"]
       26 JUMP                             ; [+1]
       27 LOADN                            R8 0
       28 DUPTABLE                         R9 K19 [{["AssetId"], ["AssetType"], ["DisplayName"], ["Created"], ["Modified"], ["ModerationStatus"], ["Creator"], ["Source"], ["Archived"] = False, ["SearchRank"], ["Path"]}]
       29 GETTABLEKS                       R10 R4 K20 ["folderId"]
       31 SETTABLEKS                       R10 R9 K7 ["AssetId"]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K8 ["AssetType"]
       36 GETTABLEKS                       R10 R10 K21 ["Folder"]
       38 SETTABLEKS                       R10 R9 K8 ["AssetType"]
       40 GETTABLEKS                       R10 R4 K22 ["displayName"]
       42 SETTABLEKS                       R10 R9 K9 ["DisplayName"]
       44 GETUPVAL                         R11 0
       45 CALL                             R11 0 1
       46 JUMPIFNOT                        R11 ; [+2]
       47 MOVE                             R10 R6
       48 JUMP                             ; [+2]
       49 GETTABLEKS                       R10 R4 K4 ["createTime"]
       51 SETTABLEKS                       R10 R9 K10 ["Created"]
       53 GETUPVAL                         R11 0
       54 CALL                             R11 0 1
       55 JUMPIFNOT                        R11 ; [+2]
       56 MOVE                             R10 R8
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R10 R4 K6 ["updateTime"]
       60 SETTABLEKS                       R10 R9 K11 ["Modified"]
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R10 R10 K12 ["ModerationStatus"]
       65 GETTABLEKS                       R10 R10 K23 ["Placeholder"]
       67 SETTABLEKS                       R10 R9 K12 ["ModerationStatus"]
       69 SETTABLEKS                       R1 R9 K13 ["Creator"]
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R10 R10 K24 ["AssetSource"]
       74 GETTABLEKS                       R10 R10 K25 ["Uploaded"]
       76 SETTABLEKS                       R10 R9 K14 ["Source"]
       78 SETTABLEKS                       R3 R9 K17 ["SearchRank"]
       80 SETTABLEKS                       R2 R9 K18 ["Path"]
       82 RETURN                           R9 1

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
       18 GETTABLEKS                       R3 R3 K8 ["Flags"]
       20 GETTABLEKS                       R3 R3 K9 ["getFFlagAmrOptimizeLoadingPerformance"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
