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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  JUMPIFNOTEQKS R0 K1 ["Cancel"] [+24]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R1 K2 ["FileController"]
  GETTABLEKS R4 R1 K3 ["AssetImportSession"]
  NAMECALL R2 R2 K4 ["onSessionCanceled"]
  CALL R2 2 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K5 ["OnClose"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["AssetImportSession"]
  CALL R2 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K6 ["Import"] [+36]
  GETTABLEKS R3 R1 K7 ["HasInvalidPackageId"]
  NOT R2 R3
  JUMPIFNOT R2 [+8]
  LOADB R2 0
  GETTABLEKS R3 R1 K8 ["ImportDataCheckedCount"]
  JUMPIFEQKN R3 K9 [0] [+4]
  GETTABLEKS R3 R1 K10 ["ErrorNodeChecked"]
  NOT R2 R3
  JUMPIFNOT R2 [+22]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+8]
  GETTABLEKS R3 R1 K2 ["FileController"]
  GETTABLEKS R5 R1 K3 ["AssetImportSession"]
  NAMECALL R3 R3 K11 ["onImport"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K12 ["OnImport"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["AssetImportSession"]
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["onButtonPressed"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["FileController"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["AssetImportSession"]
  NAMECALL R0 R0 K2 ["onSessionCanceled"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["OnClose"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["props"]
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
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R1 K17 ["ShowPreview"]
  JUMP [+1]
  LOADB R7 1
  SETTABLEKS R7 R6 K7 ["Enabled"]
  GETIMPORT R7 K20 [Vector2.new]
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
  DUPTABLE R8 K23 [{"Key", "Text"}]
  LOADK R9 K24 ["Cancel"]
  SETTABLEKS R9 R8 K21 ["Key"]
  LOADK R11 K25 ["Plugin"]
  LOADK R12 K24 ["Cancel"]
  NAMECALL R9 R2 K26 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K22 ["Text"]
  DUPTABLE R9 K28 [{"Key", "Text", "Style", "StyleModifier"}]
  LOADK R10 K29 ["Import"]
  SETTABLEKS R10 R9 K21 ["Key"]
  LOADK R12 K25 ["Plugin"]
  LOADK R13 K29 ["Import"]
  NAMECALL R10 R2 K26 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K22 ["Text"]
  LOADK R10 K30 ["RoundPrimary"]
  SETTABLEKS R10 R9 K15 ["Style"]
  JUMPIF R3 [+4]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K31 ["Disabled"]
  JUMPIF R10 [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K27 ["StyleModifier"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K12 ["Buttons"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K13 ["OnClose"]
  GETTABLEKS R7 R0 K32 ["onButtonPressed"]
  SETTABLEKS R7 R6 K14 ["OnButtonPressed"]
  LOADK R7 K33 ["FullBleed"]
  SETTABLEKS R7 R6 K15 ["Style"]
  DUPTABLE R7 K37 [{"Layout", "AssetImporterUI", "Separator"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  LOADK R9 K38 ["UIListLayout"]
  DUPTABLE R10 K40 [{"FillDirection"}]
  GETIMPORT R11 K43 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K39 ["FillDirection"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K34 ["Layout"]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+3]
  GETTABLEKS R9 R1 K17 ["ShowPreview"]
  JUMPIFNOT R9 [+10]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K45 [{"LayoutOrder"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K44 ["LayoutOrder"]
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K35 ["AssetImporterUI"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K47 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R11 K49 [Enum.DominantAxis.Width]
  SETTABLEKS R11 R10 K46 ["DominantAxis"]
  LOADN R11 2
  SETTABLEKS R11 R10 K44 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K36 ["Separator"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+43]
  DUPTABLE R1 K6 [{"ImportTree", "AssetImportSession", "ImportDataCheckedCount", "ErrorNodeChecked", "HasInvalidPackageId", "ShowPreview"}]
  GETTABLEKS R3 R0 K7 ["Preview"]
  GETTABLEKS R2 R3 K8 ["importTree"]
  SETTABLEKS R2 R1 K0 ["ImportTree"]
  GETTABLEKS R3 R0 K7 ["Preview"]
  GETTABLEKS R2 R3 K9 ["assetImportSession"]
  SETTABLEKS R2 R1 K1 ["AssetImportSession"]
  GETTABLEKS R3 R0 K7 ["Preview"]
  GETTABLEKS R2 R3 K10 ["importDataCheckedCount"]
  SETTABLEKS R2 R1 K2 ["ImportDataCheckedCount"]
  GETTABLEKS R3 R0 K7 ["Preview"]
  GETTABLEKS R2 R3 K11 ["errorNodeChecked"]
  SETTABLEKS R2 R1 K3 ["ErrorNodeChecked"]
  GETTABLEKS R3 R0 K7 ["Preview"]
  GETTABLEKS R2 R3 K12 ["hasInvalidPackageId"]
  SETTABLEKS R2 R1 K4 ["HasInvalidPackageId"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K13 ["Dialogs"]
  GETTABLEKS R2 R3 K14 ["showPreview"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K5 ["ShowPreview"]
  RETURN R1 1
  DUPTABLE R1 K15 [{"ImportTree", "AssetImportSession", "ImportDataCheckedCount", "ErrorNodeChecked", "HasInvalidPackageId"}]
  GETTABLEKS R2 R0 K8 ["importTree"]
  SETTABLEKS R2 R1 K0 ["ImportTree"]
  GETTABLEKS R2 R0 K9 ["assetImportSession"]
  SETTABLEKS R2 R1 K1 ["AssetImportSession"]
  GETTABLEKS R2 R0 K10 ["importDataCheckedCount"]
  SETTABLEKS R2 R1 K2 ["ImportDataCheckedCount"]
  GETTABLEKS R2 R0 K11 ["errorNodeChecked"]
  SETTABLEKS R2 R1 K3 ["ErrorNodeChecked"]
  GETTABLEKS R2 R0 K12 ["hasInvalidPackageId"]
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
  GETTABLEKS R16 R17 K23 ["Controllers"]
  GETTABLEKS R15 R16 K24 ["FileController"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K20 ["Src"]
  GETTABLEKS R17 R18 K25 ["Flags"]
  GETTABLEKS R16 R17 K26 ["getFFlagAssetImportRefactorReducer"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K20 ["Src"]
  GETTABLEKS R18 R19 K25 ["Flags"]
  GETTABLEKS R17 R18 K27 ["getFFlagAssetImportRefactorFileOpen"]
  CALL R16 1 1
  GETTABLEKS R17 R1 K28 ["PureComponent"]
  LOADK R19 K29 ["MeshImportDialog"]
  NAMECALL R17 R17 K30 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K31 [PROTO_0]
  DUPCLOSURE R19 K32 [PROTO_2]
  CAPTURE VAL R16
  SETTABLEKS R19 R17 K33 ["init"]
  DUPCLOSURE R19 K34 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R11
  SETTABLEKS R19 R17 K35 ["render"]
  MOVE R19 R5
  DUPTABLE R20 K36 [{"FileController", "Localization", "Stylizer"}]
  MOVE R22 R16
  CALL R22 0 1
  JUMPIFNOT R22 [+2]
  MOVE R21 R14
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K24 ["FileController"]
  SETTABLEKS R6 R20 K12 ["Localization"]
  SETTABLEKS R7 R20 K14 ["Stylizer"]
  CALL R19 1 1
  MOVE R20 R17
  CALL R19 1 1
  MOVE R17 R19
  DUPCLOSURE R19 K37 [PROTO_5]
  CAPTURE VAL R15
  CAPTURE VAL R16
  GETTABLEKS R20 R2 K38 ["connect"]
  MOVE R21 R19
  LOADNIL R22
  CALL R20 2 1
  MOVE R21 R17
  CALL R20 1 -1
  RETURN R20 -1
