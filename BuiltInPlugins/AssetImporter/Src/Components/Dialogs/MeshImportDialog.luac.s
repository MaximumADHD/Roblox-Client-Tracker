PROTO_0:
  GETTABLEKS R2 R0 K0 ["HasInvalidPackageId"]
  NOT R1 R2
  JUMPIFNOT R1 [+8]
  LOADB R1 0
  GETTABLEKS R2 R0 K1 ["ImportDataCheckedCount"]
  JUMPIFEQKN R2 K2 [0] [+4]
  GETTABLEKS R2 R0 K3 ["ErrorNodeChecked"]
  NOT R1 R2
  RETURN R1 1

PROTO_1:
  JUMPIFNOTEQKS R0 K0 ["Cancel"] [+13]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["OnClose"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K3 ["AssetImportSession"]
  CALL R1 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K4 ["Import"] [+28]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R3 R1 K5 ["HasInvalidPackageId"]
  NOT R2 R3
  JUMPIFNOT R2 [+8]
  LOADB R2 0
  GETTABLEKS R3 R1 K6 ["ImportDataCheckedCount"]
  JUMPIFEQKN R3 K7 [0] [+4]
  GETTABLEKS R3 R1 K8 ["ErrorNodeChecked"]
  NOT R2 R3
  JUMPIFNOT R2 [+11]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K9 ["OnImport"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K3 ["AssetImportSession"]
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onButtonPressed"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClose"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["AssetImportSession"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["HasInvalidPackageId"]
  NOT R3 R4
  JUMPIFNOT R3 [+8]
  LOADB R3 0
  GETTABLEKS R4 R1 K3 ["ImportDataCheckedCount"]
  JUMPIFEQKN R4 K4 [0] [+4]
  GETTABLEKS R4 R1 K5 ["ErrorNodeChecked"]
  NOT R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K16 [{"Enabled", "MinContentSize", "Modal", "Resizable", "Title", "Buttons", "OnClose", "OnButtonPressed", "Style"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K7 ["Enabled"]
  GETIMPORT R7 K19 [Vector2.new]
  LOADN R8 32
  LOADN R9 138
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["MinContentSize"]
  LOADB R7 0
  SETTABLEKS R7 R6 K9 ["Modal"]
  LOADB R7 1
  SETTABLEKS R7 R6 K10 ["Resizable"]
  GETTABLEKS R7 R1 K11 ["Title"]
  SETTABLEKS R7 R6 K11 ["Title"]
  NEWTABLE R7 0 2
  DUPTABLE R8 K22 [{"Key", "Text"}]
  LOADK R9 K23 ["Cancel"]
  SETTABLEKS R9 R8 K20 ["Key"]
  LOADK R11 K24 ["Plugin"]
  LOADK R12 K23 ["Cancel"]
  NAMECALL R9 R2 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K21 ["Text"]
  DUPTABLE R9 K27 [{"Key", "Text", "Style", "StyleModifier"}]
  LOADK R10 K28 ["Import"]
  SETTABLEKS R10 R9 K20 ["Key"]
  LOADK R12 K24 ["Plugin"]
  LOADK R13 K28 ["Import"]
  NAMECALL R10 R2 K25 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K21 ["Text"]
  LOADK R10 K29 ["RoundPrimary"]
  SETTABLEKS R10 R9 K15 ["Style"]
  JUMPIF R3 [+4]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K30 ["Disabled"]
  JUMPIF R10 [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K26 ["StyleModifier"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K12 ["Buttons"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K13 ["OnClose"]
  GETTABLEKS R7 R0 K31 ["onButtonPressed"]
  SETTABLEKS R7 R6 K14 ["OnButtonPressed"]
  LOADK R7 K32 ["FullBleed"]
  SETTABLEKS R7 R6 K15 ["Style"]
  DUPTABLE R7 K36 [{"Layout", "AssetImporterUI", "Separator"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  LOADK R9 K37 ["UIListLayout"]
  DUPTABLE R10 K39 [{"FillDirection"}]
  GETIMPORT R11 K42 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K38 ["FillDirection"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K33 ["Layout"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K44 [{"LayoutOrder"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K43 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K34 ["AssetImporterUI"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K46 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R11 K48 [Enum.DominantAxis.Width]
  SETTABLEKS R11 R10 K45 ["DominantAxis"]
  LOADN R11 2
  SETTABLEKS R11 R10 K43 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K35 ["Separator"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+32]
  DUPTABLE R1 K5 [{"ImportTree", "AssetImportSession", "ImportDataCheckedCount", "ErrorNodeChecked", "HasInvalidPackageId"}]
  GETTABLEKS R3 R0 K6 ["Preview"]
  GETTABLEKS R2 R3 K7 ["importTree"]
  SETTABLEKS R2 R1 K0 ["ImportTree"]
  GETTABLEKS R3 R0 K6 ["Preview"]
  GETTABLEKS R2 R3 K8 ["assetImportSession"]
  SETTABLEKS R2 R1 K1 ["AssetImportSession"]
  GETTABLEKS R3 R0 K6 ["Preview"]
  GETTABLEKS R2 R3 K9 ["importDataCheckedCount"]
  SETTABLEKS R2 R1 K2 ["ImportDataCheckedCount"]
  GETTABLEKS R3 R0 K6 ["Preview"]
  GETTABLEKS R2 R3 K10 ["errorNodeChecked"]
  SETTABLEKS R2 R1 K3 ["ErrorNodeChecked"]
  GETTABLEKS R3 R0 K6 ["Preview"]
  GETTABLEKS R2 R3 K11 ["hasInvalidPackageId"]
  SETTABLEKS R2 R1 K4 ["HasInvalidPackageId"]
  RETURN R1 1
  DUPTABLE R1 K5 [{"ImportTree", "AssetImportSession", "ImportDataCheckedCount", "ErrorNodeChecked", "HasInvalidPackageId"}]
  GETTABLEKS R2 R0 K7 ["importTree"]
  SETTABLEKS R2 R1 K0 ["ImportTree"]
  GETTABLEKS R2 R0 K8 ["assetImportSession"]
  SETTABLEKS R2 R1 K1 ["AssetImportSession"]
  GETTABLEKS R2 R0 K9 ["importDataCheckedCount"]
  SETTABLEKS R2 R1 K2 ["ImportDataCheckedCount"]
  GETTABLEKS R2 R0 K10 ["errorNodeChecked"]
  SETTABLEKS R2 R1 K3 ["ErrorNodeChecked"]
  GETTABLEKS R2 R0 K11 ["hasInvalidPackageId"]
  SETTABLEKS R2 R1 K4 ["HasInvalidPackageId"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Localization"]
  GETTABLEKS R8 R3 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R8 R3 K15 ["Util"]
  GETTABLEKS R9 R8 K16 ["StyleModifier"]
  GETTABLEKS R10 R3 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["Separator"]
  GETTABLEKS R12 R10 K19 ["StyledDialog"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Components"]
  GETTABLEKS R14 R15 K22 ["AssetImporterUI"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K23 ["Flags"]
  GETTABLEKS R15 R16 K24 ["getFFlagAssetImportRefactorReducer"]
  CALL R14 1 1
  GETTABLEKS R15 R1 K25 ["PureComponent"]
  LOADK R17 K26 ["MeshImportDialog"]
  NAMECALL R15 R15 K27 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K28 [PROTO_0]
  DUPCLOSURE R17 K29 [PROTO_2]
  SETTABLEKS R17 R15 K30 ["init"]
  DUPCLOSURE R17 K31 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R17 R15 K32 ["render"]
  MOVE R17 R5
  DUPTABLE R18 K33 [{"Localization", "Stylizer"}]
  SETTABLEKS R6 R18 K12 ["Localization"]
  SETTABLEKS R7 R18 K14 ["Stylizer"]
  CALL R17 1 1
  MOVE R18 R15
  CALL R17 1 1
  MOVE R15 R17
  DUPCLOSURE R17 K34 [PROTO_5]
  CAPTURE VAL R14
  GETTABLEKS R18 R2 K35 ["connect"]
  MOVE R19 R17
  LOADNIL R20
  CALL R18 2 1
  MOVE R19 R15
  CALL R18 1 -1
  RETURN R18 -1
