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
       37 DUPTABLE                         R6 K19 [{"Title", "LinkText", "LinkUrl", "AssetPaths", "CanClose", "OnClose"}]
       38 LOADK                            R9 K9 ["OpenUse"]
       39 LOADK                            R10 K20 ["ErrorTitle"]
       40 NAMECALL                         R7 R1 K10 ["getText"]
       42 CALL                             R7 3 1
       43 SETTABLEKS                       R7 R6 K4 ["Title"]
       45 LOADK                            R9 K9 ["OpenUse"]
       46 LOADK                            R10 K21 ["LearnMore"]
       47 NAMECALL                         R7 R1 K10 ["getText"]
       49 CALL                             R7 3 1
       50 SETTABLEKS                       R7 R6 K14 ["LinkText"]
       52 GETUPVAL                         R7 2
       53 CALL                             R7 0 1
       54 SETTABLEKS                       R7 R6 K15 ["LinkUrl"]
       56 SETTABLEKS                       R4 R6 K16 ["AssetPaths"]
       58 LOADB                            R7 1
       59 SETTABLEKS                       R7 R6 K17 ["CanClose"]
       61 NEWCLOSURE                       R7 P0
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R7 R6 K18 ["OnClose"]
       65 MOVE                             R9 R5
       66 MOVE                             R10 R6
       67 NAMECALL                         R7 R0 K22 ["setDialog"]
       69 CALL                             R7 3 0
       70 RETURN                           R0 0

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
       26 RETURN                           R0 0

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
        0 NEWTABLE                         R5 0 0
        2 NAMECALL                         R6 R0 K0 ["getItemsCache"]
        4 CALL                             R6 1 1
        5 NAMECALL                         R7 R1 K1 ["getCurrentScope"]
        7 CALL                             R7 1 1
        8 GETTABLEKS                       R10 R7 K2 ["Uid"]
       10 MOVE                             R11 R4
       11 GETUPVAL                         R12 0
       12 GETTABLEKS                       R12 R12 K3 ["AssetInfoField"]
       14 GETTABLEKS                       R12 R12 K4 ["AssetId"]
       16 NAMECALL                         R8 R6 K5 ["getData"]
       18 CALL                             R8 4 1
       19 LOADN                            R11 1
       20 LENGTH                           R9 R8
       21 LOADN                            R10 1
       22 FORNPREP                         R9
       23 GETTABLE                         R12 R8 R11
       24 GETTABLE                         R13 R4 R11
       25 SETTABLE                         R13 R5 R12
       26 FORNLOOP                         R9
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R8
       35 DUPTABLE                         R10 K9 [{"Title", "Size", "Type"}]
       36 LOADK                            R13 K10 ["ContextMenu"]
       37 LOADK                            R14 K11 ["OpenUse"]
       38 NAMECALL                         R11 R3 K12 ["getText"]
       40 CALL                             R11 3 1
       41 SETTABLEKS                       R11 R10 K6 ["Title"]
       43 GETUPVAL                         R11 4
       44 GETTABLEKS                       R11 R11 K13 ["ConfirmDialogSize"]
       46 SETTABLEKS                       R11 R10 K7 ["Size"]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R11 R11 K14 ["DialogType"]
       51 GETTABLEKS                       R11 R11 K15 ["Confirm"]
       53 SETTABLEKS                       R11 R10 K8 ["Type"]
       55 DUPTABLE                         R11 K20 [{"Text", "LinkText", "LinkUrl", "ConfirmCallback"}]
       56 LOADK                            R14 K11 ["OpenUse"]
       57 LOADK                            R15 K21 ["ConfirmText"]
       58 NAMECALL                         R12 R3 K12 ["getText"]
       60 CALL                             R12 3 1
       61 SETTABLEKS                       R12 R11 K16 ["Text"]
       63 LOADK                            R14 K11 ["OpenUse"]
       64 LOADK                            R15 K22 ["LearnMore"]
       65 NAMECALL                         R12 R3 K12 ["getText"]
       67 CALL                             R12 3 1
       68 SETTABLEKS                       R12 R11 K17 ["LinkText"]
       70 GETUPVAL                         R12 5
       71 CALL                             R12 0 1
       72 SETTABLEKS                       R12 R11 K18 ["LinkUrl"]
       74 NEWCLOSURE                       R12 P1
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R8
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R9
       79 SETTABLEKS                       R12 R11 K19 ["ConfirmCallback"]
       81 MOVE                             R14 R10
       82 MOVE                             R15 R11
       83 NAMECALL                         R12 R1 K23 ["setDialog"]
       85 CALL                             R12 3 0
       86 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["StyleConstants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["Dialogs"]
       38 GETTABLEKS                       R5 R5 K14 ["openNotification"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Flags"]
       47 GETTABLEKS                       R6 R6 K16 ["getFStringAmrOpenUsePage"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K17 [PROTO_0]
       51 CAPTURE                          VAL R4
       52 DUPCLOSURE                       R7 K18 [PROTO_2]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 DUPCLOSURE                       R8 K19 [PROTO_5]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 RETURN                           R8 1
