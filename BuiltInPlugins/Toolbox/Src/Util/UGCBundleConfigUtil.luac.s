PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
        4 GETTABLEKS                       R2 R2 K1 ["Body"]
        6 JUMPIFEQ                         R0 R2 ; [+26]
        8 LOADB                            R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       12 GETTABLEKS                       R2 R2 K2 ["DynamicHead"]
       14 JUMPIFEQ                         R0 R2 ; [+18]
       16 LOADB                            R1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       20 GETTABLEKS                       R2 R2 K3 ["Shoes"]
       22 JUMPIFEQ                         R0 R2 ; [+10]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       27 GETTABLEKS                       R2 R2 K4 ["AvatarAnimations"]
       29 JUMPIFEQ                         R0 R2 ; [+2]
       31 LOADB                            R1 0 +1
       32 LOADB                            R1 1
       33 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
        4 GETTABLEKS                       R2 R2 K1 ["Body"]
        6 JUMPIFEQ                         R0 R2 ; [+10]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       11 GETTABLEKS                       R2 R2 K2 ["DynamicHead"]
       13 JUMPIFEQ                         R0 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
        3 GETTABLEKS                       R2 R2 K1 ["AvatarAnimations"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R1 R2 R0
        4 LOADB                            R2 0
        5 JUMPIFEQKNIL                     R1 ; [+7]
        7 GETTABLEKS                       R3 R1 K1 ["isCatalog"]
        9 JUMPIFEQKB                       R3 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getUGCBodyPartsAssetTypeMap"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R3
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R8 K1 ["Name"]
       19 GETTABLE                         R11 R4 R10
       20 JUMPIFEQKNIL                     R11 ; [+4]
       22 ADDK                             R12 R11 K2 [1]
       23 SETTABLE                         R12 R4 R10
       24 JUMP                             ; [+2]
       25 LOADN                            R12 1
       26 SETTABLE                         R12 R4 R10
       27 FORGLOOP                         R5 1 ; [-11]
       29 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+9]
        7 LOADK                            R4 K1 ["NumberValue"]
        8 NAMECALL                         R2 R1 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+3]
       12 GETTABLEKS                       R2 R1 K3 ["Value"]
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagEnableUGCBundleUploadBodyScale is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADK                            R3 K3 ["Humanoid"]
        9 NAMECALL                         R1 R0 K4 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+3]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R1
       18 DUPTABLE                         R3 K10 [{"height", "width", "head", "bodyType", "proportion"}]
       19 LOADK                            R7 K11 ["BodyHeightScale"]
       20 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       22 CALL                             R5 2 1
       23 JUMPIFEQKNIL                     R5 ; [+9]
       25 LOADK                            R8 K12 ["NumberValue"]
       26 NAMECALL                         R6 R5 K13 ["IsA"]
       28 CALL                             R6 2 1
       29 JUMPIFNOT                        R6 ; [+3]
       30 GETTABLEKS                       R4 R5 K14 ["Value"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R4
       34 SETTABLEKS                       R4 R3 K5 ["height"]
       36 LOADK                            R7 K15 ["BodyWidthScale"]
       37 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       39 CALL                             R5 2 1
       40 JUMPIFEQKNIL                     R5 ; [+9]
       42 LOADK                            R8 K12 ["NumberValue"]
       43 NAMECALL                         R6 R5 K13 ["IsA"]
       45 CALL                             R6 2 1
       46 JUMPIFNOT                        R6 ; [+3]
       47 GETTABLEKS                       R4 R5 K14 ["Value"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K6 ["width"]
       53 LOADK                            R7 K16 ["HeadScale"]
       54 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       56 CALL                             R5 2 1
       57 JUMPIFEQKNIL                     R5 ; [+9]
       59 LOADK                            R8 K12 ["NumberValue"]
       60 NAMECALL                         R6 R5 K13 ["IsA"]
       62 CALL                             R6 2 1
       63 JUMPIFNOT                        R6 ; [+3]
       64 GETTABLEKS                       R4 R5 K14 ["Value"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R4
       68 SETTABLEKS                       R4 R3 K7 ["head"]
       70 LOADK                            R7 K17 ["BodyTypeScale"]
       71 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       73 CALL                             R5 2 1
       74 JUMPIFEQKNIL                     R5 ; [+9]
       76 LOADK                            R8 K12 ["NumberValue"]
       77 NAMECALL                         R6 R5 K13 ["IsA"]
       79 CALL                             R6 2 1
       80 JUMPIFNOT                        R6 ; [+3]
       81 GETTABLEKS                       R4 R5 K14 ["Value"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R4
       85 SETTABLEKS                       R4 R3 K8 ["bodyType"]
       87 LOADK                            R7 K18 ["BodyProportionScale"]
       88 NAMECALL                         R5 R1 K4 ["FindFirstChild"]
       90 CALL                             R5 2 1
       91 JUMPIFEQKNIL                     R5 ; [+9]
       93 LOADK                            R8 K12 ["NumberValue"]
       94 NAMECALL                         R6 R5 K13 ["IsA"]
       96 CALL                             R6 2 1
       97 JUMPIFNOT                        R6 ; [+3]
       98 GETTABLEKS                       R4 R5 K14 ["Value"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R4
      102 SETTABLEKS                       R4 R3 K9 ["proportion"]
      104 RETURN                           R3 1

PROTO_7:
        0 LOADK                            R3 K0 ["Head"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+6]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["BodyScaleTypes"]
        8 GETTABLEKS                       R2 R2 K3 ["Unknown"]
       10 RETURN                           R2 1
       11 LOADK                            R4 K4 ["AvatarPartScaleType"]
       12 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+6]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["BodyScaleTypes"]
       19 GETTABLEKS                       R3 R3 K5 ["Classic"]
       21 RETURN                           R3 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K2 ["BodyScaleTypes"]
       25 GETTABLEKS                       R5 R2 K6 ["Value"]
       27 GETTABLE                         R3 R4 R5
       28 JUMPIF                           R3 ; [+6]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K2 ["BodyScaleTypes"]
       32 GETTABLEKS                       R4 R4 K3 ["Unknown"]
       34 RETURN                           R4 1
       35 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getBodyScaleValues"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["getBodyScaleType"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 NEWTABLE                         R4 0 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K2 ["BodyScaleTypes"]
       15 GETTABLEKS                       R5 R5 K3 ["Unknown"]
       17 JUMPIFNOTEQ                      R3 R5 ; [+13]
       19 MOVE                             R6 R4
       20 LOADK                            R9 K4 ["AssetConfig"]
       21 LOADK                            R10 K5 ["BodyScaleValidationErrorUnknown"]
       22 DUPTABLE                         R11 K8 [{["scaleTypes"] = "AvatarPartScaleType: Classic | ProportionsNormal | ProportionsSlender"}]
       23 NAMECALL                         R7 R1 K9 ["getText"]
       25 CALL                             R7 4 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R5 K12 [table.insert]
       29 CALL                             R5 -1 0
       30 RETURN                           R4 1
       31 JUMPIFNOTEQKNIL                  R2 ; [+12]
       33 MOVE                             R6 R4
       34 LOADK                            R9 K4 ["AssetConfig"]
       35 LOADK                            R10 K13 ["BodyScaleValidationErrorHumanoidMissing"]
       36 NAMECALL                         R7 R1 K9 ["getText"]
       38 CALL                             R7 3 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R5 K12 [table.insert]
       42 CALL                             R5 -1 0
       43 RETURN                           R4 1
       44 MOVE                             R5 R2
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 FORGPREP                         R5
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R12 R12 K14 ["BodyScaleDefaults"]
       51 GETTABLE                         R11 R12 R3
       52 GETTABLE                         R10 R11 R8
       53 JUMPIFEQ                         R9 R10 ; [+25]
       55 MOVE                             R12 R4
       56 LOADK                            R15 K4 ["AssetConfig"]
       57 LOADK                            R16 K15 ["BodyScaleValidationErrorNotDefaultValue"]
       58 DUPTABLE                         R17 K19 [{"scaleName", "defaultValue", "scaleType"}]
       59 GETUPVAL                         R19 1
       60 GETTABLEKS                       R19 R19 K20 ["bodyScaleNameToString"]
       62 GETTABLE                         R18 R19 R8
       63 SETTABLEKS                       R18 R17 K16 ["scaleName"]
       65 SETTABLEKS                       R10 R17 K17 ["defaultValue"]
       67 LOADK                            R19 K21 ["AvatarPartScaleType "]
       68 MOVE                             R20 R3
       69 CONCAT                           R18 R19 R20
       70 SETTABLEKS                       R18 R17 K18 ["scaleType"]
       72 NAMECALL                         R13 R1 K9 ["getText"]
       74 CALL                             R13 4 -1
       75 FASTCALL                         TABLE_INSERT ; [+2]
       76 GETIMPORT                        R11 K12 [table.insert]
       78 CALL                             R11 -1 0
       79 FORGLOOP                         R5 2 ; [-32]
       81 RETURN                           R4 1

PROTO_9:
        0 LOADK                            R3 K0 ["BodyColors"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 DUPTABLE                         R2 K8 [{"headColor3", "torsoColor3", "leftArmColor3", "rightArmColor3", "leftLegColor3", "rightLegColor3"}]
        9 GETTABLEKS                       R4 R1 K9 ["HeadColor3"]
       11 NAMECALL                         R4 R4 K10 ["ToHex"]
       13 CALL                             R4 1 -1
       14 FASTCALL                         TOSTRING ; [+2]
       15 GETIMPORT                        R3 K12 [tostring]
       17 CALL                             R3 -1 1
       18 SETTABLEKS                       R3 R2 K2 ["headColor3"]
       20 GETTABLEKS                       R4 R1 K13 ["TorsoColor3"]
       22 NAMECALL                         R4 R4 K10 ["ToHex"]
       24 CALL                             R4 1 -1
       25 FASTCALL                         TOSTRING ; [+2]
       26 GETIMPORT                        R3 K12 [tostring]
       28 CALL                             R3 -1 1
       29 SETTABLEKS                       R3 R2 K3 ["torsoColor3"]
       31 GETTABLEKS                       R4 R1 K14 ["LeftArmColor3"]
       33 NAMECALL                         R4 R4 K10 ["ToHex"]
       35 CALL                             R4 1 -1
       36 FASTCALL                         TOSTRING ; [+2]
       37 GETIMPORT                        R3 K12 [tostring]
       39 CALL                             R3 -1 1
       40 SETTABLEKS                       R3 R2 K4 ["leftArmColor3"]
       42 GETTABLEKS                       R4 R1 K15 ["RightArmColor3"]
       44 NAMECALL                         R4 R4 K10 ["ToHex"]
       46 CALL                             R4 1 -1
       47 FASTCALL                         TOSTRING ; [+2]
       48 GETIMPORT                        R3 K12 [tostring]
       50 CALL                             R3 -1 1
       51 SETTABLEKS                       R3 R2 K5 ["rightArmColor3"]
       53 GETTABLEKS                       R4 R1 K16 ["LeftLegColor3"]
       55 NAMECALL                         R4 R4 K10 ["ToHex"]
       57 CALL                             R4 1 -1
       58 FASTCALL                         TOSTRING ; [+2]
       59 GETIMPORT                        R3 K12 [tostring]
       61 CALL                             R3 -1 1
       62 SETTABLEKS                       R3 R2 K6 ["leftLegColor3"]
       64 GETTABLEKS                       R4 R1 K17 ["RightLegColor3"]
       66 NAMECALL                         R4 R4 K10 ["ToHex"]
       68 CALL                             R4 1 -1
       69 FASTCALL                         TOSTRING ; [+2]
       70 GETIMPORT                        R3 K12 [tostring]
       72 CALL                             R3 -1 1
       73 SETTABLEKS                       R3 R2 K7 ["rightLegColor3"]
       75 RETURN                           R2 1

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["getBodyColorSet"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+11]
        9 MOVE                             R5 R2
       10 LOADK                            R8 K1 ["AssetConfig"]
       11 LOADK                            R9 K2 ["UGCBodyValidationColorsError"]
       12 NAMECALL                         R6 R1 K3 ["getText"]
       14 CALL                             R6 3 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R4 K6 [table.insert]
       18 CALL                             R4 -1 0
       19 RETURN                           R2 1

PROTO_11:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+19]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["ValidateScaleSettings"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R3 2 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       17 MOVE                             R10 R2
       18 MOVE                             R11 R8
       19 GETIMPORT                        R9 K3 [table.insert]
       21 CALL                             R9 2 0
       22 FORGLOOP                         R4 2 ; [-8]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K4 ["ValidateBodyColors"]
       27 MOVE                             R4 R0
       28 MOVE                             R5 R1
       29 CALL                             R3 2 1
       30 MOVE                             R4 R3
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 FORGPREP                         R4
       34 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       36 MOVE                             R10 R2
       37 MOVE                             R11 R8
       38 GETIMPORT                        R9 K3 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R4 2 ; [-8]
       43 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypeStringToEnumeration"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_13:
        0 JUMPIFEQKNIL                     R1 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["None"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R3 R1 K1 ["rawValue"]
       11 CALL                             R3 0 1
       12 GETTABLE                         R2 R0 R3
       13 GETTABLEKS                       R2 R2 K2 ["allowedAssetTypeSettings"]
       15 RETURN                           R2 1

PROTO_14:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["getAllowedAssetTypeSettingsForBundle"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R2 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R10 R10 K1 ["AllowedAssetStringsMetadataToAssetTypeMap"]
       18 GETTABLE                         R9 R10 R7
       19 JUMPIFEQKNIL                     R9 ; [+8]
       21 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       23 MOVE                             R11 R2
       24 MOVE                             R12 R9
       25 GETIMPORT                        R10 K4 [table.insert]
       27 CALL                             R10 2 0
       28 FORGLOOP                         R4 1 ; [-14]
       30 RETURN                           R2 1

PROTO_15:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["getAllowedAssetTypeSettingsForBundle"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R2 1
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R10 R10 K1 ["AllowedAssetStringsMetadataToAssetTypeMap"]
       18 GETTABLE                         R9 R10 R7
       19 JUMPIFEQKNIL                     R9 ; [+12]
       21 DUPTABLE                         R12 K4 [{"assetType", "settings"}]
       22 SETTABLEKS                       R9 R12 K2 ["assetType"]
       24 SETTABLEKS                       R8 R12 K3 ["settings"]
       26 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       28 MOVE                             R11 R2
       29 GETIMPORT                        R10 K7 [table.insert]
       31 CALL                             R10 2 0
       32 FORGLOOP                         R4 2 ; [-18]
       34 RETURN                           R2 1

PROTO_16:
        0 GETIMPORT                        R3 K2 [table.find]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R0
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_17:
        0 LOADK                            R5 K0 ["Model"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R4
        6 RETURN                           R4 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["getAllowedAssetTypeEnumsForBundle"]
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 CALL                             R4 2 1
       13 NEWTABLE                         R5 0 0
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K3 ["UGC_BODY_PARTS"]
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 MOVE                             R13 R10
       22 NAMECALL                         R11 R0 K4 ["FindFirstChild"]
       24 CALL                             R11 2 1
       25 JUMPIFEQKNIL                     R11 ; [+32]
       27 GETUPVAL                         R13 1
       28 GETTABLEKS                       R13 R13 K5 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
       30 GETTABLE                         R12 R13 R9
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K6 ["isAllowedUGCAssetType"]
       34 MOVE                             R14 R12
       35 MOVE                             R15 R4
       36 CALL                             R13 2 1
       37 JUMPIFNOT                        R13 ; [+20]
       38 GETTABLE                         R13 R5 R12
       39 JUMPIFNOTEQKNIL                  R13 ; [+8]
       41 NEWTABLE                         R13 0 1
       43 MOVE                             R14 R11
       44 SETLIST                          R13 R14 1 [1]
       46 SETTABLE                         R13 R5 R12
       47 JUMP                             ; [+10]
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R13 R13 K7 ["append"]
       51 GETTABLE                         R14 R5 R12
       52 NEWTABLE                         R15 0 1
       54 MOVE                             R16 R11
       55 SETLIST                          R15 R16 1 [1]
       57 CALL                             R13 2 0
       58 FORGLOOP                         R6 2 ; [-38]
       60 RETURN                           R5 1

PROTO_18:
        0 GETIMPORT                        R1 K3 [Enum.AssetType.DynamicHead]
        2 JUMPIFEQ                         R0 R1 ; [+13]
        4 GETIMPORT                        R1 K5 [Enum.AssetType.EyebrowAccessory]
        6 JUMPIFEQ                         R0 R1 ; [+9]
        8 GETIMPORT                        R1 K7 [Enum.AssetType.EyelashAccessory]
       10 JUMPIFEQ                         R0 R1 ; [+5]
       12 GETIMPORT                        R1 K9 [Enum.AssetType.HairAccessory]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADB                            R1 0
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K10 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       21 JUMPIFNOT                        R1 ; [+12]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K10 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       25 LOADNIL                          R2
       26 LOADNIL                          R3
       27 FORGPREP                         R1
       28 JUMPIFNOTEQ                      R0 R5 ; [+3]
       30 LOADB                            R6 0
       31 RETURN                           R6 1
       32 FORGLOOP                         R1 2 ; [-5]
       34 LOADB                            R1 1
       35 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getUGCBodyPartsAssetTypeMap"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R4 3 1
        7 JUMPIFNOTEQKNIL                  R4 ; [+3]
        9 LOADNIL                          R5
       10 RETURN                           R5 1
       11 NEWTABLE                         R5 0 0
       13 MOVE                             R6 R4
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R11 R11 K1 ["AssetTypeRequiresFolderForUpload"]
       20 MOVE                             R12 R9
       21 CALL                             R11 1 1
       22 JUMPIFNOT                        R11 ; [+50]
       23 GETIMPORT                        R12 K4 [Instance.new]
       25 LOADK                            R13 K5 ["Folder"]
       26 CALL                             R12 1 1
       27 LOADK                            R13 K6 ["R15ArtistIntent"]
       28 SETTABLEKS                       R13 R12 K7 ["Name"]
       30 MOVE                             R13 R10
       31 LOADNIL                          R14
       32 LOADNIL                          R15
       33 FORGPREP                         R13
       34 SETTABLEKS                       R12 R17 K8 ["Parent"]
       36 FORGLOOP                         R13 2 ; [-3]
       38 NEWTABLE                         R13 0 1
       40 MOVE                             R14 R12
       41 SETLIST                          R13 R14 1 [1]
       43 SETTABLE                         R13 R5 R9
       44 JUMPIFNOT                        R3 ; [+29]
       45 NAMECALL                         R13 R12 K9 ["Clone"]
       47 CALL                             R13 1 1
       48 LOADK                            R14 K10 ["R15Fixed"]
       49 SETTABLEKS                       R14 R13 K7 ["Name"]
       51 GETTABLE                         R15 R5 R9
       52 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
       54 MOVE                             R16 R13
       55 GETIMPORT                        R14 K13 [table.insert]
       57 CALL                             R14 2 0
       58 GETIMPORT                        R14 K4 [Instance.new]
       60 LOADK                            R15 K5 ["Folder"]
       61 CALL                             R14 1 1
       62 LOADK                            R15 K14 ["R6"]
       63 SETTABLEKS                       R15 R14 K7 ["Name"]
       65 GETTABLE                         R16 R5 R9
       66 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       68 MOVE                             R17 R14
       69 GETIMPORT                        R15 K13 [table.insert]
       71 CALL                             R15 2 0
       72 JUMP                             ; [+1]
       73 SETTABLE                         R10 R5 R9
       74 FORGLOOP                         R6 2 ; [-58]
       76 RETURN                           R5 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
        3 GETTABLEKS                       R2 R2 K1 ["Body"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+7]
        7 LOADK                            R4 K2 ["AssetConfig"]
        8 LOADK                            R5 K3 ["UGCBodyBundleName"]
        9 NAMECALL                         R2 R1 K4 ["getText"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       16 GETTABLEKS                       R2 R2 K5 ["DynamicHead"]
       18 JUMPIFNOTEQ                      R0 R2 ; [+7]
       20 LOADK                            R4 K2 ["AssetConfig"]
       21 LOADK                            R5 K6 ["UGCDynamicHeadBundleName"]
       22 NAMECALL                         R2 R1 K4 ["getText"]
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       29 GETTABLEKS                       R2 R2 K7 ["Shoes"]
       31 JUMPIFNOTEQ                      R0 R2 ; [+7]
       33 LOADK                            R4 K2 ["AssetConfig"]
       34 LOADK                            R5 K8 ["UGCShoesBundleName"]
       35 NAMECALL                         R2 R1 K4 ["getText"]
       37 CALL                             R2 3 -1
       38 RETURN                           R2 -1
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       42 GETTABLEKS                       R2 R2 K9 ["AvatarAnimations"]
       44 JUMPIFNOTEQ                      R0 R2 ; [+7]
       46 LOADK                            R4 K2 ["AssetConfig"]
       47 LOADK                            R5 K10 ["UGCAvatarAnimationsBundleName"]
       48 NAMECALL                         R2 R1 K4 ["getText"]
       50 CALL                             R2 3 -1
       51 RETURN                           R2 -1
       52 LOADK                            R2 K11 [""]
       53 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R2
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R9 R8 K1 ["settings"]
       14 GETTABLEKS                       R9 R9 K2 ["minimumQuantity"]
       16 JUMPIFNOTEQKN                    R9 K3 [0] ; [+9]
       18 GETTABLEKS                       R11 R8 K4 ["assetType"]
       20 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       22 MOVE                             R10 R3
       23 GETIMPORT                        R9 K7 [table.insert]
       25 CALL                             R9 2 0
       26 FORGLOOP                         R4 2 ; [-15]
       28 RETURN                           R3 1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getOptionalAssetTypesForBundle"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["getUGCBodyPartsAssetTypeMap"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 CALL                             R4 3 1
       13 NEWTABLE                         R5 0 0
       15 JUMPIFNOTEQKNIL                  R4 ; [+2]
       17 RETURN                           R5 1
       18 MOVE                             R6 R3
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLE                         R11 R4 R10
       23 JUMPIFNOTEQKNIL                  R11 ; [+8]
       25 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       27 MOVE                             R12 R5
       28 MOVE                             R13 R10
       29 GETIMPORT                        R11 K4 [table.insert]
       31 CALL                             R11 2 0
       32 FORGLOOP                         R6 2 ; [-11]
       34 RETURN                           R5 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getAllowedAssetTypeEnumsForBundle"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R2
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 SETTABLE                         R8 R3 R8
       13 FORGLOOP                         R4 2 ; [-2]
       15 RETURN                           R3 1

PROTO_24:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 NAMECALL                         R3 R0 K2 ["GetChildren"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 3
        8 FORGPREP_NEXT                    R2
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K3 ["UGC_BODY_PARTS"]
       12 GETTABLEKS                       R9 R6 K4 ["Name"]
       14 GETTABLE                         R7 R8 R9
       15 JUMPIFNOTEQKNIL                  R7 ; [+14]
       17 LOADK                            R9 K5 ["MeshPart"]
       18 NAMECALL                         R7 R6 K6 ["IsA"]
       20 CALL                             R7 2 1
       21 JUMPIFNOT                        R7 ; [+8]
       22 GETTABLEKS                       R9 R6 K4 ["Name"]
       24 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       26 MOVE                             R8 R1
       27 GETIMPORT                        R7 K9 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-22]
       32 RETURN                           R1 1

PROTO_25:
        0 JUMPIFEQKNIL                     R0 ; [+52]
        2 LOADB                            R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
        6 GETTABLEKS                       R2 R2 K1 ["Body"]
        8 JUMPIFEQ                         R0 R2 ; [+26]
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       14 GETTABLEKS                       R2 R2 K2 ["DynamicHead"]
       16 JUMPIFEQ                         R0 R2 ; [+18]
       18 LOADB                            R1 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       22 GETTABLEKS                       R2 R2 K3 ["Shoes"]
       24 JUMPIFEQ                         R0 R2 ; [+10]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["UGCBundleTypes"]
       29 GETTABLEKS                       R2 R2 K4 ["AvatarAnimations"]
       31 JUMPIFEQ                         R0 R2 ; [+2]
       33 LOADB                            R1 0 +1
       34 LOADB                            R1 1
       35 JUMPIF                           R1 ; [+14]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K5 ["ASSET_TYPE_INFO"]
       39 GETTABLE                         R2 R3 R0
       40 LOADB                            R1 0
       41 JUMPIFEQKNIL                     R2 ; [+7]
       43 GETTABLEKS                       R3 R2 K6 ["isCatalog"]
       45 JUMPIFEQKB                       R3 TRUE ; [+2]
       47 LOADB                            R1 0 +1
       48 LOADB                            R1 1
       49 JUMPIFNOT                        R1 ; [+3]
       50 GETTABLEKS                       R1 R0 K7 ["Name"]
       52 RETURN                           R1 1
       53 LOADK                            R1 K8 [""]
       54 RETURN                           R1 1

PROTO_26:
        0 LOADK                            R5 K0 ["Model"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["getAllowedAssetTypeEnumsForBundle"]
       10 MOVE                             R4 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 LOADNIL                          R4
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K3 ["UGCBundleTypes"]
       17 GETTABLEKS                       R6 R6 K4 ["AvatarAnimations"]
       19 JUMPIFEQ                         R2 R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 JUMPIFNOT                        R5 ; [+4]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K5 ["UGC_AVATAR_ANIMATIONS_PARTS"]
       27 JUMP                             ; [+13]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K6 ["Dictionary"]
       31 GETTABLEKS                       R5 R5 K7 ["join"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K8 ["UGC_BODY_PARTS"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K9 ["UGC_BUNDLE_PARTS"]
       39 CALL                             R5 2 1
       40 MOVE                             R4 R5
       41 NEWTABLE                         R5 0 0
       43 MOVE                             R6 R4
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 FORGPREP                         R6
       47 GETUPVAL                         R13 1
       48 GETTABLEKS                       R13 R13 K3 ["UGCBundleTypes"]
       50 GETTABLEKS                       R13 R13 K4 ["AvatarAnimations"]
       52 JUMPIFEQ                         R2 R13 ; [+2]
       54 LOADB                            R12 0 +1
       55 LOADB                            R12 1
       56 JUMPIFNOT                        R12 ; [+7]
       57 GETUPVAL                         R11 3
       58 GETTABLEKS                       R11 R11 K10 ["resolveBundlePartContainer"]
       60 MOVE                             R12 R0
       61 MOVE                             R13 R10
       62 CALL                             R11 2 1
       63 JUMP                             ; [+4]
       64 MOVE                             R13 R10
       65 NAMECALL                         R11 R0 K11 ["FindFirstChild"]
       67 CALL                             R11 2 1
       68 JUMPIFEQKNIL                     R11 ; [+71]
       70 LOADNIL                          R12
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R14 R14 K3 ["UGCBundleTypes"]
       74 GETTABLEKS                       R14 R14 K4 ["AvatarAnimations"]
       76 JUMPIFEQ                         R2 R14 ; [+2]
       78 LOADB                            R13 0 +1
       79 LOADB                            R13 1
       80 JUMPIFNOT                        R13 ; [+5]
       81 GETUPVAL                         R13 1
       82 GETTABLEKS                       R13 R13 K12 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       84 GETTABLE                         R12 R13 R9
       85 JUMP                             ; [+27]
       86 LOADB                            R13 1
       87 GETUPVAL                         R14 1
       88 GETTABLEKS                       R14 R14 K3 ["UGCBundleTypes"]
       90 GETTABLEKS                       R14 R14 K13 ["Body"]
       92 JUMPIFEQ                         R2 R14 ; [+10]
       94 GETUPVAL                         R14 1
       95 GETTABLEKS                       R14 R14 K3 ["UGCBundleTypes"]
       97 GETTABLEKS                       R14 R14 K14 ["DynamicHead"]
       99 JUMPIFEQ                         R2 R14 ; [+2]
      101 LOADB                            R13 0 +1
      102 LOADB                            R13 1
      103 JUMPIFNOT                        R13 ; [+5]
      104 GETUPVAL                         R13 1
      105 GETTABLEKS                       R13 R13 K15 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      107 GETTABLE                         R12 R13 R9
      108 JUMP                             ; [+4]
      109 GETUPVAL                         R13 1
      110 GETTABLEKS                       R13 R13 K16 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
      112 GETTABLE                         R12 R13 R9
      113 GETUPVAL                         R13 0
      114 GETTABLEKS                       R13 R13 K17 ["isAllowedUGCAssetType"]
      116 MOVE                             R14 R12
      117 MOVE                             R15 R3
      118 CALL                             R13 2 1
      119 JUMPIFNOT                        R13 ; [+20]
      120 GETTABLE                         R13 R5 R12
      121 JUMPIFNOTEQKNIL                  R13 ; [+8]
      123 NEWTABLE                         R13 0 1
      125 MOVE                             R14 R11
      126 SETLIST                          R13 R14 1 [1]
      128 SETTABLE                         R13 R5 R12
      129 JUMP                             ; [+10]
      130 GETUPVAL                         R13 4
      131 GETTABLEKS                       R13 R13 K18 ["append"]
      133 GETTABLE                         R14 R5 R12
      134 NEWTABLE                         R15 0 1
      136 MOVE                             R16 R11
      137 SETLIST                          R15 R16 1 [1]
      139 CALL                             R13 2 0
      140 FORGLOOP                         R6 2 ; [-94]
      142 RETURN                           R5 1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getUGCBundlePartsAssetTypeMap"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R3
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R8 K1 ["Name"]
       19 GETTABLE                         R11 R4 R10
       20 JUMPIFEQKNIL                     R11 ; [+4]
       22 ADDK                             R12 R11 K2 [1]
       23 SETTABLE                         R12 R4 R10
       24 JUMP                             ; [+2]
       25 LOADN                            R12 1
       26 SETTABLE                         R12 R4 R10
       27 FORGLOOP                         R5 1 ; [-11]
       29 RETURN                           R4 1

PROTO_28:
        0 NEWTABLE                         R3 0 0
        2 LOADK                            R6 K0 ["Model"]
        3 NAMECALL                         R4 R0 K1 ["IsA"]
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+2]
        7 LOADNIL                          R4
        8 RETURN                           R4 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["getAllowedAssetTypeEnumsForBundle"]
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K3 ["UGC_BUNDLE_PARTS"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 MOVE                             R12 R9
       22 NAMECALL                         R10 R0 K4 ["FindFirstChild"]
       24 CALL                             R10 2 1
       25 JUMPIFEQKNIL                     R10 ; [+32]
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R12 R12 K5 ["UGC_BUNDLE_PART_NAMES_TO_ASSET_TYPE"]
       30 GETTABLE                         R11 R12 R8
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R12 R12 K6 ["isAllowedUGCAssetType"]
       34 MOVE                             R13 R11
       35 MOVE                             R14 R4
       36 CALL                             R12 2 1
       37 JUMPIFNOT                        R12 ; [+20]
       38 GETTABLE                         R12 R3 R11
       39 JUMPIFNOTEQKNIL                  R12 ; [+8]
       41 NEWTABLE                         R12 0 1
       43 MOVE                             R13 R10
       44 SETLIST                          R12 R13 1 [1]
       46 SETTABLE                         R12 R3 R11
       47 JUMP                             ; [+10]
       48 GETUPVAL                         R12 2
       49 GETTABLEKS                       R12 R12 K7 ["append"]
       51 GETTABLE                         R13 R3 R11
       52 NEWTABLE                         R14 0 1
       54 MOVE                             R15 R10
       55 SETLIST                          R14 R15 1 [1]
       57 CALL                             R12 2 0
       58 FORGLOOP                         R5 2 ; [-38]
       60 JUMPIFNOTEQKNIL                  R3 ; [+3]
       62 LOADNIL                          R5
       63 RETURN                           R5 1
       64 NEWTABLE                         R5 0 0
       66 MOVE                             R6 R3
       67 LOADNIL                          R7
       68 LOADNIL                          R8
       69 FORGPREP                         R6
       70 SETTABLE                         R10 R5 R9
       71 FORGLOOP                         R6 2 ; [-2]
       73 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["AssetConfigConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["AvatarAnimationBundleUtil"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["SharedFlags"]
       27 GETTABLEKS                       R5 R5 K10 ["getFFlagEnableUGCBundleUploadBodyScale"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R0 K11 ["Packages"]
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R5 K12 ["Cryo"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R5 K13 ["Dash"]
       41 CALL                             R7 1 1
       42 DUPCLOSURE                       R8 K14 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 DUPCLOSURE                       R9 K15 [PROTO_1]
       45 CAPTURE                          VAL R2
       46 DUPCLOSURE                       R10 K16 [PROTO_2]
       47 CAPTURE                          VAL R2
       48 DUPCLOSURE                       R11 K17 [PROTO_3]
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R12 32 0
       52 DUPCLOSURE                       R13 K18 [PROTO_4]
       53 CAPTURE                          VAL R12
       54 SETTABLEKS                       R13 R12 K19 ["getUGCBodyBundleAssetQuantities"]
       56 DUPCLOSURE                       R13 K20 [PROTO_6]
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R13 R12 K21 ["getBodyScaleValues"]
       60 MOVE                             R13 R4
       61 CALL                             R13 0 1
       62 JUMPIFNOT                        R13 ; [+9]
       63 DUPCLOSURE                       R13 K22 [PROTO_7]
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R13 R12 K23 ["getBodyScaleType"]
       67 DUPCLOSURE                       R13 K24 [PROTO_8]
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R13 R12 K25 ["ValidateScaleSettings"]
       72 DUPCLOSURE                       R13 K26 [PROTO_9]
       73 SETTABLEKS                       R13 R12 K27 ["getBodyColorSet"]
       75 DUPCLOSURE                       R13 K28 [PROTO_10]
       76 CAPTURE                          VAL R12
       77 SETTABLEKS                       R13 R12 K29 ["ValidateBodyColors"]
       79 DUPCLOSURE                       R13 K30 [PROTO_11]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R12
       82 SETTABLEKS                       R13 R12 K31 ["ValidateBody"]
       84 DUPCLOSURE                       R13 K32 [PROTO_12]
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R13 R12 K33 ["getUGCBundleTypeFromString"]
       88 DUPCLOSURE                       R13 K34 [PROTO_13]
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R13 R12 K35 ["getAllowedAssetTypeSettingsForBundle"]
       92 DUPCLOSURE                       R13 K36 [PROTO_14]
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R2
       95 SETTABLEKS                       R13 R12 K37 ["getAllowedAssetTypeEnumsForBundle"]
       97 DUPCLOSURE                       R13 K38 [PROTO_15]
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R13 R12 K39 ["getAllowedAssetTypeEnumsForBundleWithSettings"]
      102 DUPCLOSURE                       R13 K40 [PROTO_16]
      103 SETTABLEKS                       R13 R12 K41 ["isAllowedUGCAssetType"]
      105 DUPCLOSURE                       R13 K42 [PROTO_17]
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R7
      109 SETTABLEKS                       R13 R12 K43 ["getUGCBodyPartsAssetTypeMap"]
      111 DUPCLOSURE                       R13 K44 [PROTO_18]
      112 CAPTURE                          VAL R2
      113 SETTABLEKS                       R13 R12 K45 ["AssetTypeRequiresFolderForUpload"]
      115 DUPCLOSURE                       R13 K46 [PROTO_19]
      116 CAPTURE                          VAL R12
      117 SETTABLEKS                       R13 R12 K47 ["createUGCBodyPartFolders"]
      119 DUPCLOSURE                       R13 K48 [PROTO_20]
      120 CAPTURE                          VAL R2
      121 SETTABLEKS                       R13 R12 K49 ["getLocalizedUGCBundleName"]
      123 DUPCLOSURE                       R13 K50 [PROTO_21]
      124 CAPTURE                          VAL R12
      125 SETTABLEKS                       R13 R12 K51 ["getOptionalAssetTypesForBundle"]
      127 DUPCLOSURE                       R13 K52 [PROTO_22]
      128 CAPTURE                          VAL R12
      129 SETTABLEKS                       R13 R12 K53 ["getOptionalBodyPartsNotFound"]
      131 DUPCLOSURE                       R13 K54 [PROTO_23]
      132 CAPTURE                          VAL R12
      133 SETTABLEKS                       R13 R12 K55 ["getAllowedAssetTypesByBundleType"]
      135 DUPCLOSURE                       R13 K56 [PROTO_24]
      136 CAPTURE                          VAL R2
      137 SETTABLEKS                       R13 R12 K57 ["getUnknownMeshPartNames"]
      139 DUPCLOSURE                       R13 K58 [PROTO_25]
      140 CAPTURE                          VAL R2
      141 SETTABLEKS                       R13 R12 K59 ["getAvatarAssetTypeAsString"]
      143 DUPCLOSURE                       R13 K60 [PROTO_26]
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R7
      149 SETTABLEKS                       R13 R12 K61 ["getUGCBundlePartsAssetTypeMap"]
      151 DUPCLOSURE                       R13 K62 [PROTO_27]
      152 CAPTURE                          VAL R12
      153 SETTABLEKS                       R13 R12 K63 ["getUGCBundleAssetQuantities"]
      155 DUPCLOSURE                       R13 K64 [PROTO_28]
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R7
      159 SETTABLEKS                       R13 R12 K65 ["createUGCShoesPartFolders"]
      161 RETURN                           R12 1
