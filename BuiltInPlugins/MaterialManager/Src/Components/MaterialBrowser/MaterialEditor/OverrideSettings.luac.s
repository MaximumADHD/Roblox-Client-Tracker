PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  JUMPIFNOT R0 [+10]
  GETTABLEKS R2 R1 K1 ["MaterialServiceController"]
  GETTABLEKS R5 R1 K2 ["MaterialVariant"]
  GETTABLEKS R4 R5 K3 ["BaseMaterial"]
  NAMECALL R2 R2 K4 ["setMaterialOverride"]
  CALL R2 2 0
  JUMP [+21]
  GETIMPORT R2 K7 [table.find]
  GETTABLEKS R3 R1 K8 ["MaterialOverrides"]
  GETTABLEKS R5 R1 K2 ["MaterialVariant"]
  GETTABLEKS R4 R5 K9 ["Name"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K1 ["MaterialServiceController"]
  GETTABLEKS R6 R1 K2 ["MaterialVariant"]
  GETTABLEKS R5 R6 K3 ["BaseMaterial"]
  GETTABLEKS R7 R1 K8 ["MaterialOverrides"]
  GETTABLE R6 R7 R2
  NAMECALL R3 R3 K4 ["setMaterialOverride"]
  CALL R3 3 0
  GETTABLEKS R2 R1 K10 ["Analytics"]
  LOADK R4 K11 ["setOverrideToggled"]
  NAMECALL R2 R2 K12 ["report"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["dispatchSetExpandedPane"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["OverrideSettings"]
  GETTABLEKS R4 R0 K3 ["ExpandedPane"]
  NOT R3 R4
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onOverrideToggled"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K1 ["onExpandedChanged"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onOverrideToggled"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["OverrideSettings"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R1 K4 ["MaterialVariant"]
  LOADB R5 0
  GETTABLEKS R6 R1 K5 ["MaterialOverride"]
  LOADN R7 1
  JUMPIFNOTLT R7 R6 [+12]
  GETTABLEKS R7 R1 K6 ["MaterialOverrides"]
  GETTABLEKS R8 R1 K5 ["MaterialOverride"]
  GETTABLE R6 R7 R8
  GETTABLEKS R7 R4 K7 ["Name"]
  JUMPIFEQ R6 R7 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K16 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
  GETTABLEKS R9 R1 K9 ["LayoutOrder"]
  SETTABLEKS R9 R8 K9 ["LayoutOrder"]
  GETTABLEKS R9 R2 K10 ["ContentPadding"]
  SETTABLEKS R9 R8 K10 ["ContentPadding"]
  GETTABLEKS R9 R2 K17 ["ItemSpacing"]
  SETTABLEKS R9 R8 K11 ["ContentSpacing"]
  LOADK R11 K2 ["OverrideSettings"]
  LOADK R12 K18 ["Overrides"]
  NAMECALL R9 R3 K19 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K12 ["Text"]
  GETTABLEKS R9 R2 K20 ["CustomExpandablePane"]
  SETTABLEKS R9 R8 K13 ["Style"]
  GETTABLEKS R9 R1 K21 ["ExpandedPane"]
  SETTABLEKS R9 R8 K14 ["Expanded"]
  GETTABLEKS R9 R0 K22 ["onExpandedChanged"]
  SETTABLEKS R9 R8 K15 ["OnExpandedChanged"]
  DUPTABLE R9 K24 [{"OverridesNew"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K26 [{"LabelColumnWidth", "Text"}]
  GETTABLEKS R13 R2 K25 ["LabelColumnWidth"]
  SETTABLEKS R13 R12 K25 ["LabelColumnWidth"]
  LOADK R15 K2 ["OverrideSettings"]
  LOADK R16 K27 ["SetOverride"]
  NAMECALL R13 R3 K19 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K12 ["Text"]
  DUPTABLE R13 K29 [{"Button"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K8 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K34 [{"AutomaticSize", "VerticalAlignment", "Size", "Padding"}]
  GETIMPORT R17 K37 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K30 ["AutomaticSize"]
  GETIMPORT R17 K39 [Enum.VerticalAlignment.Center]
  SETTABLEKS R17 R16 K31 ["VerticalAlignment"]
  GETIMPORT R17 K42 [UDim2.new]
  LOADN R18 0
  LOADN R19 195
  LOADN R20 0
  LOADN R21 20
  CALL R17 4 1
  SETTABLEKS R17 R16 K32 ["Size"]
  LOADN R17 5
  SETTABLEKS R17 R16 K33 ["Padding"]
  DUPTABLE R17 K44 [{"ToggleButton"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K8 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K47 [{"OnClick", "Selected", "Size"}]
  NEWCLOSURE R21 P0
  CAPTURE VAL R0
  CAPTURE VAL R5
  SETTABLEKS R21 R20 K45 ["OnClick"]
  SETTABLEKS R5 R20 K46 ["Selected"]
  GETIMPORT R21 K49 [UDim2.fromOffset]
  LOADN R22 30
  LOADN R23 18
  CALL R21 2 1
  SETTABLEKS R21 R20 K32 ["Size"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K43 ["ToggleButton"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K28 ["Button"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K23 ["OverridesNew"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_5:
  GETTABLEKS R2 R1 K0 ["MockMaterial"]
  JUMPIFNOT R2 [+34]
  DUPTABLE R2 K4 [{"ExpandedPane", "MaterialOverrides", "MaterialOverride"}]
  GETTABLEKS R5 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K1 ["ExpandedPane"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["OverrideSettings"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K1 ["ExpandedPane"]
  GETTABLEKS R5 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K2 ["MaterialOverrides"]
  GETTABLEKS R6 R1 K0 ["MockMaterial"]
  GETTABLEKS R5 R6 K7 ["Material"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K2 ["MaterialOverrides"]
  GETTABLEKS R5 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K3 ["MaterialOverride"]
  GETTABLEKS R6 R1 K0 ["MockMaterial"]
  GETTABLEKS R5 R6 K7 ["Material"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K3 ["MaterialOverride"]
  RETURN R2 1
  GETTABLEKS R3 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R2 R3 K7 ["Material"]
  JUMPIFNOT R2 [+9]
  GETUPVAL R3 1
  GETTABLEKS R6 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R5 R6 K7 ["Material"]
  GETTABLEKS R4 R5 K7 ["Material"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+3]
  NEWTABLE R2 0 0
  RETURN R2 1
  DUPTABLE R2 K4 [{"ExpandedPane", "MaterialOverrides", "MaterialOverride"}]
  GETTABLEKS R5 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K1 ["ExpandedPane"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["OverrideSettings"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K1 ["ExpandedPane"]
  GETTABLEKS R5 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K2 ["MaterialOverrides"]
  GETTABLEKS R7 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R6 R7 K7 ["Material"]
  GETTABLEKS R5 R6 K7 ["Material"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K2 ["MaterialOverrides"]
  GETTABLEKS R5 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K3 ["MaterialOverride"]
  GETTABLEKS R7 R0 K5 ["MaterialBrowserReducer"]
  GETTABLEKS R6 R7 K7 ["Material"]
  GETTABLEKS R5 R6 K7 ["Material"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K3 ["MaterialOverride"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_7:
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
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K11 ["Style"]
  GETTABLEKS R5 R6 K12 ["Stylizer"]
  GETTABLEKS R6 R4 K13 ["ContextServices"]
  GETTABLEKS R7 R6 K14 ["withContext"]
  GETTABLEKS R8 R6 K15 ["Analytics"]
  GETTABLEKS R9 R6 K16 ["Localization"]
  GETTABLEKS R10 R4 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["Pane"]
  GETTABLEKS R12 R10 K19 ["ExpandablePane"]
  GETTABLEKS R13 R10 K20 ["ToggleButton"]
  GETTABLEKS R15 R0 K5 ["Src"]
  GETTABLEKS R14 R15 K21 ["Actions"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R14 K22 ["SetExpandedPane"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K5 ["Src"]
  GETTABLEKS R18 R19 K23 ["Reducers"]
  GETTABLEKS R17 R18 K24 ["MainReducer"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K5 ["Src"]
  GETTABLEKS R19 R20 K25 ["Controllers"]
  GETTABLEKS R18 R19 K26 ["MaterialServiceController"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R23 R0 K5 ["Src"]
  GETTABLEKS R22 R23 K27 ["Components"]
  GETTABLEKS R21 R22 K28 ["MaterialBrowser"]
  GETTABLEKS R20 R21 K29 ["MaterialEditor"]
  GETTABLEKS R19 R20 K30 ["LabeledElement"]
  CALL R18 1 1
  GETTABLEKS R21 R0 K5 ["Src"]
  GETTABLEKS R20 R21 K31 ["Resources"]
  GETTABLEKS R19 R20 K32 ["Constants"]
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R19 K33 ["getSettingsNames"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R19 K34 ["getSupportedMaterials"]
  CALL R21 1 1
  MOVE R22 R21
  CALL R22 0 1
  MOVE R23 R20
  CALL R23 0 1
  GETTABLEKS R24 R2 K35 ["PureComponent"]
  LOADK R26 K36 ["OverrideSettings"]
  NAMECALL R24 R24 K37 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K38 [PROTO_2]
  CAPTURE VAL R23
  SETTABLEKS R25 R24 K39 ["init"]
  DUPCLOSURE R25 K40 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R13
  SETTABLEKS R25 R24 K41 ["render"]
  MOVE R25 R7
  DUPTABLE R26 K42 [{"Analytics", "Localization", "MaterialServiceController", "Stylizer"}]
  SETTABLEKS R8 R26 K15 ["Analytics"]
  SETTABLEKS R9 R26 K16 ["Localization"]
  SETTABLEKS R17 R26 K26 ["MaterialServiceController"]
  SETTABLEKS R5 R26 K12 ["Stylizer"]
  CALL R25 1 1
  MOVE R26 R24
  CALL R25 1 1
  MOVE R24 R25
  GETTABLEKS R25 R3 K43 ["connect"]
  DUPCLOSURE R26 K44 [PROTO_5]
  CAPTURE VAL R23
  CAPTURE VAL R22
  DUPCLOSURE R27 K45 [PROTO_7]
  CAPTURE VAL R15
  CALL R25 2 1
  MOVE R26 R24
  CALL R25 1 -1
  RETURN R25 -1
