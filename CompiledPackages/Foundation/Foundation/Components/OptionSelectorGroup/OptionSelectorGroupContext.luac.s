PROTO_0:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["No OptionSelectorGroupProvider found for OptionSelectorGroup"]
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
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Enums"]
  GETTABLEKS R4 R5 K9 ["Orientation"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["createContext"]
  DUPTABLE R5 K16 [{"value", "onValueChanged", "orientation", "Selectable", "testId"}]
  LOADNIL R6
  SETTABLEKS R6 R5 K11 ["value"]
  DUPCLOSURE R6 K17 [PROTO_0]
  SETTABLEKS R6 R5 K12 ["onValueChanged"]
  GETTABLEKS R6 R3 K18 ["Vertical"]
  SETTABLEKS R6 R5 K13 ["orientation"]
  LOADB R6 1
  SETTABLEKS R6 R5 K14 ["Selectable"]
  LOADK R6 K19 [""]
  SETTABLEKS R6 R5 K15 ["testId"]
  CALL R4 1 -1
  RETURN R4 -1
