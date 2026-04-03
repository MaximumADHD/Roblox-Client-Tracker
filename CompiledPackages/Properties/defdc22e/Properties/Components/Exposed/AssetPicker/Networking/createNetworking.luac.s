PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["requestUniverseNameAsync"]
        3 DUPTABLE                         R2 K2 [{"gameId"}]
        4 SETTABLEKS                       R0 R2 K1 ["gameId"]
        6 CALL                             R1 1 2
        7 LOADK                            R3 K3 [""]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETTABLEKS                       R4 R2 K4 ["responseBody"]
       11 GETTABLEKS                       R3 R4 K5 ["name"]
       13 JUMP                             ; [+4]
       14 GETIMPORT                        R4 K7 [warn]
       16 LOADK                            R5 K8 ["fetchUniverseScopeAsync: request failed"]
       17 CALL                             R4 1 0
       18 DUPTABLE                         R4 K12 [{"id", "name", "type", "uniqueId"}]
       19 SETTABLEKS                       R0 R4 K9 ["id"]
       21 SETTABLEKS                       R3 R4 K5 ["name"]
       23 LOADK                            R5 K13 ["Universe"]
       24 SETTABLEKS                       R5 R4 K10 ["type"]
       26 GETUPVAL                         R5 1
       27 LOADK                            R6 K13 ["Universe"]
       28 MOVE                             R7 R0
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K11 ["uniqueId"]
       32 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["requestGroupsAsync"]
        3 DUPTABLE                         R1 K2 [{"source"}]
        4 LOADK                            R2 K3 ["AssetPicker"]
        5 SETTABLEKS                       R2 R1 K1 ["source"]
        7 CALL                             R0 1 2
        8 JUMPIF                           R0 ; [+7]
        9 GETIMPORT                        R2 K5 [warn]
       11 LOADK                            R3 K6 ["fetchGroupScopeListAsync: request failed"]
       12 CALL                             R2 1 0
       13 NEWTABLE                         R2 0 0
       15 RETURN                           R2 1
       16 NEWTABLE                         R2 0 0
       18 GETTABLEKS                       R6 R1 K7 ["responseBody"]
       20 GETTABLEKS                       R3 R6 K8 ["groups"]
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 GETUPVAL                         R8 1
       26 JUMPIFLT                         R8 R6 ; [+28]
       28 DUPTABLE                         R10 K13 [{"id", "name", "type", "uniqueId"}]
       29 GETTABLEKS                       R11 R7 K9 ["id"]
       31 SETTABLEKS                       R11 R10 K9 ["id"]
       33 GETTABLEKS                       R11 R7 K10 ["name"]
       35 SETTABLEKS                       R11 R10 K10 ["name"]
       37 LOADK                            R11 K14 ["Group"]
       38 SETTABLEKS                       R11 R10 K11 ["type"]
       40 GETUPVAL                         R11 2
       41 LOADK                            R12 K14 ["Group"]
       42 GETTABLEKS                       R13 R7 K9 ["id"]
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K12 ["uniqueId"]
       47 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       49 MOVE                             R9 R2
       50 GETIMPORT                        R8 K17 [table.insert]
       52 CALL                             R8 2 0
       53 FORGLOOP                         R3 2 ; [-29]
       55 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["requestUserDisplayNameAsync"]
        3 DUPTABLE                         R2 K2 [{"userId"}]
        4 SETTABLEKS                       R0 R2 K1 ["userId"]
        6 CALL                             R1 1 2
        7 LOADK                            R3 K3 [""]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETTABLEKS                       R4 R2 K4 ["responseBody"]
       11 GETTABLEKS                       R3 R4 K5 ["displayName"]
       13 JUMP                             ; [+11]
       14 GETIMPORT                        R4 K7 [warn]
       16 LOADK                            R5 K8 ["fetchUserScopeAsync: could not get user's display name"]
       17 CALL                             R4 1 0
       18 GETUPVAL                         R4 1
       19 LOADK                            R6 K9 ["DisplayName"]
       20 LOADK                            R7 K10 ["User"]
       21 NAMECALL                         R4 R4 K11 ["getText"]
       23 CALL                             R4 3 1
       24 MOVE                             R3 R4
       25 DUPTABLE                         R4 K16 [{"id", "name", "type", "uniqueId"}]
       26 SETTABLEKS                       R0 R4 K12 ["id"]
       28 SETTABLEKS                       R3 R4 K13 ["name"]
       30 LOADK                            R5 K10 ["User"]
       31 SETTABLEKS                       R5 R4 K14 ["type"]
       33 GETUPVAL                         R5 2
       34 LOADK                            R6 K10 ["User"]
       35 MOVE                             R7 R0
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K15 ["uniqueId"]
       39 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["userId"]
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 1 0
        6 GETTABLEKS                       R3 R1 K1 ["uniqueId"]
        8 SETTABLE                         R1 R2 R3
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K1 ["uniqueId"]
       17 SETTABLE                         R8 R2 R9
       18 FORGLOOP                         R4 2 ; [-4]
       20 GETTABLEKS                       R4 R0 K2 ["gameId"]
       22 JUMPIFEQKN                       R4 K3 [0] ; [+8]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R5 R0 K2 ["gameId"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K1 ["uniqueId"]
       30 SETTABLE                         R4 R2 R5
       31 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["pageToken"]
        4 DUPTABLE                         R3 K3 [{"Id", "Type"}]
        5 GETTABLEKS                       R4 R0 K4 ["scopeId"]
        7 SETTABLEKS                       R4 R3 K1 ["Id"]
        9 GETTABLEKS                       R4 R0 K5 ["scopeType"]
       11 SETTABLEKS                       R4 R3 K2 ["Type"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K6 ["requestAssetItemsAsync"]
       16 DUPTABLE                         R5 K11 [{"query", "assetType", "scopeParams", "maxPageSize", "pageToken"}]
       17 GETTABLEKS                       R6 R0 K12 ["search"]
       19 SETTABLEKS                       R6 R5 K7 ["query"]
       21 LOADK                            R6 K13 ["Animation"]
       22 SETTABLEKS                       R6 R5 K8 ["assetType"]
       24 SETTABLEKS                       R3 R5 K9 ["scopeParams"]
       26 GETUPVAL                         R6 1
       27 SETTABLEKS                       R6 R5 K10 ["maxPageSize"]
       29 SETTABLEKS                       R2 R5 K0 ["pageToken"]
       31 CALL                             R4 1 2
       32 JUMPIF                           R4 ; [+14]
       33 GETIMPORT                        R6 K15 [warn]
       35 LOADK                            R8 K16 ["fetchAssetsByScopeAsync: asset fetch request failed for assetType %* "]
       36 GETTABLEKS                       R10 R0 K8 ["assetType"]
       38 NAMECALL                         R8 R8 K17 ["format"]
       40 CALL                             R8 2 1
       41 MOVE                             R7 R8
       42 CALL                             R6 1 0
       43 NEWTABLE                         R6 0 0
       45 LOADNIL                          R7
       46 RETURN                           R6 2
       47 GETUPVAL                         R6 2
       48 DUPTABLE                         R7 K20 [{"assetType", "source", "target"}]
       49 GETTABLEKS                       R8 R0 K8 ["assetType"]
       51 SETTABLEKS                       R8 R7 K8 ["assetType"]
       53 GETTABLEKS                       R9 R5 K21 ["responseBody"]
       55 GETTABLEKS                       R8 R9 K22 ["items"]
       57 SETTABLEKS                       R8 R7 K18 ["source"]
       59 SETTABLEKS                       R1 R7 K19 ["target"]
       61 CALL                             R6 1 0
       62 GETTABLEKS                       R6 R5 K21 ["responseBody"]
       64 GETTABLEKS                       R2 R6 K23 ["nextPageToken"]
       66 LENGTH                           R6 R1
       67 GETUPVAL                         R7 3
       68 JUMPIFLE                         R7 R6 ; [+7]
       70 JUMPIFEQKNIL                     R2 ; [+5]
       72 GETUPVAL                         R6 4
       73 CALL                             R6 0 1
       74 JUMPIF                           R6 ; [+1]
       75 JUMPBACK                         ; [-63]
       76 RETURN                           R1 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+29]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K0 ["assetType"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+24]
        8 GETUPVAL                         R1 2
        9 DUPTABLE                         R2 K5 [{"assetType", "scopeId", "scopeType", "search", "pageToken"}]
       10 GETTABLEKS                       R3 R0 K0 ["assetType"]
       12 SETTABLEKS                       R3 R2 K0 ["assetType"]
       14 GETTABLEKS                       R3 R0 K1 ["scopeId"]
       16 SETTABLEKS                       R3 R2 K1 ["scopeId"]
       18 GETTABLEKS                       R3 R0 K2 ["scopeType"]
       20 SETTABLEKS                       R3 R2 K2 ["scopeType"]
       22 GETTABLEKS                       R3 R0 K3 ["search"]
       24 SETTABLEKS                       R3 R2 K3 ["search"]
       26 GETTABLEKS                       R3 R0 K4 ["pageToken"]
       28 SETTABLEKS                       R3 R2 K4 ["pageToken"]
       30 CALL                             R1 1 -1
       31 RETURN                           R1 -1
       32 DUPTABLE                         R1 K8 [{"Id", "Type"}]
       33 GETTABLEKS                       R2 R0 K1 ["scopeId"]
       35 SETTABLEKS                       R2 R1 K6 ["Id"]
       37 GETTABLEKS                       R2 R0 K2 ["scopeType"]
       39 SETTABLEKS                       R2 R1 K7 ["Type"]
       41 GETUPVAL                         R3 3
       42 GETTABLEKS                       R2 R3 K9 ["requestAssetItemsAsync"]
       44 DUPTABLE                         R3 K13 [{"query", "assetType", "scopeParams", "maxPageSize", "pageToken"}]
       45 GETTABLEKS                       R4 R0 K3 ["search"]
       47 SETTABLEKS                       R4 R3 K10 ["query"]
       49 GETTABLEKS                       R4 R0 K0 ["assetType"]
       51 SETTABLEKS                       R4 R3 K0 ["assetType"]
       53 SETTABLEKS                       R1 R3 K11 ["scopeParams"]
       55 GETUPVAL                         R4 4
       56 SETTABLEKS                       R4 R3 K12 ["maxPageSize"]
       58 GETTABLEKS                       R4 R0 K4 ["pageToken"]
       60 SETTABLEKS                       R4 R3 K4 ["pageToken"]
       62 CALL                             R2 1 2
       63 GETTABLEKS                       R4 R3 K14 ["responseBody"]
       65 JUMPIFNOT                        R2 ; [+5]
       66 GETTABLEKS                       R5 R4 K15 ["items"]
       68 GETTABLEKS                       R6 R4 K16 ["nextPageToken"]
       70 RETURN                           R5 2
       71 GETIMPORT                        R5 K18 [warn]
       73 LOADK                            R7 K19 ["fetchAssetsByScopeAsync: asset fetch request failed for scopeType %*"]
       74 GETTABLEKS                       R9 R0 K2 ["scopeType"]
       76 NAMECALL                         R7 R7 K20 ["format"]
       78 CALL                             R7 2 1
       79 MOVE                             R6 R7
       80 CALL                             R5 1 0
       81 NEWTABLE                         R5 0 0
       83 LOADNIL                          R6
       84 RETURN                           R5 2

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getAssetProductInfoAsync"]
        3 DUPTABLE                         R2 K2 [{"assetId"}]
        4 GETTABLEKS                       R3 R0 K1 ["assetId"]
        6 SETTABLEKS                       R3 R2 K1 ["assetId"]
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K5 [Enum.AssetType]
       11 GETTABLEKS                       R4 R1 K6 ["AssetTypeId"]
       13 NAMECALL                         R2 R2 K7 ["FromValue"]
       15 CALL                             R2 2 1
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 LOADK                            R6 K8 ["fetchAssetByIdAsync: couldn't get asset type for assetId %*"]
       21 GETTABLEKS                       R8 R0 K1 ["assetId"]
       23 NAMECALL                         R6 R6 K9 ["format"]
       25 CALL                             R6 2 1
       26 MOVE                             R5 R6
       27 FASTCALL2                        ASSERT R4 R5 ; [+3]
       29 GETIMPORT                        R3 K11 [assert]
       31 CALL                             R3 2 0
       32 GETTABLEKS                       R3 R1 K12 ["Creator"]
       34 DUPTABLE                         R4 K19 [{"assetId", "assetType", "createTime", "creationContext", "description", "displayName", "updateTime"}]
       35 GETTABLEKS                       R5 R1 K20 ["AssetId"]
       37 SETTABLEKS                       R5 R4 K1 ["assetId"]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R6 R2 K21 ["Name"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K13 ["assetType"]
       45 GETTABLEKS                       R5 R1 K22 ["Created"]
       47 SETTABLEKS                       R5 R4 K14 ["createTime"]
       49 DUPTABLE                         R5 K24 [{"creator"}]
       50 DUPTABLE                         R6 K27 [{"name", "userId"}]
       51 GETTABLEKS                       R7 R3 K21 ["Name"]
       53 SETTABLEKS                       R7 R6 K25 ["name"]
       55 GETTABLEKS                       R7 R3 K28 ["Id"]
       57 SETTABLEKS                       R7 R6 K26 ["userId"]
       59 SETTABLEKS                       R6 R5 K23 ["creator"]
       61 SETTABLEKS                       R5 R4 K15 ["creationContext"]
       63 GETTABLEKS                       R5 R1 K29 ["Description"]
       65 SETTABLEKS                       R5 R4 K16 ["description"]
       67 GETTABLEKS                       R5 R1 K21 ["Name"]
       69 SETTABLEKS                       R5 R4 K17 ["displayName"]
       71 GETTABLEKS                       R5 R1 K30 ["Updated"]
       73 SETTABLEKS                       R5 R4 K18 ["updateTime"]
       75 RETURN                           R4 1

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 NEWCLOSURE                       R3 P2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 NEWCLOSURE                       R4 P3
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 NEWCLOSURE                       R5 P4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 NEWCLOSURE                       R6 P5
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U3
       27 NEWCLOSURE                       R7 P6
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U9
       30 DUPTABLE                         R8 K3 [{"fetchScopesAsync", "fetchAssetsByScopeAsync", "fetchAssetByIdAsync"}]
       31 SETTABLEKS                       R4 R8 K0 ["fetchScopesAsync"]
       33 SETTABLEKS                       R6 R8 K1 ["fetchAssetsByScopeAsync"]
       35 SETTABLEKS                       R7 R8 K2 ["fetchAssetByIdAsync"]
       37 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Resources"]
       11 GETTABLEKS                       R3 R4 K7 ["Localization"]
       13 GETTABLEKS                       R2 R3 K8 ["Translator"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Networking"]
       25 GETTABLEKS                       R5 R6 K11 ["Util"]
       27 GETTABLEKS                       R4 R5 K12 ["appendByAnimationAssetType"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Util"]
       34 GETTABLEKS                       R5 R6 K13 ["createScopeUniqueId"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Flags"]
       41 GETTABLEKS                       R6 R7 K15 ["getFFlagAssetPickerAnimationSubType"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K14 ["Flags"]
       48 GETTABLEKS                       R7 R8 K16 ["getFFlagAssetPickerDisableAnimationFetchLoop"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K11 ["Util"]
       55 GETTABLEKS                       R8 R9 K17 ["isAnimationAssetType"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K11 ["Util"]
       62 GETTABLEKS                       R9 R10 K18 ["toInternalAssetType"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K20 [game]
       67 LOADK                            R11 K21 ["AssetPickerMaxPageSize"]
       68 LOADN                            R12 238
       69 NAMECALL                         R9 R9 K22 ["DefineFastInt"]
       71 CALL                             R9 3 1
       72 GETIMPORT                        R10 K20 [game]
       74 LOADK                            R12 K23 ["AssetPickerMaxGroupCount"]
       75 LOADN                            R13 5
       76 NAMECALL                         R10 R10 K22 ["DefineFastInt"]
       78 CALL                             R10 3 1
       79 GETIMPORT                        R11 K20 [game]
       81 LOADK                            R13 K24 ["AssetPickerMinAnimationPageSize"]
       82 LOADN                            R14 20
       83 NAMECALL                         R11 R11 K22 ["DefineFastInt"]
       85 CALL                             R11 3 1
       86 DUPCLOSURE                       R12 K25 [PROTO_7]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 RETURN                           R12 1
