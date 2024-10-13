PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["physicalProperties"]
  GETUPVAL R2 1
  SETTABLE R0 R1 R2
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["MaterialVariant"]
  GETIMPORT R2 K4 [PhysicalProperties.new]
  GETUPVAL R4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["physicalProperties"]
  GETTABLEKS R5 R6 K7 ["Density"]
  CALL R4 1 1
  ORK R3 R4 K5 [0]
  GETUPVAL R5 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["physicalProperties"]
  GETTABLEKS R6 R7 K8 ["Friction"]
  CALL R5 1 1
  ORK R4 R5 K5 [0]
  GETUPVAL R6 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["physicalProperties"]
  GETTABLEKS R7 R8 K9 ["Elasticity"]
  CALL R6 1 1
  ORK R5 R6 K5 [0]
  GETUPVAL R7 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["physicalProperties"]
  GETTABLEKS R8 R9 K10 ["FrictionWeight"]
  CALL R7 1 1
  ORK R6 R7 K5 [0]
  GETUPVAL R8 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["physicalProperties"]
  GETTABLEKS R9 R10 K11 ["ElasticityWeight"]
  CALL R8 1 1
  ORK R7 R8 K5 [0]
  CALL R2 5 1
  SETTABLEKS R2 R1 K12 ["CustomPhysicalProperties"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K1 ["MaterialVariant"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["dispatchSetExpandedPane"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["PhysicalSettings"]
  GETTABLEKS R4 R0 K3 ["ExpandedPane"]
  NOT R3 R4
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["setPhysicalProperty"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K1 ["onFocusLost"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K2 ["reset"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K3 ["onExpandedChanged"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["PhysicalSettings"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["new"]
  CALL R4 0 1
  GETTABLEKS R6 R1 K5 ["MaterialVariant"]
  GETTABLEKS R5 R6 K6 ["CustomPhysicalProperties"]
  JUMPIF R5 [+7]
  GETIMPORT R5 K8 [PhysicalProperties.new]
  GETTABLEKS R7 R1 K5 ["MaterialVariant"]
  GETTABLEKS R6 R7 K9 ["BaseMaterial"]
  CALL R5 1 1
  JUMPIFNOT R5 [+68]
  DUPTABLE R6 K15 [{"Density", "Elasticity", "ElasticityWeight", "Friction", "FrictionWeight"}]
  GETIMPORT R7 K18 [string.format]
  LOADK R8 K19 ["%.3f"]
  GETTABLEKS R9 R5 K10 ["Density"]
  CALL R7 2 1
  LOADK R9 K20 ["%.?0+$"]
  LOADK R10 K21 [""]
  NAMECALL R7 R7 K22 ["gsub"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K10 ["Density"]
  GETIMPORT R7 K18 [string.format]
  LOADK R8 K19 ["%.3f"]
  GETTABLEKS R9 R5 K11 ["Elasticity"]
  CALL R7 2 1
  LOADK R9 K20 ["%.?0+$"]
  LOADK R10 K21 [""]
  NAMECALL R7 R7 K22 ["gsub"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K11 ["Elasticity"]
  GETIMPORT R7 K18 [string.format]
  LOADK R8 K19 ["%.3f"]
  GETTABLEKS R9 R5 K12 ["ElasticityWeight"]
  CALL R7 2 1
  LOADK R9 K20 ["%.?0+$"]
  LOADK R10 K21 [""]
  NAMECALL R7 R7 K22 ["gsub"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["ElasticityWeight"]
  GETIMPORT R7 K18 [string.format]
  LOADK R8 K19 ["%.3f"]
  GETTABLEKS R9 R5 K13 ["Friction"]
  CALL R7 2 1
  LOADK R9 K20 ["%.?0+$"]
  LOADK R10 K21 [""]
  NAMECALL R7 R7 K22 ["gsub"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K13 ["Friction"]
  GETIMPORT R7 K18 [string.format]
  LOADK R8 K19 ["%.3f"]
  GETTABLEKS R9 R5 K14 ["FrictionWeight"]
  CALL R7 2 1
  LOADK R9 K20 ["%.?0+$"]
  LOADK R10 K21 [""]
  NAMECALL R7 R7 K22 ["gsub"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K14 ["FrictionWeight"]
  SETTABLEKS R6 R0 K23 ["physicalProperties"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K24 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K32 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
  GETTABLEKS R9 R1 K25 ["LayoutOrder"]
  SETTABLEKS R9 R8 K25 ["LayoutOrder"]
  GETTABLEKS R9 R2 K26 ["ContentPadding"]
  SETTABLEKS R9 R8 K26 ["ContentPadding"]
  GETTABLEKS R9 R2 K33 ["ItemSpacing"]
  SETTABLEKS R9 R8 K27 ["ContentSpacing"]
  LOADK R11 K7 ["PhysicalProperties"]
  LOADK R12 K34 ["Physics"]
  NAMECALL R9 R3 K35 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["Text"]
  GETTABLEKS R9 R2 K36 ["CustomExpandablePane"]
  SETTABLEKS R9 R8 K29 ["Style"]
  GETTABLEKS R9 R1 K37 ["ExpandedPane"]
  SETTABLEKS R9 R8 K30 ["Expanded"]
  GETTABLEKS R9 R0 K38 ["onExpandedChanged"]
  SETTABLEKS R9 R8 K31 ["OnExpandedChanged"]
  DUPTABLE R9 K40 [{"Density", "Elasticity", "Friction", "ElasticityWeight", "FrictionWeight", "Reset"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K42 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
  GETTABLEKS R13 R2 K41 ["LabelColumnWidth"]
  SETTABLEKS R13 R12 K41 ["LabelColumnWidth"]
  NAMECALL R13 R4 K43 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K25 ["LayoutOrder"]
  LOADK R15 K7 ["PhysicalProperties"]
  LOADK R16 K10 ["Density"]
  NAMECALL R13 R3 K35 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K28 ["Text"]
  NEWTABLE R13 0 1
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K24 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K47 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
  LOADK R17 K48 ["FilledRoundedBorder"]
  SETTABLEKS R17 R16 K29 ["Style"]
  GETTABLEKS R17 R2 K49 ["DialogColumnSize"]
  SETTABLEKS R17 R16 K44 ["Size"]
  GETTABLEKS R18 R0 K23 ["physicalProperties"]
  GETTABLEKS R17 R18 K10 ["Density"]
  SETTABLEKS R17 R16 K28 ["Text"]
  GETTABLEKS R17 R0 K50 ["setPhysicalProperty"]
  LOADK R18 K10 ["Density"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K45 ["OnTextChanged"]
  GETTABLEKS R17 R0 K51 ["onFocusLost"]
  SETTABLEKS R17 R16 K46 ["OnFocusLost"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  SETTABLEKS R10 R9 K10 ["Density"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K42 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
  GETTABLEKS R13 R2 K41 ["LabelColumnWidth"]
  SETTABLEKS R13 R12 K41 ["LabelColumnWidth"]
  NAMECALL R13 R4 K43 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K25 ["LayoutOrder"]
  LOADK R15 K7 ["PhysicalProperties"]
  LOADK R16 K11 ["Elasticity"]
  NAMECALL R13 R3 K35 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K28 ["Text"]
  NEWTABLE R13 0 1
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K24 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K47 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
  LOADK R17 K48 ["FilledRoundedBorder"]
  SETTABLEKS R17 R16 K29 ["Style"]
  GETTABLEKS R17 R2 K49 ["DialogColumnSize"]
  SETTABLEKS R17 R16 K44 ["Size"]
  GETTABLEKS R18 R0 K23 ["physicalProperties"]
  GETTABLEKS R17 R18 K11 ["Elasticity"]
  SETTABLEKS R17 R16 K28 ["Text"]
  GETTABLEKS R17 R0 K50 ["setPhysicalProperty"]
  LOADK R18 K11 ["Elasticity"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K45 ["OnTextChanged"]
  GETTABLEKS R17 R0 K51 ["onFocusLost"]
  SETTABLEKS R17 R16 K46 ["OnFocusLost"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  SETTABLEKS R10 R9 K11 ["Elasticity"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K42 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
  GETTABLEKS R13 R2 K41 ["LabelColumnWidth"]
  SETTABLEKS R13 R12 K41 ["LabelColumnWidth"]
  NAMECALL R13 R4 K43 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K25 ["LayoutOrder"]
  LOADK R15 K7 ["PhysicalProperties"]
  LOADK R16 K13 ["Friction"]
  NAMECALL R13 R3 K35 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K28 ["Text"]
  NEWTABLE R13 0 1
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K24 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K47 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
  LOADK R17 K48 ["FilledRoundedBorder"]
  SETTABLEKS R17 R16 K29 ["Style"]
  GETTABLEKS R17 R2 K49 ["DialogColumnSize"]
  SETTABLEKS R17 R16 K44 ["Size"]
  GETTABLEKS R18 R0 K23 ["physicalProperties"]
  GETTABLEKS R17 R18 K13 ["Friction"]
  SETTABLEKS R17 R16 K28 ["Text"]
  GETTABLEKS R17 R0 K50 ["setPhysicalProperty"]
  LOADK R18 K13 ["Friction"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K45 ["OnTextChanged"]
  GETTABLEKS R17 R0 K51 ["onFocusLost"]
  SETTABLEKS R17 R16 K46 ["OnFocusLost"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  SETTABLEKS R10 R9 K13 ["Friction"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K42 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
  GETTABLEKS R13 R2 K41 ["LabelColumnWidth"]
  SETTABLEKS R13 R12 K41 ["LabelColumnWidth"]
  NAMECALL R13 R4 K43 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K25 ["LayoutOrder"]
  LOADK R15 K7 ["PhysicalProperties"]
  LOADK R16 K12 ["ElasticityWeight"]
  NAMECALL R13 R3 K35 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K28 ["Text"]
  NEWTABLE R13 0 1
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K24 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K47 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
  LOADK R17 K48 ["FilledRoundedBorder"]
  SETTABLEKS R17 R16 K29 ["Style"]
  GETTABLEKS R17 R2 K49 ["DialogColumnSize"]
  SETTABLEKS R17 R16 K44 ["Size"]
  GETTABLEKS R18 R0 K23 ["physicalProperties"]
  GETTABLEKS R17 R18 K12 ["ElasticityWeight"]
  SETTABLEKS R17 R16 K28 ["Text"]
  GETTABLEKS R17 R0 K50 ["setPhysicalProperty"]
  LOADK R18 K12 ["ElasticityWeight"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K45 ["OnTextChanged"]
  GETTABLEKS R17 R0 K51 ["onFocusLost"]
  SETTABLEKS R17 R16 K46 ["OnFocusLost"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  SETTABLEKS R10 R9 K12 ["ElasticityWeight"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K42 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
  GETTABLEKS R13 R2 K41 ["LabelColumnWidth"]
  SETTABLEKS R13 R12 K41 ["LabelColumnWidth"]
  NAMECALL R13 R4 K43 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K25 ["LayoutOrder"]
  LOADK R15 K7 ["PhysicalProperties"]
  LOADK R16 K14 ["FrictionWeight"]
  NAMECALL R13 R3 K35 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K28 ["Text"]
  NEWTABLE R13 0 1
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K24 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K47 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
  LOADK R17 K48 ["FilledRoundedBorder"]
  SETTABLEKS R17 R16 K29 ["Style"]
  GETTABLEKS R17 R2 K49 ["DialogColumnSize"]
  SETTABLEKS R17 R16 K44 ["Size"]
  GETTABLEKS R18 R0 K23 ["physicalProperties"]
  GETTABLEKS R17 R18 K14 ["FrictionWeight"]
  SETTABLEKS R17 R16 K28 ["Text"]
  GETTABLEKS R17 R0 K50 ["setPhysicalProperty"]
  LOADK R18 K14 ["FrictionWeight"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K45 ["OnTextChanged"]
  GETTABLEKS R17 R0 K51 ["onFocusLost"]
  SETTABLEKS R17 R16 K46 ["OnFocusLost"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["FrictionWeight"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K24 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K53 [{"LayoutOrder", "Padding", "Size"}]
  NAMECALL R13 R4 K43 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K25 ["LayoutOrder"]
  DUPTABLE R13 K55 [{"Left"}]
  GETTABLEKS R14 R2 K56 ["ButtonPadding"]
  SETTABLEKS R14 R13 K54 ["Left"]
  SETTABLEKS R13 R12 K52 ["Padding"]
  GETTABLEKS R13 R2 K57 ["ButtonSize"]
  SETTABLEKS R13 R12 K44 ["Size"]
  DUPTABLE R13 K59 [{"Button"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K24 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K62 [{"HorizontalAlignment", "OnClick", "Text", "Style"}]
  GETIMPORT R17 K65 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R17 R16 K60 ["HorizontalAlignment"]
  GETTABLEKS R17 R0 K66 ["reset"]
  SETTABLEKS R17 R16 K61 ["OnClick"]
  LOADK R19 K7 ["PhysicalProperties"]
  LOADK R20 K39 ["Reset"]
  NAMECALL R17 R3 K35 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K28 ["Text"]
  LOADK R17 K67 ["Round"]
  SETTABLEKS R17 R16 K29 ["Style"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K58 ["Button"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K39 ["Reset"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_7:
  DUPTABLE R2 K2 [{"ExpandedPane", "Material"}]
  GETTABLEKS R5 R0 K3 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K0 ["ExpandedPane"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["PhysicalSettings"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K0 ["ExpandedPane"]
  GETTABLEKS R4 R0 K3 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K1 ["Material"]
  SETTABLEKS R3 R2 K1 ["Material"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
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
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R4 K11 ["Analytics"]
  GETTABLEKS R7 R4 K12 ["Localization"]
  GETTABLEKS R9 R3 K13 ["Style"]
  GETTABLEKS R8 R9 K14 ["Stylizer"]
  GETTABLEKS R10 R3 K15 ["Util"]
  GETTABLEKS R9 R10 K16 ["LayoutOrderIterator"]
  GETTABLEKS R10 R3 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["ExpandablePane"]
  GETTABLEKS R12 R10 K19 ["DEPRECATED_TextInput"]
  GETTABLEKS R13 R10 K20 ["Button"]
  GETTABLEKS R14 R10 K21 ["Pane"]
  GETTABLEKS R16 R0 K22 ["Src"]
  GETTABLEKS R15 R16 K23 ["Actions"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R15 K24 ["SetExpandedPane"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K22 ["Src"]
  GETTABLEKS R19 R20 K25 ["Reducers"]
  GETTABLEKS R18 R19 K26 ["MainReducer"]
  CALL R17 1 1
  GETTABLEKS R19 R0 K22 ["Src"]
  GETTABLEKS R18 R19 K27 ["Controllers"]
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R18 K28 ["MaterialServiceController"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R18 K29 ["GeneralServiceController"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R26 R0 K22 ["Src"]
  GETTABLEKS R25 R26 K30 ["Components"]
  GETTABLEKS R24 R25 K31 ["MaterialBrowser"]
  GETTABLEKS R23 R24 K32 ["MaterialEditor"]
  GETTABLEKS R22 R23 K33 ["LabeledElement"]
  CALL R21 1 1
  GETTABLEKS R24 R0 K22 ["Src"]
  GETTABLEKS R23 R24 K34 ["Resources"]
  GETTABLEKS R22 R23 K35 ["Constants"]
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R22 K36 ["getSettingsNames"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R27 R0 K22 ["Src"]
  GETTABLEKS R26 R27 K15 ["Util"]
  GETTABLEKS R25 R26 K37 ["getNumberFromText"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R28 R0 K22 ["Src"]
  GETTABLEKS R27 R28 K15 ["Util"]
  GETTABLEKS R26 R27 K38 ["ResetCustomPhysicalProperties"]
  CALL R25 1 1
  MOVE R26 R23
  CALL R26 0 1
  GETTABLEKS R27 R1 K39 ["PureComponent"]
  LOADK R29 K40 ["PhysicalSettings"]
  NAMECALL R27 R27 K41 ["extend"]
  CALL R27 2 1
  DUPCLOSURE R28 K42 [PROTO_5]
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R26
  SETTABLEKS R28 R27 K43 ["init"]
  DUPCLOSURE R28 K44 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R21
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R13
  SETTABLEKS R28 R27 K45 ["render"]
  MOVE R28 R5
  DUPTABLE R29 K46 [{"Analytics", "Localization", "Stylizer", "MaterialServiceController", "GeneralServiceController"}]
  SETTABLEKS R6 R29 K11 ["Analytics"]
  SETTABLEKS R7 R29 K12 ["Localization"]
  SETTABLEKS R8 R29 K14 ["Stylizer"]
  SETTABLEKS R19 R29 K28 ["MaterialServiceController"]
  SETTABLEKS R20 R29 K29 ["GeneralServiceController"]
  CALL R28 1 1
  MOVE R29 R27
  CALL R28 1 1
  MOVE R27 R28
  GETTABLEKS R28 R2 K47 ["connect"]
  DUPCLOSURE R29 K48 [PROTO_7]
  CAPTURE VAL R26
  DUPCLOSURE R30 K49 [PROTO_9]
  CAPTURE VAL R16
  CALL R28 2 1
  MOVE R29 R27
  CALL R28 1 -1
  RETURN R28 -1
