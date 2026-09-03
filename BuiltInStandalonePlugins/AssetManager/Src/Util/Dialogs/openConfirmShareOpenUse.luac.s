PROTO_0:
        0 JUMPIFNOT                        R1 ; [+58]
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+33]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["showSnackbar"]
        7 DUPTABLE                         R4 K3 [{"LocalizableMessage", "Type"}]
        8 DUPTABLE                         R5 K8 [{["Key"] = "OpenUse", ["SubKey"], ["Args"]}]
        9 JUMPIFNOTEQKN                    R2 K9 [1] ; [+3]
       11 LOADK                            R6 K10 ["OneAsset"]
       12 JUMP                             ; [+1]
       13 LOADK                            R6 K11 ["MultipleAssets"]
       14 SETTABLEKS                       R6 R5 K6 ["SubKey"]
       16 DUPTABLE                         R6 K13 [{"count"}]
       17 FASTCALL1                        TOSTRING R2 ; [+3]
       18 MOVE                             R8 R2
       19 GETIMPORT                        R7 K15 [tostring]
       21 CALL                             R7 1 1
       22 SETTABLEKS                       R7 R6 K12 ["count"]
       24 SETTABLEKS                       R6 R5 K7 ["Args"]
       26 SETTABLEKS                       R5 R4 K1 ["LocalizableMessage"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K16 ["SnackbarType"]
       31 GETTABLEKS                       R5 R5 K17 ["Info"]
       33 SETTABLEKS                       R5 R4 K2 ["Type"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 DUPTABLE                         R5 K8 [{["Key"] = "OpenUse", ["SubKey"], ["Args"]}]
       38 JUMPIFNOTEQKN                    R2 K9 [1] ; [+3]
       40 LOADK                            R6 K10 ["OneAsset"]
       41 JUMP                             ; [+1]
       42 LOADK                            R6 K11 ["MultipleAssets"]
       43 SETTABLEKS                       R6 R5 K6 ["SubKey"]
       45 DUPTABLE                         R6 K13 [{"count"}]
       46 FASTCALL1                        TOSTRING R2 ; [+3]
       47 MOVE                             R8 R2
       48 GETIMPORT                        R7 K15 [tostring]
       50 CALL                             R7 1 1
       51 SETTABLEKS                       R7 R6 K12 ["count"]
       53 SETTABLEKS                       R6 R5 K7 ["Args"]
       55 NAMECALL                         R3 R0 K18 ["showToast"]
       57 CALL                             R3 2 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R3 0
       60 CALL                             R3 0 1
       61 JUMPIFNOT                        R3 ; [+16]
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R3 R3 K0 ["showSnackbar"]
       65 DUPTABLE                         R4 K3 [{"LocalizableMessage", "Type"}]
       66 DUPTABLE                         R5 K21 [{["Key"] = "QuickShare", ["SubKey"] = "FailedToGrant"}]
       67 SETTABLEKS                       R5 R4 K1 ["LocalizableMessage"]
       69 GETUPVAL                         R5 1
       70 GETTABLEKS                       R5 R5 K16 ["SnackbarType"]
       72 GETTABLEKS                       R5 R5 K22 ["Error"]
       74 SETTABLEKS                       R5 R4 K2 ["Type"]
       76 CALL                             R3 1 0
       77 RETURN                           R0 0
       78 DUPTABLE                         R5 K21 [{["Key"] = "QuickShare", ["SubKey"] = "FailedToGrant"}]
       79 NAMECALL                         R3 R0 K18 ["showToast"]
       81 CALL                             R3 2 0
       82 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R2
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 GETTABLEKS                       R13 R9 K0 ["assetId"]
        8 GETTABLE                         R12 R3 R13
        9 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       11 MOVE                             R11 R4
       12 GETIMPORT                        R10 K3 [table.insert]
       14 CALL                             R10 2 0
       15 FORGLOOP                         R5 2 ; [-10]
       17 DUPTABLE                         R5 K7 [{"Title", "Size", "Type"}]
       18 LOADK                            R8 K8 ["ContextMenu"]
       19 LOADK                            R9 K9 ["OpenUse"]
       20 NAMECALL                         R6 R1 K10 ["getText"]
       22 CALL                             R6 3 1
       23 SETTABLEKS                       R6 R5 K4 ["Title"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K11 ["QuickShareDialogSize"]
       28 SETTABLEKS                       R6 R5 K5 ["Size"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K12 ["DialogType"]
       33 GETTABLEKS                       R6 R6 K13 ["AssetError"]
       35 SETTABLEKS                       R6 R5 K6 ["Type"]
       37 DUPTABLE                         R6 K20 [{["Title"], ["LinkText"], ["LinkUrl"], ["AssetPaths"], ["CanClose"] = True, ["OnClose"]}]
       38 LOADK                            R9 K9 ["OpenUse"]
       39 LOADK                            R10 K21 ["ErrorTitle"]
       40 NAMECALL                         R7 R1 K10 ["getText"]
       42 CALL                             R7 3 1
       43 SETTABLEKS                       R7 R6 K4 ["Title"]
       45 LOADK                            R9 K9 ["OpenUse"]
       46 LOADK                            R10 K22 ["LearnMore"]
       47 NAMECALL                         R7 R1 K10 ["getText"]
       49 CALL                             R7 3 1
       50 SETTABLEKS                       R7 R6 K14 ["LinkText"]
       52 GETUPVAL                         R7 2
       53 CALL                             R7 0 1
       54 SETTABLEKS                       R7 R6 K15 ["LinkUrl"]
       56 SETTABLEKS                       R4 R6 K16 ["AssetPaths"]
       58 NEWCLOSURE                       R7 P0
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R7 R6 K19 ["OnClose"]
       62 MOVE                             R9 R5
       63 MOVE                             R10 R6
       64 NAMECALL                         R7 R0 K23 ["setDialog"]
       66 CALL                             R7 3 0
       67 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["closeDialog"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["count"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 LOADN                            R3 0
       10 JUMPIFNOTLT                      R3 R2 ; [+8]
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R4 3
       15 MOVE                             R5 R1
       16 GETUPVAL                         R6 4
       17 CALL                             R2 4 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 5
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R0
       22 GETUPVAL                         R6 6
       23 LENGTH                           R5 R6
       24 CALL                             R2 3 0
       25 JUMPIFNOT                        R0 ; [+76]
       26 GETUPVAL                         R2 7
       27 GETTABLEKS                       R2 R2 K2 ["sendShareEvent"]
       29 DUPTABLE                         R3 K5 [{"shareType", "assetIds"}]
       30 GETUPVAL                         R4 7
       31 GETTABLEKS                       R4 R4 K6 ["Types"]
       33 GETTABLEKS                       R4 R4 K7 ["ShareType"]
       35 GETTABLEKS                       R4 R4 K8 ["OpenUse"]
       37 SETTABLEKS                       R4 R3 K3 ["shareType"]
       39 GETUPVAL                         R4 6
       40 SETTABLEKS                       R4 R3 K4 ["assetIds"]
       42 DUPTABLE                         R4 K13 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       43 GETUPVAL                         R5 8
       44 SETTABLEKS                       R5 R4 K9 ["ExplorerController"]
       46 GETUPVAL                         R5 9
       47 SETTABLEKS                       R5 R4 K10 ["LayoutController"]
       49 GETUPVAL                         R5 10
       50 SETTABLEKS                       R5 R4 K11 ["ItemsController"]
       52 GETUPVAL                         R5 11
       53 SETTABLEKS                       R5 R4 K12 ["SearchController"]
       55 CALL                             R2 2 0
       56 GETUPVAL                         R2 12
       57 CALL                             R2 0 1
       58 JUMPIF                           R2 ; [+43]
       59 GETUPVAL                         R2 10
       60 NAMECALL                         R2 R2 K14 ["getScopeAnalyticsContext"]
       62 CALL                             R2 1 1
       63 GETUPVAL                         R3 13
       64 GETTABLEKS                       R3 R3 K2 ["sendShareEvent"]
       66 DUPTABLE                         R4 K19 [{"shareType", "currentRootId", "currentRootType", "currentFolderId", "assetIds", "viewMode"}]
       67 GETUPVAL                         R5 13
       68 GETTABLEKS                       R5 R5 K20 ["Enums"]
       70 GETTABLEKS                       R5 R5 K7 ["ShareType"]
       72 GETTABLEKS                       R5 R5 K8 ["OpenUse"]
       74 SETTABLEKS                       R5 R4 K3 ["shareType"]
       76 GETTABLEKS                       R5 R2 K15 ["currentRootId"]
       78 SETTABLEKS                       R5 R4 K15 ["currentRootId"]
       80 GETTABLEKS                       R5 R2 K16 ["currentRootType"]
       82 SETTABLEKS                       R5 R4 K16 ["currentRootType"]
       84 GETTABLEKS                       R5 R2 K17 ["currentFolderId"]
       86 SETTABLEKS                       R5 R4 K17 ["currentFolderId"]
       88 GETUPVAL                         R5 6
       89 SETTABLEKS                       R5 R4 K4 ["assetIds"]
       91 GETUPVAL                         R5 14
       92 GETUPVAL                         R6 9
       93 NAMECALL                         R6 R6 K21 ["getBrowserLayout"]
       95 CALL                             R6 1 1
       96 GETTABLEKS                       R6 R6 K22 ["ViewType"]
       98 CALL                             R5 1 1
       99 SETTABLEKS                       R5 R4 K18 ["viewMode"]
      101 CALL                             R3 1 0
      102 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R5 1
        3 GETTABLE                         R4 R1 R5
        4 JUMPIF                           R4 ; [+2]
        5 NEWTABLE                         R4 0 0
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K5 [{[1] = "", ["Name"] = "", ["Subject"], ["Action"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K6 ["PermissionsSubject"]
        4 GETTABLEKS                       R1 R1 K7 ["All"]
        6 SETTABLEKS                       R1 R0 K3 ["Subject"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K8 ["PermissionsAction"]
       11 GETTABLEKS                       R1 R1 K9 ["Use"]
       13 SETTABLEKS                       R1 R0 K4 ["Action"]
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R0
       21 SETLIST                          R4 R5 1 [1]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 CALL                             R1 4 0
       27 LOADB                            R1 1
       28 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R8 0 0
        2 NAMECALL                         R9 R0 K0 ["getItemsCache"]
        4 CALL                             R9 1 1
        5 NAMECALL                         R10 R0 K1 ["getCurrentShownScope"]
        7 CALL                             R10 1 1
        8 GETTABLEKS                       R13 R10 K2 ["Uid"]
       10 MOVE                             R14 R4
       11 GETUPVAL                         R15 0
       12 GETTABLEKS                       R15 R15 K3 ["AssetInfoField"]
       14 GETTABLEKS                       R15 R15 K4 ["AssetId"]
       16 NAMECALL                         R11 R9 K5 ["getData"]
       18 CALL                             R11 4 1
       19 LOADN                            R14 1
       20 LENGTH                           R12 R11
       21 LOADN                            R13 1
       22 FORNPREP                         R12
       23 GETTABLE                         R15 R11 R14
       24 GETTABLE                         R16 R4 R14
       25 SETTABLE                         R16 R8 R15
       26 FORNLOOP                         R12
       27 NEWCLOSURE                       R12 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R8
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R11
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R7
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 DUPTABLE                         R13 K9 [{"Title", "Size", "Type"}]
       44 LOADK                            R16 K10 ["ContextMenu"]
       45 LOADK                            R17 K11 ["OpenUse"]
       46 NAMECALL                         R14 R3 K12 ["getText"]
       48 CALL                             R14 3 1
       49 SETTABLEKS                       R14 R13 K6 ["Title"]
       51 GETUPVAL                         R14 8
       52 GETTABLEKS                       R14 R14 K13 ["ConfirmDialogSize"]
       54 SETTABLEKS                       R14 R13 K7 ["Size"]
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R14 R14 K14 ["DialogType"]
       59 GETTABLEKS                       R14 R14 K15 ["Confirm"]
       61 SETTABLEKS                       R14 R13 K8 ["Type"]
       63 DUPTABLE                         R14 K20 [{"Text", "LinkText", "LinkUrl", "ConfirmCallback"}]
       64 LOADK                            R17 K11 ["OpenUse"]
       65 LOADK                            R18 K21 ["ConfirmText"]
       66 NAMECALL                         R15 R3 K12 ["getText"]
       68 CALL                             R15 3 1
       69 SETTABLEKS                       R15 R14 K16 ["Text"]
       71 LOADK                            R17 K11 ["OpenUse"]
       72 LOADK                            R18 K22 ["LearnMore"]
       73 NAMECALL                         R15 R3 K12 ["getText"]
       75 CALL                             R15 3 1
       76 SETTABLEKS                       R15 R14 K17 ["LinkText"]
       78 GETUPVAL                         R15 9
       79 CALL                             R15 0 1
       80 SETTABLEKS                       R15 R14 K18 ["LinkUrl"]
       82 NEWCLOSURE                       R15 P1
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          UPVAL U10
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R12
       88 SETTABLEKS                       R15 R14 K19 ["ConfirmCallback"]
       90 MOVE                             R17 R13
       91 MOVE                             R18 R14
       92 NAMECALL                         R15 R1 K23 ["setDialog"]
       94 CALL                             R15 3 0
       95 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Analytics"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["DEPRECATED_Analytics"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Dash"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Resources"]
       41 GETTABLEKS                       R6 R6 K13 ["StyleConstants"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Util"]
       50 GETTABLEKS                       R7 R7 K15 ["grantPermissionsAsync"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R8 K14 ["Util"]
       59 GETTABLEKS                       R8 R8 K16 ["getViewTypeTelemetryString"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Src"]
       66 GETTABLEKS                       R9 R9 K14 ["Util"]
       68 GETTABLEKS                       R9 R9 K17 ["Notifications"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Src"]
       75 GETTABLEKS                       R10 R10 K18 ["Flags"]
       77 GETTABLEKS                       R10 R10 K19 ["getFFlagAmrDisableShardedEvent"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K6 ["Src"]
       84 GETTABLEKS                       R11 R11 K18 ["Flags"]
       86 GETTABLEKS                       R11 R11 K20 ["getFStringAmrOpenUsePage"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K6 ["Src"]
       93 GETTABLEKS                       R12 R12 K18 ["Flags"]
       95 GETTABLEKS                       R12 R12 K21 ["getFFlagAmrStudioToastsIntegration"]
       97 CALL                             R11 1 1
       98 DUPCLOSURE                       R12 K22 [PROTO_0]
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R8
      101 DUPCLOSURE                       R13 K23 [PROTO_2]
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R10
      105 DUPCLOSURE                       R14 K24 [PROTO_6]
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R6
      117 RETURN                           R14 1
