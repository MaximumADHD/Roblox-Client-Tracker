PROTO_0:
  GETTABLEKS R3 R0 K0 ["default"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["default is not supported in this context"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  DUPTABLE R1 K5 [{"sessionId"}]
  GETTABLEKS R3 R0 K4 ["sessionId"]
  ORK R2 R3 K6 [""]
  SETTABLEKS R2 R1 K4 ["sessionId"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["Provider"]
  DUPTABLE R4 K9 [{"value"}]
  SETTABLEKS R1 R4 K8 ["value"]
  GETTABLEKS R5 R0 K10 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R2 R1 K8 ["createElement"]
  DUPTABLE R3 K11 [{"default", "sessionId"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K9 ["default"]
  LOADK R4 K12 [""]
  SETTABLEKS R4 R3 K10 ["sessionId"]
  GETTABLEKS R4 R1 K13 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPTABLE R6 K17 [{"Context", "Provider"}]
  SETTABLEKS R4 R6 K15 ["Context"]
  SETTABLEKS R5 R6 K16 ["Provider"]
  RETURN R6 1
