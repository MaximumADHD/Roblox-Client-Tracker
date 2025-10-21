MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Popover"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["Anchor"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["Content"]
  CALL R2 1 1
  DUPTABLE R3 K8 [{"Root", "Anchor", "Content"}]
  SETTABLEKS R0 R3 K7 ["Root"]
  SETTABLEKS R1 R3 K5 ["Anchor"]
  SETTABLEKS R2 R3 K6 ["Content"]
  RETURN R3 1
