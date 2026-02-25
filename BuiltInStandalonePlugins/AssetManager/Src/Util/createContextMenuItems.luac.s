PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_3:
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

PROTO_4:
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
       13 NEWTABLE                         R7 0 1
       15 GETUPVAL                         R8 1
       16 SETLIST                          R7 R8 1 [1]
       18 NAMECALL                         R5 R3 K4 ["GetAsync"]
       20 CALL                             R5 2 1
       21 GETTABLEN                        R4 R5 1
       22 GETTABLEKS                       R5 R4 K5 ["Checked"]
       24 JUMPIF                           R5 ; [+4]
       25 GETUPVAL                         R7 1
       26 NAMECALL                         R5 R3 K6 ["ActivateAsync"]
       28 CALL                             R5 2 0
       29 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Error fetching plugin info for install: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R4 R0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 DUPCLOSURE                       R6 K0 [PROTO_6]
        5 NAMECALL                         R2 R1 K1 ["fetchPluginInfoAsync"]
        7 CALL                             R2 4 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 DUPCLOSURE                       R6 K0 [PROTO_6]
        7 NAMECALL                         R2 R1 K1 ["fetchPluginInfoAsync"]
        9 CALL                             R2 4 0
       10 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["OnOpenPlace"]
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["stagePlaceForRename"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["stageRemovePlace"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
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
       66 JUMPIF                           R4 ; [+19]
       67 DUPTABLE                         R6 K2 [{"Text", "OnItemClicked"}]
       68 LOADK                            R9 K3 ["ContextMenu"]
       69 LOADK                            R10 K12 ["RemoveFromExperience"]
       70 NAMECALL                         R7 R2 K5 ["getText"]
       72 CALL                             R7 3 1
       73 SETTABLEKS                       R7 R6 K0 ["Text"]
       75 NEWCLOSURE                       R7 P3
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R7 R6 K1 ["OnItemClicked"]
       80 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       82 MOVE                             R5 R3
       83 GETIMPORT                        R4 K8 [table.insert]
       85 CALL                             R4 2 0
       86 RETURN                           R3 1

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setQuickShareAssetIds"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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
       20 LOADK                            R14 K5 ["InsertAsset"]
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
       73 LOADK                            R12 K16 ["EditAsset"]
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
       94 JUMPIFNOT                        R6 ; [+19]
       95 DUPTABLE                         R8 K10 [{"Text", "OnItemClicked"}]
       96 LOADK                            R11 K4 ["ContextMenu"]
       97 LOADK                            R12 K17 ["QuickShare"]
       98 NAMECALL                         R9 R4 K6 ["getText"]
      100 CALL                             R9 3 1
      101 SETTABLEKS                       R9 R8 K8 ["Text"]
      103 NEWCLOSURE                       R9 P3
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R9 R8 K9 ["OnItemClicked"]
      108 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      110 MOVE                             R7 R5
      111 GETIMPORT                        R6 K15 [table.insert]
      113 CALL                             R6 2 0
      114 GETUPVAL                         R6 5
      115 CALL                             R6 0 1
      116 JUMPIFNOT                        R6 ; [+20]
      117 DUPTABLE                         R8 K10 [{"Text", "OnItemClicked"}]
      118 LOADK                            R11 K4 ["ContextMenu"]
      119 LOADK                            R12 K18 ["FindInExplorer"]
      120 NAMECALL                         R9 R4 K6 ["getText"]
      122 CALL                             R9 3 1
      123 SETTABLEKS                       R9 R8 K8 ["Text"]
      125 NEWCLOSURE                       R9 P4
      126 CAPTURE                          UPVAL U3
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R1
      129 SETTABLEKS                       R9 R8 K9 ["OnItemClicked"]
      131 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      133 MOVE                             R7 R5
      134 GETIMPORT                        R6 K15 [table.insert]
      136 CALL                             R6 2 0
      137 RETURN                           R5 1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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
       18 NAMECALL                         R2 R2 K5 ["setQuickShareAssetIds"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 NEWTABLE                         R5 0 0
        2 NAMECALL                         R6 R1 K0 ["getCurrentScope"]
        4 CALL                             R6 1 1
        5 NEWTABLE                         R9 1 2
        7 LENGTH                           R13 R0
        8 JUMPIFNOTEQKN                    R13 K1 [1] ; [+7]
       10 LOADK                            R14 K2 ["ContextMenu"]
       11 LOADK                            R15 K3 ["InsertAsset"]
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
       66 LOADK                            R13 K14 ["EditAsset"]
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
       89 JUMPIFNOT                        R7 ; [+22]
       90 DUPTABLE                         R9 K8 [{"Text", "OnItemClicked"}]
       91 LOADK                            R12 K2 ["ContextMenu"]
       92 LOADK                            R13 K15 ["QuickShare"]
       93 NAMECALL                         R10 R4 K4 ["getText"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K6 ["Text"]
       98 NEWCLOSURE                       R10 P3
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U1
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R10 R9 K7 ["OnItemClicked"]
      106 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      108 MOVE                             R8 R5
      109 GETIMPORT                        R7 K13 [table.insert]
      111 CALL                             R7 2 0
      112 GETUPVAL                         R7 5
      113 CALL                             R7 0 1
      114 JUMPIFNOT                        R7 ; [+23]
      115 DUPTABLE                         R9 K8 [{"Text", "OnItemClicked"}]
      116 LOADK                            R12 K2 ["ContextMenu"]
      117 LOADK                            R13 K16 ["FindInExplorer"]
      118 NAMECALL                         R10 R4 K4 ["getText"]
      120 CALL                             R10 3 1
      121 SETTABLEKS                       R10 R9 K6 ["Text"]
      123 NEWCLOSURE                       R10 P4
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U1
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          VAL R1
      130 SETTABLEKS                       R10 R9 K7 ["OnItemClicked"]
      132 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      134 MOVE                             R8 R5
      135 GETIMPORT                        R7 K13 [table.insert]
      137 CALL                             R7 2 0
      138 RETURN                           R5 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["OnAddPlace"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_30:
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
        0 GETTABLEKS                       R1 R0 K0 ["PluginController"]
        2 GETTABLEKS                       R2 R0 K1 ["ItemsController"]
        4 GETTABLEKS                       R3 R0 K2 ["Networking"]
        6 GETTABLEKS                       R4 R0 K3 ["Localization"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["keys"]
       11 NAMECALL                         R6 R2 K5 ["getSelection"]
       13 CALL                             R6 1 -1
       14 CALL                             R5 -1 1
       15 NAMECALL                         R6 R2 K6 ["getItemsCache"]
       17 CALL                             R6 1 1
       18 NAMECALL                         R7 R1 K7 ["getCurrentScope"]
       20 CALL                             R7 1 1
       21 NEWTABLE                         R8 0 0
       23 GETTABLEKS                       R11 R7 K8 ["Uid"]
       25 MOVE                             R12 R5
       26 GETUPVAL                         R15 1
       27 GETTABLEKS                       R14 R15 K9 ["AssetInfoField"]
       29 GETTABLEKS                       R13 R14 K10 ["AssetType"]
       31 NAMECALL                         R9 R6 K11 ["getData"]
       33 CALL                             R9 4 1
       34 LOADB                            R10 0
       35 LENGTH                           R11 R5
       36 JUMPIFNOTEQKN                    R11 K12 [1] ; [+11]
       38 GETTABLEN                        R11 R9 1
       39 GETUPVAL                         R14 1
       40 GETTABLEKS                       R13 R14 K10 ["AssetType"]
       42 GETTABLEKS                       R12 R13 K13 ["Plugin"]
       44 JUMPIFEQ                         R11 R12 ; [+2]
       46 LOADB                            R10 0 +1
       47 LOADB                            R10 1
       48 LOADB                            R11 0
       49 LENGTH                           R12 R5
       50 JUMPIFNOTEQKN                    R12 K12 [1] ; [+11]
       52 GETTABLEN                        R12 R9 1
       53 GETUPVAL                         R15 1
       54 GETTABLEKS                       R14 R15 K10 ["AssetType"]
       56 GETTABLEKS                       R13 R14 K14 ["Place"]
       58 JUMPIFEQ                         R12 R13 ; [+2]
       60 LOADB                            R11 0 +1
       61 LOADB                            R11 1
       62 LOADB                            R12 0
       63 MOVE                             R13 R9
       64 LOADNIL                          R14
       65 LOADNIL                          R15
       66 FORGPREP                         R13
       67 GETUPVAL                         R18 2
       68 MOVE                             R19 R17
       69 CALL                             R18 1 1
       70 JUMPIFNOT                        R18 ; [+2]
       71 LOADB                            R12 1
       72 JUMP                             ; [+2]
       73 FORGLOOP                         R13 2 ; [-7]
       75 GETTABLEKS                       R15 R7 K8 ["Uid"]
       77 GETTABLEN                        R16 R5 1
       78 GETUPVAL                         R19 1
       79 GETTABLEKS                       R18 R19 K9 ["AssetInfoField"]
       81 GETTABLEKS                       R17 R18 K15 ["AssetId"]
       83 NAMECALL                         R13 R6 K16 ["getItemField"]
       85 CALL                             R13 4 1
       86 JUMPIFNOT                        R10 ; [+11]
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R14 R15 K17 ["append"]
       90 MOVE                             R15 R8
       91 GETUPVAL                         R16 3
       92 MOVE                             R17 R13
       93 MOVE                             R18 R3
       94 MOVE                             R19 R4
       95 CALL                             R16 3 1
       96 CALL                             R14 2 0
       97 JUMP                             ; [+25]
       98 JUMPIFNOT                        R11 ; [+11]
       99 GETUPVAL                         R15 0
      100 GETTABLEKS                       R14 R15 K17 ["append"]
      102 MOVE                             R15 R8
      103 GETUPVAL                         R16 4
      104 MOVE                             R17 R13
      105 MOVE                             R18 R1
      106 MOVE                             R19 R4
      107 CALL                             R16 3 1
      108 CALL                             R14 2 0
      109 JUMP                             ; [+13]
      110 JUMPIFNOT                        R12 ; [+12]
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R14 R15 K17 ["append"]
      114 MOVE                             R15 R8
      115 GETUPVAL                         R16 5
      116 MOVE                             R17 R5
      117 MOVE                             R18 R1
      118 MOVE                             R19 R2
      119 MOVE                             R20 R3
      120 MOVE                             R21 R4
      121 CALL                             R16 5 1
      122 CALL                             R14 2 0
      123 LENGTH                           R14 R8
      124 LOADN                            R15 0
      125 JUMPIFNOTLT                      R15 R14 ; [+16]
      127 GETUPVAL                         R17 6
      128 CALL                             R17 0 1
      129 JUMPIFNOT                        R17 ; [+2]
      130 GETUPVAL                         R16 7
      131 JUMP                             ; [+4]
      132 DUPTABLE                         R16 K19 [{"ShowSeparator"}]
      133 LOADB                            R17 1
      134 SETTABLEKS                       R17 R16 K18 ["ShowSeparator"]
      136 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      138 MOVE                             R15 R8
      139 GETIMPORT                        R14 K22 [table.insert]
      141 CALL                             R14 2 0
      142 GETTABLEKS                       R14 R7 K23 ["Type"]
      144 GETUPVAL                         R17 1
      145 GETTABLEKS                       R16 R17 K24 ["ScopeType"]
      147 GETTABLEKS                       R15 R16 K25 ["ProjectPlaces"]
      149 JUMPIFNOTEQ                      R14 R15 ; [+34]
      151 DUPTABLE                         R16 K28 [{"Text", "OnItemClicked"}]
      152 LOADK                            R19 K29 ["ContextMenu"]
      153 LOADK                            R20 K30 ["AddNewPlace"]
      154 NAMECALL                         R17 R4 K31 ["getText"]
      156 CALL                             R17 3 1
      157 SETTABLEKS                       R17 R16 K26 ["Text"]
      159 NEWCLOSURE                       R17 P0
      160 CAPTURE                          VAL R1
      161 SETTABLEKS                       R17 R16 K27 ["OnItemClicked"]
      163 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      165 MOVE                             R15 R8
      166 GETIMPORT                        R14 K22 [table.insert]
      168 CALL                             R14 2 0
      169 GETUPVAL                         R17 6
      170 CALL                             R17 0 1
      171 JUMPIFNOT                        R17 ; [+2]
      172 GETUPVAL                         R16 7
      173 JUMP                             ; [+4]
      174 DUPTABLE                         R16 K19 [{"ShowSeparator"}]
      175 LOADB                            R17 1
      176 SETTABLEKS                       R17 R16 K18 ["ShowSeparator"]
      178 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
      180 MOVE                             R15 R8
      181 GETIMPORT                        R14 K22 [table.insert]
      183 CALL                             R14 2 0
      184 LENGTH                           R14 R5
      185 LOADN                            R15 0
      186 JUMPIFNOTLT                      R15 R14 ; [+62]
      188 GETTABLEKS                       R16 R7 K8 ["Uid"]
      190 MOVE                             R17 R5
      191 GETUPVAL                         R20 1
      192 GETTABLEKS                       R19 R20 K9 ["AssetInfoField"]
      194 GETTABLEKS                       R18 R19 K15 ["AssetId"]
      196 NAMECALL                         R14 R6 K11 ["getData"]
      198 CALL                             R14 4 1
      199 DUPTABLE                         R17 K28 [{"Text", "OnItemClicked"}]
      200 LENGTH                           R19 R5
      201 JUMPIFNOTEQKN                    R19 K12 [1] ; [+7]
      203 LOADK                            R20 K29 ["ContextMenu"]
      204 LOADK                            R21 K32 ["CopyAssetId"]
      205 NAMECALL                         R18 R4 K31 ["getText"]
      207 CALL                             R18 3 1
      208 JUMP                             ; [+5]
      209 LOADK                            R20 K29 ["ContextMenu"]
      210 LOADK                            R21 K33 ["CopyAssetIds"]
      211 NAMECALL                         R18 R4 K31 ["getText"]
      213 CALL                             R18 3 1
      214 SETTABLEKS                       R18 R17 K26 ["Text"]
      216 NEWCLOSURE                       R18 P1
      217 CAPTURE                          VAL R14
      218 CAPTURE                          UPVAL U8
      219 CAPTURE                          UPVAL U9
      220 SETTABLEKS                       R18 R17 K27 ["OnItemClicked"]
      222 FASTCALL2                        TABLE_INSERT R8 R17 ; [+4]
      224 MOVE                             R16 R8
      225 GETIMPORT                        R15 K22 [table.insert]
      227 CALL                             R15 2 0
      228 DUPTABLE                         R17 K28 [{"Text", "OnItemClicked"}]
      229 LOADK                            R20 K29 ["ContextMenu"]
      230 LOADK                            R21 K34 ["ViewInBrowser"]
      231 NAMECALL                         R18 R4 K31 ["getText"]
      233 CALL                             R18 3 1
      234 SETTABLEKS                       R18 R17 K26 ["Text"]
      236 NEWCLOSURE                       R18 P2
      237 CAPTURE                          UPVAL U10
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R1
      241 SETTABLEKS                       R18 R17 K27 ["OnItemClicked"]
      243 FASTCALL2                        TABLE_INSERT R8 R17 ; [+4]
      245 MOVE                             R16 R8
      246 GETIMPORT                        R15 K22 [table.insert]
      248 CALL                             R15 2 0
      249 RETURN                           R8 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlugin"]
        3 CALL                             R0 1 1
        4 LOADK                            R2 K1 ["OnAddPlace"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["PluginController"]
        2 GETTABLEKS                       R2 R0 K1 ["ItemsController"]
        4 GETTABLEKS                       R3 R0 K2 ["Networking"]
        6 GETTABLEKS                       R4 R0 K3 ["Localization"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["keys"]
       11 NAMECALL                         R6 R2 K5 ["getSelection"]
       13 CALL                             R6 1 -1
       14 CALL                             R5 -1 1
       15 MOVE                             R8 R5
       16 NAMECALL                         R6 R2 K6 ["findSpecialAssets"]
       18 CALL                             R6 2 1
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R9 R10 K7 ["AssetType"]
       22 GETTABLEKS                       R8 R9 K8 ["Plugin"]
       24 GETTABLE                         R7 R6 R8
       25 JUMPIFNOT                        R7 ; [+5]
       26 LENGTH                           R8 R5
       27 JUMPIFEQKN                       R8 K9 [1] ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 GETUPVAL                         R11 1
       32 GETTABLEKS                       R10 R11 K7 ["AssetType"]
       34 GETTABLEKS                       R9 R10 K10 ["Place"]
       36 GETTABLE                         R8 R6 R9
       37 JUMPIFNOT                        R8 ; [+5]
       38 LENGTH                           R9 R5
       39 JUMPIFEQKN                       R9 K9 [1] ; [+2]
       41 LOADB                            R8 0 +1
       42 LOADB                            R8 1
       43 LOADN                            R9 0
       44 MOVE                             R10 R6
       45 LOADNIL                          R11
       46 LOADNIL                          R12
       47 FORGPREP                         R10
       48 LENGTH                           R15 R14
       49 ADD                              R9 R9 R15
       50 FORGLOOP                         R10 2 ; [-3]
       52 LENGTH                           R11 R5
       53 JUMPIFLT                         R9 R11 ; [+2]
       55 LOADB                            R10 0 +1
       56 LOADB                            R10 1
       57 NEWTABLE                         R11 0 0
       59 JUMPIFNOT                        R7 ; [+11]
       60 GETUPVAL                         R13 0
       61 GETTABLEKS                       R12 R13 K11 ["append"]
       63 MOVE                             R13 R11
       64 GETUPVAL                         R14 2
       65 GETTABLEN                        R15 R5 1
       66 MOVE                             R16 R3
       67 MOVE                             R17 R4
       68 CALL                             R14 3 1
       69 CALL                             R12 2 0
       70 JUMP                             ; [+25]
       71 JUMPIFNOT                        R8 ; [+11]
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R12 R13 K11 ["append"]
       75 MOVE                             R13 R11
       76 GETUPVAL                         R14 3
       77 GETTABLEN                        R15 R5 1
       78 MOVE                             R16 R1
       79 MOVE                             R17 R4
       80 CALL                             R14 3 1
       81 CALL                             R12 2 0
       82 JUMP                             ; [+13]
       83 JUMPIFNOT                        R10 ; [+12]
       84 GETUPVAL                         R13 0
       85 GETTABLEKS                       R12 R13 K11 ["append"]
       87 MOVE                             R13 R11
       88 GETUPVAL                         R14 4
       89 MOVE                             R15 R5
       90 MOVE                             R16 R1
       91 MOVE                             R17 R2
       92 MOVE                             R18 R3
       93 MOVE                             R19 R4
       94 CALL                             R14 5 1
       95 CALL                             R12 2 0
       96 LENGTH                           R12 R11
       97 LOADN                            R13 0
       98 JUMPIFNOTLT                      R13 R12 ; [+11]
      100 DUPTABLE                         R14 K13 [{"ShowSeparator"}]
      101 LOADB                            R15 1
      102 SETTABLEKS                       R15 R14 K12 ["ShowSeparator"]
      104 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      106 MOVE                             R13 R11
      107 GETIMPORT                        R12 K16 [table.insert]
      109 CALL                             R12 2 0
      110 NAMECALL                         R12 R1 K17 ["getCurrentScope"]
      112 CALL                             R12 1 1
      113 GETTABLEKS                       R13 R12 K18 ["Type"]
      115 GETUPVAL                         R16 1
      116 GETTABLEKS                       R15 R16 K19 ["ScopeType"]
      118 GETTABLEKS                       R14 R15 K20 ["ProjectPlaces"]
      120 JUMPIFNOTEQ                      R13 R14 ; [+29]
      122 DUPTABLE                         R15 K23 [{"Text", "OnItemClicked"}]
      123 LOADK                            R18 K24 ["ContextMenu"]
      124 LOADK                            R19 K25 ["AddNewPlace"]
      125 NAMECALL                         R16 R4 K26 ["getText"]
      127 CALL                             R16 3 1
      128 SETTABLEKS                       R16 R15 K21 ["Text"]
      130 NEWCLOSURE                       R16 P0
      131 CAPTURE                          VAL R1
      132 SETTABLEKS                       R16 R15 K22 ["OnItemClicked"]
      134 FASTCALL2                        TABLE_INSERT R11 R15 ; [+4]
      136 MOVE                             R14 R11
      137 GETIMPORT                        R13 K16 [table.insert]
      139 CALL                             R13 2 0
      140 DUPTABLE                         R15 K13 [{"ShowSeparator"}]
      141 LOADB                            R16 1
      142 SETTABLEKS                       R16 R15 K12 ["ShowSeparator"]
      144 FASTCALL2                        TABLE_INSERT R11 R15 ; [+4]
      146 MOVE                             R14 R11
      147 GETIMPORT                        R13 K16 [table.insert]
      149 CALL                             R13 2 0
      150 LENGTH                           R13 R5
      151 LOADN                            R14 0
      152 JUMPIFNOTLT                      R14 R13 ; [+51]
      154 DUPTABLE                         R15 K23 [{"Text", "OnItemClicked"}]
      155 LENGTH                           R17 R5
      156 JUMPIFNOTEQKN                    R17 K9 [1] ; [+7]
      158 LOADK                            R18 K24 ["ContextMenu"]
      159 LOADK                            R19 K27 ["CopyAssetId"]
      160 NAMECALL                         R16 R4 K26 ["getText"]
      162 CALL                             R16 3 1
      163 JUMP                             ; [+5]
      164 LOADK                            R18 K24 ["ContextMenu"]
      165 LOADK                            R19 K28 ["CopyAssetIds"]
      166 NAMECALL                         R16 R4 K26 ["getText"]
      168 CALL                             R16 3 1
      169 SETTABLEKS                       R16 R15 K21 ["Text"]
      171 NEWCLOSURE                       R16 P1
      172 CAPTURE                          VAL R5
      173 CAPTURE                          UPVAL U5
      174 CAPTURE                          UPVAL U6
      175 SETTABLEKS                       R16 R15 K22 ["OnItemClicked"]
      177 FASTCALL2                        TABLE_INSERT R11 R15 ; [+4]
      179 MOVE                             R14 R11
      180 GETIMPORT                        R13 K16 [table.insert]
      182 CALL                             R13 2 0
      183 DUPTABLE                         R15 K23 [{"Text", "OnItemClicked"}]
      184 LOADK                            R18 K24 ["ContextMenu"]
      185 LOADK                            R19 K29 ["ViewInBrowser"]
      186 NAMECALL                         R16 R4 K26 ["getText"]
      188 CALL                             R16 3 1
      189 SETTABLEKS                       R16 R15 K21 ["Text"]
      191 NEWCLOSURE                       R16 P2
      192 CAPTURE                          UPVAL U7
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R2
      196 SETTABLEKS                       R16 R15 K22 ["OnItemClicked"]
      198 FASTCALL2                        TABLE_INSERT R11 R15 ; [+4]
      200 MOVE                             R14 R11
      201 GETIMPORT                        R13 K16 [table.insert]
      203 CALL                             R13 2 0
      204 RETURN                           R11 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["LayoutController"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["toggleColumn"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleVisibleInventory"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["enableScopeOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshScopes"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_42:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R0 K0 ["Type"]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K1 ["ScopeType"]
        7 GETTABLEKS                       R5 R6 K2 ["Group"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+20]
       11 DUPTABLE                         R6 K5 [{"Text", "OnItemClicked"}]
       12 LOADK                            R9 K6 ["Scopes"]
       13 LOADK                            R10 K7 ["Hide"]
       14 NAMECALL                         R7 R1 K8 ["getText"]
       16 CALL                             R7 3 1
       17 SETTABLEKS                       R7 R6 K3 ["Text"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R7 R6 K4 ["OnItemClicked"]
       24 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       26 MOVE                             R5 R3
       27 GETIMPORT                        R4 K11 [table.insert]
       29 CALL                             R4 2 0
       30 DUPTABLE                         R6 K5 [{"Text", "OnItemClicked"}]
       31 LOADK                            R9 K6 ["Scopes"]
       32 LOADK                            R10 K12 ["Customize"]
       33 NAMECALL                         R7 R1 K8 ["getText"]
       35 CALL                             R7 3 1
       36 SETTABLEKS                       R7 R6 K3 ["Text"]
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R7 R6 K4 ["OnItemClicked"]
       42 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K11 [table.insert]
       47 CALL                             R4 2 0
       48 DUPTABLE                         R6 K5 [{"Text", "OnItemClicked"}]
       49 LOADK                            R9 K6 ["Scopes"]
       50 LOADK                            R10 K13 ["Refresh"]
       51 NAMECALL                         R7 R1 K8 ["getText"]
       53 CALL                             R7 3 1
       54 SETTABLEKS                       R7 R6 K3 ["Text"]
       56 NEWCLOSURE                       R7 P2
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R7 R6 K4 ["OnItemClicked"]
       60 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       62 MOVE                             R5 R3
       63 GETIMPORT                        R4 K11 [table.insert]
       65 CALL                             R4 2 0
       66 RETURN                           R3 1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Uid"]
        4 NAMECALL                         R0 R0 K1 ["toggleVisibleInventory"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["enableScopeOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshScopes"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["enableScopeOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshScopes"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+65]
        3 NEWTABLE                         R3 0 0
        5 JUMPIFNOT                        R2 ; [+28]
        6 GETTABLEKS                       R4 R2 K0 ["Type"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K1 ["ScopeType"]
       11 GETTABLEKS                       R5 R6 K2 ["Group"]
       13 JUMPIFNOTEQ                      R4 R5 ; [+20]
       15 DUPTABLE                         R6 K5 [{"Text", "OnItemClicked"}]
       16 LOADK                            R9 K6 ["Scopes"]
       17 LOADK                            R10 K7 ["Hide"]
       18 NAMECALL                         R7 R0 K8 ["getText"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K3 ["Text"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R7 R6 K4 ["OnItemClicked"]
       28 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K11 [table.insert]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K12 ["append"]
       37 MOVE                             R5 R3
       38 NEWTABLE                         R6 0 2
       40 DUPTABLE                         R7 K5 [{"Text", "OnItemClicked"}]
       41 LOADK                            R10 K6 ["Scopes"]
       42 LOADK                            R11 K13 ["Customize"]
       43 NAMECALL                         R8 R0 K8 ["getText"]
       45 CALL                             R8 3 1
       46 SETTABLEKS                       R8 R7 K3 ["Text"]
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R8 R7 K4 ["OnItemClicked"]
       52 DUPTABLE                         R8 K5 [{"Text", "OnItemClicked"}]
       53 LOADK                            R11 K6 ["Scopes"]
       54 LOADK                            R12 K14 ["Refresh"]
       55 NAMECALL                         R9 R0 K8 ["getText"]
       57 CALL                             R9 3 1
       58 SETTABLEKS                       R9 R8 K3 ["Text"]
       60 NEWCLOSURE                       R9 P2
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R9 R8 K4 ["OnItemClicked"]
       64 SETLIST                          R6 R7 2 [1]
       66 CALL                             R4 2 0
       67 RETURN                           R3 1
       68 NEWTABLE                         R3 0 2
       70 DUPTABLE                         R4 K5 [{"Text", "OnItemClicked"}]
       71 LOADK                            R7 K6 ["Scopes"]
       72 LOADK                            R8 K13 ["Customize"]
       73 NAMECALL                         R5 R0 K8 ["getText"]
       75 CALL                             R5 3 1
       76 SETTABLEKS                       R5 R4 K3 ["Text"]
       78 NEWCLOSURE                       R5 P3
       79 CAPTURE                          VAL R1
       80 SETTABLEKS                       R5 R4 K4 ["OnItemClicked"]
       82 DUPTABLE                         R5 K5 [{"Text", "OnItemClicked"}]
       83 LOADK                            R8 K6 ["Scopes"]
       84 LOADK                            R9 K14 ["Refresh"]
       85 NAMECALL                         R6 R0 K8 ["getText"]
       87 CALL                             R6 3 1
       88 SETTABLEKS                       R6 R5 K3 ["Text"]
       90 NEWCLOSURE                       R6 P4
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R6 R5 K4 ["OnItemClicked"]
       94 SETLIST                          R3 R4 2 [1]
       96 RETURN                           R3 1

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
       66 NEWTABLE                         R8 0 0
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R12 R0 K8 ["Src"]
       72 GETTABLEKS                       R11 R12 K10 ["Util"]
       74 GETTABLEKS                       R10 R11 K16 ["Services"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K18 [game]
       79 LOADK                            R12 K19 ["ContentProvider"]
       80 NAMECALL                         R10 R10 K20 ["GetService"]
       82 CALL                             R10 2 1
       83 GETTABLEKS                       R11 R9 K20 ["GetService"]
       85 LOADK                            R12 K21 ["BrowserService"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K18 [game]
       89 LOADK                            R14 K22 ["HttpService"]
       90 NAMECALL                         R12 R12 K20 ["GetService"]
       92 CALL                             R12 2 1
       93 GETIMPORT                        R13 K18 [game]
       95 LOADK                            R15 K23 ["MemStorageService"]
       96 NAMECALL                         R13 R13 K20 ["GetService"]
       98 CALL                             R13 2 1
       99 GETTABLEKS                       R14 R9 K20 ["GetService"]
      101 LOADK                            R15 K24 ["StudioService"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K18 [game]
      105 LOADK                            R17 K25 ["PlaceVersionHistory"]
      106 NAMECALL                         R15 R15 K26 ["GetEngineFeature"]
      108 CALL                             R15 2 1
      109 GETIMPORT                        R16 K5 [require]
      111 GETTABLEKS                       R19 R0 K8 ["Src"]
      113 GETTABLEKS                       R18 R19 K27 ["Flags"]
      115 GETTABLEKS                       R17 R18 K28 ["getFFlagAmrCleanupContextAndInput"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K5 [require]
      120 GETTABLEKS                       R20 R0 K8 ["Src"]
      122 GETTABLEKS                       R19 R20 K27 ["Flags"]
      124 GETTABLEKS                       R18 R19 K29 ["getFFlagAmrQuickShare"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K5 [require]
      129 GETTABLEKS                       R21 R0 K8 ["Src"]
      131 GETTABLEKS                       R20 R21 K27 ["Flags"]
      133 GETTABLEKS                       R19 R20 K30 ["getFFlagAmrUpdatedItemsCache"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K5 [require]
      138 GETTABLEKS                       R22 R0 K8 ["Src"]
      140 GETTABLEKS                       R21 R22 K27 ["Flags"]
      142 GETTABLEKS                       R20 R21 K31 ["getFFlagAmrSelectAssetsInExplorer"]
      144 CALL                             R19 1 1
      145 DUPTABLE                         R20 K36 [{"DataModel", "PluginId", "Category", "ItemId"}]
      146 LOADK                            R21 K37 ["Standalone"]
      147 SETTABLEKS                       R21 R20 K32 ["DataModel"]
      149 LOADK                            R21 K25 ["PlaceVersionHistory"]
      150 SETTABLEKS                       R21 R20 K33 ["PluginId"]
      152 LOADK                            R21 K38 ["Actions"]
      153 SETTABLEKS                       R21 R20 K34 ["Category"]
      155 LOADK                            R21 K39 ["Toggle"]
      156 SETTABLEKS                       R21 R20 K35 ["ItemId"]
      158 DUPTABLE                         R21 K36 [{"DataModel", "PluginId", "Category", "ItemId"}]
      159 LOADK                            R22 K37 ["Standalone"]
      160 SETTABLEKS                       R22 R21 K32 ["DataModel"]
      162 LOADK                            R22 K25 ["PlaceVersionHistory"]
      163 SETTABLEKS                       R22 R21 K33 ["PluginId"]
      165 LOADK                            R22 K40 ["Settings"]
      166 SETTABLEKS                       R22 R21 K34 ["Category"]
      168 LOADK                            R22 K41 ["PlaceId"]
      169 SETTABLEKS                       R22 R21 K35 ["ItemId"]
      171 DUPTABLE                         R22 K43 [{"ShowSeparator"}]
      172 LOADB                            R23 1
      173 SETTABLEKS                       R23 R22 K42 ["ShowSeparator"]
      175 NEWTABLE                         R23 8 0
      177 GETTABLEKS                       R25 R2 K44 ["AssetInfoField"]
      179 GETTABLEKS                       R24 R25 K45 ["DisplayName"]
      181 LOADB                            R25 1
      182 SETTABLE                         R25 R23 R24
      183 GETTABLEKS                       R25 R2 K44 ["AssetInfoField"]
      185 GETTABLEKS                       R24 R25 K46 ["ModerationStatus"]
      187 LOADB                            R25 1
      188 SETTABLE                         R25 R23 R24
      189 GETTABLEKS                       R25 R2 K44 ["AssetInfoField"]
      191 GETTABLEKS                       R24 R25 K47 ["VersionNumber"]
      193 LOADB                            R25 1
      194 SETTABLE                         R25 R23 R24
      195 GETTABLEKS                       R25 R2 K44 ["AssetInfoField"]
      197 GETTABLEKS                       R24 R25 K48 ["IsPackage"]
      199 LOADB                            R25 1
      200 SETTABLE                         R25 R23 R24
      201 GETTABLEKS                       R25 R2 K44 ["AssetInfoField"]
      203 GETTABLEKS                       R24 R25 K49 ["Archived"]
      205 LOADB                            R25 1
      206 SETTABLE                         R25 R23 R24
      207 GETTABLEKS                       R25 R2 K44 ["AssetInfoField"]
      209 GETTABLEKS                       R24 R25 K50 ["Path"]
      211 LOADB                            R25 1
      212 SETTABLE                         R25 R23 R24
      213 GETTABLEKS                       R25 R2 K44 ["AssetInfoField"]
      215 GETTABLEKS                       R24 R25 K51 ["SearchRank"]
      217 LOADB                            R25 1
      218 SETTABLE                         R25 R23 R24
      219 DUPCLOSURE                       R24 K52 [PROTO_0]
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R11
      223 DUPCLOSURE                       R25 K53 [PROTO_1]
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R12
      226 DUPCLOSURE                       R26 K54 [PROTO_2]
      227 CAPTURE                          VAL R23
      228 DUPCLOSURE                       R27 K55 [PROTO_3]
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R12
      231 DUPCLOSURE                       R28 K56 [PROTO_4]
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R20
      234 DUPCLOSURE                       R29 K57 [PROTO_7]
      235 CAPTURE                          VAL R14
      236 DUPCLOSURE                       R30 K58 [PROTO_11]
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R10
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R11
      242 DUPCLOSURE                       R31 K59 [PROTO_16]
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R28
      245 CAPTURE                          VAL R14
      246 DUPCLOSURE                       R32 K60 [PROTO_22]
      247 CAPTURE                          VAL R18
      248 CAPTURE                          VAL R3
      249 CAPTURE                          VAL R13
      250 CAPTURE                          VAL R12
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R19
      253 DUPCLOSURE                       R33 K61 [PROTO_28]
      254 CAPTURE                          VAL R3
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R12
      258 CAPTURE                          VAL R17
      259 CAPTURE                          VAL R19
      260 DUPCLOSURE                       R34 K62 [PROTO_32]
      261 CAPTURE                          VAL R1
      262 CAPTURE                          VAL R2
      263 CAPTURE                          VAL R5
      264 CAPTURE                          VAL R30
      265 CAPTURE                          VAL R31
      266 CAPTURE                          VAL R33
      267 CAPTURE                          VAL R16
      268 CAPTURE                          VAL R22
      269 CAPTURE                          VAL R14
      270 CAPTURE                          VAL R12
      271 CAPTURE                          VAL R6
      272 GETTABLEKS                       R36 R2 K63 ["MenuContext"]
      274 GETTABLEKS                       R35 R36 K64 ["Asset"]
      276 MOVE                             R37 R18
      277 CALL                             R37 0 1
      278 JUMPIFNOT                        R37 ; [+2]
      279 MOVE                             R36 R34
      280 JUMP                             ; [+9]
      281 DUPCLOSURE                       R36 K65 [PROTO_36]
      282 CAPTURE                          VAL R1
      283 CAPTURE                          VAL R2
      284 CAPTURE                          VAL R30
      285 CAPTURE                          VAL R31
      286 CAPTURE                          VAL R32
      287 CAPTURE                          VAL R14
      288 CAPTURE                          VAL R12
      289 CAPTURE                          VAL R6
      290 SETTABLE                         R36 R8 R35
      291 GETTABLEKS                       R36 R2 K63 ["MenuContext"]
      293 GETTABLEKS                       R35 R36 K66 ["Column"]
      295 DUPCLOSURE                       R36 K67 [PROTO_38]
      296 CAPTURE                          VAL R2
      297 CAPTURE                          VAL R23
      298 CAPTURE                          VAL R4
      299 SETTABLE                         R36 R8 R35
      300 GETTABLEKS                       R36 R2 K63 ["MenuContext"]
      302 GETTABLEKS                       R35 R36 K68 ["Scope"]
      304 DUPCLOSURE                       R36 K69 [PROTO_42]
      305 CAPTURE                          VAL R2
      306 SETTABLE                         R36 R8 R35
      307 GETTABLEKS                       R36 R2 K63 ["MenuContext"]
      309 GETTABLEKS                       R35 R36 K70 ["Sidebar"]
      311 DUPCLOSURE                       R36 K71 [PROTO_48]
      312 CAPTURE                          VAL R16
      313 CAPTURE                          VAL R2
      314 CAPTURE                          VAL R1
      315 SETTABLE                         R36 R8 R35
      316 RETURN                           R8 1
