PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getUniverseScope"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 LOADK                            R3 K1 [""]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETTABLEKS                       R4 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R4 K3 ["name"]
       11 JUMP                             ; [+4]
       12 GETIMPORT                        R4 K5 [warn]
       14 LOADK                            R5 K6 ["fetchUniverseScopeAsync - request failed"]
       15 CALL                             R4 1 0
       16 DUPTABLE                         R4 K9 [{"id", "name", "type"}]
       17 SETTABLEKS                       R0 R4 K7 ["id"]
       19 SETTABLEKS                       R3 R4 K3 ["name"]
       21 LOADK                            R5 K10 ["Universe"]
       22 SETTABLEKS                       R5 R4 K8 ["type"]
       24 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getGroupScopes"]
        3 LOADK                            R1 K1 ["AssetPicker"]
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+7]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R3 K4 ["fetchGroupScopeListAsync - request failed"]
        9 CALL                             R2 1 0
       10 NEWTABLE                         R2 0 0
       12 RETURN                           R2 1
       13 NEWTABLE                         R2 0 0
       15 GETTABLEKS                       R6 R1 K5 ["responseBody"]
       17 GETTABLEKS                       R3 R6 K6 ["groups"]
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 GETUPVAL                         R8 1
       23 JUMPIFLT                         R8 R6 ; [+21]
       25 DUPTABLE                         R10 K10 [{"id", "name", "type"}]
       26 GETTABLEKS                       R11 R7 K7 ["id"]
       28 SETTABLEKS                       R11 R10 K7 ["id"]
       30 GETTABLEKS                       R11 R7 K8 ["name"]
       32 SETTABLEKS                       R11 R10 K8 ["name"]
       34 LOADK                            R11 K11 ["Group"]
       35 SETTABLEKS                       R11 R10 K9 ["type"]
       37 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       39 MOVE                             R9 R2
       40 GETIMPORT                        R8 K14 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R3 2 ; [-22]
       45 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getUserScope"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 LOADK                            R3 K1 [""]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETTABLEKS                       R4 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R4 K3 ["displayName"]
       11 JUMP                             ; [+4]
       12 GETIMPORT                        R4 K5 [warn]
       14 LOADK                            R5 K6 ["fetchUserScopeAsync - could not get user's display name"]
       15 CALL                             R4 1 0
       16 DUPTABLE                         R4 K10 [{"id", "name", "type"}]
       17 SETTABLEKS                       R0 R4 K7 ["id"]
       19 SETTABLEKS                       R3 R4 K8 ["name"]
       21 LOADK                            R5 K11 ["User"]
       22 SETTABLEKS                       R5 R4 K9 ["type"]
       24 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getUserScope"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 2
        5 LOADK                            R5 K1 [""]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETTABLEKS                       R6 R4 K2 ["responseBody"]
        9 GETTABLEKS                       R5 R6 K3 ["displayName"]
       11 JUMP                             ; [+4]
       12 GETIMPORT                        R6 K5 [warn]
       14 LOADK                            R7 K6 ["fetchUserScopeAsync - could not get user's display name"]
       15 CALL                             R6 1 0
       16 DUPTABLE                         R2 K10 [{"id", "name", "type"}]
       17 SETTABLEKS                       R0 R2 K7 ["id"]
       19 SETTABLEKS                       R5 R2 K8 ["name"]
       21 LOADK                            R6 K11 ["User"]
       22 SETTABLEKS                       R6 R2 K9 ["type"]
       24 NEWTABLE                         R3 1 0
       26 GETTABLEKS                       R4 R2 K7 ["id"]
       28 SETTABLE                         R2 R3 R4
       29 GETUPVAL                         R4 1
       30 CALL                             R4 0 1
       31 MOVE                             R5 R4
       32 LOADNIL                          R6
       33 LOADNIL                          R7
       34 FORGPREP                         R5
       35 GETTABLEKS                       R10 R9 K7 ["id"]
       37 SETTABLE                         R9 R3 R10
       38 FORGLOOP                         R5 2 ; [-4]
       40 JUMPIFEQKN                       R1 K12 [0] ; [+28]
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K13 ["getUniverseScope"]
       45 MOVE                             R7 R1
       46 CALL                             R6 1 2
       47 LOADK                            R8 K1 [""]
       48 JUMPIFNOT                        R6 ; [+5]
       49 GETTABLEKS                       R9 R7 K2 ["responseBody"]
       51 GETTABLEKS                       R8 R9 K8 ["name"]
       53 JUMP                             ; [+4]
       54 GETIMPORT                        R9 K5 [warn]
       56 LOADK                            R10 K14 ["fetchUniverseScopeAsync - request failed"]
       57 CALL                             R9 1 0
       58 DUPTABLE                         R5 K10 [{"id", "name", "type"}]
       59 SETTABLEKS                       R1 R5 K7 ["id"]
       61 SETTABLEKS                       R8 R5 K8 ["name"]
       63 LOADK                            R9 K15 ["Universe"]
       64 SETTABLEKS                       R9 R5 K9 ["type"]
       66 GETTABLEKS                       R6 R5 K7 ["id"]
       68 SETTABLE                         R5 R3 R6
       69 RETURN                           R3 1

