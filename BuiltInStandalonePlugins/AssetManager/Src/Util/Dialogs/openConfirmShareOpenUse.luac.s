PROTO_0:
        0 JUMPIFNOT                        R2 ; [+22]
        1 DUPTABLE                         R6 K4 [{[1] = "OpenUse", ["SubKey"], ["Args"]}]
        2 JUMPIFNOTEQKN                    R3 K5 [1] ; [+3]
        4 LOADK                            R7 K6 ["OneAsset"]
        5 JUMP                             ; [+1]
        6 LOADK                            R7 K7 ["MultipleAssets"]
        7 SETTABLEKS                       R7 R6 K2 ["SubKey"]
        9 DUPTABLE                         R7 K9 [{"count"}]
       10 FASTCALL1                        TOSTRING R3 ; [+3]
       11 MOVE                             R9 R3
       12 GETIMPORT                        R8 K11 [tostring]
       14 CALL                             R8 1 1
       15 SETTABLEKS                       R8 R7 K8 ["count"]
       17 SETTABLEKS                       R7 R6 K3 ["Args"]
       19 NAMECALL                         R4 R0 K12 ["showToast"]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0
       23 DUPTABLE                         R6 K15 [{[1] = "QuickShare", ["SubKey"] = "FailedToGrant"}]
       24 NAMECALL                         R4 R0 K12 ["showToast"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

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
       21 GETUPVAL                         R4 3
       22 MOVE                             R5 R0
       23 GETUPVAL                         R7 6
       24 LENGTH                           R6 R7
       25 CALL                             R2 4 0
       26 JUMPIFNOT                        R0 ; [+43]
       27 GETUPVAL                         R2 7
       28 NAMECALL                         R2 R2 K2 ["getScopeAnalyticsContext"]
       30 CALL                             R2 1 1
       31 GETUPVAL                         R3 8
       32 GETTABLEKS                       R3 R3 K3 ["sendShareEvent"]
       34 DUPTABLE                         R4 K10 [{"shareType", "currentRootId", "currentRootType", "currentFolderId", "assetIds", "viewMode"}]
       35 GETUPVAL                         R5 8
       36 GETTABLEKS                       R5 R5 K11 ["Enums"]
       38 GETTABLEKS                       R5 R5 K12 ["ShareType"]
       40 GETTABLEKS                       R5 R5 K13 ["OpenUse"]
       42 SETTABLEKS                       R5 R4 K4 ["shareType"]
       44 GETTABLEKS                       R5 R2 K5 ["currentRootId"]
       46 SETTABLEKS                       R5 R4 K5 ["currentRootId"]
       48 GETTABLEKS                       R5 R2 K6 ["currentRootType"]
       50 SETTABLEKS                       R5 R4 K6 ["currentRootType"]
       52 GETTABLEKS                       R5 R2 K7 ["currentFolderId"]
       54 SETTABLEKS                       R5 R4 K7 ["currentFolderId"]
       56 GETUPVAL                         R5 6
       57 SETTABLEKS                       R5 R4 K8 ["assetIds"]
       59 GETUPVAL                         R5 9
       60 GETUPVAL                         R6 10
       61 NAMECALL                         R6 R6 K14 ["getBrowserLayout"]
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R6 R6 K15 ["ViewType"]
       66 CALL                             R5 1 1
       67 SETTABLEKS                       R5 R4 K9 ["viewMode"]
       69 CALL                             R3 1 0
       70 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["PermissionsSubject"]
        5 GETTABLEKS                       R3 R3 K1 ["All"]
        7 LOADK                            R4 K2 [""]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K3 ["PermissionsAction"]
       11 GETTABLEKS                       R5 R5 K4 ["Use"]
       13 LOADB                            R6 0
       14 GETUPVAL                         R7 3
       15 NAMECALL                         R0 R0 K5 ["grantAssetsPermissionsAsync"]
       17 CALL                             R0 7 0
       18 LOADB                            R0 1
       19 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R6 0 0
        2 NAMECALL                         R7 R0 K0 ["getItemsCache"]
        4 CALL                             R7 1 1
        5 NAMECALL                         R8 R0 K1 ["getCurrentShownScope"]
        7 CALL                             R8 1 1
        8 GETTABLEKS                       R11 R8 K2 ["Uid"]
       10 MOVE                             R12 R4
       11 GETUPVAL                         R13 0
       12 GETTABLEKS                       R13 R13 K3 ["AssetInfoField"]
       14 GETTABLEKS                       R13 R13 K4 ["AssetId"]
       16 NAMECALL                         R9 R7 K5 ["getData"]
       18 CALL                             R9 4 1
       19 LOADN                            R12 1
       20 LENGTH                           R10 R9
       21 LOADN                            R11 1
       22 FORNPREP                         R10
       23 GETTABLE                         R13 R9 R12
       24 GETTABLE                         R14 R4 R12
       25 SETTABLE                         R14 R6 R13
       26 FORNLOOP                         R10
       27 NEWCLOSURE                       R10 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R6
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R9
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R5
       39 DUPTABLE                         R11 K9 [{"Title", "Size", "Type"}]
       40 LOADK                            R14 K10 ["ContextMenu"]
       41 LOADK                            R15 K11 ["OpenUse"]
       42 NAMECALL                         R12 R3 K12 ["getText"]
       44 CALL                             R12 3 1
       45 SETTABLEKS                       R12 R11 K6 ["Title"]
       47 GETUPVAL                         R12 6
       48 GETTABLEKS                       R12 R12 K13 ["ConfirmDialogSize"]
       50 SETTABLEKS                       R12 R11 K7 ["Size"]
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R12 R12 K14 ["DialogType"]
       55 GETTABLEKS                       R12 R12 K15 ["Confirm"]
       57 SETTABLEKS                       R12 R11 K8 ["Type"]
       59 DUPTABLE                         R12 K20 [{"Text", "LinkText", "LinkUrl", "ConfirmCallback"}]
       60 LOADK                            R15 K11 ["OpenUse"]
       61 LOADK                            R16 K21 ["ConfirmText"]
       62 NAMECALL                         R13 R3 K12 ["getText"]
       64 CALL                             R13 3 1
       65 SETTABLEKS                       R13 R12 K16 ["Text"]
       67 LOADK                            R15 K11 ["OpenUse"]
       68 LOADK                            R16 K22 ["LearnMore"]
       69 NAMECALL                         R13 R3 K12 ["getText"]
       71 CALL                             R13 3 1
       72 SETTABLEKS                       R13 R12 K17 ["LinkText"]
       74 GETUPVAL                         R13 7
       75 CALL                             R13 0 1
       76 SETTABLEKS                       R13 R12 K18 ["LinkUrl"]
       78 NEWCLOSURE                       R13 P1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R9
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R13 R12 K19 ["ConfirmCallback"]
       85 MOVE                             R15 R11
       86 MOVE                             R16 R12
       87 NAMECALL                         R13 R1 K23 ["setDialog"]
       89 CALL                             R13 3 0
       90 RETURN                           R0 0

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
       18 GETTABLEKS                       R3 R3 K8 ["DEPRECATED_Analytics"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["StyleConstants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Util"]
       43 GETTABLEKS                       R6 R6 K14 ["getViewTypeTelemetryString"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Flags"]
       52 GETTABLEKS                       R7 R7 K16 ["getFStringAmrOpenUsePage"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K17 [PROTO_0]
       56 DUPCLOSURE                       R8 K18 [PROTO_2]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R6
       60 DUPCLOSURE                       R9 K19 [PROTO_5]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 RETURN                           R9 1
