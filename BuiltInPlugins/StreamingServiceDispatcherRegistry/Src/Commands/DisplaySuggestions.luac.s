PROTO_0:
  GETTABLEKS R1 R0 K0 ["arguments"]
  GETUPVAL R2 0
  LOADK R4 K1 ["DisplaySuggestions"]
  MOVE R5 R1
  NAMECALL R2 R2 K2 ["DisplayContent"]
  CALL R2 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K8 ["CliAdapter"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["GetService"]
  LOADK R3 K10 ["ChatbotUIService"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R2
  RETURN R4 1
