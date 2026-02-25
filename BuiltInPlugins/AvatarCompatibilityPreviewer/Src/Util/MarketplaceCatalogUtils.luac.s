PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+2]
        7 RETURN                           R0 1
        8 GETTABLEKS                       R1 R0 K3 ["uniqueId"]
       10 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 NEWTABLE                         R8 0 0
       10 SETTABLE                         R8 R1 R7
       11 SETTABLE                         R7 R2 R7
       12 FORGLOOP                         R3 2 ; [-5]
       14 RETURN                           R1 2

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R5 R0
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R11 R9 K0 ["Id"]
       10 GETTABLE                         R10 R1 R11
       11 LOADB                            R11 1
       12 SETTABLEKS                       R11 R10 K1 ["hasAssociatedBundle"]
       14 NEWTABLE                         R10 0 0
       16 GETTABLEKS                       R11 R9 K0 ["Id"]
       18 DUPTABLE                         R12 K8 [{"itemId", "itemType", "name", "creatorName", "hasVerifiedBadge", "underlyingAssetIds"}]
       19 GETTABLEKS                       R13 R9 K0 ["Id"]
       21 SETTABLEKS                       R13 R12 K2 ["itemId"]
       23 LOADK                            R13 K9 ["Bundle"]
       24 SETTABLEKS                       R13 R12 K3 ["itemType"]
       26 GETTABLEKS                       R13 R9 K10 ["Name"]
       28 SETTABLEKS                       R13 R12 K4 ["name"]
       30 GETTABLEKS                       R13 R9 K11 ["CreatorName"]
       32 SETTABLEKS                       R13 R12 K5 ["creatorName"]
       34 GETTABLEKS                       R13 R9 K12 ["CreatorHasVerifiedBadge"]
       36 SETTABLEKS                       R13 R12 K6 ["hasVerifiedBadge"]
       38 SETTABLEKS                       R10 R12 K7 ["underlyingAssetIds"]
       40 SETTABLE                         R12 R4 R11
       41 GETTABLEKS                       R11 R9 K13 ["BundledItems"]
       43 LOADNIL                          R12
       44 LOADNIL                          R13
       45 FORGPREP                         R11
       46 GETTABLEKS                       R18 R15 K0 ["Id"]
       48 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
       50 MOVE                             R17 R10
       51 GETIMPORT                        R16 K16 [table.insert]
       53 CALL                             R16 2 0
       54 GETTABLEKS                       R16 R15 K0 ["Id"]
       56 GETTABLEKS                       R17 R9 K0 ["Id"]
       58 SETTABLE                         R17 R3 R16
       59 GETTABLEKS                       R16 R15 K0 ["Id"]
       61 GETTABLEKS                       R17 R15 K0 ["Id"]
       63 SETTABLE                         R17 R2 R16
       64 FORGLOOP                         R11 2 ; [-19]
       66 FORGLOOP                         R5 2 ; [-59]
       68 DUPTABLE                         R5 K20 [{"assetToBundle", "bundleRows", "assetFetchSet"}]
       69 SETTABLEKS                       R3 R5 K17 ["assetToBundle"]
       71 SETTABLEKS                       R4 R5 K18 ["bundleRows"]
       73 SETTABLEKS                       R2 R5 K19 ["assetFetchSet"]
       75 RETURN                           R5 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R6
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-8]
       15 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R6 R0 K0 ["Id"]
        2 GETTABLE                         R5 R1 R6
        3 JUMPIFNOTEQKNIL                  R5 ; [+18]
        5 GETTABLEKS                       R6 R0 K0 ["Id"]
        7 GETTABLE                         R5 R3 R6
        8 JUMPIFNOT                        R5 ; [+6]
        9 GETTABLEKS                       R6 R0 K0 ["Id"]
       11 GETTABLE                         R5 R3 R6
       12 LOADB                            R6 1
       13 SETTABLEKS                       R6 R5 K1 ["hasTypeError"]
       15 GETTABLEKS                       R5 R0 K2 ["AssetType"]
       17 LOADB                            R6 1
       18 SETTABLE                         R6 R4 R5
       19 LOADB                            R5 1
       20 LOADNIL                          R6
       21 RETURN                           R5 2
       22 GETTABLEKS                       R6 R0 K0 ["Id"]
       24 GETTABLE                         R5 R1 R6
       25 GETTABLE                         R6 R2 R5
       26 JUMPIF                           R6 ; [+2]
       27 NEWTABLE                         R6 0 0
       29 SETTABLE                         R6 R2 R5
       30 GETTABLE                         R6 R2 R5
       31 GETTABLEKS                       R7 R0 K2 ["AssetType"]
       33 GETTABLEKS                       R8 R0 K0 ["Id"]
       35 SETTABLE                         R8 R6 R7
       36 GETTABLE                         R7 R2 R5
       37 GETIMPORT                        R9 K5 [Enum.AssetType.LeftShoeAccessory]
       39 GETTABLEKS                       R8 R9 K6 ["Name"]
       41 GETTABLE                         R6 R7 R8
       42 JUMPIFNOT                        R6 ; [+76]
       43 GETTABLE                         R7 R2 R5
       44 GETIMPORT                        R9 K8 [Enum.AssetType.RightShoeAccessory]
       46 GETTABLEKS                       R8 R9 K6 ["Name"]
       48 GETTABLE                         R6 R7 R8
       49 JUMPIFNOT                        R6 ; [+69]
       50 GETUPVAL                         R6 0
       51 LOADK                            R7 K9 ["Shoes"]
       52 CALL                             R6 1 1
       53 JUMPIFNOTEQKNIL                  R6 ; [+2]
       55 LOADB                            R8 0 +1
       56 LOADB                            R8 1
       57 FASTCALL2K                       ASSERT R8 K10 ; [+4]
       59 LOADK                            R9 K10 ["Shoes palette does not exist when importing marketplace items"]
       60 GETIMPORT                        R7 K12 [assert]
       62 CALL                             R7 2 0
       63 GETTABLE                         R8 R2 R5
       64 GETIMPORT                        R10 K5 [Enum.AssetType.LeftShoeAccessory]
       66 GETTABLEKS                       R9 R10 K6 ["Name"]
       68 GETTABLE                         R7 R8 R9
       69 GETTABLE                         R9 R2 R5
       70 GETIMPORT                        R11 K8 [Enum.AssetType.RightShoeAccessory]
       72 GETTABLEKS                       R10 R11 K6 ["Name"]
       74 GETTABLE                         R8 R9 R10
       75 DUPTABLE                         R9 K22 [{"uniqueId", "marketplaceItem", "name", "palette", "assetType", "creatorTargetId", "creatorType", "creatorName", "hasVerifiedBadge"}]
       76 SETTABLEKS                       R7 R9 K13 ["uniqueId"]
       78 DUPTABLE                         R10 K25 [{"uniqueId", "left", "right"}]
       79 SETTABLEKS                       R7 R10 K13 ["uniqueId"]
       81 SETTABLEKS                       R7 R10 K23 ["left"]
       83 SETTABLEKS                       R8 R10 K24 ["right"]
       85 SETTABLEKS                       R10 R9 K14 ["marketplaceItem"]
       87 GETTABLEKS                       R10 R0 K6 ["Name"]
       89 SETTABLEKS                       R10 R9 K15 ["name"]
       91 SETTABLEKS                       R6 R9 K16 ["palette"]
       93 GETIMPORT                        R11 K26 [Enum.AssetType]
       95 GETTABLEKS                       R12 R0 K2 ["AssetType"]
       97 GETTABLE                         R10 R11 R12
       98 SETTABLEKS                       R10 R9 K17 ["assetType"]
      100 GETTABLEKS                       R10 R0 K27 ["CreatorTargetId"]
      102 SETTABLEKS                       R10 R9 K18 ["creatorTargetId"]
      104 GETTABLEKS                       R10 R0 K28 ["CreatorType"]
      106 SETTABLEKS                       R10 R9 K19 ["creatorType"]
      108 GETTABLEKS                       R10 R0 K29 ["CreatorName"]
      110 SETTABLEKS                       R10 R9 K20 ["creatorName"]
      112 GETTABLEKS                       R10 R0 K30 ["CreatorHasVerifiedBadge"]
      114 SETTABLEKS                       R10 R9 K21 ["hasVerifiedBadge"]
      116 LOADB                            R10 0
      117 MOVE                             R11 R9
      118 RETURN                           R10 2
      119 LOADB                            R6 0
      120 LOADNIL                          R7
      121 RETURN                           R6 2

