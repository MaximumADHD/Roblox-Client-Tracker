PROTO_0:
        0 DUPTABLE                         R2 K10 [{"assetId", "installedVersion", "latestVersion", "name", "description", "creator", "enabled", "isModerated", "autoUpdateEnabled", "updated"}]
        1 SETTABLEKS                       R0 R2 K0 ["assetId"]
        3 LOADN                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["installedVersion"]
        6 LOADN                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["latestVersion"]
        9 LOADK                            R3 K11 [""]
       10 SETTABLEKS                       R3 R2 K3 ["name"]
       12 LOADK                            R3 K11 [""]
       13 SETTABLEKS                       R3 R2 K4 ["description"]
       15 SETTABLEKS                       R1 R2 K5 ["creator"]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K6 ["enabled"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K7 ["isModerated"]
       23 LOADB                            R3 0
       24 SETTABLEKS                       R3 R2 K8 ["autoUpdateEnabled"]
       26 LOADK                            R3 K12 ["2025-09-01T07:47:46Z"]
       27 SETTABLEKS                       R3 R2 K9 ["updated"]
       29 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K6 [{"Name", "AssetVersion", "Enabled", "Moderated", "LatestVersion", "AutoUpdate"}]
        1 LOADK                            R2 K7 [""]
        2 SETTABLEKS                       R2 R1 K0 ["Name"]
        4 LOADN                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["AssetVersion"]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K2 ["Enabled"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["Moderated"]
       13 LOADN                            R2 1
       14 SETTABLEKS                       R2 R1 K4 ["LatestVersion"]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K5 ["AutoUpdate"]
       19 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TOSTRING R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K1 [tostring]
       10 CALL                             R7 1 1
       11 DUPTABLE                         R8 K8 [{"Name", "AssetVersion", "Enabled", "Moderated", "LatestVersion", "AutoUpdate"}]
       12 LOADK                            R9 K9 [""]
       13 SETTABLEKS                       R9 R8 K2 ["Name"]
       15 LOADN                            R9 1
       16 SETTABLEKS                       R9 R8 K3 ["AssetVersion"]
       18 LOADB                            R9 1
       19 SETTABLEKS                       R9 R8 K4 ["Enabled"]
       21 LOADB                            R9 0
       22 SETTABLEKS                       R9 R8 K5 ["Moderated"]
       24 LOADN                            R9 1
       25 SETTABLEKS                       R9 R8 K6 ["LatestVersion"]
       27 LOADB                            R9 0
       28 SETTABLEKS                       R9 R8 K7 ["AutoUpdate"]
       30 SETTABLE                         R8 R1 R7
       31 FORGLOOP                         R2 2 ; [-26]
       33 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TONUMBER R5 ; [+3]
        7 MOVE                             R8 R5
        8 GETIMPORT                        R7 K1 [tonumber]
       10 CALL                             R7 1 1
       11 FASTCALL2K                       ASSERT R7 K2 ; [+5]
       13 MOVE                             R9 R7
       14 LOADK                            R10 K2 ["Expected assetId to be valid number"]
       15 GETIMPORT                        R8 K4 [assert]
       17 CALL                             R8 2 0
       18 DUPTABLE                         R8 K15 [{"assetId", "installedVersion", "latestVersion", "name", "description", "creator", "enabled", "isModerated", "autoUpdateEnabled", "updated"}]
       19 SETTABLEKS                       R7 R8 K5 ["assetId"]
       21 GETTABLEKS                       R9 R6 K16 ["AssetVersion"]
       23 SETTABLEKS                       R9 R8 K6 ["installedVersion"]
       25 GETTABLEKS                       R9 R6 K17 ["LatestVersion"]
       27 SETTABLEKS                       R9 R8 K7 ["latestVersion"]
       29 GETTABLEKS                       R9 R6 K18 ["Name"]
       31 SETTABLEKS                       R9 R8 K8 ["name"]
       33 LOADK                            R9 K19 [""]
       34 SETTABLEKS                       R9 R8 K9 ["description"]
       36 LOADNIL                          R9
       37 SETTABLEKS                       R9 R8 K10 ["creator"]
       39 GETTABLEKS                       R9 R6 K20 ["Enabled"]
       41 SETTABLEKS                       R9 R8 K11 ["enabled"]
       43 GETTABLEKS                       R9 R6 K21 ["Moderated"]
       45 SETTABLEKS                       R9 R8 K12 ["isModerated"]
       47 GETTABLEKS                       R9 R6 K22 ["AutoUpdate"]
       49 SETTABLEKS                       R9 R8 K13 ["autoUpdateEnabled"]
       51 LOADK                            R9 K23 ["2025-09-01T07:47:46Z"]
       52 SETTABLEKS                       R9 R8 K14 ["updated"]
       54 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       56 MOVE                             R10 R1
       57 MOVE                             R11 R8
       58 GETIMPORT                        R9 K26 [table.insert]
       60 CALL                             R9 2 0
       61 FORGLOOP                         R2 2 ; [-56]
       63 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["mark"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETTABLEKS                       R8 R7 K2 ["assetId"]
        9 GETIMPORT                        R9 K5 [table.clone]
       11 MOVE                             R10 R7
       12 CALL                             R9 1 1
       13 SETTABLE                         R9 R2 R8
       14 FORGLOOP                         R3 2 [inext] ; [-8]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K6 ["new"]
       19 CALL                             R3 0 1
       20 GETTABLEKS                       R4 R0 K7 ["changed"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R3
       24 NAMECALL                         R4 R4 K8 ["connect"]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R7 1
       28 MOVE                             R8 R2
       29 CALL                             R7 1 -1
       30 NAMECALL                         R5 R0 K9 ["dispatch"]
       32 CALL                             R5 -1 0
       33 NAMECALL                         R5 R3 K10 ["waitAndReset"]
       35 CALL                             R5 1 0
       36 NAMECALL                         R5 R4 K11 ["disconnect"]
       38 CALL                             R5 1 0
       39 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["mark"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R0 K1 ["changed"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R3 R3 K2 ["connect"]
       10 CALL                             R3 2 1
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R1
       13 CALL                             R6 1 -1
       14 NAMECALL                         R4 R0 K3 ["dispatch"]
       16 CALL                             R4 -1 0
       17 NAMECALL                         R4 R2 K4 ["waitAndReset"]
       19 CALL                             R4 1 0
       20 NAMECALL                         R4 R3 K5 ["disconnect"]
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R3
        6 CALL                             R4 2 0
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R1 K0 ["setMockData"]
       10 CALL                             R4 2 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R2
        3 CALL                             R3 2 0
        4 MOVE                             R3 R2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 MOVE                             R10 R6
        9 MOVE                             R11 R7
       10 NAMECALL                         R8 R1 K0 ["setMockPermissions"]
       12 CALL                             R8 3 0
       13 FORGLOOP                         R3 2 ; [-6]
       15 RETURN                           R0 0

PROTO_10:
        0 LENGTH                           R3 R0
        1 JUMPIFEQKN                       R3 K0 [1] ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        7 LOADK                            R3 K1 ["generatePluginInfoUrl only supports 1 asset"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 LOADK                            R1 K4 ["https://apis.roblox.com/studio-plugin-api/v1/plugins?pluginIds=%d"]
       12 GETTABLEN                        R3 R0 1
       13 NAMECALL                         R1 R1 K5 ["format"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_11:
        0 LENGTH                           R3 R0
        1 JUMPIFEQKN                       R3 K0 [1] ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        7 LOADK                            R3 K1 ["generatePluginInfoBody only supports 1 asset"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 GETTABLEN                        R1 R0 1
       12 GETTABLEKS                       R1 R1 K4 ["assetId"]
       14 GETTABLEN                        R2 R0 1
       15 GETTABLEKS                       R2 R2 K5 ["name"]
       17 LOADK                            R3 K6 ["{\n    \"data\": [\n        {\n            \"id\": %d,\n            \"name\": \"%s\",\n            \"description\": \"bar\",\n            \"commentsEnabled\": false,\n            \"versionId\": 1,\n            \"created\": \"2019-03-17T19:28:52.967Z\",\n            \"updated\": \"2025-09-01T07:47:46.463Z\"\n        }\n    ]\n}\n"]
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 NAMECALL                         R3 R3 K7 ["format"]
       22 CALL                             R3 3 1
       23 RETURN                           R3 1

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R9 R6 K0 ["assetId"]
        8 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       10 MOVE                             R8 R1
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-9]
       16 LENGTH                           R5 R1
       17 JUMPIFEQKN                       R5 K4 [1] ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       23 LOADK                            R5 K5 ["generatePluginInfoUrl only supports 1 asset"]
       24 GETIMPORT                        R3 K7 [assert]
       26 CALL                             R3 2 0
       27 LOADK                            R2 K8 ["https://apis.roblox.com/studio-plugin-api/v1/plugins?pluginIds=%d"]
       28 GETTABLEN                        R4 R1 1
       29 NAMECALL                         R2 R2 K9 ["format"]
       31 CALL                             R2 2 1
       32 LENGTH                           R6 R0
       33 JUMPIFEQKN                       R6 K4 [1] ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       39 LOADK                            R6 K10 ["generatePluginInfoBody only supports 1 asset"]
       40 GETIMPORT                        R4 K7 [assert]
       42 CALL                             R4 2 0
       43 GETTABLEN                        R4 R0 1
       44 GETTABLEKS                       R4 R4 K0 ["assetId"]
       46 GETTABLEN                        R5 R0 1
       47 GETTABLEKS                       R5 R5 K11 ["name"]
       49 LOADK                            R6 K12 ["{\n    \"data\": [\n        {\n            \"id\": %d,\n            \"name\": \"%s\",\n            \"description\": \"bar\",\n            \"commentsEnabled\": false,\n            \"versionId\": 1,\n            \"created\": \"2019-03-17T19:28:52.967Z\",\n            \"updated\": \"2025-09-01T07:47:46.463Z\"\n        }\n    ]\n}\n"]
       50 MOVE                             R8 R4
       51 MOVE                             R9 R5
       52 NAMECALL                         R6 R6 K9 ["format"]
       54 CALL                             R6 3 1
       55 MOVE                             R3 R6
       56 MOVE                             R4 R2
       57 DUPTABLE                         R5 K17 [{"Body", "Success", "StatusMessage", "StatusCode"}]
       58 SETTABLEKS                       R3 R5 K13 ["Body"]
       60 LOADB                            R6 1
       61 SETTABLEKS                       R6 R5 K14 ["Success"]
       63 LOADK                            R6 K18 ["OK"]
       64 SETTABLEKS                       R6 R5 K15 ["StatusMessage"]
       66 LOADN                            R6 200
       67 SETTABLEKS                       R6 R5 K16 ["StatusCode"]
       69 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetAllPluginPermissions"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Actions"]
       24 GETTABLEKS                       R3 R3 K8 ["SetLoadedPluginData"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K9 ["Util"]
       33 GETTABLEKS                       R4 R4 K10 ["Types"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K11 ["Tests"]
       42 GETTABLEKS                       R5 R5 K12 ["SyncFlag"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K13 [PROTO_0]
       46 DUPCLOSURE                       R6 K14 [PROTO_1]
       47 DUPCLOSURE                       R7 K15 [PROTO_2]
       48 DUPCLOSURE                       R8 K16 [PROTO_3]
       49 DUPCLOSURE                       R9 K17 [PROTO_5]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 DUPCLOSURE                       R10 K18 [PROTO_7]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 DUPCLOSURE                       R11 K19 [PROTO_8]
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 DUPCLOSURE                       R12 K20 [PROTO_9]
       59 CAPTURE                          VAL R10
       60 DUPCLOSURE                       R13 K21 [PROTO_10]
       61 DUPCLOSURE                       R14 K22 [PROTO_11]
       62 DUPCLOSURE                       R15 K23 [PROTO_12]
       63 DUPTABLE                         R16 K35 [{"generatePluginData", "generateInstalledPluginData", "generateInstalledPluginDataMap", "pluginStoreDataFromInstalledPluginData", "loadStoreWithPluginList", "loadStoreWithPermissions", "loadMockServiesAndStoreWithInstalledPluginData", "loadMockServicesAndStoreWithPluginPermissions", "generatePluginInfoUrl", "generatePluginInfoBody", "generatePluginInfoNetworkResponse"}]
       64 SETTABLEKS                       R5 R16 K24 ["generatePluginData"]
       66 SETTABLEKS                       R6 R16 K25 ["generateInstalledPluginData"]
       68 SETTABLEKS                       R7 R16 K26 ["generateInstalledPluginDataMap"]
       70 SETTABLEKS                       R8 R16 K27 ["pluginStoreDataFromInstalledPluginData"]
       72 SETTABLEKS                       R9 R16 K28 ["loadStoreWithPluginList"]
       74 SETTABLEKS                       R10 R16 K29 ["loadStoreWithPermissions"]
       76 SETTABLEKS                       R11 R16 K30 ["loadMockServiesAndStoreWithInstalledPluginData"]
       78 SETTABLEKS                       R12 R16 K31 ["loadMockServicesAndStoreWithPluginPermissions"]
       80 SETTABLEKS                       R13 R16 K32 ["generatePluginInfoUrl"]
       82 SETTABLEKS                       R14 R16 K33 ["generatePluginInfoBody"]
       84 SETTABLEKS                       R15 R16 K34 ["generatePluginInfoNetworkResponse"]
       86 RETURN                           R16 1
