PROTO_0:
  GETTABLEKS R1 R0 K0 ["Localization"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createFragment"]
  DUPTABLE R3 K4 [{"Image", "Label"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  LOADK R5 K6 ["ImageLabel"]
  DUPTABLE R6 K10 [{"BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K7 ["BackgroundTransparency"]
  LOADK R7 K11 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
  SETTABLEKS R7 R6 K2 ["Image"]
  LOADN R7 1
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  GETIMPORT R7 K14 [UDim2.fromOffset]
  LOADN R8 32
  LOADN R9 32
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["Size"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Image"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K18 [{"AutomaticSize", "LayoutOrder", "Text", "TextWrapped"}]
  GETIMPORT R7 K21 [Enum.AutomaticSize.XY]
  SETTABLEKS R7 R6 K15 ["AutomaticSize"]
  LOADN R7 2
  SETTABLEKS R7 R6 K8 ["LayoutOrder"]
  LOADK R9 K22 ["Plugin"]
  LOADK R10 K23 ["ImportConfiguration"]
  NAMECALL R7 R1 K24 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K16 ["Text"]
  LOADB R7 1
  SETTABLEKS R7 R6 K17 ["TextWrapped"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["Label"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["Localization"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createFragment"]
  DUPTABLE R3 K3 [{"PropertyList"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K7 [{"Instance", "AssetImportSession", "Localization"}]
  GETTABLEKS R7 R0 K8 ["ImportItem"]
  SETTABLEKS R7 R6 K5 ["Instance"]
  GETTABLEKS R7 R0 K6 ["AssetImportSession"]
  SETTABLEKS R7 R6 K6 ["AssetImportSession"]
  SETTABLEKS R1 R6 K0 ["Localization"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["PropertyList"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["ImportItem"]
  JUMPIFNOT R4 [+15]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K5 [{"ImportItem", "AssetImportSession"}]
  GETTABLEKS R6 R1 K2 ["ImportItem"]
  SETTABLEKS R6 R5 K2 ["ImportItem"]
  GETTABLEKS R6 R1 K4 ["AssetImportSession"]
  SETTABLEKS R6 R5 K4 ["AssetImportSession"]
  CALL R3 2 1
  RETURN R3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K6 [{"Localization"}]
  SETTABLEKS R2 R5 K1 ["Localization"]
  CALL R3 2 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["withContext"]
  GETTABLEKS R5 R3 K11 ["Localization"]
  GETTABLEKS R7 R2 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["Stylizer"]
  GETTABLEKS R7 R2 K14 ["UI"]
  GETTABLEKS R8 R7 K15 ["TextLabel"]
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K16 ["Parent"]
  GETTABLEKS R10 R11 K17 ["PropertyListView"]
  CALL R9 1 1
  GETTABLEKS R10 R1 K18 ["PureComponent"]
  LOADK R12 K19 ["ImportConfiguration"]
  NAMECALL R10 R10 K20 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K21 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R8
  DUPCLOSURE R12 K22 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R9
  DUPCLOSURE R13 K23 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R13 R10 K24 ["render"]
  MOVE R13 R4
  DUPTABLE R14 K25 [{"Localization", "Stylizer"}]
  SETTABLEKS R5 R14 K11 ["Localization"]
  SETTABLEKS R6 R14 K13 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R10
  CALL R13 1 1
  MOVE R10 R13
  RETURN R10 1
