MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Enums"]
  GETTABLEKS R1 R2 K5 ["InlineEngineTag"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  DUPTABLE R2 K10 [{"Components", "Enums", "StoryMiddleware", "Utils"}]
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["Components"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["Components"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Enums"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["Enums"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K8 ["StoryMiddleware"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["StoryMiddleware"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K9 ["Utils"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["Utils"]
  RETURN R2 1
