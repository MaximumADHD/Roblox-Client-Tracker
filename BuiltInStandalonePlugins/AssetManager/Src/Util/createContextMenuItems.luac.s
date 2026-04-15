PROTO_0:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["getAssetTypes"]
        3 CALL                             R3 2 1
        4 GETTABLE                         R4 R3 R1
        5 JUMPIFNOT                        R4 ; [+9]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K1 ["count"]
        9 MOVE                             R6 R3
       10 CALL                             R5 1 1
       11 JUMPIFEQKN                       R5 K2 [1] ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 RETURN                           R4 1

PROTO_1:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getAssetTypes"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLE                         R8 R2 R6
        9 JUMPIFNOT                        R8 ; [+2]
       10 LOADB                            R8 1
       11 RETURN                           R8 1
       12 FORGLOOP                         R3 2 ; [-5]
       14 LOADB                            R3 0
       15 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R2 K0 ["%*abusereport/asset?id=%*"]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K1 ["BaseUrl"]
        4 GETUPVAL                         R5 1
        5 FASTCALL1                        TOSTRING R0 ; [+3]
        6 MOVE                             R8 R0
        7 GETIMPORT                        R7 K3 [tostring]
        9 CALL                             R7 1 1
       10 NAMECALL                         R5 R5 K4 ["UrlEncode"]
       12 CALL                             R5 2 1
       13 NAMECALL                         R2 R2 K5 ["format"]
       15 CALL                             R2 3 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R2 2
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K6 ["OpenBrowserWindow"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [1] ; [+8]
        3 GETTABLEN                        R1 R0 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["CopyToClipboard"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K2 ["JSONEncode"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K1 ["CopyToClipboard"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["OpenAssetConfigurationKey"]
        4 GETUPVAL                         R5 2
        5 DUPTABLE                         R7 K3 [{"id", "assetType"}]
        6 SETTABLEKS                       R0 R7 K1 ["id"]
        8 SETTABLEKS                       R1 R7 K2 ["assetType"]
       10 NAMECALL                         R5 R5 K4 ["JSONEncode"]
       12 CALL                             R5 2 -1
       13 NAMECALL                         R2 R2 K5 ["Fire"]
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R4 K0 ["Settings"]
        1 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R5 0
        5 MOVE                             R6 R1
        6 NAMECALL                         R3 R2 K2 ["SetNumberAsync"]
        8 CALL                             R3 3 0
        9 LOADK                            R5 K3 ["Actions"]
       10 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
       12 CALL                             R3 2 1
       13 DUPTABLE                         R6 K6 [{"Uri", "Checked"}]
       14 GETUPVAL                         R7 1
       15 SETTABLEKS                       R7 R6 K4 ["Uri"]
       17 LOADB                            R7 1
       18 SETTABLEKS                       R7 R6 K5 ["Checked"]
       20 NAMECALL                         R4 R3 K7 ["UpdateAsync"]
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["versionId"]
        2 GETIMPORT                        R2 K2 [pcall]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R1
        7 NAMECALL                         R3 R3 K3 ["TryInstallPlugin"]
        9 CALL                             R3 3 -1
       10 CALL                             R2 -1 2
       11 JUMPIF                           R2 ; [+9]
       12 GETIMPORT                        R4 K5 [warn]
       14 LOADK                            R6 K6 ["Failed to install plugin: %*"]
       15 MOVE                             R8 R3
       16 NAMECALL                         R6 R6 K7 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Error fetching plugin info for install: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 MOVE                             R4 R0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 DUPCLOSURE                       R6 K0 [PROTO_8]
        5 NAMECALL                         R2 R1 K1 ["fetchPluginInfoAsync"]
        7 CALL                             R2 4 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 DUPCLOSURE                       R6 K0 [PROTO_8]
        7 NAMECALL                         R2 R1 K1 ["fetchPluginInfoAsync"]
        9 CALL                             R2 4 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["%*abusereport/asset?id=%*"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K1 ["BaseUrl"]
        5 GETUPVAL                         R5 2
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R8 R0
        8 GETIMPORT                        R7 K3 [tostring]
       10 CALL                             R7 1 1
       11 NAMECALL                         R5 R5 K4 ["UrlEncode"]
       13 CALL                             R5 2 1
       14 NAMECALL                         R2 R2 K5 ["format"]
       16 CALL                             R2 3 1
       17 MOVE                             R1 R2
       18 GETUPVAL                         R2 3
       19 MOVE                             R4 R1
       20 NAMECALL                         R2 R2 K6 ["OpenBrowserWindow"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 MOVE                             R6 R0
        4 NAMECALL                         R4 R4 K0 ["IsPluginInstalled"]
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+21]
        8 DUPTABLE                         R7 K3 [{"Text", "OnItemClicked"}]
        9 LOADK                            R10 K4 ["ContextMenu"]
       10 LOADK                            R11 K5 ["PluginUpdate"]
       11 NAMECALL                         R8 R2 K6 ["getText"]
       13 CALL                             R8 3 1
       14 SETTABLEKS                       R8 R7 K1 ["Text"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R8 R7 K2 ["OnItemClicked"]
       22 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       24 MOVE                             R6 R3
       25 GETIMPORT                        R5 K9 [table.insert]
       27 CALL                             R5 2 0
       28 JUMP                             ; [+20]
       29 DUPTABLE                         R7 K3 [{"Text", "OnItemClicked"}]
       30 LOADK                            R10 K4 ["ContextMenu"]
       31 LOADK                            R11 K10 ["PluginInstall"]
       32 NAMECALL                         R8 R2 K6 ["getText"]
       34 CALL                             R8 3 1
       35 SETTABLEKS                       R8 R7 K1 ["Text"]
       37 NEWCLOSURE                       R8 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U0
       41 SETTABLEKS                       R8 R7 K2 ["OnItemClicked"]
       43 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       45 MOVE                             R6 R3
       46 GETIMPORT                        R5 K9 [table.insert]
       48 CALL                             R5 2 0
       49 DUPTABLE                         R7 K3 [{"Text", "OnItemClicked"}]
       50 LOADK                            R10 K4 ["ContextMenu"]
       51 LOADK                            R11 K11 ["PluginReport"]
       52 NAMECALL                         R8 R2 K6 ["getText"]
       54 CALL                             R8 3 1
       55 SETTABLEKS                       R8 R7 K1 ["Text"]
       57 NEWCLOSURE                       R8 P2
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 SETTABLEKS                       R8 R7 K2 ["OnItemClicked"]
       64 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       66 MOVE                             R6 R3
       67 GETIMPORT                        R5 K9 [table.insert]
       69 CALL                             R5 2 0
       70 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["OnOpenPlace"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["stagePlaceForRename"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 NAMECALL                         R1 R1 K0 ["getPlugin"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 3
        8 CALL                             R0 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 4
       11 GETUPVAL                         R2 3
       12 NAMECALL                         R0 R0 K1 ["ShowPlaceVersionHistoryDialog"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R3 0 0
        2 DUPTABLE                         R6 K2 [{"Text", "OnItemClicked"}]
        3 LOADK                            R9 K3 ["ContextMenu"]
        4 LOADK                            R10 K4 ["OpenFolder"]
        5 NAMECALL                         R7 R2 K5 ["getText"]
        7 CALL                             R7 3 1
        8 SETTABLEKS                       R7 R6 K0 ["Text"]
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R7 R6 K1 ["OnItemClicked"]
       15 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       17 MOVE                             R5 R3
       18 GETIMPORT                        R4 K8 [table.insert]
       20 CALL                             R4 2 0
       21 DUPTABLE                         R6 K2 [{"Text", "OnItemClicked"}]
       22 LOADK                            R9 K3 ["ContextMenu"]
       23 LOADK                            R10 K9 ["Rename"]
       24 NAMECALL                         R7 R2 K5 ["getText"]
       26 CALL                             R7 3 1
       27 SETTABLEKS                       R7 R6 K0 ["Text"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R7 R6 K1 ["OnItemClicked"]
       34 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       36 MOVE                             R5 R3
       37 GETIMPORT                        R4 K8 [table.insert]
       39 CALL                             R4 2 0
       40 DUPTABLE                         R6 K2 [{"Text", "OnItemClicked"}]
       41 LOADK                            R9 K3 ["ContextMenu"]
       42 LOADK                            R10 K10 ["ViewPlaceHistory"]
       43 NAMECALL                         R7 R2 K5 ["getText"]
       45 CALL                             R7 3 1
       46 SETTABLEKS                       R7 R6 K0 ["Text"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U2
       54 SETTABLEKS                       R7 R6 K1 ["OnItemClicked"]
       56 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       58 MOVE                             R5 R3
       59 GETIMPORT                        R4 K8 [table.insert]
       61 CALL                             R4 2 0
       62 MOVE                             R6 R0
       63 NAMECALL                         R4 R1 K11 ["isRootPlace"]
       65 CALL                             R4 2 1
       66 JUMPIF                           R4 ; [+21]
       67 DUPTABLE                         R6 K2 [{"Text", "OnItemClicked"}]
       68 LOADK                            R9 K3 ["ContextMenu"]
       69 LOADK                            R10 K12 ["RemoveFromExperience"]
       70 NAMECALL                         R7 R2 K5 ["getText"]
       72 CALL                             R7 3 1
       73 SETTABLEKS                       R7 R6 K0 ["Text"]
       75 NEWCLOSURE                       R7 P3
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R7 R6 K1 ["OnItemClicked"]
       82 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       84 MOVE                             R5 R3
       85 GETIMPORT                        R4 K8 [table.insert]
       87 CALL                             R4 2 0
       88 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 DUPTABLE                         R4 K1 [{"UseAnimationInstance"}]
        5 LOADB                            R5 1
        6 SETTABLEKS                       R5 R4 K0 ["UseAnimationInstance"]
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 DUPTABLE                         R4 K1 [{"UseAnimationInstance"}]
        5 LOADB                            R5 0
        6 SETTABLEKS                       R5 R4 K0 ["UseAnimationInstance"]
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["right_click_camera"]
        2 NAMECALL                         R0 R0 K1 ["setAnalyticsInsertAction"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["right_click_position"]
        2 NAMECALL                         R0 R0 K1 ["setAnalyticsInsertAction"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 DUPTABLE                         R4 K3 [{"UseAssetPosition"}]
       10 LOADB                            R5 1
       11 SETTABLEKS                       R5 R4 K2 ["UseAssetPosition"]
       13 CALL                             R0 4 0
       14 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEN                        R0 R1 1
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["getItemsCache"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K1 ["Uid"]
        9 MOVE                             R5 R0
       10 GETUPVAL                         R8 3
       11 GETTABLEKS                       R7 R8 K2 ["AssetInfoField"]
       13 GETTABLEKS                       R6 R7 K3 ["AssetId"]
       15 NAMECALL                         R2 R1 K4 ["getItemField"]
       17 CALL                             R2 4 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K1 ["Uid"]
       21 MOVE                             R6 R0
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R8 R9 K2 ["AssetInfoField"]
       25 GETTABLEKS                       R7 R8 K5 ["AssetType"]
       27 NAMECALL                         R3 R1 K4 ["getItemField"]
       29 CALL                             R3 4 1
       30 GETUPVAL                         R4 4
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R6 R7 K6 ["OpenAssetConfigurationKey"]
       34 GETUPVAL                         R7 6
       35 DUPTABLE                         R9 K9 [{"id", "assetType"}]
       36 SETTABLEKS                       R2 R9 K7 ["id"]
       38 SETTABLEKS                       R3 R9 K8 ["assetType"]
       40 NAMECALL                         R7 R7 K10 ["JSONEncode"]
       42 CALL                             R7 2 -1
       43 NAMECALL                         R4 R4 K11 ["Fire"]
       45 CALL                             R4 -1 0
       46 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R0 4 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 CALL                             R0 5 0
        7 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getItemsCache"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Uid"]
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R7 3
        9 GETTABLEKS                       R6 R7 K2 ["AssetInfoField"]
       11 GETTABLEKS                       R5 R6 K3 ["AssetId"]
       13 NAMECALL                         R1 R0 K4 ["getData"]
       15 CALL                             R1 4 1
       16 GETUPVAL                         R2 4
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K5 ["JSONEncode"]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 5
       22 NAMECALL                         R3 R3 K6 ["getPlugin"]
       24 CALL                             R3 1 1
       25 LOADK                            R5 K7 ["OnSelectItems"]
       26 MOVE                             R6 R2
       27 NAMECALL                         R3 R3 K8 ["Invoke"]
       29 CALL                             R3 3 0
       30 RETURN                           R0 0

PROTO_27:
        0 NEWTABLE                         R5 0 0
        2 NAMECALL                         R6 R1 K0 ["getCurrentScope"]
        4 CALL                             R6 1 1
        5 GETUPVAL                         R10 0
        6 GETTABLEKS                       R9 R10 K1 ["AssetType"]
        8 GETTABLEKS                       R8 R9 K2 ["Animation"]
       10 MOVE                             R11 R0
       11 NAMECALL                         R9 R2 K3 ["getAssetTypes"]
       13 CALL                             R9 2 1
       14 GETTABLE                         R7 R9 R8
       15 JUMPIFNOT                        R7 ; [+9]
       16 GETUPVAL                         R11 1
       17 GETTABLEKS                       R10 R11 K4 ["count"]
       19 MOVE                             R11 R9
       20 CALL                             R10 1 1
       21 JUMPIFEQKN                       R10 K5 [1] ; [+2]
       23 LOADB                            R7 0 +1
       24 LOADB                            R7 1
       25 JUMPIFNOT                        R7 ; [+48]
       26 NEWTABLE                         R9 1 2
       28 LOADK                            R14 K6 ["ContextMenu"]
       29 LOADK                            R15 K7 ["Insert"]
       30 NAMECALL                         R12 R4 K8 ["getText"]
       32 CALL                             R12 3 1
       33 SETTABLEKS                       R12 R9 K9 ["Text"]
       35 DUPTABLE                         R10 K11 [{"Text", "OnItemClicked"}]
       36 LOADK                            R13 K6 ["ContextMenu"]
       37 LOADK                            R14 K12 ["InsertAsAnimation"]
       38 NAMECALL                         R11 R4 K8 ["getText"]
       40 CALL                             R11 3 1
       41 SETTABLEKS                       R11 R10 K9 ["Text"]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R11 R10 K10 ["OnItemClicked"]
       50 DUPTABLE                         R11 K11 [{"Text", "OnItemClicked"}]
       51 LOADK                            R14 K6 ["ContextMenu"]
       52 LOADK                            R15 K13 ["InsertAsKeyframes"]
       53 NAMECALL                         R12 R4 K8 ["getText"]
       55 CALL                             R12 3 1
       56 SETTABLEKS                       R12 R11 K9 ["Text"]
       58 NEWCLOSURE                       R12 P1
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R12 R11 K10 ["OnItemClicked"]
       65 SETLIST                          R9 R10 2 [1]
       67 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       69 MOVE                             R8 R5
       70 GETIMPORT                        R7 K16 [table.insert]
       72 CALL                             R7 2 0
       73 JUMP                             ; [+56]
       74 NEWTABLE                         R9 1 2
       76 LENGTH                           R13 R0
       77 JUMPIFNOTEQKN                    R13 K5 [1] ; [+7]
       79 LOADK                            R14 K6 ["ContextMenu"]
       80 LOADK                            R15 K7 ["Insert"]
       81 NAMECALL                         R12 R4 K8 ["getText"]
       83 CALL                             R12 3 1
       84 JUMP                             ; [+5]
       85 LOADK                            R14 K6 ["ContextMenu"]
       86 LOADK                            R15 K17 ["InsertSelection"]
       87 NAMECALL                         R12 R4 K8 ["getText"]
       89 CALL                             R12 3 1
       90 SETTABLEKS                       R12 R9 K9 ["Text"]
       92 DUPTABLE                         R10 K11 [{"Text", "OnItemClicked"}]
       93 LOADK                            R13 K6 ["ContextMenu"]
       94 LOADK                            R14 K18 ["InsertAtCamera"]
       95 NAMECALL                         R11 R4 K8 ["getText"]
       97 CALL                             R11 3 1
       98 SETTABLEKS                       R11 R10 K9 ["Text"]
      100 NEWCLOSURE                       R11 P2
      101 CAPTURE                          VAL R2
      102 CAPTURE                          UPVAL U2
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R3
      105 SETTABLEKS                       R11 R10 K10 ["OnItemClicked"]
      107 DUPTABLE                         R11 K11 [{"Text", "OnItemClicked"}]
      108 LOADK                            R14 K6 ["ContextMenu"]
      109 LOADK                            R15 K19 ["InsertAtAssetPosition"]
      110 NAMECALL                         R12 R4 K8 ["getText"]
      112 CALL                             R12 3 1
      113 SETTABLEKS                       R12 R11 K9 ["Text"]
      115 NEWCLOSURE                       R12 P3
      116 CAPTURE                          VAL R2
      117 CAPTURE                          UPVAL U2
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R3
      120 SETTABLEKS                       R12 R11 K10 ["OnItemClicked"]
      122 SETLIST                          R9 R10 2 [1]
      124 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      126 MOVE                             R8 R5
      127 GETIMPORT                        R7 K16 [table.insert]
      129 CALL                             R7 2 0
      130 LENGTH                           R7 R0
      131 JUMPIFNOTEQKN                    R7 K5 [1] ; [+25]
      133 DUPTABLE                         R9 K11 [{"Text", "OnItemClicked"}]
      134 LOADK                            R12 K6 ["ContextMenu"]
      135 LOADK                            R13 K20 ["Edit"]
      136 NAMECALL                         R10 R4 K8 ["getText"]
      138 CALL                             R10 3 1
      139 SETTABLEKS                       R10 R9 K9 ["Text"]
      141 NEWCLOSURE                       R10 P4
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R6
      145 CAPTURE                          UPVAL U0
      146 CAPTURE                          UPVAL U3
      147 CAPTURE                          UPVAL U4
      148 CAPTURE                          UPVAL U5
      149 SETTABLEKS                       R10 R9 K10 ["OnItemClicked"]
      151 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      153 MOVE                             R8 R5
      154 GETIMPORT                        R7 K16 [table.insert]
      156 CALL                             R7 2 0
      157 GETUPVAL                         R7 6
      158 CALL                             R7 0 1
      159 JUMPIFNOT                        R7 ; [+76]
      160 LENGTH                           R7 R0
      161 LOADN                            R8 50
      162 JUMPIFNOTLT                      R7 R8 ; [+73]
      164 NEWTABLE                         R9 1 2
      166 LOADK                            R14 K6 ["ContextMenu"]
      167 LOADK                            R15 K21 ["QuickShare"]
      168 NAMECALL                         R12 R4 K8 ["getText"]
      170 CALL                             R12 3 1
      171 SETTABLEKS                       R12 R9 K9 ["Text"]
      173 DUPTABLE                         R10 K11 [{"Text", "OnItemClicked"}]
      174 LOADK                            R13 K6 ["ContextMenu"]
      175 LOADK                            R14 K22 ["WithCollaborators"]
      176 NAMECALL                         R11 R4 K8 ["getText"]
      178 CALL                             R11 3 1
      179 SETTABLEKS                       R11 R10 K9 ["Text"]
      181 NEWCLOSURE                       R11 P5
      182 CAPTURE                          UPVAL U7
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R11 R10 K10 ["OnItemClicked"]
      189 GETUPVAL                         R12 8
      190 CALL                             R12 0 1
      191 JUMPIFNOT                        R12 ; [+35]
      192 DUPTABLE                         R11 K24 [{"Text", "Enabled", "OnItemClicked"}]
      193 LOADK                            R14 K6 ["ContextMenu"]
      194 LOADK                            R15 K25 ["OpenUse"]
      195 NAMECALL                         R12 R4 K8 ["getText"]
      197 CALL                             R12 3 1
      198 SETTABLEKS                       R12 R11 K9 ["Text"]
      200 MOVE                             R15 R0
      201 NAMECALL                         R13 R2 K3 ["getAssetTypes"]
      203 CALL                             R13 2 1
      204 GETUPVAL                         R14 9
      205 LOADNIL                          R15
      206 LOADNIL                          R16
      207 FORGPREP                         R14
      208 GETTABLE                         R19 R13 R17
      209 JUMPIFNOT                        R19 ; [+2]
      210 LOADB                            R12 1
      211 JUMP                             ; [+3]
      212 FORGLOOP                         R14 2 ; [-5]
      214 LOADB                            R12 0
      215 SETTABLEKS                       R12 R11 K23 ["Enabled"]
      217 NEWCLOSURE                       R12 P6
      218 CAPTURE                          UPVAL U10
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R0
      224 SETTABLEKS                       R12 R11 K10 ["OnItemClicked"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R11
      228 SETLIST                          R9 R10 2 [1]
      230 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      232 MOVE                             R8 R5
      233 GETIMPORT                        R7 K16 [table.insert]
      235 CALL                             R7 2 0
      236 DUPTABLE                         R9 K11 [{"Text", "OnItemClicked"}]
      237 LOADK                            R12 K6 ["ContextMenu"]
      238 LOADK                            R13 K26 ["FindInExplorer"]
      239 NAMECALL                         R10 R4 K8 ["getText"]
      241 CALL                             R10 3 1
      242 SETTABLEKS                       R10 R9 K9 ["Text"]
      244 NEWCLOSURE                       R10 P7
      245 CAPTURE                          VAL R2
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R0
      248 CAPTURE                          UPVAL U0
      249 CAPTURE                          UPVAL U5
      250 CAPTURE                          VAL R1
      251 SETTABLEKS                       R10 R9 K10 ["OnItemClicked"]
      253 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      255 MOVE                             R8 R5
      256 GETIMPORT                        R7 K16 [table.insert]
      258 CALL                             R7 2 0
      259 RETURN                           R5 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["OnAddPlace"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LENGTH                           R1 R0
        2 JUMPIFNOTEQKN                    R1 K0 [1] ; [+8]
        4 GETTABLEN                        R1 R0 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["CopyToClipboard"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K2 ["JSONEncode"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 1
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K1 ["CopyToClipboard"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 NAMECALL                         R5 R5 K0 ["getColumns"]
        8 CALL                             R5 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 NAMECALL                         R3 R3 K0 ["getCurrentScope"]
        6 CALL                             R3 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearRecent"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["PluginController"]
        2 GETTABLEKS                       R2 R0 K1 ["ItemsController"]
        4 GETTABLEKS                       R3 R0 K2 ["LayoutController"]
        6 GETTABLEKS                       R4 R0 K3 ["Networking"]
        8 GETTABLEKS                       R5 R0 K4 ["Localization"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K5 ["keys"]
       13 NAMECALL                         R7 R2 K6 ["getSelection"]
       15 CALL                             R7 1 -1
       16 CALL                             R6 -1 1
       17 NAMECALL                         R7 R2 K7 ["getItemsCache"]
       19 CALL                             R7 1 1
       20 NAMECALL                         R8 R1 K8 ["getCurrentScope"]
       22 CALL                             R8 1 1
       23 NEWTABLE                         R9 0 0
       25 GETTABLEKS                       R12 R8 K9 ["Uid"]
       27 MOVE                             R13 R6
       28 GETUPVAL                         R16 1
       29 GETTABLEKS                       R15 R16 K10 ["AssetInfoField"]
       31 GETTABLEKS                       R14 R15 K11 ["AssetType"]
       33 NAMECALL                         R10 R7 K12 ["getData"]
       35 CALL                             R10 4 1
       36 LOADB                            R11 0
       37 LENGTH                           R12 R6
       38 JUMPIFNOTEQKN                    R12 K13 [1] ; [+11]
       40 GETTABLEN                        R12 R10 1
       41 GETUPVAL                         R15 1
       42 GETTABLEKS                       R14 R15 K11 ["AssetType"]
       44 GETTABLEKS                       R13 R14 K14 ["Plugin"]
       46 JUMPIFEQ                         R12 R13 ; [+2]
       48 LOADB                            R11 0 +1
       49 LOADB                            R11 1
       50 LOADB                            R12 0
       51 LENGTH                           R13 R6
       52 JUMPIFNOTEQKN                    R13 K13 [1] ; [+11]
       54 GETTABLEN                        R13 R10 1
       55 GETUPVAL                         R16 1
       56 GETTABLEKS                       R15 R16 K11 ["AssetType"]
       58 GETTABLEKS                       R14 R15 K15 ["Place"]
       60 JUMPIFEQ                         R13 R14 ; [+2]
       62 LOADB                            R12 0 +1
       63 LOADB                            R12 1
       64 LOADB                            R13 0
       65 MOVE                             R14 R10
       66 LOADNIL                          R15
       67 LOADNIL                          R16
       68 FORGPREP                         R14
       69 GETUPVAL                         R19 2
       70 MOVE                             R20 R18
       71 CALL                             R19 1 1
       72 JUMPIFNOT                        R19 ; [+2]
       73 LOADB                            R13 1
       74 JUMP                             ; [+2]
       75 FORGLOOP                         R14 2 ; [-7]
       77 GETTABLEKS                       R16 R8 K9 ["Uid"]
       79 GETTABLEN                        R17 R6 1
       80 GETUPVAL                         R20 1
       81 GETTABLEKS                       R19 R20 K10 ["AssetInfoField"]
       83 GETTABLEKS                       R18 R19 K16 ["AssetId"]
       85 NAMECALL                         R14 R7 K17 ["getItemField"]
       87 CALL                             R14 4 1
       88 JUMPIFNOT                        R11 ; [+11]
       89 GETUPVAL                         R16 0
       90 GETTABLEKS                       R15 R16 K18 ["append"]
       92 MOVE                             R16 R9
       93 GETUPVAL                         R17 3
       94 MOVE                             R18 R14
       95 MOVE                             R19 R4
       96 MOVE                             R20 R5
       97 CALL                             R17 3 1
       98 CALL                             R15 2 0
       99 JUMP                             ; [+25]
      100 JUMPIFNOT                        R12 ; [+11]
      101 GETUPVAL                         R16 0
      102 GETTABLEKS                       R15 R16 K18 ["append"]
      104 MOVE                             R16 R9
      105 GETUPVAL                         R17 4
      106 MOVE                             R18 R14
      107 MOVE                             R19 R1
      108 MOVE                             R20 R5
      109 CALL                             R17 3 1
      110 CALL                             R15 2 0
      111 JUMP                             ; [+13]
      112 JUMPIFNOT                        R13 ; [+12]
      113 GETUPVAL                         R16 0
      114 GETTABLEKS                       R15 R16 K18 ["append"]
      116 MOVE                             R16 R9
      117 GETUPVAL                         R17 5
      118 MOVE                             R18 R6
      119 MOVE                             R19 R1
      120 MOVE                             R20 R2
      121 MOVE                             R21 R4
      122 MOVE                             R22 R5
      123 CALL                             R17 5 1
      124 CALL                             R15 2 0
      125 LENGTH                           R15 R9
      126 LOADN                            R16 0
      127 JUMPIFNOTLT                      R16 R15 ; [+8]
      129 GETUPVAL                         R17 6
      130 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      132 MOVE                             R16 R9
      133 GETIMPORT                        R15 K21 [table.insert]
      135 CALL                             R15 2 0
      136 GETTABLEKS                       R15 R8 K22 ["Type"]
      138 GETUPVAL                         R18 1
      139 GETTABLEKS                       R17 R18 K23 ["ScopeType"]
      141 GETTABLEKS                       R16 R17 K24 ["ProjectPlaces"]
      143 JUMPIFNOTEQ                      R15 R16 ; [+26]
      145 DUPTABLE                         R17 K27 [{"Text", "OnItemClicked"}]
      146 LOADK                            R20 K28 ["ContextMenu"]
      147 LOADK                            R21 K29 ["AddNewPlace"]
      148 NAMECALL                         R18 R5 K30 ["getText"]
      150 CALL                             R18 3 1
      151 SETTABLEKS                       R18 R17 K25 ["Text"]
      153 NEWCLOSURE                       R18 P0
      154 CAPTURE                          VAL R1
      155 SETTABLEKS                       R18 R17 K26 ["OnItemClicked"]
      157 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      159 MOVE                             R16 R9
      160 GETIMPORT                        R15 K21 [table.insert]
      162 CALL                             R15 2 0
      163 GETUPVAL                         R17 6
      164 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      166 MOVE                             R16 R9
      167 GETIMPORT                        R15 K21 [table.insert]
      169 CALL                             R15 2 0
      170 LENGTH                           R15 R6
      171 LOADN                            R16 0
      172 JUMPIFNOTLT                      R16 R15 ; [+90]
      174 GETTABLEKS                       R17 R8 K9 ["Uid"]
      176 MOVE                             R18 R6
      177 GETUPVAL                         R21 1
      178 GETTABLEKS                       R20 R21 K10 ["AssetInfoField"]
      180 GETTABLEKS                       R19 R20 K16 ["AssetId"]
      182 NAMECALL                         R15 R7 K12 ["getData"]
      184 CALL                             R15 4 1
      185 NEWTABLE                         R18 1 2
      187 LOADK                            R23 K28 ["ContextMenu"]
      188 LOADK                            R24 K31 ["Copy"]
      189 NAMECALL                         R21 R5 K30 ["getText"]
      191 CALL                             R21 3 1
      192 SETTABLEKS                       R21 R18 K25 ["Text"]
      194 DUPTABLE                         R19 K27 [{"Text", "OnItemClicked"}]
      195 LENGTH                           R21 R6
      196 JUMPIFNOTEQKN                    R21 K13 [1] ; [+7]
      198 LOADK                            R22 K28 ["ContextMenu"]
      199 LOADK                            R23 K32 ["CopyId"]
      200 NAMECALL                         R20 R5 K30 ["getText"]
      202 CALL                             R20 3 1
      203 JUMP                             ; [+5]
      204 LOADK                            R22 K28 ["ContextMenu"]
      205 LOADK                            R23 K33 ["CopyIds"]
      206 NAMECALL                         R20 R5 K30 ["getText"]
      208 CALL                             R20 3 1
      209 SETTABLEKS                       R20 R19 K25 ["Text"]
      211 NEWCLOSURE                       R20 P1
      212 CAPTURE                          VAL R15
      213 CAPTURE                          UPVAL U7
      214 CAPTURE                          UPVAL U8
      215 SETTABLEKS                       R20 R19 K26 ["OnItemClicked"]
      217 DUPTABLE                         R20 K27 [{"Text", "OnItemClicked"}]
      218 LOADK                            R23 K28 ["ContextMenu"]
      219 LOADK                            R24 K34 ["CopyInfo"]
      220 NAMECALL                         R21 R5 K30 ["getText"]
      222 CALL                             R21 3 1
      223 SETTABLEKS                       R21 R20 K25 ["Text"]
      225 NEWCLOSURE                       R21 P2
      226 CAPTURE                          UPVAL U9
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R5
      230 CAPTURE                          VAL R6
      231 CAPTURE                          VAL R3
      232 SETTABLEKS                       R21 R20 K26 ["OnItemClicked"]
      234 SETLIST                          R18 R19 2 [1]
      236 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
      238 MOVE                             R17 R9
      239 GETIMPORT                        R16 K21 [table.insert]
      241 CALL                             R16 2 0
      242 DUPTABLE                         R18 K27 [{"Text", "OnItemClicked"}]
      243 LOADK                            R21 K28 ["ContextMenu"]
      244 LOADK                            R22 K35 ["ViewInBrowser"]
      245 NAMECALL                         R19 R5 K30 ["getText"]
      247 CALL                             R19 3 1
      248 SETTABLEKS                       R19 R18 K25 ["Text"]
      250 NEWCLOSURE                       R19 P3
      251 CAPTURE                          UPVAL U10
      252 CAPTURE                          VAL R15
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R1
      255 SETTABLEKS                       R19 R18 K26 ["OnItemClicked"]
      257 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
      259 MOVE                             R17 R9
      260 GETIMPORT                        R16 K21 [table.insert]
      262 CALL                             R16 2 0
      263 GETUPVAL                         R15 11
      264 CALL                             R15 0 1
      265 JUMPIFNOT                        R15 ; [+27]
      266 GETTABLEKS                       R15 R8 K22 ["Type"]
      268 GETUPVAL                         R18 1
      269 GETTABLEKS                       R17 R18 K23 ["ScopeType"]
      271 GETTABLEKS                       R16 R17 K36 ["RecentUploads"]
      273 JUMPIFNOTEQ                      R15 R16 ; [+19]
      275 DUPTABLE                         R17 K27 [{"Text", "OnItemClicked"}]
      276 LOADK                            R20 K28 ["ContextMenu"]
      277 LOADK                            R21 K37 ["ClearRecent"]
      278 NAMECALL                         R18 R5 K30 ["getText"]
      280 CALL                             R18 3 1
      281 SETTABLEKS                       R18 R17 K25 ["Text"]
      283 NEWCLOSURE                       R18 P4
      284 CAPTURE                          VAL R2
      285 SETTABLEKS                       R18 R17 K26 ["OnItemClicked"]
      287 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      289 MOVE                             R16 R9
      290 GETIMPORT                        R15 K21 [table.insert]
      292 CALL                             R15 2 0
      293 RETURN                           R9 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["LayoutController"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["toggleColumn"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_35:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["asSortedList"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R3 R5 K1 ["AssetInfoField"]
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 GETUPVAL                         R9 1
       11 GETTABLE                         R8 R9 R6
       12 NOT                              R7 R8
       13 JUMPIFNOT                        R7 ; [+41]
       14 GETTABLEKS                       R8 R0 K2 ["LayoutController"]
       16 MOVE                             R10 R6
       17 NAMECALL                         R8 R8 K3 ["getColumnIndex"]
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+10]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R7 R8 K4 ["get"]
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R9 R10 K5 ["AvailableImages"]
       27 GETTABLEKS                       R8 R9 K6 ["Checkmark"]
       29 CALL                             R7 1 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R7
       32 DUPTABLE                         R10 K10 [{"Text", "OnItemClicked", "Icon"}]
       33 GETTABLEKS                       R11 R0 K11 ["Localization"]
       35 LOADK                            R13 K12 ["AssetProperty"]
       36 MOVE                             R14 R6
       37 NAMECALL                         R11 R11 K13 ["getText"]
       39 CALL                             R11 3 1
       40 SETTABLEKS                       R11 R10 K7 ["Text"]
       42 NEWCLOSURE                       R11 P0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R6
       45 SETTABLEKS                       R11 R10 K8 ["OnItemClicked"]
       47 SETTABLEKS                       R7 R10 K9 ["Icon"]
       49 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       51 MOVE                             R9 R1
       52 GETIMPORT                        R8 K16 [table.insert]
       54 CALL                             R8 2 0
       55 FORGLOOP                         R2 2 ; [-46]
       57 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleVisibleInventory"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["enableScopeOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshScopes"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_39:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFNOT                        R2 ; [+28]
        3 GETTABLEKS                       R4 R2 K0 ["Type"]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K1 ["ScopeType"]
        8 GETTABLEKS                       R5 R6 K2 ["Group"]
       10 JUMPIFNOTEQ                      R4 R5 ; [+20]
       12 DUPTABLE                         R6 K5 [{"Text", "OnItemClicked"}]
       13 LOADK                            R9 K6 ["Scopes"]
       14 LOADK                            R10 K7 ["Hide"]
       15 NAMECALL                         R7 R0 K8 ["getText"]
       17 CALL                             R7 3 1
       18 SETTABLEKS                       R7 R6 K3 ["Text"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R7 R6 K4 ["OnItemClicked"]
       25 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       27 MOVE                             R5 R3
       28 GETIMPORT                        R4 K11 [table.insert]
       30 CALL                             R4 2 0
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K12 ["append"]
       34 MOVE                             R5 R3
       35 NEWTABLE                         R6 0 2
       37 DUPTABLE                         R7 K5 [{"Text", "OnItemClicked"}]
       38 LOADK                            R10 K6 ["Scopes"]
       39 LOADK                            R11 K13 ["Customize"]
       40 NAMECALL                         R8 R0 K8 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K3 ["Text"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R8 R7 K4 ["OnItemClicked"]
       49 DUPTABLE                         R8 K5 [{"Text", "OnItemClicked"}]
       50 LOADK                            R11 K6 ["Scopes"]
       51 LOADK                            R12 K14 ["Refresh"]
       52 NAMECALL                         R9 R0 K8 ["getText"]
       54 CALL                             R9 3 1
       55 SETTABLEKS                       R9 R8 K3 ["Text"]
       57 NEWCLOSURE                       R9 P2
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R9 R8 K4 ["OnItemClicked"]
       61 SETLIST                          R6 R7 2 [1]
       63 CALL                             R4 2 0
       64 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Util"]
       36 GETTABLEKS                       R5 R6 K13 ["insertItems"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Util"]
       45 GETTABLEKS                       R6 R7 K14 ["Images"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K8 ["Src"]
       52 GETTABLEKS                       R8 R9 K12 ["Util"]
       54 GETTABLEKS                       R7 R8 K15 ["isInsertable"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K8 ["Src"]
       61 GETTABLEKS                       R9 R10 K12 ["Util"]
       63 GETTABLEKS                       R8 R9 K16 ["openItemsInBrowser"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K8 ["Src"]
       70 GETTABLEKS                       R10 R11 K12 ["Util"]
       72 GETTABLEKS                       R9 R10 K17 ["updatePlugin"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K8 ["Src"]
       79 GETTABLEKS                       R11 R12 K12 ["Util"]
       81 GETTABLEKS                       R10 R11 K18 ["copyAssetInfosToClipboard"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R14 R0 K8 ["Src"]
       88 GETTABLEKS                       R13 R14 K12 ["Util"]
       90 GETTABLEKS                       R12 R13 K19 ["Dialogs"]
       92 GETTABLEKS                       R11 R12 K20 ["openConfirmPlaceRemoval"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R15 R0 K8 ["Src"]
       99 GETTABLEKS                       R14 R15 K12 ["Util"]
      101 GETTABLEKS                       R13 R14 K19 ["Dialogs"]
      103 GETTABLEKS                       R12 R13 K21 ["openConfirmShareOpenUse"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R16 R0 K8 ["Src"]
      110 GETTABLEKS                       R15 R16 K12 ["Util"]
      112 GETTABLEKS                       R14 R15 K19 ["Dialogs"]
      114 GETTABLEKS                       R13 R14 K22 ["openQuickShare"]
      116 CALL                             R12 1 1
      117 NEWTABLE                         R13 0 0
      119 GETIMPORT                        R14 K5 [require]
      121 GETTABLEKS                       R17 R0 K8 ["Src"]
      123 GETTABLEKS                       R16 R17 K12 ["Util"]
      125 GETTABLEKS                       R15 R16 K23 ["Services"]
      127 CALL                             R14 1 1
      128 GETIMPORT                        R15 K25 [game]
      130 LOADK                            R17 K26 ["ContentProvider"]
      131 NAMECALL                         R15 R15 K27 ["GetService"]
      133 CALL                             R15 2 1
      134 GETTABLEKS                       R16 R14 K27 ["GetService"]
      136 LOADK                            R17 K28 ["BrowserService"]
      137 CALL                             R16 1 1
      138 GETIMPORT                        R17 K25 [game]
      140 LOADK                            R19 K29 ["HttpService"]
      141 NAMECALL                         R17 R17 K27 ["GetService"]
      143 CALL                             R17 2 1
      144 GETIMPORT                        R18 K25 [game]
      146 LOADK                            R20 K30 ["MemStorageService"]
      147 NAMECALL                         R18 R18 K27 ["GetService"]
      149 CALL                             R18 2 1
      150 GETTABLEKS                       R19 R14 K27 ["GetService"]
      152 LOADK                            R20 K31 ["StudioService"]
      153 CALL                             R19 1 1
      154 GETIMPORT                        R20 K25 [game]
      156 LOADK                            R22 K32 ["PlaceVersionHistory"]
      157 NAMECALL                         R20 R20 K33 ["GetEngineFeature"]
      159 CALL                             R20 2 1
      160 GETIMPORT                        R21 K5 [require]
      162 GETTABLEKS                       R24 R0 K8 ["Src"]
      164 GETTABLEKS                       R23 R24 K34 ["Flags"]
      166 GETTABLEKS                       R22 R23 K35 ["getFFlagAmrQuickShare"]
      168 CALL                             R21 1 1
      169 GETIMPORT                        R22 K5 [require]
      171 GETTABLEKS                       R25 R0 K8 ["Src"]
      173 GETTABLEKS                       R24 R25 K34 ["Flags"]
      175 GETTABLEKS                       R23 R24 K36 ["getFFlagAmrOpenUseShare"]
      177 CALL                             R22 1 1
      178 GETIMPORT                        R23 K5 [require]
      180 GETTABLEKS                       R26 R0 K8 ["Src"]
      182 GETTABLEKS                       R25 R26 K34 ["Flags"]
      184 GETTABLEKS                       R24 R25 K37 ["getFFlagAmrRecents"]
      186 CALL                             R23 1 1
      187 NEWTABLE                         R24 4 0
      189 GETTABLEKS                       R26 R2 K38 ["AssetType"]
      191 GETTABLEKS                       R25 R26 K39 ["Mesh"]
      193 LOADB                            R26 1
      194 SETTABLE                         R26 R24 R25
      195 GETTABLEKS                       R26 R2 K38 ["AssetType"]
      197 GETTABLEKS                       R25 R26 K40 ["Image"]
      199 LOADB                            R26 1
      200 SETTABLE                         R26 R24 R25
      201 GETTABLEKS                       R26 R2 K38 ["AssetType"]
      203 GETTABLEKS                       R25 R26 K41 ["Decal"]
      205 LOADB                            R26 1
      206 SETTABLE                         R26 R24 R25
      207 DUPTABLE                         R25 K46 [{"DataModel", "PluginId", "Category", "ItemId"}]
      208 LOADK                            R26 K47 ["Standalone"]
      209 SETTABLEKS                       R26 R25 K42 ["DataModel"]
      211 LOADK                            R26 K32 ["PlaceVersionHistory"]
      212 SETTABLEKS                       R26 R25 K43 ["PluginId"]
      214 LOADK                            R26 K48 ["Actions"]
      215 SETTABLEKS                       R26 R25 K44 ["Category"]
      217 LOADK                            R26 K49 ["Toggle"]
      218 SETTABLEKS                       R26 R25 K45 ["ItemId"]
      220 DUPTABLE                         R26 K46 [{"DataModel", "PluginId", "Category", "ItemId"}]
      221 LOADK                            R27 K47 ["Standalone"]
      222 SETTABLEKS                       R27 R26 K42 ["DataModel"]
      224 LOADK                            R27 K32 ["PlaceVersionHistory"]
      225 SETTABLEKS                       R27 R26 K43 ["PluginId"]
      227 LOADK                            R27 K50 ["Settings"]
      228 SETTABLEKS                       R27 R26 K44 ["Category"]
      230 LOADK                            R27 K51 ["PlaceId"]
      231 SETTABLEKS                       R27 R26 K45 ["ItemId"]
      233 DUPTABLE                         R27 K53 [{"ShowSeparator"}]
      234 LOADB                            R28 1
      235 SETTABLEKS                       R28 R27 K52 ["ShowSeparator"]
      237 NEWTABLE                         R28 8 0
      239 GETTABLEKS                       R30 R2 K54 ["AssetInfoField"]
      241 GETTABLEKS                       R29 R30 K55 ["DisplayName"]
      243 LOADB                            R30 1
      244 SETTABLE                         R30 R28 R29
      245 GETTABLEKS                       R30 R2 K54 ["AssetInfoField"]
      247 GETTABLEKS                       R29 R30 K56 ["ModerationStatus"]
      249 LOADB                            R30 1
      250 SETTABLE                         R30 R28 R29
      251 GETTABLEKS                       R30 R2 K54 ["AssetInfoField"]
      253 GETTABLEKS                       R29 R30 K57 ["VersionNumber"]
      255 LOADB                            R30 1
      256 SETTABLE                         R30 R28 R29
      257 GETTABLEKS                       R30 R2 K54 ["AssetInfoField"]
      259 GETTABLEKS                       R29 R30 K58 ["IsPackage"]
      261 LOADB                            R30 1
      262 SETTABLE                         R30 R28 R29
      263 GETTABLEKS                       R30 R2 K54 ["AssetInfoField"]
      265 GETTABLEKS                       R29 R30 K59 ["Archived"]
      267 LOADB                            R30 1
      268 SETTABLE                         R30 R28 R29
      269 GETTABLEKS                       R30 R2 K54 ["AssetInfoField"]
      271 GETTABLEKS                       R29 R30 K60 ["Path"]
      273 LOADB                            R30 1
      274 SETTABLE                         R30 R28 R29
      275 GETTABLEKS                       R30 R2 K54 ["AssetInfoField"]
      277 GETTABLEKS                       R29 R30 K61 ["SearchRank"]
      279 LOADB                            R30 1
      280 SETTABLE                         R30 R28 R29
      281 DUPCLOSURE                       R29 K62 [PROTO_0]
      282 CAPTURE                          VAL R1
      283 DUPCLOSURE                       R30 K63 [PROTO_1]
      284 CAPTURE                          VAL R24
      285 DUPCLOSURE                       R31 K64 [PROTO_2]
      286 CAPTURE                          VAL R15
      287 CAPTURE                          VAL R17
      288 CAPTURE                          VAL R16
      289 DUPCLOSURE                       R32 K65 [PROTO_3]
      290 CAPTURE                          VAL R19
      291 CAPTURE                          VAL R17
      292 DUPCLOSURE                       R33 K66 [PROTO_4]
      293 CAPTURE                          VAL R28
      294 DUPCLOSURE                       R34 K67 [PROTO_5]
      295 CAPTURE                          VAL R18
      296 CAPTURE                          VAL R3
      297 CAPTURE                          VAL R17
      298 DUPCLOSURE                       R35 K68 [PROTO_6]
      299 CAPTURE                          VAL R26
      300 CAPTURE                          VAL R25
      301 DUPCLOSURE                       R36 K69 [PROTO_9]
      302 CAPTURE                          VAL R19
      303 DUPCLOSURE                       R37 K70 [PROTO_13]
      304 CAPTURE                          VAL R19
      305 CAPTURE                          VAL R8
      306 CAPTURE                          VAL R15
      307 CAPTURE                          VAL R17
      308 CAPTURE                          VAL R16
      309 DUPCLOSURE                       R38 K71 [PROTO_18]
      310 CAPTURE                          VAL R20
      311 CAPTURE                          VAL R35
      312 CAPTURE                          VAL R19
      313 CAPTURE                          VAL R10
      314 DUPCLOSURE                       R39 K72 [PROTO_27]
      315 CAPTURE                          VAL R2
      316 CAPTURE                          VAL R1
      317 CAPTURE                          VAL R4
      318 CAPTURE                          VAL R18
      319 CAPTURE                          VAL R3
      320 CAPTURE                          VAL R17
      321 CAPTURE                          VAL R21
      322 CAPTURE                          VAL R12
      323 CAPTURE                          VAL R22
      324 CAPTURE                          VAL R24
      325 CAPTURE                          VAL R11
      326 DUPCLOSURE                       R40 K73 [PROTO_33]
      327 CAPTURE                          VAL R1
      328 CAPTURE                          VAL R2
      329 CAPTURE                          VAL R6
      330 CAPTURE                          VAL R37
      331 CAPTURE                          VAL R38
      332 CAPTURE                          VAL R39
      333 CAPTURE                          VAL R27
      334 CAPTURE                          VAL R19
      335 CAPTURE                          VAL R17
      336 CAPTURE                          VAL R9
      337 CAPTURE                          VAL R7
      338 CAPTURE                          VAL R23
      339 GETTABLEKS                       R42 R2 K74 ["MenuContext"]
      341 GETTABLEKS                       R41 R42 K75 ["Asset"]
      343 SETTABLE                         R40 R13 R41
      344 GETTABLEKS                       R42 R2 K74 ["MenuContext"]
      346 GETTABLEKS                       R41 R42 K76 ["Column"]
      348 DUPCLOSURE                       R42 K77 [PROTO_35]
      349 CAPTURE                          VAL R2
      350 CAPTURE                          VAL R28
      351 CAPTURE                          VAL R5
      352 SETTABLE                         R42 R13 R41
      353 GETTABLEKS                       R42 R2 K74 ["MenuContext"]
      355 GETTABLEKS                       R41 R42 K78 ["Sidebar"]
      357 DUPCLOSURE                       R42 K79 [PROTO_39]
      358 CAPTURE                          VAL R2
      359 CAPTURE                          VAL R1
      360 SETTABLE                         R42 R13 R41
      361 RETURN                           R13 1
