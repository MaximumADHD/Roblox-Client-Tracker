PROTO_0:
        0 DUPTABLE                         R2 K7 [{[1], ["CreatorTargetId"], ["Name"], ["CreatorType"] = "User", ["HasVerifiedBadge"] = False}]
        1 SETTABLEKS                       R0 R2 K0 ["Id"]
        3 SETTABLEKS                       R0 R2 K1 ["CreatorTargetId"]
        5 SETTABLEKS                       R1 R2 K2 ["Name"]
        7 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R2 K15 [{[1], ["installedVersion"] = 1, ["latestVersion"] = 1, ["name"] = "", ["description"] = "", ["creator"], ["enabled"] = True, ["isModerated"] = False, ["autoUpdateEnabled"] = False, ["updated"] = "2025-09-01T07:47:46Z"}]
        1 SETTABLEKS                       R0 R2 K0 ["assetId"]
        3 SETTABLEKS                       R1 R2 K7 ["creator"]
        5 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R1 K10 [{[1] = "", ["AssetVersion"] = 1, ["Enabled"] = True, ["Moderated"] = False, ["LatestVersion"] = 1, ["AutoUpdate"] = False}]
        1 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TOSTRING R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K1 [tostring]
       10 CALL                             R7 1 1
       11 DUPTABLE                         R8 K12 [{["Name"] = "", ["AssetVersion"] = 1, ["Enabled"] = True, ["Moderated"] = False, ["LatestVersion"] = 1, ["AutoUpdate"] = False}]
       12 SETTABLE                         R8 R1 R7
       13 FORGLOOP                         R2 2 ; [-8]
       15 RETURN                           R1 1

