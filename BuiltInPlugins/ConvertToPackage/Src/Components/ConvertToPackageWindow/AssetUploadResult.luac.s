PROTO_0:
  DUPTABLE R2 K1 [{"isLoading"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isLoading"]
  SETTABLEKS R2 R0 K2 ["state"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["assetName"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  LOADK R6 K5 ["Frame"]
  DUPTABLE R7 K10 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  GETTABLEKS R9 R3 K11 ["uploadResult"]
  GETTABLEKS R8 R9 K12 ["background"]
  SETTABLEKS R8 R7 K6 ["BackgroundColor3"]
  LOADN R8 0
  SETTABLEKS R8 R7 K7 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K8 ["BorderSizePixel"]
  GETTABLEKS R8 R1 K9 ["Size"]
  SETTABLEKS R8 R7 K9 ["Size"]
  DUPTABLE R8 K17 [{"ModelPreview", "LoadingResultSuccess", "LoadingResultFailure", "Footer"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K22 [{"title", "titleHeight", "titlePadding", "Position", "Size"}]
  SETTABLEKS R4 R11 K18 ["title"]
  LOADN R12 24
  SETTABLEKS R12 R11 K19 ["titleHeight"]
  LOADN R12 12
  SETTABLEKS R12 R11 K20 ["titlePadding"]
  GETIMPORT R12 K25 [UDim2.new]
  LOADK R13 K26 [0.5]
  LOADN R14 181
  LOADN R15 0
  LOADN R16 48
  CALL R12 4 1
  SETTABLEKS R12 R11 K21 ["Position"]
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 0
  LOADN R14 150
  LOADN R15 0
  LOADN R16 186
  CALL R12 4 1
  SETTABLEKS R12 R11 K9 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["ModelPreview"]
  GETTABLEKS R9 R1 K27 ["uploadSucceeded"]
  JUMPIFNOT R9 [+187]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  LOADK R10 K5 ["Frame"]
  DUPTABLE R11 K28 [{"Position", "Size", "BackgroundTransparency"}]
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 23
  CALL R12 4 1
  SETTABLEKS R12 R11 K21 ["Position"]
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 233
  CALL R12 4 1
  SETTABLEKS R12 R11 K9 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K7 ["BackgroundTransparency"]
  DUPTABLE R12 K31 [{"Title", "Rows"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K32 ["TextLabel"]
  DUPTABLE R15 K39 [{"BackgroundTransparency", "Position", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K7 ["BackgroundTransparency"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADK R17 K26 [0.5]
  LOADN R18 56
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K21 ["Position"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADN R17 0
  LOADN R18 144
  LOADN R19 0
  LOADN R20 36
  CALL R16 4 1
  SETTABLEKS R16 R15 K9 ["Size"]
  LOADK R18 K40 ["General"]
  LOADK R19 K41 ["SuccessfullyConverted"]
  NAMECALL R16 R2 K42 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K33 ["Text"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K43 ["FONT"]
  SETTABLEKS R16 R15 K34 ["Font"]
  GETTABLEKS R17 R3 K11 ["uploadResult"]
  GETTABLEKS R16 R17 K44 ["successText"]
  SETTABLEKS R16 R15 K35 ["TextColor3"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K45 ["FONT_SIZE_TITLE"]
  SETTABLEKS R16 R15 K36 ["TextSize"]
  GETIMPORT R16 K48 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K37 ["TextXAlignment"]
  GETIMPORT R16 K49 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K38 ["TextYAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K29 ["Title"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K5 ["Frame"]
  DUPTABLE R15 K50 [{"BackgroundTransparency", "Size", "Position"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K7 ["BackgroundTransparency"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADN R17 0
  LOADN R18 144
  LOADN R19 0
  LOADN R20 72
  CALL R16 4 1
  SETTABLEKS R16 R15 K9 ["Size"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADK R17 K26 [0.5]
  LOADN R18 56
  LOADN R19 0
  LOADN R20 49
  CALL R16 4 1
  SETTABLEKS R16 R15 K21 ["Position"]
  DUPTABLE R16 K53 [{"UIListLayout", "ModerationMessage"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K4 ["createElement"]
  LOADK R18 K51 ["UIListLayout"]
  DUPTABLE R19 K56 [{"Padding", "SortOrder"}]
  GETIMPORT R20 K58 [UDim.new]
  LOADN R21 0
  LOADN R22 12
  CALL R20 2 1
  SETTABLEKS R20 R19 K54 ["Padding"]
  GETIMPORT R20 K60 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K55 ["SortOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["UIListLayout"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K4 ["createElement"]
  LOADK R18 K32 ["TextLabel"]
  DUPTABLE R19 K61 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K7 ["BackgroundTransparency"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K43 ["FONT"]
  SETTABLEKS R20 R19 K34 ["Font"]
  LOADK R22 K40 ["General"]
  LOADK R23 K62 ["YouMayFindPackagesInToolbox"]
  NAMECALL R20 R2 K42 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K33 ["Text"]
  GETTABLEKS R21 R3 K11 ["uploadResult"]
  GETTABLEKS R20 R21 K63 ["text"]
  SETTABLEKS R20 R19 K35 ["TextColor3"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K64 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R20 R19 K36 ["TextSize"]
  GETIMPORT R20 K25 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 24
  CALL R20 4 1
  SETTABLEKS R20 R19 K9 ["Size"]
  GETIMPORT R20 K49 [Enum.TextYAlignment.Center]
  SETTABLEKS R20 R19 K38 ["TextYAlignment"]
  LOADN R20 0
  SETTABLEKS R20 R19 K59 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["ModerationMessage"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K30 ["Rows"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["LoadingResultSuccess"]
  GETTABLEKS R10 R1 K27 ["uploadSucceeded"]
  NOT R9 R10
  JUMPIFNOT R9 [+150]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  LOADK R10 K5 ["Frame"]
  DUPTABLE R11 K28 [{"Position", "Size", "BackgroundTransparency"}]
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 23
  CALL R12 4 1
  SETTABLEKS R12 R11 K21 ["Position"]
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 233
  CALL R12 4 1
  SETTABLEKS R12 R11 K9 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K7 ["BackgroundTransparency"]
  DUPTABLE R12 K66 [{"Title", "Reason"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K32 ["TextLabel"]
  DUPTABLE R15 K67 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K7 ["BackgroundTransparency"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K43 ["FONT"]
  SETTABLEKS R16 R15 K34 ["Font"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADK R17 K26 [0.5]
  LOADN R18 56
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K21 ["Position"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADN R17 0
  LOADN R18 144
  LOADN R19 0
  LOADN R20 36
  CALL R16 4 1
  SETTABLEKS R16 R15 K9 ["Size"]
  LOADK R18 K40 ["General"]
  LOADK R19 K68 ["ConvertToPackageFailed"]
  NAMECALL R16 R2 K42 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K33 ["Text"]
  GETTABLEKS R17 R3 K11 ["uploadResult"]
  GETTABLEKS R16 R17 K63 ["text"]
  SETTABLEKS R16 R15 K35 ["TextColor3"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K45 ["FONT_SIZE_TITLE"]
  SETTABLEKS R16 R15 K36 ["TextSize"]
  GETIMPORT R16 K48 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K37 ["TextXAlignment"]
  GETIMPORT R16 K49 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K38 ["TextYAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K29 ["Title"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K32 ["TextLabel"]
  DUPTABLE R15 K70 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextWrapped", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K7 ["BackgroundTransparency"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K43 ["FONT"]
  SETTABLEKS R16 R15 K34 ["Font"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADK R17 K26 [0.5]
  LOADN R18 56
  LOADN R19 0
  LOADN R20 49
  CALL R16 4 1
  SETTABLEKS R16 R15 K21 ["Position"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADN R17 0
  LOADN R18 144
  LOADN R19 0
  LOADN R20 72
  CALL R16 4 1
  SETTABLEKS R16 R15 K9 ["Size"]
  GETTABLEKS R17 R1 K71 ["networkError"]
  GETTABLEKS R16 R17 K72 ["responseBody"]
  SETTABLEKS R16 R15 K33 ["Text"]
  LOADB R16 1
  SETTABLEKS R16 R15 K69 ["TextWrapped"]
  GETTABLEKS R17 R3 K11 ["uploadResult"]
  GETTABLEKS R16 R17 K63 ["text"]
  SETTABLEKS R16 R15 K35 ["TextColor3"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K64 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R16 R15 K36 ["TextSize"]
  GETIMPORT R16 K48 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K37 ["TextXAlignment"]
  GETIMPORT R16 K74 [Enum.TextYAlignment.Top]
  SETTABLEKS R16 R15 K38 ["TextYAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K65 ["Reason"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["LoadingResultFailure"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  LOADK R10 K5 ["Frame"]
  DUPTABLE R11 K75 [{"BackgroundTransparency", "Position", "Size"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K7 ["BackgroundTransparency"]
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  LOADN R16 176
  CALL R12 4 1
  SETTABLEKS R12 R11 K21 ["Position"]
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 80
  CALL R12 4 1
  SETTABLEKS R12 R11 K9 ["Size"]
  DUPTABLE R12 K77 [{"CloseButton"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K80 [{"LayoutOrder", "OnClick", "Position", "Size", "Style", "Text"}]
  LOADN R16 0
  SETTABLEKS R16 R15 K59 ["LayoutOrder"]
  GETTABLEKS R16 R1 K81 ["onClose"]
  SETTABLEKS R16 R15 K78 ["OnClick"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADK R17 K26 [0.5]
  LOADN R18 196
  LOADK R19 K26 [0.5]
  LOADN R20 240
  CALL R16 4 1
  SETTABLEKS R16 R15 K21 ["Position"]
  GETIMPORT R16 K25 [UDim2.new]
  LOADN R17 0
  LOADN R18 120
  LOADN R19 0
  LOADN R20 32
  CALL R16 4 1
  SETTABLEKS R16 R15 K9 ["Size"]
  LOADK R16 K82 ["Round"]
  SETTABLEKS R16 R15 K79 ["Style"]
  LOADK R18 K83 ["Action"]
  LOADK R19 K84 ["Close"]
  NAMECALL R16 R2 K42 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K33 ["Text"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K76 ["CloseButton"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["Footer"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_2:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K6 [{"assetId", "assetName", "uploadSucceeded", "networkError", "assetConfigData", "assetTypeEnum"}]
  GETTABLEKS R4 R0 K7 ["AssetConfigReducer"]
  GETTABLEKS R3 R4 K0 ["assetId"]
  SETTABLEKS R3 R2 K0 ["assetId"]
  GETTABLEKS R4 R0 K7 ["AssetConfigReducer"]
  GETTABLEKS R3 R4 K1 ["assetName"]
  SETTABLEKS R3 R2 K1 ["assetName"]
  GETTABLEKS R4 R0 K7 ["AssetConfigReducer"]
  GETTABLEKS R3 R4 K2 ["uploadSucceeded"]
  SETTABLEKS R3 R2 K2 ["uploadSucceeded"]
  GETTABLEKS R4 R0 K8 ["NetworkReducer"]
  GETTABLEKS R3 R4 K3 ["networkError"]
  SETTABLEKS R3 R2 K3 ["networkError"]
  GETTABLEKS R4 R0 K7 ["AssetConfigReducer"]
  GETTABLEKS R3 R4 K4 ["assetConfigData"]
  SETTABLEKS R3 R2 K4 ["assetConfigData"]
  GETTABLEKS R4 R0 K7 ["AssetConfigReducer"]
  GETTABLEKS R3 R4 K5 ["assetTypeEnum"]
  SETTABLEKS R3 R2 K5 ["assetTypeEnum"]
  RETURN R2 1

PROTO_3:
  NEWTABLE R1 0 0
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
  GETTABLEKS R6 R0 K3 ["Packages"]
  GETTABLEKS R5 R6 K8 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K9 ["ContextServices"]
  GETTABLEKS R6 R5 K10 ["withContext"]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K13 ["Constants"]
  CALL R8 1 1
  GETTABLEKS R9 R4 K14 ["UI"]
  GETTABLEKS R10 R9 K15 ["Button"]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K16 ["Components"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R11 K17 ["ConvertToPackageWindow"]
  GETTABLEKS R13 R14 K18 ["AssetThumbnailPreview"]
  CALL R12 1 1
  GETTABLEKS R13 R2 K19 ["PureComponent"]
  LOADK R15 K20 ["AssetUploadResult"]
  NAMECALL R13 R13 K21 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K22 [PROTO_0]
  SETTABLEKS R14 R13 K23 ["init"]
  DUPCLOSURE R14 K24 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K25 ["render"]
  MOVE R14 R6
  DUPTABLE R15 K28 [{"Localization", "Stylizer"}]
  GETTABLEKS R16 R5 K26 ["Localization"]
  SETTABLEKS R16 R15 K26 ["Localization"]
  GETTABLEKS R16 R5 K27 ["Stylizer"]
  SETTABLEKS R16 R15 K27 ["Stylizer"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  DUPCLOSURE R14 K29 [PROTO_2]
  DUPCLOSURE R15 K30 [PROTO_3]
  GETTABLEKS R16 R3 K31 ["connect"]
  MOVE R17 R14
  MOVE R18 R15
  CALL R16 2 1
  MOVE R17 R13
  CALL R16 1 -1
  RETURN R16 -1
