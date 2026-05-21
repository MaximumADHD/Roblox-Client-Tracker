PROTO_0:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 SETTABLEKS                       R0 R6 K2 ["SourceAssetId"]
        7 FORGLOOP                         R2 2 [inext] ; [-3]
        9 RETURN                           R0 0

PROTO_1:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["InsertAssetController.new expects a Plugin instance."]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 DUPTABLE                         R2 K5 [{"_plugin", "_dragState"}]
        8 SETTABLEKS                       R0 R2 K3 ["_plugin"]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K4 ["_dragState"]
       13 GETUPVAL                         R3 0
       14 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       16 GETIMPORT                        R1 K7 [setmetatable]
       18 CALL                             R1 2 1
       19 NAMECALL                         R2 R1 K8 ["registerAssetInsertionHandlers"]
       21 CALL                             R2 1 0
       22 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["UsesAssetInsertionDrag"]
        6 GETUPVAL                         R0 0
        7 DUPTABLE                         R1 K5 [{"assetId", "assetName", "assetTypeId"}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K2 ["assetId"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K3 ["assetName"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K6 ["Value"]
       17 SETTABLEKS                       R2 R1 K4 ["assetTypeId"]
       19 SETTABLEKS                       R1 R0 K7 ["_dragState"]
       21 GETUPVAL                         R0 4
       22 GETUPVAL                         R1 1
       23 GETUPVAL                         R2 2
       24 GETUPVAL                         R3 3
       25 GETUPVAL                         R4 5
       26 CALL                             R0 4 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["_plugin"]
       30 DUPTABLE                         R3 K11 [{"Sender", "MimeType", "Data"}]
       31 LOADK                            R4 K12 ["InsertAssetController"]
       32 SETTABLEKS                       R4 R3 K8 ["Sender"]
       34 GETUPVAL                         R5 6
       35 JUMPIFNOT                        R5 ; [+2]
       36 LOADK                            R4 K13 ["text/x-roblox-asset-url"]
       37 JUMP                             ; [+1]
       38 LOADK                            R4 K14 ["text/plain"]
       39 SETTABLEKS                       R4 R3 K9 ["MimeType"]
       41 SETTABLEKS                       R0 R3 K10 ["Data"]
       43 NAMECALL                         R1 R1 K15 ["StartDrag"]
       45 CALL                             R1 2 0
       46 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_dragState"]
        3 SETTABLEKS                       R0 R2 K1 ["resolve"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["_dragState"]
        8 SETTABLEKS                       R1 R2 K2 ["reject"]
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R3
        2 CALL                             R5 1 1
        3 JUMPIF                           R5 ; [+6]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["reject"]
        7 LOADK                            R6 K1 ["Cannot drag asset type"]
        8 CALL                             R5 1 -1
        9 RETURN                           R5 -1
       10 GETTABLEKS                       R5 R0 K2 ["_dragState"]
       12 JUMPIFNOT                        R5 ; [+15]
       13 GETTABLEKS                       R5 R0 K2 ["_dragState"]
       15 GETTABLEKS                       R5 R5 K3 ["promise"]
       17 JUMPIFNOT                        R5 ; [+7]
       18 GETTABLEKS                       R5 R0 K2 ["_dragState"]
       20 GETTABLEKS                       R5 R5 K3 ["promise"]
       22 NAMECALL                         R5 R5 K4 ["cancel"]
       24 CALL                             R5 1 0
       25 LOADNIL                          R5
       26 SETTABLEKS                       R5 R0 K2 ["_dragState"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R6 R0 K5 ["_plugin"]
       31 NAMECALL                         R6 R6 K6 ["GetSelectedRibbonTool"]
       33 CALL                             R6 1 -1
       34 CALL                             R5 -1 1
       35 JUMPIF                           R5 ; [+10]
       36 GETTABLEKS                       R5 R0 K5 ["_plugin"]
       38 GETIMPORT                        R7 K10 [Enum.RibbonTool.Select]
       40 GETIMPORT                        R8 K13 [UDim2.new]
       42 CALL                             R8 0 -1
       43 NAMECALL                         R5 R5 K14 ["SelectRibbonTool"]
       45 CALL                             R5 -1 0
       46 GETUPVAL                         R5 3
       47 LOADK                            R7 K15 ["Before insert asset %d"]
       48 MOVE                             R9 R1
       49 NAMECALL                         R7 R7 K16 ["format"]
       51 CALL                             R7 2 -1
       52 NAMECALL                         R5 R5 K17 ["SetWaypoint"]
       54 CALL                             R5 -1 0
       55 GETIMPORT                        R5 K19 [pcall]
       57 NEWCLOSURE                       R6 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R4
       64 CAPTURE                          UPVAL U5
       65 CALL                             R5 1 2
       66 JUMPIFNOT                        R5 ; [+15]
       67 GETTABLEKS                       R7 R0 K2 ["_dragState"]
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K12 ["new"]
       72 NEWCLOSURE                       R9 P1
       73 CAPTURE                          VAL R0
       74 CALL                             R8 1 1
       75 SETTABLEKS                       R8 R7 K3 ["promise"]
       77 GETTABLEKS                       R7 R0 K2 ["_dragState"]
       79 GETTABLEKS                       R7 R7 K3 ["promise"]
       81 RETURN                           R7 1
       82 GETUPVAL                         R7 1
       83 GETTABLEKS                       R7 R7 K0 ["reject"]
       85 LOADK                            R8 K20 ["Drag insert failed for asset %d %s: %s"]
       86 MOVE                             R10 R1
       87 MOVE                             R11 R2
       88 ORK                              R12 R6 K21 [""]
       89 NAMECALL                         R8 R8 K16 ["format"]
       91 CALL                             R8 4 -1
       92 CALL                             R7 -1 -1
       93 RETURN                           R7 -1

PROTO_5:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 MOVE                             R4 R2
        3 CALL                             R3 1 3
        4 FORGPREP_INEXT                   R3
        5 SETTABLEKS                       R0 R7 K2 ["SourceAssetId"]
        7 FORGLOOP                         R3 2 [inext] ; [-3]
        9 GETIMPORT                        R3 K6 [Enum.AssetType.MeshPart]
       11 GETTABLEKS                       R3 R3 K7 ["Value"]
       13 JUMPIFNOTEQ                      R1 R3 ; [+6]
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R0
       17 MOVE                             R5 R2
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K8 ["_dragState"]
       23 SETTABLEKS                       R2 R3 K9 ["instances"]
       25 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_dragState"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["_dragState"]
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["_dragState"]
       12 GETTABLEKS                       R1 R0 K1 ["resolve"]
       14 GETTABLEKS                       R2 R0 K2 ["assetId"]
       16 GETTABLEKS                       R3 R0 K3 ["instances"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R1 K1 ["ProcessAssetInsertionDrag"]
        7 GETTABLEKS                       R1 R0 K0 ["_plugin"]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K2 ["ProcessAssetInsertionDrop"]
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["Promise"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R1 K10 ["Utility"]
       22 GETIMPORT                        R5 K8 [require]
       24 GETTABLEKS                       R6 R4 K11 ["canDragInsertAsset"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K8 [require]
       29 GETTABLEKS                       R7 R4 K12 ["constructAssetGameAssetIdUrl"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K8 [require]
       34 GETTABLEKS                       R8 R4 K13 ["isRibbonDraggerTool"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K8 [require]
       39 GETTABLEKS                       R9 R4 K14 ["sanitizeMeshAsset"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K1 [game]
       44 LOADK                            R11 K15 ["AssetInsertionUseSpecialMimeTypeEnabled"]
       45 NAMECALL                         R9 R9 K16 ["GetEngineFeature"]
       47 CALL                             R9 2 1
       48 DUPCLOSURE                       R10 K17 [PROTO_0]
       49 NEWTABLE                         R11 4 0
       51 SETTABLEKS                       R11 R11 K18 ["__index"]
       53 DUPCLOSURE                       R12 K19 [PROTO_1]
       54 CAPTURE                          VAL R11
       55 SETTABLEKS                       R12 R11 K20 ["new"]
       57 DUPCLOSURE                       R12 K21 [PROTO_4]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R9
       64 SETTABLEKS                       R12 R11 K22 ["beginDragInsert"]
       66 DUPCLOSURE                       R12 K23 [PROTO_8]
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R12 R11 K24 ["registerAssetInsertionHandlers"]
       70 RETURN                           R11 1
