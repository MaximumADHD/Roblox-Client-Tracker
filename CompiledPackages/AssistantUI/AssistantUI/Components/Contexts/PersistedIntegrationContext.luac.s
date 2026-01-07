PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  DUPTABLE R2 K1 [{"persistedIntegrations"}]
  SETTABLEKS R1 R2 K0 ["persistedIntegrations"]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["Provider"]
  DUPTABLE R5 K4 [{"value"}]
  SETTABLEKS R2 R5 K3 ["value"]
  GETTABLEKS R6 R0 K5 ["children"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["IntegrationManagement"]
  GETTABLEKS R3 R4 K10 ["usePersistedIntegrations"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K11 ["createElement"]
  DUPTABLE R4 K13 [{"persistedIntegrations"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K12 ["persistedIntegrations"]
  GETTABLEKS R5 R1 K14 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPTABLE R7 K18 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K16 ["Context"]
  SETTABLEKS R6 R7 K17 ["Provider"]
  RETURN R7 1
