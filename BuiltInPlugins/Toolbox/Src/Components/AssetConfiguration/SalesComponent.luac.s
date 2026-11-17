PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CanChangeSalesStatus"]
        5 GETTABLEKS                       R2 R0 K2 ["NewAssetStatus"]
        7 GETTABLEKS                       R3 R0 K3 ["CurrentAssetStatus"]
        9 GETTABLEKS                       R4 R0 K4 ["OnStatusChange"]
       11 JUMPIFNOT                        R1 ; [+20]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K5 ["isOnSale"]
       15 MOVE                             R7 R3
       16 CALL                             R6 1 1
       17 JUMPIFNOT                        R6 ; [+6]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K6 ["ASSET_STATUS"]
       21 GETTABLEKS                       R5 R5 K7 ["OffSale"]
       23 JUMPIF                           R5 ; [+5]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K6 ["ASSET_STATUS"]
       27 GETTABLEKS                       R5 R5 K8 ["OnSale"]
       29 MOVE                             R6 R4
       30 MOVE                             R7 R5
       31 CALL                             R6 1 0
       32 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R2 R0 K0 ["onToggle"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Title"]
        8 GETTABLEKS                       R4 R2 K3 ["NewAssetStatus"]
       10 GETTABLEKS                       R5 R2 K4 ["CurrentAssetStatus"]
       12 GETTABLEKS                       R6 R2 K5 ["AssetTypeEnum"]
       14 GETTABLEKS                       R7 R1 K6 ["assetConfig"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K7 ["isMarketplaceAsset"]
       19 MOVE                             R10 R6
       20 CALL                             R9 1 1
       21 JUMPIFNOT                        R9 ; [+2]
       22 LOADK                            R8 K8 ["Marketplace"]
       23 JUMP                             ; [+1]
       24 LOADK                            R8 K9 ["Catalog"]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K7 ["isMarketplaceAsset"]
       28 MOVE                             R11 R6
       29 CALL                             R10 1 1
       30 JUMPIFNOT                        R10 ; [+2]
       31 LOADK                            R9 K10 ["developer"]
       32 JUMP                             ; [+1]
       33 LOADK                            R9 K11 ["user"]
       34 GETTABLEKS                       R10 R2 K12 ["Localization"]
       36 LOADK                            R12 K13 ["AssetConfigSales"]
       37 LOADK                            R13 K14 ["Target"]
       38 DUPTABLE                         R14 K16 [{"market", "user"}]
       39 SETTABLEKS                       R8 R14 K15 ["market"]
       41 SETTABLEKS                       R9 R14 K11 ["user"]
       43 NAMECALL                         R10 R10 K17 ["getText"]
       45 CALL                             R10 4 1
       46 GETTABLEKS                       R11 R2 K18 ["CanChangeSalesStatus"]
       48 GETTABLEKS                       R12 R7 K19 ["labelTextColor"]
       50 GETTABLEKS                       R13 R2 K20 ["LayoutOrder"]
       52 GETUPVAL                         R14 1
       53 GETTABLEKS                       R14 R14 K21 ["new"]
       55 CALL                             R14 0 1
       56 GETUPVAL                         R15 2
       57 GETTABLEKS                       R15 R15 K22 ["createElement"]
       59 GETUPVAL                         R16 3
       60 DUPTABLE                         R17 K23 [{"Title", "LayoutOrder"}]
       61 SETTABLEKS                       R3 R17 K2 ["Title"]
       63 SETTABLEKS                       R13 R17 K20 ["LayoutOrder"]
       65 DUPTABLE                         R18 K26 [{"ToggleButton", "Label"}]
       66 GETUPVAL                         R19 2
       67 GETTABLEKS                       R19 R19 K22 ["createElement"]
       69 GETUPVAL                         R20 4
       70 DUPTABLE                         R21 K31 [{"Disabled", "LayoutOrder", "OnClick", "Selected", "Size"}]
       71 NOT                              R22 R11
       72 SETTABLEKS                       R22 R21 K27 ["Disabled"]
       74 NAMECALL                         R22 R14 K32 ["getNextOrder"]
       76 CALL                             R22 1 1
       77 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
       79 GETTABLEKS                       R22 R0 K33 ["onToggle"]
       81 SETTABLEKS                       R22 R21 K28 ["OnClick"]
       83 GETUPVAL                         R22 0
       84 GETTABLEKS                       R22 R22 K34 ["isOnSale"]
       86 MOVE                             R23 R4
       87 CALL                             R22 1 1
       88 SETTABLEKS                       R22 R21 K29 ["Selected"]
       90 GETIMPORT                        R22 K36 [UDim2.new]
       92 LOADN                            R23 0
       93 LOADN                            R24 40
       94 LOADN                            R25 0
       95 LOADN                            R26 24
       96 CALL                             R22 4 1
       97 SETTABLEKS                       R22 R21 K30 ["Size"]
       99 CALL                             R19 2 1
      100 SETTABLEKS                       R19 R18 K24 ["ToggleButton"]
      102 GETUPVAL                         R19 2
      103 GETTABLEKS                       R19 R19 K22 ["createElement"]
      105 LOADK                            R20 K37 ["TextLabel"]
      106 DUPTABLE                         R21 K47 [{["Size"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["BorderSizePixel"] = 0, ["Font"], ["TextSize"], ["Text"], ["TextXAlignment"], ["LayoutOrder"]}]
      107 GETIMPORT                        R22 K36 [UDim2.new]
      109 LOADN                            R23 1
      110 LOADN                            R24 0
      111 LOADN                            R25 0
      112 LOADN                            R26 24
      113 CALL                             R22 4 1
      114 SETTABLEKS                       R22 R21 K30 ["Size"]
      116 SETTABLEKS                       R12 R21 K40 ["TextColor3"]
      118 GETUPVAL                         R22 5
      119 GETTABLEKS                       R22 R22 K48 ["FONT"]
      121 SETTABLEKS                       R22 R21 K43 ["Font"]
      123 GETUPVAL                         R22 5
      124 GETTABLEKS                       R22 R22 K49 ["FONT_SIZE_SMALL"]
      126 SETTABLEKS                       R22 R21 K44 ["TextSize"]
      128 SETTABLEKS                       R10 R21 K45 ["Text"]
      130 GETIMPORT                        R22 K52 [Enum.TextXAlignment.Left]
      132 SETTABLEKS                       R22 R21 K46 ["TextXAlignment"]
      134 NAMECALL                         R22 R14 K32 ["getNextOrder"]
      136 CALL                             R22 1 1
      137 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      139 CALL                             R19 2 1
      140 SETTABLEKS                       R19 R18 K25 ["Label"]
      142 CALL                             R15 3 -1
      143 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R1 K7 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K10 ["UI"]
       34 GETTABLEKS                       R7 R6 K11 ["ToggleButton"]
       36 GETTABLEKS                       R8 R6 K12 ["TitledFrame"]
       38 GETTABLEKS                       R9 R0 K13 ["Src"]
       40 GETTABLEKS                       R9 R9 K14 ["Util"]
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R11 R9 K15 ["LayoutOrderIterator"]
       46 CALL                             R10 1 1
       47 GETIMPORT                        R11 K5 [require]
       49 GETTABLEKS                       R12 R9 K16 ["Constants"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K5 [require]
       54 GETTABLEKS                       R13 R9 K17 ["AssetConfigUtil"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R9 K18 ["AssetConfigConstants"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R14 R2 K19 ["PureComponent"]
       64 LOADK                            R16 K20 ["SalesComponent"]
       65 NAMECALL                         R14 R14 K21 ["extend"]
       67 CALL                             R14 2 1
       68 DUPCLOSURE                       R15 K22 [PROTO_1]
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R13
       71 SETTABLEKS                       R15 R14 K23 ["init"]
       73 DUPCLOSURE                       R15 K24 [PROTO_2]
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R11
       80 SETTABLEKS                       R15 R14 K25 ["render"]
       82 MOVE                             R15 R4
       83 DUPTABLE                         R16 K28 [{"Stylizer", "Localization"}]
       84 GETTABLEKS                       R17 R3 K26 ["Stylizer"]
       86 SETTABLEKS                       R17 R16 K26 ["Stylizer"]
       88 GETTABLEKS                       R17 R3 K27 ["Localization"]
       90 SETTABLEKS                       R17 R16 K27 ["Localization"]
       92 CALL                             R15 1 1
       93 MOVE                             R16 R14
       94 CALL                             R15 1 1
       95 MOVE                             R14 R15
       96 RETURN                           R14 1
