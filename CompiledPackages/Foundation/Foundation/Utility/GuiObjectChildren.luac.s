PROTO_0:
  DUPTABLE R1 K9 [{"Children", "AspectRatio", "CornerRadius", "FlexItem", "ListLayout", "SizeConstraint", "Padding", "Scale", "Stroke"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["createElement"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["Fragment"]
  NEWTABLE R4 0 0
  GETTABLEKS R5 R0 K12 ["children"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["Children"]
  GETTABLEKS R3 R0 K13 ["aspectRatio"]
  JUMPIFEQKNIL R3 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K15 [{"value"}]
  GETTABLEKS R5 R0 K13 ["aspectRatio"]
  SETTABLEKS R5 R4 K14 ["value"]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["AspectRatio"]
  GETTABLEKS R3 R0 K16 ["cornerRadius"]
  JUMPIFEQKNIL R3 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["createElement"]
  LOADK R3 K17 ["UICorner"]
  DUPTABLE R4 K18 [{"CornerRadius"}]
  GETTABLEKS R5 R0 K16 ["cornerRadius"]
  SETTABLEKS R5 R4 K2 ["CornerRadius"]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["CornerRadius"]
  GETTABLEKS R3 R0 K19 ["flexItem"]
  JUMPIFEQKNIL R3 [+32]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["createElement"]
  LOADK R3 K20 ["UIFlexItem"]
  DUPTABLE R4 K25 [{"FlexMode", "GrowRatio", "ShrinkRatio", "ItemLineAlignment"}]
  GETTABLEKS R6 R0 K19 ["flexItem"]
  GETTABLEKS R5 R6 K21 ["FlexMode"]
  SETTABLEKS R5 R4 K21 ["FlexMode"]
  GETTABLEKS R6 R0 K19 ["flexItem"]
  GETTABLEKS R5 R6 K22 ["GrowRatio"]
  SETTABLEKS R5 R4 K22 ["GrowRatio"]
  GETTABLEKS R6 R0 K19 ["flexItem"]
  GETTABLEKS R5 R6 K23 ["ShrinkRatio"]
  SETTABLEKS R5 R4 K23 ["ShrinkRatio"]
  GETTABLEKS R6 R0 K19 ["flexItem"]
  GETTABLEKS R5 R6 K24 ["ItemLineAlignment"]
  SETTABLEKS R5 R4 K24 ["ItemLineAlignment"]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["FlexItem"]
  GETTABLEKS R3 R0 K26 ["layout"]
  JUMPIFEQKNIL R3 [+68]
  GETTABLEKS R4 R0 K26 ["layout"]
  GETTABLEKS R3 R4 K27 ["FillDirection"]
  JUMPIFEQKNIL R3 [+62]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["createElement"]
  LOADK R3 K28 ["UIListLayout"]
  DUPTABLE R4 K35 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
  GETTABLEKS R6 R0 K26 ["layout"]
  GETTABLEKS R5 R6 K27 ["FillDirection"]
  SETTABLEKS R5 R4 K27 ["FillDirection"]
  GETTABLEKS R6 R0 K26 ["layout"]
  GETTABLEKS R5 R6 K24 ["ItemLineAlignment"]
  SETTABLEKS R5 R4 K24 ["ItemLineAlignment"]
  GETTABLEKS R6 R0 K26 ["layout"]
  GETTABLEKS R5 R6 K29 ["HorizontalAlignment"]
  SETTABLEKS R5 R4 K29 ["HorizontalAlignment"]
  GETTABLEKS R6 R0 K26 ["layout"]
  GETTABLEKS R5 R6 K30 ["HorizontalFlex"]
  SETTABLEKS R5 R4 K30 ["HorizontalFlex"]
  GETTABLEKS R6 R0 K26 ["layout"]
  GETTABLEKS R5 R6 K31 ["VerticalAlignment"]
  SETTABLEKS R5 R4 K31 ["VerticalAlignment"]
  GETTABLEKS R6 R0 K26 ["layout"]
  GETTABLEKS R5 R6 K32 ["VerticalFlex"]
  SETTABLEKS R5 R4 K32 ["VerticalFlex"]
  GETTABLEKS R6 R0 K26 ["layout"]
  GETTABLEKS R5 R6 K6 ["Padding"]
  SETTABLEKS R5 R4 K6 ["Padding"]
  GETTABLEKS R6 R0 K26 ["layout"]
  GETTABLEKS R5 R6 K33 ["SortOrder"]
  SETTABLEKS R5 R4 K33 ["SortOrder"]
  GETTABLEKS R6 R0 K26 ["layout"]
  GETTABLEKS R5 R6 K34 ["Wraps"]
  SETTABLEKS R5 R4 K34 ["Wraps"]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["ListLayout"]
  GETTABLEKS R3 R0 K36 ["sizeConstraint"]
  JUMPIFEQKNIL R3 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["createElement"]
  LOADK R3 K37 ["UISizeConstraint"]
  GETTABLEKS R4 R0 K36 ["sizeConstraint"]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K5 ["SizeConstraint"]
  GETTABLEKS R3 R0 K38 ["padding"]
  JUMPIFEQKNIL R3 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K15 [{"value"}]
  GETTABLEKS R5 R0 K38 ["padding"]
  SETTABLEKS R5 R4 K14 ["value"]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K6 ["Padding"]
  GETTABLEKS R3 R0 K39 ["scale"]
  JUMPIFEQKNIL R3 [+12]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["createElement"]
  LOADK R3 K40 ["UIScale"]
  DUPTABLE R4 K41 [{"Scale"}]
  GETTABLEKS R5 R0 K39 ["scale"]
  SETTABLEKS R5 R4 K7 ["Scale"]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["Scale"]
  GETTABLEKS R3 R0 K42 ["stroke"]
  JUMPIFEQKNIL R3 [+9]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["createElement"]
  LOADK R3 K43 ["UIStroke"]
  GETTABLEKS R4 R0 K42 ["stroke"]
  CALL R2 2 1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K8 ["Stroke"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Padding"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["AspectRatio"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K11 ["Types"]
  CALL R5 1 1
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R6 1
