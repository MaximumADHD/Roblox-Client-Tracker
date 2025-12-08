PROTO_0:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["No RadioGroupProvider found for RadioGroup"]
  CALL R1 1 0
  RETURN R0 0

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
  GETTABLEKS R3 R2 K8 ["createContext"]
  DUPTABLE R4 K13 [{"value", "onValueChanged", "Selectable", "testId"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K9 ["value"]
  DUPCLOSURE R5 K14 [PROTO_0]
  SETTABLEKS R5 R4 K10 ["onValueChanged"]
  LOADB R5 1
  SETTABLEKS R5 R4 K11 ["Selectable"]
  LOADK R5 K15 [""]
  SETTABLEKS R5 R4 K12 ["testId"]
  CALL R3 1 -1
  RETURN R3 -1
