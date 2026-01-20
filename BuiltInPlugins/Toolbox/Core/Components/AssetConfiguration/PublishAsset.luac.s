PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["getMarketplaceAssetConfigUrl"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["assetId"]
  CALL R2 1 -1
  NAMECALL R0 R0 K3 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["getMarketplaceOnboardingUrl"]
  CALL R2 0 -1
  NAMECALL R0 R0 K1 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["baseFrameRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFNOT R0 [+52]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["listLayoutRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFNOT R0 [+46]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["baseFrameRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["listLayoutRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  GETTABLEKS R5 R1 K4 ["AbsoluteContentSize"]
  GETTABLEKS R4 R5 K5 ["y"]
  ADDK R3 R4 K3 [48]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["state"]
  GETTABLEKS R4 R5 K7 ["maxDropdownPosition"]
  FASTCALL2 MATH_MAX R3 R4 [+3]
  GETIMPORT R2 K10 [math.max]
  CALL R2 2 1
  GETIMPORT R3 K13 [UDim2.new]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K14 ["Size"]
  GETTABLEKS R5 R6 K15 ["X"]
  GETTABLEKS R4 R5 K16 ["Scale"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K14 ["Size"]
  GETTABLEKS R6 R7 K15 ["X"]
  GETTABLEKS R5 R6 K17 ["Offset"]
  LOADN R6 0
  MOVE R7 R2
  CALL R3 4 1
  SETTABLEKS R3 R0 K18 ["CanvasSize"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["maxDropdownPosition"]
  JUMPIFNOTLT R1 R0 [+13]
  GETUPVAL R0 1
  DUPTABLE R2 K2 [{"maxDropdownPosition"}]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K1 ["maxDropdownPosition"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K4 ["refreshCanvas"]
  CALL R0 0 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R3 0
  NAMECALL R0 R0 K5 ["bumpCanvas"]
  CALL R0 3 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["current"]
  JUMPIFNOT R2 [+48]
  LOADN R3 0
  JUMPIFNOTLT R3 R1 [+46]
  GETTABLEKS R8 R0 K0 ["current"]
  GETTABLEKS R7 R8 K2 ["AbsolutePosition"]
  GETTABLEKS R6 R7 K3 ["Y"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["baseFrameRef"]
  GETTABLEKS R9 R10 K0 ["current"]
  GETTABLEKS R8 R9 K5 ["CanvasPosition"]
  GETTABLEKS R7 R8 K3 ["Y"]
  ADD R5 R6 R7
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["baseFrameRef"]
  GETTABLEKS R9 R10 K0 ["current"]
  GETTABLEKS R8 R9 K2 ["AbsolutePosition"]
  GETTABLEKS R7 R8 K3 ["Y"]
  MINUS R6 R7
  ADD R4 R5 R6
  SUBK R3 R4 K1 [24]
  ADDK R7 R3 K1 [24]
  GETTABLEKS R10 R0 K0 ["current"]
  GETTABLEKS R9 R10 K6 ["AbsoluteSize"]
  GETTABLEKS R8 R9 K3 ["Y"]
  ADD R6 R7 R8
  ADD R5 R6 R1
  ADDK R4 R5 K1 [24]
  GETIMPORT R5 K8 [spawn]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  CALL R5 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"validationState"}]
  SETTABLEKS R0 R3 K0 ["validationState"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"validationFailureReasons"}]
  SETTABLEKS R0 R3 K0 ["validationFailureReasons"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"ugcBundleValidationResults"}]
  SETTABLEKS R0 R3 K0 ["ugcBundleValidationResults"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"currentAssetType"}]
  SETTABLEKS R0 R3 K0 ["currentAssetType"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R2 K5 [{"maxDropdownPosition", "validationState", "validationFailureReasons", "ugcBundleValidationResults", "currentAssetType"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K0 ["maxDropdownPosition"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["VALIDATION_STATE"]
  GETTABLEKS R3 R4 K7 ["NONE"]
  SETTABLEKS R3 R2 K1 ["validationState"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["validationFailureReasons"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K3 ["ugcBundleValidationResults"]
  GETTABLEKS R3 R1 K8 ["assetTypeEnum"]
  SETTABLEKS R3 R2 K4 ["currentAssetType"]
  SETTABLEKS R2 R0 K9 ["state"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K11 ["baseFrameRef"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K12 ["listLayoutRef"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K13 ["tagsRef"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K14 ["onClickConfigurePriceUrl"]
  GETUPVAL R2 4
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  DUPCLOSURE R2 K15 [PROTO_1]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K16 ["onClickOnboardLink"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K17 ["refreshCanvas"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K18 ["updateMaxDropdownPosition"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K19 ["setValidationState"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K20 ["setValidationFailureReasons"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K21 ["setUGCBundleValidationResults"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K22 ["setCurrentAssetType"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R4 R0 K0 ["baseFrameRef"]
  GETTABLEKS R3 R4 K1 ["current"]
  JUMPIFNOT R3 [+44]
  GETTABLEKS R4 R0 K0 ["baseFrameRef"]
  GETTABLEKS R3 R4 K1 ["current"]
  GETTABLEKS R5 R3 K2 ["CanvasPosition"]
  GETTABLEKS R4 R5 K3 ["Y"]
  GETTABLEKS R6 R3 K4 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K3 ["Y"]
  JUMPIFNOTLT R1 R4 [+15]
  GETIMPORT R6 K7 [Vector2.new]
  LOADN R7 0
  LOADN R9 0
  FASTCALL2 MATH_MAX R9 R1 [+4]
  MOVE R10 R1
  GETIMPORT R8 K10 [math.max]
  CALL R8 2 1
  CALL R6 2 1
  SETTABLEKS R6 R3 K2 ["CanvasPosition"]
  RETURN R0 0
  ADD R6 R4 R5
  JUMPIFNOTLT R6 R2 [+14]
  GETIMPORT R6 K7 [Vector2.new]
  LOADN R7 0
  LOADN R9 0
  SUB R10 R2 R5
  FASTCALL2 MATH_MAX R9 R10 [+3]
  GETIMPORT R8 K10 [math.max]
  CALL R8 2 1
  CALL R6 2 1
  SETTABLEKS R6 R3 K2 ["CanvasPosition"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R5 R0 K0 ["props"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["isUGCBundleType"]
  MOVE R7 R3
  CALL R6 1 1
  JUMPIF R6 [+2]
  LOADNIL R6
  RETURN R6 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["getOptionalBodyPartsNotFound"]
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R6 3 1
  JUMPIFNOT R6 [+4]
  LENGTH R7 R6
  LOADN R8 0
  JUMPIFNOTLE R7 R8 [+3]
  LOADNIL R7
  RETURN R7 1
  NEWTABLE R7 1 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["new"]
  CALL R8 0 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R12 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K5 ["AutomaticSize"]
  LOADN R12 1
  SETTABLEKS R12 R11 K6 ["BackgroundTransparency"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K20 ["FONT"]
  SETTABLEKS R12 R11 K7 ["Font"]
  NAMECALL R12 R8 K21 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K8 ["LayoutOrder"]
  GETIMPORT R12 K24 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 0
  CALL R12 2 1
  SETTABLEKS R12 R11 K9 ["Size"]
  GETTABLEKS R12 R5 K25 ["Localization"]
  LOADK R14 K26 ["AssetConfig"]
  LOADK R15 K27 ["UGCMissingOptionalPartsMessage"]
  NAMECALL R12 R12 K28 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K10 ["Text"]
  GETTABLEKS R13 R4 K29 ["assetConfig"]
  GETTABLEKS R12 R13 K30 ["labelTextColor"]
  SETTABLEKS R12 R11 K11 ["TextColor"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K31 ["FONT_SIZE_TITLE"]
  SETTABLEKS R12 R11 K12 ["TextSize"]
  LOADB R12 1
  SETTABLEKS R12 R11 K13 ["TextWrapped"]
  GETIMPORT R12 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K14 ["TextXAlignment"]
  GETIMPORT R12 K35 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K15 ["TextYAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R7 K36 ["OptionalPartsMessage"]
  MOVE R9 R6
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETUPVAL R15 5
  GETTABLEKS R16 R5 K25 ["Localization"]
  CALL R15 1 1
  GETTABLE R14 R15 R13
  JUMPIFEQKNIL R14 [+58]
  GETTABLEKS R15 R13 K37 ["Name"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R19 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K5 ["AutomaticSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K6 ["BackgroundTransparency"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K20 ["FONT"]
  SETTABLEKS R19 R18 K7 ["Font"]
  NAMECALL R19 R8 K21 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K8 ["LayoutOrder"]
  GETIMPORT R19 K24 [UDim2.fromScale]
  LOADN R20 1
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K9 ["Size"]
  SETTABLEKS R14 R18 K10 ["Text"]
  GETTABLEKS R20 R4 K29 ["assetConfig"]
  GETTABLEKS R19 R20 K30 ["labelTextColor"]
  SETTABLEKS R19 R18 K11 ["TextColor"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K31 ["FONT_SIZE_TITLE"]
  SETTABLEKS R19 R18 K12 ["TextSize"]
  LOADB R19 1
  SETTABLEKS R19 R18 K13 ["TextWrapped"]
  GETIMPORT R19 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K14 ["TextXAlignment"]
  GETIMPORT R19 K35 [Enum.TextYAlignment.Center]
  SETTABLEKS R19 R18 K15 ["TextYAlignment"]
  CALL R16 2 1
  SETTABLE R16 R7 R15
  FORGLOOP R9 2 [-65]
  RETURN R7 1

PROTO_12:
  GETTABLEKS R4 R0 K0 ["props"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["isUGCBundleType"]
  MOVE R6 R2
  CALL R5 1 1
  JUMPIF R5 [+2]
  LOADNIL R5
  RETURN R5 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["getUnknownMeshPartNames"]
  MOVE R6 R1
  CALL R5 1 1
  JUMPIFNOT R5 [+4]
  LENGTH R6 R5
  LOADN R7 0
  JUMPIFNOTLE R6 R7 [+3]
  LOADNIL R6
  RETURN R6 1
  NEWTABLE R6 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["new"]
  CALL R7 0 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R11 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K5 ["AutomaticSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K6 ["BackgroundTransparency"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K20 ["FONT"]
  SETTABLEKS R11 R10 K7 ["Font"]
  NAMECALL R11 R7 K21 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K8 ["LayoutOrder"]
  GETIMPORT R11 K24 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K9 ["Size"]
  GETTABLEKS R11 R4 K25 ["Localization"]
  LOADK R13 K26 ["AssetConfig"]
  LOADK R14 K27 ["UGCUnknownMeshPartsMessage"]
  NAMECALL R11 R11 K28 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K10 ["Text"]
  GETTABLEKS R12 R3 K29 ["assetConfig"]
  GETTABLEKS R11 R12 K30 ["labelTextColor"]
  SETTABLEKS R11 R10 K11 ["TextColor"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K31 ["FONT_SIZE_TITLE"]
  SETTABLEKS R11 R10 K12 ["TextSize"]
  LOADB R11 1
  SETTABLEKS R11 R10 K13 ["TextWrapped"]
  GETIMPORT R11 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K14 ["TextXAlignment"]
  GETIMPORT R11 K35 [Enum.TextYAlignment.Center]
  SETTABLEKS R11 R10 K15 ["TextYAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R6 K36 ["OptionalPartsMessage"]
  MOVE R8 R5
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K16 [{"AutomaticSize", "BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R16 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K5 ["AutomaticSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K6 ["BackgroundTransparency"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K20 ["FONT"]
  SETTABLEKS R16 R15 K7 ["Font"]
  NAMECALL R16 R7 K21 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K8 ["LayoutOrder"]
  GETIMPORT R16 K24 [UDim2.fromScale]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K9 ["Size"]
  SETTABLEKS R12 R15 K10 ["Text"]
  GETTABLEKS R17 R3 K29 ["assetConfig"]
  GETTABLEKS R16 R17 K30 ["labelTextColor"]
  SETTABLEKS R16 R15 K11 ["TextColor"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K31 ["FONT_SIZE_TITLE"]
  SETTABLEKS R16 R15 K12 ["TextSize"]
  LOADB R16 1
  SETTABLEKS R16 R15 K13 ["TextWrapped"]
  GETIMPORT R16 K33 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K14 ["TextXAlignment"]
  GETIMPORT R16 K35 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K15 ["TextYAlignment"]
  CALL R13 2 1
  SETTABLE R13 R6 R12
  FORGLOOP R8 2 [-56]
  RETURN R6 1

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["from"]
  MOVE R2 R0
  LOADB R3 1
  LOADB R4 1
  CALL R1 3 -1
  RETURN R1 -1

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["baseFrameRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+26]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["baseFrameRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  GETIMPORT R2 K4 [UDim2.new]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["X"]
  GETTABLEKS R3 R4 K6 ["Scale"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["X"]
  GETTABLEKS R4 R5 K7 ["Offset"]
  LOADN R5 0
  GETTABLEKS R8 R0 K9 ["AbsoluteContentSize"]
  GETTABLEKS R7 R8 K10 ["y"]
  ADDK R6 R7 K8 [48]
  CALL R2 4 1
  SETTABLEKS R2 R1 K11 ["CanvasSize"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["setFieldError"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["FIELD_NAMES"]
  GETTABLEKS R2 R3 K3 ["Title"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["setFieldError"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["FIELD_NAMES"]
  GETTABLEKS R2 R3 K3 ["Description"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K2 ["Size"]
  GETTABLEKS R4 R2 K3 ["LayoutOrder"]
  GETTABLEKS R5 R2 K4 ["allowCopy"]
  GETTABLEKS R6 R2 K5 ["allowSelectPrivate"]
  GETTABLEKS R7 R2 K6 ["name"]
  GETTABLEKS R8 R2 K7 ["description"]
  GETTABLEKS R9 R2 K8 ["tags"]
  GETTABLEKS R10 R2 K9 ["owner"]
  GETTABLEKS R11 R2 K10 ["copyOn"]
  GETTABLEKS R12 R2 K11 ["allowComment"]
  GETTABLEKS R13 R2 K12 ["commentOn"]
  GETTABLEKS R14 R2 K13 ["deleteLocal"]
  GETTABLEKS R15 R2 K14 ["assetTypeEnum"]
  GETTABLEKS R16 R2 K15 ["isAssetPublic"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K16 ["additionalImages"]
  GETTABLEKS R17 R18 K17 ["MaxThumbnails"]
  GETIMPORT R19 K21 [Enum.AssetType.Audio]
  JUMPIFEQ R15 R19 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  GETIMPORT R20 K23 [Enum.AssetType.Video]
  JUMPIFEQ R15 R20 [+2]
  LOADB R19 0 +1
  LOADB R19 1
  GETIMPORT R21 K25 [Enum.AssetType.Model]
  JUMPIFEQ R15 R21 [+2]
  LOADB R20 0 +1
  LOADB R20 1
  GETIMPORT R22 K27 [Enum.AssetType.Plugin]
  JUMPIFEQ R15 R22 [+2]
  LOADB R21 0 +1
  LOADB R21 1
  GETIMPORT R23 K29 [Enum.AssetType.Animation]
  JUMPIFEQ R15 R23 [+2]
  LOADB R22 0 +1
  LOADB R22 1
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K30 ["isCreatorStoreAssetNotIncludingAnimation"]
  MOVE R24 R15
  CALL R23 1 1
  GETTABLEKS R26 R2 K31 ["assetId"]
  FASTCALL1 TYPEOF R26 [+2]
  GETIMPORT R25 K33 [typeof]
  CALL R25 1 1
  JUMPIFNOTEQKS R25 K34 ["number"] [+8]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K35 ["constructCreatorStoreConfigurationUrl"]
  GETTABLEKS R25 R2 K31 ["assetId"]
  CALL R24 1 1
  JUMP [+4]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K36 ["getCreatorDashboardBaseUrl"]
  CALL R24 0 1
  GETTABLEKS R25 R2 K37 ["onNameChange"]
  GETTABLEKS R26 R2 K38 ["onDescChange"]
  GETTABLEKS R27 R2 K39 ["onOwnerSelected"]
  GETTABLEKS R28 R2 K40 ["onCategoryChange"]
  GETTABLEKS R29 R2 K41 ["onSharingChanged"]
  GETTABLEKS R30 R2 K42 ["toggleCopy"]
  GETTABLEKS R31 R2 K43 ["toggleComment"]
  GETTABLEKS R32 R2 K44 ["toggleDeleteLocal"]
  GETUPVAL R34 4
  CALL R34 0 1
  JUMPIFNOT R34 [+3]
  GETTABLEKS R33 R2 K45 ["canUploadWithUgcRestrictions"]
  JUMP [+1]
  LOADNIL R33
  GETUPVAL R35 4
  CALL R35 0 1
  JUMPIFNOT R35 [+3]
  GETTABLEKS R34 R2 K46 ["canUploadWithUgcRestrictionsDenyReason"]
  JUMP [+1]
  LOADNIL R34
  GETTABLEKS R35 R2 K47 ["publishingRequirements"]
  GETTABLEKS R36 R2 K48 ["publishingRestriction"]
  JUMPIFNOT R35 [+3]
  GETTABLEKS R37 R35 K49 ["verification"]
  JUMP [+1]
  LOADNIL R37
  JUMPIFNOT R37 [+11]
  GETTABLEKS R39 R37 K50 ["supportedTypes"]
  JUMPIFNOT R39 [+8]
  GETTABLEKS R40 R37 K50 ["supportedTypes"]
  LENGTH R39 R40
  JUMPIFNOTEQKN R39 K51 [0] [+2]
  LOADB R38 0 +1
  LOADB R38 1
  JUMP [+1]
  LOADB R38 0
  MOVE R39 R37
  JUMPIFNOT R39 [+2]
  GETTABLEKS R39 R37 K52 ["isVerified"]
  AND R40 R39 R21
  GETTABLEKS R41 R2 K53 ["displayOwnership"]
  GETTABLEKS R42 R2 K54 ["displayCopy"]
  GETTABLEKS R43 R2 K55 ["displayComment"]
  JUMPIFNOT R21 [+2]
  LOADB R44 0
  JUMP [+2]
  GETTABLEKS R44 R2 K56 ["displayAssetType"]
  GETTABLEKS R45 R2 K57 ["displaySharing"]
  GETTABLEKS R46 R2 K58 ["displayAssetTypeSelection"]
  GETUPVAL R48 5
  NOT R47 R48
  JUMPIFNOT R21 [+3]
  GETTABLEKS R48 R2 K59 ["allowedAssetTypesForRelease"]
  JUMP [+1]
  LOADNIL R48
  GETTABLEKS R49 R2 K60 ["allowedAssetTypesForFree"]
  JUMPIFNOT R21 [+3]
  GETTABLEKS R50 R2 K61 ["newAssetStatus"]
  JUMP [+1]
  LOADNIL R50
  JUMPIFNOT R21 [+3]
  GETTABLEKS R51 R2 K62 ["currentAssetStatus"]
  JUMP [+1]
  LOADNIL R51
  JUMPIFNOT R21 [+3]
  GETTABLEKS R52 R2 K63 ["onStatusChange"]
  JUMP [+1]
  LOADNIL R52
  JUMPIFNOT R21 [+3]
  GETTABLEKS R53 R2 K64 ["price"]
  JUMP [+1]
  LOADNIL R53
  JUMPIFNOT R21 [+3]
  GETTABLEKS R54 R2 K65 ["minPrice"]
  JUMP [+1]
  LOADNIL R54
  JUMPIFNOT R21 [+3]
  GETTABLEKS R55 R2 K66 ["maxPrice"]
  JUMP [+1]
  LOADNIL R55
  JUMPIFNOT R21 [+3]
  GETTABLEKS R56 R2 K67 ["feeRate"]
  JUMP [+1]
  LOADNIL R56
  JUMPIFNOT R21 [+3]
  GETTABLEKS R57 R2 K68 ["isPriceValid"]
  JUMP [+1]
  LOADNIL R57
  JUMPIFNOT R21 [+3]
  GETTABLEKS R58 R2 K69 ["onPriceChange"]
  JUMP [+1]
  LOADNIL R58
  JUMPIFNOT R21 [+12]
  GETUPVAL R60 1
  GETTABLEKS R59 R60 K70 ["isReadyForSale"]
  MOVE R60 R50
  CALL R59 1 1
  JUMPIF R59 [+7]
  GETUPVAL R60 1
  GETTABLEKS R59 R60 K71 ["isBuyableMarketplaceAsset"]
  MOVE R60 R15
  CALL R59 1 1
  JUMP [+1]
  LOADNIL R59
  GETTABLEKS R60 R2 K72 ["maximumItemTagsPerItem"]
  LOADNIL R61
  LOADNIL R62
  GETTABLEKS R63 R2 K73 ["Localization"]
  JUMPIF R18 [+3]
  GETUPVAL R64 6
  JUMPIFNOT R64 [+9]
  JUMPIFNOT R19 [+8]
  JUMPIF R16 [+7]
  JUMPIFNOT R11 [+6]
  LOADK R66 K74 ["AssetConfigCopy"]
  LOADK R67 K75 ["MustShare"]
  NAMECALL R64 R63 K76 ["getText"]
  CALL R64 3 1
  MOVE R61 R64
  JUMPIFNOT R20 [+6]
  LOADK R66 K77 ["AssetConfig"]
  LOADK R67 K78 ["ModelPublishWarning"]
  NAMECALL R64 R63 K76 ["getText"]
  CALL R64 3 1
  MOVE R62 R64
  GETUPVAL R65 7
  GETTABLEKS R64 R65 K79 ["new"]
  CALL R64 0 1
  GETTABLEKS R65 R1 K80 ["publishAsset"]
  LOADN R66 80
  JUMPIF R5 [+1]
  ADDK R66 R66 K81 [60]
  NEWTABLE R67 4 0
  SETTABLEKS R3 R67 K2 ["Size"]
  SETTABLEKS R4 R67 K3 ["LayoutOrder"]
  GETUPVAL R69 8
  GETTABLEKS R68 R69 K82 ["Ref"]
  GETTABLEKS R69 R0 K83 ["baseFrameRef"]
  SETTABLE R69 R67 R68
  LOADNIL R68
  GETTABLEKS R69 R2 K84 ["assetMediaMetadataArray"]
  JUMPIFNOT R69 [+3]
  GETTABLEKS R68 R2 K84 ["assetMediaMetadataArray"]
  JUMP [+11]
  GETTABLEKS R69 R2 K85 ["assetMediaIds"]
  JUMPIFEQKNIL R69 [+8]
  GETUPVAL R69 9
  GETTABLEKS R70 R2 K85 ["assetMediaIds"]
  DUPCLOSURE R71 K86 [PROTO_13]
  CAPTURE UPVAL U10
  CALL R69 2 1
  MOVE R68 R69
  JUMPIFNOT R21 [+7]
  MOVE R69 R59
  JUMPIFNOT R69 [+6]
  JUMPIFEQKNIL R36 [+2]
  LOADB R69 0 +1
  LOADB R69 1
  JUMP [+1]
  MOVE R69 R5
  LOADNIL R70
  LOADNIL R71
  LOADNIL R72
  LOADNIL R73
  GETUPVAL R75 1
  GETTABLEKS R74 R75 K87 ["isUGCBundleType"]
  MOVE R75 R15
  CALL R74 1 1
  MOVE R70 R74
  LOADK R76 K88 ["General"]
  LOADK R77 K89 ["BodyValidation"]
  NAMECALL R74 R63 K76 ["getText"]
  CALL R74 3 1
  MOVE R71 R74
  GETTABLEKS R74 R2 K90 ["instances"]
  JUMPIFNOT R74 [+20]
  GETTABLEKS R77 R2 K90 ["instances"]
  GETTABLEN R76 R77 1
  GETTABLEKS R77 R2 K91 ["allowedBundleTypeSettings"]
  MOVE R78 R15
  MOVE R79 R1
  NAMECALL R74 R0 K92 ["getMissingOptionalPartsMessage"]
  CALL R74 5 1
  MOVE R72 R74
  GETTABLEKS R77 R2 K90 ["instances"]
  GETTABLEN R76 R77 1
  MOVE R77 R15
  MOVE R78 R1
  NAMECALL R74 R0 K93 ["getUnknownMeshPartMessage"]
  CALL R74 4 1
  MOVE R73 R74
  GETUPVAL R75 8
  GETTABLEKS R74 R75 K94 ["createElement"]
  GETUPVAL R75 11
  MOVE R76 R67
  DUPTABLE R77 K112 [{"Padding", "UIListLayout", "ModelWarningFrame", "Header", "Title", "Description", "AssetTypeSelection", "Creator", "ContentTypeBodyValidation", "DataSharingConsent", "Ownership", "DividerBase", "Sharing", "SharingDivider", "CreatorStoreConfigurationFrame", "Comment", "DeleteLocal"}]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  LOADK R79 K113 ["UIPadding"]
  DUPTABLE R80 K118 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R81 K120 [UDim.new]
  LOADN R82 0
  LOADN R83 24
  CALL R81 2 1
  SETTABLEKS R81 R80 K114 ["PaddingTop"]
  GETIMPORT R81 K120 [UDim.new]
  LOADN R82 0
  LOADN R83 24
  CALL R81 2 1
  SETTABLEKS R81 R80 K115 ["PaddingBottom"]
  GETIMPORT R81 K120 [UDim.new]
  LOADN R82 0
  LOADN R83 24
  CALL R81 2 1
  SETTABLEKS R81 R80 K116 ["PaddingLeft"]
  GETIMPORT R81 K120 [UDim.new]
  LOADN R82 0
  LOADN R83 24
  CALL R81 2 1
  SETTABLEKS R81 R80 K117 ["PaddingRight"]
  CALL R78 2 1
  SETTABLEKS R78 R77 K95 ["Padding"]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  LOADK R79 K96 ["UIListLayout"]
  NEWTABLE R80 8 0
  GETIMPORT R81 K123 [Enum.FillDirection.Vertical]
  SETTABLEKS R81 R80 K121 ["FillDirection"]
  GETIMPORT R81 K126 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R81 R80 K124 ["HorizontalAlignment"]
  GETIMPORT R81 K129 [Enum.VerticalAlignment.Top]
  SETTABLEKS R81 R80 K127 ["VerticalAlignment"]
  GETIMPORT R81 K131 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R81 R80 K130 ["SortOrder"]
  GETIMPORT R81 K120 [UDim.new]
  LOADN R82 0
  LOADN R83 0
  CALL R81 2 1
  SETTABLEKS R81 R80 K95 ["Padding"]
  GETUPVAL R83 8
  GETTABLEKS R82 R83 K132 ["Change"]
  GETTABLEKS R81 R82 K133 ["AbsoluteContentSize"]
  GETTABLEKS R82 R0 K134 ["refreshCanvas"]
  JUMPIF R82 [+3]
  NEWCLOSURE R82 P1
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLE R82 R80 R81
  GETUPVAL R82 8
  GETTABLEKS R81 R82 K82 ["Ref"]
  GETTABLEKS R82 R0 K135 ["listLayoutRef"]
  SETTABLE R82 R80 R81
  CALL R78 2 1
  SETTABLEKS R78 R77 K96 ["UIListLayout"]
  JUMPIF R46 [+133]
  JUMPIFNOT R20 [+132]
  JUMPIFNOT R47 [+131]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 12
  DUPTABLE R80 K138 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding", "Spacing", "VerticalAlignment"}]
  GETIMPORT R81 K126 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R81 R80 K124 ["HorizontalAlignment"]
  GETIMPORT R81 K140 [Enum.FillDirection.Horizontal]
  SETTABLEKS R81 R80 K136 ["Layout"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  GETIMPORT R81 K143 [UDim2.new]
  LOADN R82 1
  LOADN R83 0
  LOADN R84 0
  GETUPVAL R86 13
  GETTABLEKS R85 R86 K144 ["FONT_SIZE_TITLE"]
  CALL R81 4 1
  SETTABLEKS R81 R80 K2 ["Size"]
  DUPTABLE R81 K146 [{"Bottom"}]
  LOADN R82 30
  SETTABLEKS R82 R81 K145 ["Bottom"]
  SETTABLEKS R81 R80 K95 ["Padding"]
  LOADN R81 5
  SETTABLEKS R81 R80 K137 ["Spacing"]
  GETIMPORT R81 K129 [Enum.VerticalAlignment.Top]
  SETTABLEKS R81 R80 K127 ["VerticalAlignment"]
  DUPTABLE R81 K149 [{"Icon", "WarningText"}]
  GETUPVAL R83 8
  GETTABLEKS R82 R83 K94 ["createElement"]
  LOADK R83 K150 ["ImageLabel"]
  DUPTABLE R84 K154 [{"LayoutOrder", "BackgroundTransparency", "Image", "ImageColor3", "Size"}]
  LOADN R85 1
  SETTABLEKS R85 R84 K3 ["LayoutOrder"]
  LOADN R85 1
  SETTABLEKS R85 R84 K151 ["BackgroundTransparency"]
  GETUPVAL R86 14
  GETTABLEKS R85 R86 K155 ["WARNING_ICON"]
  SETTABLEKS R85 R84 K152 ["Image"]
  GETTABLEKS R85 R65 K156 ["warningIconColor"]
  SETTABLEKS R85 R84 K153 ["ImageColor3"]
  GETIMPORT R85 K158 [UDim2.fromOffset]
  LOADN R86 24
  LOADN R87 24
  CALL R85 2 1
  SETTABLEKS R85 R84 K2 ["Size"]
  CALL R82 2 1
  SETTABLEKS R82 R81 K147 ["Icon"]
  GETUPVAL R83 8
  GETTABLEKS R82 R83 K94 ["createElement"]
  LOADK R83 K159 ["TextLabel"]
  DUPTABLE R84 K168 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "Text", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment", "TextSize"}]
  GETIMPORT R85 K170 [Enum.AutomaticSize.XY]
  SETTABLEKS R85 R84 K160 ["AutomaticSize"]
  LOADN R85 2
  SETTABLEKS R85 R84 K3 ["LayoutOrder"]
  LOADN R85 1
  SETTABLEKS R85 R84 K151 ["BackgroundTransparency"]
  GETUPVAL R86 13
  GETTABLEKS R85 R86 K171 ["FONT"]
  SETTABLEKS R85 R84 K161 ["Font"]
  GETIMPORT R85 K143 [UDim2.new]
  LOADN R86 1
  LOADN R87 0
  LOADN R88 1
  LOADN R89 0
  CALL R85 4 1
  SETTABLEKS R85 R84 K2 ["Size"]
  SETTABLEKS R62 R84 K162 ["Text"]
  LOADB R85 1
  SETTABLEKS R85 R84 K163 ["TextWrapped"]
  GETTABLEKS R86 R1 K172 ["assetConfig"]
  GETTABLEKS R85 R86 K173 ["warningColor"]
  SETTABLEKS R85 R84 K164 ["TextColor3"]
  GETIMPORT R85 K174 [Enum.TextXAlignment.Left]
  SETTABLEKS R85 R84 K165 ["TextXAlignment"]
  GETIMPORT R85 K176 [Enum.TextYAlignment.Center]
  SETTABLEKS R85 R84 K166 ["TextYAlignment"]
  GETUPVAL R86 13
  GETTABLEKS R85 R86 K144 ["FONT_SIZE_TITLE"]
  SETTABLEKS R85 R84 K167 ["TextSize"]
  CALL R82 2 1
  SETTABLEKS R82 R81 K148 ["WarningText"]
  CALL R78 3 1
  JUMP [+1]
  LOADNIL R78
  SETTABLEKS R78 R77 K97 ["ModelWarningFrame"]
  JUMPIFNOT R21 [+19]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 15
  DUPTABLE R80 K177 [{"LayoutOrder", "Title"}]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  LOADK R83 K77 ["AssetConfig"]
  LOADK R84 K178 ["PublishPluginHeader"]
  NAMECALL R81 R63 K76 ["getText"]
  CALL R81 3 1
  SETTABLEKS R81 R80 K99 ["Title"]
  CALL R78 2 1
  JUMP [+1]
  LOADNIL R78
  SETTABLEKS R78 R77 K98 ["Header"]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 16
  DUPTABLE R80 K184 [{"Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "ErrorCallback", "LayoutOrder"}]
  LOADK R83 K88 ["General"]
  LOADK R84 K99 ["Title"]
  NAMECALL R81 R63 K76 ["getText"]
  CALL R81 3 1
  SETTABLEKS R81 R80 K99 ["Title"]
  LOADN R81 100
  SETTABLEKS R81 R80 K179 ["TotalHeight"]
  GETUPVAL R82 0
  GETTABLEKS R81 R82 K185 ["NAME_CHARACTER_LIMIT"]
  SETTABLEKS R81 R80 K180 ["MaxCount"]
  SETTABLEKS R25 R80 K181 ["TextChangeCallBack"]
  SETTABLEKS R7 R80 K182 ["TextContent"]
  NEWCLOSURE R81 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R81 R80 K183 ["ErrorCallback"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  CALL R78 2 1
  SETTABLEKS R78 R77 K99 ["Title"]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 16
  DUPTABLE R80 K187 [{"BottomRightText", "Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "ErrorCallback", "LayoutOrder"}]
  LOADK R83 K188 ["AssetConfigDescription"]
  LOADK R84 K189 ["AddRobloxLinks"]
  NAMECALL R81 R63 K76 ["getText"]
  CALL R81 3 1
  SETTABLEKS R81 R80 K186 ["BottomRightText"]
  LOADK R83 K88 ["General"]
  LOADK R84 K100 ["Description"]
  NAMECALL R81 R63 K76 ["getText"]
  CALL R81 3 1
  SETTABLEKS R81 R80 K99 ["Title"]
  LOADN R81 180
  SETTABLEKS R81 R80 K179 ["TotalHeight"]
  GETUPVAL R82 0
  GETTABLEKS R81 R82 K190 ["DESCRIPTION_CHARACTER_LIMIT"]
  SETTABLEKS R81 R80 K180 ["MaxCount"]
  SETTABLEKS R26 R80 K181 ["TextChangeCallBack"]
  SETTABLEKS R8 R80 K182 ["TextContent"]
  NEWCLOSURE R81 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R81 R80 K183 ["ErrorCallback"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  CALL R78 2 1
  SETTABLEKS R78 R77 K100 ["Description"]
  JUMPIFNOT R46 [+80]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 17
  DUPTABLE R80 K201 [{"LayoutOrder", "onCategoryChange", "canUploadWithUgcRestrictions", "canUploadWithUgcRestrictionsDenyReason", "dataSharingEnabled", "dataSharingToggled", "onDataConsentToggleClick", "validationState", "validationFailureReasons", "setValidationState", "setValidationFailureReasons", "ugcBundleValidationResults", "setUGCBundleValidationResults", "setCurrentAssetType", "instances"}]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  SETTABLEKS R28 R80 K40 ["onCategoryChange"]
  GETUPVAL R82 4
  CALL R82 0 1
  JUMPIFNOT R82 [+2]
  MOVE R81 R33
  JUMP [+1]
  LOADNIL R81
  SETTABLEKS R81 R80 K45 ["canUploadWithUgcRestrictions"]
  GETUPVAL R82 4
  CALL R82 0 1
  JUMPIFNOT R82 [+2]
  MOVE R81 R34
  JUMP [+1]
  LOADNIL R81
  SETTABLEKS R81 R80 K46 ["canUploadWithUgcRestrictionsDenyReason"]
  GETTABLEKS R81 R2 K191 ["dataSharingEnabled"]
  SETTABLEKS R81 R80 K191 ["dataSharingEnabled"]
  GETTABLEKS R81 R2 K192 ["dataSharingToggled"]
  SETTABLEKS R81 R80 K192 ["dataSharingToggled"]
  GETTABLEKS R81 R2 K193 ["onDataConsentToggleClick"]
  SETTABLEKS R81 R80 K193 ["onDataConsentToggleClick"]
  GETTABLEKS R82 R0 K202 ["state"]
  GETTABLEKS R81 R82 K194 ["validationState"]
  SETTABLEKS R81 R80 K194 ["validationState"]
  GETTABLEKS R82 R0 K202 ["state"]
  GETTABLEKS R81 R82 K195 ["validationFailureReasons"]
  SETTABLEKS R81 R80 K195 ["validationFailureReasons"]
  GETTABLEKS R81 R0 K196 ["setValidationState"]
  SETTABLEKS R81 R80 K196 ["setValidationState"]
  GETTABLEKS R81 R0 K197 ["setValidationFailureReasons"]
  SETTABLEKS R81 R80 K197 ["setValidationFailureReasons"]
  GETTABLEKS R82 R0 K202 ["state"]
  GETTABLEKS R81 R82 K198 ["ugcBundleValidationResults"]
  SETTABLEKS R81 R80 K198 ["ugcBundleValidationResults"]
  GETTABLEKS R81 R0 K199 ["setUGCBundleValidationResults"]
  SETTABLEKS R81 R80 K199 ["setUGCBundleValidationResults"]
  GETTABLEKS R81 R0 K200 ["setCurrentAssetType"]
  SETTABLEKS R81 R80 K200 ["setCurrentAssetType"]
  GETTABLEKS R81 R2 K90 ["instances"]
  SETTABLEKS R81 R80 K90 ["instances"]
  CALL R78 2 1
  JUMP [+1]
  LOADNIL R78
  SETTABLEKS R78 R77 K101 ["AssetTypeSelection"]
  JUMPIFNOT R46 [+27]
  JUMPIFNOT R41 [+26]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 18
  DUPTABLE R80 K204 [{"LayoutOrder", "onDropDownSelect", "owner", "Title", "TotalHeight"}]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  SETTABLEKS R27 R80 K203 ["onDropDownSelect"]
  SETTABLEKS R10 R80 K9 ["owner"]
  LOADK R83 K88 ["General"]
  LOADK R84 K105 ["Ownership"]
  NAMECALL R81 R63 K76 ["getText"]
  CALL R81 3 1
  SETTABLEKS R81 R80 K99 ["Title"]
  LOADN R81 70
  SETTABLEKS R81 R80 K179 ["TotalHeight"]
  CALL R78 2 1
  JUMP [+1]
  LOADNIL R78
  SETTABLEKS R78 R77 K102 ["Creator"]
  JUMPIFNOT R70 [+186]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 19
  DUPTABLE R80 K205 [{"AutomaticSize", "LayoutOrder", "Title"}]
  GETIMPORT R81 K170 [Enum.AutomaticSize.XY]
  SETTABLEKS R81 R80 K160 ["AutomaticSize"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  SETTABLEKS R71 R80 K99 ["Title"]
  DUPTABLE R81 K207 [{"ValidationPane"}]
  GETUPVAL R83 8
  GETTABLEKS R82 R83 K94 ["createElement"]
  GETUPVAL R83 12
  DUPTABLE R84 K208 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing", "Padding"}]
  GETIMPORT R85 K210 [Enum.AutomaticSize.Y]
  SETTABLEKS R85 R84 K160 ["AutomaticSize"]
  GETIMPORT R85 K123 [Enum.FillDirection.Vertical]
  SETTABLEKS R85 R84 K136 ["Layout"]
  LOADN R85 1
  SETTABLEKS R85 R84 K3 ["LayoutOrder"]
  GETIMPORT R85 K212 [UDim2.fromScale]
  LOADN R86 1
  LOADN R87 0
  CALL R85 2 1
  SETTABLEKS R85 R84 K2 ["Size"]
  LOADN R85 18
  SETTABLEKS R85 R84 K137 ["Spacing"]
  DUPTABLE R85 K146 [{"Bottom"}]
  LOADN R86 24
  SETTABLEKS R86 R85 K145 ["Bottom"]
  SETTABLEKS R85 R84 K95 ["Padding"]
  DUPTABLE R85 K216 [{"UGCBundleValidation", "MissingOptionalAccessoriesMsg", "UnknownMeshPartsMsgChildren"}]
  GETUPVAL R87 8
  GETTABLEKS R86 R87 K94 ["createElement"]
  GETUPVAL R87 20
  DUPTABLE R88 K220 [{"LayoutOrder", "isUGCBodyBundleType", "validationState", "setValidationState", "validationFailureReasons", "setValidationFailureReasons", "validationResults", "setUGCBundleValidationResults", "assetTypeEnum", "instances", "allowedBundleTypeSettings", "onAssetValidationResultChanged"}]
  LOADN R89 1
  SETTABLEKS R89 R88 K3 ["LayoutOrder"]
  GETUPVAL R90 21
  CALL R90 0 1
  JUMPIFNOT R90 [+6]
  GETUPVAL R90 1
  GETTABLEKS R89 R90 K217 ["isUGCBodyBundleType"]
  MOVE R90 R15
  CALL R89 1 1
  JUMP [+1]
  LOADNIL R89
  SETTABLEKS R89 R88 K217 ["isUGCBodyBundleType"]
  GETTABLEKS R90 R0 K202 ["state"]
  GETTABLEKS R89 R90 K194 ["validationState"]
  SETTABLEKS R89 R88 K194 ["validationState"]
  GETTABLEKS R89 R0 K196 ["setValidationState"]
  SETTABLEKS R89 R88 K196 ["setValidationState"]
  GETTABLEKS R90 R0 K202 ["state"]
  GETTABLEKS R89 R90 K195 ["validationFailureReasons"]
  SETTABLEKS R89 R88 K195 ["validationFailureReasons"]
  GETTABLEKS R89 R0 K197 ["setValidationFailureReasons"]
  SETTABLEKS R89 R88 K197 ["setValidationFailureReasons"]
  GETTABLEKS R90 R0 K202 ["state"]
  GETTABLEKS R89 R90 K198 ["ugcBundleValidationResults"]
  SETTABLEKS R89 R88 K218 ["validationResults"]
  GETTABLEKS R89 R0 K199 ["setUGCBundleValidationResults"]
  SETTABLEKS R89 R88 K199 ["setUGCBundleValidationResults"]
  GETTABLEKS R90 R0 K202 ["state"]
  GETTABLEKS R89 R90 K221 ["currentAssetType"]
  SETTABLEKS R89 R88 K14 ["assetTypeEnum"]
  GETTABLEKS R89 R2 K90 ["instances"]
  SETTABLEKS R89 R88 K90 ["instances"]
  GETTABLEKS R89 R2 K91 ["allowedBundleTypeSettings"]
  SETTABLEKS R89 R88 K91 ["allowedBundleTypeSettings"]
  GETTABLEKS R89 R2 K219 ["onAssetValidationResultChanged"]
  SETTABLEKS R89 R88 K219 ["onAssetValidationResultChanged"]
  CALL R86 2 1
  SETTABLEKS R86 R85 K213 ["UGCBundleValidation"]
  JUMPIFNOT R72 [+26]
  GETUPVAL R87 8
  GETTABLEKS R86 R87 K94 ["createElement"]
  GETUPVAL R87 12
  DUPTABLE R88 K222 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
  GETIMPORT R89 K210 [Enum.AutomaticSize.Y]
  SETTABLEKS R89 R88 K160 ["AutomaticSize"]
  GETIMPORT R89 K123 [Enum.FillDirection.Vertical]
  SETTABLEKS R89 R88 K136 ["Layout"]
  LOADN R89 2
  SETTABLEKS R89 R88 K3 ["LayoutOrder"]
  GETIMPORT R89 K212 [UDim2.fromScale]
  LOADN R90 1
  LOADN R91 0
  CALL R89 2 1
  SETTABLEKS R89 R88 K2 ["Size"]
  MOVE R89 R72
  CALL R86 3 1
  JUMP [+1]
  LOADNIL R86
  SETTABLEKS R86 R85 K214 ["MissingOptionalAccessoriesMsg"]
  JUMPIFNOT R73 [+26]
  GETUPVAL R87 8
  GETTABLEKS R86 R87 K94 ["createElement"]
  GETUPVAL R87 12
  DUPTABLE R88 K222 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
  GETIMPORT R89 K210 [Enum.AutomaticSize.Y]
  SETTABLEKS R89 R88 K160 ["AutomaticSize"]
  GETIMPORT R89 K123 [Enum.FillDirection.Vertical]
  SETTABLEKS R89 R88 K136 ["Layout"]
  LOADN R89 3
  SETTABLEKS R89 R88 K3 ["LayoutOrder"]
  GETIMPORT R89 K212 [UDim2.fromScale]
  LOADN R90 1
  LOADN R91 0
  CALL R89 2 1
  SETTABLEKS R89 R88 K2 ["Size"]
  MOVE R89 R73
  CALL R86 3 1
  JUMP [+1]
  LOADNIL R86
  SETTABLEKS R86 R85 K215 ["UnknownMeshPartsMsgChildren"]
  CALL R82 3 1
  SETTABLEKS R82 R81 K206 ["ValidationPane"]
  CALL R78 3 1
  JUMP [+1]
  LOADNIL R78
  SETTABLEKS R78 R77 K103 ["ContentTypeBodyValidation"]
  GETTABLEKS R79 R2 K191 ["dataSharingEnabled"]
  JUMPIFNOT R79 [+32]
  GETUPVAL R80 1
  GETTABLEKS R79 R80 K87 ["isUGCBundleType"]
  MOVE R80 R15
  CALL R79 1 1
  JUMPIF R79 [+6]
  GETUPVAL R80 1
  GETTABLEKS R79 R80 K223 ["isCatalogAsset"]
  MOVE R80 R15
  CALL R79 1 1
  JUMPIFNOT R79 [+20]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 22
  DUPTABLE R80 K224 [{"LayoutOrder", "dataSharingToggled", "onDataConsentToggleClick"}]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  GETTABLEKS R81 R2 K192 ["dataSharingToggled"]
  SETTABLEKS R81 R80 K192 ["dataSharingToggled"]
  GETTABLEKS R81 R2 K193 ["onDataConsentToggleClick"]
  SETTABLEKS R81 R80 K193 ["onDataConsentToggleClick"]
  CALL R78 2 1
  JUMP [+1]
  LOADNIL R78
  SETTABLEKS R78 R77 K104 ["DataSharingConsent"]
  JUMPIF R46 [+27]
  JUMPIFNOT R41 [+26]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 18
  DUPTABLE R80 K225 [{"Title", "owner", "TotalHeight", "onDropDownSelect", "LayoutOrder"}]
  LOADK R83 K88 ["General"]
  LOADK R84 K105 ["Ownership"]
  NAMECALL R81 R63 K76 ["getText"]
  CALL R81 3 1
  SETTABLEKS R81 R80 K99 ["Title"]
  SETTABLEKS R10 R80 K9 ["owner"]
  LOADN R81 70
  SETTABLEKS R81 R80 K179 ["TotalHeight"]
  SETTABLEKS R27 R80 K203 ["onDropDownSelect"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  CALL R78 2 1
  JUMP [+1]
  LOADNIL R78
  SETTABLEKS R78 R77 K105 ["Ownership"]
  MOVE R78 R23
  JUMPIFNOT R78 [+41]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  LOADK R79 K226 ["Frame"]
  DUPTABLE R80 K227 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R81 1
  SETTABLEKS R81 R80 K151 ["BackgroundTransparency"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  GETIMPORT R81 K143 [UDim2.new]
  LOADN R82 1
  LOADN R83 0
  LOADN R84 0
  LOADN R85 20
  CALL R81 4 1
  SETTABLEKS R81 R80 K2 ["Size"]
  DUPTABLE R81 K229 [{"Separator"}]
  GETUPVAL R83 8
  GETTABLEKS R82 R83 K94 ["createElement"]
  GETUPVAL R83 23
  DUPTABLE R84 K231 [{"Position"}]
  GETIMPORT R85 K143 [UDim2.new]
  LOADK R86 K232 [0.5]
  LOADN R87 0
  LOADK R88 K232 [0.5]
  LOADN R89 0
  CALL R85 4 1
  SETTABLEKS R85 R84 K230 ["Position"]
  CALL R82 2 1
  SETTABLEKS R82 R81 K228 ["Separator"]
  CALL R78 3 1
  SETTABLEKS R78 R77 K106 ["DividerBase"]
  JUMPIFNOT R45 [+24]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 24
  DUPTABLE R80 K237 [{"AssetId", "AssetType", "AllowSelectPrivate", "LayoutOrder", "IsAssetPublic", "OnSelected"}]
  GETTABLEKS R81 R2 K31 ["assetId"]
  SETTABLEKS R81 R80 K233 ["AssetId"]
  SETTABLEKS R15 R80 K19 ["AssetType"]
  SETTABLEKS R6 R80 K234 ["AllowSelectPrivate"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  SETTABLEKS R16 R80 K235 ["IsAssetPublic"]
  SETTABLEKS R29 R80 K236 ["OnSelected"]
  CALL R78 2 1
  JUMP [+1]
  LOADNIL R78
  SETTABLEKS R78 R77 K107 ["Sharing"]
  JUMPIFNOT R45 [+42]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  LOADK R79 K226 ["Frame"]
  DUPTABLE R80 K227 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R81 1
  SETTABLEKS R81 R80 K151 ["BackgroundTransparency"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  GETIMPORT R81 K143 [UDim2.new]
  LOADN R82 1
  LOADN R83 0
  LOADN R84 0
  LOADN R85 20
  CALL R81 4 1
  SETTABLEKS R81 R80 K2 ["Size"]
  DUPTABLE R81 K229 [{"Separator"}]
  GETUPVAL R83 8
  GETTABLEKS R82 R83 K94 ["createElement"]
  GETUPVAL R83 23
  DUPTABLE R84 K231 [{"Position"}]
  GETIMPORT R85 K143 [UDim2.new]
  LOADK R86 K232 [0.5]
  LOADN R87 0
  LOADK R88 K232 [0.5]
  LOADN R89 0
  CALL R85 4 1
  SETTABLEKS R85 R84 K230 ["Position"]
  CALL R82 2 1
  SETTABLEKS R82 R81 K228 ["Separator"]
  CALL R78 3 1
  JUMP [+1]
  LOADNIL R78
  SETTABLEKS R78 R77 K108 ["SharingDivider"]
  JUMPIFNOT R23 [+109]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 12
  DUPTABLE R80 K238 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
  GETIMPORT R81 K210 [Enum.AutomaticSize.Y]
  SETTABLEKS R81 R80 K160 ["AutomaticSize"]
  GETIMPORT R81 K123 [Enum.FillDirection.Vertical]
  SETTABLEKS R81 R80 K136 ["Layout"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  DUPTABLE R81 K239 [{"Top"}]
  LOADN R82 20
  SETTABLEKS R82 R81 K128 ["Top"]
  SETTABLEKS R81 R80 K95 ["Padding"]
  DUPTABLE R81 K242 [{"CreatorStoreConfigurationText", "CreatorStoreConfigurationLink"}]
  GETUPVAL R83 8
  GETTABLEKS R82 R83 K94 ["createElement"]
  GETUPVAL R83 25
  DUPTABLE R84 K243 [{"Text", "TextColor3", "TextSize", "Size", "LayoutOrder"}]
  GETTABLEKS R85 R2 K73 ["Localization"]
  LOADK R87 K244 ["AssetUploadResult"]
  LOADK R88 K245 ["CreatorStoreConfigurationMessage"]
  NAMECALL R85 R85 K76 ["getText"]
  CALL R85 3 1
  SETTABLEKS R85 R84 K162 ["Text"]
  GETTABLEKS R86 R1 K246 ["uploadResult"]
  GETTABLEKS R85 R86 K247 ["text"]
  SETTABLEKS R85 R84 K164 ["TextColor3"]
  GETUPVAL R86 13
  GETTABLEKS R85 R86 K248 ["FONT_SIZE_LARGE"]
  SETTABLEKS R85 R84 K167 ["TextSize"]
  GETIMPORT R85 K143 [UDim2.new]
  LOADN R86 1
  LOADN R87 0
  LOADN R88 0
  LOADN R89 24
  CALL R85 4 1
  SETTABLEKS R85 R84 K2 ["Size"]
  NAMECALL R85 R64 K141 ["getNextOrder"]
  CALL R85 1 1
  SETTABLEKS R85 R84 K3 ["LayoutOrder"]
  CALL R82 2 1
  SETTABLEKS R82 R81 K240 ["CreatorStoreConfigurationText"]
  GETUPVAL R83 8
  GETTABLEKS R82 R83 K94 ["createElement"]
  GETUPVAL R83 26
  DUPTABLE R84 K250 [{"Text", "TextColor3", "TextSize", "Size", "LayoutOrder", "OnClick"}]
  SETTABLEKS R24 R84 K162 ["Text"]
  GETTABLEKS R86 R1 K246 ["uploadResult"]
  GETTABLEKS R85 R86 K251 ["link"]
  SETTABLEKS R85 R84 K164 ["TextColor3"]
  GETUPVAL R86 13
  GETTABLEKS R85 R86 K248 ["FONT_SIZE_LARGE"]
  SETTABLEKS R85 R84 K167 ["TextSize"]
  GETIMPORT R85 K143 [UDim2.new]
  LOADN R86 1
  LOADN R87 0
  LOADN R88 0
  LOADN R89 24
  CALL R85 4 1
  SETTABLEKS R85 R84 K2 ["Size"]
  NAMECALL R85 R64 K141 ["getNextOrder"]
  CALL R85 1 1
  SETTABLEKS R85 R84 K3 ["LayoutOrder"]
  NEWCLOSURE R85 P4
  CAPTURE UPVAL U27
  CAPTURE VAL R24
  SETTABLEKS R85 R84 K249 ["OnClick"]
  CALL R82 2 1
  SETTABLEKS R82 R81 K241 ["CreatorStoreConfigurationLink"]
  CALL R78 3 1
  JUMP [+1]
  LOADNIL R78
  SETTABLEKS R78 R77 K109 ["CreatorStoreConfigurationFrame"]
  MOVE R78 R43
  JUMPIFNOT R78 [+27]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 28
  DUPTABLE R80 K255 [{"Title", "TotalHeight", "CommentEnabled", "CommentOn", "ToggleCallback", "LayoutOrder"}]
  LOADK R83 K88 ["General"]
  LOADK R84 K0 ["props"]
  NAMECALL R81 R63 K76 ["getText"]
  CALL R81 3 1
  SETTABLEKS R81 R80 K99 ["Title"]
  LOADN R81 80
  SETTABLEKS R81 R80 K179 ["TotalHeight"]
  SETTABLEKS R12 R80 K252 ["CommentEnabled"]
  SETTABLEKS R13 R80 K253 ["CommentOn"]
  SETTABLEKS R31 R80 K254 ["ToggleCallback"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  CALL R78 2 1
  SETTABLEKS R78 R77 K110 ["Comment"]
  MOVE R78 R22
  JUMPIFNOT R78 [+25]
  GETUPVAL R79 8
  GETTABLEKS R78 R79 K94 ["createElement"]
  GETUPVAL R79 29
  DUPTABLE R80 K257 [{"Title", "TotalHeight", "DeleteLocal", "ToggleCallback", "LayoutOrder"}]
  LOADK R83 K88 ["General"]
  LOADK R84 K111 ["DeleteLocal"]
  NAMECALL R81 R63 K76 ["getText"]
  CALL R81 3 1
  SETTABLEKS R81 R80 K99 ["Title"]
  LOADN R81 80
  SETTABLEKS R81 R80 K179 ["TotalHeight"]
  SETTABLEKS R14 R80 K111 ["DeleteLocal"]
  SETTABLEKS R32 R80 K254 ["ToggleCallback"]
  NAMECALL R81 R64 K141 ["getNextOrder"]
  CALL R81 1 1
  SETTABLEKS R81 R80 K3 ["LayoutOrder"]
  CALL R78 2 1
  SETTABLEKS R78 R77 K111 ["DeleteLocal"]
  CALL R74 3 -1
  RETURN R74 -1

PROTO_19:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  DUPTABLE R1 K6 [{"publishingRequirements", "assetMediaIds", "assetMediaMetadataArray", "sellerStatusData", "instances", "allowedBundleTypeSettings"}]
  GETTABLEKS R2 R0 K0 ["publishingRequirements"]
  SETTABLEKS R2 R1 K0 ["publishingRequirements"]
  GETTABLEKS R2 R0 K1 ["assetMediaIds"]
  SETTABLEKS R2 R1 K1 ["assetMediaIds"]
  GETTABLEKS R2 R0 K2 ["assetMediaMetadataArray"]
  SETTABLEKS R2 R1 K2 ["assetMediaMetadataArray"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R0 K3 ["sellerStatusData"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["sellerStatusData"]
  GETTABLEKS R2 R0 K4 ["instances"]
  SETTABLEKS R2 R1 K4 ["instances"]
  GETTABLEKS R2 R0 K5 ["allowedBundleTypeSettings"]
  SETTABLEKS R2 R1 K5 ["allowedBundleTypeSettings"]
  RETURN R1 1

PROTO_20:
  GETUPVAL R2 0
  GETUPVAL R3 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K0 ["SIDE_TABS"]
  GETTABLEKS R4 R5 K1 ["General"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R3 3 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_22:
  DUPTABLE R1 K2 [{"setFieldError", "onAssetValidationResultChanged"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K0 ["setFieldError"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K1 ["onAssetValidationResultChanged"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R3 R1 K7 ["Core"]
  GETTABLEKS R2 R3 K8 ["Util"]
  GETTABLEKS R3 R1 K9 ["Packages"]
  GETIMPORT R4 K11 [require]
  GETTABLEKS R5 R3 K12 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R6 R3 K13 ["Framework"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R10 R1 K7 ["Core"]
  GETTABLEKS R9 R10 K8 ["Util"]
  GETTABLEKS R8 R9 K14 ["SharedFlags"]
  GETTABLEKS R7 R8 K15 ["getFFlagEnableUGCForAllChecks"]
  CALL R6 1 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K16 ["ToolboxVideoConfigSharing2"]
  NAMECALL R7 R7 K17 ["GetFastFlag"]
  CALL R7 2 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R12 R1 K7 ["Core"]
  GETTABLEKS R11 R12 K8 ["Util"]
  GETTABLEKS R10 R11 K14 ["SharedFlags"]
  GETTABLEKS R9 R10 K18 ["getFFlagToolboxEnableFiatFully"]
  CALL R8 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R13 R1 K7 ["Core"]
  GETTABLEKS R12 R13 K8 ["Util"]
  GETTABLEKS R11 R12 K14 ["SharedFlags"]
  GETTABLEKS R10 R11 K19 ["getFFlagToolboxAssetConfigOnboardingLink"]
  CALL R9 1 1
  GETIMPORT R10 K1 [game]
  LOADK R12 K20 ["ToolboxRemoveRestrictedAssetWarning2"]
  NAMECALL R10 R10 K17 ["GetFastFlag"]
  CALL R10 2 1
  GETIMPORT R11 K11 [require]
  GETTABLEKS R14 R1 K7 ["Core"]
  GETTABLEKS R13 R14 K21 ["Flags"]
  GETTABLEKS R12 R13 K22 ["getFFlagEnableUploadingShoes"]
  CALL R11 1 1
  GETIMPORT R12 K11 [require]
  GETTABLEKS R13 R3 K23 ["Roact"]
  CALL R12 1 1
  GETIMPORT R13 K11 [require]
  GETTABLEKS R14 R3 K24 ["RoactRodux"]
  CALL R13 1 1
  GETIMPORT R15 K11 [require]
  GETTABLEKS R16 R3 K13 ["Framework"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K25 ["ContextServices"]
  GETTABLEKS R15 R14 K26 ["withContext"]
  GETTABLEKS R16 R5 K27 ["UI"]
  GETTABLEKS R17 R16 K28 ["MultiImagePickerWrapper"]
  GETTABLEKS R18 R16 K29 ["TextLabel"]
  GETTABLEKS R19 R16 K30 ["TitledFrame"]
  GETTABLEKS R20 R16 K31 ["BulletList"]
  GETTABLEKS R21 R16 K32 ["LinkText"]
  GETTABLEKS R22 R16 K33 ["Pane"]
  GETTABLEKS R23 R16 K34 ["Separator"]
  GETIMPORT R24 K11 [require]
  GETTABLEKS R27 R1 K7 ["Core"]
  GETTABLEKS R26 R27 K35 ["Components"]
  GETTABLEKS R25 R26 K36 ["StyledScrollingFrame"]
  CALL R24 1 1
  GETIMPORT R25 K11 [require]
  GETTABLEKS R26 R3 K37 ["Dash"]
  CALL R25 1 1
  GETTABLEKS R26 R25 K38 ["map"]
  GETIMPORT R27 K11 [require]
  GETTABLEKS R28 R2 K39 ["createAssetMediaMetadata"]
  CALL R27 1 1
  GETIMPORT R28 K11 [require]
  GETTABLEKS R29 R2 K40 ["LayoutOrderIterator"]
  CALL R28 1 1
  GETIMPORT R29 K11 [require]
  GETTABLEKS R30 R2 K41 ["AssetConfigConstants"]
  CALL R29 1 1
  GETIMPORT R30 K11 [require]
  GETTABLEKS R31 R2 K42 ["AssetConfigUtil"]
  CALL R30 1 1
  GETIMPORT R31 K11 [require]
  GETTABLEKS R32 R2 K43 ["Constants"]
  CALL R31 1 1
  GETIMPORT R32 K11 [require]
  GETTABLEKS R35 R1 K7 ["Core"]
  GETTABLEKS R34 R35 K8 ["Util"]
  GETTABLEKS R33 R34 K44 ["Images"]
  CALL R32 1 1
  GETIMPORT R33 K11 [require]
  GETTABLEKS R36 R1 K7 ["Core"]
  GETTABLEKS R35 R36 K45 ["Localization"]
  GETTABLEKS R34 R35 K46 ["getLocalizedAssetTextMap"]
  CALL R33 1 1
  GETIMPORT R34 K11 [require]
  GETTABLEKS R35 R2 K47 ["ToolboxUtilities"]
  CALL R34 1 1
  GETIMPORT R35 K11 [require]
  GETTABLEKS R36 R2 K48 ["FiatTempConstants"]
  CALL R35 1 1
  GETIMPORT R36 K11 [require]
  GETTABLEKS R37 R2 K49 ["Urls"]
  CALL R36 1 1
  GETTABLEKS R39 R1 K7 ["Core"]
  GETTABLEKS R38 R39 K35 ["Components"]
  GETTABLEKS R37 R38 K50 ["AssetConfiguration"]
  GETIMPORT R38 K11 [require]
  GETTABLEKS R41 R1 K7 ["Core"]
  GETTABLEKS R40 R41 K51 ["Actions"]
  GETTABLEKS R39 R40 K52 ["SetUploadAssetValidationStatus"]
  CALL R38 1 1
  GETIMPORT R39 K11 [require]
  GETTABLEKS R40 R37 K53 ["ConfigTextField"]
  CALL R39 1 1
  GETIMPORT R40 K11 [require]
  GETTABLEKS R41 R37 K54 ["ConfigAccess"]
  CALL R40 1 1
  GETIMPORT R41 K11 [require]
  GETTABLEKS R42 R37 K55 ["ConfigDeleteLocal"]
  CALL R41 1 1
  GETIMPORT R42 K11 [require]
  GETTABLEKS R43 R37 K56 ["ConfigCopy"]
  CALL R42 1 1
  GETIMPORT R43 K11 [require]
  GETTABLEKS R44 R37 K57 ["ConfigAssetType"]
  CALL R43 1 1
  GETIMPORT R44 K11 [require]
  GETTABLEKS R45 R37 K58 ["ConfigComment"]
  CALL R44 1 1
  GETIMPORT R45 K11 [require]
  GETTABLEKS R46 R37 K59 ["ConfigSharing"]
  CALL R45 1 1
  GETIMPORT R46 K11 [require]
  GETTABLEKS R47 R37 K60 ["ConfigSectionWrapper"]
  CALL R46 1 1
  GETIMPORT R47 K11 [require]
  GETTABLEKS R48 R37 K61 ["Header"]
  CALL R47 1 1
  GETIMPORT R48 K11 [require]
  GETTABLEKS R49 R37 K62 ["FiatPriceComponent"]
  CALL R48 1 1
  GETIMPORT R49 K11 [require]
  GETTABLEKS R50 R37 K63 ["DataConsentToggle"]
  CALL R49 1 1
  GETIMPORT R50 K11 [require]
  GETTABLEKS R51 R37 K64 ["UGCBundleValidation"]
  CALL R50 1 1
  GETIMPORT R51 K11 [require]
  GETTABLEKS R54 R1 K7 ["Core"]
  GETTABLEKS R53 R54 K65 ["Types"]
  GETTABLEKS R52 R53 K66 ["MarketplaceFiatServiceTypes"]
  CALL R51 1 1
  GETIMPORT R52 K11 [require]
  GETTABLEKS R55 R1 K7 ["Core"]
  GETTABLEKS R54 R55 K51 ["Actions"]
  GETTABLEKS R53 R54 K67 ["SetFieldError"]
  CALL R52 1 1
  GETIMPORT R53 K11 [require]
  GETTABLEKS R56 R1 K7 ["Core"]
  GETTABLEKS R55 R56 K8 ["Util"]
  GETTABLEKS R54 R55 K68 ["PageInfoHelper"]
  CALL R53 1 1
  GETTABLEKS R54 R12 K69 ["PureComponent"]
  LOADK R56 K70 ["PublishAsset"]
  NAMECALL R54 R54 K71 ["extend"]
  CALL R54 2 1
  DUPCLOSURE R55 K72 [PROTO_9]
  CAPTURE VAL R29
  CAPTURE VAL R12
  CAPTURE VAL R0
  CAPTURE VAL R34
  CAPTURE VAL R9
  SETTABLEKS R55 R54 K73 ["init"]
  DUPCLOSURE R55 K74 [PROTO_10]
  SETTABLEKS R55 R54 K75 ["bumpCanvas"]
  DUPCLOSURE R55 K76 [PROTO_11]
  CAPTURE VAL R30
  CAPTURE VAL R28
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R31
  CAPTURE VAL R33
  SETTABLEKS R55 R54 K77 ["getMissingOptionalPartsMessage"]
  DUPCLOSURE R55 K78 [PROTO_12]
  CAPTURE VAL R30
  CAPTURE VAL R28
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R31
  SETTABLEKS R55 R54 K79 ["getUnknownMeshPartMessage"]
  DUPCLOSURE R55 K80 [PROTO_18]
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R36
  CAPTURE VAL R34
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R28
  CAPTURE VAL R12
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R24
  CAPTURE VAL R22
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R47
  CAPTURE VAL R39
  CAPTURE VAL R43
  CAPTURE VAL R40
  CAPTURE VAL R46
  CAPTURE VAL R50
  CAPTURE VAL R11
  CAPTURE VAL R49
  CAPTURE VAL R23
  CAPTURE VAL R45
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R0
  CAPTURE VAL R44
  CAPTURE VAL R41
  SETTABLEKS R55 R54 K81 ["render"]
  DUPCLOSURE R55 K82 [PROTO_19]
  CAPTURE VAL R9
  DUPCLOSURE R56 K83 [PROTO_22]
  CAPTURE VAL R52
  CAPTURE VAL R29
  CAPTURE VAL R38
  MOVE R57 R15
  DUPTABLE R58 K85 [{"Localization", "Stylizer"}]
  GETTABLEKS R59 R14 K45 ["Localization"]
  SETTABLEKS R59 R58 K45 ["Localization"]
  GETTABLEKS R59 R14 K84 ["Stylizer"]
  SETTABLEKS R59 R58 K84 ["Stylizer"]
  CALL R57 1 1
  MOVE R58 R54
  CALL R57 1 1
  MOVE R54 R57
  GETTABLEKS R57 R13 K86 ["connect"]
  MOVE R58 R55
  MOVE R59 R56
  CALL R57 2 1
  MOVE R58 R54
  CALL R57 1 -1
  RETURN R57 -1
