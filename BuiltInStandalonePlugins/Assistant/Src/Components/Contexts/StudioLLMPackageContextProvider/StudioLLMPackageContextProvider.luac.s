PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createProcessEventHandler"]
  CALL R2 0 2
  GETUPVAL R4 2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["Components"]
  GETTABLEKS R6 R7 K4 ["Contexts"]
  GETTABLEKS R5 R6 K5 ["LLMPackageContextProvider"]
  DUPTABLE R6 K11 [{"requestHandler", "processEvent", "createLLMSession", "formatTools", "systemMessage"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K12 ["createRequestHandler"]
  MOVE R8 R1
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["requestHandler"]
  SETTABLEKS R2 R6 K7 ["processEvent"]
  SETTABLEKS R3 R6 K8 ["createLLMSession"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K9 ["formatTools"]
  SETTABLEKS R7 R6 K9 ["formatTools"]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K13 ["getSystemMessage"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K10 ["systemMessage"]
  GETTABLEKS R7 R0 K14 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R8 R6 K13 ["StudioLLMProcessEvent"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K14 ["StudioLLMRequest"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R6 K15 ["StudioLLMSystemMessage"]
  CALL R9 1 1
  GETTABLEKS R12 R1 K16 ["Components"]
  GETTABLEKS R11 R12 K17 ["Claude"]
  GETTABLEKS R10 R11 K18 ["ClaudeLLMToolFormat"]
  GETTABLEKS R11 R3 K19 ["createElement"]
  DUPCLOSURE R12 K20 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  RETURN R12 1
