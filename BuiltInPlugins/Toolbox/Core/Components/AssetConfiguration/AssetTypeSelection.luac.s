PROTO_0:
  NAMECALL R1 R0 K0 ["canSkip"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["goToNextScreen"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 2
  DUPTABLE R2 K2 [{"name", "selectable"}]
  LOADK R3 K3 ["Game development assets"]
  SETTABLEKS R3 R2 K0 ["name"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["selectable"]
  DUPTABLE R3 K5 [{"name", "selectable", "type"}]
  LOADK R4 K6 ["Model"]
  SETTABLEKS R4 R3 K0 ["name"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["selectable"]
  GETIMPORT R4 K9 [Enum.AssetType.Model]
  SETTABLEKS R4 R3 K4 ["type"]
  SETLIST R1 R2 2 [1]
  DUPTABLE R4 K5 [{"name", "selectable", "type"}]
  LOADK R5 K10 ["Animation"]
  SETTABLEKS R5 R4 K0 ["name"]
  LOADB R5 1
  SETTABLEKS R5 R4 K1 ["selectable"]
  GETIMPORT R5 K11 [Enum.AssetType.Animation]
  SETTABLEKS R5 R4 K4 ["type"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K14 [table.insert]
  CALL R2 2 0
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K15 ["props"]
  GETTABLEKS R3 R4 K16 ["allowedAssetTypesForRelease"]
  CALL R2 1 1
  LENGTH R3 R2
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+46]
  GETTABLEKS R5 R0 K15 ["props"]
  GETTABLEKS R4 R5 K18 ["Localization"]
  LOADK R6 K19 ["General"]
  LOADK R7 K20 ["CategoryCreationsCatalogSectionDivider"]
  NAMECALL R4 R4 K21 ["getText"]
  CALL R4 3 1
  ORK R3 R4 K17 [""]
  LENGTH R5 R1
  ADDK R4 R5 K22 [1]
  DUPTABLE R5 K2 [{"name", "selectable"}]
  SETTABLEKS R3 R5 K0 ["name"]
  LOADB R6 0
  SETTABLEKS R6 R5 K1 ["selectable"]
  SETTABLE R5 R1 R4
  GETIMPORT R4 K24 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETUPVAL R11 1
  GETTABLEKS R13 R0 K15 ["props"]
  GETTABLEKS R12 R13 K18 ["Localization"]
  CALL R11 1 1
  GETTABLE R10 R11 R8
  ORK R9 R10 K17 [""]
  LENGTH R11 R1
  ADDK R10 R11 K22 [1]
  DUPTABLE R11 K5 [{"name", "selectable", "type"}]
  SETTABLEKS R9 R11 K0 ["name"]
  LOADB R12 1
  SETTABLEKS R12 R11 K1 ["selectable"]
  SETTABLEKS R8 R11 K4 ["type"]
  SETTABLE R11 R1 R10
  FORGLOOP R4 2 [-20]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isBuyableMarketplaceAsset"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["assetTypeEnum"]
  CALL R1 1 1
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  LOADN R1 0
  GETIMPORT R2 K4 [pairs]
  NAMECALL R3 R0 K5 ["getSelectorItems"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K6 ["selectable"]
  JUMPIFNOT R7 [+1]
  ADDK R1 R1 K7 [1]
  FORGLOOP R2 2 [-5]
  JUMPIFEQKN R1 K8 [2] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["goToNextScreen"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+10]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["assetTypeEnum"]
  GETIMPORT R5 K6 [Enum.AssetType.Animation]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["createElement"]
  LOADK R5 K8 ["Frame"]
  DUPTABLE R6 K13 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  GETTABLEKS R8 R2 K14 ["typeSelection"]
  GETTABLEKS R7 R8 K15 ["background"]
  SETTABLEKS R7 R6 K9 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K10 ["BackgroundTransparency"]
  LOADN R7 0
  SETTABLEKS R7 R6 K11 ["BorderSizePixel"]
  GETTABLEKS R7 R1 K12 ["Size"]
  SETTABLEKS R7 R6 K12 ["Size"]
  DUPTABLE R7 K20 [{"AssetThumbnailPreview", "DefaultThumbnailPreview", "AssetTypeSelector", "Footer"}]
  NOT R8 R3
  JUMPIFNOT R8 [+30]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K24 [{"Size", "Position", "titleHeight", "titlePadding"}]
  GETIMPORT R11 K27 [UDim2.new]
  LOADN R12 0
  LOADN R13 150
  LOADN R14 0
  LOADN R15 186
  CALL R11 4 1
  SETTABLEKS R11 R10 K12 ["Size"]
  GETIMPORT R11 K27 [UDim2.new]
  LOADK R12 K28 [0.5]
  LOADN R13 181
  LOADN R14 0
  LOADN R15 48
  CALL R11 4 1
  SETTABLEKS R11 R10 K21 ["Position"]
  LOADN R11 24
  SETTABLEKS R11 R10 K22 ["titleHeight"]
  LOADN R11 12
  SETTABLEKS R11 R10 K23 ["titlePadding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["AssetThumbnailPreview"]
  MOVE R8 R3
  JUMPIFNOT R8 [+24]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K29 [{"Size", "Position"}]
  GETIMPORT R11 K27 [UDim2.new]
  LOADN R12 0
  LOADN R13 150
  LOADN R14 0
  LOADN R15 186
  CALL R11 4 1
  SETTABLEKS R11 R10 K12 ["Size"]
  GETIMPORT R11 K27 [UDim2.new]
  LOADK R12 K28 [0.5]
  LOADN R13 181
  LOADN R14 0
  LOADN R15 48
  CALL R11 4 1
  SETTABLEKS R11 R10 K21 ["Position"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["DefaultThumbnailPreview"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K34 [{"Position", "height", "width", "assetTypeEnum", "onAssetTypeSelected", "items"}]
  GETIMPORT R11 K27 [UDim2.new]
  LOADK R12 K28 [0.5]
  LOADN R13 56
  LOADN R14 0
  LOADN R15 54
  CALL R11 4 1
  SETTABLEKS R11 R10 K21 ["Position"]
  LOADN R11 40
  SETTABLEKS R11 R10 K30 ["height"]
  LOADN R11 144
  SETTABLEKS R11 R10 K31 ["width"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K2 ["assetTypeEnum"]
  SETTABLEKS R11 R10 K2 ["assetTypeEnum"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K32 ["onAssetTypeSelected"]
  SETTABLEKS R11 R10 K32 ["onAssetTypeSelected"]
  NAMECALL R11 R0 K35 ["getSelectorItems"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K33 ["items"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K18 ["AssetTypeSelector"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K8 ["Frame"]
  DUPTABLE R10 K37 [{"Size", "Position", "BackgroundColor3", "BorderColor3"}]
  GETIMPORT R11 K27 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 62
  CALL R11 4 1
  SETTABLEKS R11 R10 K12 ["Size"]
  GETIMPORT R11 K27 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 1
  LOADN R15 194
  CALL R11 4 1
  SETTABLEKS R11 R10 K21 ["Position"]
  GETTABLEKS R13 R2 K14 ["typeSelection"]
  GETTABLEKS R12 R13 K38 ["configFooter"]
  GETTABLEKS R11 R12 K15 ["background"]
  SETTABLEKS R11 R10 K9 ["BackgroundColor3"]
  GETTABLEKS R13 R2 K14 ["typeSelection"]
  GETTABLEKS R12 R13 K38 ["configFooter"]
  GETTABLEKS R11 R12 K39 ["border"]
  SETTABLEKS R11 R10 K36 ["BorderColor3"]
  DUPTABLE R11 K44 [{"UIListLayout", "UIPadding", "CancelButton", "NextButton"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K40 ["UIListLayout"]
  DUPTABLE R14 K49 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R15 K51 [UDim.new]
  LOADN R16 0
  LOADN R17 24
  CALL R15 2 1
  SETTABLEKS R15 R14 K45 ["Padding"]
  GETIMPORT R15 K53 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K46 ["FillDirection"]
  GETIMPORT R15 K55 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R15 R14 K47 ["HorizontalAlignment"]
  GETIMPORT R15 K57 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K48 ["VerticalAlignment"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K40 ["UIListLayout"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K41 ["UIPadding"]
  DUPTABLE R14 K59 [{"PaddingRight"}]
  GETIMPORT R15 K51 [UDim.new]
  LOADN R16 0
  LOADN R17 24
  CALL R15 2 1
  SETTABLEKS R15 R14 K58 ["PaddingRight"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K41 ["UIPadding"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K63 [{"Size", "LayoutOrder", "titleText", "onClick"}]
  GETIMPORT R15 K27 [UDim2.new]
  LOADN R16 0
  LOADN R17 120
  LOADN R18 0
  LOADN R19 32
  CALL R15 4 1
  SETTABLEKS R15 R14 K12 ["Size"]
  LOADN R15 0
  SETTABLEKS R15 R14 K60 ["LayoutOrder"]
  LOADK R15 K64 ["Cancel"]
  SETTABLEKS R15 R14 K61 ["titleText"]
  GETTABLEKS R15 R1 K65 ["onClose"]
  SETTABLEKS R15 R14 K62 ["onClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K42 ["CancelButton"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K67 [{"Size", "LayoutOrder", "titleText", "isPrimary", "onClick"}]
  GETIMPORT R15 K27 [UDim2.new]
  LOADN R16 0
  LOADN R17 120
  LOADN R18 0
  LOADN R19 32
  CALL R15 4 1
  SETTABLEKS R15 R14 K12 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K60 ["LayoutOrder"]
  LOADK R15 K68 ["Next"]
  SETTABLEKS R15 R14 K61 ["titleText"]
  LOADB R15 1
  SETTABLEKS R15 R14 K66 ["isPrimary"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K62 ["onClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K43 ["NextButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K19 ["Footer"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_5:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K5 [{"instances", "currentScreen", "screenFlowType", "allowedAssetTypesForRelease", "assetTypeEnum"}]
  GETTABLEKS R3 R0 K0 ["instances"]
  SETTABLEKS R3 R2 K0 ["instances"]
  GETTABLEKS R3 R0 K1 ["currentScreen"]
  SETTABLEKS R3 R2 K1 ["currentScreen"]
  GETTABLEKS R3 R0 K2 ["screenFlowType"]
  SETTABLEKS R3 R2 K2 ["screenFlowType"]
  GETTABLEKS R3 R0 K3 ["allowedAssetTypesForRelease"]
  SETTABLEKS R3 R2 K3 ["allowedAssetTypesForRelease"]
  GETTABLEKS R3 R0 K4 ["assetTypeEnum"]
  SETTABLEKS R3 R2 K4 ["assetTypeEnum"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K2 [{"goToNextScreen", "onAssetTypeSelected"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["goToNextScreen"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["onAssetTypeSelected"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K8 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K11 ["AssetConfigConstants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K12 ["AssetConfigUtil"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R5 K13 ["getAllowedAssetTypeEnums"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Core"]
  GETTABLEKS R11 R12 K14 ["Localization"]
  GETTABLEKS R10 R11 K15 ["getLocalizedAssetTextMap"]
  CALL R9 1 1
  GETTABLEKS R11 R0 K9 ["Core"]
  GETTABLEKS R10 R11 K16 ["Components"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R10 K17 ["NavButton"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R10 K18 ["AssetConfiguration"]
  GETTABLEKS R13 R14 K19 ["AssetThumbnailPreview"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R10 K18 ["AssetConfiguration"]
  GETTABLEKS R14 R15 K20 ["DefaultThumbnailPreview"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R10 K18 ["AssetConfiguration"]
  GETTABLEKS R15 R16 K21 ["AssetTypeSelector"]
  CALL R14 1 1
  GETIMPORT R15 K23 [game]
  LOADK R17 K24 ["UseDefaultThumbnailForAnimation"]
  NAMECALL R15 R15 K25 ["GetFastFlag"]
  CALL R15 2 1
  GETTABLEKS R17 R0 K9 ["Core"]
  GETTABLEKS R16 R17 K26 ["Actions"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R16 K27 ["SetCurrentScreen"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R16 K28 ["SetUploadAssetType"]
  CALL R18 1 1
  GETTABLEKS R20 R0 K9 ["Core"]
  GETTABLEKS R19 R20 K29 ["Thunks"]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R22 R19 K18 ["AssetConfiguration"]
  GETTABLEKS R21 R22 K30 ["GoToNextScreen"]
  CALL R20 1 1
  GETTABLEKS R21 R4 K31 ["ContextServices"]
  GETTABLEKS R22 R21 K32 ["withContext"]
  GETTABLEKS R23 R2 K33 ["PureComponent"]
  LOADK R25 K34 ["AssetTypeSelection"]
  NAMECALL R23 R23 K35 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K36 [PROTO_0]
  SETTABLEKS R24 R23 K37 ["didMount"]
  DUPCLOSURE R24 K38 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R24 R23 K39 ["getSelectorItems"]
  DUPCLOSURE R24 K40 [PROTO_2]
  CAPTURE VAL R7
  SETTABLEKS R24 R23 K41 ["canSkip"]
  DUPCLOSURE R24 K42 [PROTO_4]
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R11
  SETTABLEKS R24 R23 K43 ["render"]
  DUPCLOSURE R24 K44 [PROTO_5]
  DUPCLOSURE R25 K45 [PROTO_8]
  CAPTURE VAL R20
  CAPTURE VAL R18
  MOVE R26 R22
  DUPTABLE R27 K47 [{"Stylizer", "Localization"}]
  GETTABLEKS R28 R21 K46 ["Stylizer"]
  SETTABLEKS R28 R27 K46 ["Stylizer"]
  GETTABLEKS R28 R21 K14 ["Localization"]
  SETTABLEKS R28 R27 K14 ["Localization"]
  CALL R26 1 1
  MOVE R27 R23
  CALL R26 1 1
  MOVE R23 R26
  GETTABLEKS R26 R3 K48 ["connect"]
  MOVE R27 R24
  MOVE R28 R25
  CALL R26 2 1
  MOVE R27 R23
  CALL R26 1 -1
  RETURN R26 -1
