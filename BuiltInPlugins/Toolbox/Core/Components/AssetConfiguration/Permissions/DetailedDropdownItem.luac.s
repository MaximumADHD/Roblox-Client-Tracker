PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["OnActivated"]
  GETTABLEKS R4 R1 K3 ["Title"]
  GETTABLEKS R5 R1 K4 ["Description"]
  GETTABLEKS R6 R1 K5 ["Stylizer"]
  GETTABLEKS R7 R6 K6 ["detailedDropdown"]
  GETTABLEKS R8 R1 K7 ["Selected"]
  GETTABLEKS R9 R1 K8 ["IsHovered"]
  JUMPIFNOT R9 [+5]
  GETTABLEKS R11 R7 K9 ["hovered"]
  GETTABLEKS R10 R11 K10 ["displayText"]
  JUMPIF R10 [+2]
  GETTABLEKS R10 R7 K10 ["displayText"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K16 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Style"}]
  GETIMPORT R14 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K12 ["AutomaticSize"]
  SETTABLEKS R2 R13 K1 ["LayoutOrder"]
  SETTABLEKS R3 R13 K13 ["OnClick"]
  GETIMPORT R14 K22 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 60
  CALL R14 4 1
  SETTABLEKS R14 R13 K14 ["Size"]
  JUMPIFNOT R8 [+2]
  LOADK R14 K23 ["SelectedDetailedDropdownItem"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K15 ["Style"]
  DUPTABLE R14 K28 [{"UIListLayout", "Padding", "MainTextLabel", "DescriptionTextLabel"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["createElement"]
  LOADK R16 K24 ["UIListLayout"]
  DUPTABLE R17 K30 [{"SortOrder"}]
  GETIMPORT R18 K31 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K29 ["SortOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K24 ["UIListLayout"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["createElement"]
  LOADK R16 K32 ["UIPadding"]
  DUPTABLE R17 K35 [{"PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K37 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K33 ["PaddingTop"]
  GETIMPORT R18 K37 [UDim.new]
  LOADN R19 0
  LOADN R20 10
  CALL R18 2 1
  SETTABLEKS R18 R17 K34 ["PaddingBottom"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["Padding"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["createElement"]
  LOADK R16 K38 ["TextLabel"]
  DUPTABLE R17 K46 [{"AutomaticSize", "BackgroundTransparency", "Size", "Font", "TextSize", "Text", "TextXAlignment", "TextColor3", "TextWrapped", "LayoutOrder"}]
  GETIMPORT R18 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K12 ["AutomaticSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K39 ["BackgroundTransparency"]
  GETIMPORT R18 K22 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K14 ["Size"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K47 ["FONT"]
  SETTABLEKS R18 R17 K40 ["Font"]
  LOADN R18 20
  SETTABLEKS R18 R17 K41 ["TextSize"]
  SETTABLEKS R4 R17 K42 ["Text"]
  GETIMPORT R18 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K43 ["TextXAlignment"]
  SETTABLEKS R10 R17 K44 ["TextColor3"]
  LOADB R18 1
  SETTABLEKS R18 R17 K45 ["TextWrapped"]
  LOADN R18 0
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  DUPTABLE R18 K50 [{"Padding"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K11 ["createElement"]
  LOADK R20 K32 ["UIPadding"]
  DUPTABLE R21 K52 [{"PaddingLeft"}]
  GETIMPORT R22 K37 [UDim.new]
  LOADN R23 0
  LOADN R24 10
  CALL R22 2 1
  SETTABLEKS R22 R21 K51 ["PaddingLeft"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K25 ["Padding"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K26 ["MainTextLabel"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["createElement"]
  LOADK R16 K38 ["TextLabel"]
  DUPTABLE R17 K46 [{"AutomaticSize", "BackgroundTransparency", "Size", "Font", "TextSize", "Text", "TextXAlignment", "TextColor3", "TextWrapped", "LayoutOrder"}]
  GETIMPORT R18 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R18 R17 K12 ["AutomaticSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K39 ["BackgroundTransparency"]
  GETIMPORT R18 K22 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K14 ["Size"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K47 ["FONT"]
  SETTABLEKS R18 R17 K40 ["Font"]
  LOADN R18 18
  SETTABLEKS R18 R17 K41 ["TextSize"]
  SETTABLEKS R5 R17 K42 ["Text"]
  GETIMPORT R18 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K43 ["TextXAlignment"]
  GETTABLEKS R18 R7 K53 ["descriptionText"]
  SETTABLEKS R18 R17 K44 ["TextColor3"]
  LOADB R18 1
  SETTABLEKS R18 R17 K45 ["TextWrapped"]
  LOADN R18 1
  SETTABLEKS R18 R17 K1 ["LayoutOrder"]
  DUPTABLE R18 K50 [{"Padding"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K11 ["createElement"]
  LOADK R20 K32 ["UIPadding"]
  DUPTABLE R21 K55 [{"PaddingRight", "PaddingLeft"}]
  GETIMPORT R22 K37 [UDim.new]
  LOADN R23 0
  LOADN R24 10
  CALL R22 2 1
  SETTABLEKS R22 R21 K54 ["PaddingRight"]
  GETIMPORT R22 K37 [UDim.new]
  LOADN R23 0
  LOADN R24 10
  CALL R22 2 1
  SETTABLEKS R22 R21 K51 ["PaddingLeft"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K25 ["Padding"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K27 ["DescriptionTextLabel"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K8 ["ContextServices"]
  GETTABLEKS R5 R4 K9 ["withContext"]
  GETTABLEKS R7 R3 K10 ["UI"]
  GETTABLEKS R6 R7 K11 ["Button"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Core"]
  GETTABLEKS R9 R10 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K15 ["PureComponent"]
  LOADK R10 K16 ["DetailedDropdownItem"]
  NAMECALL R8 R8 K17 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K18 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K19 ["render"]
  MOVE R9 R5
  DUPTABLE R10 K21 [{"Stylizer"}]
  GETTABLEKS R11 R4 K20 ["Stylizer"]
  SETTABLEKS R11 R10 K20 ["Stylizer"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
