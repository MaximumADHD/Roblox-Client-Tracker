PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useContext"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Context"]
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K2 [+5]
  MOVE R2 R0
  LOADK R3 K2 ["useLLMSystemMessage must be used within a LLMPackageContextProvider"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K5 ["systemMessage"]
  RETURN R1 1

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
  GETTABLEKS R2 R3 K9 ["LLMPackageContextProvider"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
