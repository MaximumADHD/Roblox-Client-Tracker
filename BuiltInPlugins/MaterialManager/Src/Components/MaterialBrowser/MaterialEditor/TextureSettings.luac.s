PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["TextureSettings"]
  GETTABLEKS R2 R0 K2 ["dispatchSetExpandedPane"]
  MOVE R3 R1
  GETTABLEKS R5 R0 K3 ["ExpandedPane"]
  NOT R4 R5
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["onExpandedChanged"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["TextureSettings"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R1 K4 ["PBRMaterial"]
  JUMPIF R4 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  GETUPVAL R5 1
  CALL R4 1 -1
  RETURN R4 -1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["new"]
  CALL R4 0 1
  DUPTABLE R5 K11 [{"ImportColorMap", "ImportMetalnessMap", "ImportNormalMap", "ImportRoughnessMap"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K19 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
  NAMECALL R9 R4 K20 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  GETTABLEKS R9 R2 K13 ["LabelColumnWidth"]
  SETTABLEKS R9 R8 K13 ["LabelColumnWidth"]
  GETTABLEKS R9 R2 K14 ["LabelWidth"]
  SETTABLEKS R9 R8 K14 ["LabelWidth"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K21 ["ColorMap"]
  SETTABLEKS R9 R8 K15 ["MapType"]
  LOADK R11 K22 ["Import"]
  LOADK R12 K23 ["ColorMapPreview"]
  NAMECALL R9 R3 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["PreviewTitle"]
  LOADK R11 K25 ["CreateDialog"]
  LOADK R12 K7 ["ImportColorMap"]
  NAMECALL R9 R3 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["Text"]
  GETTABLEKS R9 R1 K4 ["PBRMaterial"]
  SETTABLEKS R9 R8 K4 ["PBRMaterial"]
  GETTABLEKS R9 R2 K18 ["ColumnWidth"]
  SETTABLEKS R9 R8 K18 ["ColumnWidth"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["ImportColorMap"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K19 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
  NAMECALL R9 R4 K20 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  GETTABLEKS R9 R2 K13 ["LabelColumnWidth"]
  SETTABLEKS R9 R8 K13 ["LabelColumnWidth"]
  GETTABLEKS R9 R2 K14 ["LabelWidth"]
  SETTABLEKS R9 R8 K14 ["LabelWidth"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K26 ["MetalnessMap"]
  SETTABLEKS R9 R8 K15 ["MapType"]
  LOADK R11 K22 ["Import"]
  LOADK R12 K27 ["MetalnessMapPreview"]
  NAMECALL R9 R3 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["PreviewTitle"]
  LOADK R11 K25 ["CreateDialog"]
  LOADK R12 K8 ["ImportMetalnessMap"]
  NAMECALL R9 R3 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["Text"]
  GETTABLEKS R9 R1 K4 ["PBRMaterial"]
  SETTABLEKS R9 R8 K4 ["PBRMaterial"]
  GETTABLEKS R9 R2 K18 ["ColumnWidth"]
  SETTABLEKS R9 R8 K18 ["ColumnWidth"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["ImportMetalnessMap"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K19 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
  NAMECALL R9 R4 K20 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  GETTABLEKS R9 R2 K13 ["LabelColumnWidth"]
  SETTABLEKS R9 R8 K13 ["LabelColumnWidth"]
  GETTABLEKS R9 R2 K14 ["LabelWidth"]
  SETTABLEKS R9 R8 K14 ["LabelWidth"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K28 ["NormalMap"]
  SETTABLEKS R9 R8 K15 ["MapType"]
  LOADK R11 K22 ["Import"]
  LOADK R12 K29 ["NormalMapPreview"]
  NAMECALL R9 R3 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["PreviewTitle"]
  LOADK R11 K25 ["CreateDialog"]
  LOADK R12 K9 ["ImportNormalMap"]
  NAMECALL R9 R3 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["Text"]
  GETTABLEKS R9 R1 K4 ["PBRMaterial"]
  SETTABLEKS R9 R8 K4 ["PBRMaterial"]
  GETTABLEKS R9 R2 K18 ["ColumnWidth"]
  SETTABLEKS R9 R8 K18 ["ColumnWidth"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["ImportNormalMap"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K19 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
  NAMECALL R9 R4 K20 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  GETTABLEKS R9 R2 K13 ["LabelColumnWidth"]
  SETTABLEKS R9 R8 K13 ["LabelColumnWidth"]
  GETTABLEKS R9 R2 K14 ["LabelWidth"]
  SETTABLEKS R9 R8 K14 ["LabelWidth"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K30 ["RoughnessMap"]
  SETTABLEKS R9 R8 K15 ["MapType"]
  LOADK R11 K22 ["Import"]
  LOADK R12 K31 ["RoughnessMapPreview"]
  NAMECALL R9 R3 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["PreviewTitle"]
  LOADK R11 K25 ["CreateDialog"]
  LOADK R12 K10 ["ImportRoughnessMap"]
  NAMECALL R9 R3 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["Text"]
  GETTABLEKS R9 R1 K4 ["PBRMaterial"]
  SETTABLEKS R9 R8 K4 ["PBRMaterial"]
  GETTABLEKS R9 R2 K18 ["ColumnWidth"]
  SETTABLEKS R9 R8 K18 ["ColumnWidth"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["ImportRoughnessMap"]
  GETTABLEKS R6 R1 K32 ["Expandable"]
  JUMPIFNOT R6 [+39]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 5
  DUPTABLE R8 K38 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
  GETTABLEKS R9 R1 K12 ["LayoutOrder"]
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  GETTABLEKS R9 R2 K33 ["ContentPadding"]
  SETTABLEKS R9 R8 K33 ["ContentPadding"]
  GETTABLEKS R9 R2 K39 ["ItemSpacing"]
  SETTABLEKS R9 R8 K34 ["ContentSpacing"]
  LOADK R11 K40 ["MaterialTextures"]
  LOADK R12 K41 ["TextureMaps"]
  NAMECALL R9 R3 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["Text"]
  GETTABLEKS R9 R2 K42 ["CustomExpandablePane"]
  SETTABLEKS R9 R8 K35 ["Style"]
  GETTABLEKS R9 R1 K43 ["ExpandedPane"]
  SETTABLEKS R9 R8 K36 ["Expanded"]
  GETTABLEKS R9 R0 K44 ["onExpandedChanged"]
  SETTABLEKS R9 R8 K37 ["OnExpandedChanged"]
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K49 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing", "HorizontalAlignment"}]
  GETIMPORT R9 K52 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K45 ["AutomaticSize"]
  GETTABLEKS R9 R1 K12 ["LayoutOrder"]
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  GETIMPORT R9 K55 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K46 ["Layout"]
  GETTABLEKS R9 R2 K39 ["ItemSpacing"]
  SETTABLEKS R9 R8 K47 ["Spacing"]
  GETIMPORT R9 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K48 ["HorizontalAlignment"]
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1

PROTO_3:
  DUPTABLE R1 K1 [{"ExpandedPane"}]
  GETTABLEKS R4 R0 K2 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K0 ["ExpandedPane"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["TextureSettings"]
  GETTABLE R2 R3 R4
  SETTABLEKS R2 R1 K0 ["ExpandedPane"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"dispatchSetExpandedPane"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchSetExpandedPane"]
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
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["LayoutOrderIterator"]
  GETTABLEKS R6 R3 K11 ["Style"]
  GETTABLEKS R5 R6 K12 ["Stylizer"]
  GETTABLEKS R6 R3 K13 ["ContextServices"]
  GETTABLEKS R7 R6 K14 ["withContext"]
  GETTABLEKS R8 R6 K15 ["Analytics"]
  GETTABLEKS R9 R6 K16 ["Localization"]
  GETTABLEKS R10 R3 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["Pane"]
  GETTABLEKS R12 R10 K19 ["ExpandablePane"]
  GETTABLEKS R14 R0 K20 ["Src"]
  GETTABLEKS R13 R14 K21 ["Actions"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R13 K22 ["SetExpandedPane"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K20 ["Src"]
  GETTABLEKS R17 R18 K23 ["Reducers"]
  GETTABLEKS R16 R17 K24 ["MainReducer"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R21 R0 K20 ["Src"]
  GETTABLEKS R20 R21 K25 ["Components"]
  GETTABLEKS R19 R20 K26 ["MaterialBrowser"]
  GETTABLEKS R18 R19 K27 ["MaterialEditor"]
  GETTABLEKS R17 R18 K28 ["TextureMapSelector"]
  CALL R16 1 1
  GETTABLEKS R19 R0 K20 ["Src"]
  GETTABLEKS R18 R19 K29 ["Resources"]
  GETTABLEKS R17 R18 K30 ["Constants"]
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R17 K31 ["getSettingsNames"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R17 K32 ["getTextureMapNames"]
  CALL R19 1 1
  MOVE R20 R19
  CALL R20 0 1
  MOVE R21 R18
  CALL R21 0 1
  GETTABLEKS R22 R1 K33 ["PureComponent"]
  LOADK R24 K34 ["TextureSettings"]
  NAMECALL R22 R22 K35 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K36 [PROTO_1]
  CAPTURE VAL R21
  SETTABLEKS R23 R22 K37 ["init"]
  DUPCLOSURE R23 K38 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R20
  CAPTURE VAL R12
  SETTABLEKS R23 R22 K39 ["render"]
  MOVE R23 R7
  DUPTABLE R24 K40 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R8 R24 K15 ["Analytics"]
  SETTABLEKS R9 R24 K16 ["Localization"]
  SETTABLEKS R5 R24 K12 ["Stylizer"]
  CALL R23 1 1
  MOVE R24 R22
  CALL R23 1 1
  MOVE R22 R23
  GETTABLEKS R23 R2 K41 ["connect"]
  DUPCLOSURE R24 K42 [PROTO_3]
  CAPTURE VAL R21
  DUPCLOSURE R25 K43 [PROTO_5]
  CAPTURE VAL R14
  CALL R23 2 1
  MOVE R24 R22
  CALL R23 1 -1
  RETURN R23 -1
