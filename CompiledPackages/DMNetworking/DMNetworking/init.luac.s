MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  GETIMPORT R1 K3 [require]
  GETTABLEKS R3 R0 K4 ["Implementations"]
  GETTABLEKS R2 R3 K5 ["CallbackNetworking"]
  CALL R1 1 1
  GETIMPORT R2 K3 [require]
  GETTABLEKS R4 R0 K4 ["Implementations"]
  GETTABLEKS R3 R4 K6 ["GameNetworking"]
  CALL R2 1 1
  GETIMPORT R3 K3 [require]
  GETTABLEKS R4 R0 K7 ["NetworkingInterface"]
  CALL R3 1 1
  GETIMPORT R4 K3 [require]
  GETTABLEKS R6 R0 K4 ["Implementations"]
  GETTABLEKS R5 R6 K8 ["StudioNetworking"]
  CALL R4 1 1
  DUPTABLE R5 K10 [{"new", "Implementations"}]
  GETTABLEKS R6 R3 K9 ["new"]
  SETTABLEKS R6 R5 K9 ["new"]
  DUPTABLE R6 K11 [{"CallbackNetworking", "GameNetworking", "StudioNetworking"}]
  SETTABLEKS R1 R6 K5 ["CallbackNetworking"]
  SETTABLEKS R2 R6 K6 ["GameNetworking"]
  SETTABLEKS R4 R6 K8 ["StudioNetworking"]
  SETTABLEKS R6 R5 K4 ["Implementations"]
  RETURN R5 1
