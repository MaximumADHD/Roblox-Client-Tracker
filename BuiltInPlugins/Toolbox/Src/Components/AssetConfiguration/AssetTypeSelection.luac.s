PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["canSkip"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["goToNextScreen"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K4 [{[1] = "Game development assets", ["selectable"] = False}]
        3 DUPTABLE                         R3 K8 [{[1] = "Model", ["selectable"] = True, ["type"]}]
        4 GETIMPORT                        R4 K11 [Enum.AssetType.Model]
        6 SETTABLEKS                       R4 R3 K7 ["type"]
        8 SETLIST                          R1 R2 2 [1]
       10 DUPTABLE                         R4 K13 [{[1] = "Animation", ["selectable"] = True, ["type"]}]
       11 GETIMPORT                        R5 K14 [Enum.AssetType.Animation]
       13 SETTABLEKS                       R5 R4 K7 ["type"]
       15 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K17 [table.insert]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R3 R0 K18 ["props"]
       24 GETTABLEKS                       R3 R3 K19 ["allowedAssetTypesForRelease"]
       26 CALL                             R2 1 1
       27 LENGTH                           R3 R2
       28 LOADN                            R4 0
       29 JUMPIFNOTLT                      R4 R3 ; [+40]
       31 GETTABLEKS                       R4 R0 K18 ["props"]
       33 GETTABLEKS                       R4 R4 K21 ["Localization"]
       35 LOADK                            R6 K22 ["General"]
       36 LOADK                            R7 K23 ["CategoryCreationsCatalogSectionDivider"]
       37 NAMECALL                         R4 R4 K24 ["getText"]
       39 CALL                             R4 3 1
       40 ORK                              R3 R4 K20 [""]
       41 LENGTH                           R5 R1
       42 ADDK                             R4 R5 K25 [1]
       43 DUPTABLE                         R5 K26 [{[1], ["selectable"] = False}]
       44 SETTABLEKS                       R3 R5 K0 ["name"]
       46 SETTABLE                         R5 R1 R4
       47 GETIMPORT                        R4 K28 [pairs]
       49 MOVE                             R5 R2
       50 CALL                             R4 1 3
       51 FORGPREP_NEXT                    R4
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R12 R0 K18 ["props"]
       55 GETTABLEKS                       R12 R12 K21 ["Localization"]
       57 CALL                             R11 1 1
       58 GETTABLE                         R10 R11 R8
       59 ORK                              R9 R10 K20 [""]
       60 LENGTH                           R11 R1
       61 ADDK                             R10 R11 K25 [1]
       62 DUPTABLE                         R11 K29 [{[1], ["selectable"] = True, ["type"]}]
       63 SETTABLEKS                       R9 R11 K0 ["name"]
       65 SETTABLEKS                       R8 R11 K7 ["type"]
       67 SETTABLE                         R11 R1 R10
       68 FORGLOOP                         R4 2 ; [-17]
       70 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isBuyableMarketplaceAsset"]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["assetTypeEnum"]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+2]
        9 LOADB                            R1 1
       10 RETURN                           R1 1
       11 LOADN                            R1 0
       12 GETIMPORT                        R2 K4 [pairs]
       14 NAMECALL                         R3 R0 K5 ["getSelectorItems"]
       16 CALL                             R3 1 -1
       17 CALL                             R2 -1 3
       18 FORGPREP_NEXT                    R2
       19 GETTABLEKS                       R7 R6 K6 ["selectable"]
       21 JUMPIFNOT                        R7 ; [+1]
       22 ADDK                             R1 R1 K7 [1]
       23 FORGLOOP                         R2 2 ; [-5]
       25 JUMPIFEQKN                       R1 K8 [2] ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["goToNextScreen"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+10]
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K2 ["assetTypeEnum"]
       10 GETIMPORT                        R5 K6 [Enum.AssetType.Animation]
       12 JUMPIFEQ                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K7 ["createElement"]
       19 LOADK                            R5 K8 ["Frame"]
       20 DUPTABLE                         R6 K14 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Size"]}]
       21 GETTABLEKS                       R7 R2 K15 ["typeSelection"]
       23 GETTABLEKS                       R7 R7 K16 ["background"]
       25 SETTABLEKS                       R7 R6 K9 ["BackgroundColor3"]
       27 GETTABLEKS                       R7 R1 K13 ["Size"]
       29 SETTABLEKS                       R7 R6 K13 ["Size"]
       31 DUPTABLE                         R7 K21 [{"AssetThumbnailPreview", "DefaultThumbnailPreview", "AssetTypeSelector", "Footer"}]
       32 NOT                              R8 R3
       33 JUMPIFNOT                        R8 ; [+24]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K7 ["createElement"]
       37 GETUPVAL                         R9 2
       38 DUPTABLE                         R10 K27 [{["Size"], ["Position"], ["titleHeight"] = 24, ["titlePadding"] = 12}]
       39 GETIMPORT                        R11 K30 [UDim2.new]
       41 LOADN                            R12 0
       42 LOADN                            R13 150
       43 LOADN                            R14 0
       44 LOADN                            R15 186
       45 CALL                             R11 4 1
       46 SETTABLEKS                       R11 R10 K13 ["Size"]
       48 GETIMPORT                        R11 K30 [UDim2.new]
       50 LOADK                            R12 K31 [0.5]
       51 LOADN                            R13 -75
       52 LOADN                            R14 0
       53 LOADN                            R15 48
       54 CALL                             R11 4 1
       55 SETTABLEKS                       R11 R10 K22 ["Position"]
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K17 ["AssetThumbnailPreview"]
       60 MOVE                             R8 R3
       61 JUMPIFNOT                        R8 ; [+24]
       62 GETUPVAL                         R8 1
       63 GETTABLEKS                       R8 R8 K7 ["createElement"]
       65 GETUPVAL                         R9 3
       66 DUPTABLE                         R10 K32 [{"Size", "Position"}]
       67 GETIMPORT                        R11 K30 [UDim2.new]
       69 LOADN                            R12 0
       70 LOADN                            R13 150
       71 LOADN                            R14 0
       72 LOADN                            R15 186
       73 CALL                             R11 4 1
       74 SETTABLEKS                       R11 R10 K13 ["Size"]
       76 GETIMPORT                        R11 K30 [UDim2.new]
       78 LOADK                            R12 K31 [0.5]
       79 LOADN                            R13 -75
       80 LOADN                            R14 0
       81 LOADN                            R15 48
       82 CALL                             R11 4 1
       83 SETTABLEKS                       R11 R10 K22 ["Position"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K18 ["DefaultThumbnailPreview"]
       88 GETUPVAL                         R8 1
       89 GETTABLEKS                       R8 R8 K7 ["createElement"]
       91 GETUPVAL                         R9 4
       92 DUPTABLE                         R10 K39 [{["Position"], ["height"] = 40, ["width"] = 400, ["assetTypeEnum"], ["onAssetTypeSelected"], ["items"]}]
       93 GETIMPORT                        R11 K30 [UDim2.new]
       95 LOADK                            R12 K31 [0.5]
       96 LOADN                            R13 -200
       97 LOADN                            R14 0
       98 LOADN                            R15 310
       99 CALL                             R11 4 1
      100 SETTABLEKS                       R11 R10 K22 ["Position"]
      102 GETTABLEKS                       R11 R0 K0 ["props"]
      104 GETTABLEKS                       R11 R11 K2 ["assetTypeEnum"]
      106 SETTABLEKS                       R11 R10 K2 ["assetTypeEnum"]
      108 GETTABLEKS                       R11 R0 K0 ["props"]
      110 GETTABLEKS                       R11 R11 K37 ["onAssetTypeSelected"]
      112 SETTABLEKS                       R11 R10 K37 ["onAssetTypeSelected"]
      114 NAMECALL                         R11 R0 K40 ["getSelectorItems"]
      116 CALL                             R11 1 1
      117 SETTABLEKS                       R11 R10 K38 ["items"]
      119 CALL                             R8 2 1
      120 SETTABLEKS                       R8 R7 K19 ["AssetTypeSelector"]
      122 GETUPVAL                         R8 1
      123 GETTABLEKS                       R8 R8 K7 ["createElement"]
      125 LOADK                            R9 K8 ["Frame"]
      126 DUPTABLE                         R10 K42 [{"Size", "Position", "BackgroundColor3", "BorderColor3"}]
      127 GETIMPORT                        R11 K30 [UDim2.new]
      129 LOADN                            R12 1
      130 LOADN                            R13 0
      131 LOADN                            R14 0
      132 LOADN                            R15 62
      133 CALL                             R11 4 1
      134 SETTABLEKS                       R11 R10 K13 ["Size"]
      136 GETIMPORT                        R11 K30 [UDim2.new]
      138 LOADN                            R12 0
      139 LOADN                            R13 0
      140 LOADN                            R14 1
      141 LOADN                            R15 -62
      142 CALL                             R11 4 1
      143 SETTABLEKS                       R11 R10 K22 ["Position"]
      145 GETTABLEKS                       R11 R2 K15 ["typeSelection"]
      147 GETTABLEKS                       R11 R11 K43 ["configFooter"]
      149 GETTABLEKS                       R11 R11 K16 ["background"]
      151 SETTABLEKS                       R11 R10 K9 ["BackgroundColor3"]
      153 GETTABLEKS                       R11 R2 K15 ["typeSelection"]
      155 GETTABLEKS                       R11 R11 K43 ["configFooter"]
      157 GETTABLEKS                       R11 R11 K44 ["border"]
      159 SETTABLEKS                       R11 R10 K41 ["BorderColor3"]
      161 DUPTABLE                         R11 K49 [{"UIListLayout", "UIPadding", "CancelButton", "NextButton"}]
      162 GETUPVAL                         R12 1
      163 GETTABLEKS                       R12 R12 K7 ["createElement"]
      165 LOADK                            R13 K45 ["UIListLayout"]
      166 DUPTABLE                         R14 K54 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      167 GETIMPORT                        R15 K56 [UDim.new]
      169 LOADN                            R16 0
      170 LOADN                            R17 24
      171 CALL                             R15 2 1
      172 SETTABLEKS                       R15 R14 K50 ["Padding"]
      174 GETIMPORT                        R15 K58 [Enum.FillDirection.Horizontal]
      176 SETTABLEKS                       R15 R14 K51 ["FillDirection"]
      178 GETIMPORT                        R15 K60 [Enum.HorizontalAlignment.Right]
      180 SETTABLEKS                       R15 R14 K52 ["HorizontalAlignment"]
      182 GETIMPORT                        R15 K62 [Enum.VerticalAlignment.Center]
      184 SETTABLEKS                       R15 R14 K53 ["VerticalAlignment"]
      186 CALL                             R12 2 1
      187 SETTABLEKS                       R12 R11 K45 ["UIListLayout"]
      189 GETUPVAL                         R12 1
      190 GETTABLEKS                       R12 R12 K7 ["createElement"]
      192 LOADK                            R13 K46 ["UIPadding"]
      193 DUPTABLE                         R14 K64 [{"PaddingRight"}]
      194 GETIMPORT                        R15 K56 [UDim.new]
      196 LOADN                            R16 0
      197 LOADN                            R17 24
      198 CALL                             R15 2 1
      199 SETTABLEKS                       R15 R14 K63 ["PaddingRight"]
      201 CALL                             R12 2 1
      202 SETTABLEKS                       R12 R11 K46 ["UIPadding"]
      204 GETUPVAL                         R12 1
      205 GETTABLEKS                       R12 R12 K7 ["createElement"]
      207 GETUPVAL                         R13 5
      208 DUPTABLE                         R14 K69 [{["Size"], ["LayoutOrder"] = 0, ["titleText"] = "Cancel", ["onClick"]}]
      209 GETIMPORT                        R15 K30 [UDim2.new]
      211 LOADN                            R16 0
      212 LOADN                            R17 120
      213 LOADN                            R18 0
      214 LOADN                            R19 32
      215 CALL                             R15 4 1
      216 SETTABLEKS                       R15 R14 K13 ["Size"]
      218 GETTABLEKS                       R15 R1 K70 ["onClose"]
      220 SETTABLEKS                       R15 R14 K68 ["onClick"]
      222 CALL                             R12 2 1
      223 SETTABLEKS                       R12 R11 K47 ["CancelButton"]
      225 GETUPVAL                         R12 1
      226 GETTABLEKS                       R12 R12 K7 ["createElement"]
      228 GETUPVAL                         R13 5
      229 DUPTABLE                         R14 K75 [{["Size"], ["LayoutOrder"] = 1, ["titleText"] = "Next", ["isPrimary"] = True, ["onClick"]}]
      230 GETIMPORT                        R15 K30 [UDim2.new]
      232 LOADN                            R16 0
      233 LOADN                            R17 120
      234 LOADN                            R18 0
      235 LOADN                            R19 32
      236 CALL                             R15 4 1
      237 SETTABLEKS                       R15 R14 K13 ["Size"]
      239 NEWCLOSURE                       R15 P0
      240 CAPTURE                          VAL R0
      241 SETTABLEKS                       R15 R14 K68 ["onClick"]
      243 CALL                             R12 2 1
      244 SETTABLEKS                       R12 R11 K48 ["NextButton"]
      246 CALL                             R8 3 1
      247 SETTABLEKS                       R8 R7 K20 ["Footer"]
      249 CALL                             R4 3 -1
      250 RETURN                           R4 -1

PROTO_5:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K5 [{"instances", "currentScreen", "screenFlowType", "allowedAssetTypesForRelease", "assetTypeEnum"}]
        6 GETTABLEKS                       R3 R0 K0 ["instances"]
        8 SETTABLEKS                       R3 R2 K0 ["instances"]
       10 GETTABLEKS                       R3 R0 K1 ["currentScreen"]
       12 SETTABLEKS                       R3 R2 K1 ["currentScreen"]
       14 GETTABLEKS                       R3 R0 K2 ["screenFlowType"]
       16 SETTABLEKS                       R3 R2 K2 ["screenFlowType"]
       18 GETTABLEKS                       R3 R0 K3 ["allowedAssetTypesForRelease"]
       20 SETTABLEKS                       R3 R2 K3 ["allowedAssetTypesForRelease"]
       22 GETTABLEKS                       R3 R0 K4 ["assetTypeEnum"]
       24 SETTABLEKS                       R3 R2 K4 ["assetTypeEnum"]
       26 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R2 K1 ["CONFIGURE_ASSET"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"goToNextScreen", "onAssetTypeSelected"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["goToNextScreen"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["onAssetTypeSelected"]
       12 RETURN                           R1 1

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
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R5 K10 ["Util"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K11 ["AssetConfigConstants"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R5 K12 ["AssetConfigUtil"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R5 K13 ["getAllowedAssetTypeEnums"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K9 ["Src"]
       51 GETTABLEKS                       R10 R10 K14 ["Localization"]
       53 GETTABLEKS                       R10 R10 K15 ["getLocalizedAssetTextMap"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R10 R0 K9 ["Src"]
       58 GETTABLEKS                       R10 R10 K16 ["Components"]
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R10 K17 ["NavButton"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R13 R10 K18 ["AssetConfiguration"]
       69 GETTABLEKS                       R13 R13 K19 ["AssetThumbnailPreview"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K5 [require]
       74 GETTABLEKS                       R14 R10 K18 ["AssetConfiguration"]
       76 GETTABLEKS                       R14 R14 K20 ["DefaultThumbnailPreview"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R15 R10 K18 ["AssetConfiguration"]
       83 GETTABLEKS                       R15 R15 K21 ["AssetTypeSelector"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K23 [game]
       88 LOADK                            R17 K24 ["UseDefaultThumbnailForAnimation"]
       89 NAMECALL                         R15 R15 K25 ["GetFastFlag"]
       91 CALL                             R15 2 1
       92 GETTABLEKS                       R16 R0 K9 ["Src"]
       94 GETTABLEKS                       R16 R16 K26 ["Actions"]
       96 GETIMPORT                        R17 K5 [require]
       98 GETTABLEKS                       R18 R16 K27 ["SetCurrentScreen"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K5 [require]
      103 GETTABLEKS                       R19 R16 K28 ["SetUploadAssetType"]
      105 CALL                             R18 1 1
      106 GETTABLEKS                       R19 R4 K29 ["ContextServices"]
      108 GETTABLEKS                       R20 R19 K30 ["withContext"]
      110 GETTABLEKS                       R21 R2 K31 ["PureComponent"]
      112 LOADK                            R23 K32 ["AssetTypeSelection"]
      113 NAMECALL                         R21 R21 K33 ["extend"]
      115 CALL                             R21 2 1
      116 DUPCLOSURE                       R22 K34 [PROTO_0]
      117 SETTABLEKS                       R22 R21 K35 ["didMount"]
      119 DUPCLOSURE                       R22 K36 [PROTO_1]
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R9
      122 SETTABLEKS                       R22 R21 K37 ["getSelectorItems"]
      124 DUPCLOSURE                       R22 K38 [PROTO_2]
      125 CAPTURE                          VAL R7
      126 SETTABLEKS                       R22 R21 K39 ["canSkip"]
      128 DUPCLOSURE                       R22 K40 [PROTO_4]
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R11
      135 SETTABLEKS                       R22 R21 K41 ["render"]
      137 DUPCLOSURE                       R22 K42 [PROTO_5]
      138 DUPCLOSURE                       R23 K43 [PROTO_8]
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R18
      142 MOVE                             R24 R20
      143 DUPTABLE                         R25 K45 [{"Stylizer", "Localization"}]
      144 GETTABLEKS                       R26 R19 K44 ["Stylizer"]
      146 SETTABLEKS                       R26 R25 K44 ["Stylizer"]
      148 GETTABLEKS                       R26 R19 K14 ["Localization"]
      150 SETTABLEKS                       R26 R25 K14 ["Localization"]
      152 CALL                             R24 1 1
      153 MOVE                             R25 R21
      154 CALL                             R24 1 1
      155 MOVE                             R21 R24
      156 GETTABLEKS                       R24 R3 K46 ["connect"]
      158 MOVE                             R25 R22
      159 MOVE                             R26 R23
      160 CALL                             R24 2 1
      161 MOVE                             R25 R21
      162 CALL                             R24 1 -1
      163 RETURN                           R24 -1
