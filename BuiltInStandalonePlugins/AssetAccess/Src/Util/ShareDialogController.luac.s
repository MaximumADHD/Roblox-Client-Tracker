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
       14 DUPTABLE                         R3 K8 [{["state"] = "Inactive"}]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K9 ["_model"]
       18 SETTABLEKS                       R0 R1 K10 ["_plugin"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K11 ["_threads"]
       24 GETUPVAL                         R2 1
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+3]
       27 LOADB                            R2 0
       28 SETTABLEKS                       R2 R1 K12 ["_shouldEmitDialogOpenedEvent"]
       30 LOADK                            R4 K13 ["AssetAccessController"]
       31 NAMECALL                         R2 R0 K14 ["GetPluginComponent"]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K15 ["_assetAccessController"]
       36 GETTABLEKS                       R3 R2 K16 ["ShowShareDialog"]
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R1
       40 NAMECALL                         R3 R3 K17 ["Connect"]
       42 CALL                             R3 2 1
       43 SETTABLEKS                       R3 R1 K18 ["_showShareDialogConnection"]
       45 GETTABLEKS                       R3 R2 K19 ["NewInaccessibleAsset"]
       47 NEWCLOSURE                       R5 P1
       48 CAPTURE                          VAL R1
       49 NAMECALL                         R3 R3 K17 ["Connect"]
       51 CALL                             R3 2 1
       52 SETTABLEKS                       R3 R1 K20 ["_newInaccessibleAssetConnection"]
       54 LOADK                            R5 K21 ["ShareAccess"]
       55 NEWCLOSURE                       R6 P2
       56 CAPTURE                          VAL R1
       57 NAMECALL                         R3 R0 K22 ["OnInvoke"]
       59 CALL                             R3 3 1
       60 SETTABLEKS                       R3 R1 K23 ["_shareAccessConnection"]
       62 LOADK                            R5 K24 ["ShareDialogDismissed"]
       63 NEWCLOSURE                       R6 P3
       64 CAPTURE                          VAL R1
       65 NAMECALL                         R3 R0 K22 ["OnInvoke"]
       67 CALL                             R3 3 1
       68 SETTABLEKS                       R3 R1 K25 ["_shareDialogDismissedConnection"]
       70 DUPCLOSURE                       R3 K26 [PROTO_7]
       71 SETTABLEKS                       R3 R1 K27 ["_onGetAssetMetadataFinished"]
       73 DUPCLOSURE                       R3 K28 [PROTO_8]
       74 SETTABLEKS                       R3 R1 K29 ["_onShareAccessFinished"]
       76 GETTABLEKS                       R3 R1 K10 ["_plugin"]
       78 LOADK                            R5 K30 ["ShareDialogModel"]
       79 GETTABLEKS                       R6 R1 K9 ["_model"]
       81 NAMECALL                         R3 R3 K31 ["SetItem"]
       83 CALL                             R3 3 0
       84 RETURN                           R1 1

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
       36 JUMPIFNOT                        R0 ; [+24]
       37 MOVE                             R4 R1
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 FORGPREP                         R4
       41 GETTABLEKS                       R10 R8 K13 ["id"]
       43 GETTABLE                         R9 R3 R10
       44 JUMPIFNOT                        R9 ; [+13]
       45 GETTABLEKS                       R10 R8 K13 ["id"]
       47 GETTABLE                         R9 R3 R10
       48 GETTABLEKS                       R9 R9 K3 ["state"]
       50 JUMPIFNOTEQKS                    R9 K14 ["Loading"] ; [+7]
       52 GETTABLEKS                       R9 R8 K13 ["id"]
       54 DUPTABLE                         R10 K17 [{["state"] = "Loaded", ["metadata"]}]
       55 SETTABLEKS                       R8 R10 K16 ["metadata"]
       57 SETTABLE                         R10 R3 R9
       58 FORGLOOP                         R4 2 ; [-18]
       60 JUMP                             ; [+15]
       61 GETUPVAL                         R4 1
       62 LOADNIL                          R5
       63 LOADNIL                          R6
       64 FORGPREP                         R4
       65 GETTABLE                         R9 R3 R8
       66 JUMPIFNOT                        R9 ; [+7]
       67 GETTABLE                         R9 R3 R8
       68 GETTABLEKS                       R9 R9 K3 ["state"]
       70 JUMPIFNOTEQKS                    R9 K14 ["Loading"] ; [+3]
       72 DUPTABLE                         R9 K19 [{["state"] = "Failed"}]
       73 SETTABLE                         R9 R3 R8
       74 FORGLOOP                         R4 2 ; [-10]
       76 GETUPVAL                         R4 0
       77 DUPTABLE                         R6 K20 [{["state"] = "Prompt", ["assetModels"]}]
       78 SETTABLEKS                       R3 R6 K12 ["assetModels"]
       80 NAMECALL                         R4 R4 K21 ["_SetModel"]
       82 CALL                             R4 2 0
       83 GETUPVAL                         R4 2
       84 CALL                             R4 0 1
       85 JUMPIFNOT                        R4 ; [+49]
       86 GETUPVAL                         R4 0
       87 GETTABLEKS                       R4 R4 K22 ["_shouldEmitDialogOpenedEvent"]
       89 JUMPIFNOT                        R4 ; [+45]
       90 GETUPVAL                         R4 0
       91 LOADB                            R5 0
       92 SETTABLEKS                       R5 R4 K22 ["_shouldEmitDialogOpenedEvent"]
       94 GETUPVAL                         R4 3
       95 MOVE                             R5 R3
       96 CALL                             R4 1 1
       97 GETUPVAL                         R5 4
       98 GETTABLEKS                       R5 R5 K23 ["logCounter"]
      100 GETUPVAL                         R6 5
      101 CALL                             R5 1 0
      102 GETUPVAL                         R5 4
      103 GETTABLEKS                       R5 R5 K24 ["logStat"]
      105 GETUPVAL                         R6 6
      106 LOADNIL                          R7
      107 LOADN                            R9 0
      108 MOVE                             R10 R3
      109 LOADNIL                          R11
      110 LOADNIL                          R12
      111 FORGPREP                         R10
      112 ADDK                             R9 R9 K25 [1]
      113 FORGLOOP                         R10 1 ; [-2]
      115 MOVE                             R8 R9
      116 CALL                             R5 3 0
      117 MOVE                             R5 R4
      118 LOADNIL                          R6
      119 LOADNIL                          R7
      120 FORGPREP                         R5
      121 GETUPVAL                         R10 4
      122 GETTABLEKS                       R10 R10 K24 ["logStat"]
      124 GETUPVAL                         R11 7
      125 DUPTABLE                         R12 K27 [{"customFields"}]
      126 DUPTABLE                         R13 K29 [{"asset_type"}]
      127 SETTABLEKS                       R8 R13 K28 ["asset_type"]
      129 SETTABLEKS                       R13 R12 K26 ["customFields"]
      131 MOVE                             R13 R9
      132 CALL                             R10 3 0
      133 FORGLOOP                         R5 2 ; [-13]
      135 GETUPVAL                         R4 0
      136 GETTABLEKS                       R4 R4 K5 ["_onGetAssetMetadataFinished"]
      138 CALL                             R4 0 0
      139 RETURN                           R0 0

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
       20 DUPTABLE                         R8 K7 [{["state"] = "Loading"}]
       21 SETTABLE                         R8 R2 R7
       22 FORGLOOP                         R3 2 ; [-3]
       24 DUPTABLE                         R5 K10 [{["assetModels"], ["state"] = "Prompt"}]
       25 SETTABLEKS                       R2 R5 K8 ["assetModels"]
       27 NAMECALL                         R3 R0 K11 ["_SetModel"]
       29 CALL                             R3 2 0
       30 MOVE                             R5 R1
       31 NAMECALL                         R3 R0 K12 ["_GetAndHydrateAssetMetadata"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

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
       33 DUPTABLE                         R4 K13 [{["state"] = "Loading"}]
       34 SETTABLE                         R4 R3 R1
       35 DUPTABLE                         R6 K14 [{["assetModels"], ["state"] = "Prompt"}]
       36 SETTABLEKS                       R3 R6 K11 ["assetModels"]
       38 NAMECALL                         R4 R0 K15 ["_SetModel"]
       40 CALL                             R4 2 0
       41 NEWTABLE                         R6 0 1
       43 MOVE                             R7 R1
       44 SETLIST                          R6 R7 1 [1]
       46 NAMECALL                         R4 R0 K16 ["_GetAndHydrateAssetMetadata"]
       48 CALL                             R4 2 0
       49 RETURN                           R0 0

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
       31 JUMPIF                           R0 ; [+22]
       32 GETUPVAL                         R3 2
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+9]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K9 ["logCounter"]
       38 GETUPVAL                         R4 4
       39 DUPTABLE                         R5 K11 [{"customFields"}]
       40 DUPTABLE                         R6 K14 [{["failure_reason"] = "UnexpectedError"}]
       41 SETTABLEKS                       R6 R5 K10 ["customFields"]
       43 CALL                             R3 2 0
       44 GETUPVAL                         R3 0
       45 DUPTABLE                         R5 K15 [{["state"] = "UnexpectedError"}]
       46 NAMECALL                         R3 R3 K16 ["_SetModel"]
       48 CALL                             R3 2 0
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K5 ["_onShareAccessFinished"]
       52 CALL                             R3 0 0
       53 RETURN                           R0 0
       54 LENGTH                           R3 R1
       55 JUMPIFNOTEQKN                    R3 K17 [0] ; [+11]
       57 GETUPVAL                         R3 0
       58 DUPTABLE                         R5 K19 [{["state"] = "Inactive"}]
       59 NAMECALL                         R3 R3 K16 ["_SetModel"]
       61 CALL                             R3 2 0
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K5 ["_onShareAccessFinished"]
       65 CALL                             R3 0 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R3 2
       68 CALL                             R3 0 1
       69 JUMPIFNOT                        R3 ; [+66]
       70 GETUPVAL                         R3 3
       71 GETTABLEKS                       R3 R3 K9 ["logCounter"]
       73 GETUPVAL                         R4 4
       74 DUPTABLE                         R5 K11 [{"customFields"}]
       75 DUPTABLE                         R6 K21 [{["failure_reason"] = "CantShare"}]
       76 SETTABLEKS                       R6 R5 K10 ["customFields"]
       78 CALL                             R3 2 0
       79 GETUPVAL                         R3 3
       80 GETTABLEKS                       R3 R3 K22 ["logStat"]
       82 GETUPVAL                         R4 5
       83 LOADNIL                          R5
       84 LENGTH                           R6 R1
       85 CALL                             R3 3 0
       86 NEWTABLE                         R3 0 0
       88 MOVE                             R4 R1
       89 LOADNIL                          R5
       90 LOADNIL                          R6
       91 FORGPREP                         R4
       92 GETTABLEKS                       R10 R2 K23 ["assetModels"]
       94 GETTABLE                         R9 R10 R8
       95 JUMPIFNOT                        R9 ; [+20]
       96 GETTABLEKS                       R10 R9 K3 ["state"]
       98 JUMPIFNOTEQKS                    R10 K24 ["Loaded"] ; [+17]
      100 GETTABLEKS                       R10 R9 K25 ["metadata"]
      102 GETTABLEKS                       R10 R10 K26 ["visibility"]
      104 JUMPIFNOTEQKS                    R10 K27 ["Public"] ; [+11]
      106 GETTABLEKS                       R10 R9 K25 ["metadata"]
      108 GETTABLEKS                       R10 R10 K28 ["type"]
      110 GETTABLEKS                       R10 R10 K29 ["Name"]
      112 GETTABLE                         R13 R3 R10
      113 ORK                              R12 R13 K17 [0]
      114 ADDK                             R11 R12 K30 [1]
      115 SETTABLE                         R11 R3 R10
      116 FORGLOOP                         R4 2 ; [-25]
      118 MOVE                             R4 R3
      119 LOADNIL                          R5
      120 LOADNIL                          R6
      121 FORGPREP                         R4
      122 GETUPVAL                         R9 3
      123 GETTABLEKS                       R9 R9 K22 ["logStat"]
      125 GETUPVAL                         R10 6
      126 DUPTABLE                         R11 K11 [{"customFields"}]
      127 DUPTABLE                         R12 K32 [{"asset_type"}]
      128 SETTABLEKS                       R7 R12 K31 ["asset_type"]
      130 SETTABLEKS                       R12 R11 K10 ["customFields"]
      132 MOVE                             R12 R8
      133 CALL                             R9 3 0
      134 FORGLOOP                         R4 2 ; [-13]
      136 NEWTABLE                         R3 0 0
      138 MOVE                             R4 R1
      139 LOADNIL                          R5
      140 LOADNIL                          R6
      141 FORGPREP                         R4
      142 GETIMPORT                        R9 K35 [table.clone]
      144 GETTABLEKS                       R11 R2 K23 ["assetModels"]
      146 GETTABLE                         R10 R11 R8
      147 CALL                             R9 1 1
      148 SETTABLE                         R9 R3 R8
      149 FORGLOOP                         R4 2 ; [-8]
      151 GETUPVAL                         R4 0
      152 DUPTABLE                         R6 K36 [{["state"] = "CantShare", ["assetModels"]}]
      153 SETTABLEKS                       R3 R6 K23 ["assetModels"]
      155 NAMECALL                         R4 R4 K16 ["_SetModel"]
      157 CALL                             R4 2 0
      158 GETUPVAL                         R4 0
      159 GETTABLEKS                       R4 R4 K5 ["_onShareAccessFinished"]
      161 CALL                             R4 0 0
      162 RETURN                           R0 0

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
       31 DUPTABLE                         R4 K11 [{["state"] = "Sharing", ["assetModels"]}]
       32 GETTABLEKS                       R5 R1 K10 ["assetModels"]
       34 SETTABLEKS                       R5 R4 K10 ["assetModels"]
       36 NAMECALL                         R2 R0 K12 ["_SetModel"]
       38 CALL                             R2 2 0
       39 NEWTABLE                         R2 0 0
       41 GETTABLEKS                       R3 R1 K10 ["assetModels"]
       43 LOADNIL                          R4
       44 LOADNIL                          R5
       45 FORGPREP                         R3
       46 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       48 MOVE                             R9 R2
       49 MOVE                             R10 R6
       50 GETIMPORT                        R8 K15 [table.insert]
       52 CALL                             R8 2 0
       53 FORGLOOP                         R3 2 ; [-8]
       55 GETUPVAL                         R3 0
       56 CALL                             R3 0 1
       57 JUMPIFNOT                        R3 ; [+5]
       58 GETUPVAL                         R3 1
       59 GETTABLEKS                       R3 R3 K16 ["logCounter"]
       61 GETUPVAL                         R4 2
       62 CALL                             R3 1 0
       63 NEWCLOSURE                       R5 P0
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U5
       71 NAMECALL                         R3 R0 K17 ["_Defer"]
       73 CALL                             R3 2 0
       74 RETURN                           R0 0

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
       65 DUPTABLE                         R3 K19 [{["state"] = "Inactive"}]
       66 NAMECALL                         R1 R0 K20 ["_SetModel"]
       68 CALL                             R1 2 0
       69 RETURN                           R0 0

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
       38 DUPTABLE                         R6 K22 [{["eventName"] = "AssetAccessShareDialogOpened", ["backends"], ["description"] = "The share dialog became visible to the user (Prompt state entered).", ["lastUpdated"]}]
       39 NEWTABLE                         R7 0 1
       41 GETTABLEKS                       R8 R2 K23 ["Backends"]
       43 GETTABLEKS                       R8 R8 K24 ["Counter"]
       45 SETLIST                          R7 R8 1 [1]
       47 SETTABLEKS                       R7 R6 K18 ["backends"]
       49 NEWTABLE                         R7 0 3
       51 LOADN                            R8 26
       52 LOADN                            R9 4
       53 LOADN                            R10 26
       54 SETLIST                          R7 R8 3 [1]
       56 SETTABLEKS                       R7 R6 K21 ["lastUpdated"]
       58 CALL                             R5 1 1
       59 GETIMPORT                        R6 K15 [table.freeze]
       61 DUPTABLE                         R7 K27 [{["eventName"] = "AssetAccessShareDialogShareClicked", ["backends"], ["description"] = "User clicked the Share button to attempt to grant asset permissions.", ["lastUpdated"]}]
       62 NEWTABLE                         R8 0 1
       64 GETTABLEKS                       R9 R2 K23 ["Backends"]
       66 GETTABLEKS                       R9 R9 K24 ["Counter"]
       68 SETLIST                          R8 R9 1 [1]
       70 SETTABLEKS                       R8 R7 K18 ["backends"]
       72 NEWTABLE                         R8 0 3
       74 LOADN                            R9 26
       75 LOADN                            R10 4
       76 LOADN                            R11 26
       77 SETLIST                          R8 R9 3 [1]
       79 SETTABLEKS                       R8 R7 K21 ["lastUpdated"]
       81 CALL                             R6 1 1
       82 GETIMPORT                        R7 K15 [table.freeze]
       84 DUPTABLE                         R8 K30 [{["eventName"] = "AssetAccessShareDialogShareFailed", ["backends"], ["description"] = "Share attempt failed — either some assets could not be shared (CantShare) or an unexpected API error occurred (UnexpectedError).", ["lastUpdated"]}]
       85 NEWTABLE                         R9 0 1
       87 GETTABLEKS                       R10 R2 K23 ["Backends"]
       89 GETTABLEKS                       R10 R10 K24 ["Counter"]
       91 SETLIST                          R9 R10 1 [1]
       93 SETTABLEKS                       R9 R8 K18 ["backends"]
       95 NEWTABLE                         R9 0 3
       97 LOADN                            R10 26
       98 LOADN                            R11 4
       99 LOADN                            R12 28
      100 SETLIST                          R9 R10 3 [1]
      102 SETTABLEKS                       R9 R8 K21 ["lastUpdated"]
      104 CALL                             R7 1 1
      105 GETIMPORT                        R8 K15 [table.freeze]
      107 DUPTABLE                         R9 K33 [{["eventName"] = "AssetAccessShareDialogDismissed", ["backends"], ["description"] = "The dialog was closed without completing a successful share.", ["lastUpdated"]}]
      108 NEWTABLE                         R10 0 1
      110 GETTABLEKS                       R11 R2 K23 ["Backends"]
      112 GETTABLEKS                       R11 R11 K24 ["Counter"]
      114 SETLIST                          R10 R11 1 [1]
      116 SETTABLEKS                       R10 R9 K18 ["backends"]
      118 NEWTABLE                         R10 0 3
      120 LOADN                            R11 26
      121 LOADN                            R12 4
      122 LOADN                            R13 26
      123 SETLIST                          R10 R11 3 [1]
      125 SETTABLEKS                       R10 R9 K21 ["lastUpdated"]
      127 CALL                             R8 1 1
      128 GETIMPORT                        R9 K15 [table.freeze]
      130 DUPTABLE                         R10 K36 [{["eventName"] = "AssetAccessShareDialogAssetTypeCount", ["backends"], ["description"] = "Count of assets per type included in the dialog at open. One event per non-zero asset type.", ["lastUpdated"]}]
      131 NEWTABLE                         R11 0 1
      133 GETTABLEKS                       R12 R2 K23 ["Backends"]
      135 GETTABLEKS                       R12 R12 K37 ["Stat"]
      137 SETLIST                          R11 R12 1 [1]
      139 SETTABLEKS                       R11 R10 K18 ["backends"]
      141 NEWTABLE                         R11 0 3
      143 LOADN                            R12 26
      144 LOADN                            R13 4
      145 LOADN                            R14 28
      146 SETLIST                          R11 R12 3 [1]
      148 SETTABLEKS                       R11 R10 K21 ["lastUpdated"]
      150 CALL                             R9 1 1
      151 GETIMPORT                        R10 K15 [table.freeze]
      153 DUPTABLE                         R11 K40 [{["eventName"] = "AssetAccessShareDialogCantShareAssetTypeCount", ["backends"], ["description"] = "Count of assets per type that could not be shared. One event per non-zero asset type.", ["lastUpdated"]}]
      154 NEWTABLE                         R12 0 1
      156 GETTABLEKS                       R13 R2 K23 ["Backends"]
      158 GETTABLEKS                       R13 R13 K37 ["Stat"]
      160 SETLIST                          R12 R13 1 [1]
      162 SETTABLEKS                       R12 R11 K18 ["backends"]
      164 NEWTABLE                         R12 0 3
      166 LOADN                            R13 26
      167 LOADN                            R14 4
      168 LOADN                            R15 28
      169 SETLIST                          R12 R13 3 [1]
      171 SETTABLEKS                       R12 R11 K21 ["lastUpdated"]
      173 CALL                             R10 1 1
      174 GETIMPORT                        R11 K15 [table.freeze]
      176 DUPTABLE                         R12 K43 [{["eventName"] = "AssetAccessShareDialogTotalAssetCount", ["backends"], ["description"] = "Total count of assets included in the dialog at open.", ["lastUpdated"]}]
      177 NEWTABLE                         R13 0 1
      179 GETTABLEKS                       R14 R2 K23 ["Backends"]
      181 GETTABLEKS                       R14 R14 K37 ["Stat"]
      183 SETLIST                          R13 R14 1 [1]
      185 SETTABLEKS                       R13 R12 K18 ["backends"]
      187 NEWTABLE                         R13 0 3
      189 LOADN                            R14 26
      190 LOADN                            R15 4
      191 LOADN                            R16 28
      192 SETLIST                          R13 R14 3 [1]
      194 SETTABLEKS                       R13 R12 K21 ["lastUpdated"]
      196 CALL                             R11 1 1
      197 GETIMPORT                        R12 K15 [table.freeze]
      199 DUPTABLE                         R13 K46 [{["eventName"] = "AssetAccessShareDialogCantShareTotalAssetCount", ["backends"], ["description"] = "Total count of assets that could not be shared.", ["lastUpdated"]}]
      200 NEWTABLE                         R14 0 1
      202 GETTABLEKS                       R15 R2 K23 ["Backends"]
      204 GETTABLEKS                       R15 R15 K37 ["Stat"]
      206 SETLIST                          R14 R15 1 [1]
      208 SETTABLEKS                       R14 R13 K18 ["backends"]
      210 NEWTABLE                         R14 0 3
      212 LOADN                            R15 26
      213 LOADN                            R16 4
      214 LOADN                            R17 28
      215 SETLIST                          R14 R15 3 [1]
      217 SETTABLEKS                       R14 R13 K21 ["lastUpdated"]
      219 CALL                             R12 1 1
      220 DUPCLOSURE                       R13 K47 [PROTO_0]
      221 CAPTURE                          VAL R13
      222 DUPCLOSURE                       R14 K48 [PROTO_1]
      223 DUPCLOSURE                       R15 K49 [PROTO_2]
      224 DUPCLOSURE                       R16 K50 [PROTO_9]
      225 CAPTURE                          VAL R4
      226 CAPTURE                          VAL R3
      227 SETTABLEKS                       R16 R4 K51 ["new"]
      229 DUPCLOSURE                       R16 K52 [PROTO_10]
      230 SETTABLEKS                       R16 R4 K53 ["_GetModel"]
      232 DUPCLOSURE                       R16 K54 [PROTO_11]
      233 CAPTURE                          VAL R13
      234 SETTABLEKS                       R16 R4 K55 ["_SetModel"]
      236 DUPCLOSURE                       R16 K56 [PROTO_13]
      237 SETTABLEKS                       R16 R4 K57 ["_Defer"]
      239 DUPCLOSURE                       R16 K58 [PROTO_16]
      240 CAPTURE                          VAL R3
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R2
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R11
      245 CAPTURE                          VAL R9
      246 SETTABLEKS                       R16 R4 K59 ["_GetAndHydrateAssetMetadata"]
      248 DUPCLOSURE                       R16 K60 [PROTO_17]
      249 CAPTURE                          VAL R3
      250 SETTABLEKS                       R16 R4 K61 ["_ShowShareDialog"]
      252 DUPCLOSURE                       R16 K62 [PROTO_18]
      253 SETTABLEKS                       R16 R4 K63 ["_NewInaccessibleAsset"]
      255 DUPCLOSURE                       R16 K64 [PROTO_21]
      256 CAPTURE                          VAL R3
      257 CAPTURE                          VAL R2
      258 CAPTURE                          VAL R6
      259 CAPTURE                          VAL R7
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R10
      262 SETTABLEKS                       R16 R4 K65 ["_ShareAccess"]
      264 DUPCLOSURE                       R16 K66 [PROTO_22]
      265 CAPTURE                          VAL R3
      266 CAPTURE                          VAL R2
      267 CAPTURE                          VAL R8
      268 SETTABLEKS                       R16 R4 K67 ["_ShareDialogDismissed"]
      270 DUPCLOSURE                       R16 K68 [PROTO_23]
      271 SETTABLEKS                       R16 R4 K69 ["Destroy"]
      273 GETIMPORT                        R16 K15 [table.freeze]
      275 MOVE                             R17 R4
      276 CALL                             R16 1 -1
      277 RETURN                           R16 -1
