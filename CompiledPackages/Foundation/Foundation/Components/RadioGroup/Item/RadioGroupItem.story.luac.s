PROTO_0:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Provider"]
  DUPTABLE R6 K5 [{"value"}]
  DUPTABLE R7 K8 [{"value", "onValueChanged", "Selectable"}]
  SETTABLEKS R2 R7 K4 ["value"]
  SETTABLEKS R3 R7 K6 ["onValueChanged"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["Selectable"]
  SETTABLEKS R7 R6 K4 ["value"]
  NEWTABLE R7 0 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["Item"]
  DUPTABLE R10 K13 [{"value", "label", "isDisabled", "size"}]
  GETTABLEKS R11 R1 K4 ["value"]
  SETTABLEKS R11 R10 K4 ["value"]
  GETTABLEKS R13 R1 K10 ["label"]
  LENGTH R12 R13
  LOADN R13 0
  JUMPIFNOTLT R13 R12 [+11]
  LOADK R12 K14 ["%* %*"]
  GETTABLEKS R14 R1 K10 ["label"]
  GETTABLEKS R15 R1 K4 ["value"]
  NAMECALL R12 R12 K15 ["format"]
  CALL R12 3 1
  MOVE R11 R12
  JUMP [+1]
  LOADK R11 K16 [""]
  SETTABLEKS R11 R10 K10 ["label"]
  GETTABLEKS R11 R1 K11 ["isDisabled"]
  SETTABLEKS R11 R10 K11 ["isDisabled"]
  GETTABLEKS R11 R1 K12 ["size"]
  SETTABLEKS R11 R10 K12 ["size"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K9 ["RadioGroupContext"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["RadioGroup"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K13 ["InputSize"]
  CALL R6 1 1
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPTABLE R8 K18 [{"summary", "story", "controls"}]
  LOADK R9 K19 ["Checkbox component"]
  SETTABLEKS R9 R8 K15 ["summary"]
  SETTABLEKS R7 R8 K16 ["story"]
  DUPTABLE R9 K24 [{"isDisabled", "label", "value", "size"}]
  LOADB R10 0
  SETTABLEKS R10 R9 K20 ["isDisabled"]
  LOADK R10 K25 ["Label"]
  SETTABLEKS R10 R9 K21 ["label"]
  LOADK R10 K26 ["A"]
  SETTABLEKS R10 R9 K22 ["value"]
  GETTABLEKS R10 R3 K27 ["values"]
  MOVE R11 R6
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["size"]
  SETTABLEKS R9 R8 K17 ["controls"]
  RETURN R8 1