PROTO_4:
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
       18 DUPTABLE                         R8 K18 [{["assetId"], ["installedVersion"], ["latestVersion"], ["name"], ["description"] = "", ["creator"] = , ["enabled"], ["isModerated"], ["autoUpdateEnabled"], ["updated"] = "2025-09-01T07:47:46Z"}]
       19 SETTABLEKS                       R7 R8 K5 ["assetId"]
       21 GETTABLEKS                       R9 R6 K19 ["AssetVersion"]
       23 SETTABLEKS                       R9 R8 K6 ["installedVersion"]
       25 GETTABLEKS                       R9 R6 K20 ["LatestVersion"]
       27 SETTABLEKS                       R9 R8 K7 ["latestVersion"]
       29 GETTABLEKS                       R9 R6 K21 ["Name"]
       31 SETTABLEKS                       R9 R8 K8 ["name"]
       33 GETTABLEKS                       R9 R6 K22 ["Enabled"]
       35 SETTABLEKS                       R9 R8 K13 ["enabled"]
       37 GETTABLEKS                       R9 R6 K23 ["Moderated"]
       39 SETTABLEKS                       R9 R8 K14 ["isModerated"]
       41 GETTABLEKS                       R9 R6 K24 ["AutoUpdate"]
       43 SETTABLEKS                       R9 R8 K15 ["autoUpdateEnabled"]
       45 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       47 MOVE                             R10 R1
       48 MOVE                             R11 R8
       49 GETIMPORT                        R9 K27 [table.insert]
       51 CALL                             R9 2 0
       52 FORGLOOP                         R2 2 ; [-47]
       54 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["mark"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["mark"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R2 R0 K0 ["Develop"]
        5 GETTABLEKS                       R2 R2 K1 ["V1"]
        7 GETTABLEKS                       R2 R2 K2 ["plugin"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 NAMECALL                         R2 R2 K3 ["getUrl"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1
       15 LENGTH                           R4 R1
       16 JUMPIFEQKN                       R4 K4 [1] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       22 LOADK                            R4 K5 ["generatePluginInfoUrl only supports 1 asset"]
       23 GETIMPORT                        R2 K7 [assert]
       25 CALL                             R2 2 0
       26 LOADK                            R2 K8 ["https://apis.roblox.com/studio-plugin-api/v1/plugins?pluginIds=%d"]
       27 GETTABLEN                        R4 R1 1
       28 NAMECALL                         R2 R2 K9 ["format"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_12:
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

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R10 R7 K0 ["assetId"]
        8 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       10 MOVE                             R9 R2
       11 GETIMPORT                        R8 K3 [table.insert]
       13 CALL                             R8 2 0
       14 FORGLOOP                         R3 2 ; [-9]
       16 GETUPVAL                         R4 0
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+12]
       19 GETTABLEKS                       R3 R0 K4 ["Develop"]
       21 GETTABLEKS                       R3 R3 K5 ["V1"]
       23 GETTABLEKS                       R3 R3 K6 ["plugin"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 1
       27 NAMECALL                         R3 R3 K7 ["getUrl"]
       29 CALL                             R3 1 1
       30 JUMP                             ; [+16]
       31 LENGTH                           R6 R2
       32 JUMPIFEQKN                       R6 K8 [1] ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       38 LOADK                            R6 K9 ["generatePluginInfoUrl only supports 1 asset"]
       39 GETIMPORT                        R4 K11 [assert]
       41 CALL                             R4 2 0
       42 LOADK                            R3 K12 ["https://apis.roblox.com/studio-plugin-api/v1/plugins?pluginIds=%d"]
       43 GETTABLEN                        R5 R2 1
       44 NAMECALL                         R3 R3 K13 ["format"]
       46 CALL                             R3 2 1
       47 LENGTH                           R7 R1
       48 JUMPIFEQKN                       R7 K8 [1] ; [+2]
       50 LOADB                            R6 0 +1
       51 LOADB                            R6 1
       52 FASTCALL2K                       ASSERT R6 K14 ; [+4]
       54 LOADK                            R7 K14 ["generatePluginInfoBody only supports 1 asset"]
       55 GETIMPORT                        R5 K11 [assert]
       57 CALL                             R5 2 0
       58 GETTABLEN                        R5 R1 1
       59 GETTABLEKS                       R5 R5 K0 ["assetId"]
       61 GETTABLEN                        R6 R1 1
       62 GETTABLEKS                       R6 R6 K15 ["name"]
       64 LOADK                            R7 K16 ["{\n    \"data\": [\n        {\n            \"id\": %d,\n            \"name\": \"%s\",\n            \"description\": \"bar\",\n            \"commentsEnabled\": false,\n            \"versionId\": 1,\n            \"created\": \"2019-03-17T19:28:52.967Z\",\n            \"updated\": \"2025-09-01T07:47:46.463Z\"\n        }\n    ]\n}\n"]
       65 MOVE                             R9 R5
       66 MOVE                             R10 R6
       67 NAMECALL                         R7 R7 K13 ["format"]
       69 CALL                             R7 3 1
       70 MOVE                             R4 R7
       71 MOVE                             R5 R3
       72 DUPTABLE                         R6 K24 [{["Body"], ["Success"] = True, ["StatusMessage"] = "OK", ["StatusCode"] = 200}]
       73 SETTABLEKS                       R4 R6 K17 ["Body"]
       75 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioPluginManagementUpgradeHttp"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Actions"]
       24 GETTABLEKS                       R3 R3 K9 ["SetAllPluginPermissions"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K8 ["Actions"]
       33 GETTABLEKS                       R4 R4 K10 ["SetLoadedPluginData"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K11 ["Util"]
       42 GETTABLEKS                       R5 R5 K12 ["Types"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K13 ["Tests"]
       51 GETTABLEKS                       R6 R6 K14 ["SyncFlag"]
       53 CALL                             R5 1 1
       54 DUPCLOSURE                       R6 K15 [PROTO_0]
       55 DUPCLOSURE                       R7 K16 [PROTO_1]
       56 DUPCLOSURE                       R8 K17 [PROTO_2]
       57 DUPCLOSURE                       R9 K18 [PROTO_3]
       58 DUPCLOSURE                       R10 K19 [PROTO_4]
       59 DUPCLOSURE                       R11 K20 [PROTO_6]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 DUPCLOSURE                       R12 K21 [PROTO_8]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R2
       65 DUPCLOSURE                       R13 K22 [PROTO_9]
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R11
       68 DUPCLOSURE                       R14 K23 [PROTO_10]
       69 CAPTURE                          VAL R12
       70 DUPCLOSURE                       R15 K24 [PROTO_11]
       71 CAPTURE                          VAL R1
       72 DUPCLOSURE                       R16 K25 [PROTO_12]
       73 DUPCLOSURE                       R17 K26 [PROTO_13]
       74 CAPTURE                          VAL R1
       75 DUPTABLE                         R18 K39 [{"generateCreator", "generatePluginData", "generateInstalledPluginData", "generateInstalledPluginDataMap", "pluginStoreDataFromInstalledPluginData", "loadStoreWithPluginList", "loadStoreWithPermissions", "loadMockServiesAndStoreWithInstalledPluginData", "loadMockServicesAndStoreWithPluginPermissions", "generatePluginInfoUrl", "generatePluginInfoBody", "generatePluginInfoNetworkResponse"}]
       76 SETTABLEKS                       R6 R18 K27 ["generateCreator"]
       78 SETTABLEKS                       R7 R18 K28 ["generatePluginData"]
       80 SETTABLEKS                       R8 R18 K29 ["generateInstalledPluginData"]
       82 SETTABLEKS                       R9 R18 K30 ["generateInstalledPluginDataMap"]
       84 SETTABLEKS                       R10 R18 K31 ["pluginStoreDataFromInstalledPluginData"]
       86 SETTABLEKS                       R11 R18 K32 ["loadStoreWithPluginList"]
       88 SETTABLEKS                       R12 R18 K33 ["loadStoreWithPermissions"]
       90 SETTABLEKS                       R13 R18 K34 ["loadMockServiesAndStoreWithInstalledPluginData"]
       92 SETTABLEKS                       R14 R18 K35 ["loadMockServicesAndStoreWithPluginPermissions"]
       94 SETTABLEKS                       R15 R18 K36 ["generatePluginInfoUrl"]
       96 SETTABLEKS                       R16 R18 K37 ["generatePluginInfoBody"]
       98 SETTABLEKS                       R17 R18 K38 ["generatePluginInfoNetworkResponse"]
      100 RETURN                           R18 1
