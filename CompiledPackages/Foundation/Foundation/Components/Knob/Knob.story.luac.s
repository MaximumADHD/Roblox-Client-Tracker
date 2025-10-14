PROTO_0:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"size", "isDisabled"}]
  GETTABLEKS R5 R1 K2 ["size"]
  SETTABLEKS R5 R4 K2 ["size"]
  GETTABLEKS R5 R1 K3 ["isDisabled"]
  SETTABLEKS R5 R4 K3 ["isDisabled"]
  CALL R2 2 -1
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
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K9 ["Knob"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K10 ["Enums"]
  GETTABLEKS R6 R7 K11 ["InputSize"]
  CALL R5 1 1
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPTABLE R7 K16 [{"summary", "story", "controls"}]
  LOADK R8 K17 ["Knob component"]
  SETTABLEKS R8 R7 K13 ["summary"]
  SETTABLEKS R6 R7 K14 ["story"]
  DUPTABLE R8 K20 [{"isDisabled", "size"}]
  LOADB R9 0
  SETTABLEKS R9 R8 K18 ["isDisabled"]
  GETTABLEKS R9 R3 K21 ["values"]
  MOVE R10 R5
  CALL R9 1 1
  SETTABLEKS R9 R8 K19 ["size"]
  SETTABLEKS R8 R7 K15 ["controls"]
  RETURN R7 1
