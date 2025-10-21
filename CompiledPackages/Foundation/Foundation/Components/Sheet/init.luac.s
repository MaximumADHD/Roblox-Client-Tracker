MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Types"]
  CALL R0 1 1
  DUPTABLE R1 K9 [{"Root", "Actions", "Content", "Header"}]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K10 ["Sheet"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["Root"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["Actions"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["Actions"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K7 ["Content"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["Content"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K8 ["Header"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["Header"]
  RETURN R1 1
