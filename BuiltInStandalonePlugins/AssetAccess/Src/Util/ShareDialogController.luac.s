PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+19]
        7 GETIMPORT                        R1 K4 [table.isfrozen]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMPIF                           R1 ; [+4]
       12 GETIMPORT                        R1 K6 [table.freeze]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 MOVE                             R1 R0
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 GETUPVAL                         R6 0
       21 MOVE                             R7 R5
       22 CALL                             R6 1 0
       23 FORGLOOP                         R1 2 ; [-4]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_ShowShareDialog"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_NewInaccessibleAsset"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_ShareAccess"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_ShareDialogDismissed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K1 [setmetatable]
        8 CALL                             R2 2 0
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K2 ["_alive"]
       12 GETIMPORT                        R2 K5 [table.freeze]
       14 DUPTABLE                         R3 K7 [{"state"}]
       15 LOADK                            R4 K8 ["Inactive"]
       16 SETTABLEKS                       R4 R3 K6 ["state"]
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K9 ["_model"]
       21 SETTABLEKS                       R0 R1 K10 ["_plugin"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K11 ["_threads"]
       27 LOADK                            R4 K12 ["AssetAccessController"]
       28 NAMECALL                         R2 R0 K13 ["GetPluginComponent"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R1 K14 ["_assetAccessController"]
       33 GETTABLEKS                       R3 R2 K15 ["ShowShareDialog"]
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R3 R3 K16 ["Connect"]
       39 CALL                             R3 2 1
       40 SETTABLEKS                       R3 R1 K17 ["_showShareDialogConnection"]
       42 GETTABLEKS                       R3 R2 K18 ["NewInaccessibleAsset"]
       44 NEWCLOSURE                       R5 P1
       45 CAPTURE                          VAL R1
       46 NAMECALL                         R3 R3 K16 ["Connect"]
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R1 K19 ["_newInaccessibleAssetConnection"]
       51 LOADK                            R5 K20 ["ShareAccess"]
       52 NEWCLOSURE                       R6 P2
       53 CAPTURE                          VAL R1
       54 NAMECALL                         R3 R0 K21 ["OnInvoke"]
       56 CALL                             R3 3 1
       57 SETTABLEKS                       R3 R1 K22 ["_shareAccessConnection"]
       59 LOADK                            R5 K23 ["ShareDialogDismissed"]
       60 NEWCLOSURE                       R6 P3
       61 CAPTURE                          VAL R1
       62 NAMECALL                         R3 R0 K21 ["OnInvoke"]
       64 CALL                             R3 3 1
       65 SETTABLEKS                       R3 R1 K24 ["_shareDialogDismissedConnection"]
       67 DUPCLOSURE                       R3 K25 [PROTO_5]
       68 SETTABLEKS                       R3 R1 K26 ["_onGetAssetMetadataFinished"]
       70 DUPCLOSURE                       R3 K27 [PROTO_6]
       71 SETTABLEKS                       R3 R1 K28 ["_onShareAccessFinished"]
       73 GETTABLEKS                       R3 R1 K10 ["_plugin"]
       75 LOADK                            R5 K29 ["ShareDialogModel"]
       76 GETTABLEKS                       R6 R1 K9 ["_model"]
       78 NAMECALL                         R3 R3 K30 ["SetItem"]
       80 CALL                             R3 3 0
       81 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K4 ["_model"]
       10 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 GETIMPORT                        R3 K6 [table.clone]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 1
       14 SETTABLEKS                       R2 R0 K7 ["_model"]
       16 GETTABLEKS                       R2 R0 K8 ["_plugin"]
       18 LOADK                            R4 K9 ["ShareDialogModel"]
       19 GETTABLEKS                       R5 R0 K7 ["_model"]
       21 NAMECALL                         R2 R2 K10 ["SetItem"]
       23 CALL                             R2 3 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["_threads"]
        5 GETUPVAL                         R1 2
        6 LOADNIL                          R2
        7 SETTABLE                         R2 R0 R1
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 LOADNIL                          R2
        9 GETIMPORT                        R3 K6 [task.defer]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          REF R2
       15 CALL                             R3 1 1
       16 MOVE                             R2 R3
       17 GETTABLEKS                       R3 R0 K7 ["_threads"]
       19 LOADB                            R4 1
       20 SETTABLE                         R4 R3 R2
       21 CLOSEUPVALS                      R2
       22 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_assetAccessController"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["GetAssetMetadataAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R2 R2 K2 ["_GetModel"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K3 ["state"]
       12 JUMPIFEQKS                       R3 K4 ["Prompt"] ; [+6]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K5 ["_onGetAssetMetadataFinished"]
       17 CALL                             R3 0 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R5 R2 K3 ["state"]
       21 JUMPIFEQKS                       R5 K4 ["Prompt"] ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       27 LOADK                            R5 K6 ["Luau"]
       28 GETIMPORT                        R3 K8 [assert]
       30 CALL                             R3 2 0
       31 GETIMPORT                        R3 K11 [table.clone]
       33 GETTABLEKS                       R4 R2 K12 ["assetModels"]
       35 CALL                             R3 1 1
       36 JUMPIFNOT                        R0 ; [+27]
       37 MOVE                             R4 R1
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 FORGPREP                         R4
       41 GETTABLEKS                       R10 R8 K13 ["id"]
       43 GETTABLE                         R9 R3 R10
       44 JUMPIFNOT                        R9 ; [+16]
       45 GETTABLEKS                       R11 R8 K13 ["id"]
       47 GETTABLE                         R10 R3 R11
       48 GETTABLEKS                       R9 R10 K3 ["state"]
       50 JUMPIFNOTEQKS                    R9 K14 ["Loading"] ; [+10]
       52 GETTABLEKS                       R9 R8 K13 ["id"]
       54 DUPTABLE                         R10 K16 [{"state", "metadata"}]
       55 LOADK                            R11 K17 ["Loaded"]
       56 SETTABLEKS                       R11 R10 K3 ["state"]
       58 SETTABLEKS                       R8 R10 K15 ["metadata"]
       60 SETTABLE                         R10 R3 R9
       61 FORGLOOP                         R4 2 ; [-21]
       63 JUMP                             ; [+18]
       64 GETUPVAL                         R4 1
       65 LOADNIL                          R5
       66 LOADNIL                          R6
       67 FORGPREP                         R4
       68 GETTABLE                         R9 R3 R8
       69 JUMPIFNOT                        R9 ; [+10]
       70 GETTABLE                         R10 R3 R8
       71 GETTABLEKS                       R9 R10 K3 ["state"]
       73 JUMPIFNOTEQKS                    R9 K14 ["Loading"] ; [+6]
       75 DUPTABLE                         R9 K18 [{"state"}]
       76 LOADK                            R10 K19 ["Failed"]
       77 SETTABLEKS                       R10 R9 K3 ["state"]
       79 SETTABLE                         R9 R3 R8
       80 FORGLOOP                         R4 2 ; [-13]
       82 GETUPVAL                         R4 0
       83 DUPTABLE                         R6 K20 [{"state", "assetModels"}]
       84 LOADK                            R7 K4 ["Prompt"]
       85 SETTABLEKS                       R7 R6 K3 ["state"]
       87 SETTABLEKS                       R3 R6 K12 ["assetModels"]
       89 NAMECALL                         R4 R4 K21 ["_SetModel"]
       91 CALL                             R4 2 0
       92 GETUPVAL                         R5 0
       93 GETTABLEKS                       R4 R5 K5 ["_onGetAssetMetadataFinished"]
       95 CALL                             R4 0 0
       96 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 NAMECALL                         R5 R0 K4 ["_GetModel"]
       10 CALL                             R5 1 1
       11 GETTABLEKS                       R4 R5 K5 ["state"]
       13 JUMPIFEQKS                       R4 K6 ["Prompt"] ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       19 LOADK                            R4 K7 ["Can only load asset metadata in the Prompt state"]
       20 GETIMPORT                        R2 K3 [assert]
       22 CALL                             R2 2 0
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 NAMECALL                         R2 R0 K8 ["_Defer"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 NEWTABLE                         R2 0 0
       10 MOVE                             R3 R1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 DUPTABLE                         R8 K5 [{"state"}]
       15 LOADK                            R9 K6 ["Loading"]
       16 SETTABLEKS                       R9 R8 K4 ["state"]
       18 SETTABLE                         R8 R2 R7
       19 FORGLOOP                         R3 2 ; [-6]
       21 DUPTABLE                         R5 K8 [{"assetModels", "state"}]
       22 SETTABLEKS                       R2 R5 K7 ["assetModels"]
       24 LOADK                            R6 K9 ["Prompt"]
       25 SETTABLEKS                       R6 R5 K4 ["state"]
       27 NAMECALL                         R3 R0 K10 ["_SetModel"]
       29 CALL                             R3 2 0
       30 MOVE                             R5 R1
       31 NAMECALL                         R3 R0 K11 ["_GetAndHydrateAssetMetadata"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 NAMECALL                         R2 R0 K4 ["_GetModel"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K5 ["state"]
       13 JUMPIFEQKS                       R3 K6 ["Prompt"] ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R5 R2 K5 ["state"]
       18 JUMPIFEQKS                       R5 K6 ["Prompt"] ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       24 LOADK                            R5 K7 ["Luau"]
       25 GETIMPORT                        R3 K3 [assert]
       27 CALL                             R3 2 0
       28 GETIMPORT                        R3 K10 [table.clone]
       30 GETTABLEKS                       R4 R2 K11 ["assetModels"]
       32 CALL                             R3 1 1
       33 DUPTABLE                         R4 K12 [{"state"}]
       34 LOADK                            R5 K13 ["Loading"]
       35 SETTABLEKS                       R5 R4 K5 ["state"]
       37 SETTABLE                         R4 R3 R1
       38 DUPTABLE                         R6 K14 [{"assetModels", "state"}]
       39 SETTABLEKS                       R3 R6 K11 ["assetModels"]
       41 LOADK                            R7 K6 ["Prompt"]
       42 SETTABLEKS                       R7 R6 K5 ["state"]
       44 NAMECALL                         R4 R0 K15 ["_SetModel"]
       46 CALL                             R4 2 0
       47 NEWTABLE                         R6 0 1
       49 MOVE                             R7 R1
       50 SETLIST                          R6 R7 1 [1]
       52 NAMECALL                         R4 R0 K16 ["_GetAndHydrateAssetMetadata"]
       54 CALL                             R4 2 0
       55 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_assetAccessController"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["ShareAccessToInaccessibleAssetsAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_18:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R2 R2 K2 ["_GetModel"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K3 ["state"]
       12 JUMPIFEQKS                       R3 K4 ["Sharing"] ; [+6]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K5 ["_onShareAccessFinished"]
       17 CALL                             R3 0 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R5 R2 K3 ["state"]
       21 JUMPIFEQKS                       R5 K4 ["Sharing"] ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       27 LOADK                            R5 K6 ["Luau"]
       28 GETIMPORT                        R3 K8 [assert]
       30 CALL                             R3 2 0
       31 JUMPIF                           R0 ; [+13]
       32 GETUPVAL                         R3 0
       33 DUPTABLE                         R5 K9 [{"state"}]
       34 LOADK                            R6 K10 ["UnexpectedError"]
       35 SETTABLEKS                       R6 R5 K3 ["state"]
       37 NAMECALL                         R3 R3 K11 ["_SetModel"]
       39 CALL                             R3 2 0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K5 ["_onShareAccessFinished"]
       43 CALL                             R3 0 0
       44 RETURN                           R0 0
       45 LENGTH                           R3 R1
       46 JUMPIFNOTEQKN                    R3 K12 [0] ; [+14]
       48 GETUPVAL                         R3 0
       49 DUPTABLE                         R5 K9 [{"state"}]
       50 LOADK                            R6 K13 ["Inactive"]
       51 SETTABLEKS                       R6 R5 K3 ["state"]
       53 NAMECALL                         R3 R3 K11 ["_SetModel"]
       55 CALL                             R3 2 0
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R3 R4 K5 ["_onShareAccessFinished"]
       59 CALL                             R3 0 0
       60 RETURN                           R0 0
       61 NEWTABLE                         R3 0 0
       63 MOVE                             R4 R1
       64 LOADNIL                          R5
       65 LOADNIL                          R6
       66 FORGPREP                         R4
       67 GETIMPORT                        R9 K16 [table.clone]
       69 GETTABLEKS                       R11 R2 K17 ["assetModels"]
       71 GETTABLE                         R10 R11 R8
       72 CALL                             R9 1 1
       73 SETTABLE                         R9 R3 R8
       74 FORGLOOP                         R4 2 ; [-8]
       76 GETUPVAL                         R4 0
       77 DUPTABLE                         R6 K18 [{"state", "assetModels"}]
       78 LOADK                            R7 K19 ["CantShare"]
       79 SETTABLEKS                       R7 R6 K3 ["state"]
       81 SETTABLEKS                       R3 R6 K17 ["assetModels"]
       83 NAMECALL                         R4 R4 K11 ["_SetModel"]
       85 CALL                             R4 2 0
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R4 R5 K5 ["_onShareAccessFinished"]
       89 CALL                             R4 0 0
       90 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 NAMECALL                         R1 R0 K4 ["_GetModel"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R1 K5 ["state"]
       13 JUMPIFEQKS                       R2 K6 ["Prompt"] ; [+5]
       15 GETTABLEKS                       R2 R0 K7 ["_onShareAccessFinished"]
       17 CALL                             R2 0 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R4 R1 K5 ["state"]
       21 JUMPIFEQKS                       R4 K6 ["Prompt"] ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       27 LOADK                            R4 K8 ["Luau"]
       28 GETIMPORT                        R2 K3 [assert]
       30 CALL                             R2 2 0
       31 DUPTABLE                         R4 K10 [{"state", "assetModels"}]
       32 LOADK                            R5 K11 ["Sharing"]
       33 SETTABLEKS                       R5 R4 K5 ["state"]
       35 GETTABLEKS                       R5 R1 K9 ["assetModels"]
       37 SETTABLEKS                       R5 R4 K9 ["assetModels"]
       39 NAMECALL                         R2 R0 K12 ["_SetModel"]
       41 CALL                             R2 2 0
       42 NEWTABLE                         R2 0 0
       44 GETTABLEKS                       R3 R1 K9 ["assetModels"]
       46 LOADNIL                          R4
       47 LOADNIL                          R5
       48 FORGPREP                         R3
       49 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       51 MOVE                             R9 R2
       52 MOVE                             R10 R6
       53 GETIMPORT                        R8 K15 [table.insert]
       55 CALL                             R8 2 0
       56 FORGLOOP                         R3 2 ; [-8]
       58 NEWCLOSURE                       R5 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 NAMECALL                         R3 R0 K16 ["_Defer"]
       63 CALL                             R3 2 0
       64 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R3 K5 [{"state"}]
        9 LOADK                            R4 K6 ["Inactive"]
       10 SETTABLEKS                       R4 R3 K4 ["state"]
       12 NAMECALL                         R1 R0 K7 ["_SetModel"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["ShareDialogController already destroyed"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K4 ["_threads"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 GETIMPORT                        R6 K7 [task.cancel]
       15 MOVE                             R7 R4
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-5]
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K4 ["_threads"]
       23 GETTABLEKS                       R1 R0 K8 ["_showShareDialogConnection"]
       25 NAMECALL                         R1 R1 K9 ["Disconnect"]
       27 CALL                             R1 1 0
       28 GETTABLEKS                       R1 R0 K10 ["_newInaccessibleAssetConnection"]
       30 NAMECALL                         R1 R1 K9 ["Disconnect"]
       32 CALL                             R1 1 0
       33 GETTABLEKS                       R1 R0 K11 ["_shareAccessConnection"]
       35 NAMECALL                         R1 R1 K9 ["Disconnect"]
       37 CALL                             R1 1 0
       38 GETTABLEKS                       R1 R0 K12 ["_shareDialogDismissedConnection"]
       40 NAMECALL                         R1 R1 K9 ["Disconnect"]
       42 CALL                             R1 1 0
       43 GETTABLEKS                       R1 R0 K13 ["_plugin"]
       45 LOADK                            R3 K14 ["ShareDialogModel"]
       46 LOADNIL                          R4
       47 NAMECALL                         R1 R1 K15 ["SetItem"]
       49 CALL                             R1 3 0
       50 LOADB                            R1 0
       51 SETTABLEKS                       R1 R0 K0 ["_alive"]
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetAccess"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 SETTABLEKS                       R2 R2 K8 ["__index"]
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R3
       20 DUPCLOSURE                       R4 K10 [PROTO_7]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R2 K11 ["new"]
       24 DUPCLOSURE                       R4 K12 [PROTO_8]
       25 SETTABLEKS                       R4 R2 K13 ["_GetModel"]
       27 DUPCLOSURE                       R4 K14 [PROTO_9]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R4 R2 K15 ["_SetModel"]
       31 DUPCLOSURE                       R4 K16 [PROTO_11]
       32 SETTABLEKS                       R4 R2 K17 ["_Defer"]
       34 DUPCLOSURE                       R4 K18 [PROTO_14]
       35 SETTABLEKS                       R4 R2 K19 ["_GetAndHydrateAssetMetadata"]
       37 DUPCLOSURE                       R4 K20 [PROTO_15]
       38 SETTABLEKS                       R4 R2 K21 ["_ShowShareDialog"]
       40 DUPCLOSURE                       R4 K22 [PROTO_16]
       41 SETTABLEKS                       R4 R2 K23 ["_NewInaccessibleAsset"]
       43 DUPCLOSURE                       R4 K24 [PROTO_19]
       44 SETTABLEKS                       R4 R2 K25 ["_ShareAccess"]
       46 DUPCLOSURE                       R4 K26 [PROTO_20]
       47 SETTABLEKS                       R4 R2 K27 ["_ShareDialogDismissed"]
       49 DUPCLOSURE                       R4 K28 [PROTO_21]
       50 SETTABLEKS                       R4 R2 K29 ["Destroy"]
       52 GETIMPORT                        R4 K32 [table.freeze]
       54 MOVE                             R5 R2
       55 CALL                             R4 1 -1
       56 RETURN                           R4 -1