PROTO_5:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["MARKETPLACE_ASSET_TYPE_TO_PALETTE_KEY"]
        3 GETTABLEKS                       R5 R0 K1 ["AssetType"]
        5 GETTABLE                         R3 R4 R5
        6 JUMPIF                           R3 ; [+17]
        7 GETTABLEKS                       R5 R0 K2 ["Id"]
        9 GETTABLE                         R4 R1 R5
       10 JUMPIFNOT                        R4 ; [+10]
       11 GETTABLEKS                       R5 R0 K2 ["Id"]
       13 GETTABLE                         R4 R1 R5
       14 LOADB                            R5 1
       15 SETTABLEKS                       R5 R4 K3 ["hasTypeError"]
       17 GETTABLEKS                       R4 R0 K1 ["AssetType"]
       19 LOADB                            R5 1
       20 SETTABLE                         R5 R2 R4
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 RETURN                           R4 2
       24 GETUPVAL                         R4 1
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKNIL                  R4 ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       33 LOADK                            R7 K4 ["Palette does not exist when importing valid marketplace item type"]
       34 GETIMPORT                        R5 K6 [assert]
       36 CALL                             R5 2 0
       37 LOADNIL                          R5
       38 GETTABLEKS                       R7 R0 K2 ["Id"]
       40 GETTABLE                         R6 R1 R7
       41 JUMPIFNOT                        R6 ; [+27]
       42 GETTABLEKS                       R7 R0 K2 ["Id"]
       44 GETTABLE                         R6 R1 R7
       45 LOADB                            R7 1
       46 SETTABLEKS                       R7 R6 K7 ["hasAssociatedAsset"]
       48 DUPTABLE                         R6 K13 [{"itemId", "itemType", "name", "creatorName", "hasVerifiedBadge"}]
       49 GETTABLEKS                       R7 R0 K2 ["Id"]
       51 SETTABLEKS                       R7 R6 K8 ["itemId"]
       53 LOADK                            R7 K14 ["Asset"]
       54 SETTABLEKS                       R7 R6 K9 ["itemType"]
       56 GETTABLEKS                       R7 R0 K15 ["Name"]
       58 SETTABLEKS                       R7 R6 K10 ["name"]
       60 GETTABLEKS                       R7 R0 K16 ["CreatorName"]
       62 SETTABLEKS                       R7 R6 K11 ["creatorName"]
       64 GETTABLEKS                       R7 R0 K17 ["CreatorHasVerifiedBadge"]
       66 SETTABLEKS                       R7 R6 K12 ["hasVerifiedBadge"]
       68 MOVE                             R5 R6
       69 DUPTABLE                         R6 K24 [{"uniqueId", "marketplaceItem", "name", "palette", "assetType", "creatorTargetId", "creatorType", "creatorName", "hasVerifiedBadge"}]
       70 GETTABLEKS                       R7 R0 K2 ["Id"]
       72 SETTABLEKS                       R7 R6 K18 ["uniqueId"]
       74 GETTABLEKS                       R7 R0 K2 ["Id"]
       76 SETTABLEKS                       R7 R6 K19 ["marketplaceItem"]
       78 GETTABLEKS                       R7 R0 K15 ["Name"]
       80 SETTABLEKS                       R7 R6 K10 ["name"]
       82 SETTABLEKS                       R4 R6 K20 ["palette"]
       84 GETIMPORT                        R8 K26 [Enum.AssetType]
       86 GETTABLEKS                       R9 R0 K1 ["AssetType"]
       88 GETTABLE                         R7 R8 R9
       89 SETTABLEKS                       R7 R6 K21 ["assetType"]
       91 GETTABLEKS                       R7 R0 K27 ["CreatorTargetId"]
       93 SETTABLEKS                       R7 R6 K22 ["creatorTargetId"]
       95 GETTABLEKS                       R7 R0 K28 ["CreatorType"]
       97 SETTABLEKS                       R7 R6 K23 ["creatorType"]
       99 GETTABLEKS                       R7 R0 K16 ["CreatorName"]
      101 SETTABLEKS                       R7 R6 K11 ["creatorName"]
      103 GETTABLEKS                       R7 R0 K17 ["CreatorHasVerifiedBadge"]
      105 SETTABLEKS                       R7 R6 K12 ["hasVerifiedBadge"]
      107 RETURN                           R5 2

