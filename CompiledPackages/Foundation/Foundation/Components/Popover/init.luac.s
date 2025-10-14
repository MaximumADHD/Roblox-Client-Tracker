MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Anchor"]
  CALL R0 1 1
  DUPTABLE R1 K7 [{"Root", "Anchor", "Content"}]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K8 ["Popover"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["Root"]
  SETTABLEKS R0 R1 K4 ["Anchor"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["Content"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["Content"]
  RETURN R1 1
