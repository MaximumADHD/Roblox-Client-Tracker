MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K6 ["createContext"]
  DUPTABLE R4 K11 [{"isPresent", "id", "onExitComplete", "passThroughData"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["isPresent"]
  LOADK R5 K12 [""]
  SETTABLEKS R5 R4 K8 ["id"]
  LOADNIL R5
  SETTABLEKS R5 R4 K9 ["onExitComplete"]
  LOADNIL R5
  SETTABLEKS R5 R4 K10 ["passThroughData"]
  CALL R3 1 -1
  RETURN R3 -1
