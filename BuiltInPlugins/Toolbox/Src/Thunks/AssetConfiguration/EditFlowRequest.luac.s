PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 NEWTABLE                         R1 0 0
        6 GETTABLEKS                       R2 R1 K1 ["assetTypeEnum"]
        8 GETTABLEKS                       R3 R1 K2 ["assetConfigData"]
       10 JUMPIF                           R3 ; [+2]
       11 NEWTABLE                         R3 0 0
       13 GETTABLEKS                       R4 R1 K3 ["idToFiatProductMap"]
       15 JUMPIF                           R4 ; [+2]
       16 NEWTABLE                         R4 0 0
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K4 ["assetId"]
       21 GETTABLE                         R6 R4 R7
       22 JUMPIFNOT                        R6 ; [+5]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K4 ["assetId"]
       26 GETTABLE                         R5 R4 R6
       27 JUMP                             ; [+4]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K5 ["getDefaultFiatProduct"]
       31 CALL                             R5 0 1
       32 GETUPVAL                         R6 2
       33 JUMPIF                           R6 ; [+9]
       34 GETUPVAL                         R6 3
       35 JUMPIFNOT                        R6 ; [+7]
       36 GETUPVAL                         R6 4
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K6 ["ixp"]
       40 LOADK                            R8 K7 ["MarketplaceModelsAsPackages"]
       41 LOADK                            R9 K8 ["MarketplaceModelsAsPackagesEnabled"]
       42 CALL                             R6 3 1
       43 GETUPVAL                         R7 5
       44 GETTABLEKS                       R7 R7 K9 ["isCatalogAsset"]
       46 MOVE                             R8 R2
       47 CALL                             R7 1 1
       48 JUMPIFNOT                        R7 ; [+37]
       49 GETTABLEKS                       R7 R3 K10 ["Status"]
       51 JUMPIFNOT                        R7 ; [+29]
       52 GETUPVAL                         R9 6
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K11 ["networkInterface"]
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K4 ["assetId"]
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R12 R12 K12 ["name"]
       62 GETUPVAL                         R14 0
       63 GETTABLEKS                       R14 R14 K14 ["description"]
       65 ORK                              R13 R14 K13 [""]
       66 GETTABLEKS                       R14 R3 K10 ["Status"]
       68 GETUPVAL                         R15 0
       69 GETTABLEKS                       R15 R15 K15 ["status"]
       71 GETTABLEKS                       R16 R3 K16 ["Price"]
       73 GETUPVAL                         R17 0
       74 GETTABLEKS                       R17 R17 K17 ["price"]
       76 CALL                             R9 8 -1
       77 NAMECALL                         R7 R0 K18 ["dispatch"]
       79 CALL                             R7 -1 0
       80 RETURN                           R0 0
       81 GETIMPORT                        R7 K20 [warn]
       83 LOADK                            R8 K21 ["Could not configure sales, missing Asset Status!"]
       84 CALL                             R7 1 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R7 5
       87 GETTABLEKS                       R7 R7 K22 ["isMarketplaceAsset"]
       89 MOVE                             R8 R2
       90 CALL                             R7 1 1
       91 JUMPIFNOT                        R7 ; [+82]
       92 GETUPVAL                         R7 0
       93 GETTABLEKS                       R7 R7 K23 ["copyOn"]
       95 GETUPVAL                         R8 0
       96 GETTABLEKS                       R8 R8 K24 ["copyChanged"]
       98 JUMPIF                           R8 ; [+1]
       99 LOADNIL                          R7
      100 GETUPVAL                         R10 7
      101 DUPTABLE                         R11 K33 [{"networkInterface", "assetId", "assetMediaUpdateData", "assetTypeEnum", "name", "description", "commentOn", "copyOn", "saleStatus", "fromPrice", "price", "iconFile", "isAssetPublic", "isConvertMarketplaceModelsToPackageEnabled", "basePrice"}]
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R12 R12 K11 ["networkInterface"]
      105 SETTABLEKS                       R12 R11 K11 ["networkInterface"]
      107 GETUPVAL                         R12 0
      108 GETTABLEKS                       R12 R12 K34 ["stateAssetId"]
      110 SETTABLEKS                       R12 R11 K4 ["assetId"]
      112 GETUPVAL                         R12 0
      113 GETTABLEKS                       R12 R12 K25 ["assetMediaUpdateData"]
      115 SETTABLEKS                       R12 R11 K25 ["assetMediaUpdateData"]
      117 SETTABLEKS                       R2 R11 K1 ["assetTypeEnum"]
      119 GETUPVAL                         R12 0
      120 GETTABLEKS                       R12 R12 K12 ["name"]
      122 SETTABLEKS                       R12 R11 K12 ["name"]
      124 GETUPVAL                         R13 0
      125 GETTABLEKS                       R13 R13 K14 ["description"]
      127 ORK                              R12 R13 K13 [""]
      128 SETTABLEKS                       R12 R11 K14 ["description"]
      130 GETUPVAL                         R12 0
      131 GETTABLEKS                       R12 R12 K26 ["commentOn"]
      133 SETTABLEKS                       R12 R11 K26 ["commentOn"]
      135 SETTABLEKS                       R7 R11 K23 ["copyOn"]
      137 GETUPVAL                         R12 0
      138 GETTABLEKS                       R12 R12 K15 ["status"]
      140 SETTABLEKS                       R12 R11 K27 ["saleStatus"]
      142 GETTABLEKS                       R12 R3 K16 ["Price"]
      144 SETTABLEKS                       R12 R11 K28 ["fromPrice"]
      146 GETUPVAL                         R12 0
      147 GETTABLEKS                       R12 R12 K17 ["price"]
      149 SETTABLEKS                       R12 R11 K17 ["price"]
      151 GETUPVAL                         R12 0
      152 GETTABLEKS                       R12 R12 K29 ["iconFile"]
      154 SETTABLEKS                       R12 R11 K29 ["iconFile"]
      156 GETUPVAL                         R12 0
      157 GETTABLEKS                       R12 R12 K30 ["isAssetPublic"]
      159 SETTABLEKS                       R12 R11 K30 ["isAssetPublic"]
      161 SETTABLEKS                       R6 R11 K31 ["isConvertMarketplaceModelsToPackageEnabled"]
      163 JUMPIFNOT                        R5 ; [+3]
      164 GETTABLEKS                       R12 R5 K32 ["basePrice"]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R12
      168 SETTABLEKS                       R12 R11 K32 ["basePrice"]
      170 CALL                             R10 1 -1
      171 NAMECALL                         R8 R0 K18 ["dispatch"]
      173 CALL                             R8 -1 0
      174 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       14 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K4 [game]
       19 LOADK                            R4 K7 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       20 NAMECALL                         R2 R2 K6 ["GetFastFlag"]
       22 CALL                             R2 2 1
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Util"]
       27 GETIMPORT                        R4 K11 [require]
       29 GETTABLEKS                       R5 R3 K12 ["AssetConfigUtil"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K13 ["FiatUtil"]
       36 CALL                             R5 1 1
       37 LOADNIL                          R6
       38 JUMPIFNOT                        R2 ; [+6]
       39 GETIMPORT                        R7 K11 [require]
       41 GETTABLEKS                       R8 R3 K14 ["getIsIXPVariableEnabled"]
       43 CALL                             R7 1 1
       44 MOVE                             R6 R7
       45 GETTABLEKS                       R7 R0 K8 ["Src"]
       47 GETTABLEKS                       R7 R7 K15 ["Networking"]
       49 GETTABLEKS                       R7 R7 K16 ["Requests"]
       51 GETIMPORT                        R8 K11 [require]
       53 GETTABLEKS                       R9 R7 K17 ["ConfigureCatalogItemRequest"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K11 [require]
       58 GETTABLEKS                       R10 R7 K18 ["PatchAssetRequest"]
       60 CALL                             R9 1 1
       61 NEWCLOSURE                       R10 P0
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          REF R6
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CLOSEUPVALS                      R6
       70 RETURN                           R10 1
