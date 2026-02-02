PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  GETTABLEKS R5 R3 K4 ["Padding"]
  GETTABLEKS R6 R1 K5 ["OnSearchRequested"]
  GETTABLEKS R7 R1 K6 ["OnClickAddNewInstance"]
  GETTABLEKS R8 R1 K7 ["OnInstanceSelectorValidSelection"]
  GETTABLEKS R9 R1 K8 ["OnInstanceSelectorInvalidSelection"]
  GETTABLEKS R10 R1 K9 ["IsSelectedInstanceValid"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["new"]
  CALL R11 0 1
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K11 ["LOCALIZATION_PROJECT_NAME"]
  LOADK R15 K12 ["PreviewTopBar"]
  LOADK R16 K13 ["Tooltip"]
  NAMECALL R12 R4 K14 ["getProjectText"]
  CALL R12 4 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K15 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K21 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
  GETIMPORT R16 K23 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETTABLEKS R20 R3 K24 ["Height"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K16 ["Size"]
  SETTABLEKS R2 R15 K1 ["LayoutOrder"]
  GETIMPORT R16 K28 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K17 ["Layout"]
  GETIMPORT R16 K30 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K18 ["HorizontalAlignment"]
  GETIMPORT R16 K32 [Enum.VerticalAlignment.Center]
  SETTABLEKS R16 R15 K19 ["VerticalAlignment"]
  SETTABLEKS R5 R15 K20 ["Spacing"]
  DUPTABLE R16 K34 [{"Left", "Right"}]
  SETTABLEKS R5 R16 K29 ["Left"]
  SETTABLEKS R5 R16 K33 ["Right"]
  SETTABLEKS R16 R15 K4 ["Padding"]
  DUPTABLE R16 K37 [{"AddItemButton", "SearchBarContainer"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K15 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K38 [{"Size", "LayoutOrder", "IsSelectedInstanceValid", "Tooltip", "OnClickAddNewInstance", "OnInstanceSelectorValidSelection", "OnInstanceSelectorInvalidSelection"}]
  GETIMPORT R20 K40 [UDim2.fromOffset]
  GETTABLEKS R21 R3 K41 ["ButtonWidth"]
  GETTABLEKS R22 R3 K24 ["Height"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K16 ["Size"]
  NAMECALL R20 R11 K42 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K1 ["LayoutOrder"]
  SETTABLEKS R10 R19 K9 ["IsSelectedInstanceValid"]
  SETTABLEKS R12 R19 K13 ["Tooltip"]
  SETTABLEKS R7 R19 K6 ["OnClickAddNewInstance"]
  SETTABLEKS R8 R19 K7 ["OnInstanceSelectorValidSelection"]
  SETTABLEKS R9 R19 K8 ["OnInstanceSelectorInvalidSelection"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K35 ["AddItemButton"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K15 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K43 [{"Size", "LayoutOrder"}]
  GETIMPORT R20 K23 [UDim2.new]
  LOADN R21 1
  GETTABLEKS R24 R3 K41 ["ButtonWidth"]
  MINUS R23 R24
  MULK R24 R5 K44 [3]
  SUB R22 R23 R24
  LOADN R23 0
  GETTABLEKS R24 R3 K24 ["Height"]
  CALL R20 4 1
  SETTABLEKS R20 R19 K16 ["Size"]
  NAMECALL R20 R11 K42 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K1 ["LayoutOrder"]
  DUPTABLE R20 K46 [{"SearchBar"}]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 5
  DUPTABLE R23 K50 [{"PlaceholderText", "ShowSearchIcon", "ShowSearchButton", "OnSearchRequested"}]
  GETUPVAL R27 1
  GETTABLEKS R26 R27 K11 ["LOCALIZATION_PROJECT_NAME"]
  LOADK R27 K12 ["PreviewTopBar"]
  LOADK R28 K51 ["SearchBarPlaceholder"]
  NAMECALL R24 R4 K14 ["getProjectText"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K47 ["PlaceholderText"]
  LOADB R24 1
  SETTABLEKS R24 R23 K48 ["ShowSearchIcon"]
  LOADB R24 0
  SETTABLEKS R24 R23 K49 ["ShowSearchButton"]
  SETTABLEKS R6 R23 K5 ["OnSearchRequested"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K45 ["SearchBar"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K36 ["SearchBarContainer"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K6 ["Components"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K7 ["InstanceSelectorButton"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R0 K8 ["Resources"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R1 K9 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K10 ["ContextServices"]
  GETTABLEKS R8 R7 K11 ["withContext"]
  GETTABLEKS R9 R6 K12 ["UI"]
  GETTABLEKS R10 R9 K13 ["Pane"]
  GETTABLEKS R11 R9 K14 ["SearchBar"]
  GETTABLEKS R12 R6 K15 ["Util"]
  GETTABLEKS R13 R12 K16 ["Typecheck"]
  GETTABLEKS R14 R12 K17 ["LayoutOrderIterator"]
  GETTABLEKS R15 R2 K18 ["PureComponent"]
  LOADK R17 K19 ["PreviewTopBar"]
  NAMECALL R15 R15 K20 ["extend"]
  CALL R15 2 1
  GETTABLEKS R16 R13 K21 ["wrap"]
  MOVE R17 R15
  GETIMPORT R18 K1 [script]
  CALL R16 2 0
  DUPTABLE R16 K23 [{"LayoutOrder"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  SETTABLEKS R16 R15 K24 ["defaultProps"]
  DUPCLOSURE R16 K25 [PROTO_0]
  CAPTURE VAL R14
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R11
  SETTABLEKS R16 R15 K26 ["render"]
  MOVE R16 R8
  DUPTABLE R17 K29 [{"Localization", "Stylizer"}]
  GETTABLEKS R18 R7 K27 ["Localization"]
  SETTABLEKS R18 R17 K27 ["Localization"]
  GETTABLEKS R18 R7 K28 ["Stylizer"]
  SETTABLEKS R18 R17 K28 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
