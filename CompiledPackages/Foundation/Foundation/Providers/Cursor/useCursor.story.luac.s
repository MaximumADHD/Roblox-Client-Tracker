PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Dynamic chip clicked!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K3 [{"LayoutOrder", "tag"}]
  LOADN R3 14
  SETTABLEKS R3 R2 K1 ["LayoutOrder"]
  LOADK R3 K4 ["col gap-medium auto-x"]
  SETTABLEKS R3 R2 K2 ["tag"]
  DUPTABLE R3 K6 [{"DynamicChip"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K9 [{"text", "onActivated"}]
  LOADK R7 K10 ["Dynamic Chip (focus me!)"]
  SETTABLEKS R7 R6 K7 ["text"]
  DUPCLOSURE R7 K11 [PROTO_0]
  SETTABLEKS R7 R6 K8 ["onActivated"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["DynamicChip"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Button 1 clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Button 2 clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["Checkbox 1 toggled:"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["Checkbox 2 toggled:"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["Menu item clicked:"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Static Chip 1 clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Static Chip 2 clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Dynamic component toggled:"]
  GETUPVAL R3 1
  NOT R2 R3
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useState"]
  LOADB R1 0
  CALL R0 1 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"tag"}]
  LOADK R5 K4 ["col gap-medium auto-x"]
  SETTABLEKS R5 R4 K2 ["tag"]
  DUPTABLE R5 K20 [{"TestButton1", "TestButton2", "Divider1", "TestCheckbox1", "TestCheckbox2", "Divider2", "TestMenu", "Divider3", "TestChip1", "TestChip2", "Divider4", "DefaultCursor", "Divider5", "ToggleButton", "DynamicSection"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K24 [{"LayoutOrder", "text", "onActivated"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  LOADK R9 K25 ["Button Component 1"]
  SETTABLEKS R9 R8 K22 ["text"]
  DUPCLOSURE R9 K26 [PROTO_2]
  SETTABLEKS R9 R8 K23 ["onActivated"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["TestButton1"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K24 [{"LayoutOrder", "text", "onActivated"}]
  LOADN R9 3
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  LOADK R9 K27 ["Button Component 2"]
  SETTABLEKS R9 R8 K22 ["text"]
  DUPCLOSURE R9 K28 [PROTO_3]
  SETTABLEKS R9 R8 K23 ["onActivated"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["TestButton2"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K29 [{"LayoutOrder"}]
  LOADN R9 4
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["Divider1"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K31 [{"LayoutOrder", "label", "onActivated"}]
  LOADN R9 5
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  LOADK R9 K32 ["Checkbox Component 1"]
  SETTABLEKS R9 R8 K30 ["label"]
  DUPCLOSURE R9 K33 [PROTO_4]
  SETTABLEKS R9 R8 K23 ["onActivated"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["TestCheckbox1"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K31 [{"LayoutOrder", "label", "onActivated"}]
  LOADN R9 6
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  LOADK R9 K34 ["Checkbox Component 2"]
  SETTABLEKS R9 R8 K30 ["label"]
  DUPCLOSURE R9 K35 [PROTO_5]
  SETTABLEKS R9 R8 K23 ["onActivated"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["TestCheckbox2"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K29 [{"LayoutOrder"}]
  LOADN R9 7
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Divider2"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K36 ["Root"]
  DUPTABLE R8 K38 [{"LayoutOrder", "items", "onActivated"}]
  LOADN R9 8
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  NEWTABLE R9 0 2
  DUPTABLE R10 K40 [{"id", "text"}]
  LOADK R11 K41 ["item1"]
  SETTABLEKS R11 R10 K39 ["id"]
  LOADK R11 K42 ["Menu Item 1"]
  SETTABLEKS R11 R10 K22 ["text"]
  DUPTABLE R11 K40 [{"id", "text"}]
  LOADK R12 K43 ["item2"]
  SETTABLEKS R12 R11 K39 ["id"]
  LOADK R12 K44 ["Menu Item 2"]
  SETTABLEKS R12 R11 K22 ["text"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K37 ["items"]
  DUPCLOSURE R9 K45 [PROTO_6]
  SETTABLEKS R9 R8 K23 ["onActivated"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["TestMenu"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K29 [{"LayoutOrder"}]
  LOADN R9 9
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["Divider3"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K24 [{"LayoutOrder", "text", "onActivated"}]
  LOADN R9 10
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  LOADK R9 K46 ["Static Chip Component 1"]
  SETTABLEKS R9 R8 K22 ["text"]
  DUPCLOSURE R9 K47 [PROTO_7]
  SETTABLEKS R9 R8 K23 ["onActivated"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["TestChip1"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K24 [{"LayoutOrder", "text", "onActivated"}]
  LOADN R9 11
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  LOADK R9 K48 ["Static Chip Component 2"]
  SETTABLEKS R9 R8 K22 ["text"]
  DUPCLOSURE R9 K49 [PROTO_8]
  SETTABLEKS R9 R8 K23 ["onActivated"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["TestChip2"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K29 [{"LayoutOrder"}]
  LOADN R9 12
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K15 ["Divider4"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 7
  DUPTABLE R8 K52 [{"LayoutOrder", "cursor", "Size"}]
  LOADN R9 13
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K50 ["cursor"]
  GETIMPORT R9 K55 [UDim2.new]
  LOADN R10 0
  LOADN R11 50
  LOADN R12 0
  LOADN R13 50
  CALL R9 4 1
  SETTABLEKS R9 R8 K51 ["Size"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K16 ["DefaultCursor"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K29 [{"LayoutOrder"}]
  LOADN R9 14
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K17 ["Divider5"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K24 [{"LayoutOrder", "text", "onActivated"}]
  LOADN R9 15
  SETTABLEKS R9 R8 K21 ["LayoutOrder"]
  JUMPIFNOT R0 [+2]
  LOADK R9 K56 ["Hide Dynamic Component"]
  JUMP [+1]
  LOADK R9 K57 ["Show Dynamic Component"]
  SETTABLEKS R9 R8 K22 ["text"]
  NEWCLOSURE R9 P7
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K23 ["onActivated"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["ToggleButton"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 8
  NEWTABLE R8 0 0
  CALL R6 2 1
  JUMPIF R6 [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K19 ["DynamicSection"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R4 R5 K9 ["Button"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Checkbox"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K11 ["BaseMenu"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K8 ["Components"]
  GETTABLEKS R7 R8 K12 ["Chip"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K8 ["Components"]
  GETTABLEKS R8 R9 K13 ["View"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K8 ["Components"]
  GETTABLEKS R9 R10 K14 ["Divider"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K8 ["Components"]
  GETTABLEKS R10 R11 K15 ["Interactable"]
  CALL R9 1 1
  DUPCLOSURE R10 K16 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  DUPCLOSURE R11 K17 [PROTO_10]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R10
  DUPTABLE R12 K20 [{"summary", "story"}]
  LOADK R13 K21 ["useCursor: static & dynamic components"]
  SETTABLEKS R13 R12 K18 ["summary"]
  GETTABLEKS R13 R2 K22 ["createElement"]
  MOVE R14 R11
  CALL R13 1 1
  SETTABLEKS R13 R12 K19 ["story"]
  RETURN R12 1
