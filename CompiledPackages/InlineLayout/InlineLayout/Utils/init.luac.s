MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"SplitText", "isInlineElement", "InlineElementType"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["SplitText"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["SplitText"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["isInlineElement"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["isInlineElement"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["InlineElementType"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["InlineElementType"]
  RETURN R0 1