PROTO_6:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 0 0
        6 LOADB                            R6 0
        7 NEWTABLE                         R7 0 0
        9 MOVE                             R8 R0
       10 LOADNIL                          R9
       11 LOADNIL                          R10
       12 FORGPREP                         R8
       13 LOADB                            R13 1
       14 GETTABLEKS                       R14 R12 K0 ["AssetType"]
       16 GETIMPORT                        R16 K3 [Enum.AssetType.LeftShoeAccessory]
       18 GETTABLEKS                       R15 R16 K4 ["Name"]
       20 JUMPIFEQ                         R14 R15 ; [+11]
       22 GETTABLEKS                       R14 R12 K0 ["AssetType"]
       24 GETIMPORT                        R16 K6 [Enum.AssetType.RightShoeAccessory]
       26 GETTABLEKS                       R15 R16 K4 ["Name"]
       28 JUMPIFEQ                         R14 R15 ; [+2]
       30 LOADB                            R13 0 +1
       31 LOADB                            R13 1
       32 JUMPIFNOT                        R13 ; [+16]
       33 GETUPVAL                         R15 0
       34 GETTABLEKS                       R14 R15 K7 ["processShoeAsset"]
       36 MOVE                             R15 R12
       37 MOVE                             R16 R1
       38 MOVE                             R17 R7
       39 MOVE                             R18 R2
       40 MOVE                             R19 R5
       41 CALL                             R14 5 2
       42 JUMPIFNOT                        R14 ; [+1]
       43 LOADB                            R6 1
       44 JUMPIFNOT                        R15 ; [+19]
       45 GETTABLEKS                       R16 R15 K8 ["uniqueId"]
       47 SETTABLE                         R15 R4 R16
       48 JUMP                             ; [+15]
       49 GETUPVAL                         R15 0
       50 GETTABLEKS                       R14 R15 K9 ["processRegularAsset"]
       52 MOVE                             R15 R12
       53 MOVE                             R16 R2
       54 MOVE                             R17 R5
       55 CALL                             R14 3 2
       56 JUMPIFNOT                        R14 ; [+3]
       57 GETTABLEKS                       R16 R12 K10 ["Id"]
       59 SETTABLE                         R14 R3 R16
       60 JUMPIFNOT                        R15 ; [+3]
       61 GETTABLEKS                       R16 R12 K10 ["Id"]
       63 SETTABLE                         R15 R4 R16
       64 FORGLOOP                         R8 2 ; [-52]
       66 DUPTABLE                         R8 K15 [{"assetRows", "marketplaceItems", "invalidAssetTypes", "individualShoesFound"}]
       67 SETTABLEKS                       R3 R8 K11 ["assetRows"]
       69 SETTABLEKS                       R4 R8 K12 ["marketplaceItems"]
       71 SETTABLEKS                       R5 R8 K13 ["invalidAssetTypes"]
       73 SETTABLEKS                       R6 R8 K14 ["individualShoesFound"]
       75 RETURN                           R8 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["hasAssociatedAsset"]
        8 JUMPIF                           R7 ; [+13]
        9 GETTABLEKS                       R7 R6 K1 ["hasAssociatedBundle"]
       11 JUMPIF                           R7 ; [+10]
       12 GETTABLEKS                       R7 R6 K2 ["hasTypeError"]
       14 JUMPIF                           R7 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R5
       19 GETIMPORT                        R7 K5 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-17]
       24 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 GETTABLE                         R11 R1 R9
        7 GETTABLEKS                       R10 R11 K0 ["hasAssociatedBundle"]
        9 JUMPIFNOT                        R10 ; [+7]
       10 GETTABLE                         R12 R2 R9
       11 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       13 MOVE                             R11 R4
       14 GETIMPORT                        R10 K3 [table.insert]
       16 CALL                             R10 2 0
       17 GETTABLE                         R11 R1 R9
       18 GETTABLEKS                       R10 R11 K4 ["hasAssociatedAsset"]
       20 JUMPIFNOT                        R10 ; [+7]
       21 GETTABLE                         R12 R3 R9
       22 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       24 MOVE                             R11 R4
       25 GETIMPORT                        R10 K3 [table.insert]
       27 CALL                             R10 2 0
       28 FORGLOOP                         R5 2 ; [-23]
       30 RETURN                           R4 1

