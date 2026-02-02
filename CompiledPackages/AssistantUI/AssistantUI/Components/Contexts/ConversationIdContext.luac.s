PROTO_0:
  GETTABLEKS R3 R0 K0 ["default"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["default is not supported in this context"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  DUPTABLE R1 K5 [{"conversationId"}]
  GETTABLEKS R2 R0 K4 ["conversationId"]
  SETTABLEKS R2 R1 K4 ["conversationId"]
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
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K8 ["Types"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["createElement"]
  DUPTABLE R4 K12 [{"default", "conversationId"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K10 ["default"]
  LOADK R5 K13 [""]
  SETTABLEKS R5 R4 K11 ["conversationId"]
  GETTABLEKS R5 R1 K14 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPTABLE R7 K18 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K16 ["Context"]
  SETTABLEKS R6 R7 K17 ["Provider"]
  RETURN R7 1
