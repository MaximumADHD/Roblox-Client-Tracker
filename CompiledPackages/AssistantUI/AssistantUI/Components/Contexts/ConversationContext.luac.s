PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+6]
  DUPTABLE R0 K1 [{"threads"}]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["threads"]
  RETURN R0 1
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_1:
  RETURN R0 0

PROTO_2:
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
  GETUPVAL R2 1
  CALL R1 1 2
  DUPTABLE R3 K7 [{"conversation", "setConversation"}]
  GETTABLEKS R5 R0 K5 ["conversation"]
  OR R4 R5 R1
  SETTABLEKS R4 R3 K5 ["conversation"]
  GETTABLEKS R5 R0 K6 ["setConversation"]
  OR R4 R5 R2
  SETTABLEKS R4 R3 K6 ["setConversation"]
  GETUPVAL R4 2
  GETUPVAL R6 3
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Flags"]
  GETTABLEKS R4 R5 K10 ["FFlagAssistantMultipleChatSupport"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["createElement"]
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R3
  DUPTABLE R6 K16 [{"default", "conversation", "setConversation"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K13 ["default"]
  MOVE R7 R5
  CALL R7 0 1
  SETTABLEKS R7 R6 K14 ["conversation"]
  DUPCLOSURE R7 K17 [PROTO_1]
  SETTABLEKS R7 R6 K15 ["setConversation"]
  GETTABLEKS R7 R1 K18 ["createContext"]
  MOVE R8 R6
  CALL R7 1 1
  DUPCLOSURE R8 K19 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  DUPTABLE R9 K23 [{"Context", "Provider", "makeConversation"}]
  SETTABLEKS R7 R9 K20 ["Context"]
  SETTABLEKS R8 R9 K21 ["Provider"]
  SETTABLEKS R5 R9 K22 ["makeConversation"]
  RETURN R9 1
