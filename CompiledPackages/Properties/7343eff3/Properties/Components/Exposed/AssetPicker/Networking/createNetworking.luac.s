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
        0 DUPTABLE                         R1 K2 [{"Id", "Type"}]
        1 GETTABLEKS                       R2 R0 K3 ["scopeId"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETTABLEKS                       R2 R0 K4 ["scopeType"]
        7 SETTABLEKS                       R2 R1 K1 ["Type"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K5 ["requestAssetItemsAsync"]
       12 DUPTABLE                         R3 K11 [{"query", "assetType", "scopeParams", "maxPageSize", "pageToken"}]
       13 GETTABLEKS                       R4 R0 K12 ["search"]
       15 SETTABLEKS                       R4 R3 K6 ["query"]
       17 GETTABLEKS                       R4 R0 K7 ["assetType"]
       19 SETTABLEKS                       R4 R3 K7 ["assetType"]
       21 SETTABLEKS                       R1 R3 K8 ["scopeParams"]
       23 GETUPVAL                         R4 1
       24 SETTABLEKS                       R4 R3 K9 ["maxPageSize"]
       26 GETTABLEKS                       R4 R0 K10 ["pageToken"]
       28 SETTABLEKS                       R4 R3 K10 ["pageToken"]
       30 CALL                             R2 1 2
       31 GETTABLEKS                       R4 R3 K13 ["responseBody"]
       33 JUMPIFNOT                        R2 ; [+5]
       34 GETTABLEKS                       R5 R4 K14 ["items"]
       36 GETTABLEKS                       R6 R4 K15 ["nextPageToken"]
       38 RETURN                           R5 2
       39 GETIMPORT                        R5 K17 [warn]
       41 LOADK                            R7 K18 ["fetchAssetsByScopeAsync: asset fetch request failed for scope type %*"]
       42 GETTABLEKS                       R9 R0 K4 ["scopeType"]
       44 NAMECALL                         R7 R7 K19 ["format"]
       46 CALL                             R7 2 1
       47 MOVE                             R6 R7
       48 CALL                             R5 1 0
       49 NEWTABLE                         R5 0 0
       51 RETURN                           R5 1

PROTO_5:
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
       40 MOVE                             R6 R2
       41 CALL                             R5 1 1
       42 SETTABLEKS                       R5 R4 K13 ["assetType"]
       44 GETTABLEKS                       R5 R1 K21 ["Created"]
       46 SETTABLEKS                       R5 R4 K14 ["createTime"]
       48 DUPTABLE                         R5 K23 [{"creator"}]
       49 DUPTABLE                         R6 K26 [{"name", "userId"}]
       50 GETTABLEKS                       R7 R3 K27 ["Name"]
       52 SETTABLEKS                       R7 R6 K24 ["name"]
       54 GETTABLEKS                       R7 R3 K28 ["Id"]
       56 SETTABLEKS                       R7 R6 K25 ["userId"]
       58 SETTABLEKS                       R6 R5 K22 ["creator"]
       60 SETTABLEKS                       R5 R4 K15 ["creationContext"]
       62 GETTABLEKS                       R5 R1 K29 ["Description"]
       64 SETTABLEKS                       R5 R4 K16 ["description"]
       66 GETTABLEKS                       R5 R1 K27 ["Name"]
       68 SETTABLEKS                       R5 R4 K17 ["displayName"]
       70 GETTABLEKS                       R5 R1 K30 ["Updated"]
       72 SETTABLEKS                       R5 R4 K18 ["updateTime"]
       74 RETURN                           R4 1

PROTO_6:
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
       18 NEWCLOSURE                       R6 P5
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U4
       21 DUPTABLE                         R7 K3 [{"fetchScopesAsync", "fetchAssetsByScopeAsync", "fetchAssetByIdAsync"}]
       22 SETTABLEKS                       R4 R7 K0 ["fetchScopesAsync"]
       24 SETTABLEKS                       R5 R7 K1 ["fetchAssetsByScopeAsync"]
       26 SETTABLEKS                       R6 R7 K2 ["fetchAssetByIdAsync"]
       28 RETURN                           R7 1

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
       23 GETTABLEKS                       R5 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["convertEnumToAssetTypeString"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R6 K12 ["createScopeUniqueId"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K14 [game]
       37 LOADK                            R7 K15 ["AssetPickerMaxPageSize"]
       38 LOADN                            R8 238
       39 NAMECALL                         R5 R5 K16 ["DefineFastInt"]
       41 CALL                             R5 3 1
       42 GETIMPORT                        R6 K14 [game]
       44 LOADK                            R8 K17 ["AssetPickerMaxGroupCount"]
       45 LOADN                            R9 5
       46 NAMECALL                         R6 R6 K16 ["DefineFastInt"]
       48 CALL                             R6 3 1
       49 DUPCLOSURE                       R7 K18 [PROTO_6]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 RETURN                           R7 1
