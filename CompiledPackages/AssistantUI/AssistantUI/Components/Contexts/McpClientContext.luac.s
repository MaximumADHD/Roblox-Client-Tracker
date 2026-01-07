PROTO_0:
  GETTABLEKS R3 R0 K0 ["default"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["default is not supported in this context"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  DUPTABLE R1 K5 [{"runWithClient"}]
  GETTABLEKS R2 R0 K4 ["runWithClient"]
  SETTABLEKS R2 R1 K4 ["runWithClient"]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["Provider"]
  DUPTABLE R4 K8 [{"value"}]
  SETTABLEKS R1 R4 K7 ["value"]
  GETTABLEKS R5 R0 K9 ["children"]
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
  GETTABLEKS R2 R3 K7 ["ModelContextProtocol"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["createElement"]
  DUPTABLE R4 K12 [{"default", "runWithClient"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K10 ["default"]
  LOADNIL R5
  SETTABLEKS R5 R4 K11 ["runWithClient"]
  GETTABLEKS R5 R2 K13 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPTABLE R7 K17 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K15 ["Context"]
  SETTABLEKS R6 R7 K16 ["Provider"]
  RETURN R7 1
