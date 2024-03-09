PROTO_0:
  NEWTABLE R4 0 0
  GETIMPORT R5 K1 [pairs]
  MOVE R6 R0
  CALL R5 1 3
  FORGPREP_NEXT R5
  LOADNIL R10
  LOADNIL R11
  JUMPIFNOTEQKS R9 K2 ["500"] [+15]
  NAMECALL R13 R2 K3 ["GetImportTree"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K4 ["ExistingPackageId"]
  JUMPIFEQKS R12 K5 [""] [+8]
  GETUPVAL R12 0
  MOVE R13 R3
  LOADK R14 K6 ["HttpError"]
  LOADK R15 K7 ["PackageError"]
  CALL R12 3 1
  MOVE R10 R12
  JUMP [+6]
  GETUPVAL R12 0
  MOVE R13 R3
  LOADK R14 K6 ["HttpError"]
  MOVE R15 R9
  CALL R12 3 1
  MOVE R10 R12
  JUMPIF R10 [+11]
  GETIMPORT R12 K10 [string.format]
  LOADK R13 K11 ["%s %s"]
  LOADK R16 K6 ["HttpError"]
  LOADK R17 K12 ["UnknownStatusCode"]
  NAMECALL R14 R3 K13 ["getText"]
  CALL R14 3 1
  MOVE R15 R9
  CALL R12 3 1
  MOVE R10 R12
  GETIMPORT R12 K10 [string.format]
  LOADK R13 K14 ["%s: %s"]
  MOVE R14 R8
  MOVE R15 R10
  CALL R12 3 1
  MOVE R11 R12
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K23 [{"LayoutOrder", "Text", "TextSize", "TextXAlignment", "AutomaticSize", "Size", "HorizontalAlignment"}]
  LENGTH R16 R4
  ADDK R15 R16 K24 [1]
  SETTABLEKS R15 R14 K16 ["LayoutOrder"]
  SETTABLEKS R11 R14 K17 ["Text"]
  GETTABLEKS R15 R1 K25 ["SubtextSize"]
  SETTABLEKS R15 R14 K18 ["TextSize"]
  GETIMPORT R15 K28 [Enum.TextXAlignment.Center]
  SETTABLEKS R15 R14 K19 ["TextXAlignment"]
  GETIMPORT R15 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K20 ["AutomaticSize"]
  GETIMPORT R15 K33 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["Size"]
  GETUPVAL R16 3
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  LOADNIL R15
  JUMP [+2]
  GETIMPORT R15 K34 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R15 R14 K22 ["HorizontalAlignment"]
  CALL R12 2 1
  FASTCALL2 TABLE_INSERT R4 R12 [+5]
  MOVE R14 R4
  MOVE R15 R12
  GETIMPORT R13 K37 [table.insert]
  CALL R13 2 0
  FORGLOOP R5 2 [-91]
  RETURN R4 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R3 K3 ["UploadWidget"]
  GETTABLEKS R5 R1 K4 ["ErrorMap"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["isEmpty"]
  MOVE R8 R5
  CALL R7 1 1
  JUMPIFNOT R7 [+6]
  LOADK R8 K6 ["Upload"]
  LOADK R9 K7 ["FailureDescriptionNoError"]
  NAMECALL R6 R2 K8 ["getText"]
  CALL R6 3 1
  JUMPIF R6 [+5]
  LOADK R8 K6 ["Upload"]
  LOADK R9 K9 ["FailureDescription"]
  NAMECALL R6 R2 K8 ["getText"]
  CALL R6 3 1
  GETUPVAL R7 1
  MOVE R8 R5
  MOVE R9 R4
  GETTABLEKS R10 R1 K10 ["AssetImportSession"]
  MOVE R11 R2
  CALL R7 4 1
  GETTABLEKS R10 R4 K12 ["TextSize"]
  GETTABLEKS R11 R4 K13 ["SubtextSize"]
  ADD R9 R10 R11
  ADDK R8 R9 K11 [10]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K14 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K18 [{"LayoutOrder", "Layout", "VerticalAlignment"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K15 ["LayoutOrder"]
  GETIMPORT R12 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K16 ["Layout"]
  GETIMPORT R12 K24 [Enum.VerticalAlignment.Top]
  SETTABLEKS R12 R11 K17 ["VerticalAlignment"]
  DUPTABLE R12 K26 [{"Title", "ErrorMap"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K14 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K28 [{"Layout", "VerticalAlignment", "Size", "LayoutOrder"}]
  GETIMPORT R16 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K16 ["Layout"]
  GETIMPORT R16 K24 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K17 ["VerticalAlignment"]
  GETIMPORT R16 K31 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  MOVE R20 R8
  CALL R16 4 1
  SETTABLEKS R16 R15 K27 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K15 ["LayoutOrder"]
  DUPTABLE R16 K34 [{"Text", "Description"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K14 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K37 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextColor"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K15 ["LayoutOrder"]
  GETTABLEKS R20 R4 K38 ["TextLabelSize"]
  SETTABLEKS R20 R19 K27 ["Size"]
  LOADK R22 K6 ["Upload"]
  LOADK R23 K39 ["Failure"]
  NAMECALL R20 R2 K8 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K32 ["Text"]
  GETTABLEKS R20 R4 K12 ["TextSize"]
  SETTABLEKS R20 R19 K12 ["TextSize"]
  GETTABLEKS R20 R4 K40 ["TextAlignment"]
  SETTABLEKS R20 R19 K35 ["TextXAlignment"]
  GETTABLEKS R20 R4 K41 ["FailureColor"]
  SETTABLEKS R20 R19 K36 ["TextColor"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["Text"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K14 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K42 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K15 ["LayoutOrder"]
  GETTABLEKS R20 R4 K38 ["TextLabelSize"]
  SETTABLEKS R20 R19 K27 ["Size"]
  SETTABLEKS R6 R19 K32 ["Text"]
  GETTABLEKS R20 R4 K13 ["SubtextSize"]
  SETTABLEKS R20 R19 K12 ["TextSize"]
  GETTABLEKS R20 R4 K40 ["TextAlignment"]
  SETTABLEKS R20 R19 K35 ["TextXAlignment"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["Description"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K25 ["Title"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K14 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K44 [{"Layout", "LayoutOrder", "Size", "HorizontalAlignment"}]
  GETIMPORT R16 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K16 ["Layout"]
  LOADN R16 2
  SETTABLEKS R16 R15 K15 ["LayoutOrder"]
  GETIMPORT R16 K31 [UDim2.new]
  LOADN R17 1
  LOADN R18 216
  LOADN R19 1
  MINUS R20 R8
  CALL R16 4 1
  SETTABLEKS R16 R15 K27 ["Size"]
  GETIMPORT R16 K46 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K43 ["HorizontalAlignment"]
  DUPTABLE R16 K48 [{"ScrollingFrame"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K14 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K53 [{"LayoutOrder", "Size", "CanvasSize", "OnCanvasResize", "ScrollingDirection", "AutomaticCanvasSize", "Layout"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K15 ["LayoutOrder"]
  GETIMPORT R20 K31 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K27 ["Size"]
  GETIMPORT R20 K55 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K49 ["CanvasSize"]
  GETTABLEKS R20 R0 K56 ["onContentResize"]
  SETTABLEKS R20 R19 K50 ["OnCanvasResize"]
  GETIMPORT R20 K58 [Enum.ScrollingDirection.Y]
  SETTABLEKS R20 R19 K51 ["ScrollingDirection"]
  GETIMPORT R20 K60 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K52 ["AutomaticCanvasSize"]
  GETIMPORT R20 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K16 ["Layout"]
  DUPTABLE R20 K62 [{"Pane"}]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K14 ["createElement"]
  GETUPVAL R22 3
  DUPTABLE R23 K63 [{"Size", "Layout", "VerticalAlignment", "LayoutOrder", "HorizontalAlignment"}]
  GETTABLEKS R24 R4 K38 ["TextLabelSize"]
  SETTABLEKS R24 R23 K27 ["Size"]
  GETIMPORT R24 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K16 ["Layout"]
  GETIMPORT R24 K24 [Enum.VerticalAlignment.Top]
  SETTABLEKS R24 R23 K17 ["VerticalAlignment"]
  LOADN R24 1
  SETTABLEKS R24 R23 K15 ["LayoutOrder"]
  GETIMPORT R24 K46 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R24 R23 K43 ["HorizontalAlignment"]
  MOVE R24 R7
  CALL R21 3 1
  SETTABLEKS R21 R20 K61 ["Pane"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K47 ["ScrollingFrame"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K4 ["ErrorMap"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_2:
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_3:
  DUPTABLE R1 K1 [{"AssetImportSession"}]
  GETTABLEKS R2 R0 K2 ["assetImportSession"]
  SETTABLEKS R2 R1 K0 ["AssetImportSession"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Utility"]
  GETTABLEKS R6 R7 K12 ["GetLocalizedString"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K13 ["ContextServices"]
  GETTABLEKS R7 R6 K14 ["withContext"]
  GETTABLEKS R8 R6 K15 ["Localization"]
  GETTABLEKS R10 R1 K16 ["Style"]
  GETTABLEKS R9 R10 K17 ["Stylizer"]
  GETTABLEKS R10 R1 K18 ["UI"]
  GETTABLEKS R11 R10 K19 ["Pane"]
  GETTABLEKS R12 R10 K20 ["ScrollingFrame"]
  GETTABLEKS R13 R10 K21 ["TextLabel"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K22 ["Flags"]
  GETTABLEKS R15 R16 K23 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K24 ["PureComponent"]
  LOADK R17 K25 ["FailureWidget"]
  NAMECALL R15 R15 K26 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K27 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R14
  DUPCLOSURE R17 K28 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R17 R15 K29 ["render"]
  MOVE R17 R7
  DUPTABLE R18 K30 [{"Localization", "Stylizer"}]
  SETTABLEKS R8 R18 K15 ["Localization"]
  SETTABLEKS R9 R18 K17 ["Stylizer"]
  CALL R17 1 1
  MOVE R18 R15
  CALL R17 1 1
  MOVE R15 R17
  DUPCLOSURE R17 K31 [PROTO_2]
  DUPCLOSURE R18 K32 [PROTO_3]
  GETTABLEKS R19 R3 K33 ["connect"]
  MOVE R20 R18
  MOVE R21 R17
  CALL R19 2 1
  MOVE R20 R15
  CALL R19 1 -1
  RETURN R19 -1
