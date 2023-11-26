PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R4 R2 K1 ["Material"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R2 K1 ["Material"]
  GETTABLEKS R3 R4 K1 ["Material"]
  JUMP [+2]
  GETIMPORT R3 K4 [Enum.Material.Plastic]
  JUMPIFNOTEQKN R1 K5 [1] [+8]
  GETTABLEKS R4 R2 K6 ["MaterialServiceController"]
  MOVE R6 R3
  NAMECALL R4 R4 K7 ["setMaterialOverride"]
  CALL R4 2 0
  RETURN R0 0
  GETTABLEKS R4 R2 K6 ["MaterialServiceController"]
  MOVE R6 R3
  GETTABLEKS R8 R2 K8 ["MaterialOverrides"]
  GETTABLE R7 R8 R1
  NAMECALL R4 R4 K7 ["setMaterialOverride"]
  CALL R4 3 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onMaterialItemActivated"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["MaterialOverrides"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETTABLEKS R4 R1 K4 ["Material"]
  GETTABLEKS R5 R1 K5 ["MaterialStatus"]
  LOADK R6 K6 [""]
  GETIMPORT R7 K10 [Enum.PropertyStatus.Error]
  JUMPIFNOTEQ R5 R7 [+8]
  LOADK R9 K5 ["MaterialStatus"]
  LOADK R10 K11 ["MissingMaterial"]
  NAMECALL R7 R3 K12 ["getText"]
  CALL R7 3 1
  MOVE R6 R7
  JUMP [+10]
  GETIMPORT R7 K14 [Enum.PropertyStatus.Warning]
  JUMPIFNOTEQ R5 R7 [+7]
  LOADK R9 K5 ["MaterialStatus"]
  LOADK R10 K15 ["DuplicateMaterial"]
  NAMECALL R7 R3 K12 ["getText"]
  CALL R7 3 1
  MOVE R6 R7
  JUMPIF R4 [+6]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K16 ["createElement"]
  GETUPVAL R8 1
  CALL R7 1 -1
  RETURN R7 -1
  LOADNIL R7
  GETUPVAL R9 2
  GETTABLEKS R10 R4 K4 ["Material"]
  GETTABLE R8 R9 R10
  JUMPIFNOT R8 [+151]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K20 [{"AutomaticSize", "Layout", "LayoutOrder"}]
  GETIMPORT R11 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K17 ["AutomaticSize"]
  GETIMPORT R11 K25 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K18 ["Layout"]
  LOADN R11 2
  SETTABLEKS R11 R10 K19 ["LayoutOrder"]
  DUPTABLE R11 K28 [{"Label", "SelectInputWrapper"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K33 [{"LayoutOrder", "Layout", "Size", "Spacing", "VerticalAlignment", "HorizontalAlignment"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K19 ["LayoutOrder"]
  GETIMPORT R15 K25 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K18 ["Layout"]
  GETTABLEKS R15 R2 K34 ["OverrideSize"]
  SETTABLEKS R15 R14 K29 ["Size"]
  LOADN R15 5
  SETTABLEKS R15 R14 K30 ["Spacing"]
  GETIMPORT R15 K36 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K31 ["VerticalAlignment"]
  GETIMPORT R15 K38 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K32 ["HorizontalAlignment"]
  DUPTABLE R15 K40 [{"Status", "Label"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K16 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K42 [{"LayoutOrder", "Size", "StatusText", "Status"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K19 ["LayoutOrder"]
  GETTABLEKS R19 R2 K43 ["ImageSize"]
  SETTABLEKS R19 R18 K29 ["Size"]
  SETTABLEKS R6 R18 K41 ["StatusText"]
  SETTABLEKS R5 R18 K39 ["Status"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K39 ["Status"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K16 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K45 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R19 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K17 ["AutomaticSize"]
  LOADN R19 2
  SETTABLEKS R19 R18 K19 ["LayoutOrder"]
  LOADK R21 K2 ["MaterialOverrides"]
  LOADK R22 K48 ["MaterialOverride"]
  NAMECALL R19 R3 K12 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K44 ["Text"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K26 ["Label"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K26 ["Label"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K49 [{"AutomaticSize", "LayoutOrder", "Size", "VerticalAlignment"}]
  GETIMPORT R15 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K17 ["AutomaticSize"]
  LOADN R15 2
  SETTABLEKS R15 R14 K19 ["LayoutOrder"]
  GETTABLEKS R15 R2 K34 ["OverrideSize"]
  SETTABLEKS R15 R14 K29 ["Size"]
  GETIMPORT R15 K36 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K31 ["VerticalAlignment"]
  DUPTABLE R15 K51 [{"SelectInput"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K16 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K57 [{"Items", "OnItemActivated", "PlaceholderText", "SelectedIndex", "Width"}]
  GETTABLEKS R19 R1 K2 ["MaterialOverrides"]
  SETTABLEKS R19 R18 K52 ["Items"]
  GETTABLEKS R19 R0 K58 ["onMaterialItemActivated"]
  SETTABLEKS R19 R18 K53 ["OnItemActivated"]
  GETTABLEKS R20 R1 K2 ["MaterialOverrides"]
  GETTABLEKS R21 R1 K48 ["MaterialOverride"]
  GETTABLE R19 R20 R21
  SETTABLEKS R19 R18 K54 ["PlaceholderText"]
  GETTABLEKS R19 R1 K48 ["MaterialOverride"]
  SETTABLEKS R19 R18 K55 ["SelectedIndex"]
  GETTABLEKS R21 R2 K34 ["OverrideSize"]
  GETTABLEKS R20 R21 K59 ["X"]
  GETTABLEKS R19 R20 K60 ["Offset"]
  SETTABLEKS R19 R18 K56 ["Width"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K50 ["SelectInput"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K27 ["SelectInputWrapper"]
  CALL R8 3 1
  MOVE R7 R8
  JUMP [+46]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K61 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder"}]
  GETIMPORT R11 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K17 ["AutomaticSize"]
  GETIMPORT R11 K38 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K32 ["HorizontalAlignment"]
  LOADN R11 2
  SETTABLEKS R11 R10 K19 ["LayoutOrder"]
  DUPTABLE R11 K63 [{"TextLabel"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K65 [{"AutomaticSize", "Size", "Text", "TextXAlignment"}]
  GETIMPORT R15 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K17 ["AutomaticSize"]
  GETTABLEKS R15 R2 K34 ["OverrideSize"]
  SETTABLEKS R15 R14 K29 ["Size"]
  LOADK R17 K2 ["MaterialOverrides"]
  LOADK R18 K66 ["OverrideUnavailable"]
  NAMECALL R15 R3 K12 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K44 ["Text"]
  GETIMPORT R15 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K64 ["TextXAlignment"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K62 ["TextLabel"]
  CALL R8 3 1
  MOVE R7 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K69 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "Padding"}]
  GETIMPORT R11 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K17 ["AutomaticSize"]
  GETIMPORT R11 K38 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K32 ["HorizontalAlignment"]
  GETIMPORT R11 K71 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K18 ["Layout"]
  GETTABLEKS R11 R1 K19 ["LayoutOrder"]
  SETTABLEKS R11 R10 K19 ["LayoutOrder"]
  GETTABLEKS R11 R2 K68 ["Padding"]
  SETTABLEKS R11 R10 K30 ["Spacing"]
  GETTABLEKS R11 R2 K68 ["Padding"]
  SETTABLEKS R11 R10 K68 ["Padding"]
  DUPTABLE R11 K74 [{"Name", "OverridesPanel"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K77 [{"LayoutOrder", "Font", "Size", "Text", "TextSize", "TextXAlignment"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K19 ["LayoutOrder"]
  GETTABLEKS R15 R2 K78 ["HeaderFont"]
  SETTABLEKS R15 R14 K75 ["Font"]
  GETTABLEKS R15 R2 K79 ["LabelRowSize"]
  SETTABLEKS R15 R14 K29 ["Size"]
  LOADK R17 K2 ["MaterialOverrides"]
  LOADK R18 K2 ["MaterialOverrides"]
  NAMECALL R15 R3 K12 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K44 ["Text"]
  GETTABLEKS R15 R2 K80 ["SectionHeaderTextSize"]
  SETTABLEKS R15 R14 K76 ["TextSize"]
  GETIMPORT R15 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K64 ["TextXAlignment"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K72 ["Name"]
  SETTABLEKS R7 R11 K73 ["OverridesPanel"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["MockMaterial"]
  JUMPIFNOT R2 [+46]
  DUPTABLE R2 K5 [{"Material", "MaterialOverrides", "MaterialOverride", "MaterialStatus"}]
  GETTABLEKS R3 R1 K0 ["MockMaterial"]
  SETTABLEKS R3 R2 K1 ["Material"]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K2 ["MaterialOverrides"]
  GETTABLEKS R6 R1 K0 ["MockMaterial"]
  GETTABLEKS R5 R6 K1 ["Material"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K2 ["MaterialOverrides"]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K3 ["MaterialOverride"]
  GETTABLEKS R6 R1 K0 ["MockMaterial"]
  GETTABLEKS R5 R6 K1 ["Material"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K3 ["MaterialOverride"]
  GETTABLEKS R5 R1 K0 ["MockMaterial"]
  GETTABLEKS R4 R5 K7 ["MaterialVariant"]
  JUMPIF R4 [+10]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K4 ["MaterialStatus"]
  GETTABLEKS R6 R1 K0 ["MockMaterial"]
  GETTABLEKS R5 R6 K1 ["Material"]
  GETTABLE R3 R4 R5
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["MaterialStatus"]
  RETURN R2 1
  GETTABLEKS R3 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R2 R3 K1 ["Material"]
  JUMPIFNOT R2 [+9]
  GETUPVAL R3 0
  GETTABLEKS R6 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R5 R6 K1 ["Material"]
  GETTABLEKS R4 R5 K1 ["Material"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+8]
  DUPTABLE R2 K8 [{"Material"}]
  GETTABLEKS R4 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K1 ["Material"]
  SETTABLEKS R3 R2 K1 ["Material"]
  RETURN R2 1
  DUPTABLE R2 K5 [{"Material", "MaterialOverrides", "MaterialOverride", "MaterialStatus"}]
  GETTABLEKS R4 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R3 R4 K1 ["Material"]
  SETTABLEKS R3 R2 K1 ["Material"]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K2 ["MaterialOverrides"]
  GETTABLEKS R7 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R6 R7 K1 ["Material"]
  GETTABLEKS R5 R6 K1 ["Material"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K2 ["MaterialOverrides"]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K3 ["MaterialOverride"]
  GETTABLEKS R7 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R6 R7 K1 ["Material"]
  GETTABLEKS R5 R6 K1 ["Material"]
  GETTABLE R3 R4 R5
  SETTABLEKS R3 R2 K3 ["MaterialOverride"]
  GETTABLEKS R6 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R5 R6 K1 ["Material"]
  GETTABLEKS R4 R5 K7 ["MaterialVariant"]
  JUMPIF R4 [+12]
  GETTABLEKS R5 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R4 R5 K4 ["MaterialStatus"]
  GETTABLEKS R7 R0 K6 ["MaterialBrowserReducer"]
  GETTABLEKS R6 R7 K1 ["Material"]
  GETTABLEKS R5 R6 K1 ["Material"]
  GETTABLE R3 R4 R5
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["MaterialStatus"]
  RETURN R2 1

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
  GETTABLEKS R12 R10 K19 ["SelectInput"]
  GETTABLEKS R13 R10 K20 ["TextLabel"]
  GETTABLEKS R14 R10 K21 ["TruncatedTextLabel"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K5 ["Src"]
  GETTABLEKS R17 R18 K22 ["Controllers"]
  GETTABLEKS R16 R17 K23 ["MaterialServiceController"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R20 R0 K5 ["Src"]
  GETTABLEKS R19 R20 K24 ["Resources"]
  GETTABLEKS R18 R19 K25 ["Constants"]
  GETTABLEKS R17 R18 K26 ["getSupportedMaterials"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K5 ["Src"]
  GETTABLEKS R19 R20 K27 ["Components"]
  GETTABLEKS R18 R19 K28 ["StatusIcon"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K5 ["Src"]
  GETTABLEKS R20 R21 K29 ["Reducers"]
  GETTABLEKS R19 R20 K30 ["MainReducer"]
  CALL R18 1 1
  MOVE R19 R16
  CALL R19 0 1
  GETTABLEKS R20 R2 K31 ["PureComponent"]
  LOADK R22 K32 ["MaterialOverrides"]
  NAMECALL R20 R20 K33 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K34 [PROTO_1]
  SETTABLEKS R21 R20 K35 ["init"]
  DUPCLOSURE R21 K36 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R14
  SETTABLEKS R21 R20 K37 ["render"]
  MOVE R21 R7
  DUPTABLE R22 K38 [{"Analytics", "Localization", "MaterialServiceController", "Stylizer"}]
  SETTABLEKS R8 R22 K15 ["Analytics"]
  SETTABLEKS R9 R22 K16 ["Localization"]
  SETTABLEKS R15 R22 K23 ["MaterialServiceController"]
  SETTABLEKS R5 R22 K12 ["Stylizer"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  GETTABLEKS R21 R3 K39 ["connect"]
  DUPCLOSURE R22 K40 [PROTO_3]
  CAPTURE VAL R19
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 -1
  RETURN R21 -1
