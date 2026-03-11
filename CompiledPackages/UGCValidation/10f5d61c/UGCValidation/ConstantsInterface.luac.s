PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["ASSET_TYPE_INFO"]
        8 GETTABLE                         R2 R3 R0
        9 GETTABLEKS                       R1 R2 K1 ["isBodyPart"]
       11 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.AssetType.LipMakeup]
        3 JUMPIFEQ                         R0 R2 ; [+12]
        5 LOADB                            R1 1
        6 GETIMPORT                        R2 K5 [Enum.AssetType.EyeMakeup]
        8 JUMPIFEQ                         R0 R2 ; [+7]
       10 GETIMPORT                        R2 K7 [Enum.AssetType.FaceMakeup]
       12 JUMPIFEQ                         R0 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["ASSET_TYPE_INFO"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["isBodyPart"]
       10 JUMPIFNOT                        R6 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R4
       15 GETIMPORT                        R6 K4 [table.insert]
       17 CALL                             R6 2 0
       18 FORGLOOP                         R1 2 ; [-11]
       20 RETURN                           R0 1

PROTO_3:
        0 JUMPIF                           R0 ; [+4]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
        4 GETTABLE                         R0 R2 R1
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["ASSET_TYPE_INFO"]
        9 GETTABLE                         R2 R3 R0
       10 GETTABLEKS                       R3 R2 K2 ["isBodyPart"]
       12 JUMPIF                           R3 ; [+2]
       13 LOADK                            R3 K3 [""]
       14 RETURN                           R3 1
       15 GETTABLEKS                       R6 R2 K4 ["subParts"]
       17 GETTABLE                         R5 R6 R1
       18 GETTABLEKS                       R4 R5 K5 ["rigAttachmentToParent"]
       20 GETTABLEKS                       R3 R4 K6 ["name"]
       22 RETURN                           R3 1
       23 LOADK                            R2 K3 [""]
       24 RETURN                           R2 1

PROTO_4:
        0 JUMPIF                           R0 ; [+4]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
        4 GETTABLE                         R0 R2 R1
        5 LOADNIL                          R2
        6 JUMPIFNOT                        R0 ; [+13]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K1 ["ASSET_TYPE_INFO"]
       10 GETTABLE                         R3 R4 R0
       11 GETTABLEKS                       R4 R3 K2 ["isBodyPart"]
       13 JUMPIF                           R4 ; [+3]
       14 NEWTABLE                         R4 0 0
       16 RETURN                           R4 1
       17 GETTABLEKS                       R4 R3 K3 ["subParts"]
       19 GETTABLE                         R2 R4 R1
       20 NEWTABLE                         R3 0 0
       22 JUMPIFNOT                        R2 ; [+24]
       23 GETTABLEKS                       R7 R2 K4 ["rigAttachmentToParent"]
       25 GETTABLEKS                       R6 R7 K5 ["name"]
       27 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       29 MOVE                             R5 R3
       30 GETIMPORT                        R4 K8 [table.insert]
       32 CALL                             R4 2 0
       33 GETTABLEKS                       R4 R2 K9 ["otherAttachments"]
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       40 MOVE                             R10 R3
       41 MOVE                             R11 R7
       42 GETIMPORT                        R9 K8 [table.insert]
       44 CALL                             R9 2 0
       45 FORGLOOP                         R4 1 ; [-8]
       47 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+4]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["MAX_TEXTURE_SIZE"]
        6 RETURN                           R3 1
        7 JUMPIF                           R0 ; [+4]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K0 ["MAX_TEXTURE_SIZE"]
       11 RETURN                           R3 1
       12 GETUPVAL                         R6 2
       13 NAMECALL                         R6 R6 K1 ["getRules"]
       15 CALL                             R6 1 1
       16 GETTABLEKS                       R5 R6 K2 ["TextureRules"]
       18 GETTABLEKS                       R4 R5 K3 ["AssetTextureLimits"]
       20 GETTABLE                         R3 R4 R0
       21 JUMPIF                           R3 ; [+4]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K0 ["MAX_TEXTURE_SIZE"]
       25 RETURN                           R4 1
       26 LOADK                            R6 K4 ["SpecialMesh"]
       27 NAMECALL                         R4 R1 K5 ["IsA"]
       29 CALL                             R4 2 1
       30 JUMPIFNOT                        R4 ; [+5]
       31 JUMPIFNOTEQKS                    R2 K6 ["TextureId"] ; [+4]
       33 GETTABLEKS                       R4 R3 K7 ["ColorMapSize"]
       35 RETURN                           R4 1
       36 LOADK                            R6 K8 ["MeshPart"]
       37 NAMECALL                         R4 R1 K5 ["IsA"]
       39 CALL                             R4 2 1
       40 JUMPIFNOT                        R4 ; [+5]
       41 JUMPIFNOTEQKS                    R2 K9 ["TextureID"] ; [+4]
       43 GETTABLEKS                       R4 R3 K7 ["ColorMapSize"]
       45 RETURN                           R4 1
       46 GETUPVAL                         R4 3
       47 CALL                             R4 0 1
       48 JUMPIFNOT                        R4 ; [+4]
       49 LOADK                            R6 K10 ["Decal"]
       50 NAMECALL                         R4 R1 K5 ["IsA"]
       52 CALL                             R4 2 1
       53 LOADK                            R7 K11 ["SurfaceAppearance"]
       54 NAMECALL                         R5 R1 K5 ["IsA"]
       56 CALL                             R5 2 1
       57 JUMPIF                           R5 ; [+1]
       58 JUMPIFNOT                        R4 ; [+20]
       59 JUMPIFNOTEQKS                    R2 K12 ["ColorMap"] ; [+4]
       61 GETTABLEKS                       R5 R3 K7 ["ColorMapSize"]
       63 RETURN                           R5 1
       64 JUMPIFNOTEQKS                    R2 K13 ["MetalnessMap"] ; [+4]
       66 GETTABLEKS                       R5 R3 K14 ["MetalnessMapSize"]
       68 RETURN                           R5 1
       69 JUMPIFNOTEQKS                    R2 K15 ["NormalMap"] ; [+4]
       71 GETTABLEKS                       R5 R3 K16 ["NormalMapSize"]
       73 RETURN                           R5 1
       74 JUMPIFNOTEQKS                    R2 K17 ["RoughnessMap"] ; [+4]
       76 GETTABLEKS                       R5 R3 K18 ["RoughnessMapSize"]
       78 RETURN                           R5 1
       79 GETUPVAL                         R6 1
       80 GETTABLEKS                       R5 R6 K0 ["MAX_TEXTURE_SIZE"]
       82 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Constants"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R4 R0 K6 ["util"]
       14 GETTABLEKS                       R3 R4 K7 ["ValidationRulesUtil"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R0 K8 ["flags"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R3 K9 ["getEngineUGCValidateAssetTextureLimits"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K4 [require]
       26 GETTABLEKS                       R7 R0 K8 ["flags"]
       28 GETTABLEKS                       R6 R7 K10 ["getFFlagUGCValidationMakeupSupport"]
       30 CALL                             R5 1 1
       31 NEWTABLE                         R6 8 0
       33 DUPCLOSURE                       R7 K11 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R7 R6 K12 ["isBodyPart"]
       37 DUPCLOSURE                       R7 K13 [PROTO_1]
       38 SETTABLEKS                       R7 R6 K14 ["isMakeupAsset"]
       40 DUPCLOSURE                       R7 K15 [PROTO_2]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R7 R6 K16 ["getBodyPartAssets"]
       44 DUPCLOSURE                       R7 K17 [PROTO_3]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R7 R6 K18 ["getRigAttachmentToParent"]
       48 DUPCLOSURE                       R7 K19 [PROTO_4]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R7 R6 K20 ["getAttachments"]
       52 DUPCLOSURE                       R7 K21 [PROTO_5]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R7 R6 K22 ["getTextureLimit"]
       59 RETURN                           R6 1
