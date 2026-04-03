PROTO_0:
        0 LOADK                            R6 K0 ["ContextMenu"]
        1 LOADK                            R7 K1 ["OpenUse"]
        2 NAMECALL                         R4 R1 K2 ["getText"]
        4 CALL                             R4 3 1
        5 JUMPIFNOT                        R2 ; [+23]
        6 LOADK                            R7 K1 ["OpenUse"]
        7 JUMPIFNOTEQKN                    R3 K3 [1] ; [+3]
        9 LOADK                            R8 K4 ["OneAsset"]
       10 JUMP                             ; [+1]
       11 LOADK                            R8 K5 ["MultipleAssets"]
       12 DUPTABLE                         R9 K7 [{"count"}]
       13 FASTCALL1                        TOSTRING R3 ; [+3]
       14 MOVE                             R11 R3
       15 GETIMPORT                        R10 K9 [tostring]
       17 CALL                             R10 1 1
       18 SETTABLEKS                       R10 R9 K6 ["count"]
       20 NAMECALL                         R5 R1 K2 ["getText"]
       22 CALL                             R5 4 1
       23 GETUPVAL                         R6 0
       24 MOVE                             R7 R0
       25 MOVE                             R8 R4
       26 MOVE                             R9 R5
       27 CALL                             R6 3 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R5 0
       30 MOVE                             R6 R0
       31 MOVE                             R7 R4
       32 LOADK                            R10 K10 ["QuickShare"]
       33 LOADK                            R11 K11 ["FailedToGrant"]
       34 NAMECALL                         R8 R1 K2 ["getText"]
       36 CALL                             R8 3 1
       37 LOADB                            R9 1
       38 CALL                             R5 4 0
       39 RETURN                           R0 0

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
        6 GETUPVAL                         R10 0
        7 CALL                             R10 0 1
        8 JUMPIFNOT                        R10 ; [+10]
        9 GETTABLEKS                       R13 R9 K0 ["assetId"]
       11 GETTABLE                         R12 R3 R13
       12 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       14 MOVE                             R11 R4
       15 GETIMPORT                        R10 K3 [table.insert]
       17 CALL                             R10 2 0
       18 JUMP                             ; [+8]
       19 GETTABLEKS                       R12 R9 K0 ["assetId"]
       21 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       23 MOVE                             R11 R4
       24 GETIMPORT                        R10 K3 [table.insert]
       26 CALL                             R10 2 0
       27 FORGLOOP                         R5 2 ; [-22]
       29 DUPTABLE                         R5 K7 [{"Title", "Size", "Type"}]
       30 LOADK                            R8 K8 ["ContextMenu"]
       31 LOADK                            R9 K9 ["OpenUse"]
       32 NAMECALL                         R6 R1 K10 ["getText"]
       34 CALL                             R6 3 1
       35 SETTABLEKS                       R6 R5 K4 ["Title"]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K11 ["AMR_QUICKSHARE_DIALOG_SIZE"]
       40 SETTABLEKS                       R6 R5 K5 ["Size"]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R7 R8 K12 ["DialogType"]
       45 GETTABLEKS                       R6 R7 K13 ["AssetError"]
       47 SETTABLEKS                       R6 R5 K6 ["Type"]
       49 DUPTABLE                         R6 K19 [{"Title", "LinkText", "LinkUrl", "AssetPaths", "CanClose", "OnClose"}]
       50 LOADK                            R9 K9 ["OpenUse"]
       51 LOADK                            R10 K20 ["ErrorTitle"]
       52 NAMECALL                         R7 R1 K10 ["getText"]
       54 CALL                             R7 3 1
       55 SETTABLEKS                       R7 R6 K4 ["Title"]
       57 LOADK                            R9 K9 ["OpenUse"]
       58 LOADK                            R10 K21 ["LearnMore"]
       59 NAMECALL                         R7 R1 K10 ["getText"]
       61 CALL                             R7 3 1
       62 SETTABLEKS                       R7 R6 K14 ["LinkText"]
       64 GETUPVAL                         R7 3
       65 CALL                             R7 0 1
       66 SETTABLEKS                       R7 R6 K15 ["LinkUrl"]
       68 SETTABLEKS                       R4 R6 K16 ["AssetPaths"]
       70 LOADB                            R7 1
       71 SETTABLEKS                       R7 R6 K17 ["CanClose"]
       73 NEWCLOSURE                       R7 P0
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R7 R6 K18 ["OnClose"]
       77 MOVE                             R9 R5
       78 MOVE                             R10 R6
       79 NAMECALL                         R7 R0 K22 ["setDialog"]
       81 CALL                             R7 3 0
       82 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["closeDialog"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["count"]
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
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["PermissionsSubject"]
        5 GETTABLEKS                       R3 R4 K1 ["All"]
        7 LOADK                            R4 K2 [""]
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R6 R7 K3 ["PermissionsAction"]
       11 GETTABLEKS                       R5 R6 K4 ["Use"]
       13 LOADB                            R6 0
       14 GETUPVAL                         R7 3
       15 NAMECALL                         R0 R0 K5 ["grantAssetsPermissionsAsync"]
       17 CALL                             R0 7 0
       18 LOADB                            R0 1
       19 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R5 0 0
        2 LOADNIL                          R6
        3 GETUPVAL                         R7 0
        4 CALL                             R7 0 1
        5 JUMPIFNOT                        R7 ; [+27]
        6 NAMECALL                         R7 R0 K0 ["getItemsCache"]
        8 CALL                             R7 1 1
        9 NAMECALL                         R8 R1 K1 ["getCurrentScope"]
       11 CALL                             R8 1 1
       12 GETTABLEKS                       R11 R8 K2 ["Uid"]
       14 MOVE                             R12 R4
       15 GETUPVAL                         R15 1
       16 GETTABLEKS                       R14 R15 K3 ["AssetInfoField"]
       18 GETTABLEKS                       R13 R14 K4 ["AssetId"]
       20 NAMECALL                         R9 R7 K5 ["getData"]
       22 CALL                             R9 4 1
       23 MOVE                             R6 R9
       24 LOADN                            R11 1
       25 LENGTH                           R9 R6
       26 LOADN                            R10 1
       27 FORNPREP                         R9
       28 GETTABLE                         R12 R6 R11
       29 GETTABLE                         R13 R4 R11
       30 SETTABLE                         R13 R5 R12
       31 FORNLOOP                         R9
       32 JUMP                             ; [+1]
       33 MOVE                             R6 R4
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R5
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          REF R6
       42 DUPTABLE                         R8 K9 [{"Title", "Size", "Type"}]
       43 LOADK                            R11 K10 ["ContextMenu"]
       44 LOADK                            R12 K11 ["OpenUse"]
       45 NAMECALL                         R9 R3 K12 ["getText"]
       47 CALL                             R9 3 1
       48 SETTABLEKS                       R9 R8 K6 ["Title"]
       50 GETUPVAL                         R10 5
       51 GETTABLEKS                       R9 R10 K13 ["AMR_CONFIRM_DIALOG_SIZE"]
       53 SETTABLEKS                       R9 R8 K7 ["Size"]
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R10 R11 K14 ["DialogType"]
       58 GETTABLEKS                       R9 R10 K15 ["Confirm"]
       60 SETTABLEKS                       R9 R8 K8 ["Type"]
       62 DUPTABLE                         R9 K20 [{"Text", "LinkText", "LinkUrl", "ConfirmCallback"}]
       63 LOADK                            R12 K11 ["OpenUse"]
       64 LOADK                            R13 K21 ["ConfirmText"]
       65 NAMECALL                         R10 R3 K12 ["getText"]
       67 CALL                             R10 3 1
       68 SETTABLEKS                       R10 R9 K16 ["Text"]
       70 LOADK                            R12 K11 ["OpenUse"]
       71 LOADK                            R13 K22 ["LearnMore"]
       72 NAMECALL                         R10 R3 K12 ["getText"]
       74 CALL                             R10 3 1
       75 SETTABLEKS                       R10 R9 K17 ["LinkText"]
       77 GETUPVAL                         R10 6
       78 CALL                             R10 0 1
       79 SETTABLEKS                       R10 R9 K18 ["LinkUrl"]
       81 NEWCLOSURE                       R10 P1
       82 CAPTURE                          VAL R2
       83 CAPTURE                          REF R6
       84 CAPTURE                          UPVAL U1
       85 CAPTURE                          VAL R7
       86 SETTABLEKS                       R10 R9 K19 ["ConfirmCallback"]
       88 MOVE                             R12 R8
       89 MOVE                             R13 R9
       90 NAMECALL                         R10 R1 K23 ["setDialog"]
       92 CALL                             R10 3 0
       93 CLOSEUPVALS                      R6
       94 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K6 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["StyleConstants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R8 R0 K6 ["Src"]
       34 GETTABLEKS                       R7 R8 K12 ["Util"]
       36 GETTABLEKS                       R6 R7 K13 ["Dialogs"]
       38 GETTABLEKS                       R5 R6 K14 ["openNotification"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Flags"]
       47 GETTABLEKS                       R6 R7 K16 ["getFFlagAmrUpdatedItemsCache"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Src"]
       54 GETTABLEKS                       R8 R9 K15 ["Flags"]
       56 GETTABLEKS                       R7 R8 K17 ["getFStringAmrOpenUsePage"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K18 [PROTO_0]
       60 CAPTURE                          VAL R4
       61 DUPCLOSURE                       R8 K19 [PROTO_2]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R6
       66 DUPCLOSURE                       R9 K20 [PROTO_5]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R6
       74 RETURN                           R9 1
