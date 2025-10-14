MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Utils"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  DUPTABLE R1 K10 [{"SplitText", "IsCli", "IsInlineElement", "InlineElementType", "TextSplitByEnum", "TestUtils"}]
  GETIMPORT R2 K12 [require]
  GETTABLEKS R3 R0 K4 ["SplitText"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["SplitText"]
  GETIMPORT R2 K12 [require]
  GETTABLEKS R3 R0 K5 ["IsCli"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["IsCli"]
  GETIMPORT R2 K12 [require]
  GETTABLEKS R3 R0 K6 ["IsInlineElement"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["IsInlineElement"]
  GETIMPORT R2 K12 [require]
  GETTABLEKS R3 R0 K7 ["InlineElementType"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["InlineElementType"]
  GETIMPORT R2 K12 [require]
  GETTABLEKS R3 R0 K8 ["TextSplitByEnum"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["TextSplitByEnum"]
  GETIMPORT R2 K12 [require]
  GETTABLEKS R3 R0 K9 ["TestUtils"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K9 ["TestUtils"]
  RETURN R1 1
