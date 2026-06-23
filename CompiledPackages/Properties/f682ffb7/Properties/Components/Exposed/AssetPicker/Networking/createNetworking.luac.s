PROTO_0:
        0 DUPTABLE                         R1 K4 [{"id", "name", "type", "uniqueId"}]
        1 GETTABLEKS                       R2 R0 K0 ["id"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K1 ["name"]
        7 SETTABLEKS                       R2 R1 K1 ["name"]
        9 LOADK                            R2 K5 ["Group"]
       10 SETTABLEKS                       R2 R1 K2 ["type"]
       12 GETUPVAL                         R2 0
       13 LOADK                            R3 K5 ["Group"]
       14 GETTABLEKS                       R4 R0 K0 ["id"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K3 ["uniqueId"]
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["requestGroupsAsync"]
        3 DUPTABLE                         R2 K2 [{"source"}]
        4 LOADK                            R3 K3 ["AssetPicker"]
        5 SETTABLEKS                       R3 R2 K1 ["source"]
        7 CALL                             R1 1 2
        8 JUMPIF                           R1 ; [+7]
        9 GETIMPORT                        R3 K5 [warn]
       11 LOADK                            R4 K6 ["fetchGroupScopeListAsync: request failed"]
       12 CALL                             R3 1 0
       13 NEWTABLE                         R3 0 0
       15 RETURN                           R3 1
       16 JUMPIFEQKNIL                     R0 ; [+8]
       18 GETTABLEKS                       R4 R0 K7 ["type"]
       20 JUMPIFNOTEQKS                    R4 K8 ["Group"] ; [+4]
       22 GETTABLEKS                       R3 R0 K9 ["id"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 GETTABLEKS                       R4 R2 K10 ["responseBody"]
       28 GETTABLEKS                       R4 R4 K11 ["groups"]
       30 NEWTABLE                         R5 0 0
       32 JUMPIFEQKNIL                     R3 ; [+37]
       34 MOVE                             R6 R4
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 FORGPREP                         R6
       38 GETTABLEKS                       R11 R10 K9 ["id"]
       40 JUMPIFNOTEQ                      R11 R3 ; [+27]
       42 DUPTABLE                         R13 K14 [{"id", "name", "type", "uniqueId"}]
       43 GETTABLEKS                       R14 R10 K9 ["id"]
       45 SETTABLEKS                       R14 R13 K9 ["id"]
       47 GETTABLEKS                       R14 R10 K12 ["name"]
       49 SETTABLEKS                       R14 R13 K12 ["name"]
       51 LOADK                            R14 K8 ["Group"]
       52 SETTABLEKS                       R14 R13 K7 ["type"]
       54 GETUPVAL                         R14 1
       55 LOADK                            R15 K8 ["Group"]
       56 GETTABLEKS                       R16 R10 K9 ["id"]
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K13 ["uniqueId"]
       61 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       63 MOVE                             R12 R5
       64 GETIMPORT                        R11 K17 [table.insert]
       66 CALL                             R11 2 0
       67 JUMP                             ; [+2]
       68 FORGLOOP                         R6 2 ; [-31]
       70 MOVE                             R6 R4
       71 LOADNIL                          R7
       72 LOADNIL                          R8
       73 FORGPREP                         R6
       74 LENGTH                           R11 R5
       75 GETUPVAL                         R12 2
       76 JUMPIFLE                         R12 R11 ; [+32]
       78 GETTABLEKS                       R11 R10 K9 ["id"]
       80 JUMPIFEQ                         R11 R3 ; [+26]
       82 DUPTABLE                         R13 K14 [{"id", "name", "type", "uniqueId"}]
       83 GETTABLEKS                       R14 R10 K9 ["id"]
       85 SETTABLEKS                       R14 R13 K9 ["id"]
       87 GETTABLEKS                       R14 R10 K12 ["name"]
       89 SETTABLEKS                       R14 R13 K12 ["name"]
       91 LOADK                            R14 K8 ["Group"]
       92 SETTABLEKS                       R14 R13 K7 ["type"]
       94 GETUPVAL                         R14 1
       95 LOADK                            R15 K8 ["Group"]
       96 GETTABLEKS                       R16 R10 K9 ["id"]
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K13 ["uniqueId"]
      101 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      103 MOVE                             R12 R5
      104 GETIMPORT                        R11 K17 [table.insert]
      106 CALL                             R11 2 0
      107 FORGLOOP                         R6 2 ; [-34]
      109 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["requestUserDisplayNameAsync"]
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
        9 LOADNIL                          R3
       10 GETTABLEKS                       R4 R0 K2 ["gameId"]
       12 JUMPIFEQKN                       R4 K3 [0] ; [+50]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["requestUniverseInfoAsync"]
       17 DUPTABLE                         R5 K5 [{"gameId"}]
       18 GETTABLEKS                       R6 R0 K2 ["gameId"]
       20 SETTABLEKS                       R6 R5 K2 ["gameId"]
       22 CALL                             R4 1 2
       23 JUMPIFNOT                        R4 ; [+35]
       24 GETTABLEKS                       R6 R5 K6 ["responseBody"]
       26 DUPTABLE                         R7 K10 [{"id", "name", "type", "uniqueId"}]
       27 GETTABLEKS                       R8 R0 K2 ["gameId"]
       29 SETTABLEKS                       R8 R7 K7 ["id"]
       31 GETTABLEKS                       R8 R6 K8 ["name"]
       33 SETTABLEKS                       R8 R7 K8 ["name"]
       35 LOADK                            R8 K11 ["Universe"]
       36 SETTABLEKS                       R8 R7 K9 ["type"]
       38 GETUPVAL                         R8 2
       39 LOADK                            R9 K11 ["Universe"]
       40 GETTABLEKS                       R10 R0 K2 ["gameId"]
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K1 ["uniqueId"]
       45 GETTABLEKS                       R8 R7 K1 ["uniqueId"]
       47 SETTABLE                         R7 R2 R8
       48 DUPTABLE                         R8 K12 [{"id", "type"}]
       49 GETTABLEKS                       R9 R6 K13 ["creatorTargetId"]
       51 SETTABLEKS                       R9 R8 K7 ["id"]
       53 GETTABLEKS                       R9 R6 K14 ["creatorType"]
       55 SETTABLEKS                       R9 R8 K9 ["type"]
       57 MOVE                             R3 R8
       58 JUMP                             ; [+4]
       59 GETIMPORT                        R6 K16 [warn]
       61 LOADK                            R7 K17 ["fetchScopesAsync: requestUniverseInfoAsync failed"]
       62 CALL                             R6 1 0
       63 GETUPVAL                         R4 3
       64 MOVE                             R5 R3
       65 CALL                             R4 1 1
       66 MOVE                             R5 R4
       67 LOADNIL                          R6
       68 LOADNIL                          R7
       69 FORGPREP                         R5
       70 GETTABLEKS                       R10 R9 K1 ["uniqueId"]
       72 SETTABLE                         R9 R2 R10
       73 FORGLOOP                         R5 2 ; [-4]
       75 DUPTABLE                         R5 K20 [{"scopeMap", "universeCreatorInfo"}]
       76 SETTABLEKS                       R2 R5 K18 ["scopeMap"]
       78 SETTABLEKS                       R3 R5 K19 ["universeCreatorInfo"]
       80 RETURN                           R5 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["pageToken"]
        4 DUPTABLE                         R3 K3 [{"Id", "Type"}]
        5 GETTABLEKS                       R4 R0 K4 ["scopeId"]
        7 SETTABLEKS                       R4 R3 K1 ["Id"]
        9 GETTABLEKS                       R4 R0 K5 ["scopeType"]
       11 SETTABLEKS                       R4 R3 K2 ["Type"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["requestAssetItemsAsync"]
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
       53 GETTABLEKS                       R8 R5 K21 ["responseBody"]
       55 GETTABLEKS                       R8 R8 K22 ["items"]
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
        1 GETTABLEKS                       R2 R0 K0 ["assetType"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+24]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K5 [{"assetType", "scopeId", "scopeType", "search", "pageToken"}]
        7 GETTABLEKS                       R3 R0 K0 ["assetType"]
        9 SETTABLEKS                       R3 R2 K0 ["assetType"]
       11 GETTABLEKS                       R3 R0 K1 ["scopeId"]
       13 SETTABLEKS                       R3 R2 K1 ["scopeId"]
       15 GETTABLEKS                       R3 R0 K2 ["scopeType"]
       17 SETTABLEKS                       R3 R2 K2 ["scopeType"]
       19 GETTABLEKS                       R3 R0 K3 ["search"]
       21 SETTABLEKS                       R3 R2 K3 ["search"]
       23 GETTABLEKS                       R3 R0 K4 ["pageToken"]
       25 SETTABLEKS                       R3 R2 K4 ["pageToken"]
       27 CALL                             R1 1 -1
       28 RETURN                           R1 -1
       29 DUPTABLE                         R1 K8 [{"Id", "Type"}]
       30 GETTABLEKS                       R2 R0 K1 ["scopeId"]
       32 SETTABLEKS                       R2 R1 K6 ["Id"]
       34 GETTABLEKS                       R2 R0 K2 ["scopeType"]
       36 SETTABLEKS                       R2 R1 K7 ["Type"]
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K9 ["requestAssetItemsAsync"]
       41 DUPTABLE                         R3 K13 [{"query", "assetType", "scopeParams", "maxPageSize", "pageToken"}]
       42 GETTABLEKS                       R4 R0 K3 ["search"]
       44 SETTABLEKS                       R4 R3 K10 ["query"]
       46 GETTABLEKS                       R4 R0 K0 ["assetType"]
       48 SETTABLEKS                       R4 R3 K0 ["assetType"]
       50 SETTABLEKS                       R1 R3 K11 ["scopeParams"]
       52 GETUPVAL                         R4 3
       53 SETTABLEKS                       R4 R3 K12 ["maxPageSize"]
       55 GETTABLEKS                       R4 R0 K4 ["pageToken"]
       57 SETTABLEKS                       R4 R3 K4 ["pageToken"]
       59 CALL                             R2 1 2
       60 GETTABLEKS                       R4 R3 K14 ["responseBody"]
       62 JUMPIFNOT                        R2 ; [+5]
       63 GETTABLEKS                       R5 R4 K15 ["items"]
       65 GETTABLEKS                       R6 R4 K16 ["nextPageToken"]
       67 RETURN                           R5 2
       68 GETIMPORT                        R5 K18 [warn]
       70 LOADK                            R7 K19 ["fetchAssetsByScopeAsync: asset fetch request failed for scopeType %*"]
       71 GETTABLEKS                       R9 R0 K2 ["scopeType"]
       73 NAMECALL                         R7 R7 K20 ["format"]
       75 CALL                             R7 2 1
       76 MOVE                             R6 R7
       77 CALL                             R5 1 0
       78 NEWTABLE                         R5 0 0
       80 LOADNIL                          R6
       81 RETURN                           R5 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getAssetProductInfoAsync"]
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
        3 CAPTURE                          UPVAL U1
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U0
        8 NEWCLOSURE                       R3 P2
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R1
       13 NEWCLOSURE                       R4 P3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 NEWCLOSURE                       R5 P4
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 NEWCLOSURE                       R6 P5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U8
       27 DUPTABLE                         R7 K3 [{"fetchScopesAsync", "fetchAssetsByScopeAsync", "fetchAssetByIdAsync"}]
       28 SETTABLEKS                       R3 R7 K0 ["fetchScopesAsync"]
       30 SETTABLEKS                       R5 R7 K1 ["fetchAssetsByScopeAsync"]
       32 SETTABLEKS                       R6 R7 K2 ["fetchAssetByIdAsync"]
       34 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Resources"]
       11 GETTABLEKS                       R2 R2 K7 ["Localization"]
       13 GETTABLEKS                       R2 R2 K8 ["Translator"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Networking"]
       25 GETTABLEKS                       R4 R4 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["appendByAnimationAssetType"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["createScopeUniqueId"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Flags"]
       41 GETTABLEKS                       R6 R6 K15 ["getFFlagAssetPickerDisableAnimationFetchLoop"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Flags"]
       48 GETTABLEKS                       R7 R7 K16 ["getFIntAssetPickerMaxGroupCount"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K11 ["Util"]
       55 GETTABLEKS                       R8 R8 K17 ["isAnimationAssetType"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K11 ["Util"]
       62 GETTABLEKS                       R9 R9 K18 ["toInternalAssetType"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K20 [game]
       67 LOADK                            R11 K21 ["AssetPickerMaxPageSize"]
       68 LOADN                            R12 238
       69 NAMECALL                         R9 R9 K22 ["DefineFastInt"]
       71 CALL                             R9 3 1
       72 GETIMPORT                        R10 K20 [game]
       74 LOADK                            R12 K23 ["AssetPickerMinAnimationPageSize"]
       75 LOADN                            R13 20
       76 NAMECALL                         R10 R10 K22 ["DefineFastInt"]
       78 CALL                             R10 3 1
       79 MOVE                             R11 R6
       80 CALL                             R11 0 1
       81 DUPCLOSURE                       R12 K24 [PROTO_0]
       82 CAPTURE                          VAL R4
       83 DUPCLOSURE                       R13 K25 [PROTO_7]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R8
       93 RETURN                           R13 1
