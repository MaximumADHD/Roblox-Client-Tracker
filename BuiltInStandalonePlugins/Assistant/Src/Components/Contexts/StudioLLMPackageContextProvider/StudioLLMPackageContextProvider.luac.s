PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["Components"]
  GETTABLEKS R4 R5 K3 ["DefaultLLMProvider"]
  GETTABLEKS R3 R4 K4 ["LLMProcessEvent"]
  GETTABLEKS R2 R3 K5 ["createProcessEventHandler"]
  CALL R2 0 3
  GETUPVAL R5 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["Components"]
  GETTABLEKS R7 R8 K6 ["Contexts"]
  GETTABLEKS R6 R7 K7 ["LLMPackageContextProvider"]
  DUPTABLE R7 K14 [{"requestHandler", "processEvent", "createLLMSession", "closeSession", "formatTools", "systemMessage"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K15 ["createRequestHandler"]
  MOVE R9 R1
  CALL R8 1 1
  SETTABLEKS R8 R7 K8 ["requestHandler"]
  SETTABLEKS R2 R7 K9 ["processEvent"]
  SETTABLEKS R3 R7 K10 ["createLLMSession"]
  SETTABLEKS R4 R7 K11 ["closeSession"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K12 ["formatTools"]
  SETTABLEKS R8 R7 K12 ["formatTools"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K16 ["getSystemMessage"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K13 ["systemMessage"]
  GETTABLEKS R8 R0 K17 ["children"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AssistantUI"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["Plugin"]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K12 ["Parent"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K13 ["StudioLLMRequest"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K14 ["StudioLLMSystemMessage"]
  CALL R8 1 1
  GETTABLEKS R11 R1 K15 ["Components"]
  GETTABLEKS R10 R11 K16 ["Claude"]
  GETTABLEKS R9 R10 K17 ["ClaudeLLMToolFormat"]
  GETTABLEKS R10 R3 K18 ["createElement"]
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  RETURN R11 1
