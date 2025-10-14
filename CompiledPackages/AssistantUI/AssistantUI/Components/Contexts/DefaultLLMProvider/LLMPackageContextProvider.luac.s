PROTO_0:
  GETTABLEKS R1 R0 K0 ["processEvent"]
  GETTABLEKS R2 R0 K1 ["createLLMSession"]
  GETTABLEKS R3 R0 K2 ["cancelSession"]
  JUMPIFNOT R1 [+1]
  JUMPIF R2 [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createProcessEventHandler"]
  CALL R4 0 3
  MOVE R1 R4
  MOVE R2 R5
  MOVE R3 R6
  DUPTABLE R4 K7 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage"}]
  GETTABLEKS R5 R0 K4 ["requestHandler"]
  JUMPIF R5 [+4]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["createRequestHandler"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K4 ["requestHandler"]
  SETTABLEKS R1 R4 K0 ["processEvent"]
  SETTABLEKS R2 R4 K1 ["createLLMSession"]
  SETTABLEKS R3 R4 K2 ["cancelSession"]
  GETTABLEKS R5 R0 K5 ["formatTools"]
  JUMPIF R5 [+3]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["formatTools"]
  SETTABLEKS R5 R4 K5 ["formatTools"]
  GETTABLEKS R5 R0 K6 ["systemMessage"]
  JUMPIF R5 [+4]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["getSystemMessage"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K6 ["systemMessage"]
  GETUPVAL R5 4
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K10 ["Provider"]
  DUPTABLE R7 K12 [{"value"}]
  SETTABLEKS R4 R7 K11 ["value"]
  GETTABLEKS R8 R0 K13 ["children"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["Contexts"]
  GETTABLEKS R3 R4 K8 ["DefaultLLMProvider"]
  GETTABLEKS R2 R3 K9 ["LLMProcessEvent"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K6 ["Components"]
  GETTABLEKS R5 R6 K7 ["Contexts"]
  GETTABLEKS R4 R5 K8 ["DefaultLLMProvider"]
  GETTABLEKS R3 R4 K10 ["LLMRequest"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Components"]
  GETTABLEKS R6 R7 K7 ["Contexts"]
  GETTABLEKS R5 R6 K8 ["DefaultLLMProvider"]
  GETTABLEKS R4 R5 K11 ["LLMSystemMessage"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K6 ["Components"]
  GETTABLEKS R7 R8 K7 ["Contexts"]
  GETTABLEKS R6 R7 K8 ["DefaultLLMProvider"]
  GETTABLEKS R5 R6 K12 ["LLMToolFormat"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K13 ["Parent"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R0 K15 ["Types"]
  CALL R6 1 1
  GETTABLEKS R7 R5 K16 ["createElement"]
  NEWTABLE R8 0 0
  GETTABLEKS R9 R5 K17 ["createContext"]
  MOVE R10 R8
  CALL R9 1 1
  DUPCLOSURE R10 K18 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R9
  DUPTABLE R11 K21 [{"Context", "Provider"}]
  SETTABLEKS R9 R11 K19 ["Context"]
  SETTABLEKS R10 R11 K20 ["Provider"]
  RETURN R11 1
