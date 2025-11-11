PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["enable"]
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFNOT R0 [+12]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["current"]
  GETTABLEKS R0 R1 K2 ["Focus"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["current"]
  NAMECALL R0 R0 K2 ["Focus"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["disable"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useToggleState"]
  LOADB R2 0
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useRef"]
  LOADNIL R3
  CALL R2 1 1
  GETIMPORT R3 K4 [UDim.new]
  LOADN R4 0
  GETUPVAL R5 2
  LOADN R6 200
  CALL R5 1 -1
  CALL R3 -1 1
  GETIMPORT R4 K4 [UDim.new]
  LOADN R5 0
  LOADN R6 82
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K6 ["View"]
  DUPTABLE R7 K9 [{"tag", "Size"}]
  LOADK R8 K10 ["flex-x-around gap-small row align-x-center align-y-center padding-y-xxsmall auto-y"]
  SETTABLEKS R8 R7 K7 ["tag"]
  GETIMPORT R8 K12 [UDim2.new]
  LOADN R9 0
  GETUPVAL R10 2
  LOADN R11 200
  CALL R10 1 1
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K8 ["Size"]
  DUPTABLE R8 K15 [{"LabelContainer", "NumberInput"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K6 ["View"]
  DUPTABLE R11 K17 [{"LayoutOrder", "tag"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K16 ["LayoutOrder"]
  LOADK R12 K18 ["row align-x-center align-y-center size-2100-500 auto-none"]
  SETTABLEKS R12 R11 K7 ["tag"]
  DUPTABLE R12 K21 [{"LabelText", "LabelTextInput"}]
  GETTABLEKS R14 R1 K22 ["enabled"]
  JUMPIF R14 [+31]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K23 ["InputLabel"]
  DUPTABLE R15 K28 [{"LayoutOrder", "tag", "Text", "size", "onActivated", "width"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K16 ["LayoutOrder"]
  LOADK R16 K29 ["size-full-full"]
  SETTABLEKS R16 R15 K7 ["tag"]
  GETTABLEKS R16 R0 K30 ["label"]
  SETTABLEKS R16 R15 K24 ["Text"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K31 ["Small"]
  SETTABLEKS R16 R15 K25 ["size"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R16 R15 K26 ["onActivated"]
  SETTABLEKS R4 R15 K27 ["width"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K19 ["LabelText"]
  GETTABLEKS R14 R1 K22 ["enabled"]
  JUMPIFNOT R14 [+41]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K32 ["TextInput"]
  DUPTABLE R15 K37 [{"LayoutOrder", "tag", "text", "label", "textInputType", "onChanged", "size", "width", "onFocusLost"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K16 ["LayoutOrder"]
  LOADK R16 K29 ["size-full-full"]
  SETTABLEKS R16 R15 K7 ["tag"]
  GETTABLEKS R16 R0 K30 ["label"]
  SETTABLEKS R16 R15 K33 ["text"]
  LOADK R16 K38 [""]
  SETTABLEKS R16 R15 K30 ["label"]
  GETIMPORT R16 K42 [Enum.TextInputType.Default]
  SETTABLEKS R16 R15 K34 ["textInputType"]
  GETTABLEKS R16 R0 K43 ["onLabelChanged"]
  SETTABLEKS R16 R15 K35 ["onChanged"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K31 ["Small"]
  SETTABLEKS R16 R15 K25 ["size"]
  SETTABLEKS R4 R15 K27 ["width"]
  NEWCLOSURE R16 P1
  CAPTURE VAL R1
  SETTABLEKS R16 R15 K36 ["onFocusLost"]
  CALL R13 2 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K20 ["LabelTextInput"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["LabelContainer"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K32 ["TextInput"]
  DUPTABLE R11 K44 [{"LayoutOrder", "tag", "text", "label", "textInputType", "onChanged", "size", "width"}]
  LOADN R12 2
  SETTABLEKS R12 R11 K16 ["LayoutOrder"]
  LOADK R12 K45 ["size-2100-500"]
  SETTABLEKS R12 R11 K7 ["tag"]
  GETTABLEKS R12 R0 K33 ["text"]
  SETTABLEKS R12 R11 K33 ["text"]
  LOADK R12 K38 [""]
  SETTABLEKS R12 R11 K30 ["label"]
  GETIMPORT R12 K47 [Enum.TextInputType.Number]
  SETTABLEKS R12 R11 K34 ["textInputType"]
  GETTABLEKS R12 R0 K48 ["onTextInputChanged"]
  SETTABLEKS R12 R11 K35 ["onChanged"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K31 ["Small"]
  SETTABLEKS R12 R11 K25 ["size"]
  SETTABLEKS R4 R11 K27 ["width"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["NumberInput"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactUtils"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K10 ["Enums"]
  GETTABLEKS R4 R5 K11 ["InputSize"]
  GETTABLEKS R6 R1 K12 ["Hooks"]
  GETTABLEKS R5 R6 K13 ["useScaledValue"]
  DUPCLOSURE R6 K14 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R6 1
