MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Components"]
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K3 ["SharedFlags"]
  DUPTABLE R2 K4 [{"Components", "SharedFlags"}]
  DUPTABLE R3 K8 [{"InlineLayout", "MarkdownViewer", "BulletList"}]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R5 R0 K5 ["InlineLayout"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["InlineLayout"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R5 R0 K6 ["MarkdownViewer"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["MarkdownViewer"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R5 R0 K7 ["BulletList"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["BulletList"]
  SETTABLEKS R3 R2 K2 ["Components"]
  GETIMPORT R3 K10 [require]
  MOVE R4 R1
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["SharedFlags"]
  RETURN R2 1
