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
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 ADDK                             R1 R1 K0 [1]
        6 FORGLOOP                         R2 1 ; [-2]
        8 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["state"]
        8 JUMPIFNOTEQKS                    R7 K1 ["Loaded"] ; [+18]
       10 GETTABLEKS                       R7 R6 K2 ["metadata"]
       12 GETTABLEKS                       R7 R7 K3 ["visibility"]
       14 JUMPIFNOTEQKS                    R7 K4 ["Public"] ; [+12]
       16 GETTABLEKS                       R7 R6 K2 ["metadata"]
       18 GETTABLEKS                       R7 R7 K5 ["type"]
       20 GETTABLEKS                       R7 R7 K6 ["Name"]
       22 GETTABLE                         R10 R1 R7
       23 ORK                              R9 R10 K8 [0]
       24 ADDK                             R8 R9 K7 [1]
       25 SETTABLE                         R8 R1 R7
       26 JUMP                             ; [+6]
       27 GETTABLEKS                       R9 R1 K9 ["Other"]
       29 ORK                              R8 R9 K8 [0]
       30 ADDK                             R7 R8 K7 [1]
       31 SETTABLEKS                       R7 R1 K9 ["Other"]
       33 FORGLOOP                         R2 2 ; [-28]
       35 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_ShowShareDialog"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_NewInaccessibleAsset"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_ShareAccess"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_ShareDialogDismissed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
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
       27 GETUPVAL                         R2 1
       28 CALL                             R2 0 1
       29 JUMPIFNOT                        R2 ; [+3]
       30 LOADB                            R2 0
       31 SETTABLEKS                       R2 R1 K12 ["_shouldEmitDialogOpenedEvent"]
       33 LOADK                            R4 K13 ["AssetAccessController"]
       34 NAMECALL                         R2 R0 K14 ["GetPluginComponent"]
       36 CALL                             R2 2 1
       37 SETTABLEKS                       R2 R1 K15 ["_assetAccessController"]
       39 GETTABLEKS                       R3 R2 K16 ["ShowShareDialog"]
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          VAL R1
       43 NAMECALL                         R3 R3 K17 ["Connect"]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R1 K18 ["_showShareDialogConnection"]
       48 GETTABLEKS                       R3 R2 K19 ["NewInaccessibleAsset"]
       50 NEWCLOSURE                       R5 P1
       51 CAPTURE                          VAL R1
       52 NAMECALL                         R3 R3 K17 ["Connect"]
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R1 K20 ["_newInaccessibleAssetConnection"]
       57 LOADK                            R5 K21 ["ShareAccess"]
       58 NEWCLOSURE                       R6 P2
       59 CAPTURE                          VAL R1
       60 NAMECALL                         R3 R0 K22 ["OnInvoke"]
       62 CALL                             R3 3 1
       63 SETTABLEKS                       R3 R1 K23 ["_shareAccessConnection"]
       65 LOADK                            R5 K24 ["ShareDialogDismissed"]
       66 NEWCLOSURE                       R6 P3
       67 CAPTURE                          VAL R1
       68 NAMECALL                         R3 R0 K22 ["OnInvoke"]
       70 CALL                             R3 3 1
       71 SETTABLEKS                       R3 R1 K25 ["_shareDialogDismissedConnection"]
       73 DUPCLOSURE                       R3 K26 [PROTO_7]
       74 SETTABLEKS                       R3 R1 K27 ["_onGetAssetMetadataFinished"]
       76 DUPCLOSURE                       R3 K28 [PROTO_8]
       77 SETTABLEKS                       R3 R1 K29 ["_onShareAccessFinished"]
       79 GETTABLEKS                       R3 R1 K10 ["_plugin"]
       81 LOADK                            R5 K30 ["ShareDialogModel"]
       82 GETTABLEKS                       R6 R1 K9 ["_model"]
       84 NAMECALL                         R3 R3 K31 ["SetItem"]
       86 CALL                             R3 3 0
       87 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K4 ["_model"]
       10 RETURN                           R1 1

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["_threads"]
        5 GETUPVAL                         R1 2
        6 LOADNIL                          R2
        7 SETTABLE                         R2 R0 R1
        8 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_assetAccessController"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["GetAssetMetadataAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_15:
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
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K5 ["_onGetAssetMetadataFinished"]
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
       45 GETTABLEKS                       R10 R8 K13 ["id"]
       47 GETTABLE                         R9 R3 R10
       48 GETTABLEKS                       R9 R9 K3 ["state"]
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
       70 GETTABLE                         R9 R3 R8
       71 GETTABLEKS                       R9 R9 K3 ["state"]
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
       92 GETUPVAL                         R4 2
       93 CALL                             R4 0 1
       94 JUMPIFNOT                        R4 ; [+49]
       95 GETUPVAL                         R4 0
       96 GETTABLEKS                       R4 R4 K22 ["_shouldEmitDialogOpenedEvent"]
       98 JUMPIFNOT                        R4 ; [+45]
       99 GETUPVAL                         R4 0
      100 LOADB                            R5 0
      101 SETTABLEKS                       R5 R4 K22 ["_shouldEmitDialogOpenedEvent"]
      103 GETUPVAL                         R4 3
      104 MOVE                             R5 R3
      105 CALL                             R4 1 1
      106 GETUPVAL                         R5 4
      107 GETTABLEKS                       R5 R5 K23 ["logCounter"]
      109 GETUPVAL                         R6 5
      110 CALL                             R5 1 0
      111 GETUPVAL                         R5 4
      112 GETTABLEKS                       R5 R5 K24 ["logStat"]
      114 GETUPVAL                         R6 6
      115 LOADNIL                          R7
      116 LOADN                            R9 0
      117 MOVE                             R10 R3
      118 LOADNIL                          R11
      119 LOADNIL                          R12
      120 FORGPREP                         R10
      121 ADDK                             R9 R9 K25 [1]
      122 FORGLOOP                         R10 1 ; [-2]
      124 MOVE                             R8 R9
      125 CALL                             R5 3 0
      126 MOVE                             R5 R4
      127 LOADNIL                          R6
      128 LOADNIL                          R7
      129 FORGPREP                         R5
      130 GETUPVAL                         R10 4
      131 GETTABLEKS                       R10 R10 K24 ["logStat"]
      133 GETUPVAL                         R11 7
      134 DUPTABLE                         R12 K27 [{"customFields"}]
      135 DUPTABLE                         R13 K29 [{"asset_type"}]
      136 SETTABLEKS                       R8 R13 K28 ["asset_type"]
      138 SETTABLEKS                       R13 R12 K26 ["customFields"]
      140 MOVE                             R13 R9
      141 CALL                             R10 3 0
      142 FORGLOOP                         R5 2 ; [-13]
      144 GETUPVAL                         R4 0
      145 GETTABLEKS                       R4 R4 K5 ["_onGetAssetMetadataFinished"]
      147 CALL                             R4 0 0
      148 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 NAMECALL                         R4 R0 K4 ["_GetModel"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R4 R4 K5 ["state"]
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
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 NAMECALL                         R2 R0 K8 ["_Defer"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+3]
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R0 K4 ["_shouldEmitDialogOpenedEvent"]
       14 NEWTABLE                         R2 0 0
       16 MOVE                             R3 R1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 DUPTABLE                         R8 K6 [{"state"}]
       21 LOADK                            R9 K7 ["Loading"]
       22 SETTABLEKS                       R9 R8 K5 ["state"]
       24 SETTABLE                         R8 R2 R7
       25 FORGLOOP                         R3 2 ; [-6]
       27 DUPTABLE                         R5 K9 [{"assetModels", "state"}]
       28 SETTABLEKS                       R2 R5 K8 ["assetModels"]
       30 LOADK                            R6 K10 ["Prompt"]
       31 SETTABLEKS                       R6 R5 K5 ["state"]
       33 NAMECALL                         R3 R0 K11 ["_SetModel"]
       35 CALL                             R3 2 0
       36 MOVE                             R5 R1
       37 NAMECALL                         R3 R0 K12 ["_GetAndHydrateAssetMetadata"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_assetAccessController"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["ShareAccessToInaccessibleAssetsAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_20:
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
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K5 ["_onShareAccessFinished"]
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
       31 JUMPIF                           R0 ; [+28]
       32 GETUPVAL                         R3 2
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+12]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K9 ["logCounter"]
       38 GETUPVAL                         R4 4
       39 DUPTABLE                         R5 K11 [{"customFields"}]
       40 DUPTABLE                         R6 K13 [{"failure_reason"}]
       41 LOADK                            R7 K14 ["UnexpectedError"]
       42 SETTABLEKS                       R7 R6 K12 ["failure_reason"]
       44 SETTABLEKS                       R6 R5 K10 ["customFields"]
       46 CALL                             R3 2 0
       47 GETUPVAL                         R3 0
       48 DUPTABLE                         R5 K15 [{"state"}]
       49 LOADK                            R6 K14 ["UnexpectedError"]
       50 SETTABLEKS                       R6 R5 K3 ["state"]
       52 NAMECALL                         R3 R3 K16 ["_SetModel"]
       54 CALL                             R3 2 0
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K5 ["_onShareAccessFinished"]
       58 CALL                             R3 0 0
       59 RETURN                           R0 0
       60 LENGTH                           R3 R1
       61 JUMPIFNOTEQKN                    R3 K17 [0] ; [+14]
       63 GETUPVAL                         R3 0
       64 DUPTABLE                         R5 K15 [{"state"}]
       65 LOADK                            R6 K18 ["Inactive"]
       66 SETTABLEKS                       R6 R5 K3 ["state"]
       68 NAMECALL                         R3 R3 K16 ["_SetModel"]
       70 CALL                             R3 2 0
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R3 R3 K5 ["_onShareAccessFinished"]
       74 CALL                             R3 0 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R3 2
       77 CALL                             R3 0 1
       78 JUMPIFNOT                        R3 ; [+69]
       79 GETUPVAL                         R3 3
       80 GETTABLEKS                       R3 R3 K9 ["logCounter"]
       82 GETUPVAL                         R4 4
       83 DUPTABLE                         R5 K11 [{"customFields"}]
       84 DUPTABLE                         R6 K13 [{"failure_reason"}]
       85 LOADK                            R7 K19 ["CantShare"]
       86 SETTABLEKS                       R7 R6 K12 ["failure_reason"]
       88 SETTABLEKS                       R6 R5 K10 ["customFields"]
       90 CALL                             R3 2 0
       91 GETUPVAL                         R3 3
       92 GETTABLEKS                       R3 R3 K20 ["logStat"]
       94 GETUPVAL                         R4 5
       95 LOADNIL                          R5
       96 LENGTH                           R6 R1
       97 CALL                             R3 3 0
       98 NEWTABLE                         R3 0 0
      100 MOVE                             R4 R1
      101 LOADNIL                          R5
      102 LOADNIL                          R6
      103 FORGPREP                         R4
      104 GETTABLEKS                       R10 R2 K21 ["assetModels"]
      106 GETTABLE                         R9 R10 R8
      107 JUMPIFNOT                        R9 ; [+20]
      108 GETTABLEKS                       R10 R9 K3 ["state"]
      110 JUMPIFNOTEQKS                    R10 K22 ["Loaded"] ; [+17]
      112 GETTABLEKS                       R10 R9 K23 ["metadata"]
      114 GETTABLEKS                       R10 R10 K24 ["visibility"]
      116 JUMPIFNOTEQKS                    R10 K25 ["Public"] ; [+11]
      118 GETTABLEKS                       R10 R9 K23 ["metadata"]
      120 GETTABLEKS                       R10 R10 K26 ["type"]
      122 GETTABLEKS                       R10 R10 K27 ["Name"]
      124 GETTABLE                         R13 R3 R10
      125 ORK                              R12 R13 K17 [0]
      126 ADDK                             R11 R12 K28 [1]
      127 SETTABLE                         R11 R3 R10
      128 FORGLOOP                         R4 2 ; [-25]
      130 MOVE                             R4 R3
      131 LOADNIL                          R5
      132 LOADNIL                          R6
      133 FORGPREP                         R4
      134 GETUPVAL                         R9 3
      135 GETTABLEKS                       R9 R9 K20 ["logStat"]
      137 GETUPVAL                         R10 6
      138 DUPTABLE                         R11 K11 [{"customFields"}]
      139 DUPTABLE                         R12 K30 [{"asset_type"}]
      140 SETTABLEKS                       R7 R12 K29 ["asset_type"]
      142 SETTABLEKS                       R12 R11 K10 ["customFields"]
      144 MOVE                             R12 R8
      145 CALL                             R9 3 0
      146 FORGLOOP                         R4 2 ; [-13]
      148 NEWTABLE                         R3 0 0
      150 MOVE                             R4 R1
      151 LOADNIL                          R5
      152 LOADNIL                          R6
      153 FORGPREP                         R4
      154 GETIMPORT                        R9 K33 [table.clone]
      156 GETTABLEKS                       R11 R2 K21 ["assetModels"]
      158 GETTABLE                         R10 R11 R8
      159 CALL                             R9 1 1
      160 SETTABLE                         R9 R3 R8
      161 FORGLOOP                         R4 2 ; [-8]
      163 GETUPVAL                         R4 0
      164 DUPTABLE                         R6 K34 [{"state", "assetModels"}]
      165 LOADK                            R7 K19 ["CantShare"]
      166 SETTABLEKS                       R7 R6 K3 ["state"]
      168 SETTABLEKS                       R3 R6 K21 ["assetModels"]
      170 NAMECALL                         R4 R4 K16 ["_SetModel"]
      172 CALL                             R4 2 0
      173 GETUPVAL                         R4 0
      174 GETTABLEKS                       R4 R4 K5 ["_onShareAccessFinished"]
      176 CALL                             R4 0 0
      177 RETURN                           R0 0

PROTO_21:
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
       58 GETUPVAL                         R3 0
       59 CALL                             R3 0 1
       60 JUMPIFNOT                        R3 ; [+5]
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K16 ["logCounter"]
       64 GETUPVAL                         R4 2
       65 CALL                             R3 1 0
       66 NEWCLOSURE                       R5 P0
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          UPVAL U5
       74 NAMECALL                         R3 R0 K17 ["_Defer"]
       76 CALL                             R3 2 0
       77 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["_alive"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["ShareDialogController has been destroyed"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+54]
       11 NAMECALL                         R1 R0 K4 ["_GetModel"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K5 ["state"]
       16 JUMPIFEQKS                       R2 K6 ["Inactive"] ; [+48]
       18 LOADN                            R2 0
       19 GETTABLEKS                       R3 R1 K5 ["state"]
       21 JUMPIFEQKS                       R3 K7 ["Prompt"] ; [+9]
       23 GETTABLEKS                       R3 R1 K5 ["state"]
       25 JUMPIFEQKS                       R3 K8 ["Sharing"] ; [+5]
       27 GETTABLEKS                       R3 R1 K5 ["state"]
       29 JUMPIFNOTEQKS                    R3 K9 ["CantShare"] ; [+12]
       31 GETTABLEKS                       R3 R1 K10 ["assetModels"]
       33 LOADN                            R4 0
       34 MOVE                             R5 R3
       35 LOADNIL                          R6
       36 LOADNIL                          R7
       37 FORGPREP                         R5
       38 ADDK                             R4 R4 K11 [1]
       39 FORGLOOP                         R5 1 ; [-2]
       41 MOVE                             R2 R4
       42 LOADN                            R3 0
       43 GETTABLEKS                       R4 R1 K5 ["state"]
       45 JUMPIFNOTEQKS                    R4 K9 ["CantShare"] ; [+2]
       47 MOVE                             R3 R2
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K12 ["logCounter"]
       51 GETUPVAL                         R5 2
       52 DUPTABLE                         R6 K14 [{"customFields"}]
       53 DUPTABLE                         R7 K18 [{"dismissed_from_state", "asset_count", "cant_share_count"}]
       54 GETTABLEKS                       R8 R1 K5 ["state"]
       56 SETTABLEKS                       R8 R7 K15 ["dismissed_from_state"]
       58 SETTABLEKS                       R2 R7 K16 ["asset_count"]
       60 SETTABLEKS                       R3 R7 K17 ["cant_share_count"]
       62 SETTABLEKS                       R7 R6 K13 ["customFields"]
       64 CALL                             R4 2 0
       65 DUPTABLE                         R3 K19 [{"state"}]
       66 LOADK                            R4 K6 ["Inactive"]
       67 SETTABLEKS                       R4 R3 K5 ["state"]
       69 NAMECALL                         R1 R0 K20 ["_SetModel"]
       71 CALL                             R1 2 0
       72 RETURN                           R0 0

PROTO_23:
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Telemetry"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAssetAccessShareDialogTelemetry"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 16 0
       34 SETTABLEKS                       R4 R4 K12 ["__index"]
       36 GETIMPORT                        R5 K15 [table.freeze]
       38 DUPTABLE                         R6 K20 [{"eventName", "backends", "description", "lastUpdated"}]
       39 LOADK                            R7 K21 ["AssetAccessShareDialogOpened"]
       40 SETTABLEKS                       R7 R6 K16 ["eventName"]
       42 NEWTABLE                         R7 0 1
       44 GETTABLEKS                       R8 R2 K22 ["Backends"]
       46 GETTABLEKS                       R8 R8 K23 ["Counter"]
       48 SETLIST                          R7 R8 1 [1]
       50 SETTABLEKS                       R7 R6 K17 ["backends"]
       52 LOADK                            R7 K24 ["The share dialog became visible to the user (Prompt state entered)."]
       53 SETTABLEKS                       R7 R6 K18 ["description"]
       55 NEWTABLE                         R7 0 3
       57 LOADN                            R8 26
       58 LOADN                            R9 4
       59 LOADN                            R10 26
       60 SETLIST                          R7 R8 3 [1]
       62 SETTABLEKS                       R7 R6 K19 ["lastUpdated"]
       64 CALL                             R5 1 1
       65 GETIMPORT                        R6 K15 [table.freeze]
       67 DUPTABLE                         R7 K20 [{"eventName", "backends", "description", "lastUpdated"}]
       68 LOADK                            R8 K25 ["AssetAccessShareDialogShareClicked"]
       69 SETTABLEKS                       R8 R7 K16 ["eventName"]
       71 NEWTABLE                         R8 0 1
       73 GETTABLEKS                       R9 R2 K22 ["Backends"]
       75 GETTABLEKS                       R9 R9 K23 ["Counter"]
       77 SETLIST                          R8 R9 1 [1]
       79 SETTABLEKS                       R8 R7 K17 ["backends"]
       81 LOADK                            R8 K26 ["User clicked the Share button to attempt to grant asset permissions."]
       82 SETTABLEKS                       R8 R7 K18 ["description"]
       84 NEWTABLE                         R8 0 3
       86 LOADN                            R9 26
       87 LOADN                            R10 4
       88 LOADN                            R11 26
       89 SETLIST                          R8 R9 3 [1]
       91 SETTABLEKS                       R8 R7 K19 ["lastUpdated"]
       93 CALL                             R6 1 1
       94 GETIMPORT                        R7 K15 [table.freeze]
       96 DUPTABLE                         R8 K20 [{"eventName", "backends", "description", "lastUpdated"}]
       97 LOADK                            R9 K27 ["AssetAccessShareDialogShareFailed"]
       98 SETTABLEKS                       R9 R8 K16 ["eventName"]
      100 NEWTABLE                         R9 0 1
      102 GETTABLEKS                       R10 R2 K22 ["Backends"]
      104 GETTABLEKS                       R10 R10 K23 ["Counter"]
      106 SETLIST                          R9 R10 1 [1]
      108 SETTABLEKS                       R9 R8 K17 ["backends"]
      110 LOADK                            R9 K28 ["Share attempt failed — either some assets could not be shared (CantShare) or an unexpected API error occurred (UnexpectedError)."]
      111 SETTABLEKS                       R9 R8 K18 ["description"]
      113 NEWTABLE                         R9 0 3
      115 LOADN                            R10 26
      116 LOADN                            R11 4
      117 LOADN                            R12 28
      118 SETLIST                          R9 R10 3 [1]
      120 SETTABLEKS                       R9 R8 K19 ["lastUpdated"]
      122 CALL                             R7 1 1
      123 GETIMPORT                        R8 K15 [table.freeze]
      125 DUPTABLE                         R9 K20 [{"eventName", "backends", "description", "lastUpdated"}]
      126 LOADK                            R10 K29 ["AssetAccessShareDialogDismissed"]
      127 SETTABLEKS                       R10 R9 K16 ["eventName"]
      129 NEWTABLE                         R10 0 1
      131 GETTABLEKS                       R11 R2 K22 ["Backends"]
      133 GETTABLEKS                       R11 R11 K23 ["Counter"]
      135 SETLIST                          R10 R11 1 [1]
      137 SETTABLEKS                       R10 R9 K17 ["backends"]
      139 LOADK                            R10 K30 ["The dialog was closed without completing a successful share."]
      140 SETTABLEKS                       R10 R9 K18 ["description"]
      142 NEWTABLE                         R10 0 3
      144 LOADN                            R11 26
      145 LOADN                            R12 4
      146 LOADN                            R13 26
      147 SETLIST                          R10 R11 3 [1]
      149 SETTABLEKS                       R10 R9 K19 ["lastUpdated"]
      151 CALL                             R8 1 1
      152 GETIMPORT                        R9 K15 [table.freeze]
      154 DUPTABLE                         R10 K20 [{"eventName", "backends", "description", "lastUpdated"}]
      155 LOADK                            R11 K31 ["AssetAccessShareDialogAssetTypeCount"]
      156 SETTABLEKS                       R11 R10 K16 ["eventName"]
      158 NEWTABLE                         R11 0 1
      160 GETTABLEKS                       R12 R2 K22 ["Backends"]
      162 GETTABLEKS                       R12 R12 K32 ["Stat"]
      164 SETLIST                          R11 R12 1 [1]
      166 SETTABLEKS                       R11 R10 K17 ["backends"]
      168 LOADK                            R11 K33 ["Count of assets per type included in the dialog at open. One event per non-zero asset type."]
      169 SETTABLEKS                       R11 R10 K18 ["description"]
      171 NEWTABLE                         R11 0 3
      173 LOADN                            R12 26
      174 LOADN                            R13 4
      175 LOADN                            R14 28
      176 SETLIST                          R11 R12 3 [1]
      178 SETTABLEKS                       R11 R10 K19 ["lastUpdated"]
      180 CALL                             R9 1 1
      181 GETIMPORT                        R10 K15 [table.freeze]
      183 DUPTABLE                         R11 K20 [{"eventName", "backends", "description", "lastUpdated"}]
      184 LOADK                            R12 K34 ["AssetAccessShareDialogCantShareAssetTypeCount"]
      185 SETTABLEKS                       R12 R11 K16 ["eventName"]
      187 NEWTABLE                         R12 0 1
      189 GETTABLEKS                       R13 R2 K22 ["Backends"]
      191 GETTABLEKS                       R13 R13 K32 ["Stat"]
      193 SETLIST                          R12 R13 1 [1]
      195 SETTABLEKS                       R12 R11 K17 ["backends"]
      197 LOADK                            R12 K35 ["Count of assets per type that could not be shared. One event per non-zero asset type."]
      198 SETTABLEKS                       R12 R11 K18 ["description"]
      200 NEWTABLE                         R12 0 3
      202 LOADN                            R13 26
      203 LOADN                            R14 4
      204 LOADN                            R15 28
      205 SETLIST                          R12 R13 3 [1]
      207 SETTABLEKS                       R12 R11 K19 ["lastUpdated"]
      209 CALL                             R10 1 1
      210 GETIMPORT                        R11 K15 [table.freeze]
      212 DUPTABLE                         R12 K20 [{"eventName", "backends", "description", "lastUpdated"}]
      213 LOADK                            R13 K36 ["AssetAccessShareDialogTotalAssetCount"]
      214 SETTABLEKS                       R13 R12 K16 ["eventName"]
      216 NEWTABLE                         R13 0 1
      218 GETTABLEKS                       R14 R2 K22 ["Backends"]
      220 GETTABLEKS                       R14 R14 K32 ["Stat"]
      222 SETLIST                          R13 R14 1 [1]
      224 SETTABLEKS                       R13 R12 K17 ["backends"]
      226 LOADK                            R13 K37 ["Total count of assets included in the dialog at open."]
      227 SETTABLEKS                       R13 R12 K18 ["description"]
      229 NEWTABLE                         R13 0 3
      231 LOADN                            R14 26
      232 LOADN                            R15 4
      233 LOADN                            R16 28
      234 SETLIST                          R13 R14 3 [1]
      236 SETTABLEKS                       R13 R12 K19 ["lastUpdated"]
      238 CALL                             R11 1 1
      239 GETIMPORT                        R12 K15 [table.freeze]
      241 DUPTABLE                         R13 K20 [{"eventName", "backends", "description", "lastUpdated"}]
      242 LOADK                            R14 K38 ["AssetAccessShareDialogCantShareTotalAssetCount"]
      243 SETTABLEKS                       R14 R13 K16 ["eventName"]
      245 NEWTABLE                         R14 0 1
      247 GETTABLEKS                       R15 R2 K22 ["Backends"]
      249 GETTABLEKS                       R15 R15 K32 ["Stat"]
      251 SETLIST                          R14 R15 1 [1]
      253 SETTABLEKS                       R14 R13 K17 ["backends"]
      255 LOADK                            R14 K39 ["Total count of assets that could not be shared."]
      256 SETTABLEKS                       R14 R13 K18 ["description"]
      258 NEWTABLE                         R14 0 3
      260 LOADN                            R15 26
      261 LOADN                            R16 4
      262 LOADN                            R17 28
      263 SETLIST                          R14 R15 3 [1]
      265 SETTABLEKS                       R14 R13 K19 ["lastUpdated"]
      267 CALL                             R12 1 1
      268 DUPCLOSURE                       R13 K40 [PROTO_0]
      269 CAPTURE                          VAL R13
      270 DUPCLOSURE                       R14 K41 [PROTO_1]
      271 DUPCLOSURE                       R15 K42 [PROTO_2]
      272 DUPCLOSURE                       R16 K43 [PROTO_9]
      273 CAPTURE                          VAL R4
      274 CAPTURE                          VAL R3
      275 SETTABLEKS                       R16 R4 K44 ["new"]
      277 DUPCLOSURE                       R16 K45 [PROTO_10]
      278 SETTABLEKS                       R16 R4 K46 ["_GetModel"]
      280 DUPCLOSURE                       R16 K47 [PROTO_11]
      281 CAPTURE                          VAL R13
      282 SETTABLEKS                       R16 R4 K48 ["_SetModel"]
      284 DUPCLOSURE                       R16 K49 [PROTO_13]
      285 SETTABLEKS                       R16 R4 K50 ["_Defer"]
      287 DUPCLOSURE                       R16 K51 [PROTO_16]
      288 CAPTURE                          VAL R3
      289 CAPTURE                          VAL R15
      290 CAPTURE                          VAL R2
      291 CAPTURE                          VAL R5
      292 CAPTURE                          VAL R11
      293 CAPTURE                          VAL R9
      294 SETTABLEKS                       R16 R4 K52 ["_GetAndHydrateAssetMetadata"]
      296 DUPCLOSURE                       R16 K53 [PROTO_17]
      297 CAPTURE                          VAL R3
      298 SETTABLEKS                       R16 R4 K54 ["_ShowShareDialog"]
      300 DUPCLOSURE                       R16 K55 [PROTO_18]
      301 SETTABLEKS                       R16 R4 K56 ["_NewInaccessibleAsset"]
      303 DUPCLOSURE                       R16 K57 [PROTO_21]
      304 CAPTURE                          VAL R3
      305 CAPTURE                          VAL R2
      306 CAPTURE                          VAL R6
      307 CAPTURE                          VAL R7
      308 CAPTURE                          VAL R12
      309 CAPTURE                          VAL R10
      310 SETTABLEKS                       R16 R4 K58 ["_ShareAccess"]
      312 DUPCLOSURE                       R16 K59 [PROTO_22]
      313 CAPTURE                          VAL R3
      314 CAPTURE                          VAL R2
      315 CAPTURE                          VAL R8
      316 SETTABLEKS                       R16 R4 K60 ["_ShareDialogDismissed"]
      318 DUPCLOSURE                       R16 K61 [PROTO_23]
      319 SETTABLEKS                       R16 R4 K62 ["Destroy"]
      321 GETIMPORT                        R16 K15 [table.freeze]
      323 MOVE                             R17 R4
      324 CALL                             R16 1 -1
      325 RETURN                           R16 -1
