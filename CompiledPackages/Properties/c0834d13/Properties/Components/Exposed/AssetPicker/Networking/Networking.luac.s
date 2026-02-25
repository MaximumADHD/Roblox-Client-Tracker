PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Develop"]
        3 GETTABLEKS                       R3 R4 K1 ["V1"]
        5 GETTABLEKS                       R2 R3 K2 ["Universes"]
        7 GETTABLEKS                       R1 R2 K3 ["get"]
        9 MOVE                             R2 R1
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 NAMECALL                         R2 R2 K4 ["makeRequest"]
       14 CALL                             R2 1 1
       15 NAMECALL                         R2 R2 K5 ["await"]
       17 CALL                             R2 1 2
       18 LOADK                            R4 K6 [""]
       19 JUMPIFNOT                        R2 ; [+5]
       20 GETTABLEKS                       R5 R3 K7 ["responseBody"]
       22 GETTABLEKS                       R4 R5 K8 ["name"]
       24 JUMP                             ; [+4]
       25 GETIMPORT                        R5 K10 [warn]
       27 LOADK                            R6 K11 ["fetchUniverseScopeAsync - request failed"]
       28 CALL                             R5 1 0
       29 DUPTABLE                         R5 K14 [{"id", "name", "type"}]
       30 SETTABLEKS                       R0 R5 K12 ["id"]
       32 SETTABLEKS                       R4 R5 K8 ["name"]
       34 LOADK                            R6 K15 ["Universe"]
       35 SETTABLEKS                       R6 R5 K13 ["type"]
       37 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["APIS"]
        3 GETTABLEKS                       R2 R3 K1 ["CreatorHomeApi"]
        5 GETTABLEKS                       R1 R2 K2 ["V1"]
        7 GETTABLEKS                       R0 R1 K3 ["groups"]
        9 MOVE                             R1 R0
       10 LOADK                            R2 K4 ["AssetPicker"]
       11 CALL                             R1 1 1
       12 NAMECALL                         R1 R1 K5 ["makeRequest"]
       14 CALL                             R1 1 1
       15 NAMECALL                         R1 R1 K6 ["await"]
       17 CALL                             R1 1 2
       18 JUMPIF                           R1 ; [+7]
       19 GETIMPORT                        R3 K8 [warn]
       21 LOADK                            R4 K9 ["fetchGroupScopeListAsync - request failed"]
       22 CALL                             R3 1 0
       23 NEWTABLE                         R3 0 0
       25 RETURN                           R3 1
       26 NEWTABLE                         R3 0 0
       28 GETTABLEKS                       R7 R2 K10 ["responseBody"]
       30 GETTABLEKS                       R4 R7 K3 ["groups"]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETUPVAL                         R9 1
       36 JUMPIFLT                         R9 R7 ; [+21]
       38 DUPTABLE                         R11 K14 [{"id", "name", "type"}]
       39 GETTABLEKS                       R12 R8 K11 ["id"]
       41 SETTABLEKS                       R12 R11 K11 ["id"]
       43 GETTABLEKS                       R12 R8 K12 ["name"]
       45 SETTABLEKS                       R12 R11 K12 ["name"]
       47 LOADK                            R12 K15 ["Group"]
       48 SETTABLEKS                       R12 R11 K13 ["type"]
       50 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       52 MOVE                             R10 R3
       53 GETIMPORT                        R9 K18 [table.insert]
       55 CALL                             R9 2 0
       56 FORGLOOP                         R4 2 ; [-22]
       58 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetUserInfosByUserIdsAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 LOADK                            R3 K2 [""]
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETTABLEN                        R4 R2 1
        9 GETTABLEKS                       R3 R4 K3 ["DisplayName"]
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

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 2
        7 CALL                             R4 0 1
        8 NEWTABLE                         R5 2 0
       10 GETTABLEKS                       R6 R2 K0 ["id"]
       12 SETTABLE                         R2 R5 R6
       13 GETTABLEKS                       R6 R3 K0 ["id"]
       15 SETTABLE                         R3 R5 R6
       16 MOVE                             R6 R4
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 FORGPREP                         R6
       20 GETTABLEKS                       R11 R10 K0 ["id"]
       22 SETTABLE                         R10 R5 R11
       23 FORGLOOP                         R6 2 ; [-4]
       25 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["API"]
        3 GETTABLEKS                       R1 R2 K1 ["CreatorInventory"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 GETTABLEKS                       R4 R0 K2 ["search"]
        9 JUMPIFNOTEQKS                    R4 K3 [""] ; [+55]
       11 LOADNIL                          R4
       12 GETTABLEKS                       R5 R0 K4 ["scopeType"]
       14 JUMPIFNOTEQKS                    R5 K5 ["Universe"] ; [+4]
       16 GETTABLEKS                       R4 R1 K6 ["universeItems"]
       18 JUMP                             ; [+24]
       19 GETTABLEKS                       R5 R0 K4 ["scopeType"]
       21 JUMPIFNOTEQKS                    R5 K7 ["User"] ; [+4]
       23 GETTABLEKS                       R4 R1 K8 ["userItems"]
       25 JUMP                             ; [+17]
       26 GETTABLEKS                       R5 R0 K4 ["scopeType"]
       28 JUMPIFNOTEQKS                    R5 K9 ["Group"] ; [+4]
       30 GETTABLEKS                       R4 R1 K10 ["groupItems"]
       32 JUMP                             ; [+10]
       33 GETIMPORT                        R5 K12 [error]
       35 LOADK                            R7 K13 ["Unsupported scope type: %*"]
       36 GETTABLEKS                       R9 R0 K4 ["scopeType"]
       38 NAMECALL                         R7 R7 K14 ["format"]
       40 CALL                             R7 2 1
       41 MOVE                             R6 R7
       42 CALL                             R5 1 0
       43 DUPTABLE                         R5 K17 [{"maxPageSize", "pageToken"}]
       44 GETUPVAL                         R6 1
       45 SETTABLEKS                       R6 R5 K15 ["maxPageSize"]
       47 GETTABLEKS                       R6 R0 K16 ["pageToken"]
       49 SETTABLEKS                       R6 R5 K16 ["pageToken"]
       51 MOVE                             R6 R4
       52 GETTABLEKS                       R7 R0 K18 ["scopeId"]
       54 MOVE                             R8 R5
       55 CALL                             R6 2 1
       56 NAMECALL                         R6 R6 K19 ["makeRequest"]
       58 CALL                             R6 1 1
       59 NAMECALL                         R6 R6 K20 ["await"]
       61 CALL                             R6 1 2
       62 MOVE                             R2 R6
       63 MOVE                             R3 R7
       64 JUMP                             ; [+27]
       65 DUPTABLE                         R4 K23 [{"Type", "Id"}]
       66 GETTABLEKS                       R5 R0 K4 ["scopeType"]
       68 SETTABLEKS                       R5 R4 K21 ["Type"]
       70 GETTABLEKS                       R5 R0 K18 ["scopeId"]
       72 SETTABLEKS                       R5 R4 K22 ["Id"]
       74 GETTABLEKS                       R5 R1 K2 ["search"]
       76 GETTABLEKS                       R6 R0 K2 ["search"]
       78 LOADK                            R7 K24 ["Image"]
       79 MOVE                             R8 R4
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R10 R0 K16 ["pageToken"]
       83 CALL                             R5 5 1
       84 NAMECALL                         R5 R5 K19 ["makeRequest"]
       86 CALL                             R5 1 1
       87 NAMECALL                         R5 R5 K20 ["await"]
       89 CALL                             R5 1 2
       90 MOVE                             R2 R5
       91 MOVE                             R3 R6
       92 GETTABLEKS                       R4 R3 K25 ["responseBody"]
       94 JUMPIFNOT                        R2 ; [+9]
       95 GETUPVAL                         R5 2
       96 GETTABLEKS                       R6 R4 K26 ["items"]
       98 GETTABLEKS                       R7 R0 K27 ["assetType"]
      100 CALL                             R5 2 1
      101 GETTABLEKS                       R6 R4 K28 ["nextPageToken"]
      103 RETURN                           R5 2
      104 GETIMPORT                        R5 K30 [warn]
      106 LOADK                            R7 K31 ["getAssetsAsync - asset fetch request failed for scope type %*"]
      107 GETTABLEKS                       R9 R0 K4 ["scopeType"]
      109 NAMECALL                         R7 R7 K14 ["format"]
      111 CALL                             R7 2 1
      112 MOVE                             R6 R7
      113 CALL                             R5 1 0
      114 NEWTABLE                         R5 0 0
      116 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETIMPORT                        R4 K3 [Enum.InfoType.Asset]
        4 NAMECALL                         R1 R1 K4 ["GetProductInfoAsync"]
        6 CALL                             R1 3 1
        7 GETIMPORT                        R2 K6 [Enum.AssetType]
        9 GETTABLEKS                       R4 R1 K7 ["AssetTypeId"]
       11 NAMECALL                         R2 R2 K8 ["FromValue"]
       13 CALL                             R2 2 1
       14 JUMPIFNOTEQKNIL                  R2 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 LOADK                            R6 K9 ["fetchAssetByIdAsync: couldn't get asset type for assetId %*"]
       19 MOVE                             R8 R0
       20 NAMECALL                         R6 R6 K10 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 FASTCALL2                        ASSERT R4 R5 ; [+3]
       26 GETIMPORT                        R3 K12 [assert]
       28 CALL                             R3 2 0
       29 GETTABLEKS                       R3 R1 K13 ["Creator"]
       31 DUPTABLE                         R4 K21 [{"assetId", "assetType", "createTime", "creationContext", "description", "displayName", "updateTime"}]
       32 GETTABLEKS                       R5 R1 K22 ["AssetId"]
       34 SETTABLEKS                       R5 R4 K14 ["assetId"]
       36 SETTABLEKS                       R2 R4 K15 ["assetType"]
       38 GETTABLEKS                       R5 R1 K23 ["Created"]
       40 SETTABLEKS                       R5 R4 K16 ["createTime"]
       42 DUPTABLE                         R5 K25 [{"creator"}]
       43 DUPTABLE                         R6 K28 [{"name", "userId"}]
       44 GETTABLEKS                       R7 R3 K29 ["Name"]
       46 SETTABLEKS                       R7 R6 K26 ["name"]
       48 GETTABLEKS                       R7 R3 K30 ["Id"]
       50 SETTABLEKS                       R7 R6 K27 ["userId"]
       52 SETTABLEKS                       R6 R5 K24 ["creator"]
       54 SETTABLEKS                       R5 R4 K17 ["creationContext"]
       56 GETTABLEKS                       R5 R1 K31 ["Description"]
       58 SETTABLEKS                       R5 R4 K18 ["description"]
       60 GETTABLEKS                       R5 R1 K29 ["Name"]
       62 SETTABLEKS                       R5 R4 K19 ["displayName"]
       64 GETTABLEKS                       R5 R1 K32 ["Updated"]
       66 SETTABLEKS                       R5 R4 K20 ["updateTime"]
       68 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MarketplaceService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UserService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Properties"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K6 [script]
       21 LOADK                            R5 K9 ["AssetPicker"]
       22 NAMECALL                         R3 R3 K8 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R4 R2 K10 ["Parent"]
       27 GETIMPORT                        R5 K12 [require]
       29 GETTABLEKS                       R6 R4 K13 ["Networking"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K12 [require]
       34 GETTABLEKS                       R7 R3 K14 ["Types"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K12 [require]
       39 GETTABLEKS                       R9 R3 K13 ["Networking"]
       41 GETTABLEKS                       R8 R9 K15 ["getFilteredAssets"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K1 [game]
       46 LOADK                            R10 K16 ["AssetPickerMaxPageSize"]
       47 LOADN                            R11 238
       48 NAMECALL                         R8 R8 K17 ["DefineFastInt"]
       50 CALL                             R8 3 1
       51 GETIMPORT                        R9 K1 [game]
       53 LOADK                            R11 K18 ["AssetPickerMaxGroupCount"]
       54 LOADN                            R12 5
       55 NAMECALL                         R9 R9 K17 ["DefineFastInt"]
       57 CALL                             R9 3 1
       58 GETTABLEKS                       R11 R5 K19 ["RobloxAPI"]
       60 GETTABLEKS                       R10 R11 K20 ["new"]
       62 GETTABLEKS                       R13 R5 K21 ["Http"]
       64 GETTABLEKS                       R12 R13 K13 ["Networking"]
       66 GETTABLEKS                       R11 R12 K20 ["new"]
       68 CALL                             R11 0 1
       69 CALL                             R10 1 1
       70 NEWTABLE                         R11 4 0
       72 DUPCLOSURE                       R12 K22 [PROTO_0]
       73 CAPTURE                          VAL R10
       74 DUPCLOSURE                       R13 K23 [PROTO_1]
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R9
       77 DUPCLOSURE                       R14 K24 [PROTO_3]
       78 CAPTURE                          VAL R1
       79 DUPCLOSURE                       R15 K25 [PROTO_4]
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R13
       83 SETTABLEKS                       R15 R11 K26 ["fetchScopesAsync"]
       85 DUPCLOSURE                       R15 K27 [PROTO_5]
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R7
       89 SETTABLEKS                       R15 R11 K28 ["fetchAssetsByScopeAsync"]
       91 DUPCLOSURE                       R15 K29 [PROTO_6]
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R15 R11 K30 ["fetchAssetByIdAsync"]
       95 RETURN                           R11 1
