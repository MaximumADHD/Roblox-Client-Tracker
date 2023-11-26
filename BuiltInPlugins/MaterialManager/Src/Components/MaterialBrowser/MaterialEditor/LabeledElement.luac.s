PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["LabeledElement"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["new"]
  CALL R3 0 1
  GETTABLEKS R4 R1 K4 ["FillDirection"]
  JUMPIF R4 [+2]
  GETTABLEKS R4 R2 K4 ["FillDirection"]
  GETTABLEKS R5 R1 K5 ["LabelColumnWidth"]
  GETIMPORT R6 K7 [UDim2.new]
  MOVE R7 R5
  GETTABLEKS R8 R2 K8 ["LabelYSize"]
  CALL R6 2 1
  GETTABLEKS R7 R2 K9 ["ImageSize"]
  GETTABLEKS R8 R1 K10 ["Status"]
  GETTABLEKS R9 R1 K11 ["StatusText"]
  GETTABLEKS R10 R1 K12 ["VerticalAlignment"]
  GETTABLEKS R11 R1 K13 ["Padding"]
  JUMPIF R11 [+16]
  JUMPIFNOT R8 [+5]
  JUMPIFNOT R8 [+13]
  GETIMPORT R12 K17 [Enum.PropertyStatus.Ok]
  JUMPIFNOTEQ R8 R12 [+10]
  DUPTABLE R12 K19 [{"Left"}]
  GETTABLEKS R14 R7 K20 ["Width"]
  GETTABLEKS R13 R14 K21 ["Offset"]
  SETTABLEKS R13 R12 K18 ["Left"]
  MOVE R11 R12
  JUMP [+1]
  LOADNIL R11
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K22 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K27 [{"AutomaticSize", "HorizontalAlignment", "VerticalAlignment", "Layout", "LayoutOrder", "Padding"}]
  GETIMPORT R15 K29 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K23 ["AutomaticSize"]
  GETIMPORT R15 K30 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K24 ["HorizontalAlignment"]
  MOVE R15 R10
  JUMPIF R15 [+2]
  GETIMPORT R15 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K12 ["VerticalAlignment"]
  GETIMPORT R15 K34 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K25 ["Layout"]
  GETTABLEKS R15 R1 K26 ["LayoutOrder"]
  SETTABLEKS R15 R14 K26 ["LayoutOrder"]
  SETTABLEKS R11 R14 K13 ["Padding"]
  DUPTABLE R15 K36 [{"StatusIcon", "LabeledElement"}]
  JUMPIFNOT R8 [+22]
  GETIMPORT R17 K17 [Enum.PropertyStatus.Ok]
  JUMPIFEQ R8 R17 [+19]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K22 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K38 [{"LayoutOrder", "Size", "StatusText", "Status"}]
  NAMECALL R19 R3 K39 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  SETTABLEKS R7 R18 K37 ["Size"]
  SETTABLEKS R9 R18 K11 ["StatusText"]
  SETTABLEKS R8 R18 K10 ["Status"]
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K35 ["StatusIcon"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K22 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K41 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
  GETIMPORT R19 K30 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K24 ["HorizontalAlignment"]
  SETTABLEKS R4 R18 K25 ["Layout"]
  NAMECALL R19 R3 K39 ["getNextOrder"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  LOADN R19 2
  SETTABLEKS R19 R18 K40 ["Spacing"]
  MOVE R19 R10
  JUMPIF R19 [+2]
  GETIMPORT R19 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K12 ["VerticalAlignment"]
  DUPTABLE R19 K44 [{"Label", "ElementListItem"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K22 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K49 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextXAlignment", "TextWrapped"}]
  GETIMPORT R23 K29 [Enum.AutomaticSize.Y]
  SETTABLEKS R23 R22 K23 ["AutomaticSize"]
  GETTABLEKS R23 R1 K45 ["Font"]
  SETTABLEKS R23 R22 K45 ["Font"]
  LOADN R23 1
  SETTABLEKS R23 R22 K26 ["LayoutOrder"]
  SETTABLEKS R6 R22 K37 ["Size"]
  GETTABLEKS R23 R1 K46 ["Text"]
  SETTABLEKS R23 R22 K46 ["Text"]
  GETTABLEKS R23 R1 K47 ["TextXAlignment"]
  JUMPIF R23 [+2]
  GETTABLEKS R23 R2 K47 ["TextXAlignment"]
  SETTABLEKS R23 R22 K47 ["TextXAlignment"]
  LOADB R23 1
  SETTABLEKS R23 R22 K48 ["TextWrapped"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K42 ["Label"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K22 ["createElement"]
  GETUPVAL R21 2
  GETUPVAL R22 5
  DUPTABLE R23 K50 [{"LayoutOrder", "AutomaticSize", "VerticalAlignment"}]
  LOADN R24 2
  SETTABLEKS R24 R23 K26 ["LayoutOrder"]
  GETIMPORT R24 K52 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K23 ["AutomaticSize"]
  SETTABLEKS R10 R23 K12 ["VerticalAlignment"]
  GETTABLEKS R24 R1 K53 ["WrapperProps"]
  CALL R22 2 1
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K54 ["Children"]
  GETTABLE R23 R1 R24
  CALL R20 3 1
  SETTABLEKS R20 R19 K43 ["ElementListItem"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K2 ["LabeledElement"]
  CALL R12 3 -1
  RETURN R12 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Dash"]
  GETTABLEKS R3 R4 K9 ["join"]
  GETTABLEKS R4 R2 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["TextLabel"]
  GETTABLEKS R6 R4 K12 ["Pane"]
  GETTABLEKS R8 R2 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["LayoutOrderIterator"]
  GETTABLEKS R8 R2 K15 ["ContextServices"]
  GETTABLEKS R9 R8 K16 ["withContext"]
  GETTABLEKS R10 R8 K17 ["Analytics"]
  GETTABLEKS R11 R8 K18 ["Localization"]
  GETTABLEKS R13 R2 K19 ["Style"]
  GETTABLEKS R12 R13 K20 ["Stylizer"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K21 ["Src"]
  GETTABLEKS R15 R16 K22 ["Components"]
  GETTABLEKS R14 R15 K23 ["StatusIcon"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K24 ["PureComponent"]
  LOADK R16 K25 ["LabeledElement"]
  NAMECALL R14 R14 K26 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K27 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLEKS R15 R14 K28 ["render"]
  MOVE R15 R9
  DUPTABLE R16 K29 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R10 R16 K17 ["Analytics"]
  SETTABLEKS R11 R16 K18 ["Localization"]
  SETTABLEKS R12 R16 K20 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 1
  MOVE R14 R15
  RETURN R14 1
