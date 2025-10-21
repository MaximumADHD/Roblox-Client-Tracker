MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Dialog"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["Actions"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["Content"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["Text"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["HeroMedia"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K9 ["Title"]
  CALL R5 1 1
  DUPTABLE R6 K11 [{"Root", "Actions", "Content", "Text", "HeroMedia", "Title"}]
  SETTABLEKS R0 R6 K10 ["Root"]
  SETTABLEKS R1 R6 K5 ["Actions"]
  SETTABLEKS R2 R6 K6 ["Content"]
  SETTABLEKS R3 R6 K7 ["Text"]
  SETTABLEKS R4 R6 K8 ["HeroMedia"]
  SETTABLEKS R5 R6 K9 ["Title"]
  RETURN R6 1
