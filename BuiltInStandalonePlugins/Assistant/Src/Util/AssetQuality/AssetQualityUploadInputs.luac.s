PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R8 R5 K0 ["assetType"]
        8 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K3 [table.insert]
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 2 ; [-9]
       16 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["model"]
        6 NAMECALL                         R5 R5 K1 ["Destroy"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-6]
       11 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"inputs", "getAssetTypes", "destroy"}]
        1 SETTABLEKS                       R0 R1 K0 ["inputs"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R1 K1 ["getAssetTypes"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R1 K2 ["destroy"]
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETUPVAL                         R7 2
        6 GETTABLEKS                       R7 R7 K0 ["createSingleAssetInput"]
        8 GETTABLEKS                       R8 R4 K1 ["instance"]
       10 GETTABLEKS                       R9 R4 K2 ["assetType"]
       12 CALL                             R7 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R5 K5 [table.insert]
       16 CALL                             R5 -1 0
       17 FORGLOOP                         R0 2 ; [-14]
       19 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R2 K1 [pcall]
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+11]
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R1
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R4 R4 K2 ["destroy"]
       16 CALL                             R4 0 0
       17 GETIMPORT                        R4 K4 [error]
       19 MOVE                             R5 R3
       20 LOADN                            R6 0
       21 CALL                             R4 2 0
       22 GETUPVAL                         R4 1
       23 MOVE                             R5 R1
       24 CALL                             R4 1 1
       25 RETURN                           R4 1

PROTO_5:
        0 NEWTABLE                         R2 0 2
        2 GETTABLEKS                       R3 R1 K0 ["Name"]
        4 GETIMPORT                        R4 K3 [string.gsub]
        6 GETTABLEKS                       R5 R1 K0 ["Name"]
        8 LOADK                            R6 K4 ["Animation$"]
        9 LOADK                            R7 K5 [""]
       10 CALL                             R4 3 1
       11 SETLIST                          R2 R3 2 [1]
       13 MOVE                             R3 R2
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 MOVE                             R10 R7
       18 NAMECALL                         R8 R0 K6 ["FindFirstChild"]
       20 CALL                             R8 2 1
       21 JUMPIFEQKNIL                     R8 ; [+6]
       23 LOADK                            R11 K7 ["R15Anim"]
       24 NAMECALL                         R9 R8 K6 ["FindFirstChild"]
       26 CALL                             R9 2 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R9
       29 JUMPIFEQKNIL                     R9 ; [+2]
       31 RETURN                           R9 1
       32 FORGLOOP                         R3 2 ; [-16]
       34 GETIMPORT                        R3 K10 [table.find]
       36 MOVE                             R4 R2
       37 GETTABLEKS                       R5 R0 K0 ["Name"]
       39 CALL                             R3 2 1
       40 JUMPIFNOT                        R3 ; [+5]
       41 LOADK                            R5 K7 ["R15Anim"]
       42 NAMECALL                         R3 R0 K6 ["FindFirstChild"]
       44 CALL                             R3 2 -1
       45 RETURN                           R3 -1
       46 LOADNIL                          R3
       47 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 JUMPIFEQKS                       R2 K1 ["R15Anim"] ; [+7]
        4 GETIMPORT                        R2 K4 [table.find]
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 1
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 CALL                             R3 2 1
       15 OR                               R2 R3 R0
       16 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["AvatarAnimations"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R3 R2 K1 ["allowedAssetTypeSettings"]
        5 JUMPIF                           R3 ; [+5]
        6 NEWTABLE                         R3 0 0
        8 JUMP                             ; [+2]
        9 NEWTABLE                         R3 0 0
       11 NEWTABLE                         R4 0 0
       13 LOADK                            R7 K2 ["Model"]
       14 NAMECALL                         R5 R0 K3 ["IsA"]
       16 CALL                             R5 2 1
       17 JUMPIFNOT                        R5 ; [+28]
       18 GETUPVAL                         R5 0
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETUPVAL                         R10 1
       23 MOVE                             R11 R0
       24 MOVE                             R12 R9
       25 CALL                             R10 2 1
       26 JUMPIFEQKNIL                     R10 ; [+17]
       28 GETTABLEKS                       R12 R9 K4 ["Name"]
       30 GETTABLE                         R11 R3 R12
       31 JUMPIFEQKNIL                     R11 ; [+12]
       33 DUPTABLE                         R13 K7 [{"instance", "assetType"}]
       34 SETTABLEKS                       R10 R13 K5 ["instance"]
       36 SETTABLEKS                       R9 R13 K6 ["assetType"]
       38 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       40 MOVE                             R12 R4
       41 GETIMPORT                        R11 K10 [table.insert]
       43 CALL                             R11 2 0
       44 FORGLOOP                         R5 2 ; [-23]
       46 LENGTH                           R5 R4
       47 JUMPIFNOTEQKN                    R5 K11 [0] ; [+6]
       49 GETIMPORT                        R5 K13 [error]
       51 LOADK                            R6 K14 ["No animation bundle parts resolved for validation"]
       52 LOADN                            R7 0
       53 CALL                             R5 2 0
       54 RETURN                           R4 1

PROTO_8:
        0 LOADK                            R3 K0 ["LeftShoeAccessory"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["RightShoeAccessory"]
        5 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R1 ; [+1]
        9 JUMPIF                           R2 ; [+5]
       10 GETIMPORT                        R3 K4 [error]
       12 LOADK                            R4 K5 ["Expected LeftShoeAccessory and RightShoeAccessory for shoe validation"]
       13 LOADN                            R5 0
       14 CALL                             R3 2 0
       15 NEWTABLE                         R3 0 2
       17 DUPTABLE                         R4 K8 [{"instance", "assetType"}]
       18 SETTABLEKS                       R1 R4 K6 ["instance"]
       20 GETIMPORT                        R5 K11 [Enum.AssetType.LeftShoeAccessory]
       22 SETTABLEKS                       R5 R4 K7 ["assetType"]
       24 DUPTABLE                         R5 K8 [{"instance", "assetType"}]
       25 SETTABLEKS                       R2 R5 K6 ["instance"]
       27 GETIMPORT                        R6 K12 [Enum.AssetType.RightShoeAccessory]
       29 SETTABLEKS                       R6 R5 K7 ["assetType"]
       31 SETLIST                          R3 R4 2 [1]
       33 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R3 R1 K0 ["inputLayout"]
        2 JUMPIFNOTEQKS                    R3 K1 ["BodyBundle"] ; [+33]
        4 GETTABLEKS                       R3 R1 K2 ["bundleMetadataName"]
        6 FASTCALL2K                       ASSERT R3 K3 ; [+5]
        8 MOVE                             R5 R3
        9 LOADK                            R6 K3 ["BodyBundle layout without a bundle metadata name"]
       10 GETIMPORT                        R4 K5 [assert]
       12 CALL                             R4 2 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["createBodyInputs"]
       16 MOVE                             R5 R0
       17 MOVE                             R6 R2
       18 MOVE                             R7 R3
       19 CALL                             R4 3 1
       20 LENGTH                           R5 R4
       21 JUMPIFNOTEQKN                    R5 K7 [0] ; [+10]
       23 GETIMPORT                        R5 K9 [error]
       25 LOADK                            R6 K10 ["No %* bundle parts resolved for validation"]
       26 MOVE                             R8 R3
       27 NAMECALL                         R6 R6 K11 ["format"]
       29 CALL                             R6 2 1
       30 LOADN                            R7 0
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 1
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 RETURN                           R5 1
       36 GETTABLEKS                       R3 R1 K0 ["inputLayout"]
       38 JUMPIFEQKS                       R3 K12 ["SingleAsset"] ; [+11]
       40 GETIMPORT                        R3 K9 [error]
       42 LOADK                            R4 K13 ["%* inputs are built per part, not from the uploaded instance"]
       43 GETTABLEKS                       R6 R1 K0 ["inputLayout"]
       45 NAMECALL                         R4 R4 K11 ["format"]
       47 CALL                             R4 2 1
       48 LOADN                            R5 0
       49 CALL                             R3 2 0
       50 GETTABLEKS                       R3 R1 K14 ["singleAssetType"]
       52 FASTCALL2K                       ASSERT R3 K15 ; [+5]
       54 MOVE                             R5 R3
       55 LOADK                            R6 K15 ["SingleAsset layout without an asset type"]
       56 GETIMPORT                        R4 K5 [assert]
       58 CALL                             R4 2 0
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K16 ["createPartInputs"]
       62 NEWTABLE                         R5 0 1
       64 DUPTABLE                         R6 K19 [{"instance", "assetType"}]
       65 GETTABLEKS                       R8 R0 K20 ["Name"]
       67 JUMPIFEQKS                       R8 K21 ["R15Anim"] ; [+7]
       69 GETIMPORT                        R8 K24 [table.find]
       71 GETUPVAL                         R9 3
       72 MOVE                             R10 R3
       73 CALL                             R8 2 1
       74 JUMPIF                           R8 ; [+2]
       75 MOVE                             R7 R0
       76 JUMP                             ; [+5]
       77 GETUPVAL                         R8 4
       78 MOVE                             R9 R0
       79 MOVE                             R10 R3
       80 CALL                             R8 2 1
       81 OR                               R7 R8 R0
       82 SETTABLEKS                       R7 R6 K17 ["instance"]
       84 SETTABLEKS                       R3 R6 K18 ["assetType"]
       86 SETLIST                          R5 R6 1 [1]
       88 CALL                             R4 1 -1
       89 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["UGCValidation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["AssetQuality"]
       22 GETTABLEKS                       R3 R3 K11 ["AssetQualityUploadTypes"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K12 ["AssetQualityValidationClient"]
       27 NEWTABLE                         R4 4 0
       29 NEWTABLE                         R5 0 7
       31 GETIMPORT                        R6 K16 [Enum.AssetType.ClimbAnimation]
       33 GETIMPORT                        R7 K18 [Enum.AssetType.FallAnimation]
       35 GETIMPORT                        R8 K20 [Enum.AssetType.IdleAnimation]
       37 GETIMPORT                        R9 K22 [Enum.AssetType.JumpAnimation]
       39 GETIMPORT                        R10 K24 [Enum.AssetType.RunAnimation]
       41 GETIMPORT                        R11 K26 [Enum.AssetType.SwimAnimation]
       43 GETIMPORT                        R12 K28 [Enum.AssetType.WalkAnimation]
       45 SETLIST                          R5 R6 7 [1]
       47 DUPCLOSURE                       R6 K29 [PROTO_2]
       48 DUPCLOSURE                       R7 K30 [PROTO_4]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R7 R4 K31 ["createPartInputs"]
       53 DUPCLOSURE                       R7 K32 [PROTO_5]
       54 DUPCLOSURE                       R8 K33 [PROTO_6]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R7
       57 DUPCLOSURE                       R9 K34 [PROTO_7]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R9 R4 K35 ["findAnimationParts"]
       62 DUPCLOSURE                       R9 K36 [PROTO_8]
       63 SETTABLEKS                       R9 R4 K37 ["findShoeParts"]
       65 DUPCLOSURE                       R9 K38 [PROTO_9]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R7
       71 SETTABLEKS                       R9 R4 K39 ["createUploadInputs"]
       73 RETURN                           R4 1
