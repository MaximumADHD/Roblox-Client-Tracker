PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"key", "Layout", "HorizontalAlignment", "AutomaticSize", "Spacing", "Padding"}]
  LOADK R4 K7 ["Filters"]
  SETTABLEKS R4 R3 K0 ["key"]
  GETIMPORT R4 K11 [Enum.FillDirection.Horizontal]
  SETTABLEKS R4 R3 K1 ["Layout"]
  GETIMPORT R4 K13 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R4 R3 K2 ["HorizontalAlignment"]
  GETIMPORT R4 K15 [Enum.AutomaticSize.XY]
  SETTABLEKS R4 R3 K3 ["AutomaticSize"]
  LOADN R4 250
  SETTABLEKS R4 R3 K4 ["Spacing"]
  DUPTABLE R4 K17 [{"Left", "Top"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K12 ["Left"]
  LOADN R5 1
  SETTABLEKS R5 R4 K16 ["Top"]
  SETTABLEKS R4 R3 K5 ["Padding"]
  NEWTABLE R4 0 2
  GETUPVAL R5 0
  GETUPVAL R6 2
  DUPTABLE R7 K22 [{"Text", "OnClick", "selected", "PaddingRight"}]
  GETTABLEKS R8 R0 K23 ["LeftText"]
  SETTABLEKS R8 R7 K18 ["Text"]
  GETTABLEKS R8 R0 K24 ["OnClickLeft"]
  SETTABLEKS R8 R7 K19 ["OnClick"]
  GETTABLEKS R8 R0 K25 ["LeftSelected"]
  SETTABLEKS R8 R7 K20 ["selected"]
  LOADN R8 11
  SETTABLEKS R8 R7 K21 ["PaddingRight"]
  CALL R5 2 1
  GETUPVAL R6 0
  GETUPVAL R7 2
  DUPTABLE R8 K26 [{"Text", "OnClick", "selected"}]
  GETTABLEKS R9 R0 K27 ["RightText"]
  SETTABLEKS R9 R8 K18 ["Text"]
  GETTABLEKS R9 R0 K28 ["OnClickRight"]
  SETTABLEKS R9 R8 K19 ["OnClick"]
  GETTABLEKS R9 R0 K29 ["RightSelected"]
  SETTABLEKS R9 R8 K20 ["selected"]
  CALL R6 2 -1
  SETLIST R4 R5 -1 [1]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialPicker"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createElement"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R4 R5 K11 ["Pane"]
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K12 ["Parent"]
  GETTABLEKS R6 R7 K13 ["FilterChip"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETGLOBAL R6 K15 ["FilterChipGroup"]
  GETGLOBAL R6 K15 ["FilterChipGroup"]
  RETURN R6 1
