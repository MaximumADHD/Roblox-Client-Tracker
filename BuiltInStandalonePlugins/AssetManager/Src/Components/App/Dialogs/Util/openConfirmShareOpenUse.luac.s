PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R3 K3 [{"Title", "Size", "Type"}]
        1 LOADK                            R6 K4 ["ContextMenu"]
        2 LOADK                            R7 K5 ["OpenUse"]
        3 NAMECALL                         R4 R1 K6 ["getText"]
        5 CALL                             R4 3 1
        6 SETTABLEKS                       R4 R3 K0 ["Title"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K7 ["AMR_QUICKSHARE_DIALOG_SIZE"]
       11 SETTABLEKS                       R4 R3 K1 ["Size"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K8 ["DialogType"]
       16 GETTABLEKS                       R4 R5 K9 ["AssetError"]
       18 SETTABLEKS                       R4 R3 K2 ["Type"]
       20 DUPTABLE                         R4 K13 [{"Title", "AssetPaths", "CanClose", "OnClose"}]
       21 LOADK                            R7 K5 ["OpenUse"]
       22 LOADK                            R8 K14 ["ErrorTitle"]
       23 NAMECALL                         R5 R1 K6 ["getText"]
       25 CALL                             R5 3 1
       26 SETTABLEKS                       R5 R4 K0 ["Title"]
       28 SETTABLEKS                       R2 R4 K10 ["AssetPaths"]
       30 LOADB                            R5 1
       31 SETTABLEKS                       R5 R4 K11 ["CanClose"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R5 R4 K12 ["OnClose"]
       37 MOVE                             R7 R3
       38 MOVE                             R8 R4
       39 NAMECALL                         R5 R0 K15 ["setDialog"]
       41 CALL                             R5 3 0
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["count"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 LOADN                            R3 0
        6 JUMPIFNOTLT                      R3 R2 ; [+37]
        8 NEWTABLE                         R2 0 0
       10 MOVE                             R3 R1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETUPVAL                         R8 1
       15 CALL                             R8 0 1
       16 JUMPIFNOT                        R8 ; [+11]
       17 GETUPVAL                         R11 2
       18 GETTABLEKS                       R12 R7 K1 ["assetId"]
       20 GETTABLE                         R10 R11 R12
       21 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       23 MOVE                             R9 R2
       24 GETIMPORT                        R8 K4 [table.insert]
       26 CALL                             R8 2 0
       27 JUMP                             ; [+8]
       28 GETTABLEKS                       R10 R7 K1 ["assetId"]
       30 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       32 MOVE                             R9 R2
       33 GETIMPORT                        R8 K4 [table.insert]
       35 CALL                             R8 2 0
       36 FORGLOOP                         R3 2 ; [-23]
       38 GETUPVAL                         R3 3
       39 GETUPVAL                         R4 4
       40 GETUPVAL                         R5 5
       41 MOVE                             R6 R2
       42 CALL                             R3 3 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R2 4
       45 NAMECALL                         R2 R2 K5 ["closeDialog"]
       47 CALL                             R2 1 0
       48 JUMPIF                           R0 ; [0]
       49 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 NEWTABLE                         R5 0 0
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R5
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R3
        9 DUPTABLE                         R7 K3 [{"Title", "Size", "Type"}]
       10 LOADK                            R10 K4 ["ContextMenu"]
       11 LOADK                            R11 K5 ["OpenUse"]
       12 NAMECALL                         R8 R3 K6 ["getText"]
       14 CALL                             R8 3 1
       15 SETTABLEKS                       R8 R7 K0 ["Title"]
       17 GETUPVAL                         R9 3
       18 GETTABLEKS                       R8 R9 K7 ["AMR_CONFIRM_DIALOG_SIZE"]
       20 SETTABLEKS                       R8 R7 K1 ["Size"]
       22 GETUPVAL                         R10 4
       23 GETTABLEKS                       R9 R10 K8 ["DialogType"]
       25 GETTABLEKS                       R8 R9 K9 ["Confirm"]
       27 SETTABLEKS                       R8 R7 K2 ["Type"]
       29 LOADNIL                          R8
       30 GETUPVAL                         R9 1
       31 CALL                             R9 0 1
       32 JUMPIFNOT                        R9 ; [+27]
       33 NAMECALL                         R9 R0 K10 ["getItemsCache"]
       35 CALL                             R9 1 1
       36 NAMECALL                         R10 R1 K11 ["getCurrentScope"]
       38 CALL                             R10 1 1
       39 GETTABLEKS                       R13 R10 K12 ["Uid"]
       41 MOVE                             R14 R4
       42 GETUPVAL                         R17 4
       43 GETTABLEKS                       R16 R17 K13 ["AssetInfoField"]
       45 GETTABLEKS                       R15 R16 K14 ["AssetId"]
       47 NAMECALL                         R11 R9 K15 ["getData"]
       49 CALL                             R11 4 1
       50 MOVE                             R8 R11
       51 LOADN                            R13 1
       52 LENGTH                           R11 R8
       53 LOADN                            R12 1
       54 FORNPREP                         R11
       55 GETTABLE                         R14 R8 R13
       56 GETTABLE                         R15 R4 R13
       57 SETTABLE                         R15 R5 R14
       58 FORNLOOP                         R11
       59 JUMP                             ; [+1]
       60 MOVE                             R8 R4
       61 DUPTABLE                         R9 K20 [{"Text", "LinkText", "LinkUrl", "ConfirmCallback"}]
       62 LOADK                            R12 K5 ["OpenUse"]
       63 LOADK                            R13 K21 ["ConfirmText"]
       64 NAMECALL                         R10 R3 K6 ["getText"]
       66 CALL                             R10 3 1
       67 SETTABLEKS                       R10 R9 K16 ["Text"]
       69 LOADK                            R12 K5 ["OpenUse"]
       70 LOADK                            R13 K22 ["LearnMore"]
       71 NAMECALL                         R10 R3 K6 ["getText"]
       73 CALL                             R10 3 1
       74 SETTABLEKS                       R10 R9 K17 ["LinkText"]
       76 GETUPVAL                         R10 5
       77 CALL                             R10 0 1
       78 SETTABLEKS                       R10 R9 K18 ["LinkUrl"]
       80 NEWCLOSURE                       R10 P1
       81 CAPTURE                          VAL R2
       82 CAPTURE                          REF R8
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R6
       85 SETTABLEKS                       R10 R9 K19 ["ConfirmCallback"]
       87 MOVE                             R12 R7
       88 MOVE                             R13 R9
       89 NAMECALL                         R10 R1 K23 ["setDialog"]
       91 CALL                             R10 3 0
       92 CLOSEUPVALS                      R8
       93 RETURN                           R0 0

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
       32 GETTABLEKS                       R7 R0 K6 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Flags"]
       36 GETTABLEKS                       R5 R6 K13 ["getFFlagAmrUpdatedItemsCache"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K6 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Flags"]
       45 GETTABLEKS                       R6 R7 K14 ["getFStringAmrOpenUsePage"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_1]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 DUPCLOSURE                       R7 K16 [PROTO_4]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R5
       58 RETURN                           R7 1
