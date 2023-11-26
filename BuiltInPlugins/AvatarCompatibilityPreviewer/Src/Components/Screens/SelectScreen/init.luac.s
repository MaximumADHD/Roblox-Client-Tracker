PROTO_0:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["selectScreenChoice"]
  LOADK R3 K1 ["CurrentPlace"]
  NAMECALL R0 R0 K2 ["report"]
  CALL R0 3 0
  GETUPVAL R0 1
  LOADK R1 K1 ["CurrentPlace"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 2
  LOADK R4 K1 ["SelectScreen"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["useState"]
  LOADNIL R4
  CALL R3 1 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  NEWTABLE R7 0 0
  CALL R5 2 1
  JUMPIFNOTEQKS R3 K4 ["CurrentPlace"] [+10]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K7 [{"GoBack"}]
  SETTABLEKS R5 R8 K6 ["GoBack"]
  CALL R6 2 -1
  RETURN R6 -1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K8 ["new"]
  CALL R6 0 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K13 [{"Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R10 K17 [Enum.FillDirection.Vertical]
  SETTABLEKS R10 R9 K9 ["Layout"]
  GETTABLEKS R10 R2 K10 ["Spacing"]
  SETTABLEKS R10 R9 K10 ["Spacing"]
  GETIMPORT R10 K19 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R10 R9 K11 ["HorizontalAlignment"]
  GETIMPORT R10 K20 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K12 ["VerticalAlignment"]
  DUPTABLE R10 K23 [{"ImportCharacterFrom", "Buttons"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R12 7
  DUPTABLE R13 K27 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R14 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K24 ["AutomaticSize"]
  NAMECALL R14 R6 K30 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K25 ["LayoutOrder"]
  LOADK R16 K1 ["SelectScreen"]
  LOADK R17 K21 ["ImportCharacterFrom"]
  NAMECALL R14 R1 K31 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K26 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["ImportCharacterFrom"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K5 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K32 [{"AutomaticSize", "Layout", "HorizontalAlignment", "LayoutOrder"}]
  GETIMPORT R14 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K24 ["AutomaticSize"]
  GETIMPORT R14 K34 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K9 ["Layout"]
  GETIMPORT R14 K19 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K11 ["HorizontalAlignment"]
  NAMECALL R14 R6 K30 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K25 ["LayoutOrder"]
  DUPTABLE R14 K35 [{"CurrentPlace"}]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 8
  DUPTABLE R17 K38 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Text"}]
  GETIMPORT R18 K40 [Enum.AutomaticSize.X]
  SETTABLEKS R18 R17 K24 ["AutomaticSize"]
  NAMECALL R18 R6 K30 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K25 ["LayoutOrder"]
  NEWCLOSURE R18 P1
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R18 R17 K36 ["OnClick"]
  GETIMPORT R18 K43 [UDim2.fromOffset]
  LOADN R19 0
  GETTABLEKS R20 R2 K44 ["ButtonHeight"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K37 ["Size"]
  LOADK R20 K1 ["SelectScreen"]
  LOADK R21 K4 ["CurrentPlace"]
  NAMECALL R18 R1 K31 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K26 ["Text"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K4 ["CurrentPlace"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["Buttons"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K12 ["CurrentPlacePage"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["IconButton"]
  GETTABLEKS R7 R5 K15 ["Pane"]
  GETTABLEKS R8 R5 K16 ["TextLabel"]
  GETTABLEKS R10 R1 K17 ["ContextServices"]
  GETTABLEKS R9 R10 K18 ["Analytics"]
  GETTABLEKS R11 R1 K17 ["ContextServices"]
  GETTABLEKS R10 R11 K19 ["Localization"]
  GETTABLEKS R12 R1 K17 ["ContextServices"]
  GETTABLEKS R11 R12 K20 ["Stylizer"]
  GETTABLEKS R13 R1 K21 ["Util"]
  GETTABLEKS R12 R13 K22 ["LayoutOrderIterator"]
  DUPCLOSURE R13 K23 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  RETURN R13 1
