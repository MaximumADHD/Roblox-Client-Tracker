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
  GETIMPORT R7 K9 [Enum.PropertyStatus.Ok]
  JUMPIFNOTEQ R5 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  LOADK R7 K10 [""]
  GETIMPORT R8 K12 [Enum.PropertyStatus.Error]
  JUMPIFNOTEQ R5 R8 [+8]
  LOADK R10 K5 ["MaterialStatus"]
  LOADK R11 K13 ["MissingMaterial"]
  NAMECALL R8 R3 K14 ["getText"]
  CALL R8 3 1
  MOVE R7 R8
  JUMP [+10]
  GETIMPORT R8 K16 [Enum.PropertyStatus.Warning]
  JUMPIFNOTEQ R5 R8 [+7]
  LOADK R10 K5 ["MaterialStatus"]
  LOADK R11 K17 ["DuplicateMaterial"]
  NAMECALL R8 R3 K14 ["getText"]
  CALL R8 3 1
  MOVE R7 R8
  JUMPIF R4 [+6]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K18 ["createElement"]
  GETUPVAL R9 1
  CALL R8 1 -1
  RETURN R8 -1
  LOADNIL R8
  GETUPVAL R10 2
  GETTABLEKS R11 R4 K4 ["Material"]
  GETTABLE R9 R10 R11
  JUMPIFNOT R9 [+171]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K18 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K24 [{"AutomaticSize", "Layout", "LayoutOrder", "HorizontalAlignment", "Spacing"}]
  GETIMPORT R12 K26 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K19 ["AutomaticSize"]
  GETIMPORT R12 K29 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K20 ["Layout"]
  LOADN R12 2
  SETTABLEKS R12 R11 K21 ["LayoutOrder"]
  GETIMPORT R12 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K22 ["HorizontalAlignment"]
  GETTABLEKS R12 R2 K23 ["Spacing"]
  SETTABLEKS R12 R11 K23 ["Spacing"]
  DUPTABLE R12 K34 [{"Label", "SelectInputWrapper"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K37 [{"LayoutOrder", "Layout", "Size", "Spacing", "VerticalAlignment", "HorizontalAlignment"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K21 ["LayoutOrder"]
  GETIMPORT R16 K29 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K20 ["Layout"]
  GETTABLEKS R16 R2 K38 ["OverrideSize"]
  SETTABLEKS R16 R15 K35 ["Size"]
  LOADN R16 3
  SETTABLEKS R16 R15 K23 ["Spacing"]
  GETIMPORT R16 K40 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K36 ["VerticalAlignment"]
  GETIMPORT R16 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K22 ["HorizontalAlignment"]
  DUPTABLE R16 K42 [{"Status", "Label"}]
  MOVE R17 R6
  JUMPIFNOT R17 [+17]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K18 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K44 [{"LayoutOrder", "Size", "StatusText", "Status"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K21 ["LayoutOrder"]
  GETTABLEKS R20 R2 K45 ["ImageSize"]
  SETTABLEKS R20 R19 K35 ["Size"]
  SETTABLEKS R7 R19 K43 ["StatusText"]
  SETTABLEKS R5 R19 K41 ["Status"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K41 ["Status"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K18 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K48 [{"AutomaticSize", "LayoutOrder", "Text", "TextTruncate"}]
  GETIMPORT R20 K50 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K19 ["AutomaticSize"]
  LOADN R20 2
  SETTABLEKS R20 R19 K21 ["LayoutOrder"]
  LOADK R22 K2 ["MaterialOverrides"]
  LOADK R23 K51 ["MaterialOverride"]
  NAMECALL R20 R3 K14 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K46 ["Text"]
  JUMPIFNOT R6 [+3]
  GETIMPORT R20 K53 [Enum.TextTruncate.AtEnd]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K47 ["TextTruncate"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K32 ["Label"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K32 ["Label"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K54 [{"AutomaticSize", "LayoutOrder", "Size", "VerticalAlignment"}]
  GETIMPORT R16 K50 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K19 ["AutomaticSize"]
  LOADN R16 2
  SETTABLEKS R16 R15 K21 ["LayoutOrder"]
  GETTABLEKS R16 R2 K38 ["OverrideSize"]
  SETTABLEKS R16 R15 K35 ["Size"]
  GETIMPORT R16 K40 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K36 ["VerticalAlignment"]
  DUPTABLE R16 K56 [{"SelectInput"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K18 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K62 [{"Items", "OnItemActivated", "PlaceholderText", "SelectedIndex", "Width"}]
  GETTABLEKS R20 R1 K2 ["MaterialOverrides"]
  SETTABLEKS R20 R19 K57 ["Items"]
  GETTABLEKS R20 R0 K63 ["onMaterialItemActivated"]
  SETTABLEKS R20 R19 K58 ["OnItemActivated"]
  GETTABLEKS R21 R1 K2 ["MaterialOverrides"]
  GETTABLEKS R22 R1 K51 ["MaterialOverride"]
  GETTABLE R20 R21 R22
  SETTABLEKS R20 R19 K59 ["PlaceholderText"]
  GETTABLEKS R20 R1 K51 ["MaterialOverride"]
  SETTABLEKS R20 R19 K60 ["SelectedIndex"]
  GETTABLEKS R23 R2 K38 ["OverrideSize"]
  GETTABLEKS R22 R23 K64 ["X"]
  GETTABLEKS R21 R22 K65 ["Offset"]
  GETTABLEKS R22 R2 K66 ["Padding"]
  SUB R20 R21 R22
  SETTABLEKS R20 R19 K61 ["Width"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K55 ["SelectInput"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K33 ["SelectInputWrapper"]
  CALL R9 3 1
  MOVE R8 R9
  JUMP [+46]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K18 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K67 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder"}]
  GETIMPORT R12 K50 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K19 ["AutomaticSize"]
  GETIMPORT R12 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K22 ["HorizontalAlignment"]
  LOADN R12 2
  SETTABLEKS R12 R11 K21 ["LayoutOrder"]
  DUPTABLE R12 K69 [{"TextLabel"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K71 [{"AutomaticSize", "Size", "Text", "TextXAlignment"}]
  GETIMPORT R16 K26 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K19 ["AutomaticSize"]
  GETTABLEKS R16 R2 K38 ["OverrideSize"]
  SETTABLEKS R16 R15 K35 ["Size"]
  LOADK R18 K2 ["MaterialOverrides"]
  LOADK R19 K72 ["OverrideUnavailable"]
  NAMECALL R16 R3 K14 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K46 ["Text"]
  GETIMPORT R16 K73 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K70 ["TextXAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K68 ["TextLabel"]
  CALL R9 3 1
  MOVE R8 R9
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K18 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K74 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "Padding"}]
  GETIMPORT R12 K26 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K19 ["AutomaticSize"]
  GETIMPORT R12 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K22 ["HorizontalAlignment"]
  GETIMPORT R12 K76 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K20 ["Layout"]
  GETTABLEKS R12 R1 K21 ["LayoutOrder"]
  SETTABLEKS R12 R11 K21 ["LayoutOrder"]
  GETTABLEKS R12 R2 K66 ["Padding"]
  SETTABLEKS R12 R11 K23 ["Spacing"]
  GETTABLEKS R12 R2 K66 ["Padding"]
  SETTABLEKS R12 R11 K66 ["Padding"]
  DUPTABLE R12 K79 [{"Name", "OverridesPanel"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K82 [{"LayoutOrder", "Font", "Size", "Text", "TextSize", "TextXAlignment"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K21 ["LayoutOrder"]
  GETTABLEKS R16 R2 K83 ["HeaderFont"]
  SETTABLEKS R16 R15 K80 ["Font"]
  GETTABLEKS R16 R2 K84 ["LabelRowSize"]
  SETTABLEKS R16 R15 K35 ["Size"]
  LOADK R18 K2 ["MaterialOverrides"]
  LOADK R19 K2 ["MaterialOverrides"]
  NAMECALL R16 R3 K14 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K46 ["Text"]
  GETTABLEKS R16 R2 K85 ["SectionHeaderTextSize"]
  SETTABLEKS R16 R15 K81 ["TextSize"]
  GETIMPORT R16 K73 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K70 ["TextXAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K77 ["Name"]
  SETTABLEKS R8 R12 K78 ["OverridesPanel"]
  CALL R9 3 -1
  RETURN R9 -1

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
  GETTABLEKS R2 R3 K6 ["Flags"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K7 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K8 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["Stylizer"]
  GETTABLEKS R7 R5 K14 ["ContextServices"]
  GETTABLEKS R8 R7 K15 ["withContext"]
  GETTABLEKS R9 R7 K16 ["Analytics"]
  GETTABLEKS R10 R7 K17 ["Localization"]
  GETTABLEKS R11 R5 K18 ["UI"]
  GETTABLEKS R12 R11 K19 ["Pane"]
  GETTABLEKS R13 R11 K20 ["SelectInput"]
  GETTABLEKS R14 R11 K21 ["TextLabel"]
  GETTABLEKS R15 R11 K22 ["TruncatedTextLabel"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K5 ["Src"]
  GETTABLEKS R18 R19 K23 ["Controllers"]
  GETTABLEKS R17 R18 K24 ["MaterialServiceController"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R21 R0 K5 ["Src"]
  GETTABLEKS R20 R21 K25 ["Resources"]
  GETTABLEKS R19 R20 K26 ["Constants"]
  GETTABLEKS R18 R19 K27 ["getSupportedMaterials"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K5 ["Src"]
  GETTABLEKS R20 R21 K28 ["Components"]
  GETTABLEKS R19 R20 K29 ["StatusIcon"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K5 ["Src"]
  GETTABLEKS R21 R22 K30 ["Reducers"]
  GETTABLEKS R20 R21 K31 ["MainReducer"]
  CALL R19 1 1
  MOVE R20 R17
  CALL R20 0 1
  GETTABLEKS R21 R3 K32 ["PureComponent"]
  LOADK R23 K33 ["MaterialOverrides"]
  NAMECALL R21 R21 K34 ["extend"]
  CALL R21 2 1
  DUPCLOSURE R22 K35 [PROTO_1]
  SETTABLEKS R22 R21 K36 ["init"]
  DUPCLOSURE R22 K37 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R20
  CAPTURE VAL R18
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R15
  SETTABLEKS R22 R21 K38 ["render"]
  MOVE R22 R8
  DUPTABLE R23 K39 [{"Analytics", "Localization", "MaterialServiceController", "Stylizer"}]
  SETTABLEKS R9 R23 K16 ["Analytics"]
  SETTABLEKS R10 R23 K17 ["Localization"]
  SETTABLEKS R16 R23 K24 ["MaterialServiceController"]
  SETTABLEKS R6 R23 K13 ["Stylizer"]
  CALL R22 1 1
  MOVE R23 R21
  CALL R22 1 1
  MOVE R21 R22
  GETTABLEKS R22 R4 K40 ["connect"]
  DUPCLOSURE R23 K41 [PROTO_3]
  CAPTURE VAL R20
  CALL R22 1 1
  MOVE R23 R21
  CALL R22 1 -1
  RETURN R22 -1