PROTO_4:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 DUPTABLE                         R3 K2 [{"maxPageSize", "pageToken"}]
        3 GETUPVAL                         R4 0
        4 SETTABLEKS                       R4 R3 K0 ["maxPageSize"]
        6 GETTABLEKS                       R4 R0 K1 ["pageToken"]
        8 SETTABLEKS                       R4 R3 K1 ["pageToken"]
       10 GETTABLEKS                       R4 R0 K3 ["search"]
       12 JUMPIFNOTEQKS                    R4 K4 [""] ; [+54]
       14 GETTABLEKS                       R4 R0 K5 ["scopeType"]
       16 JUMPIFNOTEQKS                    R4 K6 ["Universe"] ; [+11]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K7 ["getUniverseAssetItems"]
       21 GETTABLEKS                       R5 R0 K8 ["scopeId"]
       23 MOVE                             R6 R3
       24 CALL                             R4 2 2
       25 MOVE                             R1 R4
       26 MOVE                             R2 R5
       27 JUMP                             ; [+64]
       28 GETTABLEKS                       R4 R0 K5 ["scopeType"]
       30 JUMPIFNOTEQKS                    R4 K9 ["User"] ; [+11]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R4 R5 K10 ["getUserAssetItems"]
       35 GETTABLEKS                       R5 R0 K8 ["scopeId"]
       37 MOVE                             R6 R3
       38 CALL                             R4 2 2
       39 MOVE                             R1 R4
       40 MOVE                             R2 R5
       41 JUMP                             ; [+50]
       42 GETTABLEKS                       R4 R0 K5 ["scopeType"]
       44 JUMPIFNOTEQKS                    R4 K11 ["Group"] ; [+11]
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R4 R5 K12 ["getGroupAssetItems"]
       49 GETTABLEKS                       R5 R0 K8 ["scopeId"]
       51 MOVE                             R6 R3
       52 CALL                             R4 2 2
       53 MOVE                             R1 R4
       54 MOVE                             R2 R5
       55 JUMP                             ; [+36]
       56 GETIMPORT                        R4 K14 [error]
       58 LOADK                            R6 K15 ["Unsupported scope type: %*"]
       59 GETTABLEKS                       R8 R0 K5 ["scopeType"]
       61 NAMECALL                         R6 R6 K16 ["format"]
       63 CALL                             R6 2 1
       64 MOVE                             R5 R6
       65 CALL                             R4 1 0
       66 JUMP                             ; [+25]
       67 DUPTABLE                         R4 K19 [{"Type", "Id"}]
       68 GETTABLEKS                       R5 R0 K5 ["scopeType"]
       70 SETTABLEKS                       R5 R4 K17 ["Type"]
       72 GETTABLEKS                       R5 R0 K8 ["scopeId"]
       74 SETTABLEKS                       R5 R4 K18 ["Id"]
       76 GETUPVAL                         R6 1
       77 GETTABLEKS                       R5 R6 K20 ["searchAssetItems"]
       79 GETTABLEKS                       R6 R0 K3 ["search"]
       81 GETTABLEKS                       R8 R0 K21 ["assetType"]
       83 GETTABLEKS                       R7 R8 K22 ["Name"]
       85 MOVE                             R8 R4
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R10 R0 K1 ["pageToken"]
       89 CALL                             R5 5 2
       90 MOVE                             R1 R5
       91 MOVE                             R2 R6
       92 GETTABLEKS                       R4 R2 K23 ["responseBody"]
       94 JUMPIFNOT                        R1 ; [+9]
       95 GETUPVAL                         R5 2
       96 GETTABLEKS                       R6 R4 K24 ["items"]
       98 GETTABLEKS                       R7 R0 K21 ["assetType"]
      100 CALL                             R5 2 1
      101 GETTABLEKS                       R6 R4 K25 ["nextPageToken"]
      103 RETURN                           R5 2
      104 GETIMPORT                        R5 K27 [warn]
      106 LOADK                            R7 K28 ["fetchAssetsByScopeAsync - asset fetch request failed for scope type %*"]
      107 GETTABLEKS                       R9 R0 K5 ["scopeType"]
      109 NAMECALL                         R7 R7 K16 ["format"]
      111 CALL                             R7 2 1
      112 MOVE                             R6 R7
      113 CALL                             R5 1 0
      114 NEWTABLE                         R5 0 0
      116 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getAssetProductInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [Enum.AssetType]
        7 GETTABLEKS                       R4 R1 K4 ["AssetTypeId"]
        9 NAMECALL                         R2 R2 K5 ["FromValue"]
       11 CALL                             R2 2 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 LOADK                            R6 K6 ["fetchAssetByIdAsync: couldn't get asset type for assetId %*"]
       17 MOVE                             R8 R0
       18 NAMECALL                         R6 R6 K7 ["format"]
       20 CALL                             R6 2 1
       21 MOVE                             R5 R6
       22 FASTCALL2                        ASSERT R4 R5 ; [+3]
       24 GETIMPORT                        R3 K9 [assert]
       26 CALL                             R3 2 0
       27 GETTABLEKS                       R3 R1 K10 ["Creator"]
       29 DUPTABLE                         R4 K18 [{"assetId", "assetType", "createTime", "creationContext", "description", "displayName", "updateTime"}]
       30 GETTABLEKS                       R5 R1 K19 ["AssetId"]
       32 SETTABLEKS                       R5 R4 K11 ["assetId"]
       34 GETUPVAL                         R5 1
       35 MOVE                             R6 R2
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K12 ["assetType"]
       39 GETTABLEKS                       R5 R1 K20 ["Created"]
       41 SETTABLEKS                       R5 R4 K13 ["createTime"]
       43 DUPTABLE                         R5 K22 [{"creator"}]
       44 DUPTABLE                         R6 K25 [{"name", "userId"}]
       45 GETTABLEKS                       R7 R3 K26 ["Name"]
       47 SETTABLEKS                       R7 R6 K23 ["name"]
       49 GETTABLEKS                       R7 R3 K27 ["Id"]
       51 SETTABLEKS                       R7 R6 K24 ["userId"]
       53 SETTABLEKS                       R6 R5 K21 ["creator"]
       55 SETTABLEKS                       R5 R4 K14 ["creationContext"]
       57 GETTABLEKS                       R5 R1 K28 ["Description"]
       59 SETTABLEKS                       R5 R4 K15 ["description"]
       61 GETTABLEKS                       R5 R1 K26 ["Name"]
       63 SETTABLEKS                       R5 R4 K16 ["displayName"]
       65 GETTABLEKS                       R5 R1 K29 ["Updated"]
       67 SETTABLEKS                       R5 R4 K17 ["updateTime"]
       69 RETURN                           R4 1

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 NEWCLOSURE                       R2 P1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 NEWCLOSURE                       R3 P2
        6 CAPTURE                          VAL R0
        7 NEWCLOSURE                       R4 P3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 NEWCLOSURE                       R5 P4
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 NEWCLOSURE                       R6 P5
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 DUPTABLE                         R7 K3 [{"fetchScopesAsync", "fetchAssetsByScopeAsync", "fetchAssetByIdAsync"}]
       18 SETTABLEKS                       R4 R7 K0 ["fetchScopesAsync"]
       20 SETTABLEKS                       R5 R7 K1 ["fetchAssetsByScopeAsync"]
       22 SETTABLEKS                       R6 R7 K2 ["fetchAssetByIdAsync"]
       24 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R4 K8 ["convertEnumToAssetTypeString"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Networking"]
       23 GETTABLEKS                       R4 R5 K10 ["getFilteredAssets"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K12 [game]
       28 LOADK                            R6 K13 ["AssetPickerMaxPageSize"]
       29 LOADN                            R7 238
       30 NAMECALL                         R4 R4 K14 ["DefineFastInt"]
       32 CALL                             R4 3 1
       33 GETIMPORT                        R5 K12 [game]
       35 LOADK                            R7 K15 ["AssetPickerMaxGroupCount"]
       36 LOADN                            R8 5
       37 NAMECALL                         R5 R5 K14 ["DefineFastInt"]
       39 CALL                             R5 3 1
       40 DUPCLOSURE                       R6 K16 [PROTO_6]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 RETURN                           R6 1
