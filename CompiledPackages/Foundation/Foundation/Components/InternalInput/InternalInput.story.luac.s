PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R2 0
  CALL R2 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["useState"]
  LOADB R4 0
  CALL R3 1 2
  NEWCLOSURE R5 P0
  CAPTURE VAL R4
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K4 [{"tag"}]
  LOADK R9 K5 ["col gap-large auto-xy padding-xlarge size-3000"]
  SETTABLEKS R9 R8 K3 ["tag"]
  DUPTABLE R9 K7 [{"InternalInput"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K15 [{"isChecked", "isDisabled", "size", "onActivated", "label", "customVariantProps", "LayoutOrder"}]
  SETTABLEKS R3 R12 K8 ["isChecked"]
  GETTABLEKS R13 R1 K9 ["isDisabled"]
  SETTABLEKS R13 R12 K9 ["isDisabled"]
  GETTABLEKS R13 R1 K10 ["size"]
  SETTABLEKS R13 R12 K10 ["size"]
  SETTABLEKS R5 R12 K11 ["onActivated"]
  DUPTABLE R13 K18 [{"text", "position"}]
  GETTABLEKS R14 R1 K19 ["labelText"]
  SETTABLEKS R14 R13 K16 ["text"]
  GETTABLEKS R14 R1 K20 ["labelPosition"]
  SETTABLEKS R14 R13 K17 ["position"]
  SETTABLEKS R13 R12 K12 ["label"]
  DUPTABLE R13 K23 [{"tag", "size", "cursorRadius", "checkedStyle"}]
  LOADK R14 K24 ["row gap-small align-x-center align-y-center"]
  SETTABLEKS R14 R13 K3 ["tag"]
  GETIMPORT R14 K27 [UDim2.new]
  LOADN R15 0
  LOADN R16 200
  LOADN R17 0
  LOADN R18 50
  CALL R14 4 1
  SETTABLEKS R14 R13 K10 ["size"]
  GETIMPORT R14 K29 [UDim.new]
  LOADN R15 0
  LOADN R16 8
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["cursorRadius"]
  GETTABLEKS R16 R2 K30 ["Color"]
  GETTABLEKS R15 R16 K31 ["System"]
  GETTABLEKS R16 R1 K22 ["checkedStyle"]
  GETTABLE R14 R15 R16
  SETTABLEKS R14 R13 K22 ["checkedStyle"]
  SETTABLEKS R13 R12 K13 ["customVariantProps"]
  LOADN R13 1
  SETTABLEKS R13 R12 K14 ["LayoutOrder"]
  DUPTABLE R13 K33 [{"Content"}]
  JUMPIFNOT R3 [+13]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K2 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K35 [{"tag", "Text"}]
  LOADK R17 K36 ["content-inverse-emphasis"]
  SETTABLEKS R17 R16 K3 ["tag"]
  LOADK R17 K37 ["Checked!"]
  SETTABLEKS R17 R16 K34 ["Text"]
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K32 ["Content"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K6 ["InternalInput"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Text"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K12 ["Providers"]
  GETTABLEKS R8 R9 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["useTokens"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K15 ["Enums"]
  GETTABLEKS R8 R9 K16 ["InputSize"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K9 ["Components"]
  GETTABLEKS R9 R10 K17 ["InternalInput"]
  CALL R8 1 1
  DUPCLOSURE R9 K18 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R4
  DUPTABLE R10 K22 [{"summary", "story", "controls"}]
  LOADK R11 K23 ["Internal Input Component"]
  SETTABLEKS R11 R10 K19 ["summary"]
  SETTABLEKS R9 R10 K20 ["story"]
  DUPTABLE R11 K29 [{"isDisabled", "size", "labelText", "labelPosition", "checkedStyle"}]
  LOADB R12 0
  SETTABLEKS R12 R11 K24 ["isDisabled"]
  GETTABLEKS R12 R3 K30 ["values"]
  MOVE R13 R7
  CALL R12 1 1
  SETTABLEKS R12 R11 K25 ["size"]
  LOADK R12 K31 ["Input Label"]
  SETTABLEKS R12 R11 K26 ["labelText"]
  NEWTABLE R12 0 2
  GETIMPORT R13 K35 [Enum.HorizontalAlignment.Right]
  GETIMPORT R14 K37 [Enum.HorizontalAlignment.Left]
  SETLIST R12 R13 2 [1]
  SETTABLEKS R12 R11 K27 ["labelPosition"]
  NEWTABLE R12 0 3
  LOADK R13 K38 ["Success"]
  LOADK R14 K39 ["Alert"]
  LOADK R15 K40 ["Default"]
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K28 ["checkedStyle"]
  SETTABLEKS R11 R10 K21 ["controls"]
  RETURN R10 1
