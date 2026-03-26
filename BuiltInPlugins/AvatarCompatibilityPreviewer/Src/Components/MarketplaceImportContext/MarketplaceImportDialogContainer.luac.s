PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NEWTABLE                         R1 0 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NEWTABLE                         R1 0 0
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R0 R1 K0 ["setMarketplaceImportOpen"]
       18 LOADB                            R1 0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R2 R5 K3 ["itemRows"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R11 R6 K4 ["itemType"]
       12 FASTCALL1                        TOSTRING R11 ; [+2]
       13 GETIMPORT                        R10 K6 [tostring]
       15 CALL                             R10 1 1
       16 MOVE                             R8 R10
       17 GETTABLEKS                       R10 R6 K7 ["itemId"]
       19 FASTCALL1                        TOSTRING R10 ; [+2]
       20 GETIMPORT                        R9 K6 [tostring]
       22 CALL                             R9 1 1
       23 CONCAT                           R7 R8 R9
       24 SETTABLE                         R6 R1 R7
       25 FORGLOOP                         R2 2 ; [-16]
       27 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R2 R5 K3 ["marketplaceItems"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K4 ["uniqueId"]
       12 SETTABLE                         R6 R1 R7
       13 FORGLOOP                         R2 2 ; [-4]
       15 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [string.split]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K3 [","]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R2 0 0
       10 MOVE                             R3 R1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 FASTCALL1                        TONUMBER R7 ; [+3]
       15 MOVE                             R9 R7
       16 GETIMPORT                        R8 K5 [tonumber]
       18 CALL                             R8 1 1
       19 JUMPIFNOT                        R8 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K8 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R3 2 ; [-14]
       29 GETUPVAL                         R3 1
       30 MOVE                             R4 R2
       31 CALL                             R3 1 1
       32 GETUPVAL                         R4 2
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          VAL R3
       35 CALL                             R4 1 0
       36 GETUPVAL                         R4 3
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          VAL R3
       39 CALL                             R4 1 0
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R5 R3 K9 ["errors"]
       43 CALL                             R4 1 0
       44 GETUPVAL                         R4 0
       45 LOADB                            R5 0
       46 CALL                             R4 1 0
       47 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["itemType"]
        6 JUMPIFNOTEQKS                    R5 K1 ["Asset"] ; [+13]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R7 R4 K2 ["itemId"]
       11 GETTABLE                         R5 R6 R7
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R6 R7 K3 ["addNewItemAndEquip"]
       15 MOVE                             R7 R5
       16 GETTABLEKS                       R8 R5 K4 ["palette"]
       18 CALL                             R6 2 0
       19 JUMP                             ; [+24]
       20 GETTABLEKS                       R5 R4 K0 ["itemType"]
       22 JUMPIFNOTEQKS                    R5 K5 ["Bundle"] ; [+21]
       24 GETTABLEKS                       R5 R4 K6 ["underlyingAssetIds"]
       26 JUMPIFNOT                        R5 ; [+17]
       27 GETTABLEKS                       R5 R4 K6 ["underlyingAssetIds"]
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 GETUPVAL                         R11 1
       33 GETTABLE                         R10 R11 R9
       34 JUMPIFNOT                        R10 ; [+7]
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R11 R12 K3 ["addNewItemAndEquip"]
       38 MOVE                             R12 R10
       39 GETTABLEKS                       R13 R10 K4 ["palette"]
       41 CALL                             R11 2 0
       42 FORGLOOP                         R5 2 ; [-11]
       44 FORGLOOP                         R0 2 ; [-41]
       46 GETUPVAL                         R0 3
       47 LOADK                            R2 K7 ["marketplaceItemsAddedToPlugin"]
       48 NAMECALL                         R0 R0 K8 ["report"]
       50 CALL                             R0 2 0
       51 GETUPVAL                         R0 4
       52 CALL                             R0 0 0
       53 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K3 ["itemType"]
        7 FASTCALL1                        TOSTRING R6 ; [+2]
        8 GETIMPORT                        R5 K5 [tostring]
       10 CALL                             R5 1 1
       11 MOVE                             R3 R5
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K6 ["itemId"]
       15 FASTCALL1                        TOSTRING R5 ; [+2]
       16 GETIMPORT                        R4 K5 [tostring]
       18 CALL                             R4 1 1
       19 CONCAT                           R2 R3 R4
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R1 R2
       22 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 CALL                             R3 0 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K2 ["useState"]
       14 NEWTABLE                         R5 0 0
       16 CALL                             R4 1 2
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K2 ["useState"]
       20 NEWTABLE                         R7 0 0
       22 CALL                             R6 1 2
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R8 R9 K2 ["useState"]
       26 LOADB                            R9 0
       27 CALL                             R8 1 2
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R10 R11 K2 ["useState"]
       31 NEWTABLE                         R11 0 0
       33 CALL                             R10 1 2
       34 GETUPVAL                         R13 1
       35 GETTABLEKS                       R12 R13 K3 ["useCallback"]
       37 NEWCLOSURE                       R13 P0
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R11
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R9
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R14 0 1
       45 GETTABLEKS                       R15 R0 K4 ["setMarketplaceImportOpen"]
       47 SETLIST                          R14 R15 1 [1]
       49 CALL                             R12 2 1
       50 GETUPVAL                         R14 1
       51 GETTABLEKS                       R13 R14 K3 ["useCallback"]
       53 NEWCLOSURE                       R14 P1
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R7
       59 NEWTABLE                         R15 0 1
       61 MOVE                             R16 R3
       62 SETLIST                          R15 R16 1 [1]
       64 CALL                             R13 2 1
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R14 R15 K3 ["useCallback"]
       68 NEWCLOSURE                       R15 P2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R12
       74 NEWTABLE                         R16 0 4
       76 MOVE                             R17 R4
       77 MOVE                             R18 R10
       78 MOVE                             R19 R2
       79 MOVE                             R20 R12
       80 SETLIST                          R16 R17 4 [1]
       82 CALL                             R14 2 1
       83 GETUPVAL                         R16 1
       84 GETTABLEKS                       R15 R16 K3 ["useCallback"]
       86 NEWCLOSURE                       R16 P3
       87 CAPTURE                          VAL R5
       88 NEWTABLE                         R17 0 0
       90 CALL                             R15 2 1
       91 GETUPVAL                         R17 1
       92 GETTABLEKS                       R16 R17 K5 ["createElement"]
       94 GETUPVAL                         R17 4
       95 DUPTABLE                         R18 K13 [{"itemRows", "errors", "isFetching", "onRemoveItem", "onAddItems", "onTextEntered", "onClose"}]
       96 SETTABLEKS                       R4 R18 K6 ["itemRows"]
       98 SETTABLEKS                       R6 R18 K7 ["errors"]
      100 SETTABLEKS                       R8 R18 K8 ["isFetching"]
      102 SETTABLEKS                       R15 R18 K9 ["onRemoveItem"]
      104 SETTABLEKS                       R14 R18 K10 ["onAddItems"]
      106 SETTABLEKS                       R13 R18 K11 ["onTextEntered"]
      108 SETTABLEKS                       R12 R18 K12 ["onClose"]
      110 CALL                             R16 2 -1
      111 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Components"]
       20 GETTABLEKS                       R3 R4 K10 ["MarketplaceCatalogContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R4 K13 ["ContextServices"]
       39 GETTABLEKS                       R5 R6 K14 ["Analytics"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R8 R9 K15 ["Parent"]
       47 GETTABLEKS                       R7 R8 K16 ["MarketplaceImportDialog"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R9 R10 K15 ["Parent"]
       56 GETTABLEKS                       R8 R9 K17 ["useGetMarketplaceItems"]
       58 CALL                             R7 1 1
       59 DUPCLOSURE                       R8 K18 [PROTO_7]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 RETURN                           R8 1
