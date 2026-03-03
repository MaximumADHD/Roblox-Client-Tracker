PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Error fetching plugin info for install: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R4 R0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 DUPCLOSURE                       R6 K0 [PROTO_7]
        5 NAMECALL                         R2 R1 K1 ["fetchPluginInfoAsync"]
        7 CALL                             R2 4 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 DUPCLOSURE                       R6 K0 [PROTO_7]
        7 NAMECALL                         R2 R1 K1 ["fetchPluginInfoAsync"]
        9 CALL                             R2 4 0
       10 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["OnOpenPlace"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["stagePlaceForRename"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["right_click_position"]
        2 NAMECALL                         R0 R0 K1 ["setAnalyticsInsertAction"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 1
       10 CALL                             R0 4 0
       11 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setQuickShareAssetIds"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 CALL                             R0 5 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setQuickShareAssetIds"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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
       14 NEWTABLE                         R8 1 2
       16 LENGTH                           R12 R0
       17 JUMPIFNOTEQKN                    R12 K3 [1] ; [+7]
       19 LOADK                            R13 K4 ["ContextMenu"]
       20 LOADK                            R14 K5 ["Insert"]
       21 NAMECALL                         R11 R4 K6 ["getText"]
       23 CALL                             R11 3 1
       24 JUMP                             ; [+5]
       25 LOADK                            R13 K4 ["ContextMenu"]
       26 LOADK                            R14 K7 ["InsertSelection"]
       27 NAMECALL                         R11 R4 K6 ["getText"]
       29 CALL                             R11 3 1
       30 SETTABLEKS                       R11 R8 K8 ["Text"]
       32 DUPTABLE                         R9 K10 [{"Text", "OnItemClicked"}]
       33 LOADK                            R12 K4 ["ContextMenu"]
       34 LOADK                            R13 K11 ["InsertAtCamera"]
       35 NAMECALL                         R10 R4 K6 ["getText"]
       37 CALL                             R10 3 1
       38 SETTABLEKS                       R10 R9 K8 ["Text"]
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R10 R9 K9 ["OnItemClicked"]
       46 DUPTABLE                         R10 K10 [{"Text", "OnItemClicked"}]
       47 LOADK                            R13 K4 ["ContextMenu"]
       48 LOADK                            R14 K12 ["InsertAtAssetPosition"]
       49 NAMECALL                         R11 R4 K6 ["getText"]
       51 CALL                             R11 3 1
       52 SETTABLEKS                       R11 R10 K8 ["Text"]
       54 NEWCLOSURE                       R11 P1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R11 R10 K9 ["OnItemClicked"]
       60 SETLIST                          R8 R9 2 [1]
       62 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       64 MOVE                             R7 R5
       65 GETIMPORT                        R6 K15 [table.insert]
       67 CALL                             R6 2 0
       68 LENGTH                           R6 R0
       69 JUMPIFNOTEQKN                    R6 K3 [1] ; [+22]
       71 DUPTABLE                         R8 K10 [{"Text", "OnItemClicked"}]
       72 LOADK                            R11 K4 ["ContextMenu"]
       73 LOADK                            R12 K16 ["Edit"]
       74 NAMECALL                         R9 R4 K6 ["getText"]
       76 CALL                             R9 3 1
       77 SETTABLEKS                       R9 R8 K8 ["Text"]
       79 NEWCLOSURE                       R9 P2
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          UPVAL U3
       84 SETTABLEKS                       R9 R8 K9 ["OnItemClicked"]
       86 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       88 MOVE                             R7 R5
       89 GETIMPORT                        R6 K15 [table.insert]
       91 CALL                             R6 2 0
       92 GETUPVAL                         R6 4
       93 CALL                             R6 0 1
       94 JUMPIFNOT                        R6 ; [+90]
       95 LENGTH                           R6 R0
       96 LOADN                            R7 50
       97 JUMPIFNOTLT                      R6 R7 ; [+87]
       99 GETUPVAL                         R6 5
      100 CALL                             R6 0 1
      101 JUMPIFNOT                        R6 ; [+64]
      102 MOVE                             R9 R0
      103 NAMECALL                         R7 R2 K17 ["getAssetTypes"]
      105 CALL                             R7 2 1
      106 GETUPVAL                         R8 6
      107 LOADNIL                          R9
      108 LOADNIL                          R10
      109 FORGPREP                         R8
      110 GETTABLE                         R13 R7 R11
      111 JUMPIFNOT                        R13 ; [+2]
      112 LOADB                            R6 1
      113 JUMP                             ; [+3]
      114 FORGLOOP                         R8 2 ; [-5]
      116 LOADB                            R6 0
      117 JUMPIFNOT                        R6 ; [+48]
      118 NEWTABLE                         R8 1 2
      120 LOADK                            R13 K4 ["ContextMenu"]
      121 LOADK                            R14 K18 ["QuickShare"]
      122 NAMECALL                         R11 R4 K6 ["getText"]
      124 CALL                             R11 3 1
      125 SETTABLEKS                       R11 R8 K8 ["Text"]
      127 DUPTABLE                         R9 K10 [{"Text", "OnItemClicked"}]
      128 LOADK                            R12 K4 ["ContextMenu"]
      129 LOADK                            R13 K19 ["WithCollaborators"]
      130 NAMECALL                         R10 R4 K6 ["getText"]
      132 CALL                             R10 3 1
      133 SETTABLEKS                       R10 R9 K8 ["Text"]
      135 NEWCLOSURE                       R10 P3
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R10 R9 K9 ["OnItemClicked"]
      140 DUPTABLE                         R10 K10 [{"Text", "OnItemClicked"}]
      141 LOADK                            R13 K4 ["ContextMenu"]
      142 LOADK                            R14 K20 ["OpenUse"]
      143 NAMECALL                         R11 R4 K6 ["getText"]
      145 CALL                             R11 3 1
      146 SETTABLEKS                       R11 R10 K8 ["Text"]
      148 NEWCLOSURE                       R11 P4
      149 CAPTURE                          UPVAL U7
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R0
      155 SETTABLEKS                       R11 R10 K9 ["OnItemClicked"]
      157 SETLIST                          R8 R9 2 [1]
      159 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      161 MOVE                             R7 R5
      162 GETIMPORT                        R6 K15 [table.insert]
      164 CALL                             R6 2 0
      165 JUMP                             ; [+19]
      166 DUPTABLE                         R8 K10 [{"Text", "OnItemClicked"}]
      167 LOADK                            R11 K4 ["ContextMenu"]
      168 LOADK                            R12 K18 ["QuickShare"]
      169 NAMECALL                         R9 R4 K6 ["getText"]
      171 CALL                             R9 3 1
      172 SETTABLEKS                       R9 R8 K8 ["Text"]
      174 NEWCLOSURE                       R9 P5
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R0
      177 SETTABLEKS                       R9 R8 K9 ["OnItemClicked"]
      179 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      181 MOVE                             R7 R5
      182 GETIMPORT                        R6 K15 [table.insert]
      184 CALL                             R6 2 0
      185 GETUPVAL                         R6 8
      186 CALL                             R6 0 1
      187 JUMPIFNOT                        R6 ; [+20]
      188 DUPTABLE                         R8 K10 [{"Text", "OnItemClicked"}]
      189 LOADK                            R11 K4 ["ContextMenu"]
      190 LOADK                            R12 K21 ["FindInExplorer"]
      191 NAMECALL                         R9 R4 K6 ["getText"]
      193 CALL                             R9 3 1
      194 SETTABLEKS                       R9 R8 K8 ["Text"]
      196 NEWCLOSURE                       R9 P6
      197 CAPTURE                          UPVAL U3
      198 CAPTURE                          VAL R0
      199 CAPTURE                          VAL R1
      200 SETTABLEKS                       R9 R8 K9 ["OnItemClicked"]
      202 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      204 MOVE                             R7 R5
      205 GETIMPORT                        R6 K15 [table.insert]
      207 CALL                             R6 2 0
      208 RETURN                           R5 1

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["right_click_position"]
        2 NAMECALL                         R0 R0 K1 ["setAnalyticsInsertAction"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 LOADB                            R4 1
       10 CALL                             R0 4 0
       11 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setQuickShareAssetIds"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 CALL                             R0 5 0
        7 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setQuickShareAssetIds"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
        0 NEWTABLE                         R5 0 0
        2 NAMECALL                         R6 R1 K0 ["getCurrentScope"]
        4 CALL                             R6 1 1
        5 NEWTABLE                         R9 1 2
        7 LENGTH                           R13 R0
        8 JUMPIFNOTEQKN                    R13 K1 [1] ; [+7]
       10 LOADK                            R14 K2 ["ContextMenu"]
       11 LOADK                            R15 K3 ["Insert"]
       12 NAMECALL                         R12 R4 K4 ["getText"]
       14 CALL                             R12 3 1
       15 JUMP                             ; [+5]
       16 LOADK                            R14 K2 ["ContextMenu"]
       17 LOADK                            R15 K5 ["InsertSelection"]
       18 NAMECALL                         R12 R4 K4 ["getText"]
       20 CALL                             R12 3 1
       21 SETTABLEKS                       R12 R9 K6 ["Text"]
       23 DUPTABLE                         R10 K8 [{"Text", "OnItemClicked"}]
       24 LOADK                            R13 K2 ["ContextMenu"]
       25 LOADK                            R14 K9 ["InsertAtCamera"]
       26 NAMECALL                         R11 R4 K4 ["getText"]
       28 CALL                             R11 3 1
       29 SETTABLEKS                       R11 R10 K6 ["Text"]
       31 NEWCLOSURE                       R11 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R11 R10 K7 ["OnItemClicked"]
       38 DUPTABLE                         R11 K8 [{"Text", "OnItemClicked"}]
       39 LOADK                            R14 K2 ["ContextMenu"]
       40 LOADK                            R15 K10 ["InsertAtAssetPosition"]
       41 NAMECALL                         R12 R4 K4 ["getText"]
       43 CALL                             R12 3 1
       44 SETTABLEKS                       R12 R11 K6 ["Text"]
       46 NEWCLOSURE                       R12 P1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R12 R11 K7 ["OnItemClicked"]
       53 SETLIST                          R9 R10 2 [1]
       55 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       57 MOVE                             R8 R5
       58 GETIMPORT                        R7 K13 [table.insert]
       60 CALL                             R7 2 0
       61 LENGTH                           R7 R0
       62 JUMPIFNOTEQKN                    R7 K1 [1] ; [+24]
       64 DUPTABLE                         R9 K8 [{"Text", "OnItemClicked"}]
       65 LOADK                            R12 K2 ["ContextMenu"]
       66 LOADK                            R13 K14 ["Edit"]
       67 NAMECALL                         R10 R4 K4 ["getText"]
       69 CALL                             R10 3 1
       70 SETTABLEKS                       R10 R9 K6 ["Text"]
       72 NEWCLOSURE                       R10 P2
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R6
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          UPVAL U3
       79 SETTABLEKS                       R10 R9 K7 ["OnItemClicked"]
       81 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       83 MOVE                             R8 R5
       84 GETIMPORT                        R7 K13 [table.insert]
       86 CALL                             R7 2 0
       87 GETUPVAL                         R7 4
       88 CALL                             R7 0 1
       89 JUMPIFNOT                        R7 ; [+90]
       90 LENGTH                           R7 R0
       91 LOADN                            R8 50
       92 JUMPIFNOTLT                      R7 R8 ; [+87]
       94 GETUPVAL                         R7 5
       95 CALL                             R7 0 1
       96 JUMPIFNOT                        R7 ; [+64]
       97 MOVE                             R10 R0
       98 NAMECALL                         R8 R2 K15 ["getAssetTypes"]
      100 CALL                             R8 2 1
      101 GETUPVAL                         R9 6
      102 LOADNIL                          R10
      103 LOADNIL                          R11
      104 FORGPREP                         R9
      105 GETTABLE                         R14 R8 R12
      106 JUMPIFNOT                        R14 ; [+2]
      107 LOADB                            R7 1
      108 JUMP                             ; [+3]
      109 FORGLOOP                         R9 2 ; [-5]
      111 LOADB                            R7 0
      112 JUMPIFNOT                        R7 ; [+48]
      113 NEWTABLE                         R9 1 2
      115 LOADK                            R14 K2 ["ContextMenu"]
      116 LOADK                            R15 K16 ["QuickShare"]
      117 NAMECALL                         R12 R4 K4 ["getText"]
      119 CALL                             R12 3 1
      120 SETTABLEKS                       R12 R9 K6 ["Text"]
      122 DUPTABLE                         R10 K8 [{"Text", "OnItemClicked"}]
      123 LOADK                            R13 K2 ["ContextMenu"]
      124 LOADK                            R14 K17 ["WithCollaborators"]
      125 NAMECALL                         R11 R4 K4 ["getText"]
      127 CALL                             R11 3 1
      128 SETTABLEKS                       R11 R10 K6 ["Text"]
      130 NEWCLOSURE                       R11 P3
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R0
      133 SETTABLEKS                       R11 R10 K7 ["OnItemClicked"]
      135 DUPTABLE                         R11 K8 [{"Text", "OnItemClicked"}]
      136 LOADK                            R14 K2 ["ContextMenu"]
      137 LOADK                            R15 K18 ["OpenUse"]
      138 NAMECALL                         R12 R4 K4 ["getText"]
      140 CALL                             R12 3 1
      141 SETTABLEKS                       R12 R11 K6 ["Text"]
      143 NEWCLOSURE                       R12 P4
      144 CAPTURE                          UPVAL U7
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R12 R11 K7 ["OnItemClicked"]
      152 SETLIST                          R9 R10 2 [1]
      154 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      156 MOVE                             R8 R5
      157 GETIMPORT                        R7 K13 [table.insert]
      159 CALL                             R7 2 0
      160 JUMP                             ; [+19]
      161 DUPTABLE                         R9 K8 [{"Text", "OnItemClicked"}]
      162 LOADK                            R12 K2 ["ContextMenu"]
      163 LOADK                            R13 K16 ["QuickShare"]
      164 NAMECALL                         R10 R4 K4 ["getText"]
      166 CALL                             R10 3 1
      167 SETTABLEKS                       R10 R9 K6 ["Text"]
      169 NEWCLOSURE                       R10 P5
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R0
      172 SETTABLEKS                       R10 R9 K7 ["OnItemClicked"]
      174 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      176 MOVE                             R8 R5
      177 GETIMPORT                        R7 K13 [table.insert]
      179 CALL                             R7 2 0
      180 GETUPVAL                         R7 8
      181 CALL                             R7 0 1
      182 JUMPIFNOT                        R7 ; [+23]
      183 DUPTABLE                         R9 K8 [{"Text", "OnItemClicked"}]
      184 LOADK                            R12 K2 ["ContextMenu"]
      185 LOADK                            R13 K19 ["FindInExplorer"]
      186 NAMECALL                         R10 R4 K4 ["getText"]
      188 CALL                             R10 3 1
      189 SETTABLEKS                       R10 R9 K6 ["Text"]
      191 NEWCLOSURE                       R10 P6
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R0
      195 CAPTURE                          UPVAL U1
      196 CAPTURE                          UPVAL U3
      197 CAPTURE                          VAL R1
      198 SETTABLEKS                       R10 R9 K7 ["OnItemClicked"]
      200 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      202 MOVE                             R8 R5
      203 GETIMPORT                        R7 K13 [table.insert]
      205 CALL                             R7 2 0
      206 RETURN                           R5 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["OnAddPlace"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 NAMECALL                         R3 R3 K0 ["getCurrentScope"]
        6 CALL                             R3 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearRecent"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["OnAddPlace"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
        4 GETUPVAL                         R4 4
        5 GETUPVAL                         R5 5
        6 NAMECALL                         R5 R5 K0 ["getColumns"]
        8 CALL                             R5 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["LayoutController"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["toggleColumn"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleVisibleInventory"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["enableScopeOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshScopes"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_52:
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
      105 NEWTABLE                         R11 0 0
      107 GETIMPORT                        R12 K5 [require]
      109 GETTABLEKS                       R15 R0 K8 ["Src"]
      111 GETTABLEKS                       R14 R15 K10 ["Util"]
      113 GETTABLEKS                       R13 R14 K22 ["Services"]
      115 CALL                             R12 1 1
      116 GETIMPORT                        R13 K24 [game]
      118 LOADK                            R15 K25 ["ContentProvider"]
      119 NAMECALL                         R13 R13 K26 ["GetService"]
      121 CALL                             R13 2 1
      122 GETTABLEKS                       R14 R12 K26 ["GetService"]
      124 LOADK                            R15 K27 ["BrowserService"]
      125 CALL                             R14 1 1
      126 GETIMPORT                        R15 K24 [game]
      128 LOADK                            R17 K28 ["HttpService"]
      129 NAMECALL                         R15 R15 K26 ["GetService"]
      131 CALL                             R15 2 1
      132 GETIMPORT                        R16 K24 [game]
      134 LOADK                            R18 K29 ["MemStorageService"]
      135 NAMECALL                         R16 R16 K26 ["GetService"]
      137 CALL                             R16 2 1
      138 GETTABLEKS                       R17 R12 K26 ["GetService"]
      140 LOADK                            R18 K30 ["StudioService"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K24 [game]
      144 LOADK                            R20 K31 ["PlaceVersionHistory"]
      145 NAMECALL                         R18 R18 K32 ["GetEngineFeature"]
      147 CALL                             R18 2 1
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R22 R0 K8 ["Src"]
      152 GETTABLEKS                       R21 R22 K33 ["Flags"]
      154 GETTABLEKS                       R20 R21 K34 ["getFFlagAmrQuickShare"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K5 [require]
      159 GETTABLEKS                       R23 R0 K8 ["Src"]
      161 GETTABLEKS                       R22 R23 K33 ["Flags"]
      163 GETTABLEKS                       R21 R22 K35 ["getFFlagAmrOpenUseShare"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K5 [require]
      168 GETTABLEKS                       R24 R0 K8 ["Src"]
      170 GETTABLEKS                       R23 R24 K33 ["Flags"]
      172 GETTABLEKS                       R22 R23 K36 ["getFFlagAmrUpdatedItemsCache"]
      174 CALL                             R21 1 1
      175 GETIMPORT                        R22 K5 [require]
      177 GETTABLEKS                       R25 R0 K8 ["Src"]
      179 GETTABLEKS                       R24 R25 K33 ["Flags"]
      181 GETTABLEKS                       R23 R24 K37 ["getFFlagAmrSelectAssetsInExplorer"]
      183 CALL                             R22 1 1
      184 GETIMPORT                        R23 K5 [require]
      186 GETTABLEKS                       R26 R0 K8 ["Src"]
      188 GETTABLEKS                       R25 R26 K33 ["Flags"]
      190 GETTABLEKS                       R24 R25 K38 ["getFFlagAmrRecents"]
      192 CALL                             R23 1 1
      193 GETIMPORT                        R24 K5 [require]
      195 GETTABLEKS                       R27 R0 K8 ["Src"]
      197 GETTABLEKS                       R26 R27 K33 ["Flags"]
      199 GETTABLEKS                       R25 R26 K39 ["getFFlagAmrCopyAssetInfo"]
      201 CALL                             R24 1 1
      202 GETIMPORT                        R25 K5 [require]
      204 GETTABLEKS                       R28 R0 K8 ["Src"]
      206 GETTABLEKS                       R27 R28 K33 ["Flags"]
      208 GETTABLEKS                       R26 R27 K40 ["getFFlagAmrUseDialogComponent"]
      210 CALL                             R25 1 1
      211 NEWTABLE                         R26 4 0
      213 GETTABLEKS                       R28 R2 K41 ["AssetType"]
      215 GETTABLEKS                       R27 R28 K42 ["Mesh"]
      217 LOADB                            R28 1
      218 SETTABLE                         R28 R26 R27
      219 GETTABLEKS                       R28 R2 K41 ["AssetType"]
      221 GETTABLEKS                       R27 R28 K43 ["Image"]
      223 LOADB                            R28 1
      224 SETTABLE                         R28 R26 R27
      225 GETTABLEKS                       R28 R2 K41 ["AssetType"]
      227 GETTABLEKS                       R27 R28 K44 ["Decal"]
      229 LOADB                            R28 1
      230 SETTABLE                         R28 R26 R27
      231 DUPTABLE                         R27 K49 [{"DataModel", "PluginId", "Category", "ItemId"}]
      232 LOADK                            R28 K50 ["Standalone"]
      233 SETTABLEKS                       R28 R27 K45 ["DataModel"]
      235 LOADK                            R28 K31 ["PlaceVersionHistory"]
      236 SETTABLEKS                       R28 R27 K46 ["PluginId"]
      238 LOADK                            R28 K51 ["Actions"]
      239 SETTABLEKS                       R28 R27 K47 ["Category"]
      241 LOADK                            R28 K52 ["Toggle"]
      242 SETTABLEKS                       R28 R27 K48 ["ItemId"]
      244 DUPTABLE                         R28 K49 [{"DataModel", "PluginId", "Category", "ItemId"}]
      245 LOADK                            R29 K50 ["Standalone"]
      246 SETTABLEKS                       R29 R28 K45 ["DataModel"]
      248 LOADK                            R29 K31 ["PlaceVersionHistory"]
      249 SETTABLEKS                       R29 R28 K46 ["PluginId"]
      251 LOADK                            R29 K53 ["Settings"]
      252 SETTABLEKS                       R29 R28 K47 ["Category"]
      254 LOADK                            R29 K54 ["PlaceId"]
      255 SETTABLEKS                       R29 R28 K48 ["ItemId"]
      257 DUPTABLE                         R29 K56 [{"ShowSeparator"}]
      258 LOADB                            R30 1
      259 SETTABLEKS                       R30 R29 K55 ["ShowSeparator"]
      261 NEWTABLE                         R30 8 0
      263 GETTABLEKS                       R32 R2 K57 ["AssetInfoField"]
      265 GETTABLEKS                       R31 R32 K58 ["DisplayName"]
      267 LOADB                            R32 1
      268 SETTABLE                         R32 R30 R31
      269 GETTABLEKS                       R32 R2 K57 ["AssetInfoField"]
      271 GETTABLEKS                       R31 R32 K59 ["ModerationStatus"]
      273 LOADB                            R32 1
      274 SETTABLE                         R32 R30 R31
      275 GETTABLEKS                       R32 R2 K57 ["AssetInfoField"]
      277 GETTABLEKS                       R31 R32 K60 ["VersionNumber"]
      279 LOADB                            R32 1
      280 SETTABLE                         R32 R30 R31
      281 GETTABLEKS                       R32 R2 K57 ["AssetInfoField"]
      283 GETTABLEKS                       R31 R32 K61 ["IsPackage"]
      285 LOADB                            R32 1
      286 SETTABLE                         R32 R30 R31
      287 GETTABLEKS                       R32 R2 K57 ["AssetInfoField"]
      289 GETTABLEKS                       R31 R32 K62 ["Archived"]
      291 LOADB                            R32 1
      292 SETTABLE                         R32 R30 R31
      293 GETTABLEKS                       R32 R2 K57 ["AssetInfoField"]
      295 GETTABLEKS                       R31 R32 K63 ["Path"]
      297 LOADB                            R32 1
      298 SETTABLE                         R32 R30 R31
      299 GETTABLEKS                       R32 R2 K57 ["AssetInfoField"]
      301 GETTABLEKS                       R31 R32 K64 ["SearchRank"]
      303 LOADB                            R32 1
      304 SETTABLE                         R32 R30 R31
      305 DUPCLOSURE                       R31 K65 [PROTO_0]
      306 CAPTURE                          VAL R26
      307 DUPCLOSURE                       R32 K66 [PROTO_1]
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R15
      310 CAPTURE                          VAL R14
      311 DUPCLOSURE                       R33 K67 [PROTO_2]
      312 CAPTURE                          VAL R17
      313 CAPTURE                          VAL R15
      314 DUPCLOSURE                       R34 K68 [PROTO_3]
      315 CAPTURE                          VAL R30
      316 DUPCLOSURE                       R35 K69 [PROTO_4]
      317 CAPTURE                          VAL R16
      318 CAPTURE                          VAL R15
      319 DUPCLOSURE                       R36 K70 [PROTO_5]
      320 CAPTURE                          VAL R28
      321 CAPTURE                          VAL R27
      322 DUPCLOSURE                       R37 K71 [PROTO_8]
      323 CAPTURE                          VAL R17
      324 DUPCLOSURE                       R38 K72 [PROTO_12]
      325 CAPTURE                          VAL R17
      326 CAPTURE                          VAL R7
      327 CAPTURE                          VAL R13
      328 CAPTURE                          VAL R15
      329 CAPTURE                          VAL R14
      330 DUPCLOSURE                       R39 K73 [PROTO_17]
      331 CAPTURE                          VAL R18
      332 CAPTURE                          VAL R36
      333 CAPTURE                          VAL R17
      334 CAPTURE                          VAL R25
      335 CAPTURE                          VAL R9
      336 DUPCLOSURE                       R40 K74 [PROTO_25]
      337 CAPTURE                          VAL R21
      338 CAPTURE                          VAL R3
      339 CAPTURE                          VAL R16
      340 CAPTURE                          VAL R15
      341 CAPTURE                          VAL R19
      342 CAPTURE                          VAL R20
      343 CAPTURE                          VAL R26
      344 CAPTURE                          VAL R10
      345 CAPTURE                          VAL R22
      346 DUPCLOSURE                       R41 K75 [PROTO_33]
      347 CAPTURE                          VAL R3
      348 CAPTURE                          VAL R2
      349 CAPTURE                          VAL R16
      350 CAPTURE                          VAL R15
      351 CAPTURE                          VAL R19
      352 CAPTURE                          VAL R20
      353 CAPTURE                          VAL R26
      354 CAPTURE                          VAL R10
      355 CAPTURE                          VAL R22
      356 DUPCLOSURE                       R42 K76 [PROTO_40]
      357 CAPTURE                          VAL R1
      358 CAPTURE                          VAL R2
      359 CAPTURE                          VAL R5
      360 CAPTURE                          VAL R38
      361 CAPTURE                          VAL R39
      362 CAPTURE                          VAL R41
      363 CAPTURE                          VAL R29
      364 CAPTURE                          VAL R24
      365 CAPTURE                          VAL R17
      366 CAPTURE                          VAL R15
      367 CAPTURE                          VAL R8
      368 CAPTURE                          VAL R6
      369 CAPTURE                          VAL R21
      370 CAPTURE                          VAL R23
      371 GETTABLEKS                       R44 R2 K77 ["MenuContext"]
      373 GETTABLEKS                       R43 R44 K78 ["Asset"]
      375 MOVE                             R45 R21
      376 CALL                             R45 0 1
      377 JUMPIFNOT                        R45 ; [+2]
      378 MOVE                             R44 R42
      379 JUMP                             ; [+11]
      380 DUPCLOSURE                       R44 K79 [PROTO_46]
      381 CAPTURE                          VAL R1
      382 CAPTURE                          VAL R2
      383 CAPTURE                          VAL R38
      384 CAPTURE                          VAL R39
      385 CAPTURE                          VAL R40
      386 CAPTURE                          VAL R24
      387 CAPTURE                          VAL R17
      388 CAPTURE                          VAL R15
      389 CAPTURE                          VAL R8
      390 CAPTURE                          VAL R6
      391 SETTABLE                         R44 R11 R43
      392 GETTABLEKS                       R44 R2 K77 ["MenuContext"]
      394 GETTABLEKS                       R43 R44 K80 ["Column"]
      396 DUPCLOSURE                       R44 K81 [PROTO_48]
      397 CAPTURE                          VAL R2
      398 CAPTURE                          VAL R30
      399 CAPTURE                          VAL R4
      400 SETTABLE                         R44 R11 R43
      401 GETTABLEKS                       R44 R2 K77 ["MenuContext"]
      403 GETTABLEKS                       R43 R44 K82 ["Sidebar"]
      405 DUPCLOSURE                       R44 K83 [PROTO_52]
      406 CAPTURE                          VAL R2
      407 CAPTURE                          VAL R1
      408 SETTABLE                         R44 R11 R43
      409 RETURN                           R11 1
