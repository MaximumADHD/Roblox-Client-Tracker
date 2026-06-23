PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R1 R0 K0 ["getState"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETTABLEKS                       R2 R1 K1 ["assetTypeEnum"]
       12 GETTABLEKS                       R3 R1 K2 ["assetConfigData"]
       14 JUMPIF                           R3 ; [+2]
       15 NEWTABLE                         R3 0 0
       17 GETTABLEKS                       R4 R1 K3 ["idToFiatProductMap"]
       19 JUMPIF                           R4 ; [+2]
       20 NEWTABLE                         R4 0 0
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K4 ["assetId"]
       25 GETTABLE                         R6 R4 R7
       26 JUMPIFNOT                        R6 ; [+5]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K4 ["assetId"]
       30 GETTABLE                         R5 R4 R6
       31 JUMP                             ; [+4]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K5 ["getDefaultFiatProduct"]
       35 CALL                             R5 0 1
       36 GETUPVAL                         R6 3
       37 JUMPIF                           R6 ; [+9]
       38 GETUPVAL                         R6 4
       39 JUMPIFNOT                        R6 ; [+7]
       40 GETUPVAL                         R6 5
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K6 ["ixp"]
       44 LOADK                            R8 K7 ["MarketplaceModelsAsPackages"]
       45 LOADK                            R9 K8 ["MarketplaceModelsAsPackagesEnabled"]
       46 CALL                             R6 3 1
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R7 R7 K9 ["isCatalogAsset"]
       50 MOVE                             R8 R2
       51 CALL                             R7 1 1
       52 JUMPIFNOT                        R7 ; [+37]
       53 GETTABLEKS                       R7 R3 K10 ["Status"]
       55 JUMPIFNOT                        R7 ; [+29]
       56 GETUPVAL                         R9 7
       57 GETUPVAL                         R10 1
       58 GETTABLEKS                       R10 R10 K11 ["networkInterface"]
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R11 R11 K4 ["assetId"]
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R12 R12 K12 ["name"]
       66 GETUPVAL                         R14 1
       67 GETTABLEKS                       R14 R14 K14 ["description"]
       69 ORK                              R13 R14 K13 [""]
       70 GETTABLEKS                       R14 R3 K10 ["Status"]
       72 GETUPVAL                         R15 1
       73 GETTABLEKS                       R15 R15 K15 ["status"]
       75 GETTABLEKS                       R16 R3 K16 ["Price"]
       77 GETUPVAL                         R17 1
       78 GETTABLEKS                       R17 R17 K17 ["price"]
       80 CALL                             R9 8 -1
       81 NAMECALL                         R7 R0 K18 ["dispatch"]
       83 CALL                             R7 -1 0
       84 RETURN                           R0 0
       85 GETIMPORT                        R7 K20 [warn]
       87 LOADK                            R8 K21 ["Could not configure sales, missing Asset Status!"]
       88 CALL                             R7 1 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R7 6
       91 GETTABLEKS                       R7 R7 K22 ["isMarketplaceAsset"]
       93 MOVE                             R8 R2
       94 CALL                             R7 1 1
       95 JUMPIFNOT                        R7 ; [+82]
       96 GETUPVAL                         R7 1
       97 GETTABLEKS                       R7 R7 K23 ["copyOn"]
       99 GETUPVAL                         R8 1
      100 GETTABLEKS                       R8 R8 K24 ["copyChanged"]
      102 JUMPIF                           R8 ; [+1]
      103 LOADNIL                          R7
      104 GETUPVAL                         R10 8
      105 DUPTABLE                         R11 K33 [{"networkInterface", "assetId", "assetMediaUpdateData", "assetTypeEnum", "name", "description", "commentOn", "copyOn", "saleStatus", "fromPrice", "price", "iconFile", "isAssetPublic", "isConvertMarketplaceModelsToPackageEnabled", "basePrice"}]
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R12 R12 K11 ["networkInterface"]
      109 SETTABLEKS                       R12 R11 K11 ["networkInterface"]
      111 GETUPVAL                         R12 1
      112 GETTABLEKS                       R12 R12 K34 ["stateAssetId"]
      114 SETTABLEKS                       R12 R11 K4 ["assetId"]
      116 GETUPVAL                         R12 1
      117 GETTABLEKS                       R12 R12 K25 ["assetMediaUpdateData"]
      119 SETTABLEKS                       R12 R11 K25 ["assetMediaUpdateData"]
      121 SETTABLEKS                       R2 R11 K1 ["assetTypeEnum"]
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R12 R12 K12 ["name"]
      126 SETTABLEKS                       R12 R11 K12 ["name"]
      128 GETUPVAL                         R13 1
      129 GETTABLEKS                       R13 R13 K14 ["description"]
      131 ORK                              R12 R13 K13 [""]
      132 SETTABLEKS                       R12 R11 K14 ["description"]
      134 GETUPVAL                         R12 1
      135 GETTABLEKS                       R12 R12 K26 ["commentOn"]
      137 SETTABLEKS                       R12 R11 K26 ["commentOn"]
      139 SETTABLEKS                       R7 R11 K23 ["copyOn"]
      141 GETUPVAL                         R12 1
      142 GETTABLEKS                       R12 R12 K15 ["status"]
      144 SETTABLEKS                       R12 R11 K27 ["saleStatus"]
      146 GETTABLEKS                       R12 R3 K16 ["Price"]
      148 SETTABLEKS                       R12 R11 K28 ["fromPrice"]
      150 GETUPVAL                         R12 1
      151 GETTABLEKS                       R12 R12 K17 ["price"]
      153 SETTABLEKS                       R12 R11 K17 ["price"]
      155 GETUPVAL                         R12 1
      156 GETTABLEKS                       R12 R12 K29 ["iconFile"]
      158 SETTABLEKS                       R12 R11 K29 ["iconFile"]
      160 GETUPVAL                         R12 1
      161 GETTABLEKS                       R12 R12 K30 ["isAssetPublic"]
      163 SETTABLEKS                       R12 R11 K30 ["isAssetPublic"]
      165 SETTABLEKS                       R6 R11 K31 ["isConvertMarketplaceModelsToPackageEnabled"]
      167 JUMPIFNOT                        R5 ; [+3]
      168 GETTABLEKS                       R12 R5 K32 ["basePrice"]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R12
      172 SETTABLEKS                       R12 R11 K32 ["basePrice"]
      174 CALL                             R10 1 -1
      175 NAMECALL                         R8 R0 K18 ["dispatch"]
      177 CALL                             R8 -1 0
      178 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 RETURN                           R1 1

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
       23 GETIMPORT                        R3 K9 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagToolboxPublishFlowHelpers"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R0 K10 ["Src"]
       34 GETTABLEKS                       R4 R4 K13 ["Util"]
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R4 K14 ["AssetConfigUtil"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R4 K15 ["FiatUtil"]
       45 CALL                             R6 1 1
       46 LOADNIL                          R7
       47 JUMPIFNOT                        R2 ; [+6]
       48 GETIMPORT                        R8 K9 [require]
       50 GETTABLEKS                       R9 R4 K16 ["getIsIXPVariableEnabled"]
       52 CALL                             R8 1 1
       53 MOVE                             R7 R8
       54 GETTABLEKS                       R8 R0 K10 ["Src"]
       56 GETTABLEKS                       R8 R8 K17 ["Networking"]
       58 GETTABLEKS                       R8 R8 K18 ["Requests"]
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R8 K19 ["ConfigureCatalogItemRequest"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K9 [require]
       67 GETTABLEKS                       R11 R8 K20 ["PatchAssetRequest"]
       69 CALL                             R10 1 1
       70 NEWCLOSURE                       R11 P0
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R2
       75 CAPTURE                          REF R7
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R10
       79 CLOSEUPVALS                      R7
       80 RETURN                           R11 1
