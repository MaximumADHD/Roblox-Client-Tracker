PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["HeadColor"]
        2 SETTABLEKS                       R1 R0 K1 ["TorsoColor"]
        4 SETTABLEKS                       R1 R0 K2 ["LeftArmColor"]
        6 SETTABLEKS                       R1 R0 K3 ["RightArmColor"]
        8 SETTABLEKS                       R1 R0 K4 ["LeftLegColor"]
       10 SETTABLEKS                       R1 R0 K5 ["RightLegColor"]
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
        3 GETTABLEKS                       R4 R0 K1 ["AssetType"]
        5 GETTABLE                         R2 R3 R4
        6 LOADK                            R4 K2 ["No known accessory type for %*"]
        7 GETTABLEKS                       R6 R0 K1 ["AssetType"]
        9 NAMECALL                         R4 R4 K3 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 FASTCALL2                        ASSERT R2 R3 ; [+3]
       15 GETIMPORT                        R1 K5 [assert]
       17 CALL                             R1 2 1
       18 DUPTABLE                         R2 K9 [{"AccessoryType", "AssetId", "Order"}]
       19 SETTABLEKS                       R1 R2 K6 ["AccessoryType"]
       21 GETTABLEKS                       R3 R0 K7 ["AssetId"]
       23 SETTABLEKS                       R3 R2 K7 ["AssetId"]
       25 GETTABLEKS                       R3 R0 K8 ["Order"]
       27 SETTABLEKS                       R3 R2 K8 ["Order"]
       29 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_1]
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_3:
        0 NAMECALL                         R5 R0 K0 ["Clone"]
        2 CALL                             R5 1 1
        3 MOVE                             R6 R1
        4 LOADNIL                          R7
        5 LOADNIL                          R8
        6 FORGPREP                         R6
        7 GETTABLEKS                       R11 R9 K1 ["Name"]
        9 SETTABLE                         R10 R5 R11
       10 FORGLOOP                         R6 2 ; [-4]
       12 GETUPVAL                         R6 0
       13 CALL                             R6 0 1
       14 JUMPIFNOT                        R6 ; [+18]
       15 GETIMPORT                        R8 K6 [Enum.AssetType.Shirt]
       17 GETTABLE                         R7 R4 R8
       18 ORK                              R6 R7 K2 [0]
       19 SETTABLEKS                       R6 R5 K5 ["Shirt"]
       21 GETIMPORT                        R8 K8 [Enum.AssetType.Pants]
       23 GETTABLE                         R7 R4 R8
       24 ORK                              R6 R7 K2 [0]
       25 SETTABLEKS                       R6 R5 K7 ["Pants"]
       27 GETIMPORT                        R8 K10 [Enum.AssetType.TShirt]
       29 GETTABLE                         R7 R4 R8
       30 ORK                              R6 R7 K2 [0]
       31 SETTABLEKS                       R6 R5 K11 ["GraphicTShirt"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K12 ["map"]
       36 MOVE                             R9 R2
       37 DUPCLOSURE                       R10 K13 [PROTO_1]
       38 CAPTURE                          UPVAL U2
       39 CALL                             R8 2 1
       40 LOADB                            R9 1
       41 NAMECALL                         R6 R5 K14 ["SetAccessories"]
       43 CALL                             R6 3 0
       44 MOVE                             R6 R3
       45 LOADNIL                          R7
       46 LOADNIL                          R8
       47 FORGPREP                         R6
       48 GETIMPORT                        R11 K17 [Instance.new]
       50 LOADK                            R12 K18 ["MakeupDescription"]
       51 CALL                             R11 1 1
       52 GETTABLEKS                       R12 R10 K19 ["AssetId"]
       54 JUMPIFEQKNIL                     R12 ; [+6]
       56 GETTABLEKS                       R12 R10 K19 ["AssetId"]
       58 SETTABLEKS                       R12 R11 K19 ["AssetId"]
       60 JUMP                             ; [+4]
       61 GETTABLEKS                       R12 R10 K15 ["Instance"]
       63 SETTABLEKS                       R12 R11 K15 ["Instance"]
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R13 R13 K20 ["ASSET_TYPE_TO_MAKEUP_TYPE"]
       68 GETTABLEKS                       R14 R10 K4 ["AssetType"]
       70 GETTABLE                         R12 R13 R14
       71 SETTABLEKS                       R12 R11 K21 ["MakeupType"]
       73 GETTABLEKS                       R13 R10 K22 ["Order"]
       75 ORK                              R12 R13 K2 [0]
       76 SETTABLEKS                       R12 R11 K22 ["Order"]
       78 SETTABLEKS                       R5 R11 K23 ["Parent"]
       80 FORGLOOP                         R6 2 ; [-33]
       82 RETURN                           R5 1

PROTO_4:
        0 DUPTABLE                         R2 K2 [{"AssetId", "AssetType"}]
        1 SETTABLEKS                       R1 R2 K0 ["AssetId"]
        3 SETTABLEKS                       R0 R2 K1 ["AssetType"]
        5 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["includeAccessories"]
        6 JUMPIF                           R0 ; [+3]
        7 NEWTABLE                         R0 0 0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["List"]
       13 GETTABLEKS                       R0 R0 K2 ["join"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K3 ["avatarAssets"]
       18 GETTABLEKS                       R1 R1 K4 ["clothing"]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K5 ["collectArray"]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K3 ["avatarAssets"]
       26 GETTABLEKS                       R3 R3 K6 ["accessories"]
       28 DUPCLOSURE                       R4 K7 [PROTO_4]
       29 CALL                             R2 2 -1
       30 CALL                             R0 -1 -1
       31 RETURN                           R0 -1

PROTO_6:
        0 DUPTABLE                         R2 K2 [{"AssetId", "AssetType"}]
        1 SETTABLEKS                       R1 R2 K0 ["AssetId"]
        3 SETTABLEKS                       R0 R2 K1 ["AssetType"]
        5 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["isHidden"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K1 ["makeup"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["item"]
        2 GETTABLEKS                       R2 R2 K1 ["source"]
        4 JUMPIFNOTEQKS                    R2 K2 ["builtin"] ; [+17]
        6 DUPTABLE                         R2 K6 [{"AssetId", "AssetType", "Order"}]
        7 GETTABLEKS                       R3 R0 K0 ["item"]
        9 GETTABLEKS                       R3 R3 K7 ["builtinItem"]
       11 SETTABLEKS                       R3 R2 K3 ["AssetId"]
       13 GETTABLEKS                       R3 R0 K8 ["palette"]
       15 GETTABLEKS                       R3 R3 K9 ["PublishAssetType"]
       17 SETTABLEKS                       R3 R2 K4 ["AssetType"]
       19 SETTABLEKS                       R1 R2 K5 ["Order"]
       21 RETURN                           R2 1
       22 GETTABLEKS                       R2 R0 K0 ["item"]
       24 GETTABLEKS                       R2 R2 K1 ["source"]
       26 JUMPIFNOTEQKS                    R2 K10 ["marketplace"] ; [+17]
       28 DUPTABLE                         R2 K6 [{"AssetId", "AssetType", "Order"}]
       29 GETTABLEKS                       R3 R0 K0 ["item"]
       31 GETTABLEKS                       R3 R3 K11 ["marketplaceItem"]
       33 SETTABLEKS                       R3 R2 K3 ["AssetId"]
       35 GETTABLEKS                       R3 R0 K8 ["palette"]
       37 GETTABLEKS                       R3 R3 K9 ["PublishAssetType"]
       39 SETTABLEKS                       R3 R2 K4 ["AssetType"]
       41 SETTABLEKS                       R1 R2 K5 ["Order"]
       43 RETURN                           R2 1
       44 DUPTABLE                         R2 K13 [{"Instance", "AssetType", "Order"}]
       45 GETTABLEKS                       R3 R0 K0 ["item"]
       47 GETTABLEKS                       R3 R3 K14 ["instance"]
       49 SETTABLEKS                       R3 R2 K12 ["Instance"]
       51 GETTABLEKS                       R3 R0 K8 ["palette"]
       53 GETTABLEKS                       R3 R3 K9 ["PublishAssetType"]
       55 SETTABLEKS                       R3 R2 K4 ["AssetType"]
       57 SETTABLEKS                       R1 R2 K5 ["Order"]
       59 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["includeAccessories"]
        6 JUMPIF                           R0 ; [+3]
        7 NEWTABLE                         R0 0 0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["map"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["filter"]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K3 ["equippedItems"]
       19 DUPCLOSURE                       R3 K4 [PROTO_7]
       20 CAPTURE                          UPVAL U3
       21 CALL                             R1 2 1
       22 DUPCLOSURE                       R2 K5 [PROTO_8]
       23 CALL                             R0 2 -1
       24 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["HumanoidDescription"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K4 ["avatarAssets"]
        7 GETTABLEKS                       R1 R1 K5 ["skinTone"]
        9 JUMPIFEQKNIL                     R1 ; [+20]
       11 MOVE                             R1 R0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["avatarAssets"]
       15 GETTABLEKS                       R2 R2 K5 ["skinTone"]
       17 SETTABLEKS                       R2 R1 K6 ["HeadColor"]
       19 SETTABLEKS                       R2 R1 K7 ["TorsoColor"]
       21 SETTABLEKS                       R2 R1 K8 ["LeftArmColor"]
       23 SETTABLEKS                       R2 R1 K9 ["RightArmColor"]
       25 SETTABLEKS                       R2 R1 K10 ["LeftLegColor"]
       27 SETTABLEKS                       R2 R1 K11 ["RightLegColor"]
       29 JUMP                             ; [+62]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K12 ["WorldModel"]
       33 LOADK                            R3 K13 ["BodyColors"]
       34 NAMECALL                         R1 R1 K14 ["FindFirstChildWhichIsA"]
       36 CALL                             R1 2 1
       37 JUMPIFNOTEQKNIL                  R1 ; [+18]
       39 MOVE                             R2 R0
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R3 R3 K15 ["DEFAULT_SKIN_TONE"]
       43 SETTABLEKS                       R3 R2 K6 ["HeadColor"]
       45 SETTABLEKS                       R3 R2 K7 ["TorsoColor"]
       47 SETTABLEKS                       R3 R2 K8 ["LeftArmColor"]
       49 SETTABLEKS                       R3 R2 K9 ["RightArmColor"]
       51 SETTABLEKS                       R3 R2 K10 ["LeftLegColor"]
       53 SETTABLEKS                       R3 R2 K11 ["RightLegColor"]
       55 JUMP                             ; [+36]
       56 LOADK                            R5 K13 ["BodyColors"]
       57 NAMECALL                         R3 R1 K16 ["IsA"]
       59 CALL                             R3 2 1
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K17 ["LUAU_ANALYZE_ERROR"]
       63 FASTCALL2                        ASSERT R3 R4 ; [+3]
       65 GETIMPORT                        R2 K19 [assert]
       67 CALL                             R2 2 0
       68 GETTABLEKS                       R2 R1 K20 ["HeadColor3"]
       70 SETTABLEKS                       R2 R0 K6 ["HeadColor"]
       72 GETTABLEKS                       R2 R1 K21 ["TorsoColor3"]
       74 SETTABLEKS                       R2 R0 K7 ["TorsoColor"]
       76 GETTABLEKS                       R2 R1 K22 ["LeftArmColor3"]
       78 SETTABLEKS                       R2 R0 K8 ["LeftArmColor"]
       80 GETTABLEKS                       R2 R1 K23 ["RightArmColor3"]
       82 SETTABLEKS                       R2 R0 K9 ["RightArmColor"]
       84 GETTABLEKS                       R2 R1 K24 ["LeftLegColor3"]
       86 SETTABLEKS                       R2 R0 K10 ["LeftLegColor"]
       88 GETTABLEKS                       R2 R1 K25 ["RightLegColor3"]
       90 SETTABLEKS                       R2 R0 K11 ["RightLegColor"]
       92 GETUPVAL                         R1 3
       93 MOVE                             R2 R0
       94 GETUPVAL                         R3 0
       95 GETTABLEKS                       R3 R3 K4 ["avatarAssets"]
       97 GETTABLEKS                       R3 R3 K26 ["patches"]
       99 GETUPVAL                         R4 4
      100 GETUPVAL                         R5 5
      101 GETUPVAL                         R6 0
      102 GETTABLEKS                       R6 R6 K4 ["avatarAssets"]
      104 GETTABLEKS                       R6 R6 K27 ["classicClothing"]
      106 CALL                             R1 5 1
      107 MOVE                             R0 R1
      108 GETUPVAL                         R1 6
      109 MOVE                             R2 R0
      110 GETUPVAL                         R3 1
      111 GETTABLEKS                       R3 R3 K12 ["WorldModel"]
      113 GETTABLEKS                       R3 R3 K28 ["Humanoid"]
      115 CALL                             R1 2 0
      116 GETUPVAL                         R1 7
      117 CALL                             R1 0 1
      118 JUMPIFNOT                        R1 ; [+20]
      119 GETUPVAL                         R1 8
      120 JUMPIFNOT                        R1 ; [+3]
      121 GETUPVAL                         R1 8
      122 GETTABLEKS                       R1 R1 K29 ["resetIncludesBodyParts"]
      124 JUMPIFEQKNIL                     R1 ; [+14]
      126 GETUPVAL                         R2 8
      127 JUMPIFEQKNIL                     R2 ; [+11]
      129 GETUPVAL                         R2 8
      130 GETTABLEKS                       R2 R2 K29 ["resetIncludesBodyParts"]
      132 JUMPIFEQKNIL                     R2 ; [+6]
      134 GETUPVAL                         R2 8
      135 GETTABLEKS                       R2 R2 K29 ["resetIncludesBodyParts"]
      137 SETTABLEKS                       R2 R0 K30 ["ResetIncludesBodyParts"]
      139 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 2
        6 JUMPIFNOT                        R5 ; [+26]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U4
       15 NEWTABLE                         R6 0 3
       17 MOVE                             R7 R2
       18 JUMPIFNOT                        R7 ; [+2]
       19 GETTABLEKS                       R7 R2 K2 ["includeAccessories"]
       21 GETTABLEKS                       R8 R3 K3 ["avatarAssets"]
       23 GETTABLEKS                       R8 R8 K4 ["clothing"]
       25 GETTABLEKS                       R9 R3 K3 ["avatarAssets"]
       27 GETTABLEKS                       R9 R9 K5 ["accessories"]
       29 SETLIST                          R6 R7 3 [1]
       31 CALL                             R4 2 1
       32 JUMP                             ; [+19]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K6 ["List"]
       36 GETTABLEKS                       R4 R4 K7 ["join"]
       38 GETTABLEKS                       R5 R3 K3 ["avatarAssets"]
       40 GETTABLEKS                       R5 R5 K4 ["clothing"]
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K8 ["collectArray"]
       45 GETTABLEKS                       R7 R3 K3 ["avatarAssets"]
       47 GETTABLEKS                       R7 R7 K5 ["accessories"]
       49 DUPCLOSURE                       R8 K9 [PROTO_6]
       50 CALL                             R6 2 -1
       51 CALL                             R4 -1 1
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K1 ["useMemo"]
       55 NEWCLOSURE                       R6 P2
       56 CAPTURE                          VAL R2
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U5
       60 NEWTABLE                         R7 0 2
       62 MOVE                             R8 R2
       63 JUMPIFNOT                        R8 ; [+2]
       64 GETTABLEKS                       R8 R2 K2 ["includeAccessories"]
       66 GETTABLEKS                       R9 R3 K10 ["equippedItems"]
       68 SETLIST                          R7 R8 2 [1]
       70 CALL                             R5 2 1
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       74 NEWCLOSURE                       R7 P3
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          UPVAL U8
       82 CAPTURE                          UPVAL U9
       83 CAPTURE                          VAL R2
       84 GETUPVAL                         R8 3
       85 GETTABLEKS                       R8 R8 K6 ["List"]
       87 GETTABLEKS                       R8 R8 K7 ["join"]
       89 NEWTABLE                         R9 0 3
       91 GETTABLEKS                       R10 R3 K3 ["avatarAssets"]
       93 GETUPVAL                         R12 2
       94 JUMPIFNOT                        R12 ; [+2]
       95 MOVE                             R11 R4
       96 JUMP                             ; [+1]
       97 LOADNIL                          R11
       98 GETUPVAL                         R13 2
       99 JUMPIFNOT                        R13 ; [+5]
      100 MOVE                             R12 R2
      101 JUMPIFNOT                        R12 ; [+4]
      102 GETTABLEKS                       R12 R2 K11 ["resetIncludesBodyParts"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R12
      106 SETLIST                          R9 R10 3 [1]
      108 MOVE                             R10 R1
      109 CALL                             R8 2 -1
      110 CALL                             R6 -1 -1
      111 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["EquipmentStateContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K11 ["Util"]
       59 GETTABLEKS                       R8 R8 K15 ["copyHumanoidScaleToHumanoidDescription"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K11 ["Util"]
       68 GETTABLEKS                       R9 R9 K16 ["getItemAccessoryType"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Src"]
       75 GETTABLEKS                       R10 R10 K17 ["Flags"]
       77 GETTABLEKS                       R10 R10 K18 ["getFFlagAvatarPreviewerClassicClothingPalettes"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K10 ["Src"]
       84 GETTABLEKS                       R11 R11 K17 ["Flags"]
       86 GETTABLEKS                       R11 R11 K19 ["getFFlagAvatarPreviewerEditingTools"]
       88 CALL                             R10 1 1
       89 MOVE                             R11 R10
       90 CALL                             R11 0 1
       91 DUPCLOSURE                       R12 K20 [PROTO_0]
       92 DUPCLOSURE                       R13 K21 [PROTO_2]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R4
       95 DUPCLOSURE                       R14 K22 [PROTO_3]
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R4
       99 DUPCLOSURE                       R15 K23 [PROTO_11]
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R10
      110 RETURN                           R15 1
