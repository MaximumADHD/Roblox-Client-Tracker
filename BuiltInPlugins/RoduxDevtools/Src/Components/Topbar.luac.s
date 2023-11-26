PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClearList"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClearList"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K8 [{"Style", "Size", "Layout", "VerticalAlignment", "HorizontalAlignment", "Spacing"}]
  LOADK R5 K9 ["None"]
  SETTABLEKS R5 R4 K2 ["Style"]
  GETIMPORT R5 K12 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 32
  CALL R5 4 1
  SETTABLEKS R5 R4 K3 ["Size"]
  GETIMPORT R5 K16 [Enum.FillDirection.Horizontal]
  SETTABLEKS R5 R4 K4 ["Layout"]
  GETIMPORT R5 K18 [Enum.VerticalAlignment.Center]
  SETTABLEKS R5 R4 K5 ["VerticalAlignment"]
  GETIMPORT R5 K20 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R5 R4 K6 ["HorizontalAlignment"]
  LOADN R5 5
  SETTABLEKS R5 R4 K7 ["Spacing"]
  DUPTABLE R5 K23 [{"SearchBar", "ClearList"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K32 [{"LayoutOrder", "Width", "IncrementalTextSearch", "IncrementalTextSearchDelay", "ShowSearchButton", "ShowSearchIcon", "PlaceholderText", "OnSearchRequested"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K24 ["LayoutOrder"]
  LOADN R9 44
  SETTABLEKS R9 R8 K25 ["Width"]
  LOADB R9 1
  SETTABLEKS R9 R8 K26 ["IncrementalTextSearch"]
  LOADN R9 150
  SETTABLEKS R9 R8 K27 ["IncrementalTextSearchDelay"]
  LOADB R9 0
  SETTABLEKS R9 R8 K28 ["ShowSearchButton"]
  LOADB R9 1
  SETTABLEKS R9 R8 K29 ["ShowSearchIcon"]
  GETTABLEKS R9 R1 K33 ["Localization"]
  LOADK R11 K34 ["Topbar"]
  LOADK R12 K35 ["SearchbarPlaceholder"]
  NAMECALL R9 R9 K36 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K30 ["PlaceholderText"]
  GETTABLEKS R9 R1 K37 ["OnSearch"]
  SETTABLEKS R9 R8 K31 ["OnSearchRequested"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K21 ["SearchBar"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K44 [{"LayoutOrder", "Size", "AutomaticSize", "LeftIcon", "Text", "TooltipText", "Disabled", "OnClick"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K24 ["LayoutOrder"]
  GETIMPORT R9 K46 [UDim2.fromScale]
  LOADN R10 0
  LOADN R11 1
  CALL R9 2 1
  SETTABLEKS R9 R8 K3 ["Size"]
  GETIMPORT R9 K48 [Enum.AutomaticSize.X]
  SETTABLEKS R9 R8 K38 ["AutomaticSize"]
  LOADK R9 K49 ["rbxasset://textures/RoduxDevtools/ClearList.png"]
  SETTABLEKS R9 R8 K39 ["LeftIcon"]
  GETTABLEKS R9 R1 K33 ["Localization"]
  LOADK R11 K34 ["Topbar"]
  LOADK R12 K50 ["ClearList.Text"]
  NAMECALL R9 R9 K36 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K40 ["Text"]
  GETTABLEKS R9 R1 K33 ["Localization"]
  LOADK R11 K34 ["Topbar"]
  LOADK R12 K51 ["ClearList.Tooltip"]
  NAMECALL R9 R9 K36 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K41 ["TooltipText"]
  GETTABLEKS R10 R1 K52 ["EventCount"]
  JUMPIFEQKN R10 K53 [0] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K42 ["Disabled"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K43 ["OnClick"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K22 ["ClearList"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  DUPTABLE R2 K2 [{"SearchTerm", "EventCount"}]
  GETTABLEKS R3 R0 K3 ["searchTerm"]
  SETTABLEKS R3 R2 K0 ["SearchTerm"]
  GETTABLEKS R4 R0 K4 ["events"]
  LENGTH R3 R4
  SETTABLEKS R3 R2 K1 ["EventCount"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R7 R5 K13 ["Analytics"]
  GETTABLEKS R8 R5 K14 ["Localization"]
  GETTABLEKS R10 R4 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["Stylizer"]
  GETTABLEKS R10 R4 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["Pane"]
  GETTABLEKS R12 R10 K19 ["IconButton"]
  GETTABLEKS R13 R10 K20 ["SearchBar"]
  GETTABLEKS R14 R2 K21 ["PureComponent"]
  LOADK R16 K22 ["Topbar"]
  NAMECALL R14 R14 K23 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K24 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R15 R14 K25 ["render"]
  MOVE R15 R6
  DUPTABLE R16 K26 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R7 R16 K13 ["Analytics"]
  SETTABLEKS R8 R16 K14 ["Localization"]
  SETTABLEKS R9 R16 K16 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  GETTABLEKS R15 R3 K27 ["connect"]
  DUPCLOSURE R16 K28 [PROTO_2]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 -1
  RETURN R15 -1
