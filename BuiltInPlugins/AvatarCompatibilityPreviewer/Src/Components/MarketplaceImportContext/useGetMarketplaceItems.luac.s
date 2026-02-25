PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getBatchBundleDetailsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getBatchAssetDetailsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["initializeItemStatus"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETIMPORT                        R3 K2 [pcall]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CALL                             R3 1 2
       11 JUMPIF                           R3 ; [+21]
       12 DUPTABLE                         R5 K6 [{"itemRows", "errors", "marketplaceItems"}]
       13 NEWTABLE                         R6 0 0
       15 SETTABLEKS                       R6 R5 K3 ["itemRows"]
       17 NEWTABLE                         R6 0 1
       19 FASTCALL1                        TOSTRING R4 ; [+3]
       20 MOVE                             R8 R4
       21 GETIMPORT                        R7 K8 [tostring]
       23 CALL                             R7 1 1
       24 SETLIST                          R6 R7 1 [1]
       26 SETTABLEKS                       R6 R5 K4 ["errors"]
       28 NEWTABLE                         R6 0 0
       30 SETTABLEKS                       R6 R5 K5 ["marketplaceItems"]
       32 RETURN                           R5 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K9 ["processBundleData"]
       36 MOVE                             R6 R4
       37 MOVE                             R7 R1
       38 MOVE                             R8 R2
       39 CALL                             R5 3 1
       40 GETTABLEKS                       R6 R5 K10 ["assetToBundle"]
       42 GETTABLEKS                       R7 R5 K11 ["bundleRows"]
       44 GETTABLEKS                       R2 R5 K12 ["assetFetchSet"]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R8 R9 K13 ["buildAssetFetchList"]
       49 MOVE                             R9 R2
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K2 [pcall]
       53 NEWCLOSURE                       R10 P1
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R8
       56 CALL                             R9 1 2
       57 JUMPIF                           R9 ; [+21]
       58 DUPTABLE                         R11 K6 [{"itemRows", "errors", "marketplaceItems"}]
       59 NEWTABLE                         R12 0 0
       61 SETTABLEKS                       R12 R11 K3 ["itemRows"]
       63 NEWTABLE                         R12 0 1
       65 FASTCALL1                        TOSTRING R10 ; [+3]
       66 MOVE                             R14 R10
       67 GETIMPORT                        R13 K8 [tostring]
       69 CALL                             R13 1 1
       70 SETLIST                          R12 R13 1 [1]
       72 SETTABLEKS                       R12 R11 K4 ["errors"]
       74 NEWTABLE                         R12 0 0
       76 SETTABLEKS                       R12 R11 K5 ["marketplaceItems"]
       78 RETURN                           R11 1
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R11 R12 K14 ["processAssetData"]
       82 MOVE                             R12 R10
       83 MOVE                             R13 R6
       84 MOVE                             R14 R1
       85 CALL                             R11 3 1
       86 GETUPVAL                         R13 0
       87 GETTABLEKS                       R12 R13 K15 ["findLostIds"]
       89 MOVE                             R13 R1
       90 CALL                             R12 1 1
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R13 R14 K16 ["buildItemRows"]
       94 MOVE                             R14 R0
       95 MOVE                             R15 R1
       96 MOVE                             R16 R7
       97 GETTABLEKS                       R17 R11 K17 ["assetRows"]
       99 CALL                             R13 4 1
      100 GETUPVAL                         R15 0
      101 GETTABLEKS                       R14 R15 K18 ["buildErrorData"]
      103 GETTABLEKS                       R15 R11 K19 ["individualShoesFound"]
      105 GETTABLEKS                       R16 R11 K20 ["invalidAssetTypes"]
      107 MOVE                             R17 R12
      108 CALL                             R14 3 1
      109 NEWTABLE                         R15 0 0
      111 GETTABLEKS                       R16 R14 K19 ["individualShoesFound"]
      113 JUMPIFNOT                        R16 ; [+13]
      114 GETUPVAL                         R16 2
      115 LOADK                            R18 K21 ["MarketplaceImport"]
      116 LOADK                            R19 K22 ["IndividualShoesError"]
      117 NAMECALL                         R16 R16 K23 ["getText"]
      119 CALL                             R16 3 1
      120 FASTCALL2                        TABLE_INSERT R15 R16 ; [+5]
      122 MOVE                             R18 R15
      123 MOVE                             R19 R16
      124 GETIMPORT                        R17 K26 [table.insert]
      126 CALL                             R17 2 0
      127 GETTABLEKS                       R16 R14 K27 ["invalidAssetTypesString"]
      129 JUMPIFNOT                        R16 ; [+18]
      130 GETUPVAL                         R16 2
      131 LOADK                            R18 K21 ["MarketplaceImport"]
      132 LOADK                            R19 K28 ["AssetTypeError"]
      133 DUPTABLE                         R20 K29 [{"invalidAssetTypes"}]
      134 GETTABLEKS                       R21 R14 K27 ["invalidAssetTypesString"]
      136 SETTABLEKS                       R21 R20 K20 ["invalidAssetTypes"]
      138 NAMECALL                         R16 R16 K23 ["getText"]
      140 CALL                             R16 4 1
      141 FASTCALL2                        TABLE_INSERT R15 R16 ; [+5]
      143 MOVE                             R18 R15
      144 MOVE                             R19 R16
      145 GETIMPORT                        R17 K26 [table.insert]
      147 CALL                             R17 2 0
      148 GETTABLEKS                       R16 R14 K30 ["lostIdsString"]
      150 JUMPIFNOT                        R16 ; [+18]
      151 GETUPVAL                         R16 2
      152 LOADK                            R18 K21 ["MarketplaceImport"]
      153 LOADK                            R19 K31 ["NothingFoundError"]
      154 DUPTABLE                         R20 K33 [{"lostIds"}]
      155 GETTABLEKS                       R21 R14 K30 ["lostIdsString"]
      157 SETTABLEKS                       R21 R20 K32 ["lostIds"]
      159 NAMECALL                         R16 R16 K23 ["getText"]
      161 CALL                             R16 4 1
      162 FASTCALL2                        TABLE_INSERT R15 R16 ; [+5]
      164 MOVE                             R18 R15
      165 MOVE                             R19 R16
      166 GETIMPORT                        R17 K26 [table.insert]
      168 CALL                             R17 2 0
      169 DUPTABLE                         R16 K6 [{"itemRows", "errors", "marketplaceItems"}]
      170 SETTABLEKS                       R13 R16 K3 ["itemRows"]
      172 SETTABLEKS                       R15 R16 K4 ["errors"]
      174 GETTABLEKS                       R17 R11 K5 ["marketplaceItems"]
      176 SETTABLEKS                       R17 R16 K5 ["marketplaceItems"]
      178 RETURN                           R16 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["useContext"]
        7 GETUPVAL                         R2 2
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K2 ["useCallback"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R4 0 3
       18 MOVE                             R5 R0
       19 GETTABLEKS                       R6 R1 K3 ["getBatchAssetDetailsAsync"]
       21 GETTABLEKS                       R7 R1 K4 ["getBatchBundleDetailsAsync"]
       23 SETLIST                          R4 R5 3 [1]
       25 CALL                             R2 2 1
       26 RETURN                           R2 1

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
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["MarketplaceCatalogUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Components"]
       29 GETTABLEKS                       R4 R5 K12 ["AvatarEditorServiceContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R6 K13 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R4 K14 ["ContextServices"]
       41 GETTABLEKS                       R5 R6 K15 ["Localization"]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Src"]
       47 GETTABLEKS                       R7 R8 K16 ["Types"]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K17 [PROTO_3]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 RETURN                           R7 1
