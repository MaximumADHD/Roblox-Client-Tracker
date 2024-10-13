PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["itemRow"]
  GETTABLEKS R3 R1 K3 ["HeaderText"]
  GETTABLEKS R4 R1 K4 ["LayoutOrder"]
  GETTABLEKS R5 R1 K5 ["MaxLinesOfText"]
  GETTABLEKS R6 R1 K6 ["Padding"]
  GETTABLEKS R7 R1 K7 ["Size"]
  GETTABLEKS R8 R1 K8 ["Text"]
  GETTABLEKS R9 R1 K9 ["OnClick"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K10 ["new"]
  CALL R10 0 1
  LOADN R11 0
  JUMPIFNOT R5 [+16]
  GETUPVAL R13 1
  LOADK R14 K11 ["A"]
  GETTABLEKS R15 R2 K12 ["textSize"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K13 ["FONT"]
  GETIMPORT R17 K15 [Vector2.new]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 -1
  CALL R13 -1 1
  GETTABLEKS R12 R13 K16 ["Y"]
  MUL R11 R12 R5
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K17 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K23 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R15 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K18 ["AutomaticSize"]
  GETIMPORT R15 K27 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K19 ["HorizontalAlignment"]
  GETIMPORT R15 K30 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K20 ["Layout"]
  SETTABLEKS R4 R14 K4 ["LayoutOrder"]
  GETUPVAL R16 5
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  MOVE R15 R6
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K6 ["Padding"]
  SETTABLEKS R7 R14 K7 ["Size"]
  LOADN R15 2
  SETTABLEKS R15 R14 K21 ["Spacing"]
  GETIMPORT R15 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K22 ["VerticalAlignment"]
  DUPTABLE R15 K34 [{"Header", "Text"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K17 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K38 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextColor", "TextXAlignment", "Size"}]
  GETIMPORT R19 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K18 ["AutomaticSize"]
  NAMECALL R19 R10 K39 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K4 ["LayoutOrder"]
  LOADK R19 K40 ["ToolboxItemRowHeader"]
  SETTABLEKS R19 R18 K35 ["Style"]
  SETTABLEKS R3 R18 K8 ["Text"]
  GETTABLEKS R19 R2 K41 ["headerTextColor"]
  SETTABLEKS R19 R18 K36 ["TextColor"]
  GETIMPORT R19 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K37 ["TextXAlignment"]
  GETIMPORT R19 K44 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K7 ["Size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K33 ["Header"]
  JUMPIFNOT R9 [+44]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K17 ["createElement"]
  GETUPVAL R17 7
  DUPTABLE R18 K48 [{"LayoutOrder", "OnClick", "Size", "Style", "Text", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  NAMECALL R19 R10 K39 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K4 ["LayoutOrder"]
  SETTABLEKS R9 R18 K9 ["OnClick"]
  GETIMPORT R19 K44 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  MOVE R23 R11
  CALL R19 4 1
  SETTABLEKS R19 R18 K7 ["Size"]
  LOADK R19 K49 ["ToolboxItemRowInnerLink"]
  SETTABLEKS R19 R18 K35 ["Style"]
  ORK R19 R8 K50 [""]
  SETTABLEKS R19 R18 K8 ["Text"]
  GETTABLEKS R19 R2 K12 ["textSize"]
  SETTABLEKS R19 R18 K45 ["TextSize"]
  LOADB R19 1
  SETTABLEKS R19 R18 K46 ["TextWrapped"]
  GETIMPORT R19 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K37 ["TextXAlignment"]
  GETIMPORT R19 K51 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K47 ["TextYAlignment"]
  CALL R16 2 1
  JUMP [+56]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K17 ["createElement"]
  GETUPVAL R17 8
  DUPTABLE R18 K53 [{"LayoutOrder", "AutomaticSize", "ClipsDescendants", "Size", "Style", "Text", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment", "VerticalAlignment"}]
  NAMECALL R19 R10 K39 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K4 ["LayoutOrder"]
  JUMPIFNOT R5 [+3]
  GETIMPORT R19 K55 [Enum.AutomaticSize.None]
  JUMP [+2]
  GETIMPORT R19 K25 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K18 ["AutomaticSize"]
  LOADB R19 1
  SETTABLEKS R19 R18 K52 ["ClipsDescendants"]
  GETIMPORT R19 K44 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  MOVE R23 R11
  CALL R19 4 1
  SETTABLEKS R19 R18 K7 ["Size"]
  LOADK R19 K56 ["ToolboxItemRowInnerText"]
  SETTABLEKS R19 R18 K35 ["Style"]
  ORK R19 R8 K50 [""]
  SETTABLEKS R19 R18 K8 ["Text"]
  GETTABLEKS R19 R2 K12 ["textSize"]
  SETTABLEKS R19 R18 K45 ["TextSize"]
  LOADB R19 1
  SETTABLEKS R19 R18 K46 ["TextWrapped"]
  GETIMPORT R19 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K37 ["TextXAlignment"]
  GETIMPORT R19 K51 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K47 ["TextYAlignment"]
  GETIMPORT R19 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K22 ["VerticalAlignment"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K8 ["Text"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K9 ["UI"]
  GETTABLEKS R4 R5 K10 ["LinkText"]
  GETTABLEKS R6 R3 K9 ["UI"]
  GETTABLEKS R5 R6 K11 ["Pane"]
  GETTABLEKS R7 R3 K9 ["UI"]
  GETTABLEKS R6 R7 K12 ["TextLabel"]
  GETTABLEKS R8 R3 K9 ["UI"]
  GETTABLEKS R7 R8 K13 ["TextLabelWithRobloxLinks"]
  GETTABLEKS R9 R3 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["GetTextSize"]
  GETTABLEKS R10 R0 K16 ["Core"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R9 K17 ["Constants"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R9 K18 ["LayoutOrderIterator"]
  CALL R11 1 1
  GETTABLEKS R12 R3 K19 ["ContextServices"]
  GETTABLEKS R13 R12 K20 ["withContext"]
  GETIMPORT R14 K6 [require]
  GETTABLEKS R18 R0 K16 ["Core"]
  GETTABLEKS R17 R18 K14 ["Util"]
  GETTABLEKS R16 R17 K21 ["SharedFlags"]
  GETTABLEKS R15 R16 K22 ["getFFlagToolboxEnableAssetRows"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K23 ["PureComponent"]
  LOADK R17 K24 ["ItemRowMetadataMetadata"]
  NAMECALL R15 R15 K25 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K26 [PROTO_0]
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R7
  SETTABLEKS R16 R15 K27 ["render"]
  MOVE R16 R13
  DUPTABLE R17 K29 [{"Stylizer"}]
  GETTABLEKS R18 R12 K28 ["Stylizer"]
  SETTABLEKS R18 R17 K28 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
