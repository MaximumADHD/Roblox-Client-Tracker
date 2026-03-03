PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["assetId"]
        2 GETTABLEKS                       R2 R0 K0 ["assetId"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 0
        8 ADDK                             R2 R2 K1 [1]
        9 SETUPVAL                         R2 0
       10 DUPTABLE                         R2 K8 [{"assetId", "assetType", "createTime", "creationContext", "description", "displayName", "updateTime"}]
       11 SETTABLEKS                       R1 R2 K0 ["assetId"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R4 R0 K2 ["assetType"]
       16 JUMPIF                           R4 ; [+2]
       17 GETIMPORT                        R4 K12 [Enum.AssetType.Image]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K2 ["assetType"]
       22 GETTABLEKS                       R4 R0 K3 ["createTime"]
       24 ORK                              R3 R4 K13 ["2024-06-13"]
       25 SETTABLEKS                       R3 R2 K3 ["createTime"]
       27 GETTABLEKS                       R3 R0 K4 ["creationContext"]
       29 JUMPIF                           R3 ; [+10]
       30 DUPTABLE                         R3 K15 [{"creator"}]
       31 DUPTABLE                         R4 K18 [{"userId", "name"}]
       32 LOADN                            R5 0
       33 SETTABLEKS                       R5 R4 K16 ["userId"]
       35 LOADK                            R5 K19 ["MeowMeowCat"]
       36 SETTABLEKS                       R5 R4 K17 ["name"]
       38 SETTABLEKS                       R4 R3 K14 ["creator"]
       40 SETTABLEKS                       R3 R2 K4 ["creationContext"]
       42 GETTABLEKS                       R4 R0 K5 ["description"]
       44 ORK                              R3 R4 K20 ["A cute tabby cat eating the moon"]
       45 SETTABLEKS                       R3 R2 K5 ["description"]
       47 GETTABLEKS                       R4 R0 K6 ["displayName"]
       49 ORK                              R3 R4 K21 ["MeowMeowAsset"]
       50 SETTABLEKS                       R3 R2 K6 ["displayName"]
       52 GETTABLEKS                       R4 R0 K7 ["updateTime"]
       54 ORK                              R3 R4 K13 ["2024-06-13"]
       55 SETTABLEKS                       R3 R2 K7 ["updateTime"]
       57 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K2 [tonumber]
        4 CALL                             R4 1 1
        5 ORK                              R3 R4 K0 [1]
        6 ADD                              R6 R3 R2
        7 SUBK                             R5 R6 K0 [1]
        8 LENGTH                           R6 R0
        9 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       11 GETIMPORT                        R4 K5 [math.min]
       13 CALL                             R4 2 1
       14 NEWTABLE                         R5 0 0
       16 MOVE                             R8 R3
       17 MOVE                             R6 R4
       18 LOADN                            R7 1
       19 FORNPREP                         R6
       20 GETTABLE                         R11 R0 R8
       21 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       23 MOVE                             R10 R5
       24 GETIMPORT                        R9 K8 [table.insert]
       26 CALL                             R9 2 0
       27 FORNLOOP                         R6
       28 LENGTH                           R7 R0
       29 JUMPIFNOTLT                      R4 R7 ; [+7]
       31 ADDK                             R7 R4 K0 [1]
       32 FASTCALL1                        TOSTRING R7 ; [+2]
       33 GETIMPORT                        R6 K10 [tostring]
       35 CALL                             R6 1 1
       36 RETURN                           R5 2
       37 LOADNIL                          R6
       38 RETURN                           R5 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["failAllRequests"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 LOADB                            R1 0
        5 DUPTABLE                         R2 K2 [{"responseBody"}]
        6 DUPTABLE                         R3 K4 [{"name"}]
        7 LOADK                            R4 K5 [""]
        8 SETTABLEKS                       R4 R3 K3 ["name"]
       10 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       12 RETURN                           R1 2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R1 R4 K6 ["scopes"]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETTABLEKS                       R6 R5 K7 ["type"]
       21 JUMPIFNOTEQKS                    R6 K8 ["Universe"] ; [+15]
       23 GETTABLEKS                       R6 R5 K9 ["id"]
       25 JUMPIFNOTEQ                      R6 R0 ; [+11]
       27 LOADB                            R6 1
       28 DUPTABLE                         R7 K2 [{"responseBody"}]
       29 DUPTABLE                         R8 K4 [{"name"}]
       30 GETTABLEKS                       R9 R5 K3 ["name"]
       32 SETTABLEKS                       R9 R8 K3 ["name"]
       34 SETTABLEKS                       R8 R7 K1 ["responseBody"]
       36 RETURN                           R6 2
       37 FORGLOOP                         R1 2 ; [-19]
       39 LOADB                            R1 1
       40 DUPTABLE                         R2 K2 [{"responseBody"}]
       41 DUPTABLE                         R3 K4 [{"name"}]
       42 LOADK                            R4 K5 [""]
       43 SETTABLEKS                       R4 R3 K3 ["name"]
       45 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       47 RETURN                           R1 2

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["failAllRequests"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 LOADB                            R1 0
        5 DUPTABLE                         R2 K2 [{"responseBody"}]
        6 DUPTABLE                         R3 K4 [{"groups"}]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K3 ["groups"]
       11 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       13 RETURN                           R1 2
       14 NEWTABLE                         R1 0 0
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R2 R5 K5 ["scopes"]
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETTABLEKS                       R7 R6 K6 ["type"]
       24 JUMPIFNOTEQKS                    R7 K7 ["Group"] ; [+16]
       26 DUPTABLE                         R9 K10 [{"id", "name"}]
       27 GETTABLEKS                       R10 R6 K8 ["id"]
       29 SETTABLEKS                       R10 R9 K8 ["id"]
       31 GETTABLEKS                       R10 R6 K9 ["name"]
       33 SETTABLEKS                       R10 R9 K9 ["name"]
       35 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       37 MOVE                             R8 R1
       38 GETIMPORT                        R7 K13 [table.insert]
       40 CALL                             R7 2 0
       41 FORGLOOP                         R2 2 ; [-20]
       43 LOADB                            R2 1
       44 DUPTABLE                         R3 K2 [{"responseBody"}]
       45 DUPTABLE                         R4 K4 [{"groups"}]
       46 SETTABLEKS                       R1 R4 K3 ["groups"]
       48 SETTABLEKS                       R4 R3 K1 ["responseBody"]
       50 RETURN                           R2 2

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["failAllRequests"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 LOADB                            R1 0
        5 DUPTABLE                         R2 K2 [{"responseBody"}]
        6 DUPTABLE                         R3 K4 [{"displayName"}]
        7 LOADK                            R4 K5 [""]
        8 SETTABLEKS                       R4 R3 K3 ["displayName"]
       10 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       12 RETURN                           R1 2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R1 R4 K6 ["scopes"]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETTABLEKS                       R6 R5 K7 ["type"]
       21 JUMPIFNOTEQKS                    R6 K8 ["User"] ; [+15]
       23 GETTABLEKS                       R6 R5 K9 ["id"]
       25 JUMPIFNOTEQ                      R6 R0 ; [+11]
       27 LOADB                            R6 1
       28 DUPTABLE                         R7 K2 [{"responseBody"}]
       29 DUPTABLE                         R8 K4 [{"displayName"}]
       30 GETTABLEKS                       R9 R5 K10 ["name"]
       32 SETTABLEKS                       R9 R8 K3 ["displayName"]
       34 SETTABLEKS                       R8 R7 K1 ["responseBody"]
       36 RETURN                           R6 2
       37 FORGLOOP                         R1 2 ; [-19]
       39 LOADB                            R1 0
       40 DUPTABLE                         R2 K2 [{"responseBody"}]
       41 DUPTABLE                         R3 K4 [{"displayName"}]
       42 LOADK                            R4 K5 [""]
       43 SETTABLEKS                       R4 R3 K3 ["displayName"]
       45 SETTABLEKS                       R3 R2 K1 ["responseBody"]
       47 RETURN                           R1 2

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["failAllRequests"]
        3 JUMPIFNOT                        R3 ; [+13]
        4 LOADB                            R3 0
        5 DUPTABLE                         R4 K2 [{"responseBody"}]
        6 DUPTABLE                         R5 K5 [{"items", "nextPageToken"}]
        7 NEWTABLE                         R6 0 0
        9 SETTABLEKS                       R6 R5 K3 ["items"]
       11 LOADNIL                          R6
       12 SETTABLEKS                       R6 R5 K4 ["nextPageToken"]
       14 SETTABLEKS                       R5 R4 K1 ["responseBody"]
       16 RETURN                           R3 2
       17 GETUPVAL                         R4 1
       18 GETTABLE                         R3 R4 R0
       19 JUMPIF                           R3 ; [+2]
       20 NEWTABLE                         R3 0 0
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K6 ["pageSize"]
       25 JUMPIFEQKNIL                     R4 ; [+19]
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R3
       29 GETTABLEKS                       R6 R2 K7 ["pageToken"]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K6 ["pageSize"]
       34 CALL                             R4 3 2
       35 LOADB                            R6 1
       36 DUPTABLE                         R7 K2 [{"responseBody"}]
       37 DUPTABLE                         R8 K5 [{"items", "nextPageToken"}]
       38 SETTABLEKS                       R4 R8 K3 ["items"]
       40 SETTABLEKS                       R5 R8 K4 ["nextPageToken"]
       42 SETTABLEKS                       R8 R7 K1 ["responseBody"]
       44 RETURN                           R6 2
       45 LOADB                            R4 1
       46 DUPTABLE                         R5 K2 [{"responseBody"}]
       47 DUPTABLE                         R6 K5 [{"items", "nextPageToken"}]
       48 SETTABLEKS                       R3 R6 K3 ["items"]
       50 LOADNIL                          R7
       51 SETTABLEKS                       R7 R6 K4 ["nextPageToken"]
       53 SETTABLEKS                       R6 R5 K1 ["responseBody"]
       55 RETURN                           R4 2

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["Universe"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["User"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["Group"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["failAllRequests"]
        3 JUMPIFNOT                        R5 ; [+13]
        4 LOADB                            R5 0
        5 DUPTABLE                         R6 K2 [{"responseBody"}]
        6 DUPTABLE                         R7 K5 [{"items", "nextPageToken"}]
        7 NEWTABLE                         R8 0 0
        9 SETTABLEKS                       R8 R7 K3 ["items"]
       11 LOADNIL                          R8
       12 SETTABLEKS                       R8 R7 K4 ["nextPageToken"]
       14 SETTABLEKS                       R7 R6 K1 ["responseBody"]
       16 RETURN                           R5 2
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R7 R2 K6 ["Id"]
       20 GETTABLE                         R5 R6 R7
       21 JUMPIF                           R5 ; [+2]
       22 NEWTABLE                         R5 0 0
       24 NEWTABLE                         R6 0 0
       26 MOVE                             R7 R5
       27 LOADNIL                          R8
       28 LOADNIL                          R9
       29 FORGPREP                         R7
       30 GETTABLEKS                       R13 R11 K7 ["assetItem"]
       32 GETTABLEKS                       R12 R13 K8 ["asset"]
       34 JUMPIFEQKS                       R0 K9 [""] ; [+15]
       36 GETIMPORT                        R13 K12 [string.find]
       38 GETTABLEKS                       R14 R12 K13 ["displayName"]
       40 NAMECALL                         R14 R14 K14 ["lower"]
       42 CALL                             R14 1 1
       43 NAMECALL                         R15 R0 K14 ["lower"]
       45 CALL                             R15 1 1
       46 LOADN                            R16 1
       47 LOADB                            R17 1
       48 CALL                             R13 4 1
       49 JUMPIFNOT                        R13 ; [+7]
       50 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       52 MOVE                             R14 R6
       53 MOVE                             R15 R11
       54 GETIMPORT                        R13 K17 [table.insert]
       56 CALL                             R13 2 0
       57 FORGLOOP                         R7 2 ; [-28]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R7 R8 K18 ["pageSize"]
       62 JUMPIFEQKNIL                     R7 ; [+18]
       64 GETUPVAL                         R7 2
       65 MOVE                             R8 R6
       66 MOVE                             R9 R4
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R10 R11 K18 ["pageSize"]
       70 CALL                             R7 3 2
       71 LOADB                            R9 1
       72 DUPTABLE                         R10 K2 [{"responseBody"}]
       73 DUPTABLE                         R11 K5 [{"items", "nextPageToken"}]
       74 SETTABLEKS                       R7 R11 K3 ["items"]
       76 SETTABLEKS                       R8 R11 K4 ["nextPageToken"]
       78 SETTABLEKS                       R11 R10 K1 ["responseBody"]
       80 RETURN                           R9 2
       81 LOADB                            R7 1
       82 DUPTABLE                         R8 K2 [{"responseBody"}]
       83 DUPTABLE                         R9 K5 [{"items", "nextPageToken"}]
       84 SETTABLEKS                       R6 R9 K3 ["items"]
       86 LOADNIL                          R10
       87 SETTABLEKS                       R10 R9 K4 ["nextPageToken"]
       89 SETTABLEKS                       R9 R8 K1 ["responseBody"]
       91 RETURN                           R7 2

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["assets"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R5
        8 CALL                             R6 1 1
        9 GETTABLEKS                       R7 R6 K1 ["assetId"]
       11 JUMPIFNOTEQ                      R7 R0 ; [+47]
       13 GETTABLEKS                       R8 R6 K2 ["creationContext"]
       15 GETTABLEKS                       R7 R8 K3 ["creator"]
       17 DUPTABLE                         R8 K11 [{"AssetId", "AssetTypeId", "Creator", "Created", "Description", "Name", "Updated"}]
       18 GETTABLEKS                       R9 R6 K1 ["assetId"]
       20 SETTABLEKS                       R9 R8 K4 ["AssetId"]
       22 GETTABLEKS                       R10 R5 K12 ["assetType"]
       24 JUMPIF                           R10 ; [+2]
       25 GETIMPORT                        R10 K16 [Enum.AssetType.Image]
       27 GETTABLEKS                       R9 R10 K17 ["Value"]
       29 SETTABLEKS                       R9 R8 K5 ["AssetTypeId"]
       31 DUPTABLE                         R9 K19 [{"Name", "Id"}]
       32 GETTABLEKS                       R10 R7 K20 ["name"]
       34 SETTABLEKS                       R10 R9 K9 ["Name"]
       36 GETTABLEKS                       R10 R7 K21 ["userId"]
       38 SETTABLEKS                       R10 R9 K18 ["Id"]
       40 SETTABLEKS                       R9 R8 K6 ["Creator"]
       42 GETTABLEKS                       R9 R6 K22 ["createTime"]
       44 SETTABLEKS                       R9 R8 K7 ["Created"]
       46 GETTABLEKS                       R9 R6 K23 ["description"]
       48 SETTABLEKS                       R9 R8 K8 ["Description"]
       50 GETTABLEKS                       R9 R6 K24 ["displayName"]
       52 SETTABLEKS                       R9 R8 K9 ["Name"]
       54 GETTABLEKS                       R9 R6 K25 ["updateTime"]
       56 SETTABLEKS                       R9 R8 K10 ["Updated"]
       58 RETURN                           R8 1
       59 FORGLOOP                         R1 2 ; [-54]
       61 GETIMPORT                        R1 K27 [error]
       63 LOADK                            R3 K28 ["No mock asset found for assetId: %*"]
       64 MOVE                             R5 R0
       65 NAMECALL                         R3 R3 K29 ["format"]
       67 CALL                             R3 2 1
       68 MOVE                             R2 R3
       69 CALL                             R1 1 0
       70 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["assets"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["scopeId"]
        9 GETTABLE                         R8 R1 R7
       10 JUMPIFNOTEQKNIL                  R8 ; [+4]
       12 NEWTABLE                         R8 0 0
       14 SETTABLE                         R8 R1 R7
       15 GETUPVAL                         R8 0
       16 MOVE                             R9 R6
       17 CALL                             R8 1 1
       18 GETTABLE                         R10 R1 R7
       19 DUPTABLE                         R11 K3 [{"assetItem"}]
       20 DUPTABLE                         R12 K5 [{"asset"}]
       21 SETTABLEKS                       R8 R12 K4 ["asset"]
       23 SETTABLEKS                       R12 R11 K2 ["assetItem"]
       25 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       27 GETIMPORT                        R9 K8 [table.insert]
       29 CALL                             R9 2 0
       30 FORGLOOP                         R2 2 ; [-24]
       32 NEWCLOSURE                       R2 P0
       33 CAPTURE                          VAL R0
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          VAL R0
       36 NEWCLOSURE                       R4 P2
       37 CAPTURE                          VAL R0
       38 NEWCLOSURE                       R5 P3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U1
       42 NEWCLOSURE                       R6 P4
       43 CAPTURE                          VAL R5
       44 NEWCLOSURE                       R7 P5
       45 CAPTURE                          VAL R5
       46 NEWCLOSURE                       R8 P6
       47 CAPTURE                          VAL R5
       48 NEWCLOSURE                       R9 P7
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U1
       52 NEWCLOSURE                       R10 P8
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U0
       55 DUPTABLE                         R11 K17 [{"getUniverseScope", "getGroupScopes", "getUserScope", "getUniverseAssetItems", "getUserAssetItems", "getGroupAssetItems", "searchAssetItems", "getAssetProductInfo"}]
       56 SETTABLEKS                       R2 R11 K9 ["getUniverseScope"]
       58 SETTABLEKS                       R3 R11 K10 ["getGroupScopes"]
       60 SETTABLEKS                       R4 R11 K11 ["getUserScope"]
       62 SETTABLEKS                       R6 R11 K12 ["getUniverseAssetItems"]
       64 SETTABLEKS                       R7 R11 K13 ["getUserAssetItems"]
       66 SETTABLEKS                       R8 R11 K14 ["getGroupAssetItems"]
       68 SETTABLEKS                       R9 R11 K15 ["searchAssetItems"]
       70 SETTABLEKS                       R10 R11 K16 ["getAssetProductInfo"]
       72 RETURN                           R11 1

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
       19 LOADN                            R3 0
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          REF R3
       22 CAPTURE                          VAL R2
       23 DUPCLOSURE                       R5 K9 [PROTO_1]
       24 DUPCLOSURE                       R6 K10 [PROTO_11]
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R5
       27 CLOSEUPVALS                      R3
       28 RETURN                           R6 1
