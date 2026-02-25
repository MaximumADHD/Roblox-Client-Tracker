PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["AssetManagerReducer"]
        5 GETTABLEKS                       R2 R3 K2 ["recentAssets"]
        7 GETTABLEKS                       R4 R1 K1 ["AssetManagerReducer"]
        9 GETTABLEKS                       R3 R4 K3 ["selectedAssets"]
       11 NEWTABLE                         R4 0 0
       13 NEWTABLE                         R5 0 0
       15 GETIMPORT                        R6 K5 [pairs]
       17 MOVE                             R7 R2
       18 CALL                             R6 1 3
       19 FORGPREP_NEXT                    R6
       20 GETTABLEKS                       R11 R10 K6 ["key"]
       22 GETTABLE                         R12 R3 R11
       23 JUMPIFNOT                        R12 ; [+24]
       24 GETTABLEKS                       R12 R10 K7 ["assetType"]
       26 GETIMPORT                        R13 K11 [Enum.AssetType.MeshPart]
       28 JUMPIFNOTEQ                      R12 R13 ; [+19]
       30 LOADK                            R15 K12 ["Meshes/"]
       31 GETTABLEKS                       R16 R10 K13 ["name"]
       33 CONCAT                           R14 R15 R16
       34 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       36 MOVE                             R13 R4
       37 GETIMPORT                        R12 K16 [table.insert]
       39 CALL                             R12 2 0
       40 GETTABLEKS                       R14 R10 K17 ["id"]
       42 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       44 MOVE                             R13 R5
       45 GETIMPORT                        R12 K16 [table.insert]
       47 CALL                             R12 2 0
       48 FORGLOOP                         R6 2 ; [-29]
       50 RETURN                           R4 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getState"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R2 R0 K1 ["AssetManagerReducer"]
        6 GETTABLEKS                       R1 R2 K2 ["recentAssets"]
        8 GETTABLEKS                       R3 R0 K1 ["AssetManagerReducer"]
       10 GETTABLEKS                       R2 R3 K3 ["selectedAssets"]
       12 NEWTABLE                         R3 0 0
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 0
       18 CALL                             R5 1 2
       19 MOVE                             R3 R5
       20 MOVE                             R4 R6
       21 GETIMPORT                        R5 K5 [next]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 1
       25 JUMPIFEQKNIL                     R5 ; [+7]
       27 GETUPVAL                         R5 2
       28 MOVE                             R7 R3
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R5 K6 ["InsertMeshesWithLocation"]
       32 CALL                             R5 3 0
       33 NEWTABLE                         R5 0 0
       35 GETIMPORT                        R6 K8 [pairs]
       37 MOVE                             R7 R1
       38 CALL                             R6 1 3
       39 FORGPREP_NEXT                    R6
       40 GETTABLEKS                       R11 R10 K9 ["key"]
       42 GETTABLE                         R12 R2 R11
       43 JUMPIFNOT                        R12 ; [+14]
       44 GETTABLEKS                       R12 R10 K10 ["assetType"]
       46 GETIMPORT                        R13 K14 [Enum.AssetType.Image]
       48 JUMPIFNOTEQ                      R12 R13 ; [+9]
       50 GETTABLEKS                       R14 R10 K15 ["id"]
       52 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       54 MOVE                             R13 R5
       55 GETIMPORT                        R12 K18 [table.insert]
       57 CALL                             R12 2 0
       58 FORGLOOP                         R6 2 ; [-19]
       60 GETUPVAL                         R6 2
       61 MOVE                             R8 R5
       62 NAMECALL                         R6 R6 K19 ["InsertImages"]
       64 CALL                             R6 2 0
       65 GETUPVAL                         R6 3
       66 LOADK                            R8 K20 ["clickContextMenuItem"]
       67 NAMECALL                         R6 R6 K21 ["report"]
       69 CALL                             R6 2 0
       70 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["rbxassetid://"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K1 ["id"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K3 ["clickContextMenuItem"]
       11 NAMECALL                         R0 R0 K4 ["report"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R9 K0 ["Insert"]
        1 LOADK                            R12 K1 ["ContextMenu"]
        2 LOADK                            R13 K0 ["Insert"]
        3 NAMECALL                         R10 R4 K2 ["getText"]
        5 CALL                             R10 3 -1
        6 NAMECALL                         R7 R3 K3 ["AddNewAction"]
        8 CALL                             R7 -1 1
        9 GETTABLEKS                       R6 R7 K4 ["Triggered"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          VAL R5
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R6 R6 K5 ["connect"]
       18 CALL                             R6 2 0
       19 LOADK                            R9 K6 ["CopyIdToClipboard"]
       20 LOADK                            R12 K1 ["ContextMenu"]
       21 LOADK                            R13 K6 ["CopyIdToClipboard"]
       22 NAMECALL                         R10 R4 K2 ["getText"]
       24 CALL                             R10 3 -1
       25 NAMECALL                         R7 R3 K3 ["AddNewAction"]
       27 CALL                             R7 -1 1
       28 GETTABLEKS                       R6 R7 K4 ["Triggered"]
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R0
       34 NAMECALL                         R6 R6 K5 ["connect"]
       36 CALL                             R6 2 0
       37 NAMECALL                         R6 R3 K7 ["ShowAsync"]
       39 CALL                             R6 1 0
       40 NAMECALL                         R6 R3 K8 ["Destroy"]
       42 CALL                             R6 1 0
       43 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getState"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R2 R0 K1 ["AssetManagerReducer"]
        6 GETTABLEKS                       R1 R2 K2 ["recentAssets"]
        8 GETTABLEKS                       R3 R0 K1 ["AssetManagerReducer"]
       10 GETTABLEKS                       R2 R3 K3 ["selectedAssets"]
       12 NEWTABLE                         R3 0 0
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 0
       18 CALL                             R5 1 2
       19 MOVE                             R3 R5
       20 MOVE                             R4 R6
       21 GETIMPORT                        R5 K5 [next]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 1
       25 JUMPIFEQKNIL                     R5 ; [+7]
       27 GETUPVAL                         R5 2
       28 MOVE                             R7 R3
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R5 K6 ["InsertMeshesWithLocation"]
       32 CALL                             R5 3 0
       33 GETUPVAL                         R5 2
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R7 R8 K7 ["id"]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R8 R9 K8 ["name"]
       40 NAMECALL                         R5 R5 K9 ["InsertAudio"]
       42 CALL                             R5 3 0
       43 GETUPVAL                         R5 4
       44 LOADK                            R7 K10 ["clickContextMenuItem"]
       45 NAMECALL                         R5 R5 K11 ["report"]
       47 CALL                             R5 2 0
       48 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["rbxassetid://"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K1 ["id"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K3 ["clickContextMenuItem"]
       11 NAMECALL                         R0 R0 K4 ["report"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R8 K0 ["Insert"]
        1 LOADK                            R11 K1 ["ContextMenu"]
        2 LOADK                            R12 K0 ["Insert"]
        3 NAMECALL                         R9 R3 K2 ["getText"]
        5 CALL                             R9 3 -1
        6 NAMECALL                         R6 R2 K3 ["AddNewAction"]
        8 CALL                             R6 -1 1
        9 GETTABLEKS                       R5 R6 K4 ["Triggered"]
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R5 R5 K5 ["connect"]
       19 CALL                             R5 2 0
       20 LOADK                            R8 K6 ["CopyIdToClipboard"]
       21 LOADK                            R11 K1 ["ContextMenu"]
       22 LOADK                            R12 K6 ["CopyIdToClipboard"]
       23 NAMECALL                         R9 R3 K2 ["getText"]
       25 CALL                             R9 3 -1
       26 NAMECALL                         R6 R2 K3 ["AddNewAction"]
       28 CALL                             R6 -1 1
       29 GETTABLEKS                       R5 R6 K4 ["Triggered"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 NAMECALL                         R5 R5 K5 ["connect"]
       37 CALL                             R5 2 0
       38 NAMECALL                         R5 R2 K7 ["ShowAsync"]
       40 CALL                             R5 1 0
       41 NAMECALL                         R5 R2 K8 ["Destroy"]
       43 CALL                             R5 1 0
       44 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getState"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R2 R0 K1 ["AssetManagerReducer"]
        6 GETTABLEKS                       R1 R2 K2 ["recentAssets"]
        8 GETTABLEKS                       R3 R0 K1 ["AssetManagerReducer"]
       10 GETTABLEKS                       R2 R3 K3 ["selectedAssets"]
       12 NEWTABLE                         R3 0 0
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 0
       18 CALL                             R5 1 2
       19 MOVE                             R3 R5
       20 MOVE                             R4 R6
       21 GETIMPORT                        R5 K5 [next]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 1
       25 JUMPIFEQKNIL                     R5 ; [+7]
       27 GETUPVAL                         R5 2
       28 MOVE                             R7 R3
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R5 K6 ["InsertMeshesWithLocation"]
       32 CALL                             R5 3 0
       33 GETUPVAL                         R5 2
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R7 R8 K7 ["id"]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R8 R9 K8 ["name"]
       40 NAMECALL                         R5 R5 K9 ["InsertVideo"]
       42 CALL                             R5 3 0
       43 GETUPVAL                         R5 4
       44 LOADK                            R7 K10 ["clickContextMenuItem"]
       45 NAMECALL                         R5 R5 K11 ["report"]
       47 CALL                             R5 2 0
       48 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["rbxassetid://"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K1 ["id"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K3 ["clickContextMenuItem"]
       11 NAMECALL                         R0 R0 K4 ["report"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R8 K0 ["Insert"]
        1 LOADK                            R11 K1 ["ContextMenu"]
        2 LOADK                            R12 K0 ["Insert"]
        3 NAMECALL                         R9 R3 K2 ["getText"]
        5 CALL                             R9 3 -1
        6 NAMECALL                         R6 R2 K3 ["AddNewAction"]
        8 CALL                             R6 -1 1
        9 GETTABLEKS                       R5 R6 K4 ["Triggered"]
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R5 R5 K5 ["connect"]
       19 CALL                             R5 2 0
       20 LOADK                            R8 K6 ["CopyIdToClipboard"]
       21 LOADK                            R11 K1 ["ContextMenu"]
       22 LOADK                            R12 K6 ["CopyIdToClipboard"]
       23 NAMECALL                         R9 R3 K2 ["getText"]
       25 CALL                             R9 3 -1
       26 NAMECALL                         R6 R2 K3 ["AddNewAction"]
       28 CALL                             R6 -1 1
       29 GETTABLEKS                       R5 R6 K4 ["Triggered"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 NAMECALL                         R5 R5 K5 ["connect"]
       37 CALL                             R5 2 0
       38 NAMECALL                         R5 R2 K7 ["ShowAsync"]
       40 CALL                             R5 1 0
       41 NAMECALL                         R5 R2 K8 ["Destroy"]
       43 CALL                             R5 1 0
       44 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 2
        7 MOVE                             R0 R2
        8 MOVE                             R1 R3
        9 GETIMPORT                        R2 K1 [next]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 JUMPIFEQKNIL                     R2 ; [+7]
       15 GETUPVAL                         R2 2
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K2 ["InsertMeshesWithLocation"]
       20 CALL                             R2 3 0
       21 GETUPVAL                         R2 3
       22 LOADK                            R4 K3 ["clickContextMenuItem"]
       23 NAMECALL                         R2 R2 K4 ["report"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 2
        7 MOVE                             R0 R2
        8 MOVE                             R1 R3
        9 GETIMPORT                        R2 K1 [next]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 JUMPIFEQKNIL                     R2 ; [+7]
       15 GETUPVAL                         R2 2
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K2 ["InsertMeshesWithLocation"]
       20 CALL                             R2 3 0
       21 GETUPVAL                         R2 3
       22 LOADK                            R4 K3 ["clickContextMenuItem"]
       23 NAMECALL                         R2 R2 K4 ["report"]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R3 R4 K5 ["AssetManagerReducer"]
       29 GETTABLEKS                       R2 R3 K6 ["searchTerm"]
       31 GETIMPORT                        R3 K9 [utf8.len]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 1
       35 JUMPIFEQKN                       R3 K10 [0] ; [+6]
       37 GETUPVAL                         R3 3
       38 LOADK                            R5 K11 ["insertAfterSearch"]
       39 NAMECALL                         R3 R3 K4 ["report"]
       41 CALL                             R3 2 0
       42 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CopyToClipboard"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K1 ["clickContextMenuItem"]
        7 NAMECALL                         R0 R0 K2 ["report"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CopyToClipboard"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K1 ["clickContextMenuItem"]
        7 NAMECALL                         R0 R0 K2 ["report"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R6 R5 K0 ["getState"]
        2 CALL                             R6 1 1
        3 GETTABLEKS                       R8 R6 K1 ["AssetManagerReducer"]
        5 GETTABLEKS                       R7 R8 K2 ["recentAssets"]
        7 GETTABLEKS                       R9 R6 K1 ["AssetManagerReducer"]
        9 GETTABLEKS                       R8 R9 K3 ["selectedAssets"]
       11 LOADK                            R12 K4 ["Insert"]
       12 LOADK                            R15 K5 ["ContextMenu"]
       13 LOADK                            R16 K4 ["Insert"]
       14 NAMECALL                         R13 R4 K6 ["getText"]
       16 CALL                             R13 3 -1
       17 NAMECALL                         R10 R3 K7 ["AddNewAction"]
       19 CALL                             R10 -1 1
       20 GETTABLEKS                       R9 R10 K8 ["Triggered"]
       22 NEWCLOSURE                       R11 P0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R9 R9 K9 ["connect"]
       29 CALL                             R9 2 0
       30 LOADK                            R12 K10 ["InsertWithLocation"]
       31 LOADK                            R15 K5 ["ContextMenu"]
       32 LOADK                            R16 K10 ["InsertWithLocation"]
       33 NAMECALL                         R13 R4 K6 ["getText"]
       35 CALL                             R13 3 -1
       36 NAMECALL                         R10 R3 K7 ["AddNewAction"]
       38 CALL                             R10 -1 1
       39 GETTABLEKS                       R9 R10 K8 ["Triggered"]
       41 NEWCLOSURE                       R11 P1
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R5
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R6
       47 NAMECALL                         R9 R9 K9 ["connect"]
       49 CALL                             R9 2 0
       50 GETIMPORT                        R9 K12 [pcall]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R10 R11 K13 ["GetMeshIdFromAliasName"]
       55 GETUPVAL                         R11 1
       56 LOADK                            R13 K14 ["Meshes/"]
       57 GETTABLEKS                       R14 R2 K15 ["name"]
       59 CONCAT                           R12 R13 R14
       60 CALL                             R9 3 2
       61 GETIMPORT                        R11 K12 [pcall]
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R12 R13 K16 ["GetTextureIdFromAliasName"]
       66 GETUPVAL                         R13 1
       67 LOADK                            R15 K14 ["Meshes/"]
       68 GETTABLEKS                       R16 R2 K15 ["name"]
       70 CONCAT                           R14 R15 R16
       71 CALL                             R11 3 2
       72 JUMPIFNOT                        R9 ; [+19]
       73 LOADK                            R16 K17 ["CopyMeshIdToClipboard"]
       74 LOADK                            R19 K5 ["ContextMenu"]
       75 LOADK                            R20 K17 ["CopyMeshIdToClipboard"]
       76 NAMECALL                         R17 R4 K6 ["getText"]
       78 CALL                             R17 3 -1
       79 NAMECALL                         R14 R3 K7 ["AddNewAction"]
       81 CALL                             R14 -1 1
       82 GETTABLEKS                       R13 R14 K8 ["Triggered"]
       84 NEWCLOSURE                       R15 P2
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R0
       88 NAMECALL                         R13 R13 K9 ["connect"]
       90 CALL                             R13 2 0
       91 JUMP                             ; [+7]
       92 GETIMPORT                        R13 K19 [warn]
       94 LOADK                            R15 K20 ["Failed to get mesh id for asset id "]
       95 GETTABLEKS                       R16 R2 K21 ["id"]
       97 CONCAT                           R14 R15 R16
       98 CALL                             R13 1 0
       99 JUMPIFNOT                        R11 ; [+18]
      100 LOADK                            R16 K22 ["CopyTextureIdToClipboard"]
      101 LOADK                            R19 K5 ["ContextMenu"]
      102 LOADK                            R20 K22 ["CopyTextureIdToClipboard"]
      103 NAMECALL                         R17 R4 K6 ["getText"]
      105 CALL                             R17 3 -1
      106 NAMECALL                         R14 R3 K7 ["AddNewAction"]
      108 CALL                             R14 -1 1
      109 GETTABLEKS                       R13 R14 K8 ["Triggered"]
      111 NEWCLOSURE                       R15 P3
      112 CAPTURE                          UPVAL U2
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R0
      115 NAMECALL                         R13 R13 K9 ["connect"]
      117 CALL                             R13 2 0
      118 NAMECALL                         R13 R3 K23 ["ShowAsync"]
      120 CALL                             R13 1 0
      121 NAMECALL                         R13 R3 K24 ["Destroy"]
      123 CALL                             R13 1 0
      124 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getState"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R2 R0 K1 ["AssetManagerReducer"]
        6 GETTABLEKS                       R1 R2 K2 ["recentAssets"]
        8 GETTABLEKS                       R3 R0 K1 ["AssetManagerReducer"]
       10 GETTABLEKS                       R2 R3 K3 ["selectedAssets"]
       12 NEWTABLE                         R3 0 0
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 0
       18 CALL                             R5 1 2
       19 MOVE                             R3 R5
       20 MOVE                             R4 R6
       21 GETIMPORT                        R5 K5 [next]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 1
       25 JUMPIFEQKNIL                     R5 ; [+7]
       27 GETUPVAL                         R5 2
       28 MOVE                             R7 R3
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R5 K6 ["InsertMeshesWithLocation"]
       32 CALL                             R5 3 0
       33 GETUPVAL                         R5 2
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R7 R8 K7 ["id"]
       37 NAMECALL                         R5 R5 K8 ["InsertModel"]
       39 CALL                             R5 2 0
       40 GETUPVAL                         R5 4
       41 LOADK                            R7 K9 ["clickContextMenuItem"]
       42 NAMECALL                         R5 R5 K10 ["report"]
       44 CALL                             R5 2 0
       45 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["rbxassetid://"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K1 ["id"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K3 ["clickContextMenuItem"]
       11 NAMECALL                         R0 R0 K4 ["report"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R6 R5 K0 ["getState"]
        2 CALL                             R6 1 1
        3 LOADK                            R10 K1 ["Insert"]
        4 LOADK                            R13 K2 ["ContextMenu"]
        5 LOADK                            R14 K1 ["Insert"]
        6 NAMECALL                         R11 R4 K3 ["getText"]
        8 CALL                             R11 3 -1
        9 NAMECALL                         R8 R3 K4 ["AddNewAction"]
       11 CALL                             R8 -1 1
       12 GETTABLEKS                       R7 R8 K5 ["Triggered"]
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          VAL R5
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R7 R7 K6 ["connect"]
       22 CALL                             R7 2 0
       23 LOADK                            R10 K7 ["CopyIdToClipboard"]
       24 LOADK                            R13 K2 ["ContextMenu"]
       25 LOADK                            R14 K7 ["CopyIdToClipboard"]
       26 NAMECALL                         R11 R4 K3 ["getText"]
       28 CALL                             R11 3 -1
       29 NAMECALL                         R8 R3 K4 ["AddNewAction"]
       31 CALL                             R8 -1 1
       32 GETTABLEKS                       R7 R8 K5 ["Triggered"]
       34 NEWCLOSURE                       R9 P1
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 NAMECALL                         R7 R7 K6 ["connect"]
       40 CALL                             R7 2 0
       41 NAMECALL                         R7 R3 K8 ["ShowAsync"]
       43 CALL                             R7 1 0
       44 NAMECALL                         R7 R3 K9 ["Destroy"]
       46 CALL                             R7 1 0
       47 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R6 R2 K0 ["assetType"]
        2 GETIMPORT                        R7 K4 [Enum.AssetType.Image]
        4 JUMPIFNOTEQ                      R6 R7 ; [+10]
        6 GETUPVAL                         R7 0
        7 MOVE                             R8 R0
        8 MOVE                             R9 R1
        9 MOVE                             R10 R2
       10 MOVE                             R11 R3
       11 MOVE                             R12 R4
       12 MOVE                             R13 R5
       13 CALL                             R7 6 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R7 K6 [Enum.AssetType.MeshPart]
       17 JUMPIFNOTEQ                      R6 R7 ; [+10]
       19 GETUPVAL                         R7 1
       20 MOVE                             R8 R0
       21 MOVE                             R9 R1
       22 MOVE                             R10 R2
       23 MOVE                             R11 R3
       24 MOVE                             R12 R4
       25 MOVE                             R13 R5
       26 CALL                             R7 6 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R7 2
       29 CALL                             R7 0 1
       30 JUMPIFNOT                        R7 ; [+12]
       31 GETIMPORT                        R7 K8 [Enum.AssetType.Audio]
       33 JUMPIFNOTEQ                      R6 R7 ; [+9]
       35 GETUPVAL                         R7 3
       36 MOVE                             R8 R0
       37 MOVE                             R9 R2
       38 MOVE                             R10 R3
       39 MOVE                             R11 R4
       40 MOVE                             R12 R5
       41 CALL                             R7 5 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R7 4
       44 CALL                             R7 0 1
       45 JUMPIFNOT                        R7 ; [+12]
       46 GETIMPORT                        R7 K10 [Enum.AssetType.Video]
       48 JUMPIFNOTEQ                      R6 R7 ; [+9]
       50 GETUPVAL                         R7 5
       51 MOVE                             R8 R0
       52 MOVE                             R9 R2
       53 MOVE                             R10 R3
       54 MOVE                             R11 R4
       55 MOVE                             R12 R5
       56 CALL                             R7 5 0
       57 RETURN                           R0 0
       58 GETIMPORT                        R7 K12 [Enum.AssetType.Model]
       60 JUMPIFNOTEQ                      R6 R7 ; [+9]
       62 GETUPVAL                         R7 6
       63 MOVE                             R8 R0
       64 MOVE                             R9 R1
       65 MOVE                             R10 R2
       66 MOVE                             R11 R3
       67 MOVE                             R12 R4
       68 MOVE                             R13 R5
       69 CALL                             R7 6 0
       70 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Analytics"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["API"]
        6 NAMECALL                         R2 R2 K2 ["get"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["AssetData"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["Localization"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K5 ["Plugin"]
       18 NAMECALL                         R5 R5 K2 ["get"]
       20 CALL                             R5 1 1
       21 LOADK                            R8 K6 ["AssetManagerContextMenu"]
       22 NAMECALL                         R6 R5 K7 ["CreatePluginMenu"]
       24 CALL                             R6 2 1
       25 GETUPVAL                         R7 1
       26 MOVE                             R8 R1
       27 MOVE                             R9 R2
       28 MOVE                             R10 R3
       29 MOVE                             R11 R6
       30 MOVE                             R12 R4
       31 MOVE                             R13 R0
       32 CALL                             R7 6 0
       33 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R5 R0 K5 ["Src"]
       13 GETTABLEKS                       R4 R5 K6 ["Util"]
       15 GETTABLEKS                       R3 R4 K7 ["AssetManagerUtilities"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R1 R2 K8 ["enableAudioImport"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["Src"]
       24 GETTABLEKS                       R5 R6 K6 ["Util"]
       26 GETTABLEKS                       R4 R5 K7 ["AssetManagerUtilities"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R2 R3 K9 ["enableVideoImport"]
       31 GETIMPORT                        R3 K11 [game]
       33 LOADK                            R5 K12 ["AssetManagerService"]
       34 NAMECALL                         R3 R3 K13 ["GetService"]
       36 CALL                             R3 2 1
       37 GETIMPORT                        R4 K11 [game]
       39 LOADK                            R6 K14 ["StudioService"]
       40 NAMECALL                         R4 R4 K13 ["GetService"]
       42 CALL                             R4 2 1
       43 DUPCLOSURE                       R5 K15 [PROTO_0]
       44 DUPCLOSURE                       R6 K16 [PROTO_3]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 DUPCLOSURE                       R7 K17 [PROTO_6]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 DUPCLOSURE                       R8 K18 [PROTO_9]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 DUPCLOSURE                       R9 K19 [PROTO_14]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 DUPCLOSURE                       R10 K20 [PROTO_17]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 DUPCLOSURE                       R11 K21 [PROTO_18]
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R10
       72 DUPCLOSURE                       R12 K22 [PROTO_20]
       73 CAPTURE                          VAL R11
       74 RETURN                           R12 1
