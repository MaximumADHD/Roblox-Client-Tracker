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
       26 JUMPIFNOT                        R0 ; [+76]
       27 GETUPVAL                         R2 7
       28 CALL                             R2 0 1
       29 JUMPIFNOT                        R2 ; [+27]
       30 GETUPVAL                         R2 8
       31 GETTABLEKS                       R2 R2 K2 ["sendShareEvent"]
       33 DUPTABLE                         R3 K5 [{"shareType", "assetIds"}]
       34 GETUPVAL                         R4 8
       35 GETTABLEKS                       R4 R4 K6 ["Types"]
       37 GETTABLEKS                       R4 R4 K7 ["ShareType"]
       39 GETTABLEKS                       R4 R4 K8 ["OpenUse"]
       41 SETTABLEKS                       R4 R3 K3 ["shareType"]
       43 GETUPVAL                         R4 6
       44 SETTABLEKS                       R4 R3 K4 ["assetIds"]
       46 DUPTABLE                         R4 K12 [{"ExplorerController", "LayoutController", "ItemsController"}]
       47 GETUPVAL                         R5 9
       48 SETTABLEKS                       R5 R4 K9 ["ExplorerController"]
       50 GETUPVAL                         R5 10
       51 SETTABLEKS                       R5 R4 K10 ["LayoutController"]
       53 GETUPVAL                         R5 11
       54 SETTABLEKS                       R5 R4 K11 ["ItemsController"]
       56 CALL                             R2 2 0
       57 GETUPVAL                         R2 12
       58 CALL                             R2 0 1
       59 JUMPIF                           R2 ; [+43]
       60 GETUPVAL                         R2 11
       61 NAMECALL                         R2 R2 K13 ["getScopeAnalyticsContext"]
       63 CALL                             R2 1 1
       64 GETUPVAL                         R3 13
       65 GETTABLEKS                       R3 R3 K2 ["sendShareEvent"]
       67 DUPTABLE                         R4 K18 [{"shareType", "currentRootId", "currentRootType", "currentFolderId", "assetIds", "viewMode"}]
       68 GETUPVAL                         R5 13
       69 GETTABLEKS                       R5 R5 K19 ["Enums"]
       71 GETTABLEKS                       R5 R5 K7 ["ShareType"]
       73 GETTABLEKS                       R5 R5 K8 ["OpenUse"]
       75 SETTABLEKS                       R5 R4 K3 ["shareType"]
       77 GETTABLEKS                       R5 R2 K14 ["currentRootId"]
       79 SETTABLEKS                       R5 R4 K14 ["currentRootId"]
       81 GETTABLEKS                       R5 R2 K15 ["currentRootType"]
       83 SETTABLEKS                       R5 R4 K15 ["currentRootType"]
       85 GETTABLEKS                       R5 R2 K16 ["currentFolderId"]
       87 SETTABLEKS                       R5 R4 K16 ["currentFolderId"]
       89 GETUPVAL                         R5 6
       90 SETTABLEKS                       R5 R4 K4 ["assetIds"]
       92 GETUPVAL                         R5 14
       93 GETUPVAL                         R6 10
       94 NAMECALL                         R6 R6 K20 ["getBrowserLayout"]
       96 CALL                             R6 1 1
       97 GETTABLEKS                       R6 R6 K21 ["ViewType"]
       99 CALL                             R5 1 1
      100 SETTABLEKS                       R5 R4 K17 ["viewMode"]
      102 CALL                             R3 1 0
      103 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+28]
        3 DUPTABLE                         R0 K5 [{[1] = "", ["Name"] = "", ["Subject"], ["Action"]}]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K6 ["PermissionsSubject"]
        7 GETTABLEKS                       R1 R1 K7 ["All"]
        9 SETTABLEKS                       R1 R0 K3 ["Subject"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K8 ["PermissionsAction"]
       14 GETTABLEKS                       R1 R1 K9 ["Use"]
       16 SETTABLEKS                       R1 R0 K4 ["Action"]
       18 GETUPVAL                         R1 2
       19 GETUPVAL                         R2 3
       20 GETUPVAL                         R3 4
       21 NEWTABLE                         R4 0 1
       23 MOVE                             R5 R0
       24 SETLIST                          R4 R5 1 [1]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R0
       29 CALL                             R1 4 0
       30 JUMP                             ; [+18]
       31 GETUPVAL                         R0 3
       32 GETUPVAL                         R2 4
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K6 ["PermissionsSubject"]
       36 GETTABLEKS                       R3 R3 K7 ["All"]
       38 LOADK                            R4 K1 [""]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K8 ["PermissionsAction"]
       42 GETTABLEKS                       R5 R5 K9 ["Use"]
       44 LOADB                            R6 0
       45 GETUPVAL                         R7 5
       46 NAMECALL                         R0 R0 K10 ["grantAssetsPermissionsAsync"]
       48 CALL                             R0 7 0
       49 LOADB                            R0 1
       50 RETURN                           R0 1

PROTO_6:
        0 NEWTABLE                         R7 0 0
        2 NAMECALL                         R8 R0 K0 ["getItemsCache"]
        4 CALL                             R8 1 1
        5 NAMECALL                         R9 R0 K1 ["getCurrentShownScope"]
        7 CALL                             R9 1 1
        8 GETTABLEKS                       R12 R9 K2 ["Uid"]
       10 MOVE                             R13 R4
       11 GETUPVAL                         R14 0
       12 GETTABLEKS                       R14 R14 K3 ["AssetInfoField"]
       14 GETTABLEKS                       R14 R14 K4 ["AssetId"]
       16 NAMECALL                         R10 R8 K5 ["getData"]
       18 CALL                             R10 4 1
       19 LOADN                            R13 1
       20 LENGTH                           R11 R10
       21 LOADN                            R12 1
       22 FORNPREP                         R11
       23 GETTABLE                         R14 R10 R13
       24 GETTABLE                         R15 R4 R13
       25 SETTABLE                         R15 R7 R14
       26 FORNLOOP                         R11
       27 NEWCLOSURE                       R11 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R7
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R10
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U8
       43 DUPTABLE                         R12 K9 [{"Title", "Size", "Type"}]
       44 LOADK                            R15 K10 ["ContextMenu"]
       45 LOADK                            R16 K11 ["OpenUse"]
       46 NAMECALL                         R13 R3 K12 ["getText"]
       48 CALL                             R13 3 1
       49 SETTABLEKS                       R13 R12 K6 ["Title"]
       51 GETUPVAL                         R13 9
       52 GETTABLEKS                       R13 R13 K13 ["ConfirmDialogSize"]
       54 SETTABLEKS                       R13 R12 K7 ["Size"]
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R13 R13 K14 ["DialogType"]
       59 GETTABLEKS                       R13 R13 K15 ["Confirm"]
       61 SETTABLEKS                       R13 R12 K8 ["Type"]
       63 DUPTABLE                         R13 K20 [{"Text", "LinkText", "LinkUrl", "ConfirmCallback"}]
       64 LOADK                            R16 K11 ["OpenUse"]
       65 LOADK                            R17 K21 ["ConfirmText"]
       66 NAMECALL                         R14 R3 K12 ["getText"]
       68 CALL                             R14 3 1
       69 SETTABLEKS                       R14 R13 K16 ["Text"]
       71 LOADK                            R16 K11 ["OpenUse"]
       72 LOADK                            R17 K22 ["LearnMore"]
       73 NAMECALL                         R14 R3 K12 ["getText"]
       75 CALL                             R14 3 1
       76 SETTABLEKS                       R14 R13 K17 ["LinkText"]
       78 GETUPVAL                         R14 10
       79 CALL                             R14 0 1
       80 SETTABLEKS                       R14 R13 K18 ["LinkUrl"]
       82 NEWCLOSURE                       R14 P1
       83 CAPTURE                          UPVAL U11
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          UPVAL U12
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R11
       89 SETTABLEKS                       R14 R13 K19 ["ConfirmCallback"]
       91 MOVE                             R16 R12
       92 MOVE                             R17 R13
       93 NAMECALL                         R14 R1 K23 ["setDialog"]
       95 CALL                             R14 3 0
       96 RETURN                           R0 0

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
       66 GETTABLEKS                       R9 R9 K17 ["Flags"]
       68 GETTABLEKS                       R9 R9 K18 ["getFFlagAmrEnableUnifiedEvent"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Src"]
       75 GETTABLEKS                       R10 R10 K17 ["Flags"]
       77 GETTABLEKS                       R10 R10 K19 ["getFFlagAmrDisableShardedEvent"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K6 ["Src"]
       84 GETTABLEKS                       R11 R11 K17 ["Flags"]
       86 GETTABLEKS                       R11 R11 K20 ["getFStringAmrOpenUsePage"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K6 ["Src"]
       93 GETTABLEKS                       R12 R12 K17 ["Flags"]
       95 GETTABLEKS                       R12 R12 K21 ["getFFlagAmrRaiseShareLimits"]
       97 CALL                             R11 1 1
       98 DUPCLOSURE                       R12 K22 [PROTO_0]
       99 DUPCLOSURE                       R13 K23 [PROTO_2]
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R10
      103 DUPCLOSURE                       R14 K24 [PROTO_6]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R6
      117 RETURN                           R14 1
