PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K0 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
        9 GETTABLEKS                       R10 R6 K1 ["AssetType"]
       11 GETTABLE                         R8 R9 R10
       12 LOADK                            R10 K2 ["No known accessory type for "]
       13 GETTABLEKS                       R12 R6 K1 ["AssetType"]
       15 FASTCALL1                        TOSTRING R12 ; [+2]
       16 GETIMPORT                        R11 K4 [tostring]
       18 CALL                             R11 1 1
       19 CONCAT                           R9 R10 R11
       20 FASTCALL2                        ASSERT R8 R9 ; [+3]
       22 GETIMPORT                        R7 K6 [assert]
       24 CALL                             R7 2 1
       25 DUPTABLE                         R10 K19 [{["AccessoryType"], ["AssetId"], ["Order"], ["IsLayered"] = True, ["Puffiness"] = 0, ["Position"] = {0, 0, 0}, ["Rotation"] = {0, 0, 0}, ["Scale"] = {1, 1, 1}}]
       26 SETTABLEKS                       R7 R10 K7 ["AccessoryType"]
       28 GETTABLEKS                       R11 R6 K8 ["AssetId"]
       30 SETTABLEKS                       R11 R10 K8 ["AssetId"]
       32 GETTABLEKS                       R12 R6 K9 ["Order"]
       34 ORK                              R11 R12 K13 [0]
       35 SETTABLEKS                       R11 R10 K9 ["Order"]
       37 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       39 MOVE                             R9 R1
       40 GETIMPORT                        R8 K22 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R2 2 ; [-38]
       45 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["MAKEUP_CAMERAS_ASSET_PATH"]
        4 NAMECALL                         R0 R0 K1 ["LoadLocalAsset"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_1]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+26]
        7 JUMPIFNOT                        R1 ; [+25]
        8 LOADK                            R4 K3 ["Folder"]
        9 NAMECALL                         R2 R1 K4 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+20]
       13 LOADK                            R4 K5 ["Face"]
       14 NAMECALL                         R2 R1 K6 ["FindFirstChild"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+12]
       18 LOADK                            R5 K7 ["Camera"]
       19 NAMECALL                         R3 R2 K4 ["IsA"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+7]
       23 NAMECALL                         R3 R2 K8 ["Clone"]
       25 CALL                             R3 1 1
       26 NAMECALL                         R4 R1 K9 ["Destroy"]
       28 CALL                             R4 1 0
       29 RETURN                           R3 1
       30 NAMECALL                         R3 R1 K9 ["Destroy"]
       32 CALL                             R3 1 0
       33 GETIMPORT                        R2 K11 [warn]
       35 LOADK                            R3 K12 ["[MakeupLookPreview] Failed to find Face camera in MakeupCameras.rbxm"]
       36 CALL                             R2 1 0
       37 LOADNIL                          R2
       38 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["BasePart"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+7]
        9 GETTABLEKS                       R6 R5 K3 ["Name"]
       11 JUMPIFEQKS                       R6 K4 ["Head"] ; [+4]
       13 LOADN                            R6 1
       14 SETTABLEKS                       R6 R5 K5 ["Transparency"]
       16 FORGLOOP                         R1 2 ; [-13]
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.HumanoidRigType.R15]
        4 NAMECALL                         R0 R0 K4 ["CreateHumanoidModelFromDescriptionAsync"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+8]
        8 GETIMPORT                        R3 K3 [warn]
       10 LOADK                            R4 K4 ["[MakeupLookPreview] Failed to create character from HumanoidDescription:"]
       11 MOVE                             R5 R2
       12 CALL                             R3 2 0
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 RETURN                           R3 2
       16 LOADK                            R5 K5 ["Head"]
       17 NAMECALL                         R3 R2 K6 ["FindFirstChild"]
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+5]
       21 LOADK                            R6 K7 ["BasePart"]
       22 NAMECALL                         R4 R3 K8 ["IsA"]
       24 CALL                             R4 2 1
       25 JUMPIF                           R4 ; [+10]
       26 NAMECALL                         R4 R2 K9 ["Destroy"]
       28 CALL                             R4 1 0
       29 GETIMPORT                        R4 K3 [warn]
       31 LOADK                            R5 K10 ["[MakeupLookPreview] No head found in character"]
       32 CALL                             R4 1 0
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 RETURN                           R4 2
       36 GETUPVAL                         R4 1
       37 MOVE                             R5 R2
       38 CALL                             R4 1 0
       39 RETURN                           R2 2

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 LOADN                            R3 0
        5 MOVE                             R4 R0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 GETTABLEKS                       R9 R8 K0 ["rowState"]
       11 JUMPIFNOTEQKS                    R9 K1 ["Selected"] ; [+49]
       13 ADDK                             R3 R3 K2 [1]
       14 GETTABLEKS                       R9 R8 K3 ["assetType"]
       16 GETIMPORT                        R10 K7 [Enum.AssetType.EyebrowAccessory]
       18 JUMPIFEQ                         R9 R10 ; [+7]
       20 GETTABLEKS                       R9 R8 K3 ["assetType"]
       22 GETIMPORT                        R10 K9 [Enum.AssetType.EyelashAccessory]
       24 JUMPIFNOTEQ                      R9 R10 ; [+19]
       26 DUPTABLE                         R11 K12 [{"AssetId", "AssetType", "Order"}]
       27 GETTABLEKS                       R12 R8 K13 ["id"]
       29 SETTABLEKS                       R12 R11 K10 ["AssetId"]
       31 GETTABLEKS                       R12 R8 K3 ["assetType"]
       33 SETTABLEKS                       R12 R11 K5 ["AssetType"]
       35 SETTABLEKS                       R3 R11 K11 ["Order"]
       37 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       39 MOVE                             R10 R1
       40 GETIMPORT                        R9 K16 [table.insert]
       42 CALL                             R9 2 0
       43 JUMP                             ; [+17]
       44 DUPTABLE                         R11 K12 [{"AssetId", "AssetType", "Order"}]
       45 GETTABLEKS                       R12 R8 K13 ["id"]
       47 SETTABLEKS                       R12 R11 K10 ["AssetId"]
       49 GETTABLEKS                       R12 R8 K3 ["assetType"]
       51 SETTABLEKS                       R12 R11 K5 ["AssetType"]
       53 SETTABLEKS                       R3 R11 K11 ["Order"]
       55 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       57 MOVE                             R10 R2
       58 GETIMPORT                        R9 K16 [table.insert]
       60 CALL                             R9 2 0
       61 FORGLOOP                         R4 2 ; [-53]
       63 RETURN                           R1 2

