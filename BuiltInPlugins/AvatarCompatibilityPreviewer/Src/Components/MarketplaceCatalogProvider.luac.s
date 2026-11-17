PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["StringValue"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R3 R0 K4 ["uniqueId"]
        6 FASTCALL1                        TOSTRING R3 ; [+2]
        7 GETIMPORT                        R2 K6 [tostring]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K7 ["Name"]
       12 GETUPVAL                         R2 0
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+8]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K8 ["encodeMarketplaceItem"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R1 K9 ["Value"]
       22 RETURN                           R1 1
       23 GETIMPORT                        R2 K12 [table.clone]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R0 K13 ["palette"]
       29 GETTABLEKS                       R3 R3 K14 ["Key"]
       31 SETTABLEKS                       R3 R2 K13 ["palette"]
       33 GETTABLEKS                       R3 R0 K15 ["assetType"]
       35 GETTABLEKS                       R3 R3 K7 ["Name"]
       37 SETTABLEKS                       R3 R2 K15 ["assetType"]
       39 GETUPVAL                         R3 2
       40 MOVE                             R5 R2
       41 NAMECALL                         R3 R3 K16 ["JSONEncode"]
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R1 K9 ["Value"]
       46 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+6]
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 RETURN                           R1 2
        7 NEWTABLE                         R1 0 0
        9 NEWTABLE                         R2 0 0
       11 NAMECALL                         R3 R0 K0 ["GetChildren"]
       13 CALL                             R3 1 3
       14 FORGPREP                         R3
       15 LOADK                            R10 K1 ["StringValue"]
       16 NAMECALL                         R8 R7 K2 ["IsA"]
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+59]
       20 LOADNIL                          R8
       21 GETUPVAL                         R9 0
       22 CALL                             R9 0 1
       23 JUMPIFNOT                        R9 ; [+8]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K3 ["decodeMarketplaceItem"]
       27 GETTABLEKS                       R10 R7 K4 ["Value"]
       29 CALL                             R9 1 1
       30 MOVE                             R8 R9
       31 JUMP                             ; [+20]
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R11 R7 K4 ["Value"]
       35 NAMECALL                         R9 R9 K5 ["JSONDecode"]
       37 CALL                             R9 2 1
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R11 R9 K6 ["palette"]
       41 CALL                             R10 1 1
       42 SETTABLEKS                       R10 R9 K6 ["palette"]
       44 GETIMPORT                        R11 K9 [Enum.AssetType]
       46 GETTABLEKS                       R12 R9 K10 ["assetType"]
       48 GETTABLE                         R10 R11 R12
       49 SETTABLEKS                       R10 R9 K10 ["assetType"]
       51 MOVE                             R8 R9
       52 DUPTABLE                         R9 K12 [{"palette", "item"}]
       53 GETTABLEKS                       R10 R8 K6 ["palette"]
       55 SETTABLEKS                       R10 R9 K6 ["palette"]
       57 DUPTABLE                         R10 K15 [{"source", "marketplaceItem"}]
       58 GETUPVAL                         R11 4
       59 GETTABLEKS                       R11 R11 K16 ["SOURCE_MARKETPLACE"]
       61 SETTABLEKS                       R11 R10 K13 ["source"]
       63 GETTABLEKS                       R11 R8 K14 ["marketplaceItem"]
       65 SETTABLEKS                       R11 R10 K14 ["marketplaceItem"]
       67 SETTABLEKS                       R10 R9 K11 ["item"]
       69 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       71 MOVE                             R11 R2
       72 MOVE                             R12 R9
       73 GETIMPORT                        R10 K19 [table.insert]
       75 CALL                             R10 2 0
       76 GETTABLEKS                       R10 R8 K20 ["uniqueId"]
       78 SETTABLE                         R8 R1 R10
       79 FORGLOOP                         R3 2 ; [-65]
       81 RETURN                           R1 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+6]
        3 GETIMPORT                        R2 K1 [warn]
        5 LOADK                            R3 K2 ["catalog folder is nil when trying to add new marketplace items"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["removeEquippedItem"]
       11 DUPTABLE                         R3 K6 [{"palette", "item"}]
       12 SETTABLEKS                       R0 R3 K4 ["palette"]
       14 DUPTABLE                         R4 K9 [{"source", "marketplaceItem"}]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K10 ["SOURCE_MARKETPLACE"]
       18 SETTABLEKS                       R5 R4 K7 ["source"]
       20 SETTABLEKS                       R1 R4 K8 ["marketplaceItem"]
       22 SETTABLEKS                       R4 R3 K5 ["item"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K11 ["extractUniqueId"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 1
       30 GETUPVAL                         R3 4
       31 LOADNIL                          R4
       32 SETTABLE                         R4 R3 R2
       33 GETUPVAL                         R3 5
       34 DUPTABLE                         R4 K6 [{"palette", "item"}]
       35 SETTABLEKS                       R0 R4 K4 ["palette"]
       37 DUPTABLE                         R5 K9 [{"source", "marketplaceItem"}]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K10 ["SOURCE_MARKETPLACE"]
       41 SETTABLEKS                       R6 R5 K7 ["source"]
       43 SETTABLEKS                       R1 R5 K8 ["marketplaceItem"]
       45 SETTABLEKS                       R5 R4 K5 ["item"]
       47 CALL                             R3 1 0
       48 GETUPVAL                         R3 0
       49 FASTCALL1                        TOSTRING R2 ; [+3]
       50 MOVE                             R6 R2
       51 GETIMPORT                        R5 K13 [tostring]
       53 CALL                             R5 1 1
       54 NAMECALL                         R3 R3 K14 ["FindFirstChild"]
       56 CALL                             R3 2 1
       57 JUMPIFNOT                        R3 ; [+3]
       58 NAMECALL                         R4 R3 K15 ["Destroy"]
       60 CALL                             R4 1 0
       61 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K4 [table.insert]
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+6]
        3 GETIMPORT                        R2 K1 [warn]
        5 LOADK                            R3 K2 ["catalog folder is nil when trying to add new marketplace items"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R4 R0 K3 ["uniqueId"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R1
       15 GETTABLEKS                       R4 R0 K4 ["marketplaceItem"]
       17 CALL                             R2 2 0
       18 DUPTABLE                         R2 K7 [{"palette", "item"}]
       19 SETTABLEKS                       R1 R2 K5 ["palette"]
       21 DUPTABLE                         R3 K9 [{"source", "marketplaceItem"}]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K10 ["SOURCE_MARKETPLACE"]
       25 SETTABLEKS                       R4 R3 K8 ["source"]
       27 GETTABLEKS                       R4 R0 K4 ["marketplaceItem"]
       29 SETTABLEKS                       R4 R3 K4 ["marketplaceItem"]
       31 SETTABLEKS                       R3 R2 K6 ["item"]
       33 GETUPVAL                         R3 4
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          VAL R2
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 5
       38 GETTABLEKS                       R3 R3 K11 ["addEquippedItem"]
       40 MOVE                             R4 R2
       41 CALL                             R3 1 0
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R4 R0 K3 ["uniqueId"]
       45 SETTABLE                         R0 R3 R4
       46 GETUPVAL                         R3 6
       47 MOVE                             R4 R0
       48 CALL                             R3 1 1
       49 GETUPVAL                         R4 0
       50 SETTABLEKS                       R4 R3 K12 ["Parent"]
       52 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["extractUniqueId"]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 GETTABLE                         R1 R2 R3
        7 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["marketplaceCatalogFolder"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R1
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["useState"]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 4
       23 MOVE                             R8 R6
       24 CALL                             R7 1 1
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       28 NEWCLOSURE                       R9 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R7
       35 NEWTABLE                         R10 0 3
       37 GETTABLEKS                       R11 R2 K5 ["removeEquippedItem"]
       39 MOVE                             R12 R1
       40 MOVE                             R13 R3
       41 SETLIST                          R10 R11 3 [1]
       43 CALL                             R8 2 1
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       47 NEWCLOSURE                       R10 P1
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R8
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U7
       55 NEWTABLE                         R11 0 2
       57 MOVE                             R12 R1
       58 MOVE                             R13 R3
       59 SETLIST                          R11 R12 2 [1]
       61 CALL                             R9 2 1
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       65 NEWCLOSURE                       R11 P2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          UPVAL U6
       68 NEWTABLE                         R12 0 1
       70 MOVE                             R13 R3
       71 SETLIST                          R12 R13 1 [1]
       73 CALL                             R10 2 1
       74 DUPTABLE                         R11 K10 [{"equippableItems", "addNewItemAndEquip", "removeItem", "getItemData"}]
       75 SETTABLEKS                       R5 R11 K6 ["equippableItems"]
       77 SETTABLEKS                       R9 R11 K7 ["addNewItemAndEquip"]
       79 SETTABLEKS                       R8 R11 K8 ["removeItem"]
       81 SETTABLEKS                       R10 R11 K9 ["getItemData"]
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R12 R12 K11 ["createElement"]
       86 GETUPVAL                         R13 8
       87 GETTABLEKS                       R13 R13 K12 ["Provider"]
       89 DUPTABLE                         R14 K14 [{"value"}]
       90 SETTABLEKS                       R11 R14 K13 ["value"]
       92 GETTABLEKS                       R15 R0 K15 ["children"]
       94 CALL                             R12 3 -1
       95 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Src"]
       33 GETTABLEKS                       R5 R5 K13 ["Util"]
       35 GETTABLEKS                       R5 R5 K15 ["MarketplaceCatalogUtils"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R1 K12 ["Src"]
       42 GETTABLEKS                       R6 R6 K13 ["Util"]
       44 GETTABLEKS                       R6 R6 K16 ["EquipmentStateContext"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R1 K12 ["Src"]
       51 GETTABLEKS                       R7 R7 K17 ["Components"]
       53 GETTABLEKS                       R7 R7 K18 ["MarketplaceCatalogContext"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R1 K12 ["Src"]
       60 GETTABLEKS                       R8 R8 K17 ["Components"]
       62 GETTABLEKS                       R8 R8 K19 ["MarketplaceCatalogFolderContext"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R9 R1 K12 ["Src"]
       69 GETTABLEKS                       R9 R9 K13 ["Util"]
       71 GETTABLEKS                       R9 R9 K20 ["getPaletteFromKey"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R1 K12 ["Src"]
       78 GETTABLEKS                       R10 R10 K21 ["Hooks"]
       80 GETTABLEKS                       R10 R10 K22 ["useRemoveEquippedItem"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K9 [require]
       85 GETTABLEKS                       R11 R1 K12 ["Src"]
       87 GETTABLEKS                       R11 R11 K23 ["Types"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K9 [require]
       92 GETTABLEKS                       R12 R1 K12 ["Src"]
       94 GETTABLEKS                       R12 R12 K24 ["Flags"]
       96 GETTABLEKS                       R12 R12 K25 ["getFFlagAvatarPreviewerStartFromAssetId"]
       98 CALL                             R11 1 1
       99 DUPCLOSURE                       R12 K26 [PROTO_0]
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R0
      103 DUPCLOSURE                       R13 K27 [PROTO_1]
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R3
      109 DUPCLOSURE                       R14 K28 [PROTO_6]
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R6
      119 RETURN                           R14 1
