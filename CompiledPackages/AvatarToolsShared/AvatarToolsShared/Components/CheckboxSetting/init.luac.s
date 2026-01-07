PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Size"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["Title"]
  GETTABLEKS R5 R1 K4 ["Enabled"]
  GETTABLEKS R6 R1 K5 ["Selected"]
  GETTABLEKS R7 R1 K6 ["OnToggle"]
  GETTABLEKS R8 R1 K7 ["Stylizer"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["new"]
  CALL R9 0 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K13 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
  SETTABLEKS R2 R12 K1 ["Size"]
  SETTABLEKS R3 R12 K2 ["LayoutOrder"]
  GETIMPORT R13 K17 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K10 ["Layout"]
  GETIMPORT R13 K19 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K11 ["HorizontalAlignment"]
  GETTABLEKS R13 R8 K20 ["FramePadding"]
  SETTABLEKS R13 R12 K12 ["Spacing"]
  DUPTABLE R13 K23 [{"Label", "CheckboxContainer"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K27 [{"Text", "AutomaticSize", "LayoutOrder", "TextXAlignment"}]
  SETTABLEKS R4 R16 K24 ["Text"]
  GETIMPORT R17 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K25 ["AutomaticSize"]
  NAMECALL R17 R9 K30 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K2 ["LayoutOrder"]
  GETIMPORT R17 K31 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K26 ["TextXAlignment"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["Label"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K33 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Padding"}]
  GETIMPORT R17 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K25 ["AutomaticSize"]
  NAMECALL R17 R9 K30 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K2 ["LayoutOrder"]
  GETIMPORT R17 K17 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K10 ["Layout"]
  GETIMPORT R17 K35 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R17 R16 K11 ["HorizontalAlignment"]
  DUPTABLE R17 K36 [{"Right"}]
  GETTABLEKS R18 R8 K20 ["FramePadding"]
  SETTABLEKS R18 R17 K34 ["Right"]
  SETTABLEKS R17 R16 K32 ["Padding"]
  DUPTABLE R17 K38 [{"CheckboxToggle"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K41 [{"Disabled", "Selected", "OnClick", "Size"}]
  NOT R21 R5
  SETTABLEKS R21 R20 K39 ["Disabled"]
  SETTABLEKS R6 R20 K5 ["Selected"]
  SETTABLEKS R7 R20 K40 ["OnClick"]
  GETTABLEKS R21 R8 K42 ["BoxSize"]
  SETTABLEKS R21 R20 K1 ["Size"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K37 ["CheckboxToggle"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K22 ["CheckboxContainer"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["ContextServices"]
  GETTABLEKS R4 R3 K8 ["withContext"]
  GETTABLEKS R5 R2 K9 ["UI"]
  GETTABLEKS R6 R5 K10 ["ToggleButton"]
  GETTABLEKS R7 R5 K11 ["TextLabel"]
  GETTABLEKS R8 R5 K12 ["Pane"]
  GETTABLEKS R9 R2 K13 ["Util"]
  GETTABLEKS R10 R9 K14 ["LayoutOrderIterator"]
  GETTABLEKS R11 R9 K15 ["Typecheck"]
  GETTABLEKS R12 R1 K16 ["PureComponent"]
  LOADK R14 K17 ["CheckboxSetting"]
  NAMECALL R12 R12 K18 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R11 K19 ["wrap"]
  MOVE R14 R12
  GETIMPORT R15 K1 [script]
  CALL R13 2 0
  DUPCLOSURE R13 K20 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R13 R12 K21 ["render"]
  MOVE R13 R4
  DUPTABLE R14 K23 [{"Stylizer"}]
  GETTABLEKS R15 R3 K22 ["Stylizer"]
  SETTABLEKS R15 R14 K22 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
