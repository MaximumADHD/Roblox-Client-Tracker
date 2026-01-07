MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"Root", "Actions", "Content", "Footer", "Header", "Media"}]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K11 ["Tile"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["Root"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K1 ["Actions"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Actions"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K2 ["Content"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["Content"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K3 ["Footer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Footer"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K4 ["Header"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["Header"]
  GETIMPORT R1 K8 [require]
  GETIMPORT R3 K10 [script]
  GETTABLEKS R2 R3 K5 ["Media"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["Media"]
  RETURN R0 1
