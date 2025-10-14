PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["default"]
  JUMPIFEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["default is not supported in this context"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["useState"]
  NEWTABLE R2 0 0
  CALL R1 1 2
  DUPTABLE R3 K7 [{"conversations", "setConversations"}]
  GETTABLEKS R5 R0 K5 ["conversations"]
  OR R4 R5 R1
  SETTABLEKS R4 R3 K5 ["conversations"]
  GETTABLEKS R5 R0 K6 ["setConversations"]
  OR R4 R5 R2
  SETTABLEKS R4 R3 K6 ["setConversations"]
  GETUPVAL R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["Provider"]
  DUPTABLE R6 K10 [{"value"}]
  SETTABLEKS R3 R6 K9 ["value"]
  GETTABLEKS R7 R0 K11 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

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
  DUPTABLE R4 K13 [{"default", "conversations", "setConversations"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K10 ["default"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["conversations"]
  DUPCLOSURE R5 K14 [PROTO_0]
  SETTABLEKS R5 R4 K12 ["setConversations"]
  GETTABLEKS R5 R1 K15 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPTABLE R7 K19 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K17 ["Context"]
  SETTABLEKS R6 R7 K18 ["Provider"]
  RETURN R7 1
