PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R3 K3 ["UploadWidget"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K9 [{"LayoutOrder", "Layout", "VerticalAlignment", "Size"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K5 ["LayoutOrder"]
  GETIMPORT R8 K13 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K6 ["Layout"]
  GETIMPORT R8 K15 [Enum.VerticalAlignment.Top]
  SETTABLEKS R8 R7 K7 ["VerticalAlignment"]
  GETIMPORT R8 K18 [UDim2.new]
  LOADN R9 0
  GETTABLEKS R10 R4 K19 ["Width"]
  LOADN R11 0
  GETTABLEKS R12 R4 K20 ["Height"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K8 ["Size"]
  DUPTABLE R8 K23 [{"Title", "Description"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K28 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextColor"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K5 ["LayoutOrder"]
  GETTABLEKS R12 R4 K29 ["TextLabelSize"]
  SETTABLEKS R12 R11 K8 ["Size"]
  LOADK R14 K30 ["Upload"]
  LOADK R15 K31 ["Success"]
  NAMECALL R12 R2 K32 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K24 ["Text"]
  GETTABLEKS R12 R4 K25 ["TextSize"]
  SETTABLEKS R12 R11 K25 ["TextSize"]
  GETTABLEKS R12 R4 K33 ["TextAlignment"]
  SETTABLEKS R12 R11 K26 ["TextXAlignment"]
  GETTABLEKS R12 R4 K34 ["SuccessColor"]
  SETTABLEKS R12 R11 K27 ["TextColor"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K21 ["Title"]
  GETTABLEKS R10 R1 K35 ["AddedToInventory"]
  JUMPIFNOT R10 [+29]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K36 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment"}]
  LOADN R12 2
  SETTABLEKS R12 R11 K5 ["LayoutOrder"]
  GETTABLEKS R12 R4 K29 ["TextLabelSize"]
  SETTABLEKS R12 R11 K8 ["Size"]
  LOADK R14 K30 ["Upload"]
  LOADK R15 K37 ["SuccessDescription"]
  NAMECALL R12 R2 K32 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K24 ["Text"]
  GETTABLEKS R12 R4 K38 ["SubtextSize"]
  SETTABLEKS R12 R11 K25 ["TextSize"]
  GETTABLEKS R12 R4 K33 ["TextAlignment"]
  SETTABLEKS R12 R11 K26 ["TextXAlignment"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K22 ["Description"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R3 K11 ["Localization"]
  GETTABLEKS R7 R1 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["Stylizer"]
  GETTABLEKS R7 R1 K14 ["UI"]
  GETTABLEKS R8 R7 K15 ["Pane"]
  GETTABLEKS R9 R7 K16 ["TextLabel"]
  GETTABLEKS R10 R2 K17 ["PureComponent"]
  LOADK R12 K18 ["SuccessWidget"]
  NAMECALL R10 R10 K19 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K20 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K21 ["render"]
  MOVE R11 R4
  DUPTABLE R12 K22 [{"Localization", "Stylizer"}]
  SETTABLEKS R5 R12 K11 ["Localization"]
  SETTABLEKS R6 R12 K13 ["Stylizer"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
