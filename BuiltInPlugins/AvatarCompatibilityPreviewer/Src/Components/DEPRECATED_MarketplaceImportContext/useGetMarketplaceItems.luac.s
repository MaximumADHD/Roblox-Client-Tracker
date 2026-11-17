PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getBatchBundleDetailsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getBatchAssetDetailsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["initializeItemStatus"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R3 K2 [pcall]
       11 CALL                             R3 1 2
       12 JUMPIF                           R3 ; [+21]
       13 DUPTABLE                         R5 K6 [{"itemRows", "errors", "marketplaceItems"}]
       14 NEWTABLE                         R6 0 0
       16 SETTABLEKS                       R6 R5 K3 ["itemRows"]
       18 NEWTABLE                         R6 0 1
       20 FASTCALL1                        TOSTRING R4 ; [+3]
       21 MOVE                             R8 R4
       22 GETIMPORT                        R7 K8 [tostring]
       24 CALL                             R7 1 1
       25 SETLIST                          R6 R7 1 [1]
       27 SETTABLEKS                       R6 R5 K4 ["errors"]
       29 NEWTABLE                         R6 0 0
       31 SETTABLEKS                       R6 R5 K5 ["marketplaceItems"]
       33 RETURN                           R5 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K9 ["processBundleData"]
       37 MOVE                             R6 R4
       38 MOVE                             R7 R1
       39 MOVE                             R8 R2
       40 CALL                             R5 3 1
       41 GETTABLEKS                       R6 R5 K10 ["assetToBundle"]
       43 GETTABLEKS                       R7 R5 K11 ["bundleRows"]
       45 GETTABLEKS                       R2 R5 K12 ["assetFetchSet"]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K13 ["buildAssetFetchList"]
       50 MOVE                             R9 R2
       51 CALL                             R8 1 1
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R8
       55 FASTPCALL                        pcall 1 ; [+2]
       56 GETIMPORT                        R9 K2 [pcall]
       58 CALL                             R9 1 2
       59 JUMPIF                           R9 ; [+21]
       60 DUPTABLE                         R11 K6 [{"itemRows", "errors", "marketplaceItems"}]
       61 NEWTABLE                         R12 0 0
       63 SETTABLEKS                       R12 R11 K3 ["itemRows"]
       65 NEWTABLE                         R12 0 1
       67 FASTCALL1                        TOSTRING R10 ; [+3]
       68 MOVE                             R14 R10
       69 GETIMPORT                        R13 K8 [tostring]
       71 CALL                             R13 1 1
       72 SETLIST                          R12 R13 1 [1]
       74 SETTABLEKS                       R12 R11 K4 ["errors"]
       76 NEWTABLE                         R12 0 0
       78 SETTABLEKS                       R12 R11 K5 ["marketplaceItems"]
       80 RETURN                           R11 1
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K14 ["processAssetData"]
       84 MOVE                             R12 R10
       85 MOVE                             R13 R6
       86 MOVE                             R14 R1
       87 CALL                             R11 3 1
       88 GETUPVAL                         R12 0
       89 GETTABLEKS                       R12 R12 K15 ["findLostIds"]
       91 MOVE                             R13 R1
       92 CALL                             R12 1 1
       93 GETUPVAL                         R13 0
       94 GETTABLEKS                       R13 R13 K16 ["buildItemRows"]
       96 MOVE                             R14 R0
       97 MOVE                             R15 R1
       98 MOVE                             R16 R7
       99 GETTABLEKS                       R17 R11 K17 ["assetRows"]
      101 CALL                             R13 4 1
      102 GETUPVAL                         R14 0
      103 GETTABLEKS                       R14 R14 K18 ["buildErrorData"]
      105 GETTABLEKS                       R15 R11 K19 ["individualShoesFound"]
      107 GETTABLEKS                       R16 R11 K20 ["invalidAssetTypes"]
      109 MOVE                             R17 R12
      110 CALL                             R14 3 1
      111 NEWTABLE                         R15 0 0
      113 GETTABLEKS                       R16 R14 K19 ["individualShoesFound"]
      115 JUMPIFNOT                        R16 ; [+13]
      116 GETUPVAL                         R16 2
      117 LOADK                            R18 K21 ["MarketplaceImport"]
      118 LOADK                            R19 K22 ["IndividualShoesError"]
      119 NAMECALL                         R16 R16 K23 ["getText"]
      121 CALL                             R16 3 1
      122 FASTCALL2                        TABLE_INSERT R15 R16 ; [+5]
      124 MOVE                             R18 R15
      125 MOVE                             R19 R16
      126 GETIMPORT                        R17 K26 [table.insert]
      128 CALL                             R17 2 0
      129 GETTABLEKS                       R16 R14 K27 ["invalidAssetTypesString"]
      131 JUMPIFNOT                        R16 ; [+18]
      132 GETUPVAL                         R16 2
      133 LOADK                            R18 K21 ["MarketplaceImport"]
      134 LOADK                            R19 K28 ["AssetTypeError"]
      135 DUPTABLE                         R20 K29 [{"invalidAssetTypes"}]
      136 GETTABLEKS                       R21 R14 K27 ["invalidAssetTypesString"]
      138 SETTABLEKS                       R21 R20 K20 ["invalidAssetTypes"]
      140 NAMECALL                         R16 R16 K23 ["getText"]
      142 CALL                             R16 4 1
      143 FASTCALL2                        TABLE_INSERT R15 R16 ; [+5]
      145 MOVE                             R18 R15
      146 MOVE                             R19 R16
      147 GETIMPORT                        R17 K26 [table.insert]
      149 CALL                             R17 2 0
      150 GETTABLEKS                       R16 R14 K30 ["lostIdsString"]
      152 JUMPIFNOT                        R16 ; [+18]
      153 GETUPVAL                         R16 2
      154 LOADK                            R18 K21 ["MarketplaceImport"]
      155 LOADK                            R19 K31 ["NothingFoundError"]
      156 DUPTABLE                         R20 K33 [{"lostIds"}]
      157 GETTABLEKS                       R21 R14 K30 ["lostIdsString"]
      159 SETTABLEKS                       R21 R20 K32 ["lostIds"]
      161 NAMECALL                         R16 R16 K23 ["getText"]
      163 CALL                             R16 4 1
      164 FASTCALL2                        TABLE_INSERT R15 R16 ; [+5]
      166 MOVE                             R18 R15
      167 MOVE                             R19 R16
      168 GETIMPORT                        R17 K26 [table.insert]
      170 CALL                             R17 2 0
      171 LENGTH                           R16 R15
      172 LOADN                            R17 0
      173 JUMPIFNOTLT                      R17 R16 ; [+6]
      175 GETUPVAL                         R16 3
      176 LOADK                            R18 K34 ["marketplaceGetItemsError"]
      177 NAMECALL                         R16 R16 K35 ["report"]
      179 CALL                             R16 2 0
      180 DUPTABLE                         R16 K6 [{"itemRows", "errors", "marketplaceItems"}]
      181 SETTABLEKS                       R13 R16 K3 ["itemRows"]
      183 SETTABLEKS                       R15 R16 K4 ["errors"]
      185 GETTABLEKS                       R17 R11 K5 ["marketplaceItems"]
      187 SETTABLEKS                       R17 R16 K5 ["marketplaceItems"]
      189 RETURN                           R16 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["useContext"]
       11 GETUPVAL                         R3 3
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R5 0 3
       23 MOVE                             R6 R0
       24 GETTABLEKS                       R7 R2 K3 ["getBatchAssetDetailsAsync"]
       26 GETTABLEKS                       R8 R2 K4 ["getBatchBundleDetailsAsync"]
       28 SETLIST                          R5 R6 3 [1]
       30 CALL                             R3 2 1
       31 RETURN                           R3 1

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
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["MarketplaceCatalogUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["AvatarEditorServiceContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       41 GETTABLEKS                       R5 R5 K15 ["Localization"]
       43 GETTABLEKS                       R6 R4 K14 ["ContextServices"]
       45 GETTABLEKS                       R6 R6 K16 ["Analytics"]
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K8 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Types"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K18 [PROTO_3]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 RETURN                           R8 1
