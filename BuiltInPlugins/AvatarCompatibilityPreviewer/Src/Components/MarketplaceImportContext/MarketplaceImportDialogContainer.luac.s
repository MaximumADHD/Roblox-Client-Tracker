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
       47 CALL                             R0 0 0
       48 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["useState"]
       10 NEWTABLE                         R4 0 0
       12 CALL                             R3 1 2
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K1 ["useState"]
       16 NEWTABLE                         R6 0 0
       18 CALL                             R5 1 2
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K1 ["useState"]
       22 LOADB                            R8 0
       23 CALL                             R7 1 2
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R9 R10 K1 ["useState"]
       27 NEWTABLE                         R10 0 0
       29 CALL                             R9 1 2
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R11 R12 K2 ["useCallback"]
       33 NEWCLOSURE                       R12 P0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R10
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R8
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R13 0 1
       41 GETTABLEKS                       R14 R0 K3 ["setMarketplaceImportOpen"]
       43 SETLIST                          R13 R14 1 [1]
       45 CALL                             R11 2 1
       46 GETUPVAL                         R13 0
       47 GETTABLEKS                       R12 R13 K2 ["useCallback"]
       49 NEWCLOSURE                       R13 P1
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R10
       54 CAPTURE                          VAL R6
       55 NEWTABLE                         R14 0 1
       57 MOVE                             R15 R2
       58 SETLIST                          R14 R15 1 [1]
       60 CALL                             R12 2 1
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R13 R14 K2 ["useCallback"]
       64 NEWCLOSURE                       R14 P2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R11
       69 NEWTABLE                         R15 0 4
       71 MOVE                             R16 R3
       72 MOVE                             R17 R9
       73 MOVE                             R18 R1
       74 MOVE                             R19 R11
       75 SETLIST                          R15 R16 4 [1]
       77 CALL                             R13 2 1
       78 GETUPVAL                         R15 0
       79 GETTABLEKS                       R14 R15 K2 ["useCallback"]
       81 NEWCLOSURE                       R15 P3
       82 CAPTURE                          VAL R4
       83 NEWTABLE                         R16 0 0
       85 CALL                             R14 2 1
       86 GETUPVAL                         R16 0
       87 GETTABLEKS                       R15 R16 K4 ["createElement"]
       89 GETUPVAL                         R16 3
       90 DUPTABLE                         R17 K12 [{"itemRows", "errors", "isFetching", "onRemoveItem", "onAddItems", "onTextEntered", "onClose"}]
       91 SETTABLEKS                       R3 R17 K5 ["itemRows"]
       93 SETTABLEKS                       R5 R17 K6 ["errors"]
       95 SETTABLEKS                       R7 R17 K7 ["isFetching"]
       97 SETTABLEKS                       R14 R17 K8 ["onRemoveItem"]
       99 SETTABLEKS                       R13 R17 K9 ["onAddItems"]
      101 SETTABLEKS                       R12 R17 K10 ["onTextEntered"]
      103 SETTABLEKS                       R11 R17 K11 ["onClose"]
      105 CALL                             R15 2 -1
      106 RETURN                           R15 -1

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
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R6 R7 K12 ["Parent"]
       36 GETTABLEKS                       R5 R6 K13 ["MarketplaceImportDialog"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R7 R8 K12 ["Parent"]
       45 GETTABLEKS                       R6 R7 K14 ["useGetMarketplaceItems"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_7]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 RETURN                           R6 1
