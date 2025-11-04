MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["AuthorizerManager"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["IntegrationManager"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["IntegrationMenu"]
  CALL R2 1 1
  DUPTABLE R3 K7 [{"IntegrationMenu", "IntegrationManager", "AuthorizerManager"}]
  SETTABLEKS R2 R3 K6 ["IntegrationMenu"]
  SETTABLEKS R1 R3 K5 ["IntegrationManager"]
  SETTABLEKS R0 R3 K4 ["AuthorizerManager"]
  RETURN R3 1
