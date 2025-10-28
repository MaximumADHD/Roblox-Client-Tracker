PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"ref", "text", "hasError", "isDisabled", "size", "onChanged", "placeholder"}]
  SETTABLEKS R0 R3 K1 ["ref"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K2 ["text"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["hasError"]
  SETTABLEKS R4 R3 K3 ["hasError"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["isDisabled"]
  SETTABLEKS R4 R3 K4 ["isDisabled"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["size"]
  SETTABLEKS R4 R3 K5 ["size"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K6 ["onChanged"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["placeholder"]
  SETTABLEKS R4 R3 K7 ["placeholder"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADK R3 K2 [""]
  CALL R2 1 2
  NEWCLOSURE R4 P0
  CAPTURE VAL R3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K5 [{"tag"}]
  LOADK R8 K6 ["gap-large auto-xy padding-xlarge"]
  SETTABLEKS R8 R7 K4 ["tag"]
  NEWTABLE R8 0 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K11 [{"label", "size", "hint", "input"}]
  GETTABLEKS R12 R1 K7 ["label"]
  SETTABLEKS R12 R11 K7 ["label"]
  GETTABLEKS R12 R1 K12 ["labelSize"]
  SETTABLEKS R12 R11 K8 ["size"]
  GETTABLEKS R12 R1 K9 ["hint"]
  SETTABLEKS R12 R11 K9 ["hint"]
  NEWCLOSURE R12 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K10 ["input"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R6 R0 K9 ["Enums"]
  GETTABLEKS R5 R6 K10 ["InputSize"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Enums"]
  GETTABLEKS R6 R7 K11 ["InputLabelSize"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["InternalTextInput"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K12 ["Components"]
  GETTABLEKS R8 R9 K14 ["View"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K12 ["Components"]
  GETTABLEKS R9 R10 K15 ["InputField"]
  CALL R8 1 1
  DUPCLOSURE R9 K16 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  DUPTABLE R10 K20 [{"summary", "story", "controls"}]
  LOADK R11 K21 ["Input field"]
  SETTABLEKS R11 R10 K17 ["summary"]
  SETTABLEKS R9 R10 K18 ["story"]
  DUPTABLE R11 K29 [{"label", "hint", "hasError", "isDisabled", "size", "labelSize", "placeholder"}]
  LOADK R12 K30 ["Field label"]
  SETTABLEKS R12 R11 K22 ["label"]
  LOADK R12 K31 ["Hint"]
  SETTABLEKS R12 R11 K23 ["hint"]
  LOADB R12 0
  SETTABLEKS R12 R11 K24 ["hasError"]
  LOADB R12 0
  SETTABLEKS R12 R11 K25 ["isDisabled"]
  GETTABLEKS R12 R3 K32 ["values"]
  MOVE R13 R4
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["size"]
  GETTABLEKS R12 R3 K32 ["values"]
  MOVE R13 R5
  CALL R12 1 1
  SETTABLEKS R12 R11 K27 ["labelSize"]
  LOADK R12 K33 ["Placeholder text"]
  SETTABLEKS R12 R11 K28 ["placeholder"]
  SETTABLEKS R11 R10 K19 ["controls"]
  RETURN R10 1
