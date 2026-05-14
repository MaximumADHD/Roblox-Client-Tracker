PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K3 ["palette"]
        6 GETTABLEKS                       R2 R2 K4 ["Key"]
        8 SETTABLEKS                       R2 R1 K3 ["palette"]
       10 GETTABLEKS                       R2 R0 K5 ["assetType"]
       12 GETTABLEKS                       R2 R2 K6 ["Name"]
       14 SETTABLEKS                       R2 R1 K5 ["assetType"]
       16 GETUPVAL                         R2 0
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K7 ["JSONEncode"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K10 [Instance.new]
       23 LOADK                            R4 K11 ["StringValue"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R5 R0 K12 ["uniqueId"]
       27 FASTCALL1                        TOSTRING R5 ; [+2]
       28 GETIMPORT                        R4 K14 [tostring]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K6 ["Name"]
       33 SETTABLEKS                       R2 R3 K15 ["Value"]
       35 RETURN                           R3 1

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
       19 JUMPIFNOT                        R8 ; [+46]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R10 R7 K3 ["Value"]
       23 NAMECALL                         R8 R8 K4 ["JSONDecode"]
       25 CALL                             R8 2 1
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R10 R8 K5 ["palette"]
       29 CALL                             R9 1 1
       30 SETTABLEKS                       R9 R8 K5 ["palette"]
       32 GETIMPORT                        R10 K8 [Enum.AssetType]
       34 GETTABLEKS                       R11 R8 K9 ["assetType"]
       36 GETTABLE                         R9 R10 R11
       37 SETTABLEKS                       R9 R8 K9 ["assetType"]
       39 DUPTABLE                         R9 K11 [{"palette", "item"}]
       40 GETTABLEKS                       R10 R8 K5 ["palette"]
       42 SETTABLEKS                       R10 R9 K5 ["palette"]
       44 DUPTABLE                         R10 K14 [{"source", "marketplaceItem"}]
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R11 R11 K15 ["SOURCE_MARKETPLACE"]
       48 SETTABLEKS                       R11 R10 K12 ["source"]
       50 GETTABLEKS                       R11 R8 K13 ["marketplaceItem"]
       52 SETTABLEKS                       R11 R10 K13 ["marketplaceItem"]
       54 SETTABLEKS                       R10 R9 K10 ["item"]
       56 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       58 MOVE                             R11 R2
       59 MOVE                             R12 R9
       60 GETIMPORT                        R10 K18 [table.insert]
       62 CALL                             R10 2 0
       63 GETTABLEKS                       R10 R8 K19 ["uniqueId"]
       65 SETTABLE                         R8 R1 R10
       66 FORGLOOP                         R3 2 ; [-52]
       68 RETURN                           R1 2

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
       90 DUPCLOSURE                       R11 K24 [PROTO_0]
       91 CAPTURE                          VAL R0
       92 DUPCLOSURE                       R12 K25 [PROTO_1]
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R3
       96 DUPCLOSURE                       R13 K26 [PROTO_6]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R6
      106 RETURN                           R13 1