PROTO_7:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["WorldModel"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K4 ["MAKEUP_PREVIEW_WORLD_MODEL_NAME"]
        7 SETTABLEKS                       R4 R3 K5 ["Name"]
        9 GETIMPORT                        R4 K2 [Instance.new]
       11 LOADK                            R5 K6 ["Model"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R2 R4 K5 ["Name"]
       15 SETTABLEKS                       R4 R1 K7 ["Parent"]
       17 NAMECALL                         R5 R0 K8 ["GetChildren"]
       19 CALL                             R5 1 3
       20 FORGPREP                         R5
       21 LOADK                            R12 K9 ["Accessory"]
       22 NAMECALL                         R10 R9 K10 ["IsA"]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+2]
       26 SETTABLEKS                       R4 R9 K7 ["Parent"]
       28 FORGLOOP                         R5 2 ; [-8]
       30 SETTABLEKS                       R1 R4 K11 ["PrimaryPart"]
       32 GETTABLEKS                       R5 R1 K12 ["CFrame"]
       34 GETTABLEKS                       R5 R5 K13 ["Rotation"]
       36 SETTABLEKS                       R5 R1 K12 ["CFrame"]
       38 SETTABLEKS                       R3 R4 K7 ["Parent"]
       40 NAMECALL                         R5 R0 K14 ["Destroy"]
       42 CALL                             R5 1 0
       43 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["processMakeupItems"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 1
        7 FASTCALL1                        TONUMBER R4 ; [+3]
        8 MOVE                             R6 R4
        9 GETIMPORT                        R5 K2 [tonumber]
       11 CALL                             R5 1 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 JUMPIFNOTEQKN                    R5 K3 [0] ; [+8]
       15 GETIMPORT                        R6 K5 [warn]
       17 LOADK                            R7 K6 ["[MakeupLookPreview] Failed to get head asset ID from flag"]
       18 CALL                             R6 1 0
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 RETURN                           R6 2
       22 GETIMPORT                        R6 K9 [Instance.new]
       24 LOADK                            R7 K10 ["HumanoidDescription"]
       25 CALL                             R6 1 1
       26 SETTABLEKS                       R5 R6 K11 ["Head"]
       28 SETTABLEKS                       R1 R6 K12 ["HeadColor"]
       30 LENGTH                           R7 R2
       31 LOADN                            R8 0
       32 JUMPIFNOTLT                      R8 R7 ; [+8]
       34 GETUPVAL                         R9 2
       35 MOVE                             R10 R2
       36 CALL                             R9 1 1
       37 LOADB                            R10 1
       38 NAMECALL                         R7 R6 K13 ["SetAccessories"]
       40 CALL                             R7 3 0
       41 MOVE                             R7 R3
       42 LOADNIL                          R8
       43 LOADNIL                          R9
       44 FORGPREP                         R7
       45 GETIMPORT                        R12 K9 [Instance.new]
       47 LOADK                            R13 K14 ["MakeupDescription"]
       48 CALL                             R12 1 1
       49 GETTABLEKS                       R13 R11 K15 ["AssetId"]
       51 JUMPIFEQKNIL                     R13 ; [+6]
       53 GETTABLEKS                       R13 R11 K15 ["AssetId"]
       55 SETTABLEKS                       R13 R12 K15 ["AssetId"]
       57 JUMP                             ; [+4]
       58 GETTABLEKS                       R13 R11 K7 ["Instance"]
       60 SETTABLEKS                       R13 R12 K7 ["Instance"]
       62 GETUPVAL                         R14 3
       63 GETTABLEKS                       R14 R14 K16 ["ASSET_TYPE_TO_MAKEUP_TYPE"]
       65 GETTABLEKS                       R15 R11 K17 ["AssetType"]
       67 GETTABLE                         R13 R14 R15
       68 SETTABLEKS                       R13 R12 K18 ["MakeupType"]
       70 GETTABLEKS                       R14 R11 K19 ["Order"]
       72 ORK                              R13 R14 K3 [0]
       73 SETTABLEKS                       R13 R12 K19 ["Order"]
       75 SETTABLEKS                       R6 R12 K20 ["Parent"]
       77 FORGLOOP                         R7 2 ; [-33]
       79 GETUPVAL                         R7 4
       80 MOVE                             R8 R6
       81 CALL                             R7 1 2
       82 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AvatarCompatibilityPreviewer"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Util"]
       25 GETTABLEKS                       R4 R4 K13 ["Constants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K14 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R2 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K15 ["Flags"]
       41 GETTABLEKS                       R6 R6 K16 ["getFStringDefaultDynamicHeadAssetIdLookComposer"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K17 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R7 4 0
       48 DUPCLOSURE                       R8 K18 [PROTO_2]
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R8 R7 K19 ["createFaceCamera"]
       53 DUPCLOSURE                       R8 K20 [PROTO_3]
       54 DUPCLOSURE                       R9 K21 [PROTO_5]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R8
       57 DUPCLOSURE                       R10 K22 [PROTO_6]
       58 SETTABLEKS                       R10 R7 K23 ["processMakeupItems"]
       60 DUPCLOSURE                       R10 K24 [PROTO_7]
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R10 R7 K25 ["setupHeadInWorldModel"]
       64 DUPCLOSURE                       R10 K26 [PROTO_8]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R9
       70 SETTABLEKS                       R10 R7 K27 ["createMakeupCharacterModel"]
       72 RETURN                           R7 1
