PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnCancel"]
  GETTABLEKS R3 R1 K2 ["OnContinue"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["Localization"]
  GETTABLEKS R6 R1 K5 ["Stylizer"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["new"]
  CALL R7 0 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K14 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "LayoutOrder", "AutomaticSize", "Spacing", "Padding"}]
  GETIMPORT R11 K18 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K8 ["Layout"]
  GETIMPORT R11 K20 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K9 ["HorizontalAlignment"]
  GETIMPORT R11 K22 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K10 ["VerticalAlignment"]
  SETTABLEKS R4 R10 K3 ["LayoutOrder"]
  GETIMPORT R11 K24 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K11 ["AutomaticSize"]
  GETTABLEKS R11 R6 K12 ["Spacing"]
  SETTABLEKS R11 R10 K12 ["Spacing"]
  GETTABLEKS R11 R6 K13 ["Padding"]
  SETTABLEKS R11 R10 K13 ["Padding"]
  DUPTABLE R11 K27 [{"Cancel", "Continue"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K32 [{"Style", "Text", "Size", "OnClick", "LayoutOrder"}]
  LOADK R15 K33 ["Round"]
  SETTABLEKS R15 R14 K28 ["Style"]
  LOADK R17 K34 ["PublishWarningAction"]
  LOADK R18 K25 ["Cancel"]
  NAMECALL R15 R5 K35 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K29 ["Text"]
  GETTABLEKS R15 R6 K36 ["CancelButtonSize"]
  SETTABLEKS R15 R14 K30 ["Size"]
  SETTABLEKS R2 R14 K31 ["OnClick"]
  NAMECALL R15 R7 K37 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K3 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["Cancel"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K32 [{"Style", "Text", "Size", "OnClick", "LayoutOrder"}]
  LOADK R15 K38 ["RoundPrimary"]
  SETTABLEKS R15 R14 K28 ["Style"]
  LOADK R17 K34 ["PublishWarningAction"]
  LOADK R18 K26 ["Continue"]
  NAMECALL R15 R5 K35 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K29 ["Text"]
  GETTABLEKS R15 R6 K39 ["ContinueButtonSize"]
  SETTABLEKS R15 R14 K30 ["Size"]
  SETTABLEKS R3 R14 K31 ["OnClick"]
  NAMECALL R15 R7 K37 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K3 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["Continue"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETTABLEKS R6 R4 K12 ["Button"]
  GETTABLEKS R7 R1 K13 ["Util"]
  GETTABLEKS R8 R7 K14 ["LayoutOrderIterator"]
  GETTABLEKS R9 R2 K15 ["PureComponent"]
  LOADK R11 K16 ["Buttons"]
  NAMECALL R9 R9 K17 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K18 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K19 ["render"]
  GETTABLEKS R10 R3 K20 ["withContext"]
  DUPTABLE R11 K23 [{"Stylizer", "Localization"}]
  GETTABLEKS R12 R3 K21 ["Stylizer"]
  SETTABLEKS R12 R11 K21 ["Stylizer"]
  GETTABLEKS R12 R3 K22 ["Localization"]
  SETTABLEKS R12 R11 K22 ["Localization"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
