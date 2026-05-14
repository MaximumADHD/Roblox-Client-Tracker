PROTO_0:
        0 DUPTABLE                         R2 K9 [{"_changeHistoryService", "_insertService", "_selection", "_assetManagerService", "_materialService", "_studioService", "_marketplaceService", "_loadedFiles", "_mock"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K10 ["new"]
        4 LOADK                            R4 K11 ["ChangeHistoryService"]
        5 MOVE                             R5 R0
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K0 ["_changeHistoryService"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K10 ["new"]
       12 LOADK                            R4 K12 ["InsertService"]
       13 MOVE                             R5 R0
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K1 ["_insertService"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K10 ["new"]
       20 LOADK                            R4 K13 ["Selection"]
       21 MOVE                             R5 R0
       22 CALL                             R3 2 1
       23 SETTABLEKS                       R3 R2 K2 ["_selection"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K10 ["new"]
       28 LOADK                            R4 K14 ["AssetManagerService"]
       29 MOVE                             R5 R0
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K3 ["_assetManagerService"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K10 ["new"]
       36 LOADK                            R4 K15 ["MaterialService"]
       37 MOVE                             R5 R0
       38 CALL                             R3 2 1
       39 SETTABLEKS                       R3 R2 K4 ["_materialService"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K10 ["new"]
       44 LOADK                            R4 K16 ["StudioService"]
       45 MOVE                             R5 R0
       46 CALL                             R3 2 1
       47 SETTABLEKS                       R3 R2 K5 ["_studioService"]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K10 ["new"]
       52 LOADK                            R4 K17 ["MarketplaceService"]
       53 MOVE                             R5 R0
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R2 K6 ["_marketplaceService"]
       57 NEWTABLE                         R3 0 0
       59 SETTABLEKS                       R3 R2 K7 ["_loadedFiles"]
       61 SETTABLEKS                       R0 R2 K8 ["_mock"]
       63 GETUPVAL                         R3 1
       64 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       66 GETIMPORT                        R1 K19 [setmetatable]
       68 CALL                             R1 2 1
       69 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_changeHistoryService"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["_insertService"]
        7 NAMECALL                         R1 R1 K1 ["destroy"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["_assetManagerService"]
       12 NAMECALL                         R1 R1 K1 ["destroy"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R2
        1 SETTABLEKS                       R2 R1 K0 ["Parent"]
        3 GETTABLEKS                       R2 R0 K1 ["_changeHistoryService"]
        5 NAMECALL                         R2 R2 K2 ["asService"]
        7 CALL                             R2 1 1
        8 LOADK                            R5 K3 ["Deleted "]
        9 GETTABLEKS                       R6 R1 K4 ["Name"]
       11 CONCAT                           R4 R5 R6
       12 NAMECALL                         R2 R2 K5 ["SetWaypoint"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_mock"]
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETIMPORT                        R2 K3 [Instance.new]
        5 LOADK                            R3 K4 ["Model"]
        6 CALL                             R2 1 1
        7 GETIMPORT                        R3 K3 [Instance.new]
        9 LOADK                            R4 K5 ["MeshPart"]
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R2 R3 K6 ["Parent"]
       13 RETURN                           R2 1
       14 GETTABLEKS                       R3 R0 K7 ["_loadedFiles"]
       16 GETTABLE                         R2 R3 R1
       17 JUMPIF                           R2 ; [+12]
       18 GETTABLEKS                       R2 R0 K7 ["_loadedFiles"]
       20 GETTABLEKS                       R3 R0 K8 ["_insertService"]
       22 NAMECALL                         R3 R3 K9 ["asService"]
       24 CALL                             R3 1 1
       25 MOVE                             R5 R1
       26 NAMECALL                         R3 R3 K10 ["LoadLocalAsset"]
       28 CALL                             R3 2 1
       29 SETTABLE                         R3 R2 R1
       30 GETTABLEKS                       R3 R0 K7 ["_loadedFiles"]
       32 GETTABLE                         R2 R3 R1
       33 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_selection"]
        2 NAMECALL                         R2 R2 K1 ["asService"]
        4 CALL                             R2 1 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K2 ["Set"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 MOVE                             R7 R3
        4 CALL                             R4 3 0
        5 GETTABLEKS                       R4 R0 K0 ["_changeHistoryService"]
        7 NAMECALL                         R4 R4 K1 ["asService"]
        9 CALL                             R4 1 1
       10 LOADK                            R6 K2 ["Applied Material to BasePart"]
       11 NAMECALL                         R4 R4 K3 ["SetWaypoint"]
       13 CALL                             R4 2 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_selection"]
        2 NAMECALL                         R3 R3 K1 ["asService"]
        4 CALL                             R3 1 1
        5 NAMECALL                         R3 R3 K2 ["Get"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R3
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 CALL                             R4 3 0
       13 GETTABLEKS                       R4 R0 K3 ["_changeHistoryService"]
       15 NAMECALL                         R4 R4 K1 ["asService"]
       17 CALL                             R4 1 1
       18 LOADK                            R6 K4 ["Applied Material to Selection"]
       19 NAMECALL                         R4 R4 K5 ["SetWaypoint"]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0

PROTO_8:
        0 SETTABLEKS                       R2 R1 K0 ["Name"]
        2 GETTABLEKS                       R3 R0 K1 ["_changeHistoryService"]
        4 NAMECALL                         R3 R3 K2 ["asService"]
        6 CALL                             R3 1 1
        7 LOADK                            R6 K3 ["Set Name for Material Variant to"]
        8 MOVE                             R7 R2
        9 CONCAT                           R5 R6 R7
       10 NAMECALL                         R3 R3 K4 ["SetWaypoint"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 SETTABLEKS                       R2 R1 K0 ["BaseMaterial"]
        2 GETTABLEKS                       R3 R0 K1 ["_changeHistoryService"]
        4 NAMECALL                         R3 R3 K2 ["asService"]
        6 CALL                             R3 1 1
        7 LOADK                            R6 K3 ["Set BaseMaterial for Material Variant to"]
        8 GETUPVAL                         R7 0
        9 MOVE                             R8 R2
       10 CALL                             R7 1 1
       11 CONCAT                           R5 R6 R7
       12 NAMECALL                         R3 R3 K4 ["SetWaypoint"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+13]
        3 GETTABLE                         R5 R1 R2
        4 FASTCALL1                        TYPEOF R5 ; [+2]
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["Content"] ; [+7]
       10 GETIMPORT                        R4 K4 [Content.fromUri]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 SETTABLE                         R4 R1 R2
       15 JUMP                             ; [+1]
       16 SETTABLE                         R3 R1 R2
       17 GETTABLEKS                       R4 R0 K5 ["_changeHistoryService"]
       19 NAMECALL                         R4 R4 K6 ["asService"]
       21 CALL                             R4 1 1
       22 LOADK                            R7 K7 ["Set"]
       23 MOVE                             R8 R2
       24 LOADK                            R9 K8 ["for Material Variant to"]
       25 MOVE                             R10 R3
       26 CONCAT                           R6 R7 R10
       27 NAMECALL                         R4 R4 K9 ["SetWaypoint"]
       29 CALL                             R4 2 0
       30 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["_studioService"]
        3 NAMECALL                         R0 R0 K1 ["asService"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R0 R0 K2 ["PromptImportFile"]
        9 CALL                             R0 2 1
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R1 0 3
        2 LOADK                            R2 K0 ["png"]
        3 LOADK                            R3 K1 ["jpg"]
        4 LOADK                            R4 K2 ["jpeg"]
        5 SETLIST                          R1 R2 3 [1]
        7 LOADNIL                          R2
        8 GETIMPORT                        R3 K4 [pcall]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          REF R2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R3 1 2
       15 MOVE                             R5 R3
       16 MOVE                             R6 R2
       17 CLOSEUPVALS                      R2
       18 RETURN                           R5 2

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_assetManagerService"]
        3 NAMECALL                         R0 R0 K1 ["asService"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K2 ["DeleteAlias"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_assetManagerService"]
        3 NAMECALL                         R0 R0 K1 ["asService"]
        5 CALL                             R0 1 1
        6 GETIMPORT                        R2 K5 [Enum.AssetType.Image]
        8 GETTABLEKS                       R2 R2 K6 ["Value"]
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 NAMECALL                         R0 R0 K7 ["CreateAlias"]
       14 CALL                             R0 4 0
       15 RETURN                           R0 0

PROTO_15:
        0 LOADK                            R6 K0 ["://(%d+)"]
        1 NAMECALL                         R4 R1 K1 ["match"]
        3 CALL                             R4 2 -1
        4 FASTCALL                         TONUMBER ; [+2]
        5 GETIMPORT                        R3 K3 [tonumber]
        7 CALL                             R3 -1 1
        8 JUMPIFNOT                        R3 ; [+30]
        9 LOADK                            R6 K4 ["[^.]+"]
       10 NAMECALL                         R4 R2 K1 ["match"]
       12 CALL                             R4 2 1
       13 MOVE                             R2 R4
       14 LOADN                            R6 1
       15 LOADN                            R7 7
       16 NAMECALL                         R4 R2 K5 ["sub"]
       18 CALL                             R4 3 1
       19 JUMPIFEQKS                       R4 K6 ["Images/"] ; [+4]
       21 LOADK                            R4 K6 ["Images/"]
       22 MOVE                             R5 R2
       23 CONCAT                           R2 R4 R5
       24 GETIMPORT                        R4 K8 [pcall]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          REF R2
       29 CALL                             R4 1 0
       30 GETIMPORT                        R4 K8 [pcall]
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          REF R2
       36 CALL                             R4 1 1
       37 CLOSEUPVALS                      R2
       38 RETURN                           R4 1
       39 LOADB                            R4 0
       40 CLOSEUPVALS                      R2
       41 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["Name"]
        5 NAMECALL                         R1 R1 K1 ["insertAssetId"]
        7 CALL                             R1 3 1
        8 LOADNIL                          R2
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K2 ["FailedToInsertAssetManager"]
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R0
       15 LOADK                            R5 K3 ["uploadTextureMapSuccess"]
       16 MOVE                             R6 R2
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Error uploading asset, responseCode "]
        3 GETTABLEKS                       R5 R0 K3 ["responseCode"]
        5 FASTCALL1                        TOSTRING R5 ; [+2]
        6 GETIMPORT                        R4 K5 [tostring]
        8 CALL                             R4 1 1
        9 CONCAT                           R2 R3 R4
       10 CALL                             R1 1 0
       11 JUMPIFNOT                        R0 ; [+7]
       12 GETTABLEKS                       R1 R0 K3 ["responseCode"]
       14 JUMPIFNOT                        R1 ; [+4]
       15 GETTABLEKS                       R1 R0 K3 ["responseCode"]
       17 JUMPIFNOTEQKN                    R1 K6 [-1] ; [+9]
       19 GETUPVAL                         R1 0
       20 LOADK                            R2 K7 [""]
       21 LOADK                            R3 K8 ["uploadTextureMapFromFileError"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K9 ["FailedToUploadTooLarge"]
       25 CALL                             R1 3 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 0
       28 LOADK                            R2 K7 [""]
       29 LOADK                            R3 K10 ["uploadTextureMapGeneralError"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K11 ["FailedToUploadFromFileMap"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

PROTO_18:
        0 MOVE                             R9 R4
        1 MOVE                             R10 R5
        2 NAMECALL                         R7 R3 K0 ["handleAsset"]
        4 CALL                             R7 3 1
        5 NEWCLOSURE                       R9 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R4
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R6
       10 NAMECALL                         R7 R7 K1 ["andThen"]
       12 CALL                             R7 2 1
       13 NEWCLOSURE                       R9 P1
       14 CAPTURE                          VAL R6
       15 CAPTURE                          UPVAL U0
       16 NAMECALL                         R7 R7 K2 ["catch"]
       18 CALL                             R7 2 1
       19 RETURN                           R0 0

PROTO_19:
        0 MOVE                             R7 R6
        1 LOADK                            R8 K0 [""]
        2 LOADK                            R9 K1 ["importTextureMap"]
        3 LOADNIL                          R10
        4 CALL                             R7 3 0
        5 NAMECALL                         R7 R0 K2 ["importFile"]
        7 CALL                             R7 1 2
        8 JUMPIFNOT                        R7 ; [+18]
        9 JUMPIFNOT                        R8 ; [+24]
       10 NAMECALL                         R9 R8 K3 ["GetTemporaryId"]
       12 CALL                             R9 1 1
       13 MOVE                             R12 R1
       14 MOVE                             R13 R2
       15 MOVE                             R14 R3
       16 MOVE                             R15 R8
       17 MOVE                             R16 R4
       18 MOVE                             R17 R6
       19 NAMECALL                         R10 R0 K4 ["uploadTextureMap"]
       21 CALL                             R10 7 0
       22 MOVE                             R10 R5
       23 MOVE                             R11 R8
       24 MOVE                             R12 R9
       25 CALL                             R10 2 0
       26 RETURN                           R0 0
       27 MOVE                             R9 R6
       28 LOADK                            R10 K0 [""]
       29 LOADK                            R11 K5 ["importTextureMapError"]
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R12 R12 K6 ["FailedToImportMap"]
       33 CALL                             R9 3 0
       34 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["_marketplaceService"]
        3 NAMECALL                         R0 R0 K1 ["asService"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R0 R0 K2 ["GetProductInfo"]
        9 CALL                             R0 2 1
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R0 K1 [pcall]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 2
       11 GETUPVAL                         R2 0
       12 CALL                             R2 0 1
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 JUMPIFNOT                        R0 ; [+11]
       16 GETUPVAL                         R2 1
       17 JUMPIFNOT                        R2 ; [+9]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K2 ["AssetTypeId"]
       21 GETIMPORT                        R3 K6 [Enum.AssetType.Image]
       23 GETTABLEKS                       R3 R3 K7 ["Value"]
       25 JUMPIFEQ                         R2 R3 ; [+9]
       27 GETUPVAL                         R2 4
       28 LOADK                            R3 K8 [""]
       29 LOADK                            R4 K9 ["uploadFromURLTextureMapError"]
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K10 ["FailedUrl"]
       33 CALL                             R2 3 0
       34 RETURN                           R0 0
       35 LOADK                            R3 K11 ["rbxassetid://"]
       36 GETUPVAL                         R5 3
       37 FASTCALL1                        TOSTRING R5 ; [+2]
       38 GETIMPORT                        R4 K13 [tostring]
       40 CALL                             R4 1 1
       41 CONCAT                           R2 R3 R4
       42 GETUPVAL                         R3 2
       43 GETUPVAL                         R5 6
       44 GETUPVAL                         R6 7
       45 MOVE                             R7 R2
       46 NAMECALL                         R3 R3 K14 ["setTextureMap"]
       48 CALL                             R3 4 0
       49 RETURN                           R0 0

PROTO_22:
        0 MOVE                             R6 R5
        1 LOADK                            R7 K0 [""]
        2 LOADK                            R8 K1 ["uploadAssetIdTextureMap"]
        3 LOADNIL                          R9
        4 CALL                             R6 3 0
        5 GETUPVAL                         R6 0
        6 MOVE                             R7 R3
        7 CALL                             R6 1 1
        8 JUMPIF                           R6 ; [+8]
        9 MOVE                             R7 R5
       10 LOADK                            R8 K0 [""]
       11 LOADK                            R9 K2 ["uploadFromURLTextureMapError"]
       12 GETUPVAL                         R10 1
       13 GETTABLEKS                       R10 R10 K3 ["FailedUrl"]
       15 CALL                             R7 3 0
       16 RETURN                           R0 0
       17 LOADNIL                          R7
       18 GETIMPORT                        R8 K5 [spawn]
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          REF R7
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R5
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CALL                             R8 1 0
       30 CLOSEUPVALS                      R7
       31 RETURN                           R0 0

PROTO_23:
        0 SETTABLEKS                       R2 R1 K0 ["StudsPerTile"]
        2 GETTABLEKS                       R3 R0 K1 ["_changeHistoryService"]
        4 NAMECALL                         R3 R3 K2 ["asService"]
        6 CALL                             R3 1 1
        7 LOADK                            R6 K3 ["Set StudsPerTile for Material Variant to"]
        8 MOVE                             R7 R2
        9 CONCAT                           R5 R6 R7
       10 NAMECALL                         R3 R3 K4 ["SetWaypoint"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_24:
        0 SETTABLEKS                       R2 R1 K0 ["MaterialPattern"]
        2 GETTABLEKS                       R3 R0 K1 ["_changeHistoryService"]
        4 NAMECALL                         R3 R3 K2 ["asService"]
        6 CALL                             R3 1 1
        7 LOADK                            R6 K3 ["Set MaterialPattern for Material Variant to"]
        8 GETUPVAL                         R7 0
        9 MOVE                             R8 R2
       10 CALL                             R7 1 1
       11 CONCAT                           R5 R6 R7
       12 NAMECALL                         R3 R3 K4 ["SetWaypoint"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_25:
        0 SETTABLEKS                       R2 R1 K0 ["Name"]
        2 GETTABLEKS                       R3 R0 K1 ["_changeHistoryService"]
        4 NAMECALL                         R3 R3 K2 ["asService"]
        6 CALL                             R3 1 1
        7 LOADK                            R6 K3 ["Set Name for Terrain Detail to"]
        8 MOVE                             R7 R2
        9 CONCAT                           R5 R6 R7
       10 NAMECALL                         R3 R3 K4 ["SetWaypoint"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R3 R0 K0 ["_changeHistoryService"]
        2 NAMECALL                         R3 R3 K1 ["asService"]
        4 CALL                             R3 1 1
        5 LOADK                            R5 K2 ["Create new Material Variant"]
        6 NAMECALL                         R3 R3 K3 ["SetWaypoint"]
        8 CALL                             R3 2 0
        9 GETIMPORT                        R3 K6 [Instance.new]
       11 LOADK                            R4 K7 ["MaterialVariant"]
       12 CALL                             R3 1 1
       13 JUMPIFNOT                        R2 ; [+4]
       14 JUMPIFEQKS                       R2 K8 [""] ; [+3]
       16 MOVE                             R4 R2
       17 JUMP                             ; [+1]
       18 LOADK                            R4 K7 ["MaterialVariant"]
       19 MOVE                             R5 R1
       20 JUMPIF                           R5 ; [+2]
       21 GETIMPORT                        R5 K12 [Enum.Material.Plastic]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R7 R0 K13 ["_materialService"]
       26 NAMECALL                         R7 R7 K14 ["asInstance"]
       28 CALL                             R7 1 1
       29 MOVE                             R8 R5
       30 MOVE                             R9 R4
       31 CALL                             R6 3 1
       32 JUMPIFNOT                        R6 ; [+4]
       33 MOVE                             R8 R4
       34 MOVE                             R9 R6
       35 CONCAT                           R7 R8 R9
       36 JUMP                             ; [+1]
       37 MOVE                             R7 R4
       38 SETTABLEKS                       R7 R3 K15 ["Name"]
       40 SETTABLEKS                       R5 R3 K16 ["BaseMaterial"]
       42 LOADN                            R7 10
       43 SETTABLEKS                       R7 R3 K17 ["StudsPerTile"]
       45 GETIMPORT                        R7 K19 [game]
       47 LOADK                            R9 K20 ["MaterialService"]
       48 NAMECALL                         R7 R7 K21 ["GetService"]
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R3 K22 ["Parent"]
       53 RETURN                           R3 1

PROTO_27:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["TerrainDetail"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R2 R3 K4 ["Face"]
        6 LOADK                            R5 K3 ["TerrainDetail"]
        7 GETUPVAL                         R6 0
        8 MOVE                             R7 R1
        9 LOADK                            R8 K3 ["TerrainDetail"]
       10 CALL                             R6 2 1
       11 CONCAT                           R4 R5 R6
       12 SETTABLEKS                       R4 R3 K5 ["Name"]
       14 SETTABLEKS                       R1 R3 K6 ["Parent"]
       16 GETTABLEKS                       R4 R0 K7 ["_changeHistoryService"]
       18 NAMECALL                         R4 R4 K8 ["asService"]
       20 CALL                             R4 1 1
       21 LOADK                            R7 K9 ["Create new Terrain Detail to"]
       22 GETTABLEKS                       R8 R3 K5 ["Name"]
       24 CONCAT                           R6 R7 R8
       25 NAMECALL                         R4 R4 K10 ["SetWaypoint"]
       27 CALL                             R4 2 0
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Flags"]
       29 GETTABLEKS                       R4 R4 K10 ["getEFEnableEmissiveMask"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K11 ["TestHelpers"]
       34 GETTABLEKS                       R4 R4 K12 ["ServiceWrapper"]
       36 GETTABLEKS                       R5 R2 K13 ["ContextServices"]
       38 GETTABLEKS                       R5 R5 K14 ["ContextItem"]
       40 GETTABLEKS                       R6 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R6 K15 ["Util"]
       44 GETIMPORT                        R7 K4 [require]
       46 GETTABLEKS                       R8 R6 K16 ["ApplyToBasePart"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K4 [require]
       51 GETTABLEKS                       R9 R6 K17 ["ApplyToInstances"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R10 R6 K18 ["GenerateMaterialName"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K4 [require]
       61 GETTABLEKS                       R11 R6 K19 ["GenerateTerrainDetailName"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K4 [require]
       66 GETTABLEKS                       R12 R6 K20 ["getNumberIdFromURL"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R12 R0 K5 ["Src"]
       71 GETTABLEKS                       R12 R12 K21 ["Resources"]
       73 GETTABLEKS                       R12 R12 K22 ["Constants"]
       75 GETIMPORT                        R13 K4 [require]
       77 GETTABLEKS                       R14 R12 K23 ["getMaterialName"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K4 [require]
       82 GETTABLEKS                       R15 R12 K24 ["getMaterialPatternName"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K4 [require]
       87 GETTABLEKS                       R16 R12 K25 ["getErrorTypes"]
       89 CALL                             R15 1 1
       90 MOVE                             R16 R15
       91 CALL                             R16 0 1
       92 LOADK                            R19 K26 ["GeneralServiceController"]
       93 NAMECALL                         R17 R5 K27 ["extend"]
       95 CALL                             R17 2 1
       96 DUPCLOSURE                       R18 K28 [PROTO_0]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R17
       99 SETTABLEKS                       R18 R17 K29 ["new"]
      101 DUPCLOSURE                       R18 K30 [PROTO_1]
      102 CAPTURE                          VAL R17
      103 SETTABLEKS                       R18 R17 K31 ["mock"]
      105 DUPCLOSURE                       R18 K32 [PROTO_2]
      106 SETTABLEKS                       R18 R17 K33 ["destroy"]
      108 DUPCLOSURE                       R18 K34 [PROTO_3]
      109 SETTABLEKS                       R18 R17 K35 ["destroyWithUndo"]
      111 DUPCLOSURE                       R18 K36 [PROTO_4]
      112 SETTABLEKS                       R18 R17 K37 ["LoadLocalAsset"]
      114 DUPCLOSURE                       R18 K38 [PROTO_5]
      115 SETTABLEKS                       R18 R17 K39 ["SetSelection"]
      117 DUPCLOSURE                       R18 K40 [PROTO_6]
      118 CAPTURE                          VAL R7
      119 SETTABLEKS                       R18 R17 K16 ["ApplyToBasePart"]
      121 DUPCLOSURE                       R18 K41 [PROTO_7]
      122 CAPTURE                          VAL R8
      123 SETTABLEKS                       R18 R17 K42 ["ApplyToSelection"]
      125 DUPCLOSURE                       R18 K43 [PROTO_8]
      126 SETTABLEKS                       R18 R17 K44 ["setName"]
      128 DUPCLOSURE                       R18 K45 [PROTO_9]
      129 CAPTURE                          VAL R13
      130 SETTABLEKS                       R18 R17 K46 ["setBaseMaterial"]
      132 DUPCLOSURE                       R18 K47 [PROTO_10]
      133 CAPTURE                          VAL R3
      134 SETTABLEKS                       R18 R17 K48 ["setTextureMap"]
      136 DUPCLOSURE                       R18 K49 [PROTO_12]
      137 SETTABLEKS                       R18 R17 K50 ["importFile"]
      139 DUPCLOSURE                       R18 K51 [PROTO_15]
      140 SETTABLEKS                       R18 R17 K52 ["insertAssetId"]
      142 DUPCLOSURE                       R18 K53 [PROTO_18]
      143 CAPTURE                          VAL R16
      144 SETTABLEKS                       R18 R17 K54 ["uploadTextureMap"]
      146 DUPCLOSURE                       R18 K55 [PROTO_19]
      147 CAPTURE                          VAL R16
      148 SETTABLEKS                       R18 R17 K56 ["setTextureMapFromFile"]
      150 DUPCLOSURE                       R18 K57 [PROTO_22]
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R16
      153 SETTABLEKS                       R18 R17 K58 ["setTextureMapFromURL"]
      155 DUPCLOSURE                       R18 K59 [PROTO_23]
      156 SETTABLEKS                       R18 R17 K60 ["setStudsPerTile"]
      158 DUPCLOSURE                       R18 K61 [PROTO_24]
      159 CAPTURE                          VAL R14
      160 SETTABLEKS                       R18 R17 K62 ["setMaterialPattern"]
      162 DUPCLOSURE                       R18 K63 [PROTO_25]
      163 SETTABLEKS                       R18 R17 K64 ["setTerrainDetailName"]
      165 DUPCLOSURE                       R18 K65 [PROTO_26]
      166 CAPTURE                          VAL R9
      167 SETTABLEKS                       R18 R17 K66 ["createMaterialVariant"]
      169 DUPCLOSURE                       R18 K67 [PROTO_27]
      170 CAPTURE                          VAL R10
      171 SETTABLEKS                       R18 R17 K68 ["createTerrainDetail"]
      173 RETURN                           R17 1
