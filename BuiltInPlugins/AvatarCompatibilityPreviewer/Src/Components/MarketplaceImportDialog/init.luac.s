PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["itemType"]
        8 JUMPIFNOTEQKS                    R8 K1 ["Asset"] ; [+12]
       10 GETTABLEKS                       R9 R7 K2 ["itemId"]
       12 GETTABLE                         R8 R1 R9
       13 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       15 MOVE                             R10 R2
       16 MOVE                             R11 R8
       17 GETIMPORT                        R9 K5 [table.insert]
       19 CALL                             R9 2 0
       20 JUMP                             ; [+23]
       21 GETTABLEKS                       R8 R7 K0 ["itemType"]
       23 JUMPIFNOTEQKS                    R8 K6 ["Bundle"] ; [+20]
       25 GETTABLEKS                       R8 R7 K7 ["underlyingAssetIds"]
       27 JUMPIFNOT                        R8 ; [+16]
       28 GETTABLEKS                       R8 R7 K7 ["underlyingAssetIds"]
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 FORGPREP                         R8
       33 GETTABLE                         R13 R1 R12
       34 JUMPIFNOT                        R13 ; [+7]
       35 FASTCALL2                        TABLE_INSERT R2 R13 ; [+5]
       37 MOVE                             R15 R2
       38 MOVE                             R16 R13
       39 GETIMPORT                        R14 K5 [table.insert]
       41 CALL                             R14 2 0
       42 FORGLOOP                         R8 2 ; [-10]
       44 FORGLOOP                         R3 2 ; [-39]
       46 RETURN                           R2 1

