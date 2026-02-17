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
  GETIMPORT R5 K3 [require]
  GETTABLEKS R7 R0 K4 ["Implementations"]
  GETTABLEKS R6 R7 K9 ["createEndToEndTestingImplementations"]
  CALL R5 1 1
  DUPTABLE R6 K11 [{"new", "Implementations"}]
  GETTABLEKS R7 R3 K10 ["new"]
  SETTABLEKS R7 R6 K10 ["new"]
  DUPTABLE R7 K12 [{"CallbackNetworking", "GameNetworking", "StudioNetworking", "createEndToEndTestingImplementations"}]
  SETTABLEKS R1 R7 K5 ["CallbackNetworking"]
  SETTABLEKS R2 R7 K6 ["GameNetworking"]
  SETTABLEKS R4 R7 K8 ["StudioNetworking"]
  SETTABLEKS R5 R7 K9 ["createEndToEndTestingImplementations"]
  SETTABLEKS R7 R6 K4 ["Implementations"]
  RETURN R6 1
