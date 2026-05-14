PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onRightClick"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["onRightClick"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K1 ["getNodeById"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+3]
       20 GETTABLEKS                       R2 R1 K2 ["path"]
       22 JUMPIF                           R2 ; [+1]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 1
       25 LOADK                            R4 K3 ["SelectInstanceByPath"]
       26 GETTABLEKS                       R5 R1 K2 ["path"]
       28 NAMECALL                         R2 R2 K4 ["CallAssetPluginAsync"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["onRightClick"]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["onRightClick"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["getNodeById"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 JUMPIFNOT                        R1 ; [+11]
       21 GETTABLEKS                       R2 R1 K2 ["path"]
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 2
       26 LOADK                            R4 K3 ["SelectInstanceByPath"]
       27 GETTABLEKS                       R5 R1 K2 ["path"]
       29 NAMECALL                         R2 R2 K4 ["CallAssetPluginAsync"]
       31 CALL                             R2 3 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 DUPTABLE                         R4 K2 [{"Text", "OnItemClicked"}]
        5 GETUPVAL                         R5 0
        6 LOADK                            R7 K3 ["ContextMenu"]
        7 LOADK                            R8 K4 ["SelectInstances"]
        8 NAMECALL                         R5 R5 K5 ["getText"]
       10 CALL                             R5 3 1
       11 SETTABLEKS                       R5 R4 K0 ["Text"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R5 R4 K1 ["OnItemClicked"]
       19 SETTABLEKS                       R4 R2 K6 ["SelectInstance"]
       21 FASTCALL2K                       TABLE_INSERT R3 K6 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K6 ["SelectInstance"]
       25 GETIMPORT                        R4 K9 [table.insert]
       27 CALL                             R4 2 0
       28 JUMPIFNOT                        R1 ; [+41]
       29 GETUPVAL                         R4 1
       30 JUMPIFNOT                        R4 ; [+39]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K10 ["getNodeById"]
       34 JUMPIFNOT                        R4 ; [+35]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K10 ["getNodeById"]
       38 MOVE                             R5 R1
       39 CALL                             R4 1 1
       40 MOVE                             R5 R4
       41 JUMPIFNOT                        R5 ; [+2]
       42 GETTABLEKS                       R5 R4 K11 ["AssetId"]
       44 JUMPIFNOT                        R5 ; [+25]
       45 JUMPIFEQKS                       R5 K12 [""] ; [+24]
       47 DUPTABLE                         R6 K2 [{"Text", "OnItemClicked"}]
       48 GETUPVAL                         R7 0
       49 LOADK                            R9 K3 ["ContextMenu"]
       50 LOADK                            R10 K13 ["CopyAssetIdToClipboard"]
       51 NAMECALL                         R7 R7 K5 ["getText"]
       53 CALL                             R7 3 1
       54 SETTABLEKS                       R7 R6 K0 ["Text"]
       56 NEWCLOSURE                       R7 P1
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R7 R6 K1 ["OnItemClicked"]
       61 SETTABLEKS                       R6 R2 K14 ["CopyAssetId"]
       63 FASTCALL2K                       TABLE_INSERT R3 K14 ; [+5]
       65 MOVE                             R7 R3
       66 LOADK                            R8 K14 ["CopyAssetId"]
       67 GETIMPORT                        R6 K9 [table.insert]
       69 CALL                             R6 2 0
       70 GETUPVAL                         R4 4
       71 GETUPVAL                         R5 5
       72 MOVE                             R6 R2
       73 MOVE                             R7 R3
       74 CALL                             R4 3 0
       75 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Plugin"]
        3 NAMECALL                         R2 R2 K1 ["use"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R2 R2 K2 ["get"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Localization"]
       12 NAMECALL                         R3 R3 K1 ["use"]
       14 CALL                             R3 1 1
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R7 0 4
       30 MOVE                             R8 R2
       31 MOVE                             R9 R0
       32 MOVE                             R10 R1
       33 MOVE                             R11 R3
       34 SETLIST                          R7 R8 4 [1]
       36 CALL                             R5 2 1
       37 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["showContextMenu"]
       25 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R7 K13 ["Util"]
       33 GETTABLEKS                       R7 R7 K14 ["AssetDMBridge"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K16 [game]
       38 LOADK                            R9 K17 ["StudioService"]
       39 NAMECALL                         R7 R7 K18 ["GetService"]
       41 CALL                             R7 2 1
       42 DUPCLOSURE                       R8 K19 [PROTO_4]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R4
       48 RETURN                           R8 1