PROTO_9:
        0 LOADNIL                          R3
        1 LOADN                            R4 0
        2 MOVE                             R5 R1
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 ADDK                             R4 R4 K0 [1]
        7 JUMPIFNOTEQKN                    R4 K0 [1] ; [+3]
        9 MOVE                             R3 R8
       10 JUMP                             ; [+4]
       11 MOVE                             R10 R3
       12 LOADK                            R11 K1 [", "]
       13 MOVE                             R12 R8
       14 CONCAT                           R3 R10 R12
       15 FORGLOOP                         R5 1 ; [-10]
       17 LOADNIL                          R5
       18 LOADN                            R6 0
       19 MOVE                             R7 R2
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 FORGPREP                         R7
       23 ADDK                             R6 R6 K0 [1]
       24 JUMPIFNOTEQKN                    R6 K0 [1] ; [+9]
       26 LOADK                            R12 K2 [" "]
       27 FASTCALL1                        TOSTRING R11 ; [+3]
       28 MOVE                             R14 R11
       29 GETIMPORT                        R13 K4 [tostring]
       31 CALL                             R13 1 1
       32 CONCAT                           R5 R12 R13
       33 JUMP                             ; [+8]
       34 MOVE                             R12 R5
       35 LOADK                            R13 K1 [", "]
       36 FASTCALL1                        TOSTRING R11 ; [+3]
       37 MOVE                             R15 R11
       38 GETIMPORT                        R14 K4 [tostring]
       40 CALL                             R14 1 1
       41 CONCAT                           R5 R12 R14
       42 FORGLOOP                         R7 2 ; [-20]
       44 DUPTABLE                         R7 K8 [{"individualShoesFound", "invalidAssetTypesString", "lostIdsString"}]
       45 SETTABLEKS                       R0 R7 K5 ["individualShoesFound"]
       47 SETTABLEKS                       R3 R7 K6 ["invalidAssetTypesString"]
       49 SETTABLEKS                       R5 R7 K7 ["lostIdsString"]
       51 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K8 ["Util"]
       29 GETTABLEKS                       R4 R5 K10 ["getPaletteFromKey"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 16 0
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 SETTABLEKS                       R5 R4 K12 ["extractUniqueId"]
       37 DUPCLOSURE                       R5 K13 [PROTO_1]
       38 SETTABLEKS                       R5 R4 K14 ["initializeItemStatus"]
       40 DUPCLOSURE                       R5 K15 [PROTO_2]
       41 SETTABLEKS                       R5 R4 K16 ["processBundleData"]
       43 DUPCLOSURE                       R5 K17 [PROTO_3]
       44 SETTABLEKS                       R5 R4 K18 ["buildAssetFetchList"]
       46 DUPCLOSURE                       R5 K19 [PROTO_4]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R5 R4 K20 ["processShoeAsset"]
       50 DUPCLOSURE                       R5 K21 [PROTO_5]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R5 R4 K22 ["processRegularAsset"]
       55 DUPCLOSURE                       R5 K23 [PROTO_6]
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R5 R4 K24 ["processAssetData"]
       59 DUPCLOSURE                       R5 K25 [PROTO_7]
       60 SETTABLEKS                       R5 R4 K26 ["findLostIds"]
       62 DUPCLOSURE                       R5 K27 [PROTO_8]
       63 SETTABLEKS                       R5 R4 K28 ["buildItemRows"]
       65 DUPCLOSURE                       R5 K29 [PROTO_9]
       66 SETTABLEKS                       R5 R4 K30 ["buildErrorData"]
       68 RETURN                           R4 1
