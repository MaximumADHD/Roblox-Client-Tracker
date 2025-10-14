PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"label", "isChecked", "onActivated", "size", "Size"}]
  GETTABLEKS R5 R0 K7 ["Text"]
  SETTABLEKS R5 R4 K1 ["label"]
  GETTABLEKS R6 R0 K9 ["Enabled"]
  ORK R5 R6 K8 [False]
  SETTABLEKS R5 R4 K2 ["isChecked"]
  GETTABLEKS R5 R0 K10 ["OnClick"]
  SETTABLEKS R5 R4 K3 ["onActivated"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["InputSize"]
  GETTABLEKS R5 R6 K12 ["Small"]
  SETTABLEKS R5 R4 K4 ["size"]
  GETIMPORT R5 K15 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Size"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"LayoutOrder", "tag"}]
  GETTABLEKS R4 R0 K1 ["LayoutOrder"]
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  LOADK R4 K4 ["col gap-small auto-xy"]
  SETTABLEKS R4 R3 K2 ["tag"]
  DUPTABLE R4 K8 [{"TopDivider", "Label", "ItemView"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K10 [{"LayoutOrder", "orientation"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K11 ["DividerOrientation"]
  GETTABLEKS R8 R9 K12 ["Horizontal"]
  SETTABLEKS R8 R7 K9 ["orientation"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["TopDivider"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K14 [{"LayoutOrder", "Text", "tag"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  GETTABLEKS R8 R0 K15 ["Name"]
  SETTABLEKS R8 R7 K13 ["Text"]
  LOADK R8 K16 ["auto-xy text-title-medium content-emphasis"]
  SETTABLEKS R8 R7 K2 ["tag"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Label"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K3 [{"LayoutOrder", "tag"}]
  LOADN R8 3
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  LOADK R8 K17 ["col gap-xsmall size-full-0 auto-y"]
  SETTABLEKS R8 R7 K2 ["tag"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K18 ["map"]
  GETTABLEKS R9 R0 K19 ["Items"]
  DUPCLOSURE R10 K20 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U3
  CALL R8 2 -1
  CALL R5 -1 1
  SETTABLEKS R5 R4 K7 ["ItemView"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["Enums"]
  GETTABLEKS R5 R3 K11 ["View"]
  GETTABLEKS R6 R3 K12 ["Text"]
  GETTABLEKS R7 R3 K13 ["Divider"]
  GETIMPORT R8 K5 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K14 ["Parent"]
  GETTABLEKS R9 R10 K15 ["FilterTypeButton"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K14 ["Parent"]
  GETTABLEKS R10 R11 K16 ["useFilterTypeTable"]
  CALL R9 1 1
  DUPCLOSURE R10 K17 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R8
  RETURN R10 1
