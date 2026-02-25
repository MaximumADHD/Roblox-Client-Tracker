PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADK                            R8 K0 ["Humanoid"]
        5 NAMECALL                         R6 R5 K1 ["FindFirstChildWhichIsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+6]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R7 R8 K2 ["addHumanoidToPreviewFolder"]
       12 MOVE                             R8 R6
       13 LOADB                            R9 1
       14 CALL                             R7 2 0
       15 FORGLOOP                         R1 2 ; [-12]
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R1
        2 GETIMPORT                        R6 K1 [game]
        4 LOADK                            R8 K2 ["AsyncRenamesUsedInLuaApps"]
        5 NAMECALL                         R6 R6 K3 ["GetEngineFeature"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+7]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R7 R4 K4 ["outfitId"]
       12 NAMECALL                         R5 R5 K5 ["GetHumanoidDescriptionFromOutfitIdAsync"]
       14 CALL                             R5 2 1
       15 JUMP                             ; [+6]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R7 R4 K4 ["outfitId"]
       19 NAMECALL                         R5 R5 K6 ["GetHumanoidDescriptionFromOutfitId"]
       21 CALL                             R5 2 1
       22 JUMPIF                           R5 ; [+11]
       23 LOADB                            R7 0
       24 GETTABLEKS                       R9 R4 K4 ["outfitId"]
       26 LOADK                            R10 K7 [" is not a valid outfitId"]
       27 CONCAT                           R8 R9 R10
       28 FASTCALL2                        ASSERT R7 R8 ; [+3]
       30 GETIMPORT                        R6 K9 [assert]
       32 CALL                             R6 2 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R6 R4 K10 ["accessories"]
       36 GETTABLEKS                       R7 R4 K11 ["keepDefaultAccessories"]
       38 JUMPIFNOT                        R7 ; [+32]
       39 LOADB                            R9 1
       40 NAMECALL                         R7 R5 K12 ["GetAccessories"]
       42 CALL                             R7 2 3
       43 FORGPREP                         R7
       44 GETTABLEKS                       R12 R11 K13 ["AccessoryType"]
       46 GETIMPORT                        R13 K16 [Enum.AccessoryType.Hair]
       48 JUMPIFEQ                         R12 R13 ; [+13]
       50 GETTABLEKS                       R12 R11 K13 ["AccessoryType"]
       52 GETIMPORT                        R13 K18 [Enum.AccessoryType.Eyebrow]
       54 JUMPIFEQ                         R12 R13 ; [+7]
       56 GETTABLEKS                       R12 R11 K13 ["AccessoryType"]
       58 GETIMPORT                        R13 K20 [Enum.AccessoryType.Eyelash]
       60 JUMPIFNOTEQ                      R12 R13 ; [+8]
       62 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       64 MOVE                             R13 R6
       65 MOVE                             R14 R11
       66 GETIMPORT                        R12 K23 [table.insert]
       68 CALL                             R12 2 0
       69 FORGLOOP                         R7 2 ; [-26]
       71 GETTABLEKS                       R7 R4 K24 ["shirtId"]
       73 JUMPIFNOT                        R7 ; [+4]
       74 GETTABLEKS                       R7 R4 K24 ["shirtId"]
       76 SETTABLEKS                       R7 R5 K25 ["Shirt"]
       78 GETTABLEKS                       R7 R4 K26 ["pantsId"]
       80 JUMPIFNOT                        R7 ; [+4]
       81 GETTABLEKS                       R7 R4 K26 ["pantsId"]
       83 SETTABLEKS                       R7 R5 K27 ["Pants"]
       85 MOVE                             R9 R6
       86 LOADB                            R10 1
       87 NAMECALL                         R7 R5 K28 ["SetAccessories"]
       89 CALL                             R7 3 0
       90 GETTABLEKS                       R7 R4 K29 ["scaleData"]
       92 JUMPIFNOT                        R7 ; [+26]
       93 GETTABLEKS                       R7 R4 K29 ["scaleData"]
       95 GETTABLEKS                       R8 R7 K30 ["BodyTypeScale"]
       97 SETTABLEKS                       R8 R5 K30 ["BodyTypeScale"]
       99 GETTABLEKS                       R8 R7 K31 ["DepthScale"]
      101 SETTABLEKS                       R8 R5 K31 ["DepthScale"]
      103 GETTABLEKS                       R8 R7 K32 ["HeadScale"]
      105 SETTABLEKS                       R8 R5 K32 ["HeadScale"]
      107 GETTABLEKS                       R8 R7 K33 ["HeightScale"]
      109 SETTABLEKS                       R8 R5 K33 ["HeightScale"]
      111 GETTABLEKS                       R8 R7 K34 ["ProportionScale"]
      113 SETTABLEKS                       R8 R5 K34 ["ProportionScale"]
      115 GETTABLEKS                       R8 R7 K35 ["WidthScale"]
      117 SETTABLEKS                       R8 R5 K35 ["WidthScale"]
      119 GETTABLEKS                       R7 R4 K36 ["defaultHumanoidRigType"]
      121 GETIMPORT                        R8 K39 [Enum.GameAvatarType.R15]
      123 JUMPIFNOTEQ                      R2 R8 ; [+4]
      125 GETIMPORT                        R7 K41 [Enum.HumanoidRigType.R15]
      127 JUMP                             ; [+6]
      128 GETIMPORT                        R8 K43 [Enum.GameAvatarType.R6]
      130 JUMPIFNOTEQ                      R2 R8 ; [+3]
      132 GETIMPORT                        R7 K44 [Enum.HumanoidRigType.R6]
      134 GETIMPORT                        R9 K1 [game]
      136 LOADK                            R11 K2 ["AsyncRenamesUsedInLuaApps"]
      137 NAMECALL                         R9 R9 K3 ["GetEngineFeature"]
      139 CALL                             R9 2 1
      140 JUMPIFNOT                        R9 ; [+7]
      141 GETUPVAL                         R8 1
      142 MOVE                             R10 R5
      143 MOVE                             R11 R7
      144 NAMECALL                         R8 R8 K45 ["CreateHumanoidModelFromDescriptionAsync"]
      146 CALL                             R8 3 1
      147 JUMP                             ; [+6]
      148 GETUPVAL                         R8 1
      149 MOVE                             R10 R5
      150 MOVE                             R11 R7
      151 NAMECALL                         R8 R8 K46 ["CreateHumanoidModelFromDescription"]
      153 CALL                             R8 3 1
      154 SETTABLEKS                       R1 R8 K47 ["Name"]
      156 GETTABLEKS                       R9 R4 K48 ["insertionOrder"]
      158 SETTABLE                         R8 R0 R9
      159 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["avatarRules"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["all"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K2 ["try"]
       12 GETUPVAL                         R5 2
       13 MOVE                             R6 R2
       14 GETUPVAL                         R9 3
       15 GETTABLEKS                       R8 R9 K3 ["MagmaFiend"]
       17 GETTABLEKS                       R7 R8 K4 ["name"]
       19 GETTABLEKS                       R8 R1 K5 ["AvatarType"]
       21 MOVE                             R9 R0
       22 CALL                             R4 5 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K2 ["try"]
       26 GETUPVAL                         R6 2
       27 MOVE                             R7 R2
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R9 R10 K6 ["DennisAvatar"]
       31 GETTABLEKS                       R8 R9 K4 ["name"]
       33 GETTABLEKS                       R9 R1 K5 ["AvatarType"]
       35 MOVE                             R10 R0
       36 CALL                             R5 5 1
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K2 ["try"]
       40 GETUPVAL                         R7 2
       41 MOVE                             R8 R2
       42 GETUPVAL                         R11 3
       43 GETTABLEKS                       R10 R11 K7 ["Roxie"]
       45 GETTABLEKS                       R9 R10 K4 ["name"]
       47 GETTABLEKS                       R10 R1 K5 ["AvatarType"]
       49 MOVE                             R11 R0
       50 CALL                             R6 5 1
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R7 R8 K2 ["try"]
       54 GETUPVAL                         R8 2
       55 MOVE                             R9 R2
       56 GETUPVAL                         R12 3
       57 GETTABLEKS                       R11 R12 K8 ["JunkBot"]
       59 GETTABLEKS                       R10 R11 K4 ["name"]
       61 GETTABLEKS                       R11 R1 K5 ["AvatarType"]
       63 MOVE                             R12 R0
       64 CALL                             R7 5 -1
       65 CALL                             R3 -1 1
       66 NAMECALL                         R3 R3 K9 ["expect"]
       68 CALL                             R3 1 0
       69 GETUPVAL                         R4 4
       70 GETTABLEKS                       R3 R4 K10 ["addHumanoidsToPreviewFolder"]
       72 MOVE                             R4 R2
       73 CALL                             R3 1 0
       74 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 MOVE                             R3 R2
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETIMPORT                        R8 K1 [workspace]
        9 SETTABLEKS                       R8 R7 K2 ["Parent"]
       11 FORGLOOP                         R3 2 ; [-5]
       13 GETUPVAL                         R3 1
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K3 ["placeAvatars"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 JUMP                             ; [+5]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K4 ["placeAvatars_DEPRECATED"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 MOVE                             R3 R2
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 FORGPREP                         R3
       31 SETTABLEKS                       R0 R7 K2 ["Parent"]
       33 FORGLOOP                         R3 2 ; [-3]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R3 R4 K5 ["avatarAccessoryRules"]
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+12]
       40 JUMPIFNOTEQKS                    R1 K6 ["Accessories"] ; [+11]
       42 GETTABLEKS                       R4 R3 K7 ["AccessoryMode"]
       44 GETIMPORT                        R5 K11 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
       46 JUMPIFEQ                         R4 R5 ; [+5]
       48 GETUPVAL                         R4 4
       49 LOADB                            R5 1
       50 MOVE                             R6 R1
       51 CALL                             R4 2 0
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R4 R5 K12 ["avatarClothingRules"]
       55 CALL                             R4 0 1
       56 JUMPIFNOT                        R4 ; [+12]
       57 JUMPIFNOTEQKS                    R1 K13 ["Clothing"] ; [+11]
       59 GETTABLEKS                       R5 R4 K14 ["ClothingMode"]
       61 GETIMPORT                        R6 K16 [Enum.AvatarSettingsClothingMode.PlayerChoice]
       63 JUMPIFEQ                         R5 R6 ; [+5]
       65 GETUPVAL                         R5 4
       66 LOADB                            R6 1
       67 MOVE                             R7 R1
       68 CALL                             R5 2 0
       69 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Players"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R6 R0 K10 ["Src"]
       17 GETTABLEKS                       R5 R6 K11 ["Util"]
       19 GETTABLEKS                       R4 R5 K12 ["AvatarPreview"]
       21 GETTABLEKS                       R3 R4 K13 ["AvatarPreviewConstants"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R5 R0 K14 ["Packages"]
       28 GETTABLEKS                       R4 R5 K15 ["Promise"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R9 R0 K10 ["Src"]
       35 GETTABLEKS                       R8 R9 K11 ["Util"]
       37 GETTABLEKS                       R7 R8 K16 ["BridgingFiles"]
       39 GETTABLEKS                       R6 R7 K17 ["AssetDmFiles"]
       41 GETTABLEKS                       R5 R6 K18 ["assetDmUtils"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K9 [require]
       46 GETTABLEKS                       R8 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R8 K19 ["Flags"]
       50 GETTABLEKS                       R6 R7 K20 ["getFFlagImprovePreviewPositioning"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K9 [require]
       55 GETTABLEKS                       R10 R0 K10 ["Src"]
       57 GETTABLEKS                       R9 R10 K11 ["Util"]
       59 GETTABLEKS                       R8 R9 K12 ["AvatarPreview"]
       61 GETTABLEKS                       R7 R8 K21 ["placeAvatars"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K9 [require]
       66 GETTABLEKS                       R11 R0 K10 ["Src"]
       68 GETTABLEKS                       R10 R11 K11 ["Util"]
       70 GETTABLEKS                       R9 R10 K12 ["AvatarPreview"]
       72 GETTABLEKS                       R8 R9 K22 ["previewFolderUtils"]
       74 CALL                             R7 1 1
       75 GETIMPORT                        R8 K9 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Src"]
       79 GETTABLEKS                       R11 R12 K11 ["Util"]
       81 GETTABLEKS                       R10 R11 K12 ["AvatarPreview"]
       83 GETTABLEKS                       R9 R10 K23 ["showBounds"]
       85 CALL                             R8 1 1
       86 GETIMPORT                        R9 K9 [require]
       88 GETTABLEKS                       R12 R0 K10 ["Src"]
       90 GETTABLEKS                       R11 R12 K11 ["Util"]
       92 GETTABLEKS                       R10 R11 K24 ["AvatarSettingsProviderTypes"]
       94 CALL                             R9 1 1
       95 NEWTABLE                         R10 2 0
       97 DUPCLOSURE                       R11 K25 [PROTO_0]
       98 CAPTURE                          VAL R7
       99 SETTABLEKS                       R11 R10 K26 ["addHumanoidsToPreviewFolder"]
      101 DUPCLOSURE                       R11 K27 [PROTO_1]
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R1
      104 DUPCLOSURE                       R12 K28 [PROTO_2]
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R10
      110 DUPCLOSURE                       R13 K29 [PROTO_3]
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R8
      116 SETTABLEKS                       R13 R10 K30 ["insertToFolder"]
      118 RETURN                           R10 1
