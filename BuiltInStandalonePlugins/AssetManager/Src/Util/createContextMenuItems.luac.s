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
        1 LOADK                            R4 K0 ["OpenAssetConfiguration"]
        2 GETUPVAL                         R5 1
        3 DUPTABLE                         R7 K3 [{"id", "assetType"}]
        4 SETTABLEKS                       R0 R7 K1 ["id"]
        6 SETTABLEKS                       R1 R7 K2 ["assetType"]
        8 NAMECALL                         R5 R5 K4 ["JSONEncode"]
       10 CALL                             R5 2 -1
       11 NAMECALL                         R2 R2 K5 ["Fire"]
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R2 3
        6 GETUPVAL                         R3 4
        7 CALL                             R0 3 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 4
       11 NAMECALL                         R0 R0 K0 ["DEPRECATED_stageRemovePlace"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

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
       66 JUMPIF                           R4 ; [+22]
       67 DUPTABLE                         R6 K2 [{"Text", "OnItemClicked"}]
       68 LOADK                            R9 K3 ["ContextMenu"]
       69 LOADK                            R10 K12 ["RemoveFromExperience"]
       70 NAMECALL                         R7 R2 K5 ["getText"]
       72 CALL                             R7 3 1
       73 SETTABLEKS                       R7 R6 K0 ["Text"]
       75 NEWCLOSURE                       R7 P3
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R7 R6 K1 ["OnItemClicked"]
       83 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       85 MOVE                             R5 R3
       86 GETIMPORT                        R4 K8 [table.insert]
       88 CALL                             R4 2 0
       89 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K1 [{"UseAnimationInstance"}]
        5 LOADB                            R5 1
        6 SETTABLEKS                       R5 R4 K0 ["UseAnimationInstance"]
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 2
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
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 2
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["right_click_position"]
        2 NAMECALL                         R0 R0 K1 ["setAnalyticsInsertAction"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K3 [{"UseAssetPosition"}]
       10 LOADB                            R5 1
       11 SETTABLEKS                       R5 R4 K2 ["UseAssetPosition"]
       13 CALL                             R0 4 0
       14 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["getItems"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R4 1
        5 GETTABLEN                        R3 R4 1
        6 GETTABLE                         R1 R2 R3
        7 GETTABLEKS                       R0 R1 K1 ["AssetType"]
        9 GETUPVAL                         R2 1
       10 GETTABLEN                        R1 R2 1
       11 GETUPVAL                         R2 2
       12 LOADK                            R4 K2 ["OpenAssetConfiguration"]
       13 GETUPVAL                         R5 3
       14 DUPTABLE                         R7 K5 [{"id", "assetType"}]
       15 SETTABLEKS                       R1 R7 K3 ["id"]
       17 SETTABLEKS                       R0 R7 K4 ["assetType"]
       19 NAMECALL                         R5 R5 K6 ["JSONEncode"]
       21 CALL                             R5 2 -1
       22 NAMECALL                         R2 R2 K7 ["Fire"]
       24 CALL                             R2 -1 0
       25 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

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
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K1 ["getPlugin"]
        8 CALL                             R1 1 1
        9 LOADK                            R3 K2 ["OnSelectItems"]
       10 MOVE                             R4 R0
       11 NAMECALL                         R1 R1 K3 ["Invoke"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R7 0
        1 CALL                             R7 0 1
        2 JUMPIFEQKB                       R7 FALSE ; [+2]
        4 LOADB                            R6 0 +1
        5 LOADB                            R6 1
        6 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        8 LOADK                            R7 K0 ["Deprecated function used"]
        9 GETIMPORT                        R5 K2 [assert]
       11 CALL                             R5 2 0
       12 NEWTABLE                         R5 0 0
       14 GETUPVAL                         R6 1
       15 CALL                             R6 0 1
       16 JUMPIFNOT                        R6 ; [+67]
       17 GETUPVAL                         R9 2
       18 GETTABLEKS                       R8 R9 K3 ["AssetType"]
       20 GETTABLEKS                       R7 R8 K4 ["Animation"]
       22 MOVE                             R10 R0
       23 NAMECALL                         R8 R2 K5 ["getAssetTypes"]
       25 CALL                             R8 2 1
       26 GETTABLE                         R6 R8 R7
       27 JUMPIFNOT                        R6 ; [+9]
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R9 R10 K6 ["count"]
       31 MOVE                             R10 R8
       32 CALL                             R9 1 1
       33 JUMPIFEQKN                       R9 K7 [1] ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 JUMPIFNOT                        R6 ; [+46]
       38 NEWTABLE                         R8 1 2
       40 LOADK                            R13 K8 ["ContextMenu"]
       41 LOADK                            R14 K9 ["Insert"]
       42 NAMECALL                         R11 R4 K10 ["getText"]
       44 CALL                             R11 3 1
       45 SETTABLEKS                       R11 R8 K11 ["Text"]
       47 DUPTABLE                         R9 K13 [{"Text", "OnItemClicked"}]
       48 LOADK                            R12 K8 ["ContextMenu"]
       49 LOADK                            R13 K14 ["InsertAsAnimation"]
       50 NAMECALL                         R10 R4 K10 ["getText"]
       52 CALL                             R10 3 1
       53 SETTABLEKS                       R10 R9 K11 ["Text"]
       55 NEWCLOSURE                       R10 P0
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R10 R9 K12 ["OnItemClicked"]
       61 DUPTABLE                         R10 K13 [{"Text", "OnItemClicked"}]
       62 LOADK                            R13 K8 ["ContextMenu"]
       63 LOADK                            R14 K15 ["InsertAsKeyframes"]
       64 NAMECALL                         R11 R4 K10 ["getText"]
       66 CALL                             R11 3 1
       67 SETTABLEKS                       R11 R10 K11 ["Text"]
       69 NEWCLOSURE                       R11 P1
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R11 R10 K12 ["OnItemClicked"]
       75 SETLIST                          R8 R9 2 [1]
       77 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       79 MOVE                             R7 R5
       80 GETIMPORT                        R6 K18 [table.insert]
       82 CALL                             R6 2 0
       83 JUMP                             ; [+54]
       84 NEWTABLE                         R8 1 2
       86 LENGTH                           R12 R0
       87 JUMPIFNOTEQKN                    R12 K7 [1] ; [+7]
       89 LOADK                            R13 K8 ["ContextMenu"]
       90 LOADK                            R14 K9 ["Insert"]
       91 NAMECALL                         R11 R4 K10 ["getText"]
       93 CALL                             R11 3 1
       94 JUMP                             ; [+5]
       95 LOADK                            R13 K8 ["ContextMenu"]
       96 LOADK                            R14 K19 ["InsertSelection"]
       97 NAMECALL                         R11 R4 K10 ["getText"]
       99 CALL                             R11 3 1
      100 SETTABLEKS                       R11 R8 K11 ["Text"]
      102 DUPTABLE                         R9 K13 [{"Text", "OnItemClicked"}]
      103 LOADK                            R12 K8 ["ContextMenu"]
      104 LOADK                            R13 K20 ["InsertAtCamera"]
      105 NAMECALL                         R10 R4 K10 ["getText"]
      107 CALL                             R10 3 1
      108 SETTABLEKS                       R10 R9 K11 ["Text"]
      110 NEWCLOSURE                       R10 P2
      111 CAPTURE                          VAL R2
      112 CAPTURE                          UPVAL U4
      113 CAPTURE                          VAL R3
      114 SETTABLEKS                       R10 R9 K12 ["OnItemClicked"]
      116 DUPTABLE                         R10 K13 [{"Text", "OnItemClicked"}]
      117 LOADK                            R13 K8 ["ContextMenu"]
      118 LOADK                            R14 K21 ["InsertAtAssetPosition"]
      119 NAMECALL                         R11 R4 K10 ["getText"]
      121 CALL                             R11 3 1
      122 SETTABLEKS                       R11 R10 K11 ["Text"]
      124 NEWCLOSURE                       R11 P3
      125 CAPTURE                          VAL R2
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          VAL R3
      128 SETTABLEKS                       R11 R10 K12 ["OnItemClicked"]
      130 SETLIST                          R8 R9 2 [1]
      132 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      134 MOVE                             R7 R5
      135 GETIMPORT                        R6 K18 [table.insert]
      137 CALL                             R6 2 0
      138 LENGTH                           R6 R0
      139 JUMPIFNOTEQKN                    R6 K7 [1] ; [+22]
      141 DUPTABLE                         R8 K13 [{"Text", "OnItemClicked"}]
      142 LOADK                            R11 K8 ["ContextMenu"]
      143 LOADK                            R12 K22 ["Edit"]
      144 NAMECALL                         R9 R4 K10 ["getText"]
      146 CALL                             R9 3 1
      147 SETTABLEKS                       R9 R8 K11 ["Text"]
      149 NEWCLOSURE                       R9 P4
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U5
      153 CAPTURE                          UPVAL U6
      154 SETTABLEKS                       R9 R8 K12 ["OnItemClicked"]
      156 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      158 MOVE                             R7 R5
      159 GETIMPORT                        R6 K18 [table.insert]
      161 CALL                             R6 2 0
      162 GETUPVAL                         R6 7
      163 CALL                             R6 0 1
      164 JUMPIFNOT                        R6 ; [+94]
      165 LENGTH                           R6 R0
      166 LOADN                            R7 50
      167 JUMPIFNOTLT                      R6 R7 ; [+91]
      169 GETUPVAL                         R6 8
      170 CALL                             R6 0 1
      171 JUMPIFNOT                        R6 ; [+66]
      172 MOVE                             R9 R0
      173 NAMECALL                         R7 R2 K5 ["getAssetTypes"]
      175 CALL                             R7 2 1
      176 GETUPVAL                         R8 9
      177 LOADNIL                          R9
      178 LOADNIL                          R10
      179 FORGPREP                         R8
      180 GETTABLE                         R13 R7 R11
      181 JUMPIFNOT                        R13 ; [+2]
      182 LOADB                            R6 1
      183 JUMP                             ; [+3]
      184 FORGLOOP                         R8 2 ; [-5]
      186 LOADB                            R6 0
      187 JUMPIFNOT                        R6 ; [+50]
      188 NEWTABLE                         R8 1 2
      190 LOADK                            R13 K8 ["ContextMenu"]
      191 LOADK                            R14 K23 ["QuickShare"]
      192 NAMECALL                         R11 R4 K10 ["getText"]
      194 CALL                             R11 3 1
      195 SETTABLEKS                       R11 R8 K11 ["Text"]
      197 DUPTABLE                         R9 K13 [{"Text", "OnItemClicked"}]
      198 LOADK                            R12 K8 ["ContextMenu"]
      199 LOADK                            R13 K24 ["WithCollaborators"]
      200 NAMECALL                         R10 R4 K10 ["getText"]
      202 CALL                             R10 3 1
      203 SETTABLEKS                       R10 R9 K11 ["Text"]
      205 NEWCLOSURE                       R10 P5
      206 CAPTURE                          UPVAL U10
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R0
      210 SETTABLEKS                       R10 R9 K12 ["OnItemClicked"]
      212 DUPTABLE                         R10 K13 [{"Text", "OnItemClicked"}]
      213 LOADK                            R13 K8 ["ContextMenu"]
      214 LOADK                            R14 K25 ["OpenUse"]
      215 NAMECALL                         R11 R4 K10 ["getText"]
      217 CALL                             R11 3 1
      218 SETTABLEKS                       R11 R10 K11 ["Text"]
      220 NEWCLOSURE                       R11 P6
      221 CAPTURE                          UPVAL U11
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R4
      226 CAPTURE                          VAL R0
      227 SETTABLEKS                       R11 R10 K12 ["OnItemClicked"]
      229 SETLIST                          R8 R9 2 [1]
      231 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      233 MOVE                             R7 R5
      234 GETIMPORT                        R6 K18 [table.insert]
      236 CALL                             R6 2 0
      237 JUMP                             ; [+21]
      238 DUPTABLE                         R8 K13 [{"Text", "OnItemClicked"}]
      239 LOADK                            R11 K8 ["ContextMenu"]
      240 LOADK                            R12 K23 ["QuickShare"]
      241 NAMECALL                         R9 R4 K10 ["getText"]
      243 CALL                             R9 3 1
      244 SETTABLEKS                       R9 R8 K11 ["Text"]
      246 NEWCLOSURE                       R9 P7
      247 CAPTURE                          UPVAL U10
      248 CAPTURE                          VAL R1
      249 CAPTURE                          VAL R4
      250 CAPTURE                          VAL R0
      251 SETTABLEKS                       R9 R8 K12 ["OnItemClicked"]
      253 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      255 MOVE                             R7 R5
      256 GETIMPORT                        R6 K18 [table.insert]
      258 CALL                             R6 2 0
      259 GETUPVAL                         R6 12
      260 CALL                             R6 0 1
      261 JUMPIFNOT                        R6 ; [+20]
      262 DUPTABLE                         R8 K13 [{"Text", "OnItemClicked"}]
      263 LOADK                            R11 K8 ["ContextMenu"]
      264 LOADK                            R12 K26 ["FindInExplorer"]
      265 NAMECALL                         R9 R4 K10 ["getText"]
      267 CALL                             R9 3 1
      268 SETTABLEKS                       R9 R8 K11 ["Text"]
      270 NEWCLOSURE                       R9 P8
      271 CAPTURE                          UPVAL U6
      272 CAPTURE                          VAL R0
      273 CAPTURE                          VAL R1
      274 SETTABLEKS                       R9 R8 K12 ["OnItemClicked"]
      276 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      278 MOVE                             R7 R5
      279 GETIMPORT                        R6 K18 [table.insert]
      281 CALL                             R6 2 0
      282 RETURN                           R5 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 DUPTABLE                         R4 K1 [{"UseAnimationInstance"}]
        5 LOADB                            R5 1
        6 SETTABLEKS                       R5 R4 K0 ["UseAnimationInstance"]
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 DUPTABLE                         R4 K1 [{"UseAnimationInstance"}]
        5 LOADB                            R5 0
        6 SETTABLEKS                       R5 R4 K0 ["UseAnimationInstance"]
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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
       31 LOADK                            R6 K6 ["OpenAssetConfiguration"]
       32 GETUPVAL                         R7 5
       33 DUPTABLE                         R9 K9 [{"id", "assetType"}]
       34 SETTABLEKS                       R2 R9 K7 ["id"]
       36 SETTABLEKS                       R3 R9 K8 ["assetType"]
       38 NAMECALL                         R7 R7 K10 ["JSONEncode"]
       40 CALL                             R7 2 -1
       41 NAMECALL                         R4 R4 K11 ["Fire"]
       43 CALL                             R4 -1 0
       44 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 CALL                             R0 5 0
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
        0 NEWTABLE                         R5 0 0
        2 NAMECALL                         R6 R1 K0 ["getCurrentScope"]
        4 CALL                             R6 1 1
        5 GETUPVAL                         R7 0
        6 CALL                             R7 0 1
        7 JUMPIFNOT                        R7 ; [+69]
        8 GETUPVAL                         R10 1
        9 GETTABLEKS                       R9 R10 K1 ["AssetType"]
       11 GETTABLEKS                       R8 R9 K2 ["Animation"]
       13 MOVE                             R11 R0
       14 NAMECALL                         R9 R2 K3 ["getAssetTypes"]
       16 CALL                             R9 2 1
       17 GETTABLE                         R7 R9 R8
       18 JUMPIFNOT                        R7 ; [+9]
       19 GETUPVAL                         R11 2
       20 GETTABLEKS                       R10 R11 K4 ["count"]
       22 MOVE                             R11 R9
       23 CALL                             R10 1 1
       24 JUMPIFEQKN                       R10 K5 [1] ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 JUMPIFNOT                        R7 ; [+48]
       29 NEWTABLE                         R9 1 2
       31 LOADK                            R14 K6 ["ContextMenu"]
       32 LOADK                            R15 K7 ["Insert"]
       33 NAMECALL                         R12 R4 K8 ["getText"]
       35 CALL                             R12 3 1
       36 SETTABLEKS                       R12 R9 K9 ["Text"]
       38 DUPTABLE                         R10 K11 [{"Text", "OnItemClicked"}]
       39 LOADK                            R13 K6 ["ContextMenu"]
       40 LOADK                            R14 K12 ["InsertAsAnimation"]
       41 NAMECALL                         R11 R4 K8 ["getText"]
       43 CALL                             R11 3 1
       44 SETTABLEKS                       R11 R10 K9 ["Text"]
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R11 R10 K10 ["OnItemClicked"]
       53 DUPTABLE                         R11 K11 [{"Text", "OnItemClicked"}]
       54 LOADK                            R14 K6 ["ContextMenu"]
       55 LOADK                            R15 K13 ["InsertAsKeyframes"]
       56 NAMECALL                         R12 R4 K8 ["getText"]
       58 CALL                             R12 3 1
       59 SETTABLEKS                       R12 R11 K9 ["Text"]
       61 NEWCLOSURE                       R12 P1
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R12 R11 K10 ["OnItemClicked"]
       68 SETLIST                          R9 R10 2 [1]
       70 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       72 MOVE                             R8 R5
       73 GETIMPORT                        R7 K16 [table.insert]
       75 CALL                             R7 2 0
       76 JUMP                             ; [+56]
       77 NEWTABLE                         R9 1 2
       79 LENGTH                           R13 R0
       80 JUMPIFNOTEQKN                    R13 K5 [1] ; [+7]
       82 LOADK                            R14 K6 ["ContextMenu"]
       83 LOADK                            R15 K7 ["Insert"]
       84 NAMECALL                         R12 R4 K8 ["getText"]
       86 CALL                             R12 3 1
       87 JUMP                             ; [+5]
       88 LOADK                            R14 K6 ["ContextMenu"]
       89 LOADK                            R15 K17 ["InsertSelection"]
       90 NAMECALL                         R12 R4 K8 ["getText"]
       92 CALL                             R12 3 1
       93 SETTABLEKS                       R12 R9 K9 ["Text"]
       95 DUPTABLE                         R10 K11 [{"Text", "OnItemClicked"}]
       96 LOADK                            R13 K6 ["ContextMenu"]
       97 LOADK                            R14 K18 ["InsertAtCamera"]
       98 NAMECALL                         R11 R4 K8 ["getText"]
      100 CALL                             R11 3 1
      101 SETTABLEKS                       R11 R10 K9 ["Text"]
      103 NEWCLOSURE                       R11 P2
      104 CAPTURE                          VAL R2
      105 CAPTURE                          UPVAL U3
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R11 R10 K10 ["OnItemClicked"]
      110 DUPTABLE                         R11 K11 [{"Text", "OnItemClicked"}]
      111 LOADK                            R14 K6 ["ContextMenu"]
      112 LOADK                            R15 K19 ["InsertAtAssetPosition"]
      113 NAMECALL                         R12 R4 K8 ["getText"]
      115 CALL                             R12 3 1
      116 SETTABLEKS                       R12 R11 K9 ["Text"]
      118 NEWCLOSURE                       R12 P3
      119 CAPTURE                          VAL R2
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R3
      123 SETTABLEKS                       R12 R11 K10 ["OnItemClicked"]
      125 SETLIST                          R9 R10 2 [1]
      127 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      129 MOVE                             R8 R5
      130 GETIMPORT                        R7 K16 [table.insert]
      132 CALL                             R7 2 0
      133 LENGTH                           R7 R0
      134 JUMPIFNOTEQKN                    R7 K5 [1] ; [+24]
      136 DUPTABLE                         R9 K11 [{"Text", "OnItemClicked"}]
      137 LOADK                            R12 K6 ["ContextMenu"]
      138 LOADK                            R13 K20 ["Edit"]
      139 NAMECALL                         R10 R4 K8 ["getText"]
      141 CALL                             R10 3 1
      142 SETTABLEKS                       R10 R9 K9 ["Text"]
      144 NEWCLOSURE                       R10 P4
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R6
      148 CAPTURE                          UPVAL U1
      149 CAPTURE                          UPVAL U4
      150 CAPTURE                          UPVAL U5
      151 SETTABLEKS                       R10 R9 K10 ["OnItemClicked"]
      153 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      155 MOVE                             R8 R5
      156 GETIMPORT                        R7 K16 [table.insert]
      158 CALL                             R7 2 0
      159 GETUPVAL                         R7 6
      160 CALL                             R7 0 1
      161 JUMPIFNOT                        R7 ; [+94]
      162 LENGTH                           R7 R0
      163 LOADN                            R8 50
      164 JUMPIFNOTLT                      R7 R8 ; [+91]
      166 GETUPVAL                         R7 7
      167 CALL                             R7 0 1
      168 JUMPIFNOT                        R7 ; [+66]
      169 MOVE                             R10 R0
      170 NAMECALL                         R8 R2 K3 ["getAssetTypes"]
      172 CALL                             R8 2 1
      173 GETUPVAL                         R9 8
      174 LOADNIL                          R10
      175 LOADNIL                          R11
      176 FORGPREP                         R9
      177 GETTABLE                         R14 R8 R12
      178 JUMPIFNOT                        R14 ; [+2]
      179 LOADB                            R7 1
      180 JUMP                             ; [+3]
      181 FORGLOOP                         R9 2 ; [-5]
      183 LOADB                            R7 0
      184 JUMPIFNOT                        R7 ; [+50]
      185 NEWTABLE                         R9 1 2
      187 LOADK                            R14 K6 ["ContextMenu"]
      188 LOADK                            R15 K21 ["QuickShare"]
      189 NAMECALL                         R12 R4 K8 ["getText"]
      191 CALL                             R12 3 1
      192 SETTABLEKS                       R12 R9 K9 ["Text"]
      194 DUPTABLE                         R10 K11 [{"Text", "OnItemClicked"}]
      195 LOADK                            R13 K6 ["ContextMenu"]
      196 LOADK                            R14 K22 ["WithCollaborators"]
      197 NAMECALL                         R11 R4 K8 ["getText"]
      199 CALL                             R11 3 1
      200 SETTABLEKS                       R11 R10 K9 ["Text"]
      202 NEWCLOSURE                       R11 P5
      203 CAPTURE                          UPVAL U9
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R0
      207 SETTABLEKS                       R11 R10 K10 ["OnItemClicked"]
      209 DUPTABLE                         R11 K11 [{"Text", "OnItemClicked"}]
      210 LOADK                            R14 K6 ["ContextMenu"]
      211 LOADK                            R15 K23 ["OpenUse"]
      212 NAMECALL                         R12 R4 K8 ["getText"]
      214 CALL                             R12 3 1
      215 SETTABLEKS                       R12 R11 K9 ["Text"]
      217 NEWCLOSURE                       R12 P6
      218 CAPTURE                          UPVAL U10
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R0
      224 SETTABLEKS                       R12 R11 K10 ["OnItemClicked"]
      226 SETLIST                          R9 R10 2 [1]
      228 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      230 MOVE                             R8 R5
      231 GETIMPORT                        R7 K16 [table.insert]
      233 CALL                             R7 2 0
      234 JUMP                             ; [+21]
      235 DUPTABLE                         R9 K11 [{"Text", "OnItemClicked"}]
      236 LOADK                            R12 K6 ["ContextMenu"]
      237 LOADK                            R13 K21 ["QuickShare"]
      238 NAMECALL                         R10 R4 K8 ["getText"]
      240 CALL                             R10 3 1
      241 SETTABLEKS                       R10 R9 K9 ["Text"]
      243 NEWCLOSURE                       R10 P7
      244 CAPTURE                          UPVAL U9
      245 CAPTURE                          VAL R1
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R0
      248 SETTABLEKS                       R10 R9 K10 ["OnItemClicked"]
      250 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      252 MOVE                             R8 R5
      253 GETIMPORT                        R7 K16 [table.insert]
      255 CALL                             R7 2 0
      256 GETUPVAL                         R7 11
      257 CALL                             R7 0 1
      258 JUMPIFNOT                        R7 ; [+23]
      259 DUPTABLE                         R9 K11 [{"Text", "OnItemClicked"}]
      260 LOADK                            R12 K6 ["ContextMenu"]
      261 LOADK                            R13 K24 ["FindInExplorer"]
      262 NAMECALL                         R10 R4 K8 ["getText"]
      264 CALL                             R10 3 1
      265 SETTABLEKS                       R10 R9 K9 ["Text"]
      267 NEWCLOSURE                       R10 P8
      268 CAPTURE                          VAL R2
      269 CAPTURE                          VAL R6
      270 CAPTURE                          VAL R0
      271 CAPTURE                          UPVAL U1
      272 CAPTURE                          UPVAL U5
      273 CAPTURE                          VAL R1
      274 SETTABLEKS                       R10 R9 K10 ["OnItemClicked"]
      276 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      278 MOVE                             R8 R5
      279 GETIMPORT                        R7 K16 [table.insert]
      281 CALL                             R7 2 0
      282 RETURN                           R5 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["OnAddPlace"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 NAMECALL                         R3 R3 K0 ["getCurrentScope"]
        6 CALL                             R3 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearRecent"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_45:
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
      172 JUMPIFNOTLT                      R16 R15 ; [+123]
      174 GETTABLEKS                       R17 R8 K9 ["Uid"]
      176 MOVE                             R18 R6
      177 GETUPVAL                         R21 1
      178 GETTABLEKS                       R20 R21 K10 ["AssetInfoField"]
      180 GETTABLEKS                       R19 R20 K16 ["AssetId"]
      182 NAMECALL                         R15 R7 K12 ["getData"]
      184 CALL                             R15 4 1
      185 GETUPVAL                         R16 7
      186 CALL                             R16 0 1
      187 JUMPIFNOT                        R16 ; [+58]
      188 NEWTABLE                         R18 1 2
      190 LOADK                            R23 K28 ["ContextMenu"]
      191 LOADK                            R24 K31 ["Copy"]
      192 NAMECALL                         R21 R5 K30 ["getText"]
      194 CALL                             R21 3 1
      195 SETTABLEKS                       R21 R18 K25 ["Text"]
      197 DUPTABLE                         R19 K27 [{"Text", "OnItemClicked"}]
      198 LENGTH                           R21 R6
      199 JUMPIFNOTEQKN                    R21 K13 [1] ; [+7]
      201 LOADK                            R22 K28 ["ContextMenu"]
      202 LOADK                            R23 K32 ["CopyId"]
      203 NAMECALL                         R20 R5 K30 ["getText"]
      205 CALL                             R20 3 1
      206 JUMP                             ; [+5]
      207 LOADK                            R22 K28 ["ContextMenu"]
      208 LOADK                            R23 K33 ["CopyIds"]
      209 NAMECALL                         R20 R5 K30 ["getText"]
      211 CALL                             R20 3 1
      212 SETTABLEKS                       R20 R19 K25 ["Text"]
      214 NEWCLOSURE                       R20 P1
      215 CAPTURE                          VAL R15
      216 CAPTURE                          UPVAL U8
      217 CAPTURE                          UPVAL U9
      218 SETTABLEKS                       R20 R19 K26 ["OnItemClicked"]
      220 DUPTABLE                         R20 K27 [{"Text", "OnItemClicked"}]
      221 LOADK                            R23 K28 ["ContextMenu"]
      222 LOADK                            R24 K34 ["CopyInfo"]
      223 NAMECALL                         R21 R5 K30 ["getText"]
      225 CALL                             R21 3 1
      226 SETTABLEKS                       R21 R20 K25 ["Text"]
      228 NEWCLOSURE                       R21 P2
      229 CAPTURE                          UPVAL U10
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R1
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R6
      234 CAPTURE                          VAL R3
      235 SETTABLEKS                       R21 R20 K26 ["OnItemClicked"]
      237 SETLIST                          R18 R19 2 [1]
      239 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
      241 MOVE                             R17 R9
      242 GETIMPORT                        R16 K21 [table.insert]
      244 CALL                             R16 2 0
      245 JUMP                             ; [+29]
      246 DUPTABLE                         R18 K27 [{"Text", "OnItemClicked"}]
      247 LENGTH                           R20 R6
      248 JUMPIFNOTEQKN                    R20 K13 [1] ; [+7]
      250 LOADK                            R21 K28 ["ContextMenu"]
      251 LOADK                            R22 K32 ["CopyId"]
      252 NAMECALL                         R19 R5 K30 ["getText"]
      254 CALL                             R19 3 1
      255 JUMP                             ; [+5]
      256 LOADK                            R21 K28 ["ContextMenu"]
      257 LOADK                            R22 K33 ["CopyIds"]
      258 NAMECALL                         R19 R5 K30 ["getText"]
      260 CALL                             R19 3 1
      261 SETTABLEKS                       R19 R18 K25 ["Text"]
      263 NEWCLOSURE                       R19 P3
      264 CAPTURE                          VAL R15
      265 CAPTURE                          UPVAL U8
      266 CAPTURE                          UPVAL U9
      267 SETTABLEKS                       R19 R18 K26 ["OnItemClicked"]
      269 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
      271 MOVE                             R17 R9
      272 GETIMPORT                        R16 K21 [table.insert]
      274 CALL                             R16 2 0
      275 DUPTABLE                         R18 K27 [{"Text", "OnItemClicked"}]
      276 LOADK                            R21 K28 ["ContextMenu"]
      277 LOADK                            R22 K35 ["ViewInBrowser"]
      278 NAMECALL                         R19 R5 K30 ["getText"]
      280 CALL                             R19 3 1
      281 SETTABLEKS                       R19 R18 K25 ["Text"]
      283 NEWCLOSURE                       R19 P4
      284 CAPTURE                          UPVAL U11
      285 CAPTURE                          VAL R15
      286 CAPTURE                          VAL R10
      287 CAPTURE                          VAL R1
      288 SETTABLEKS                       R19 R18 K26 ["OnItemClicked"]
      290 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
      292 MOVE                             R17 R9
      293 GETIMPORT                        R16 K21 [table.insert]
      295 CALL                             R16 2 0
      296 GETUPVAL                         R15 12
      297 CALL                             R15 0 1
      298 JUMPIFNOT                        R15 ; [+30]
      299 GETUPVAL                         R15 13
      300 CALL                             R15 0 1
      301 JUMPIFNOT                        R15 ; [+27]
      302 GETTABLEKS                       R15 R8 K22 ["Type"]
      304 GETUPVAL                         R18 1
      305 GETTABLEKS                       R17 R18 K23 ["ScopeType"]
      307 GETTABLEKS                       R16 R17 K36 ["RecentUploads"]
      309 JUMPIFNOTEQ                      R15 R16 ; [+19]
      311 DUPTABLE                         R17 K27 [{"Text", "OnItemClicked"}]
      312 LOADK                            R20 K28 ["ContextMenu"]
      313 LOADK                            R21 K37 ["ClearRecent"]
      314 NAMECALL                         R18 R5 K30 ["getText"]
      316 CALL                             R18 3 1
      317 SETTABLEKS                       R18 R17 K25 ["Text"]
      319 NEWCLOSURE                       R18 P5
      320 CAPTURE                          VAL R2
      321 SETTABLEKS                       R18 R17 K26 ["OnItemClicked"]
      323 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
      325 MOVE                             R16 R9
      326 GETIMPORT                        R15 K21 [table.insert]
      328 CALL                             R15 2 0
      329 RETURN                           R9 1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["OnAddPlace"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_51:
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
       17 MOVE                             R9 R6
       18 NAMECALL                         R7 R2 K7 ["findSpecialAssets"]
       20 CALL                             R7 2 1
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R10 R11 K8 ["AssetType"]
       24 GETTABLEKS                       R9 R10 K9 ["Plugin"]
       26 GETTABLE                         R8 R7 R9
       27 JUMPIFNOT                        R8 ; [+5]
       28 LENGTH                           R9 R6
       29 JUMPIFEQKN                       R9 K10 [1] ; [+2]
       31 LOADB                            R8 0 +1
       32 LOADB                            R8 1
       33 GETUPVAL                         R12 1
       34 GETTABLEKS                       R11 R12 K8 ["AssetType"]
       36 GETTABLEKS                       R10 R11 K11 ["Place"]
       38 GETTABLE                         R9 R7 R10
       39 JUMPIFNOT                        R9 ; [+5]
       40 LENGTH                           R10 R6
       41 JUMPIFEQKN                       R10 K10 [1] ; [+2]
       43 LOADB                            R9 0 +1
       44 LOADB                            R9 1
       45 LOADN                            R10 0
       46 MOVE                             R11 R7
       47 LOADNIL                          R12
       48 LOADNIL                          R13
       49 FORGPREP                         R11
       50 LENGTH                           R16 R15
       51 ADD                              R10 R10 R16
       52 FORGLOOP                         R11 2 ; [-3]
       54 LENGTH                           R12 R6
       55 JUMPIFLT                         R10 R12 ; [+2]
       57 LOADB                            R11 0 +1
       58 LOADB                            R11 1
       59 NEWTABLE                         R12 0 0
       61 JUMPIFNOT                        R8 ; [+11]
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R13 R14 K12 ["append"]
       65 MOVE                             R14 R12
       66 GETUPVAL                         R15 2
       67 GETTABLEN                        R16 R6 1
       68 MOVE                             R17 R4
       69 MOVE                             R18 R5
       70 CALL                             R15 3 1
       71 CALL                             R13 2 0
       72 JUMP                             ; [+25]
       73 JUMPIFNOT                        R9 ; [+11]
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R13 R14 K12 ["append"]
       77 MOVE                             R14 R12
       78 GETUPVAL                         R15 3
       79 GETTABLEN                        R16 R6 1
       80 MOVE                             R17 R1
       81 MOVE                             R18 R5
       82 CALL                             R15 3 1
       83 CALL                             R13 2 0
       84 JUMP                             ; [+13]
       85 JUMPIFNOT                        R11 ; [+12]
       86 GETUPVAL                         R14 0
       87 GETTABLEKS                       R13 R14 K12 ["append"]
       89 MOVE                             R14 R12
       90 GETUPVAL                         R15 4
       91 MOVE                             R16 R6
       92 MOVE                             R17 R1
       93 MOVE                             R18 R2
       94 MOVE                             R19 R4
       95 MOVE                             R20 R5
       96 CALL                             R15 5 1
       97 CALL                             R13 2 0
       98 LENGTH                           R13 R12
       99 LOADN                            R14 0
      100 JUMPIFNOTLT                      R14 R13 ; [+11]
      102 DUPTABLE                         R15 K14 [{"ShowSeparator"}]
      103 LOADB                            R16 1
      104 SETTABLEKS                       R16 R15 K13 ["ShowSeparator"]
      106 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      108 MOVE                             R14 R12
      109 GETIMPORT                        R13 K17 [table.insert]
      111 CALL                             R13 2 0
      112 NAMECALL                         R13 R1 K18 ["getCurrentScope"]
      114 CALL                             R13 1 1
      115 GETTABLEKS                       R14 R13 K19 ["Type"]
      117 GETUPVAL                         R17 1
      118 GETTABLEKS                       R16 R17 K20 ["ScopeType"]
      120 GETTABLEKS                       R15 R16 K21 ["ProjectPlaces"]
      122 JUMPIFNOTEQ                      R14 R15 ; [+29]
      124 DUPTABLE                         R16 K24 [{"Text", "OnItemClicked"}]
      125 LOADK                            R19 K25 ["ContextMenu"]
      126 LOADK                            R20 K26 ["AddNewPlace"]
      127 NAMECALL                         R17 R5 K27 ["getText"]
      129 CALL                             R17 3 1
      130 SETTABLEKS                       R17 R16 K22 ["Text"]
      132 NEWCLOSURE                       R17 P0
      133 CAPTURE                          VAL R1
      134 SETTABLEKS                       R17 R16 K23 ["OnItemClicked"]
      136 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      138 MOVE                             R15 R12
      139 GETIMPORT                        R14 K17 [table.insert]
      141 CALL                             R14 2 0
      142 DUPTABLE                         R16 K14 [{"ShowSeparator"}]
      143 LOADB                            R17 1
      144 SETTABLEKS                       R17 R16 K13 ["ShowSeparator"]
      146 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      148 MOVE                             R15 R12
      149 GETIMPORT                        R14 K17 [table.insert]
      151 CALL                             R14 2 0
      152 LENGTH                           R14 R6
      153 LOADN                            R15 0
      154 JUMPIFNOTLT                      R15 R14 ; [+112]
      156 GETUPVAL                         R14 5
      157 CALL                             R14 0 1
      158 JUMPIFNOT                        R14 ; [+58]
      159 NEWTABLE                         R16 1 2
      161 LOADK                            R21 K25 ["ContextMenu"]
      162 LOADK                            R22 K28 ["Copy"]
      163 NAMECALL                         R19 R5 K27 ["getText"]
      165 CALL                             R19 3 1
      166 SETTABLEKS                       R19 R16 K22 ["Text"]
      168 DUPTABLE                         R17 K24 [{"Text", "OnItemClicked"}]
      169 LENGTH                           R19 R6
      170 JUMPIFNOTEQKN                    R19 K10 [1] ; [+7]
      172 LOADK                            R20 K25 ["ContextMenu"]
      173 LOADK                            R21 K29 ["CopyId"]
      174 NAMECALL                         R18 R5 K27 ["getText"]
      176 CALL                             R18 3 1
      177 JUMP                             ; [+5]
      178 LOADK                            R20 K25 ["ContextMenu"]
      179 LOADK                            R21 K30 ["CopyIds"]
      180 NAMECALL                         R18 R5 K27 ["getText"]
      182 CALL                             R18 3 1
      183 SETTABLEKS                       R18 R17 K22 ["Text"]
      185 NEWCLOSURE                       R18 P1
      186 CAPTURE                          VAL R6
      187 CAPTURE                          UPVAL U6
      188 CAPTURE                          UPVAL U7
      189 SETTABLEKS                       R18 R17 K23 ["OnItemClicked"]
      191 DUPTABLE                         R18 K24 [{"Text", "OnItemClicked"}]
      192 LOADK                            R21 K25 ["ContextMenu"]
      193 LOADK                            R22 K31 ["CopyInfo"]
      194 NAMECALL                         R19 R5 K27 ["getText"]
      196 CALL                             R19 3 1
      197 SETTABLEKS                       R19 R18 K22 ["Text"]
      199 NEWCLOSURE                       R19 P2
      200 CAPTURE                          UPVAL U8
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R3
      206 SETTABLEKS                       R19 R18 K23 ["OnItemClicked"]
      208 SETLIST                          R16 R17 2 [1]
      210 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      212 MOVE                             R15 R12
      213 GETIMPORT                        R14 K17 [table.insert]
      215 CALL                             R14 2 0
      216 JUMP                             ; [+29]
      217 DUPTABLE                         R16 K24 [{"Text", "OnItemClicked"}]
      218 LENGTH                           R18 R6
      219 JUMPIFNOTEQKN                    R18 K10 [1] ; [+7]
      221 LOADK                            R19 K25 ["ContextMenu"]
      222 LOADK                            R20 K29 ["CopyId"]
      223 NAMECALL                         R17 R5 K27 ["getText"]
      225 CALL                             R17 3 1
      226 JUMP                             ; [+5]
      227 LOADK                            R19 K25 ["ContextMenu"]
      228 LOADK                            R20 K30 ["CopyIds"]
      229 NAMECALL                         R17 R5 K27 ["getText"]
      231 CALL                             R17 3 1
      232 SETTABLEKS                       R17 R16 K22 ["Text"]
      234 NEWCLOSURE                       R17 P3
      235 CAPTURE                          VAL R6
      236 CAPTURE                          UPVAL U6
      237 CAPTURE                          UPVAL U7
      238 SETTABLEKS                       R17 R16 K23 ["OnItemClicked"]
      240 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      242 MOVE                             R15 R12
      243 GETIMPORT                        R14 K17 [table.insert]
      245 CALL                             R14 2 0
      246 DUPTABLE                         R16 K24 [{"Text", "OnItemClicked"}]
      247 LOADK                            R19 K25 ["ContextMenu"]
      248 LOADK                            R20 K32 ["ViewInBrowser"]
      249 NAMECALL                         R17 R5 K27 ["getText"]
      251 CALL                             R17 3 1
      252 SETTABLEKS                       R17 R16 K22 ["Text"]
      254 NEWCLOSURE                       R17 P4
      255 CAPTURE                          UPVAL U9
      256 CAPTURE                          VAL R6
      257 CAPTURE                          VAL R1
      258 CAPTURE                          VAL R2
      259 SETTABLEKS                       R17 R16 K23 ["OnItemClicked"]
      261 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      263 MOVE                             R15 R12
      264 GETIMPORT                        R14 K17 [table.insert]
      266 CALL                             R14 2 0
      267 RETURN                           R12 1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["LayoutController"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["toggleColumn"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_53:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["getEnumAsSortedList"]
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

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleVisibleInventory"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["enableScopeOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshScopes"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_57:
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
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["insertItems"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["Images"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K10 ["Util"]
       45 GETTABLEKS                       R6 R7 K13 ["isInsertable"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K8 ["Src"]
       52 GETTABLEKS                       R8 R9 K10 ["Util"]
       54 GETTABLEKS                       R7 R8 K14 ["openItemsInBrowser"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K8 ["Src"]
       61 GETTABLEKS                       R9 R10 K10 ["Util"]
       63 GETTABLEKS                       R8 R9 K15 ["updatePlugin"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K8 ["Src"]
       70 GETTABLEKS                       R10 R11 K10 ["Util"]
       72 GETTABLEKS                       R9 R10 K16 ["copyAssetInfosToClipboard"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R15 R0 K8 ["Src"]
       79 GETTABLEKS                       R14 R15 K17 ["Components"]
       81 GETTABLEKS                       R13 R14 K18 ["App"]
       83 GETTABLEKS                       R12 R13 K19 ["Dialogs"]
       85 GETTABLEKS                       R11 R12 K10 ["Util"]
       87 GETTABLEKS                       R10 R11 K20 ["openConfirmPlaceRemoval"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R16 R0 K8 ["Src"]
       94 GETTABLEKS                       R15 R16 K17 ["Components"]
       96 GETTABLEKS                       R14 R15 K18 ["App"]
       98 GETTABLEKS                       R13 R14 K19 ["Dialogs"]
      100 GETTABLEKS                       R12 R13 K10 ["Util"]
      102 GETTABLEKS                       R11 R12 K21 ["openConfirmShareOpenUse"]
      104 CALL                             R10 1 1
      105 GETIMPORT                        R11 K5 [require]
      107 GETTABLEKS                       R17 R0 K8 ["Src"]
      109 GETTABLEKS                       R16 R17 K17 ["Components"]
      111 GETTABLEKS                       R15 R16 K18 ["App"]
      113 GETTABLEKS                       R14 R15 K19 ["Dialogs"]
      115 GETTABLEKS                       R13 R14 K10 ["Util"]
      117 GETTABLEKS                       R12 R13 K22 ["openQuickShare"]
      119 CALL                             R11 1 1
      120 NEWTABLE                         R12 0 0
      122 GETIMPORT                        R13 K5 [require]
      124 GETTABLEKS                       R16 R0 K8 ["Src"]
      126 GETTABLEKS                       R15 R16 K10 ["Util"]
      128 GETTABLEKS                       R14 R15 K23 ["Services"]
      130 CALL                             R13 1 1
      131 GETIMPORT                        R14 K25 [game]
      133 LOADK                            R16 K26 ["ContentProvider"]
      134 NAMECALL                         R14 R14 K27 ["GetService"]
      136 CALL                             R14 2 1
      137 GETTABLEKS                       R15 R13 K27 ["GetService"]
      139 LOADK                            R16 K28 ["BrowserService"]
      140 CALL                             R15 1 1
      141 GETIMPORT                        R16 K25 [game]
      143 LOADK                            R18 K29 ["HttpService"]
      144 NAMECALL                         R16 R16 K27 ["GetService"]
      146 CALL                             R16 2 1
      147 GETIMPORT                        R17 K25 [game]
      149 LOADK                            R19 K30 ["MemStorageService"]
      150 NAMECALL                         R17 R17 K27 ["GetService"]
      152 CALL                             R17 2 1
      153 GETTABLEKS                       R18 R13 K27 ["GetService"]
      155 LOADK                            R19 K31 ["StudioService"]
      156 CALL                             R18 1 1
      157 GETIMPORT                        R19 K25 [game]
      159 LOADK                            R21 K32 ["PlaceVersionHistory"]
      160 NAMECALL                         R19 R19 K33 ["GetEngineFeature"]
      162 CALL                             R19 2 1
      163 GETIMPORT                        R20 K5 [require]
      165 GETTABLEKS                       R23 R0 K8 ["Src"]
      167 GETTABLEKS                       R22 R23 K34 ["Flags"]
      169 GETTABLEKS                       R21 R22 K35 ["getFFlagAmrQuickShare"]
      171 CALL                             R20 1 1
      172 GETIMPORT                        R21 K5 [require]
      174 GETTABLEKS                       R24 R0 K8 ["Src"]
      176 GETTABLEKS                       R23 R24 K34 ["Flags"]
      178 GETTABLEKS                       R22 R23 K36 ["getFFlagAmrOpenUseShare"]
      180 CALL                             R21 1 1
      181 GETIMPORT                        R22 K5 [require]
      183 GETTABLEKS                       R25 R0 K8 ["Src"]
      185 GETTABLEKS                       R24 R25 K34 ["Flags"]
      187 GETTABLEKS                       R23 R24 K37 ["getFFlagAmrUpdatedItemsCache"]
      189 CALL                             R22 1 1
      190 GETIMPORT                        R23 K5 [require]
      192 GETTABLEKS                       R26 R0 K8 ["Src"]
      194 GETTABLEKS                       R25 R26 K34 ["Flags"]
      196 GETTABLEKS                       R24 R25 K38 ["getFFlagAmrSelectAssetsInExplorer"]
      198 CALL                             R23 1 1
      199 GETIMPORT                        R24 K5 [require]
      201 GETTABLEKS                       R27 R0 K8 ["Src"]
      203 GETTABLEKS                       R26 R27 K34 ["Flags"]
      205 GETTABLEKS                       R25 R26 K39 ["getFFlagAmrRecents"]
      207 CALL                             R24 1 1
      208 GETIMPORT                        R25 K5 [require]
      210 GETTABLEKS                       R28 R0 K8 ["Src"]
      212 GETTABLEKS                       R27 R28 K34 ["Flags"]
      214 GETTABLEKS                       R26 R27 K40 ["getFFlagAmrCopyAssetInfo"]
      216 CALL                             R25 1 1
      217 GETIMPORT                        R26 K5 [require]
      219 GETTABLEKS                       R29 R0 K8 ["Src"]
      221 GETTABLEKS                       R28 R29 K34 ["Flags"]
      223 GETTABLEKS                       R27 R28 K41 ["getFFlagAmrUseDialogComponent"]
      225 CALL                             R26 1 1
      226 GETIMPORT                        R27 K5 [require]
      228 GETTABLEKS                       R30 R0 K8 ["Src"]
      230 GETTABLEKS                       R29 R30 K34 ["Flags"]
      232 GETTABLEKS                       R28 R29 K42 ["getFFlagAmrInsertAnimationInstance"]
      234 CALL                             R27 1 1
      235 NEWTABLE                         R28 4 0
      237 GETTABLEKS                       R30 R2 K43 ["AssetType"]
      239 GETTABLEKS                       R29 R30 K44 ["Mesh"]
      241 LOADB                            R30 1
      242 SETTABLE                         R30 R28 R29
      243 GETTABLEKS                       R30 R2 K43 ["AssetType"]
      245 GETTABLEKS                       R29 R30 K45 ["Image"]
      247 LOADB                            R30 1
      248 SETTABLE                         R30 R28 R29
      249 GETTABLEKS                       R30 R2 K43 ["AssetType"]
      251 GETTABLEKS                       R29 R30 K46 ["Decal"]
      253 LOADB                            R30 1
      254 SETTABLE                         R30 R28 R29
      255 DUPTABLE                         R29 K51 [{"DataModel", "PluginId", "Category", "ItemId"}]
      256 LOADK                            R30 K52 ["Standalone"]
      257 SETTABLEKS                       R30 R29 K47 ["DataModel"]
      259 LOADK                            R30 K32 ["PlaceVersionHistory"]
      260 SETTABLEKS                       R30 R29 K48 ["PluginId"]
      262 LOADK                            R30 K53 ["Actions"]
      263 SETTABLEKS                       R30 R29 K49 ["Category"]
      265 LOADK                            R30 K54 ["Toggle"]
      266 SETTABLEKS                       R30 R29 K50 ["ItemId"]
      268 DUPTABLE                         R30 K51 [{"DataModel", "PluginId", "Category", "ItemId"}]
      269 LOADK                            R31 K52 ["Standalone"]
      270 SETTABLEKS                       R31 R30 K47 ["DataModel"]
      272 LOADK                            R31 K32 ["PlaceVersionHistory"]
      273 SETTABLEKS                       R31 R30 K48 ["PluginId"]
      275 LOADK                            R31 K55 ["Settings"]
      276 SETTABLEKS                       R31 R30 K49 ["Category"]
      278 LOADK                            R31 K56 ["PlaceId"]
      279 SETTABLEKS                       R31 R30 K50 ["ItemId"]
      281 DUPTABLE                         R31 K58 [{"ShowSeparator"}]
      282 LOADB                            R32 1
      283 SETTABLEKS                       R32 R31 K57 ["ShowSeparator"]
      285 NEWTABLE                         R32 8 0
      287 GETTABLEKS                       R34 R2 K59 ["AssetInfoField"]
      289 GETTABLEKS                       R33 R34 K60 ["DisplayName"]
      291 LOADB                            R34 1
      292 SETTABLE                         R34 R32 R33
      293 GETTABLEKS                       R34 R2 K59 ["AssetInfoField"]
      295 GETTABLEKS                       R33 R34 K61 ["ModerationStatus"]
      297 LOADB                            R34 1
      298 SETTABLE                         R34 R32 R33
      299 GETTABLEKS                       R34 R2 K59 ["AssetInfoField"]
      301 GETTABLEKS                       R33 R34 K62 ["VersionNumber"]
      303 LOADB                            R34 1
      304 SETTABLE                         R34 R32 R33
      305 GETTABLEKS                       R34 R2 K59 ["AssetInfoField"]
      307 GETTABLEKS                       R33 R34 K63 ["IsPackage"]
      309 LOADB                            R34 1
      310 SETTABLE                         R34 R32 R33
      311 GETTABLEKS                       R34 R2 K59 ["AssetInfoField"]
      313 GETTABLEKS                       R33 R34 K64 ["Archived"]
      315 LOADB                            R34 1
      316 SETTABLE                         R34 R32 R33
      317 GETTABLEKS                       R34 R2 K59 ["AssetInfoField"]
      319 GETTABLEKS                       R33 R34 K65 ["Path"]
      321 LOADB                            R34 1
      322 SETTABLE                         R34 R32 R33
      323 GETTABLEKS                       R34 R2 K59 ["AssetInfoField"]
      325 GETTABLEKS                       R33 R34 K66 ["SearchRank"]
      327 LOADB                            R34 1
      328 SETTABLE                         R34 R32 R33
      329 DUPCLOSURE                       R33 K67 [PROTO_0]
      330 CAPTURE                          VAL R1
      331 DUPCLOSURE                       R34 K68 [PROTO_1]
      332 CAPTURE                          VAL R28
      333 DUPCLOSURE                       R35 K69 [PROTO_2]
      334 CAPTURE                          VAL R14
      335 CAPTURE                          VAL R16
      336 CAPTURE                          VAL R15
      337 DUPCLOSURE                       R36 K70 [PROTO_3]
      338 CAPTURE                          VAL R18
      339 CAPTURE                          VAL R16
      340 DUPCLOSURE                       R37 K71 [PROTO_4]
      341 CAPTURE                          VAL R32
      342 DUPCLOSURE                       R38 K72 [PROTO_5]
      343 CAPTURE                          VAL R17
      344 CAPTURE                          VAL R16
      345 DUPCLOSURE                       R39 K73 [PROTO_6]
      346 CAPTURE                          VAL R30
      347 CAPTURE                          VAL R29
      348 DUPCLOSURE                       R40 K74 [PROTO_9]
      349 CAPTURE                          VAL R18
      350 DUPCLOSURE                       R41 K75 [PROTO_13]
      351 CAPTURE                          VAL R18
      352 CAPTURE                          VAL R7
      353 CAPTURE                          VAL R14
      354 CAPTURE                          VAL R16
      355 CAPTURE                          VAL R15
      356 DUPCLOSURE                       R42 K76 [PROTO_18]
      357 CAPTURE                          VAL R19
      358 CAPTURE                          VAL R39
      359 CAPTURE                          VAL R18
      360 CAPTURE                          VAL R26
      361 CAPTURE                          VAL R9
      362 DUPCLOSURE                       R43 K77 [PROTO_28]
      363 CAPTURE                          VAL R22
      364 CAPTURE                          VAL R27
      365 CAPTURE                          VAL R2
      366 CAPTURE                          VAL R1
      367 CAPTURE                          VAL R3
      368 CAPTURE                          VAL R17
      369 CAPTURE                          VAL R16
      370 CAPTURE                          VAL R20
      371 CAPTURE                          VAL R21
      372 CAPTURE                          VAL R28
      373 CAPTURE                          VAL R11
      374 CAPTURE                          VAL R10
      375 CAPTURE                          VAL R23
      376 DUPCLOSURE                       R44 K78 [PROTO_38]
      377 CAPTURE                          VAL R27
      378 CAPTURE                          VAL R2
      379 CAPTURE                          VAL R1
      380 CAPTURE                          VAL R3
      381 CAPTURE                          VAL R17
      382 CAPTURE                          VAL R16
      383 CAPTURE                          VAL R20
      384 CAPTURE                          VAL R21
      385 CAPTURE                          VAL R28
      386 CAPTURE                          VAL R11
      387 CAPTURE                          VAL R10
      388 CAPTURE                          VAL R23
      389 DUPCLOSURE                       R45 K79 [PROTO_45]
      390 CAPTURE                          VAL R1
      391 CAPTURE                          VAL R2
      392 CAPTURE                          VAL R5
      393 CAPTURE                          VAL R41
      394 CAPTURE                          VAL R42
      395 CAPTURE                          VAL R44
      396 CAPTURE                          VAL R31
      397 CAPTURE                          VAL R25
      398 CAPTURE                          VAL R18
      399 CAPTURE                          VAL R16
      400 CAPTURE                          VAL R8
      401 CAPTURE                          VAL R6
      402 CAPTURE                          VAL R22
      403 CAPTURE                          VAL R24
      404 GETTABLEKS                       R47 R2 K80 ["MenuContext"]
      406 GETTABLEKS                       R46 R47 K81 ["Asset"]
      408 MOVE                             R48 R22
      409 CALL                             R48 0 1
      410 JUMPIFNOT                        R48 ; [+2]
      411 MOVE                             R47 R45
      412 JUMP                             ; [+11]
      413 DUPCLOSURE                       R47 K82 [PROTO_51]
      414 CAPTURE                          VAL R1
      415 CAPTURE                          VAL R2
      416 CAPTURE                          VAL R41
      417 CAPTURE                          VAL R42
      418 CAPTURE                          VAL R43
      419 CAPTURE                          VAL R25
      420 CAPTURE                          VAL R18
      421 CAPTURE                          VAL R16
      422 CAPTURE                          VAL R8
      423 CAPTURE                          VAL R6
      424 SETTABLE                         R47 R12 R46
      425 GETTABLEKS                       R47 R2 K80 ["MenuContext"]
      427 GETTABLEKS                       R46 R47 K83 ["Column"]
      429 DUPCLOSURE                       R47 K84 [PROTO_53]
      430 CAPTURE                          VAL R2
      431 CAPTURE                          VAL R32
      432 CAPTURE                          VAL R4
      433 SETTABLE                         R47 R12 R46
      434 GETTABLEKS                       R47 R2 K80 ["MenuContext"]
      436 GETTABLEKS                       R46 R47 K85 ["Sidebar"]
      438 DUPCLOSURE                       R47 K86 [PROTO_57]
      439 CAPTURE                          VAL R2
      440 CAPTURE                          VAL R1
      441 SETTABLE                         R47 R12 R46
      442 RETURN                           R12 1
