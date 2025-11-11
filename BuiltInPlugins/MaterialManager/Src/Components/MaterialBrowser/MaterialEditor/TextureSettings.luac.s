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
  DUPTABLE R5 K12 [{"ImportColorMap", "ImportMetalnessMap", "ImportNormalMap", "ImportRoughnessMap", "ImportEmissiveMask"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K20 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
  NAMECALL R9 R4 K21 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K13 ["LayoutOrder"]
  GETTABLEKS R9 R2 K14 ["LabelColumnWidth"]
  SETTABLEKS R9 R8 K14 ["LabelColumnWidth"]
  GETTABLEKS R9 R2 K15 ["LabelWidth"]
  SETTABLEKS R9 R8 K15 ["LabelWidth"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K22 ["ColorMap"]
  SETTABLEKS R9 R8 K16 ["MapType"]
  LOADK R11 K23 ["Import"]
  LOADK R12 K24 ["ColorMapPreview"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["PreviewTitle"]
  LOADK R11 K26 ["CreateDialog"]
  LOADK R12 K7 ["ImportColorMap"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Text"]
  GETTABLEKS R9 R1 K4 ["PBRMaterial"]
  SETTABLEKS R9 R8 K4 ["PBRMaterial"]
  GETTABLEKS R9 R2 K19 ["ColumnWidth"]
  SETTABLEKS R9 R8 K19 ["ColumnWidth"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["ImportColorMap"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K20 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
  NAMECALL R9 R4 K21 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K13 ["LayoutOrder"]
  GETTABLEKS R9 R2 K14 ["LabelColumnWidth"]
  SETTABLEKS R9 R8 K14 ["LabelColumnWidth"]
  GETTABLEKS R9 R2 K15 ["LabelWidth"]
  SETTABLEKS R9 R8 K15 ["LabelWidth"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K27 ["MetalnessMap"]
  SETTABLEKS R9 R8 K16 ["MapType"]
  LOADK R11 K23 ["Import"]
  LOADK R12 K28 ["MetalnessMapPreview"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["PreviewTitle"]
  LOADK R11 K26 ["CreateDialog"]
  LOADK R12 K8 ["ImportMetalnessMap"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Text"]
  GETTABLEKS R9 R1 K4 ["PBRMaterial"]
  SETTABLEKS R9 R8 K4 ["PBRMaterial"]
  GETTABLEKS R9 R2 K19 ["ColumnWidth"]
  SETTABLEKS R9 R8 K19 ["ColumnWidth"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["ImportMetalnessMap"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K20 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
  NAMECALL R9 R4 K21 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K13 ["LayoutOrder"]
  GETTABLEKS R9 R2 K14 ["LabelColumnWidth"]
  SETTABLEKS R9 R8 K14 ["LabelColumnWidth"]
  GETTABLEKS R9 R2 K15 ["LabelWidth"]
  SETTABLEKS R9 R8 K15 ["LabelWidth"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K29 ["NormalMap"]
  SETTABLEKS R9 R8 K16 ["MapType"]
  LOADK R11 K23 ["Import"]
  LOADK R12 K30 ["NormalMapPreview"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["PreviewTitle"]
  LOADK R11 K26 ["CreateDialog"]
  LOADK R12 K9 ["ImportNormalMap"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Text"]
  GETTABLEKS R9 R1 K4 ["PBRMaterial"]
  SETTABLEKS R9 R8 K4 ["PBRMaterial"]
  GETTABLEKS R9 R2 K19 ["ColumnWidth"]
  SETTABLEKS R9 R8 K19 ["ColumnWidth"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["ImportNormalMap"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K20 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
  NAMECALL R9 R4 K21 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K13 ["LayoutOrder"]
  GETTABLEKS R9 R2 K14 ["LabelColumnWidth"]
  SETTABLEKS R9 R8 K14 ["LabelColumnWidth"]
  GETTABLEKS R9 R2 K15 ["LabelWidth"]
  SETTABLEKS R9 R8 K15 ["LabelWidth"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K31 ["RoughnessMap"]
  SETTABLEKS R9 R8 K16 ["MapType"]
  LOADK R11 K23 ["Import"]
  LOADK R12 K32 ["RoughnessMapPreview"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["PreviewTitle"]
  LOADK R11 K26 ["CreateDialog"]
  LOADK R12 K10 ["ImportRoughnessMap"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Text"]
  GETTABLEKS R9 R1 K4 ["PBRMaterial"]
  SETTABLEKS R9 R8 K4 ["PBRMaterial"]
  GETTABLEKS R9 R2 K19 ["ColumnWidth"]
  SETTABLEKS R9 R8 K19 ["ColumnWidth"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["ImportRoughnessMap"]
  GETUPVAL R7 5
  CALL R7 0 1
  JUMPIFNOT R7 [+47]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K20 [{"LayoutOrder", "LabelColumnWidth", "LabelWidth", "MapType", "PreviewTitle", "Text", "PBRMaterial", "ColumnWidth"}]
  NAMECALL R9 R4 K21 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K13 ["LayoutOrder"]
  GETTABLEKS R9 R2 K14 ["LabelColumnWidth"]
  SETTABLEKS R9 R8 K14 ["LabelColumnWidth"]
  GETTABLEKS R9 R2 K15 ["LabelWidth"]
  SETTABLEKS R9 R8 K15 ["LabelWidth"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K33 ["EmissiveMaskContent"]
  SETTABLEKS R9 R8 K16 ["MapType"]
  LOADK R11 K23 ["Import"]
  LOADK R12 K34 ["EmissiveMaskPreview"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K17 ["PreviewTitle"]
  LOADK R11 K26 ["CreateDialog"]
  LOADK R12 K11 ["ImportEmissiveMask"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Text"]
  GETTABLEKS R9 R1 K4 ["PBRMaterial"]
  SETTABLEKS R9 R8 K4 ["PBRMaterial"]
  GETTABLEKS R9 R2 K19 ["ColumnWidth"]
  SETTABLEKS R9 R8 K19 ["ColumnWidth"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K11 ["ImportEmissiveMask"]
  GETTABLEKS R6 R1 K35 ["Expandable"]
  JUMPIFNOT R6 [+39]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K41 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
  GETTABLEKS R9 R1 K13 ["LayoutOrder"]
  SETTABLEKS R9 R8 K13 ["LayoutOrder"]
  GETTABLEKS R9 R2 K36 ["ContentPadding"]
  SETTABLEKS R9 R8 K36 ["ContentPadding"]
  GETTABLEKS R9 R2 K42 ["ItemSpacing"]
  SETTABLEKS R9 R8 K37 ["ContentSpacing"]
  LOADK R11 K43 ["MaterialTextures"]
  LOADK R12 K44 ["TextureMaps"]
  NAMECALL R9 R3 K25 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Text"]
  GETTABLEKS R9 R2 K45 ["CustomExpandablePane"]
  SETTABLEKS R9 R8 K38 ["Style"]
  GETTABLEKS R9 R1 K46 ["ExpandedPane"]
  SETTABLEKS R9 R8 K39 ["Expanded"]
  GETTABLEKS R9 R0 K47 ["onExpandedChanged"]
  SETTABLEKS R9 R8 K40 ["OnExpandedChanged"]
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K52 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing", "HorizontalAlignment"}]
  GETIMPORT R9 K55 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K48 ["AutomaticSize"]
  GETTABLEKS R9 R1 K13 ["LayoutOrder"]
  SETTABLEKS R9 R8 K13 ["LayoutOrder"]
  GETIMPORT R9 K58 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K49 ["Layout"]
  GETTABLEKS R9 R2 K42 ["ItemSpacing"]
  SETTABLEKS R9 R8 K50 ["Spacing"]
  GETIMPORT R9 K60 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K51 ["HorizontalAlignment"]
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
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Flags"]
  GETTABLEKS R5 R6 K11 ["getEFEnableEmissiveMask"]
  CALL R4 1 1
  GETTABLEKS R6 R3 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["LayoutOrderIterator"]
  GETTABLEKS R7 R3 K14 ["Style"]
  GETTABLEKS R6 R7 K15 ["Stylizer"]
  GETTABLEKS R7 R3 K16 ["ContextServices"]
  GETTABLEKS R8 R7 K17 ["withContext"]
  GETTABLEKS R9 R7 K18 ["Analytics"]
  GETTABLEKS R10 R7 K19 ["Localization"]
  GETTABLEKS R11 R3 K20 ["UI"]
  GETTABLEKS R12 R11 K21 ["Pane"]
  GETTABLEKS R13 R11 K22 ["ExpandablePane"]
  GETTABLEKS R15 R0 K9 ["Src"]
  GETTABLEKS R14 R15 K23 ["Actions"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R14 K24 ["SetExpandedPane"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K9 ["Src"]
  GETTABLEKS R18 R19 K25 ["Reducers"]
  GETTABLEKS R17 R18 K26 ["MainReducer"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R22 R0 K9 ["Src"]
  GETTABLEKS R21 R22 K27 ["Components"]
  GETTABLEKS R20 R21 K28 ["MaterialBrowser"]
  GETTABLEKS R19 R20 K29 ["MaterialEditor"]
  GETTABLEKS R18 R19 K30 ["TextureMapSelector"]
  CALL R17 1 1
  GETTABLEKS R20 R0 K9 ["Src"]
  GETTABLEKS R19 R20 K31 ["Resources"]
  GETTABLEKS R18 R19 K32 ["Constants"]
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R18 K33 ["getSettingsNames"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R18 K34 ["getTextureMapNames"]
  CALL R20 1 1
  MOVE R21 R20
  CALL R21 0 1
  MOVE R22 R19
  CALL R22 0 1
  GETTABLEKS R23 R1 K35 ["PureComponent"]
  LOADK R25 K36 ["TextureSettings"]
  NAMECALL R23 R23 K37 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K38 [PROTO_1]
  CAPTURE VAL R22
  SETTABLEKS R24 R23 K39 ["init"]
  DUPCLOSURE R24 K40 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R17
  CAPTURE VAL R21
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R24 R23 K41 ["render"]
  MOVE R24 R8
  DUPTABLE R25 K42 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R9 R25 K18 ["Analytics"]
  SETTABLEKS R10 R25 K19 ["Localization"]
  SETTABLEKS R6 R25 K15 ["Stylizer"]
  CALL R24 1 1
  MOVE R25 R23
  CALL R24 1 1
  MOVE R23 R24
  GETTABLEKS R24 R2 K43 ["connect"]
  DUPCLOSURE R25 K44 [PROTO_3]
  CAPTURE VAL R22
  DUPCLOSURE R26 K45 [PROTO_5]
  CAPTURE VAL R15
  CALL R24 2 1
  MOVE R25 R23
  CALL R24 1 -1
  RETURN R24 -1
