MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Components"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K5 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["InlineLayout"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K6 ["InlineLayout"]
  GETTABLEKS R5 R6 K7 ["InlineLayoutElements"]
  GETTABLEKS R4 R5 K8 ["RenderableInlineElement"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K6 ["InlineLayout"]
  GETTABLEKS R6 R7 K7 ["InlineLayoutElements"]
  GETTABLEKS R5 R6 K9 ["BaseTextElement"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K6 ["InlineLayout"]
  GETTABLEKS R7 R8 K7 ["InlineLayoutElements"]
  GETTABLEKS R6 R7 K10 ["HardBreakElement"]
  CALL R5 1 1
  DUPTABLE R6 K14 [{"Components", "Enums", "Test", "Utils"}]
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Components"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K2 ["Components"]
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K11 ["Enums"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K11 ["Enums"]
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K12 ["Test"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K12 ["Test"]
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K13 ["Utils"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K13 ["Utils"]
  RETURN R6 1
