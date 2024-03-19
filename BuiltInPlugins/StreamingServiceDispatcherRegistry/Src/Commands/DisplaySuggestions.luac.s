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
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChatbotUIService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Types"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R0
  RETURN R3 1
