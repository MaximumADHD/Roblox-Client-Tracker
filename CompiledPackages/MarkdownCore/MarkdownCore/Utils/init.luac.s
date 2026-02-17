MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Escape", "Highlighter", "isCli"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["Escape"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["Escape"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["Highlighter"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Highlighter"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["isCli"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["isCli"]
  RETURN R0 1
