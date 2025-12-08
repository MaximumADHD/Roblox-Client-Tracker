MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["PubTypes"]
  CALL R1 1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K9 [{"dependencySet", "initialisedStack", "initialisedStackSize"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K6 ["dependencySet"]
  SETTABLEKS R2 R3 K7 ["initialisedStack"]
  LOADN R4 0
  SETTABLEKS R4 R3 K8 ["initialisedStackSize"]
  RETURN R3 1