PROTO_1:
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
       15 GETUPVAL                         R0 4
       16 GETTABLEKS                       R0 R0 K0 ["onClose"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["itemRows"]
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

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["marketplaceItems"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K4 ["uniqueId"]
       12 SETTABLE                         R6 R1 R7
       13 FORGLOOP                         R2 2 ; [-4]
       15 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+30]
        8 GETIMPORT                        R2 K2 [string.gmatch]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K3 ["[^,%s]+"]
       12 CALL                             R2 2 3
       13 FORGPREP                         R2
       14 GETIMPORT                        R8 K5 [string.match]
       16 MOVE                             R9 R5
       17 LOADK                            R10 K6 ["^%d+$"]
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+6]
       20 FASTCALL1                        TONUMBER R5 ; [+3]
       21 MOVE                             R8 R5
       22 GETIMPORT                        R7 K8 [tonumber]
       24 CALL                             R7 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R7
       27 JUMPIFNOT                        R7 ; [+7]
       28 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       30 MOVE                             R9 R1
       31 MOVE                             R10 R7
       32 GETIMPORT                        R8 K11 [table.insert]
       34 CALL                             R8 2 0
       35 FORGLOOP                         R2 1 ; [-22]
       37 JUMP                             ; [+24]
       38 GETIMPORT                        R2 K13 [string.split]
       40 MOVE                             R3 R0
       41 LOADK                            R4 K14 [","]
       42 CALL                             R2 2 1
       43 MOVE                             R3 R2
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 FORGPREP                         R3
       47 FASTCALL1                        TONUMBER R7 ; [+3]
       48 MOVE                             R9 R7
       49 GETIMPORT                        R8 K8 [tonumber]
       51 CALL                             R8 1 1
       52 JUMPIFNOT                        R8 ; [+7]
       53 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       55 MOVE                             R10 R1
       56 MOVE                             R11 R8
       57 GETIMPORT                        R9 K11 [table.insert]
       59 CALL                             R9 2 0
       60 FORGLOOP                         R3 2 ; [-14]
       62 GETUPVAL                         R2 2
       63 MOVE                             R3 R1
       64 CALL                             R2 1 1
       65 GETUPVAL                         R3 3
       66 NEWCLOSURE                       R4 P0
       67 CAPTURE                          VAL R2
       68 CALL                             R3 1 0
       69 GETUPVAL                         R3 4
       70 NEWCLOSURE                       R4 P1
       71 CAPTURE                          VAL R2
       72 CALL                             R3 1 0
       73 GETUPVAL                         R3 5
       74 GETTABLEKS                       R4 R2 K15 ["errors"]
       76 CALL                             R3 1 0
       77 GETUPVAL                         R3 0
       78 LOADB                            R4 0
       79 CALL                             R3 1 0
       80 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 3
        5 GETTABLEKS                       R1 R1 K0 ["onAddItems"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 4
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K3 ["itemType"]
        7 FASTCALL1                        TOSTRING R6 ; [+2]
        8 GETIMPORT                        R5 K5 [tostring]
       10 CALL                             R5 1 1
       11 MOVE                             R3 R5
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K6 ["itemId"]
       15 FASTCALL1                        TOSTRING R5 ; [+2]
       16 GETIMPORT                        R4 K5 [tostring]
       18 CALL                             R4 1 1
       19 CONCAT                           R2 R3 R4
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R1 R2
       22 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K0 ["useState"]
       11 NEWTABLE                         R5 0 0
       13 CALL                             R4 1 2
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K0 ["useState"]
       17 LOADB                            R7 0
       18 CALL                             R6 1 2
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K0 ["useState"]
       22 NEWTABLE                         R9 0 0
       24 CALL                             R8 1 2
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K1 ["useCallback"]
       28 NEWCLOSURE                       R11 P0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R9
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R12 0 1
       36 GETTABLEKS                       R13 R0 K2 ["onClose"]
       38 SETLIST                          R12 R13 1 [1]
       40 CALL                             R10 2 1
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R11 R11 K1 ["useCallback"]
       44 NEWCLOSURE                       R12 P1
       45 CAPTURE                          VAL R7
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R13 0 1
       53 MOVE                             R14 R1
       54 SETLIST                          R13 R14 1 [1]
       56 CALL                             R11 2 1
       57 GETUPVAL                         R12 1
       58 GETTABLEKS                       R12 R12 K1 ["useCallback"]
       60 NEWCLOSURE                       R13 P2
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R10
       66 NEWTABLE                         R14 0 4
       68 MOVE                             R15 R2
       69 MOVE                             R16 R8
       70 GETTABLEKS                       R17 R0 K3 ["onAddItems"]
       72 MOVE                             R18 R10
       73 SETLIST                          R14 R15 4 [1]
       75 CALL                             R12 2 1
       76 GETUPVAL                         R13 1
       77 GETTABLEKS                       R13 R13 K1 ["useCallback"]
       79 NEWCLOSURE                       R14 P3
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R15 0 0
       83 CALL                             R13 2 1
       84 GETUPVAL                         R14 1
       85 GETTABLEKS                       R14 R14 K4 ["createElement"]
       87 GETUPVAL                         R15 4
       88 DUPTABLE                         R16 K10 [{"itemRows", "errors", "isFetching", "onRemoveItem", "onAddItems", "onTextEntered", "onClose"}]
       89 SETTABLEKS                       R2 R16 K5 ["itemRows"]
       91 SETTABLEKS                       R4 R16 K6 ["errors"]
       93 SETTABLEKS                       R6 R16 K7 ["isFetching"]
       95 SETTABLEKS                       R13 R16 K8 ["onRemoveItem"]
       97 SETTABLEKS                       R12 R16 K3 ["onAddItems"]
       99 SETTABLEKS                       R11 R16 K9 ["onTextEntered"]
      101 SETTABLEKS                       R10 R16 K2 ["onClose"]
      103 CALL                             R14 2 -1
      104 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K10 ["MarketplaceImportDialog"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K11 ["useGetMarketplaceItems"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Flags"]
       41 GETTABLEKS                       R6 R6 K13 ["getFFlagAvatarPreviewerMarketplaceImportFlexibleIds"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K14 [PROTO_0]
       45 DUPCLOSURE                       R7 K15 [PROTO_8]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 RETURN                           R7 1
