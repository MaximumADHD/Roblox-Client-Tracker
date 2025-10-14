PROTO_0:
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R2 K0 [PROTO_0]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_1]
  DUPTABLE R3 K10 [{"requestHandler", "createRequestHandler"}]
  SETTABLEKS R2 R3 K8 ["requestHandler"]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["createRequestHandler"]
  RETURN R3 1
