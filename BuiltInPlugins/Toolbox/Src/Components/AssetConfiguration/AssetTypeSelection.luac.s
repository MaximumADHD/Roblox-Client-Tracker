PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["canSkip"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R2 R0 K1 ["props"]
        6 GETTABLEKS                       R1 R2 K2 ["goToNextScreen"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K2 [{"name", "selectable"}]
        3 LOADK                            R3 K3 ["Game development assets"]
        4 SETTABLEKS                       R3 R2 K0 ["name"]
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K1 ["selectable"]
        9 DUPTABLE                         R3 K5 [{"name", "selectable", "type"}]
       10 LOADK                            R4 K6 ["Model"]
       11 SETTABLEKS                       R4 R3 K0 ["name"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K1 ["selectable"]
       16 GETIMPORT                        R4 K9 [Enum.AssetType.Model]
       18 SETTABLEKS                       R4 R3 K4 ["type"]
       20 SETLIST                          R1 R2 2 [1]
       22 DUPTABLE                         R4 K5 [{"name", "selectable", "type"}]
       23 LOADK                            R5 K10 ["Animation"]
       24 SETTABLEKS                       R5 R4 K0 ["name"]
       26 LOADB                            R5 1
       27 SETTABLEKS                       R5 R4 K1 ["selectable"]
       29 GETIMPORT                        R5 K11 [Enum.AssetType.Animation]
       31 SETTABLEKS                       R5 R4 K4 ["type"]
       33 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       35 MOVE                             R3 R1
       36 GETIMPORT                        R2 K14 [table.insert]
       38 CALL                             R2 2 0
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R4 R0 K15 ["props"]
       42 GETTABLEKS                       R3 R4 K16 ["allowedAssetTypesForRelease"]
       44 CALL                             R2 1 1
       45 LENGTH                           R3 R2
       46 LOADN                            R4 0
       47 JUMPIFNOTLT                      R4 R3 ; [+46]
       49 GETTABLEKS                       R5 R0 K15 ["props"]
       51 GETTABLEKS                       R4 R5 K18 ["Localization"]
       53 LOADK                            R6 K19 ["General"]
       54 LOADK                            R7 K20 ["CategoryCreationsCatalogSectionDivider"]
       55 NAMECALL                         R4 R4 K21 ["getText"]
       57 CALL                             R4 3 1
       58 ORK                              R3 R4 K17 [""]
       59 LENGTH                           R5 R1
       60 ADDK                             R4 R5 K22 [1]
       61 DUPTABLE                         R5 K2 [{"name", "selectable"}]
       62 SETTABLEKS                       R3 R5 K0 ["name"]
       64 LOADB                            R6 0
       65 SETTABLEKS                       R6 R5 K1 ["selectable"]
       67 SETTABLE                         R5 R1 R4
       68 GETIMPORT                        R4 K24 [pairs]
       70 MOVE                             R5 R2
       71 CALL                             R4 1 3
       72 FORGPREP_NEXT                    R4
       73 GETUPVAL                         R11 1
       74 GETTABLEKS                       R13 R0 K15 ["props"]
       76 GETTABLEKS                       R12 R13 K18 ["Localization"]
       78 CALL                             R11 1 1
       79 GETTABLE                         R10 R11 R8
       80 ORK                              R9 R10 K17 [""]
       81 LENGTH                           R11 R1
       82 ADDK                             R10 R11 K22 [1]
       83 DUPTABLE                         R11 K5 [{"name", "selectable", "type"}]
       84 SETTABLEKS                       R9 R11 K0 ["name"]
       86 LOADB                            R12 1
       87 SETTABLEKS                       R12 R11 K1 ["selectable"]
       89 SETTABLEKS                       R8 R11 K4 ["type"]
       91 SETTABLE                         R11 R1 R10
       92 FORGLOOP                         R4 2 ; [-20]
       94 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isBuyableMarketplaceAsset"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K2 ["assetTypeEnum"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["goToNextScreen"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+10]
        6 GETTABLEKS                       R5 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R5 K2 ["assetTypeEnum"]
       10 GETIMPORT                        R5 K6 [Enum.AssetType.Animation]
       12 JUMPIFEQ                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K7 ["createElement"]
       19 LOADK                            R5 K8 ["Frame"]
       20 DUPTABLE                         R6 K13 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
       21 GETTABLEKS                       R8 R2 K14 ["typeSelection"]
       23 GETTABLEKS                       R7 R8 K15 ["background"]
       25 SETTABLEKS                       R7 R6 K9 ["BackgroundColor3"]
       27 LOADN                            R7 0
       28 SETTABLEKS                       R7 R6 K10 ["BackgroundTransparency"]
       30 LOADN                            R7 0
       31 SETTABLEKS                       R7 R6 K11 ["BorderSizePixel"]
       33 GETTABLEKS                       R7 R1 K12 ["Size"]
       35 SETTABLEKS                       R7 R6 K12 ["Size"]
       37 DUPTABLE                         R7 K20 [{"AssetThumbnailPreview", "DefaultThumbnailPreview", "AssetTypeSelector", "Footer"}]
       38 NOT                              R8 R3
       39 JUMPIFNOT                        R8 ; [+30]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R8 R9 K7 ["createElement"]
       43 GETUPVAL                         R9 2
       44 DUPTABLE                         R10 K24 [{"Size", "Position", "titleHeight", "titlePadding"}]
       45 GETIMPORT                        R11 K27 [UDim2.new]
       47 LOADN                            R12 0
       48 LOADN                            R13 150
       49 LOADN                            R14 0
       50 LOADN                            R15 186
       51 CALL                             R11 4 1
       52 SETTABLEKS                       R11 R10 K12 ["Size"]
       54 GETIMPORT                        R11 K27 [UDim2.new]
       56 LOADK                            R12 K28 [0.5]
       57 LOADN                            R13 181
       58 LOADN                            R14 0
       59 LOADN                            R15 48
       60 CALL                             R11 4 1
       61 SETTABLEKS                       R11 R10 K21 ["Position"]
       63 LOADN                            R11 24
       64 SETTABLEKS                       R11 R10 K22 ["titleHeight"]
       66 LOADN                            R11 12
       67 SETTABLEKS                       R11 R10 K23 ["titlePadding"]
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K16 ["AssetThumbnailPreview"]
       72 MOVE                             R8 R3
       73 JUMPIFNOT                        R8 ; [+24]
       74 GETUPVAL                         R9 1
       75 GETTABLEKS                       R8 R9 K7 ["createElement"]
       77 GETUPVAL                         R9 3
       78 DUPTABLE                         R10 K29 [{"Size", "Position"}]
       79 GETIMPORT                        R11 K27 [UDim2.new]
       81 LOADN                            R12 0
       82 LOADN                            R13 150
       83 LOADN                            R14 0
       84 LOADN                            R15 186
       85 CALL                             R11 4 1
       86 SETTABLEKS                       R11 R10 K12 ["Size"]
       88 GETIMPORT                        R11 K27 [UDim2.new]
       90 LOADK                            R12 K28 [0.5]
       91 LOADN                            R13 181
       92 LOADN                            R14 0
       93 LOADN                            R15 48
       94 CALL                             R11 4 1
       95 SETTABLEKS                       R11 R10 K21 ["Position"]
       97 CALL                             R8 2 1
       98 SETTABLEKS                       R8 R7 K17 ["DefaultThumbnailPreview"]
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R8 R9 K7 ["createElement"]
      103 GETUPVAL                         R9 4
      104 DUPTABLE                         R10 K34 [{"Position", "height", "width", "assetTypeEnum", "onAssetTypeSelected", "items"}]
      105 GETIMPORT                        R11 K27 [UDim2.new]
      107 LOADK                            R12 K28 [0.5]
      108 LOADN                            R13 56
      109 LOADN                            R14 0
      110 LOADN                            R15 54
      111 CALL                             R11 4 1
      112 SETTABLEKS                       R11 R10 K21 ["Position"]
      114 LOADN                            R11 40
      115 SETTABLEKS                       R11 R10 K30 ["height"]
      117 LOADN                            R11 144
      118 SETTABLEKS                       R11 R10 K31 ["width"]
      120 GETTABLEKS                       R12 R0 K0 ["props"]
      122 GETTABLEKS                       R11 R12 K2 ["assetTypeEnum"]
      124 SETTABLEKS                       R11 R10 K2 ["assetTypeEnum"]
      126 GETTABLEKS                       R12 R0 K0 ["props"]
      128 GETTABLEKS                       R11 R12 K32 ["onAssetTypeSelected"]
      130 SETTABLEKS                       R11 R10 K32 ["onAssetTypeSelected"]
      132 NAMECALL                         R11 R0 K35 ["getSelectorItems"]
      134 CALL                             R11 1 1
      135 SETTABLEKS                       R11 R10 K33 ["items"]
      137 CALL                             R8 2 1
      138 SETTABLEKS                       R8 R7 K18 ["AssetTypeSelector"]
      140 GETUPVAL                         R9 1
      141 GETTABLEKS                       R8 R9 K7 ["createElement"]
      143 LOADK                            R9 K8 ["Frame"]
      144 DUPTABLE                         R10 K37 [{"Size", "Position", "BackgroundColor3", "BorderColor3"}]
      145 GETIMPORT                        R11 K27 [UDim2.new]
      147 LOADN                            R12 1
      148 LOADN                            R13 0
      149 LOADN                            R14 0
      150 LOADN                            R15 62
      151 CALL                             R11 4 1
      152 SETTABLEKS                       R11 R10 K12 ["Size"]
      154 GETIMPORT                        R11 K27 [UDim2.new]
      156 LOADN                            R12 0
      157 LOADN                            R13 0
      158 LOADN                            R14 1
      159 LOADN                            R15 194
      160 CALL                             R11 4 1
      161 SETTABLEKS                       R11 R10 K21 ["Position"]
      163 GETTABLEKS                       R13 R2 K14 ["typeSelection"]
      165 GETTABLEKS                       R12 R13 K38 ["configFooter"]
      167 GETTABLEKS                       R11 R12 K15 ["background"]
      169 SETTABLEKS                       R11 R10 K9 ["BackgroundColor3"]
      171 GETTABLEKS                       R13 R2 K14 ["typeSelection"]
      173 GETTABLEKS                       R12 R13 K38 ["configFooter"]
      175 GETTABLEKS                       R11 R12 K39 ["border"]
      177 SETTABLEKS                       R11 R10 K36 ["BorderColor3"]
      179 DUPTABLE                         R11 K44 [{"UIListLayout", "UIPadding", "CancelButton", "NextButton"}]
      180 GETUPVAL                         R13 1
      181 GETTABLEKS                       R12 R13 K7 ["createElement"]
      183 LOADK                            R13 K40 ["UIListLayout"]
      184 DUPTABLE                         R14 K49 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      185 GETIMPORT                        R15 K51 [UDim.new]
      187 LOADN                            R16 0
      188 LOADN                            R17 24
      189 CALL                             R15 2 1
      190 SETTABLEKS                       R15 R14 K45 ["Padding"]
      192 GETIMPORT                        R15 K53 [Enum.FillDirection.Horizontal]
      194 SETTABLEKS                       R15 R14 K46 ["FillDirection"]
      196 GETIMPORT                        R15 K55 [Enum.HorizontalAlignment.Right]
      198 SETTABLEKS                       R15 R14 K47 ["HorizontalAlignment"]
      200 GETIMPORT                        R15 K57 [Enum.VerticalAlignment.Center]
      202 SETTABLEKS                       R15 R14 K48 ["VerticalAlignment"]
      204 CALL                             R12 2 1
      205 SETTABLEKS                       R12 R11 K40 ["UIListLayout"]
      207 GETUPVAL                         R13 1
      208 GETTABLEKS                       R12 R13 K7 ["createElement"]
      210 LOADK                            R13 K41 ["UIPadding"]
      211 DUPTABLE                         R14 K59 [{"PaddingRight"}]
      212 GETIMPORT                        R15 K51 [UDim.new]
      214 LOADN                            R16 0
      215 LOADN                            R17 24
      216 CALL                             R15 2 1
      217 SETTABLEKS                       R15 R14 K58 ["PaddingRight"]
      219 CALL                             R12 2 1
      220 SETTABLEKS                       R12 R11 K41 ["UIPadding"]
      222 GETUPVAL                         R13 1
      223 GETTABLEKS                       R12 R13 K7 ["createElement"]
      225 GETUPVAL                         R13 5
      226 DUPTABLE                         R14 K63 [{"Size", "LayoutOrder", "titleText", "onClick"}]
      227 GETIMPORT                        R15 K27 [UDim2.new]
      229 LOADN                            R16 0
      230 LOADN                            R17 120
      231 LOADN                            R18 0
      232 LOADN                            R19 32
      233 CALL                             R15 4 1
      234 SETTABLEKS                       R15 R14 K12 ["Size"]
      236 LOADN                            R15 0
      237 SETTABLEKS                       R15 R14 K60 ["LayoutOrder"]
      239 LOADK                            R15 K64 ["Cancel"]
      240 SETTABLEKS                       R15 R14 K61 ["titleText"]
      242 GETTABLEKS                       R15 R1 K65 ["onClose"]
      244 SETTABLEKS                       R15 R14 K62 ["onClick"]
      246 CALL                             R12 2 1
      247 SETTABLEKS                       R12 R11 K42 ["CancelButton"]
      249 GETUPVAL                         R13 1
      250 GETTABLEKS                       R12 R13 K7 ["createElement"]
      252 GETUPVAL                         R13 5
      253 DUPTABLE                         R14 K67 [{"Size", "LayoutOrder", "titleText", "isPrimary", "onClick"}]
      254 GETIMPORT                        R15 K27 [UDim2.new]
      256 LOADN                            R16 0
      257 LOADN                            R17 120
      258 LOADN                            R18 0
      259 LOADN                            R19 32
      260 CALL                             R15 4 1
      261 SETTABLEKS                       R15 R14 K12 ["Size"]
      263 LOADN                            R15 1
      264 SETTABLEKS                       R15 R14 K60 ["LayoutOrder"]
      266 LOADK                            R15 K68 ["Next"]
      267 SETTABLEKS                       R15 R14 K61 ["titleText"]
      269 LOADB                            R15 1
      270 SETTABLEKS                       R15 R14 K66 ["isPrimary"]
      272 NEWCLOSURE                       R15 P0
      273 CAPTURE                          VAL R0
      274 SETTABLEKS                       R15 R14 K62 ["onClick"]
      276 CALL                             R12 2 1
      277 SETTABLEKS                       R12 R11 K43 ["NextButton"]
      279 CALL                             R8 3 1
      280 SETTABLEKS                       R8 R7 K19 ["Footer"]
      282 CALL                             R4 3 -1
      283 RETURN                           R4 -1

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R4 3
        6 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        8 GETTABLEKS                       R2 R3 K1 ["CONFIGURE_ASSET"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R1 4
       15 CALL                             R1 0 -1
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

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
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 SETTABLEKS                       R2 R1 K0 ["goToNextScreen"]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U4
       12 SETTABLEKS                       R2 R1 K1 ["onAssetTypeSelected"]
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       28 GETTABLEKS                       R6 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R6 K10 ["Util"]
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
       49 GETTABLEKS                       R12 R0 K9 ["Src"]
       51 GETTABLEKS                       R11 R12 K14 ["Localization"]
       53 GETTABLEKS                       R10 R11 K15 ["getLocalizedAssetTextMap"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R11 R0 K9 ["Src"]
       58 GETTABLEKS                       R10 R11 K16 ["Components"]
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R10 K17 ["NavButton"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R14 R10 K18 ["AssetConfiguration"]
       69 GETTABLEKS                       R13 R14 K19 ["AssetThumbnailPreview"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K5 [require]
       74 GETTABLEKS                       R15 R10 K18 ["AssetConfiguration"]
       76 GETTABLEKS                       R14 R15 K20 ["DefaultThumbnailPreview"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R16 R10 K18 ["AssetConfiguration"]
       83 GETTABLEKS                       R15 R16 K21 ["AssetTypeSelector"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K23 [game]
       88 LOADK                            R17 K24 ["UseDefaultThumbnailForAnimation"]
       89 NAMECALL                         R15 R15 K25 ["GetFastFlag"]
       91 CALL                             R15 2 1
       92 GETIMPORT                        R16 K5 [require]
       94 GETTABLEKS                       R19 R0 K9 ["Src"]
       96 GETTABLEKS                       R18 R19 K26 ["Flags"]
       98 GETTABLEKS                       R17 R18 K27 ["getFFlagToolboxDeprecateAssetSelection"]
      100 CALL                             R16 1 1
      101 GETTABLEKS                       R18 R0 K9 ["Src"]
      103 GETTABLEKS                       R17 R18 K28 ["Actions"]
      105 GETIMPORT                        R18 K5 [require]
      107 GETTABLEKS                       R19 R17 K29 ["SetCurrentScreen"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K5 [require]
      112 GETTABLEKS                       R20 R17 K30 ["SetUploadAssetType"]
      114 CALL                             R19 1 1
      115 GETTABLEKS                       R21 R0 K9 ["Src"]
      117 GETTABLEKS                       R20 R21 K31 ["Thunks"]
      119 LOADNIL                          R21
      120 MOVE                             R22 R16
      121 CALL                             R22 0 1
      122 JUMPIF                           R22 ; [+8]
      123 GETIMPORT                        R22 K5 [require]
      125 GETTABLEKS                       R24 R20 K18 ["AssetConfiguration"]
      127 GETTABLEKS                       R23 R24 K32 ["GoToNextScreen"]
      129 CALL                             R22 1 1
      130 MOVE                             R21 R22
      131 GETTABLEKS                       R22 R4 K33 ["ContextServices"]
      133 GETTABLEKS                       R23 R22 K34 ["withContext"]
      135 GETTABLEKS                       R24 R2 K35 ["PureComponent"]
      137 LOADK                            R26 K36 ["AssetTypeSelection"]
      138 NAMECALL                         R24 R24 K37 ["extend"]
      140 CALL                             R24 2 1
      141 DUPCLOSURE                       R25 K38 [PROTO_0]
      142 SETTABLEKS                       R25 R24 K39 ["didMount"]
      144 DUPCLOSURE                       R25 K40 [PROTO_1]
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R9
      147 SETTABLEKS                       R25 R24 K41 ["getSelectorItems"]
      149 DUPCLOSURE                       R25 K42 [PROTO_2]
      150 CAPTURE                          VAL R7
      151 SETTABLEKS                       R25 R24 K43 ["canSkip"]
      153 DUPCLOSURE                       R25 K44 [PROTO_4]
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R11
      160 SETTABLEKS                       R25 R24 K45 ["render"]
      162 DUPCLOSURE                       R25 K46 [PROTO_5]
      163 NEWCLOSURE                       R26 P5
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R6
      167 CAPTURE                          REF R21
      168 CAPTURE                          VAL R19
      169 MOVE                             R27 R23
      170 DUPTABLE                         R28 K48 [{"Stylizer", "Localization"}]
      171 GETTABLEKS                       R29 R22 K47 ["Stylizer"]
      173 SETTABLEKS                       R29 R28 K47 ["Stylizer"]
      175 GETTABLEKS                       R29 R22 K14 ["Localization"]
      177 SETTABLEKS                       R29 R28 K14 ["Localization"]
      179 CALL                             R27 1 1
      180 MOVE                             R28 R24
      181 CALL                             R27 1 1
      182 MOVE                             R24 R27
      183 GETTABLEKS                       R27 R3 K49 ["connect"]
      185 MOVE                             R28 R25
      186 MOVE                             R29 R26
      187 CALL                             R27 2 1
      188 MOVE                             R28 R24
      189 CALL                             R27 1 -1
      190 CLOSEUPVALS                      R21
      191 RETURN                           R27 -1
