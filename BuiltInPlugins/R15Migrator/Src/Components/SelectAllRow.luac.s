PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  ORK R4 R5 K3 [-1]
  GETTABLEKS R5 R1 K5 ["Padding"]
  JUMPIF R5 [+2]
  GETTABLEKS R5 R2 K5 ["Padding"]
  GETTABLEKS R6 R1 K6 ["Spacing"]
  JUMPIF R6 [+2]
  GETTABLEKS R6 R2 K6 ["Spacing"]
  GETTABLEKS R7 R1 K7 ["RowHeight"]
  JUMPIF R7 [+2]
  GETTABLEKS R7 R2 K7 ["RowHeight"]
  GETTABLEKS R8 R1 K8 ["IsChecked"]
  GETTABLEKS R9 R1 K9 ["OnCheckboxClick"]
  GETTABLEKS R10 R1 K10 ["OnResetPlugin"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K11 ["new"]
  CALL R11 0 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K12 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K14 [{"Size", "LayoutOrder"}]
  GETIMPORT R15 K16 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  MOVE R19 R7
  CALL R15 4 1
  SETTABLEKS R15 R14 K13 ["Size"]
  SETTABLEKS R4 R14 K4 ["LayoutOrder"]
  NEWTABLE R15 0 2
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K12 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K20 [{"Size", "HorizontalAlignment", "VerticalAlignment", "Layout", "Padding", "Spacing"}]
  GETIMPORT R19 K16 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  MOVE R23 R7
  CALL R19 4 1
  SETTABLEKS R19 R18 K13 ["Size"]
  GETIMPORT R19 K23 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K17 ["HorizontalAlignment"]
  GETIMPORT R19 K25 [Enum.VerticalAlignment.Center]
  SETTABLEKS R19 R18 K18 ["VerticalAlignment"]
  GETIMPORT R19 K28 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K19 ["Layout"]
  SETTABLEKS R5 R18 K5 ["Padding"]
  SETTABLEKS R6 R18 K6 ["Spacing"]
  DUPTABLE R19 K31 [{"Checkbox", "SelectAllLabel"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K12 ["createElement"]
  GETUPVAL R21 3
  DUPTABLE R22 K34 [{"LayoutOrder", "Checked", "OnClick"}]
  NAMECALL R23 R11 K35 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K4 ["LayoutOrder"]
  SETTABLEKS R8 R22 K32 ["Checked"]
  SETTABLEKS R9 R22 K33 ["OnClick"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K29 ["Checkbox"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K12 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K39 [{"LayoutOrder", "Text", "Style", "AutomaticSize"}]
  NAMECALL R23 R11 K35 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K4 ["LayoutOrder"]
  LOADK R25 K40 ["ScriptConversion"]
  LOADK R26 K41 ["SelectAll"]
  NAMECALL R23 R3 K42 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K36 ["Text"]
  GETTABLEKS R23 R2 K43 ["TextConfig"]
  SETTABLEKS R23 R22 K37 ["Style"]
  GETIMPORT R23 K45 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K38 ["AutomaticSize"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K30 ["SelectAllLabel"]
  CALL R16 3 1
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K52 [{"LeftIcon", "Cursor", "OnClick", "Size", "AnchorPoint", "Position", "BackgroundStyle", "TooltipText"}]
  GETTABLEKS R21 R2 K53 ["RefreshButton"]
  GETTABLEKS R20 R21 K54 ["Icon"]
  SETTABLEKS R20 R19 K46 ["LeftIcon"]
  LOADK R20 K55 ["PointingHand"]
  SETTABLEKS R20 R19 K47 ["Cursor"]
  SETTABLEKS R10 R19 K33 ["OnClick"]
  GETTABLEKS R21 R2 K53 ["RefreshButton"]
  GETTABLEKS R20 R21 K13 ["Size"]
  SETTABLEKS R20 R19 K13 ["Size"]
  GETIMPORT R20 K57 [Vector2.new]
  LOADN R21 1
  LOADK R22 K58 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K48 ["AnchorPoint"]
  GETIMPORT R20 K16 [UDim2.new]
  LOADN R21 1
  LOADN R22 240
  LOADK R23 K58 [0.5]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K49 ["Position"]
  GETTABLEKS R21 R2 K53 ["RefreshButton"]
  GETTABLEKS R20 R21 K50 ["BackgroundStyle"]
  SETTABLEKS R20 R19 K50 ["BackgroundStyle"]
  LOADK R22 K59 ["Summary"]
  LOADK R23 K60 ["Refresh"]
  NAMECALL R20 R3 K42 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K51 ["TooltipText"]
  CALL R17 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETTABLEKS R4 R1 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["Pane"]
  GETTABLEKS R6 R4 K12 ["Checkbox"]
  GETTABLEKS R7 R4 K13 ["TextLabel"]
  GETTABLEKS R8 R4 K14 ["IconButton"]
  GETTABLEKS R9 R1 K15 ["Util"]
  GETTABLEKS R10 R9 K16 ["LayoutOrderIterator"]
  GETTABLEKS R11 R2 K17 ["PureComponent"]
  LOADK R13 K18 ["SelectAllRow"]
  NAMECALL R11 R11 K19 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K20 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K21 ["render"]
  GETTABLEKS R12 R3 K22 ["withContext"]
  DUPTABLE R13 K25 [{"Stylizer", "Localization"}]
  GETTABLEKS R14 R3 K23 ["Stylizer"]
  SETTABLEKS R14 R13 K23 ["Stylizer"]
  GETTABLEKS R14 R3 K24 ["Localization"]
  SETTABLEKS R14 R13 K24 ["Localization"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
